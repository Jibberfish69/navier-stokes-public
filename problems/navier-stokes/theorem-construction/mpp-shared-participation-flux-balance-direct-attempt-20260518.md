# MPP SharedParticipationFluxBalance.A Direct Attempt

Date: 2026-05-18

Status: generic conditional CM-exit bridge; failed as a forward supplier
discharge. The sharper B_ASAC-specific obstruction is recorded in
`mpp-basac-shared-participation-flux-balance-direct-attempt-20260518.md`.

Purpose: continue the density/flux route from
`mpp-basac-shared-participation-density-flux-exit-attempt-20260518.md` and
`mpp-source-measure-participation-density-bridge-verification-20260518.md`.

## 0. Target

The desired theorem is

```math
\boxed{SharedParticipationFluxBalance.A.}
```

It should say that the retained native positive source residue is governed by a
transported balance on the same-fluid CM carrier:

```math
\mu_m^{src,+}(Q_R^\Phi\times[T-\varepsilon,T])
\le
M_{CM}(N,r,Q)\varepsilon
+J_{in,m}(\partial Q_R^\Phi\times[T-\varepsilon,T])
+o_m(1).
```

If `J_in` is absent and `M_{CM}(N,r,Q)<\infty` is uniform on the terminal
window, this gives the terminal anti-atom modulus.

## 1. What the installed CM witness gives

The exact class-membership witness gives

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

The participation predicate is the common pressure-viscosity carrier law

```math
D_tU_k=K_k+B_k
```

together with slice finiteness of the participation envelope

```math
\mathfrak P_{N,Q}(t)
=
\sup_{x\in Q_t}\sum_{k=0}^N|K_k(x,t)|<\infty
```

on each time-slice meeting `Q`.

This is a carrier law and a time-slice envelope. By itself it is not a
conservation law for the positive source residue.

## 2. The missing balance

The native source residue is a selected positive source-current trace. The
dangerous endpoint time-marginal witness is

```math
F_m^{src,+}(t)=\tau_m^{-1}{\bf 1}_{[T-\tau_m,T]}(t),
\qquad \tau_m\downarrow0.
```

This model is a production-rate concentration. A transported incompressible
control volume preserves physical volume, but it does not automatically turn a
positive production-rate measure into a bounded transported density.

Thus the density/flux proof needs an additional theorem:

```math
\boxed{
SourceCurrentAsTransportedParticipationDensity.A
}
```

or, equivalently, a concrete continuity inequality whose source term is the
native selected source-current trace and whose flux term is the incoming
participation flux.

## 3. Uniform-envelope gap

Even after the source-current trace is read as a participation object, the
anti-atom estimate requires a uniform terminal envelope

```math
\boxed{
UniformTerminalCMParticipationEnvelope.A:
\sup_{t\in[T-\varepsilon_0,T)}
\mathfrak P_{N,Q}(t)
+\mathfrak C_{N,r,Q}(t)
+\Gamma_{pack,Q}(t)
<\infty.
}
```

The basic `Part_{N,Q}` predicate only records finite slice values. It does not
exclude

```math
\mathfrak P_{N,Q}(t_m)\uparrow\infty
\qquad t_m\uparrow T.
```

Such blowup is already a CM witness failure, but it is not a forward
source-wall anti-atom theorem.

## 4. Conditional theorem that is valid

The density/flux route gives the following checked conditional:

```math
\boxed{
\begin{aligned}
&SourceMeasureParticipationDensityBridge.A\\
&+SourceCurrentAsTransportedParticipationDensity.A\\
&+UniformTerminalCMParticipationEnvelope.A\\
&+NoIncomingParticipationFlux.A\\
&\Longrightarrow TerminalTimeFaceAntiAtom.A.
\end{aligned}
}
```

Equivalently, the contrapositive CM-exit form is:

```math
\boxed{
\mu_*^{src}(Q_R\times\{T\})>0
\Longrightarrow
\neg UniformTerminalCMParticipationEnvelope.A
\vee
NoIncomingParticipationFlux.A^{fail}
\vee
SourceCurrentAsTransportedParticipationDensity.A^{fail}.
}
```

The first failure is a Part/Field envelope exit. The second is a
transported flux/participation exit. The third says the source-current readout
was not licensed as a transported participation density.

## 5. B_ASAC-specific sharpening

The B_ASAC-specific direct attempt shows that even a transported participation
balance is not enough unless it is a signed balance before terminal positive
selection. An internal signed donor can feed the retained positive receiver:

```math
J(A\to B)=F>0,
\qquad
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

The selected receiver sees positive terminal source, while the internal donor
appears as a negative sink. This need not create incoming boundary flux. Thus
the B_ASAC balance additionally needs a signed no-free-sink/saturation theorem:

```math
TerminalSignedSaturation.A
+TwoTowerDonorDepletion.A
\Longrightarrow
SharedParticipationFluxBalance_{B_{ASAC}}.A.
```

## 6. Verdict

`SharedParticipationFluxBalance.A` is not proved from the installed CM witness
or from `B_ASAC` equality data alone.

The route is still useful: it converts the terminal atom into a CM-exit
diagnostic once the source-current density bridge, uniform terminal CM envelope,
no-incoming participation flux theorem, and signed pre-selection saturation are
installed.

It does not close the forward supplier problem by itself. The remaining
production theorem is one of:

```text
SourceCurrentAsTransportedParticipationDensity.A;
UniformTerminalCMParticipationEnvelope.A;
NoIncomingParticipationFlux.A;
TerminalSignedSaturation.A / TwoTowerDonorDepletion.A.
```
