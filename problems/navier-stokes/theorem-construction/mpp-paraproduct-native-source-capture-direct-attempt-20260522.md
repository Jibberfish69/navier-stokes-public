# MPP ParaproductNativeSourceCapture.A Direct Attempt

Date: 2026-05-22

## Status

Bounded direct attempt on the current hard subburden inside
`CriticalL3ConcentrationToNativeSourceResidue.A`.

The attempt does not prove `ParaproductNativeSourceCapture.A` from the installed
inputs. It reduces the burden to one sharper native localization gap:

```math
TerminalParaproductSignLocalization.A.
```

This patch keeps the closed `B_ASAC` terminal zero-thickness CM target closed.
The terminal zero-radius Zeno atom remains a Pack-side CM exit after the May 21
correction, not a retained Field/jump target.

## Target

The current Duhamel split gives same-ledger nonlinear source work:

```math
\int P\nabla\cdot(u_m\otimes u_m)\cdot \Phi_m
=
-\int (u_m\otimes u_m):\nabla P\Phi_m
\ge c_0.
```

`ParaproductNativeSourceCapture.A` asks to convert that work into

```math
\nu_N^{src}(E_N)
=
\int_{E_N}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt
\ge c_1,
```

or else into selected `ScaleCriticalTreeCarleson.A` failure or a paid
Pack/Part/legal exit.

## Direct Attempt

Apply Bony decomposition on the selected terminal ledger. The localized work
splits into:

```text
strict low-high/high-low transport,
threshold spill/collar terms,
Leray-pressure redistribution,
high-high and donor-square refill,
legal cutoff/projection losses.
```

The strict low-mode pieces are not the obstruction. The existing paraproduct
reduction lemmas make them either commutator-controlled by the fixed low-mode
coefficient or part of the admissible coefficient ledger.

The collar, cutoff, projection, and off-family pieces are legal only if they are
charged to the installed pressure/cutoff/localization ledgers. If they are not
chargeable, the branch has already left the retained Pack/Part/legal channel.

High-high and donor-square refill is exactly the selected scale-critical source
reserve channel. If this reserve cannot be charged on the same selected tree,
the output is

```math
\neg_{sel}ScaleCriticalTreeCarleson.A.
```

After those exits are removed, the remaining retained contribution has the
native paraproduct form

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
a_P(x,t)\,|w_{j_P}|^2\,dxdt,
```

where the active coefficient `a_P` is the same localized low-strain coefficient
seen by the adjoint response packet.

## Failure Point

The installed inputs do not identify the sign and orientation of this retained
coefficient strongly enough. The source work lower bound is a signed
Leray-adjoint response statement, while the native measure keeps only

```math
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+.
```

A signed lower bound for the response work can still be carried by oscillatory
Leray recombination, pressure redistribution, or coefficient orientation that
does not force the positive part of the native strain packet. Those alternatives
are not new theorem branches: they are exactly legal/Part exits, selected
scale-critical reserve failure, or the missing sign-localization step.

## Sharper Gap

The narrow theorem-facing primitive is:

```math
\boxed{
TerminalParaproductSignLocalization.A:
\quad
\text{retained same-ledger paraproduct work}
\Longrightarrow
\nu_N^{src}(E_N)\ge c
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A
\vee
\text{paid Pack/Part/legal exit.}
}
```

Here "retained same-ledger paraproduct work" means the output of
`L3DuhamelResponseWorkLocalization.A` after strict low-mode commutators,
threshold collar, pressure/Leray redistribution, cutoff/projection loss, and
high-high donor refill have each been charged to their installed ledgers or
routed to their witness faces.

This is sharper than `ParaproductNativeSourceCapture.A`: the Bony split and
ledger routing are no longer the unknown part. The only surviving unknown is
the one-sided sign/orientation localization from the retained adjoint
paraproduct coefficient to the repo-native positive source measure.

## Reduction

The new reduction is:

```math
\boxed{
TerminalParaproductSignLocalization.A
\Longrightarrow
ParaproductNativeSourceCapture.A.
}
```

Therefore the current native extraction chain is:

```math
L3DuhamelResponseWorkLocalization.A
+
TerminalParaproductSignLocalization.A
\Longrightarrow
DuhamelInverseNativeSourceLocalization.A
\Longrightarrow
CriticalL3ConcentrationToNativeSourceResidue.A.
```

Once `TerminalParaproductSignLocalization.A` produces
`\nu_N^{src}(E_N)\ge c`, the installed `RN.NativeDecision.A` spends it: vanishing
installed ledger gives `\mu_*^{sing}>0`, and reserve-carried mass gives selected
`ScaleCriticalTreeCarleson.A` failure. Under retained Pack and Part, those are
the Field-facing native-source outputs already recorded by the May 21 public
translator notes.

## Boundary

This note does not reopen `B_ASAC`. The closed terminal zero-thickness
`B_ASAC^closed` object is already consumed by the May 21 CM correction as a
Pack/Part/Field exit, with zero-radius terminal Zeno residue landing first as
`not Pack_Q`. The open work here is only the public `L^3` translator's
same-ledger native source extraction step.
