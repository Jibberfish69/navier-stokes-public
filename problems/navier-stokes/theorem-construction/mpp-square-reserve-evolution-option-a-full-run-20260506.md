# MPP SquareReserveEvolution.A Option A Full Run

## Status Verdict

This note runs Option A against the current Navier--Stokes CM witness-face
program.

Verdict:

```math
\boxed{
SquareReserveEvolution.A
\text{ is not proved from the currently installed Pack/Part/source-wall
inputs.}
}
```

The theorem remains a valid sufficient route:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

But the attempted proof fails at a precise theorem-grade point:

```math
\boxed{
\text{no installed theorem charges first-time creation of the scale-critical
donor square reserve } \mathcal R_N
\text{ on terminal heat windows.}
}
```

The exact missing Option A subtheorem is:

```math
\boxed{
ReserveCreationCharge.A
}
```

or an equivalent active-window height / retained-face amplitude theorem strong
enough to control the scale-critical square density.

## CM Witness-Face Placement

The target problem is the periodic zero-force Navier--Stokes statement on
`T^3`: smooth divergence-free zero-mean data generate a global smooth
classical solution.

The governing proof grammar is contrapositive:

```math
T_*<\infty
\Longrightarrow
\neg Smooth(Q)
\Longrightarrow
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

The CM witness envelope is:

```math
CM_{N,r,Q}
:=
Pack_Q(u,\Phi)
\wedge
Part_{N,Q}(u,p)
\wedge
Field_{N,r,Q}(u,p).
```

The installed certificate direction is:

```math
\forall N\ \exists r_N:\quad
CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work})
\Longrightarrow
Smooth_N(Q).
```

Therefore a first class-exit is witnessed, route-relatively, by first failure of
one of the three faces:

```math
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

In this run we assume the already routed endpoint alternatives put the terminal
packet on retained Pack and Part faces. The surviving branch is therefore:

```math
Pack_Q
\wedge
Part_{N,Q}
\wedge
\forall r>0\,\neg Field_{N,r,Q}.
```

This is the Field-face residual wall. Option A is only a supplier theorem for
that wall. It is not the primitive proof direction
`OriginalSmoothData => Smooth`.

## Definitions

Let

```math
u_\ell=\Delta_\ell u,
\qquad
D_\ell(t)=\nu\|\nabla u_\ell(t)\|_2^2.
```

For `N` large define the upper dissipation tail

```math
T_k(t)
:=
\sum_{\ell>k+4}D_\ell(t),
```

and the scale-critical square density

```math
\rho_N(t)
:=
\sum_{k>N}2^kT_k(t)^2.
```

For a terminal same-fluid window `W`, set

```math
\mathcal R_N(W)
:=
\int_W\rho_N(t)\,dt
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

Packet-language form:

```math
\mathcal R_N(W)
:=
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt,
```

where `A_{P^-}` is the donor/source factor left after the installed diffuse
parent embedding.

The installed static result is:

```math
ParentSquareEmbed.A:
\quad
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
```

Thus `ParentSquareEmbed.A` reduces the positive localized source estimate to
control of `\mathcal R_N`. It does not control `\mathcal R_N` itself.

## Target Law

Option A asks for the dynamic square-reserve law:

```math
\boxed{
SquareReserveEvolution.A:
\quad
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
}
```

The charge must be first-moment legal:

```math
\sum_W Charge_N(W)
\le
C\int\sum_{q>N}D_q(t)dt+o_N(1).
```

Because smooth finite-energy solutions satisfy

```math
\int_0^{T_*}\sum_{q>N}D_q(t)dt\to0
\qquad (N\to\infty),
```

this charge would vanish on terminal high-frequency tails.

## Conditional Implication If Option A Were Proved

Assume `SquareReserveEvolution.A`.

If `ScaleCriticalTreeCarleson.A` failed, then for some `eta>0` there would be
`N_m\to\infty` and terminal same-fluid windows `W_m` such that

```math
\mathcal R_{N_m}(W_m)\ge\eta
```

after legal losses are removed.

Choose `W_m` first in the dyadic same-fluid order among windows crossing this
threshold. Iterating `SquareReserveEvolution.A` backward gives

```math
\mathcal R_N(W_m)
\le
\sum_{s=0}^{S-1}(1-\delta)^sCharge_N(Past_s(W_m))
+
(1-\delta)^S\mathcal R_N(Past_S(W_m))
+
Loss_{legal}
+
o_N(1).
```

The first-window choice prevents an earlier order-one reserve pulse. The
geometric factor kills the inherited past branch as `S\to\infty`. The charges
are controlled by the high-frequency dissipation tail and vanish as
`N\to\infty`. This contradicts `\mathcal R_{N_m}(W_m)\ge\eta`.

Therefore:

```math
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

Together with `ParentSquareEmbed.A`, this gives:

```math
SquareReserveEvolution.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

Inside the CM witness-face program, this would close the retained Pack/Part
Field-face branch:

```math
Pack_Q+Part_{N,Q}+\neg Field_{N,r,Q}
\Longrightarrow
\text{terminal positive source reserve}
\Longrightarrow
\bot.
```

That would discharge the Field-face residual contradiction on Option A.

## Attempt 1: Differentiate The Scalar Reserve

Formally:

```math
{d\over dt}\rho_N(t)
=
2\sum_{k>N}2^kT_k(t)
\sum_{\ell>k+4}\partial_tD_\ell(t).
```

For each shell,

```math
{d\over dt}D_\ell(t)
+
c\nu 2^{2\ell}D_\ell(t)
\le
\text{nonlinear source}_\ell(t)
+
Loss_\ell(t),
```

where the favorable term comes from the differentiated viscous shell energy.
Inserting this into the derivative of `\rho_N` produces a good heat part, but
also the term

```math
2\sum_{k>N}2^kT_k(t)
\sum_{\ell>k+4}\text{nonlinear source}_\ell(t).
```

After localization, sign selection, and terminal same-fluid packetization, this
is precisely the native positive source / active-square wall again. Cauchy or
Young estimates return

```math
\int_W\rho_N(t)dt
```

on the right-hand side, with no contraction coefficient `(1-\delta)` and no
first-moment legal charge.

Thus differentiating the scalar reserve does not prove
`SquareReserveEvolution.A`; it reopens the target
`ScaleCriticalTreeCarleson.A`.

## Attempt 2: Use Normalized-Adjoint Parent-Or-Charge

The normalized-adjoint route controls child packet mass:

```math
M(T)
:=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2.
```

It supplies a dynamic inequality:

```math
M(T)
\le
Charge(T)
+
\sum_{P\prec T}\kappa(P,T)M(P)
+
Loss_{legal}(T),
```

with residual charges controlled by `WeightedAdjRes.A`:

```math
\sum_TCharge(T)
\le
C\int\sum_{q>N}D_q+o_N(1).
```

This is the right shape, but for the wrong variable. The donor square reserve is

```math
\mathcal R_N(W)
:=
\int_W\sum_{P^-}|A_{P^-}(t)|^2dt.
```

`ParentSquareEmbed.A` gives only the upper image estimate:

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)A_{P^-}
\right|^2
\le
C\sum_{P^-}|A_{P^-}|^2+o_N(1).
```

To transfer the normalized-adjoint dynamics to `\mathcal R_N`, one would need
the inverse trace theorem:

```math
\boxed{
DonorReserveAdjointTrace.A:
\quad
\mathcal R_N(W)
\le
C\sum_{T\subset W}M(T)
+
Loss_{legal}(W)
+
o_N(1).
}
```

No such lower-frame / no-null-source theorem is installed. A Bessel upper
embedding is not invertible in general, and donor configurations can be
near-kernel to the selected child analysis or can send their image outside the
current terminal ledger.

Therefore the normalized-adjoint machinery does not prove
`SquareReserveEvolution.A`.

## Attempt 3: Spend Retained Pack And Part

The CM setting gives more structure than raw finite energy:

```math
Pack_Q+Part_{N,Q}
```

is retained on the surviving Field-face branch.

This still does not close `SquareReserveEvolution.A` as currently defined.
`Part_{N,Q}` routes pressure, viscous participation, cutoff, and finite-depth
tower terms into the legal ledger. It does not give a high-frequency
scale-critical square bound for

```math
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell\right)^2.
```

Finite `Pack_Q` deformation gauge also does not bound accumulated positive
low-strain gain. The already recorded retained-face amplitude test shows that

```math
Pack_Q
\not\Longrightarrow
PackGainLedger.A
```

from finite net deformation alone. Rapid alternating incompressible strain can
keep the deformation gauge bounded while making

```math
\int\lambda_{\max}^+S_{\le j-C}(X_P(t),t)dt
```

large. Thus retained Pack/Part do not by themselves imply the amplitude cap
needed to reduce cubic source transfer to heat.

The valid conditional retained-face route is:

```math
PackGainLedger.A+PartEnvelope.A
\Longrightarrow
RetainedFaceAmplitudeGain.A
\Longrightarrow
CycleHeatAction.Amp.
```

But `PackGainLedger.A` is not currently a consequence of `Pack_Q`.

## Scalar Ledger Obstruction

The obstruction is visible at the level of the installed ledgers. This is not a
Navier--Stokes counterexample; it is a countermodel to the claim that the
current first-moment / static-Bessel / finite-tree inputs imply
`SquareReserveEvolution.A`.

Let `I_m` be a terminal interval of length `h_m`, and set

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
```

Then the first-moment high-frequency charge is

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)dt=A_m.
```

But the `k=m` contribution to the square reserve is

```math
\int_{I_m}
2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
=
2^mA_m^2h_m^{-1}.
```

Choose, for example,

```math
A_m=2^{-2m},
\qquad
h_m=2^{-3m}.
```

Then `h_m` is shorter than the heat time `2^{-2m}`, the first-moment charge
tends to zero, and the square reserve remains order one:

```math
A_m\to0,
\qquad
2^mA_m^2h_m^{-1}=1.
```

This is exactly the first-creation pattern that breaks Option A:

```math
Past(W_m)=0,
\qquad
Charge_N(W_m)\to0,
\qquad
\mathcal R_N(W_m)\ge c_R.
```

To rule out this pattern one needs a genuine Navier--Stokes theorem forbidding
terminal source-balanced reserve creation on such windows. That theorem is not
present in the current Option A inputs.

## Exact Failure

The attempted proof fails at:

```math
\boxed{
ReserveCreationCharge.A:
\quad
\left[
\mathcal R_N(W)
-
(1-\delta)\mathcal R_N(Past(W))
-
Loss_{legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1).
}
```

Equivalent sufficient forms are:

```math
\boxed{
ActiveWindowHeight.A:
\quad
\sup_{t\in W}\sup_{\ell>N}
2^\ell\sum_{m>\ell+L_0}D_m(t)
\le
C_{legal},
}
```

or

```math
\boxed{
RetainedPackGainProduction.A:
\quad
Pack_Q+Part_{N,Q}
\Longrightarrow
PackGainLedger.A,
}
```

together with the retained amplitude envelope.

Without one of these, the donor square reserve is not a Lyapunov quantity, not
a signed-current heat action, and not controlled by the normalized-adjoint
child-mass dynamics. It is a static price for diffuse parentage.

## Downstream If Proved

If `SquareReserveEvolution.A` were proved, the downstream CM Field-face
contradiction would be:

```math
Pack_Q+Part_{N,Q}+\neg Field_{N,r,Q}
\Longrightarrow
\text{terminal positive source reserve}
```

and

```math
SquareReserveEvolution.A
\Longrightarrow
\mathcal R_N([T_*-\varepsilon,T_*))\to0.
```

This contradicts the terminal positive reserve forced by the Field-face
failure. Therefore:

```math
Pack_Q+Part_{N,Q}+\neg Field_{N,r,Q}
\Longrightarrow
\bot.
```

Combined with the Pack and Part closures, this would give:

```math
T_*<\infty
\Longrightarrow
\bot,
```

and hence global regularity for the periodic target.

## Next Live Target

Option A is not complete. The next direct target is not a route summary; it is
the missing first-creation theorem:

```math
\boxed{
ReserveCreationCharge.A
}
```

with one of the following noncircular realizations:

```math
ActiveWindowHeight.A,
\qquad
DonorReserveAdjointTrace.A,
\qquad
RetainedPackGainProduction.A+RetainedFaceAmplitudeGain.A.
```

If Option A is abandoned, the alternate live branch remains:

```math
\boxed{
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
}
```

for a rigid class `B` genuinely produced by terminal Zeno source-residue
rescaling.

The current file therefore closes the Option A run by obstruction, not by
proof:

```math
\boxed{
SquareReserveEvolution.A
\text{ remains open exactly at }ReserveCreationCharge.A.
}
```
