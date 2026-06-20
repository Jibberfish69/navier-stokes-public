# Door 2 Modulation Forcing Native Projection Direct Test

Date: 2026-06-20

Status: direct child test; not proved from current installed inputs.  The
test sharpens `ModulationForcingNativeProjection.A` into a dual-mode
nondegeneracy statement plus a source-resolved native trace identity.  The
remaining obstruction is not the formal modulation equation.  It is whether the
selected one-sided native source carrier actually contains the signed
modulation residual after gauge fixing, packet selection, and terminal
positive-part extraction.

## 1. Door 2 child under test

The parent drift note reduces zero-flux drift visibility to

```math
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}.
\tag{MF.1}
```

This note tests the middle child.  In a renormalized gauge write

```math
u(t,x)
=
{1\over\lambda(t)}
U\left(
{R(t)^{-1}(x-x(t))\over\lambda(t)},s
\right),
\tag{MF.2}
```

so the renormalized equation has a modulation residual

```math
\partial_s U-\nu\Delta U+(U\cdot\nabla)U+\nabla P
=
F^{mod}+F^{src}+\operatorname{div}M^{def}.
\tag{MF.3}
```

The modulation part is a linear combination of symmetry and selector tangent
fields:

```math
F^{mod}
=
\sum_{\alpha} b_\alpha(s)\,G_\alpha U,
\tag{MF.4}
```

where the generators include translation, rotation, scale, phase, and selector
motion.  Explicitly, the familiar continuous pieces are

```math
-{x_s\over\lambda}\cdot\nabla_y U,
\qquad
-\Omega_s y\cdot\nabla_y U,
\qquad
-{\lambda_s\over\lambda}\bigl(U+y\cdot\nabla_yU\bigr).
\tag{MF.5}
```

The desired projection theorem would say that a nonzero coefficient vector
\(b(s)\) cannot persist while every selected native stress/source readout
vanishes.

## 2. What would prove it

Let \(\Psi_i(U)\) be dual modulation tests in the same normalized packet
geometry.  The clean coercive form would be

```math
|b(s)|
\le
C
\left(
\sum_i
\left|
\left\langle
F^{mod}(s),\Psi_i(U(s))
\right\rangle
\right|
+\operatorname{Def}_{gauge}(s)
\right).
\tag{MF.6}
```

This is the actual content of the modulation projection bridge.  It requires a
nondegenerate Jacobian

```math
J_{i\alpha}(U)
=
\left\langle
G_\alpha U,\Psi_i(U)
\right\rangle,
\qquad
\sigma_{\min}J(U)\ge c_0>0
\tag{MF.7}
```

on the selected terminal profile class.  Once `(MF.6)` and `(MF.7)` are
available, persistent drift gives a nonzero signed native readout.

To convert that signed readout into the proof's selected positive carrier, one
needs a same-carrier trace identity:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,\Psi_i(P)
=
\left\langle
F^{mod},\Psi_i(U)
\right\rangle
-\operatorname{Legal}_{m,i}
-o_m(1).
\tag{MF.8}
```

Then the positive-part inequality gives visibility on the native carrier:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\bigl[\mathcal N^{loc}_{preCauchy}(u;P)\bigr]_+
\ge
c_1|b|
-\operatorname{Legal}_m
-o_m(1).
\tag{MF.9}
```

Thus the child would close from the three precise inputs

```math
\boxed{
\text{NondegenerateModulationJacobian.A}
}
\tag{MF.10}
```

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A}
}
\tag{MF.11}
```

```math
\boxed{
\text{NoNeutralModulationLoop.A}.
}
\tag{MF.12}
```

Here `(MF.11)` is the modulation-mode version of the same-shadow source
identity already exposed by the Door 1 minimal-chain test.

## 3. Why the current inputs do not prove it

Zero point-force flux only says

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
0\cdot\delta_0
\tag{MF.13}
```

in the zero-flux branch.  It does not say that the tangent fields
\(G_\alpha U\) have nonzero projection onto the selected packet tests.
Translation, rotation, scale, and selector motion can be tangent to the
renormalized orbit without leaving a point-force residue.

The native source carrier is stronger than point-force flux, but it is not a
linear signed readout.  It is localized, lifted, weighted, selected, and passed
through a positive part:

```math
\mu^{+}_{src,m}(P)
=
\int_{Q(P)}
\bigl[
\mathcal N^{loc}_{preCauchy}(u;P)
\bigr]_+\,dx\,dt.
\tag{MF.14}
```

The operation in `(MF.14)` can discard the signed partner that would certify
the dual-mode identity `(MF.8)`.  This is the same structural mismatch as the
Door 1 selected-source problem.

## 4. Countermodel shape

The failure mode is a neutral modulation loop:

```math
U(s)=g(s)U_0,
\qquad
g(s_0)=g(s_1)=e,
\qquad
\int_{s_0}^{s_1}|g^{-1}g_s|\,ds>0.
\tag{MF.15}
```

In this representation, \(F^{mod}\) is nonzero along the path.  But the
physical profile has only moved through an uncharged symmetry or selector loop.
The endpoint point-force flux is still zero, and the selected positive carrier
can remain zero when the dual tests are invariant or degenerate along the
loop.

A second failure mode is two selected packets with opposite signed modulation
mode:

```math
\left\langle
F^{mod},\Psi_i(P_1)
\right\rangle
=a_m,
\qquad
\left\langle
F^{mod},\Psi_i(P_2)
\right\rangle
=-a_m,
\tag{MF.16}
```

while the terminal selector keeps the positive side but the signed partner
moves to the next donor shadow.  Finite donor chains telescope.  An infinite
terminal Zeno chain leaves exactly the same unresolved same-shadow defect as
`MinimalChainProjectedResidueIdentity.A`.

## 5. Exact reduction

The direct child test does not install
`ModulationForcingNativeProjection.A`.  It reduces it to

```math
\boxed{
\text{ModulationForcingNativeProjection.A}
\Leftarrow
\text{NondegenerateModulationJacobian.A}
+
\text{SourceResolvedNativeModeReadout.A}
+
\text{NoNeutralModulationLoop.A}.
}
\tag{MF.17}
```

Together with the parent drift note, Door 2's drift side now reads

```math
\text{ZeroFluxDriftVisibility.A}
\Leftarrow
\text{CanonicalGaugeCoercivity.A}
+
\text{NondegenerateModulationJacobian.A}
+
\text{SourceResolvedNativeModeReadout.A}
+
\text{NoNeutralModulationLoop.A}.
\tag{MF.18}
```

`SourceResolvedNativeModeReadout.A` is not independent of Door 1.  It is the
mode-resolved version of selected-shadow terminal signed saturation:

```math
\text{SourceResolvedNativeModeReadout.A}
\Longleftrightarrow
\text{selected native positive carrier retains the signed modulation shadow
up to legal spill}.
\tag{MF.19}
```

So the Door 2 modulation branch does not create a new autonomous closure route.
It merges back into the same two obstructions:

```math
\boxed{
\text{NoNeutralModulationLoop / canonical gauge nondegeneracy}
}
\tag{MF.20}
```

and

```math
\boxed{
\text{same-shadow selected-source trace identity}
}
\tag{MF.21}
```

The first is a genuine gauge/compactness rigidity problem.  The second is the
same signed-to-positive native carrier bridge already exposed on Door 1.

## Verdict

`ModulationForcingNativeProjection.A` is not proved by the installed zero-flux
or compactness inputs.  The exact missing content is a nondegenerate
modulation Jacobian whose dual-mode residual is represented on the selected
native source carrier without losing the signed shadow.  Without that, a
zero-flux Zeno orbit may drift through a neutral gauge loop or through a
selector-shadow cancellation without producing the selected positive carrier
needed by the forward-gold proof.
