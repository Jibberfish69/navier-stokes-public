# MPP Forward-Gold ParticipationStrictClockGap.A Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `ParticipationStrictClockGap.A` is not a consequence of
the same-fluid participation law, finite physical energy, finite dissipation,
or heat-scale clock comparability.

The participation law gives the exact balance.  The strict clock-gap theorem
would need a new one-sided sign/coercivity statement on the actual selected
carrier.

## 1. Target

The desired strict-gap theorem is not merely that feed and drain occur on the
same heat clock.  It is the stronger normalized inequality

```math
F_R(s)
\le
(1-\gamma)D_R(s)+R_{\rm legal}(s),
\qquad
\gamma>0,
\tag{PSG.1}
```

on selected retained terminal heat-scale packets, where

```math
M_R'(s)+D_R(s)=F_R(s)
\tag{PSG.2}
```

is the packet-local participation balance in rescaled variables.

Equivalently, `(PSG.1)` gives

```math
M_R'(s)+\gamma D_R(s)
\le
R_{\rm legal}(s).
\tag{PSG.3}
```

If `(PSG.3)` held with \(M_R\) bounded below and the legal residual summable in
renormalized time, then recurrent heat-scale packets would pay unweighted
action and the terminal atom would die.

So the proof question is exact:

```math
\boxed{
\text{does participation force }F_R<(1-\gamma)D_R
\text{ on the selected terminal carrier?}
}
\tag{PSG.4}
```

## 2. What participation actually gives

For a selected heat-scale packet

```math
x=x_j+r_jy,
\qquad
t=t_j+r_j^2s,
\qquad
u(t,x)=r_j^{-1}v_j(s,y),
\tag{PSG.5}
```

the exact local energy identity has the form

```math
M_R'(s)+D_R(s)
=
F_R^{conv}(s)+F_R^{press}(s)+F_R^{visc\ boundary}(s)+F_R^{dil}(s).
\tag{PSG.6}
```

The right side is the same-fluid participation interface.  It records that the
packet is coupled to pressure, transport, viscosity, neighboring shells, and
parabolic dilation.

But `(PSG.6)` is an identity.  It has no sign.  The convection and pressure
pieces can have either sign after localization.  The selected positive carrier
is taken after localization, projection, packet selection, lifting, and
positive-part extraction, so signed global cancellation does not automatically
survive on that carrier.

## 3. Scalar neutral model

The strict-gap implication is already false at the clock-accounting level.
Work in normalized packet time \(s\in[-1,0]\) and take

```math
M_R(s)\equiv1,
\qquad
D_R(s)\equiv1,
\qquad
F_R(s)\equiv1,
\qquad
R_{\rm legal}(s)\equiv0.
\tag{PSG.7}
```

Then `(PSG.2)` holds exactly:

```math
0+1=1.
\tag{PSG.8}
```

But `(PSG.1)` fails for every \(\gamma>0\):

```math
1\le1-\gamma
\tag{PSG.9}
```

is false.

This is not being claimed as a full Navier-Stokes solution.  It is the exact
normal form of the surviving estimate: heat-scale participation permits a
neutral source-balanced packet unless the equation supplies a new sign theorem
for the nonlinear interface.

## 4. Physical scaling of the neutral packet

Set \(r_j=2^{-j}\) and \(|I_j|=r_j^2\).  The physical version of the normalized
neutral balance has

```math
c_Dr_j
\le
\int_{I_j}D_j^{phys}(t)\,dt
\le
C_Dr_j,
\qquad
c_Fr_j
\le
\int_{I_j}F_j^{phys}(t)\,dt
\le
C_Fr_j,
\tag{PSG.10}
```

while the normalized packet action is order one:

```math
c_D
\le
r_j^{-1}\int_{I_j}D_j^{phys}(t)\,dt
\le
C_D,
\qquad
c_F
\le
r_j^{-1}\int_{I_j}F_j^{phys}(t)\,dt
\le
C_F.
\tag{PSG.11}
```

Thus a dyadic terminal stack satisfies

```math
\sum_j\int_{I_j}D_j^{phys}(t)\,dt
\le
C_D\sum_j r_j
<\infty,
\tag{PSG.12}
```

but

```math
\sum_j
r_j^{-1}\int_{I_j}D_j^{phys}(t)\,dt
=\infty.
\tag{PSG.13}
```

Finite physical energy/dissipation can therefore coexist with infinitely many
order-one normalized neutral balances.  This is the radius discount in its
feed/drain form.

## 5. Incompressibility does not add the sign

Trace-free strain can still feed a selected direction.  In a local normal frame
take

```math
S_0=\operatorname{diag}(2,-1,-1),
\qquad
e=e_1,
\qquad
\operatorname{tr}S_0=0.
\tag{PSG.14}
```

Then

```math
[e\cdot S_0e]_+=2.
\tag{PSG.15}
```

The signed tensor has transverse negative partners, but the selected positive
carrier keeps the expanding direction.  This is locally compatible with
incompressibility through the linear trace-free field \(u_0(y)=S_0y\).

So incompressibility and signed strain balance do not prove `(PSG.1)` after
positive selection.  They become useful only after a retained-partner,
polar-saturation, or same-shadow identity theorem is installed.

## 6. Pressure correction does not add the sign

Pressure is recovered by the spatial elliptic relation

```math
p-p_h=R_iR_j(u_iu_j).
\tag{PSG.16}
```

This controls the size of pressure in the critical \(L^{3/2}\) currency, but it
does not impose the terminal-time sign

```math
F_R^{press}(s)
\le
\alpha D_R(s)
\qquad(\alpha<1).
\tag{PSG.17}
```

Local Leray projection removes pressure only at the cost of localized
commutators.  Those commutators are scale-critical and sign-indefinite on the
same heat-scale packets.

Thus pressure correction can move the interface term; it does not create the
strict drain gap.

## 7. Exact reduction

The direct strict-gap theorem

```math
\text{ParticipationStrictClockGap.A}
\tag{PSG.18}
```

would be enough to produce the missing unweighted reserve, but it is not
available from participation alone.  At current resolution it reduces to one of
the already isolated strict mechanisms:

```math
\begin{gathered}
\text{SelectedSourceSquareCarrierDomination.A}
+\text{SourceSquareReserve.A},\\
\text{SelectedCriticalStrainCarleson.A with endpoint carrier UI},\\
\text{NormalizedCKNCarleson.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{SourceWeightedPolarSaturation.A}
+\text{NoFreeTerminalZenoDonorChain.A},\\
\text{SelectedCarrierProfileDecoupling.A}
+\text{CompactOrbitProduction.A}.
\end{gathered}
\tag{PSG.19}
```

Each item supplies an actual mechanism that participation lacks by itself:
same-carrier square control, endpoint uniform integrability, critical-action
Carleson control, a lower-bounded Lyapunov drop, signed partner saturation, or
compact profile rigidity.

## Verdict

The strict feed/drain clock gap is not hidden inside the participation law.
Participation gives the shared balance

```math
M_R'+D_R=F_R.
\tag{PSG.20}
```

The gold route needs the one-sided inequality

```math
F_R\le(1-\gamma)D_R+R_{\rm legal}.
\tag{PSG.21}
```

That inequality is exactly a new coercive reserve theorem on the actual
selected carrier.  Without it, the neutral heat-scale terminal pulse remains
visible but not excluded by forward gold.
