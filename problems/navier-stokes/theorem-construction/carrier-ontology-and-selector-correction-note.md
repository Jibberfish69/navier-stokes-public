# Carrier Ontology And Selector Correction Note

## Status

This note records the ontology correction forced by the source stack.

It is not a new closure theorem.
Its job is to stop the `NS` export program from treating thresholded windows or
certified localizers as if they were the carrier itself.

## Source Verdict

The ontology does **not** treat the carrier as a thresholded window, a
certified band, or a context-floating low-pass family.

The carrier is one persistent coherent support object derived from the ontic
transport geometry itself.

Thresholds, windows, refinements, and low-pass projectors are later selector
machinery used for theorem control, readout, or localization on top of that
carrier.

## Source Stack

The correction is forced jointly by the current ontology notes.

In
[minimal-ontic-package-from-relalg.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/minimal-ontic-package-from-relalg.md),
the bottom-level rule is explicit:

```text
there is one global ontic object;
contexts are epistemic slices of that object;
all projector-defined sectors are derived theorem machinery unless proven otherwise.
```

In
[persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md),
the note states:

```text
There is only one ontic carrier: \mathfrak R.
```

and then warns that `K_D` must not be defined by downstream
commutative survival or by after-the-fact classical selection.

In
[theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md),
the coherent carrier is built directly from the transport cocycle class
`[\Theta]`:

```text
K_D:=\overline{\operatorname{span}}\Gamma(M,\mathcal S_{[\Theta]}).
```

So the carrier comes from global coherent realizations of the holonomy/overlap
data, not from a spectral cutoff chosen first.

In
[continuum-ns-via-coherent-carrier-and-shadow.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/continuum-ns-via-coherent-carrier-and-shadow.md),
the role of `K_D` is exactly:

- invariant coherent support,
- complement coercivity,
- lower-order transport leakage off that support.

In
[projected-defect-growth-and-carrier-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md),
the direct-limit carrier theorem and descended closability theorem treat the
carrier as a refinement-compatible persistent support object before any
classical low-mode selector is introduced.

## What The Carrier Is

On the ontology side, the carrier is:

1. one support object inside the projected physical realization of the one
   ontic carrier `\mathfrak R`,
2. determined by persistence / holonomy / coherent realization of `[\Theta]`,
3. invariant under the admissible transport,
4. paired with a coercive complement and a leakage statement.

So the ontology picture is:

```text
one carrier
+ one persistent coherent support inside it
+ one coercive complement
+ one shadow/readout map.
```

It is **not**:

```text
one carrier per threshold,
or one floating certified window promoted to ontological status.
```

## What Thresholds And Windows Actually Are

Thresholds and windows are theorem-control selectors.

They may still be useful, but only in the following derived senses:

1. a refinement selector acting on an already-given persistent coherent support,
2. a spectral or dyadic selector acting on the coherent classical readout,
3. a localization device for exporting a carrier mechanism into a classical
   low-mode statement.

So a thresholded family like `\mathbb H_D(j_0)` may exist as a selector family,
but it should not be confused with the ontic definition of the carrier.

## What Went Wrong In The Threshold Program

The deprecated move was to let a theorem-control selector pretend to be the
carrier itself.

That creates several false pressures at once:

1. it makes a floating contextual window look ontologically primitive,
2. it forces the carrier to mimic classical dyadic frequency language too
   early,
3. it tempts the proof to identify carrier support with low-pass spectral
   support before the coherent readout has even been fixed,
4. it mixes two different roles:
   - persistent support,
   - active classical localization.

That is exactly the split the recent obstruction exposed.

## Correct Reformulation Of The Export Route

The export program should be reorganized as follows.

First fix the carrier in the ontology-correct sense:

```text
\mathfrak R
\supset
K_D
\text{ built from }[\Theta]\text{ / holonomy persistence}.
```

Then define the coherent classical readout

```text
u_{\mathrm{coh}} := \rho(\mathbb H_D X).
```

Only after that should one introduce a selector for the classical target:

```text
P_{\le j_0}u_{\mathrm{coh}}
\quad\text{or another derived localization of }u_{\mathrm{coh}}.
```

So the real export question is not

```text
is K_D(j_0) the true carrier?
```

It is:

```text
which derived selector on the coherent readout isolates the classical low-mode
transport burden without redefining the carrier itself?
```

## Consequence For The Current NS Bridge

The current `NS` export notes should therefore be read with the following
correction:

1. `K_D` is the persistent coherent support object;
2. any thresholded family on `K_D` is selector machinery, not ontology;
3. the classical low-mode target should be formulated on the readout side,
   starting from `u_{\mathrm{coh}}=\rho(\mathbb H_D X)`;
4. a spectral realization of a selector family may be useful, but it is no
   longer the definition of the carrier.

## Working Conclusion

The ontology does not want a "certified window carrier."

It wants:

```text
one ontic carrier,
one persistent coherent support,
one coercive complement,
and only then derived selectors for theorem export.
```

That is the correction the `NS` bridge should now respect.
