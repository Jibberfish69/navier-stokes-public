# Coherent Readout Low-Mode Comparison Theorem

## Status

This note isolates the first actual theorem debt after the carrier ontology
refactor.

The object hierarchy is now fixed by
[carrier-ontology-authority-decision.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-authority-decision.md):

```text
\mathfrak R \supset K_D \xrightarrow{\rho} u_{\mathrm{coh}}
\to
\mathbb S_D(j_0)\text{-localized coherent readout}
\to
\text{classical low-mode target}.
```

So the first unresolved bridge question is no longer “what is the carrier?” It
is:

```text
how does the coherent readout compare to the actual classical low-mode band?
```

## Definitions

Let

```math
u := \rho(X),
\qquad
u_{\mathrm{coh}} := \rho(\mathbb H_D X),
\qquad
u_{\mathrm{noncoh}} := \rho((I-\mathbb H_D)X).
```

Then

```math
u = u_{\mathrm{coh}} + u_{\mathrm{noncoh}}.
```

Fix a dyadic threshold `j_0` and write

```math
u_{<j_0}:=P_{\le j_0}u.
```

By the selector/readout package, the coherent side already targets

```math
P_{\le j_0}u_{\mathrm{coh}}
=
\rho(\mathbb S_D(j_0)\mathbb H_D X)
```

on the bridge surface.

## Exact Comparison Identity

The classical low-mode band decomposes exactly as

```math
P_{\le j_0}u
=
P_{\le j_0}u_{\mathrm{coh}}
+
P_{\le j_0}u_{\mathrm{noncoh}}.
```

So the remaining comparison burden is entirely the noncoherent low-mode readout
term

```math
P_{\le j_0}u_{\mathrm{noncoh}}
=
P_{\le j_0}\rho((I-\mathbb H_D)X).
```

## Theorem CLC

Assume, on one common bridge surface:

1. **Coherent selector/readout identity.**

   ```math
   \rho(\mathbb S_D(j_0)\mathbb H_D X)=P_{\le j_0}u_{\mathrm{coh}}.
   ```

2. **Noncoherent low-mode suppression.**

   There is a subcritical export bound of the form

   ```math
   \|\nabla P_{\le j_0}\rho((I-\mathbb H_D)X)\|_{L^\infty_x}
   \le
   C\,\Psi(\mathcal E_D(X)),
   ```

   with `\Psi(\mathcal E_D(X))` lower-order relative to the Euclidean shell
   barrier.

Then

```math
\|\nabla u_{<j_0}\|_{L^\infty_x}
\le
\|\nabla P_{\le j_0}u_{\mathrm{coh}}\|_{L^\infty_x}
+
C\,\Psi(\mathcal E_D(X)).
```

In particular, any principal low-mode strain theorem proved on the coherent
readout side transfers to the full classical low-mode band up to the exported
noncoherent remainder.

## Quantitative Comparison Theorem

### Theorem CLC\_s

Assume in addition that:

1. `s>\frac52`;
2. the readout map satisfies the inherited D.3/D.4 Sobolev comparison

   ```math
   \|\rho(Z)\|_{H^s(\mathbb R^3)}
   \le
   C_s\|Z\|_{H_D^s}
   ```

   on the bridge surface.

Then the noncoherent low-mode term satisfies the exact estimate

```math
\|\nabla P_{\le j_0}\rho((I-\mathbb H_D)X)\|_{L^\infty_x}
\le
C_s\,2^{(\frac52-s)j_0}\|(I-\mathbb H_D)X\|_{H_D^s}.
```

Consequently,

```math
\|\nabla u_{<j_0}\|_{L^\infty_x}
\le
\|\nabla P_{\le j_0}u_{\mathrm{coh}}\|_{L^\infty_x}
+
C_s\,2^{(\frac52-s)j_0}\|(I-\mathbb H_D)X\|_{H_D^s}.
```

In particular, if the noncoherent carrier component satisfies the scale-sized
bound

```math
\|(I-\mathbb H_D)X\|_{H_D^s}
\le
c_s\,\nu\,2^{(s-\frac12)j_0},
```

then

```math
\|\nabla P_{\le j_0}\rho((I-\mathbb H_D)X)\|_{L^\infty_x}
\le
C_sc_s\,\nu\,2^{2j_0},
```

so the noncoherent readout is absorbable at the same viscous scale as the
classical low-mode target.

## Proof

From

```math
u=u_{\mathrm{coh}}+u_{\mathrm{noncoh}},
```

apply `P_{\le j_0}` to obtain

```math
u_{<j_0}=P_{\le j_0}u_{\mathrm{coh}}+P_{\le j_0}u_{\mathrm{noncoh}}.
```

Take one spatial derivative and `L^\infty_x` norm:

```math
\|\nabla u_{<j_0}\|_{L^\infty_x}
\le
\|\nabla P_{\le j_0}u_{\mathrm{coh}}\|_{L^\infty_x}
+
\|\nabla P_{\le j_0}u_{\mathrm{noncoh}}\|_{L^\infty_x}.
```

The first term is the coherent readout target, and the second is controlled by
the noncoherent low-mode suppression hypothesis. This gives the claimed bound.
`\square`

## Proof Of Theorem CLC\_s

Apply the exact comparison identity to the noncoherent piece

```math
u_{\mathrm{noncoh}}=\rho((I-\mathbb H_D)X).
```

Bernstein and Sobolev localization on `\mathbb R^3` give the displayed
inequalities below, for `s>\frac52`, with constants `C_{B,s}` and `C_{H,s}`
depending only on `s` and the fixed Littlewood--Paley partition,

```math
\|\nabla P_{\le j_0} f\|_{L^\infty_x}
\le
C_{B,s}
2^{\frac52 j_0}\|P_{\le j_0}f\|_{L^2_x}
\le
C_{H,s}
2^{(\frac52-s)j_0}\|f\|_{H^s_x}.
```

Apply this with `f=u_{\mathrm{noncoh}}`:

```math
\|\nabla P_{\le j_0}u_{\mathrm{noncoh}}\|_{L^\infty_x}
\le
C_{H,s}
2^{(\frac52-s)j_0}\|u_{\mathrm{noncoh}}\|_{H^s_x}.
```

Now use the inherited readout comparison from D.3/D.4:

```math
\|u_{\mathrm{noncoh}}\|_{H^s}
=
\|\rho((I-\mathbb H_D)X)\|_{H^s}
\le
C_s\|(I-\mathbb H_D)X\|_{H_D^s}.
```

Combining the two estimates yields

```math
\|\nabla P_{\le j_0}\rho((I-\mathbb H_D)X)\|_{L^\infty_x}
\le
C_s2^{(\frac52-s)j_0}\|(I-\mathbb H_D)X\|_{H_D^s}.
```

Insert this bound into the exact identity

```math
u_{<j_0}=P_{\le j_0}u_{\mathrm{coh}}+P_{\le j_0}u_{\mathrm{noncoh}}
```

to obtain the displayed quantitative comparison theorem. The final absorbable
viscous-scale clause follows by substituting

```math
\|(I-\mathbb H_D)X\|_{H_D^s}
\le
c_s\nu2^{(s-\frac12)j_0}.
```

`\square`

## Meaning

After the ontology refactor, this is the first real theorem debt because it
connects:

```text
coherent readout target
```

to

```text
actual classical low-mode target.
```

Without this step, even a perfect coherent-support transport theorem would only
control `P_{\le j_0}u_{\mathrm{coh}}`, not the full classical low modes of
`u=\rho(X)`.

The new quantitative theorem shows exactly what additional carrier-side input
is sufficient on this interface: a scale-sized `H_D^s` bound for the
noncoherent component, rather than an ad hoc classical low-mode hypothesis.

## Consequence For The Export Route

The post-refactor theorem debts are now ordered as:

1. coherent readout vs full low-mode comparison,
2. coherent transport export on persistent support,
3. leakage export for the noncoherent remainder.

The first debt is structural and comparison-level. The second and third are the
real transport estimates.

## Interfaces

- [carrier-ontology-authority-decision.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-authority-decision.md)
- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
- [persistent-support-transport-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-support-transport-export-theorem.md)
- [noncoherent-leakage-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/noncoherent-leakage-export-theorem.md)
