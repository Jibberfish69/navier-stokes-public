# Carrier-Selector Structural Audit

## Status

This note inventories the theorem surfaces most affected by the ontology
correction:

```text
carrier = persistent coherent support,
selector = derived theorem-control localization.
```

It is an audit note, not a new theorem.

The theorem-authority decision fixing the object hierarchy is now recorded in
[carrier-ontology-authority-decision.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-authority-decision.md).

## Canonical Structural Split

The corrected bridge stack is:

```text
\mathfrak R
\supset
K_D
\xrightarrow{\rho}
u_{\mathrm{coh}}
\xrightarrow{\text{selector}}
\text{classical low-mode target}.
```

So a note is structurally sound only if it keeps distinct:

1. persistent support object,
2. coherent readout,
3. selector/localizer,
4. classical target.

## Current Note Audit

### Authority-applied summary

The canonical hierarchy is now fixed as:

```text
\mathfrak R \supset K_D \xrightarrow{\rho} u_{\mathrm{coh}}
\to
\mathbb S_D(j_0)\text{-localized coherent readout}
\to
\text{classical low-mode target}.
```

So the audit question is no longer “what should the object stack be?” It is
only whether individual notes obey that stack.

### A. Ontology-correct support notes

These treat the carrier as persistent coherent support and are structurally
aligned with the source stack:

- [carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md)
- [carrier-ontology-refactor-obligations.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-refactor-obligations.md)
- [coherent-laplacian-zero-mode-obstruction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-laplacian-zero-mode-obstruction-lemma.md)

### B. Selector-realization notes

These are acceptable only when read as selector machinery on top of the
persistent carrier, not as carrier-defining notes:

- [holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md)
- [active-coherent-projector-spectral-identification-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/active-coherent-projector-spectral-identification-theorem.md)

### C. Readout/export notes needing the new stack explicitly

These are the main bridge notes and must be read in the order

```text
support -> readout -> selector -> classical target.
```

- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)

The bridge debt stack is now more precise and ordered:

1. quantitative coherent-readout vs full low-mode comparison,
2. persistent-support transport export theorem surface,
3. noncoherent leakage export theorem surface.

The first debt has been strengthened into a quantitative comparison theorem
surface, while the second and third are new theorem notes that isolate the
remaining transport and leakage export work.

### D. Notes structurally misframed if read literally

These note classes become misframed when they speak as though a thresholded
family is itself the carrier:

1. any note that starts from `K_D(j_0)` before defining `u_{\mathrm{coh}}`,
2. any note that asks the selector family to serve as the ontic definition of
   coherence,
3. any note that forces the zero-mode coherent-Laplacian route to generate the
   threshold family,
4. any transport-export note phrased on a thresholded block instead of on
   persistent support plus selector-localized readout.

The current status split is:

- `coherent-readout-low-mode-comparison-theorem.md`: open, but now quantitative
  and comparison-specific rather than merely structural.
- `persistent-support-transport-export-theorem.md`: open transport export
  surface on persistent support.
- `noncoherent-leakage-export-theorem.md`: open leakage export surface driven
  by the exact carrier commutator identity and reduced resolvent.

## Immediate Rewrite Rule

Whenever a theorem surface currently reads like

```text
thresholded carrier block -> classical low modes,
```

rewrite it as

```text
persistent coherent support
-> coherent classical readout
-> selector-localized coherent readout
-> classical low-mode comparison.
```

## Working Conclusion

The current route does not need a new theorem direction.
It needs the bridge notes to stop collapsing:

```text
support, readout, selector
```

into one overloaded carrier symbol.

The present theorem-debt order is:

```text
1. quantitative coherent-readout comparison
2. persistent-support transport export
3. noncoherent leakage export
```
