#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
#
# Tests the jurisdiction model: every example in examples/valid/ must pass LinkML
# validation and every example in examples/invalid/ must fail. Then jurisgen must
# accept examples/valid/, so the model and the FPSOT tools agree.
#
# Environment: LINKML (default linkml-validate), JURISGEN (path to jurisgen; the
# jurisgen step is skipped when empty).
set -u
here="$(cd "$(dirname "$0")" && pwd)"
linkml=${LINKML:-linkml-validate}
model="$here/jurisdiction.yaml"
fail=0
class_of() { case "$(basename "$1")" in baseline*) echo Baseline ;; *) echo JurisdictionFile ;; esac; }
while IFS= read -r f; do
  if ! $linkml -s "$model" -C "$(class_of "$f")" "$f" >/dev/null 2>&1; then
    echo "FAIL: valid example rejected: $f"; $linkml -s "$model" -C "$(class_of "$f")" "$f" 2>&1 | tail -3; fail=1
  fi
done < <(find "$here/examples/valid" -name '*.yaml' | sort)
while IFS= read -r f; do
  if $linkml -s "$model" -C "$(class_of "$f")" "$f" >/dev/null 2>&1; then
    echo "FAIL: invalid example accepted: $f"; fail=1
  fi
done < <(find "$here/examples/invalid" -name '*.yaml' | sort)
if [ -n "${JURISGEN:-}" ]; then
  out="$(mktemp -d)"
  "$JURISGEN" -dir "$here/examples/valid" -lang en -out "$out" -today 2026-11-02 >/dev/null || { echo "FAIL: jurisgen rejected examples/valid"; fail=1; }
  rm -rf "$out"
fi
[ $fail -eq 0 ] && echo "PASS"
exit $fail
