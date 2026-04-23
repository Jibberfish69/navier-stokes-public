# Carrier Ontology Authority Decision

## Status

This note is the canonical authority response to the carrier refactor packet.
It fixes the theorem-facing object hierarchy for the `NS` carrier/export sidecar
without changing the underlying theorem direction.

## Canonical Decision

Keep `K_D` and freeze it to a single meaning:

```text
K_D = persistent coherent support.
```

Do not retire `K_D` unless a later source-authority note explicitly requires a
rename. The canonical object-stack is therefore:

```text
\mathfrak R \supset K_D \xrightarrow{\rho} u_{\mathrm{coh}}.
```

Here `K_D` is the persistent coherent support object, `\rho` is the coherent
readout map, and the selector machinery sits strictly above that support/readout
layer.

## Canonical Selector Hierarchy

Use a derived selector family, not an ontic carrier family.

The preferred selector notation is:

```text
\mathbb S_D(j_0):K_D\to K_D.
```

It is a selector/localizer on persistent coherent support. It is not the carrier
itself.

The canonical bridge hierarchy is:

```text
persistent coherent support
\to
coherent readout
\to
selector-localized coherent readout
\to
classical low-mode target.
```

On the carrier side:

```math
u_{\mathrm{coh}} := \rho(\mathbb H_D X),
\qquad
\rho(\mathbb S_D(j_0)\mathbb H_D X)=P_{\le j_0}u_{\mathrm{coh}}.
```

On the classical side, the selector-localized target is simply the low-mode
band `P_{\le j_0}u_{\mathrm{coh}}`.

## Minimum Export Interface

The minimum theorem-export stack is:

```text
1. persistent coherent support: K_D
2. coherent readout: u_{\mathrm{coh}} = \rho(\mathbb H_D X)
3. selector-localized coherent readout:
   \rho(\mathbb S_D(j_0)\mathbb H_D X)
4. classical low-mode comparison / transport target:
   P_{\le j_0}u_{\mathrm{coh}}
```

If the transport theorem is being stated, the principal export burden is:

```text
persistent support transport
\to
coherent readout transport
\to
selector-localized classical target.
```

## Misframed Note Classes

Treat the following classes as rewrite-required if they still speak as though a
thresholded family were the carrier:

1. any note that starts from `K_D(j_0)` before defining `u_{\mathrm{coh}}`,
2. any note that asks a thresholded family to define the carrier,
3. any note that forces the zero-mode coherent-Laplacian route to generate the
   selector family,
4. any transport-export note phrased on a thresholded block instead of on
   persistent support plus selector-localized readout.

The main notes that must be read in the corrected order are:

- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)

## Coherent-Laplacian Route

Keep the coherent-Laplacian route only as selector-realization machinery on top
of persistent coherent support.

Do not use it as the ontic definition of the carrier.
In particular, the zero-mode obstruction means the route must be read as:

```text
selector realization theorem
```

and not as:

```text
carrier ontology theorem.
```

## Structural Verdict

The corrected bridge is:

```text
support object
\to
coherent readout
\to
selector localization
\to
classical low-mode comparison.
```

That is the authority decision for the current `NS` carrier/export sidecar.

