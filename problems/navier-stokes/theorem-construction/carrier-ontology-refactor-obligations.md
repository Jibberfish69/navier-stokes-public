# Carrier Ontology Refactor Obligations

## Status

This note records the concrete `NS`-side changes forced by the ontology
correction:

- the route stays the same,
- the object-language has to change.

The correction source is
[carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md).
The theorem-authority resolution of the object hierarchy is now recorded in
[carrier-ontology-authority-decision.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-authority-decision.md).

## Core Correction

The bridge should no longer treat a thresholded family or certified window as
the carrier itself.

The ontology-correct stack is:

```text
one ontic carrier \mathfrak R
+ one persistent coherent support object
+ one coercive complement
+ one classical/coherent readout
+ only then selector/localizer families for export.
```

So the route changes object role, not theorem direction.

The canonical choice is now fixed:

```text
keep K_D and freeze it to persistent coherent support;
use \mathbb S_D(j_0) for the derived selector family on K_D.
```

## NS-Side Refactor Obligations

### 1. Fix the carrier object

The carrier-side bridge must start from one persistent coherent support object
derived from cocycle / holonomy / refinement persistence.

Current notes still drift between:

- `K_D` as persistent support,
- `K_D(j_0)` as thresholded active window,
- `K_D` as zero-mode harmonic carrier,
- `K_D` as spectral block.

Those must be separated.

### 2. Separate support from selector

Thresholded families such as `\mathbb H_D(j_0)` should be treated only as
derived selector machinery acting on the persistent coherent support or on its
readout.

So the bridge language should be:

```text
support object
\neq
selector family.
```

### 3. Move the low-mode target to the readout side

The actual classical target is not a thresholded carrier block by itself.

It should be posed through the coherent readout

```text
u_{\mathrm{coh}} := \rho(\mathbb H_D X),
```

and then a derived localization such as

```text
P_{\le j_0}u_{\mathrm{coh}}.
```

So the export burden becomes:

```text
persistent coherent support
\to
coherent classical readout
\to
classical low-mode selector.
```

The theorem debt stack attached to that route is now ordered and statused as:

1. quantitative coherent-readout vs full low-mode comparison.
2. persistent-support transport export theorem surface.
3. noncoherent leakage export theorem surface.

All three are live theorem debts. The first is a comparison theorem with a
quantitative remainder bound, while the second and third are export theorems
for the principal transport and the off-support remainder.

### 4. Stop forcing coherent-Laplacian identity on the zero-mode route

The current zero-mode carrier route cannot identify the realized selector
generator with

```text
(I+\mathcal L_{\mathrm{coh}})^{1/2}.
```

So the bridge should not keep spending effort on that identification unless the
carrier itself is upgraded away from the zero-mode package.

### 5. Reframe transport export

The principal transport theorem should be formulated as:

- persistent-support transport,
- exported coherent readout transport,
- selector-localized classical target,
- lower-order leakage/remainder.

Not as “transport on a thresholded carrier block” taken to be the carrier
itself.

This is now the second debt in the ordered stack. Its current status is open,
with the precise theorem surface recorded in
[persistent-support-transport-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-support-transport-export-theorem.md).

### 6. Reframe leakage

Leakage should be classified relative to:

- support vs complement,
- coherent readout vs noncoherent readout,
- selector collar vs genuine off-support remainder.

This is sharper than the current mix of “off-block,” “threshold leakage,” and
“carrier leakage.”

This is now the third debt in the ordered stack. Its current status is open,
with the exact export surface recorded in
[noncoherent-leakage-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/noncoherent-leakage-export-theorem.md).

## Direct Note-Level Consequences

The following note classes are structurally misframed whenever they treat a
selector/window/projector family as the carrier itself:

1. thresholded coherent projector identification notes,
2. low-mode export notes that start from `K_D(j_0)` before defining the
   coherent readout,
3. coherent-Laplacian identification notes that ignore the zero-mode
   obstruction,
4. transport export notes phrased on a thresholded block instead of on
   persistent support plus readout selector.

## Exact Open Decisions

The route now depends on three exact architectural decisions.

### A. Canonical object freeze

Resolved by theorem authority:

```text
K_D = persistent coherent support.
```

### B. Canonical selector notation

Resolved by theorem authority:

```text
\mathbb S_D(j_0):K_D\to K_D.
```

### C. Exact coherent readout theorem surface

Resolved by theorem authority:

```text
support object
\to
coherent readout
\to
selector localization
\to
classical low-mode transport target.
```

## What WIZARD Decided

The theorem-authority decision is now:

1. keep `K_D`,
2. freeze `K_D` to persistent coherent support,
3. use `\mathbb S_D(j_0)` as the derived selector family,
4. impose the bridge order
   ```text
   support -> coherent readout -> selector-localized coherent readout -> classical low-mode target.
   ```

## Working Conclusion

The next phase is not another closure attempt inside the old threshold
language.

It is an ontology-driven refactor of the bridge:

```text
carrier as persistent support
+ readout as separate map
+ selector as derived theorem machinery.
```

On that corrected language, the remaining theorem work is no longer diffuse:
it is the three-step debt stack above, in that order, with the first item now
quantitative and the latter two now isolated export theorems.
