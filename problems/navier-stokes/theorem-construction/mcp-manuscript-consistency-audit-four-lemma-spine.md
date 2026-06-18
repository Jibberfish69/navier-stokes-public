# Manuscript Consistency Audit Against Four-Lemma Spine

## Status

Closed manuscript consistency audit.

## Included files

`main.tex` includes:

```text
sections/roadmap
sections/main-result
sections/notation-appendix
```

All three included files exist.

## Four-lemma spine

The manuscript states four named lemmas:

```text
1. Moving-cylinder regularity and affine excess
2. Terminal good-cover dichotomy and globalization
3. Endpoint contradiction
4. Terminal readout and continuation
```

This matches `mcp-manuscript-smallest-standard-lemma-sequence.md`.

## Scope check

The theorem and roadmap state the result on `T^3`. The appendix records whole-space `R^3` export as a separate theorem. The manuscript scope is consistent.

## Vocabulary check

The main proof uses classical PDE phrasing. The appendix maps the internal dependency labels:

```text
Field_avg, Jump_avg, AACT, DTC, End_NS_avg, End_NS, READ.END, FFSRC.A -> FCI.5f
```

## Environment check

`main.tex` defines both theorem environments used by `main-result.tex`:

```text
newtheorem{theorem}{Theorem}
newtheorem{lemma}{Lemma}
```

## Verdict

The paper-facing manuscript is consistent with the four-lemma proof spine.
