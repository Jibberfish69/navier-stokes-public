# MPP Forward-Gold Selected Carrier Endpoint Uniform Integrability Direct Test

Date: 2026-06-19

## Status

Direct production test complete; production does not close from current inputs.

The endpoint curve lemma already proves the consumer side:

```math
\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
\tag{SCEUI.1}
```

The live question is whether Navier--Stokes' native selected positive trilinear
carrier produces that endpoint uniform integrability by itself.

It does not from the installed inputs.  The current inputs see total normalized
source mass, signed stress/current cancellation, local energy visibility, and
physical participation cost.  They do not produce a super-\(L^1\), Orlicz,
source-square, critical-strain, CKN, or strict no-waste modulus for the actual
selected positive carrier.

## 1. The carrier to be tested

Let \(P_m\) be a selected terminal heat-scale packet with physical radius
\(r_m\downarrow0\), terminal time \(T\), and normalized time

```math
s={t-T\over r_m^2}\in[-1,0].
\tag{SCEUI.2}
```

The native selected positive trilinear carrier is

```math
\mathcal T_m^+
=
\int_{Q_m}
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+\,dxdt.
\tag{SCEUI.3}
```

Since \(S\sim r_m^{-2}\), \(w\sim r_m^{-1}\), and
\(dxdt\sim r_m^5\), the scale-invariant normalized source density is

```math
a_m(s)
:=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},w_{j_m}
\right\rangle
\right]_+
(T+r_m^2s,x)\,dx,
\qquad -1\le s\le0.
\tag{SCEUI.4}
```

Then

```math
{1\over r_m}\mathcal T_m^+
=
\int_{-1}^{0}a_m(s)\,ds.
\tag{SCEUI.5}
```

The terminal no-jump statement is

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
}
\tag{SCEUI.6}
```

Equivalently, the endpoint family \(\{a_m\}\) is uniformly integrable at
\(s=0\).

## 2. What current visibility gives

The current positive-carrier visibility package gives, at best,

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds\le C.
\tag{SCEUI.7}
```

This is finite normalized \(L_s^1\) mass.  It gives bounded variation of the
cumulative curves

```math
A_m(\theta)=\int_{-\theta}^{0}a_m(s)\,ds,
\tag{SCEUI.8}
```

but it does not give endpoint equicontinuity.

The exact enemy remains

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad \tau_m\downarrow0.
\tag{SCEUI.9}
```

It has

```math
\int_{-1}^{0}a_m(s)\,ds=1,
\tag{SCEUI.10}
```

while

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=1.
\tag{SCEUI.11}
```

So the current \(L^1\) visibility permits exactly the terminal time-face atom
that the forward-gold route needs to exclude.

## 3. Why trace-free strain and incompressibility do not produce the modulus

Write \(w_{j_m}=|w_{j_m}|e_m\).  Then the selected carrier density is

```math
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+
=
|w_{j_m}|^2
\left[e_m\cdot S_{<j_m}^{loc}e_m\right]_+.
\tag{SCEUI.12}
```

Trace-free strain gives

```math
\operatorname{tr}S_{<j_m}^{loc}=0,
\tag{SCEUI.13}
```

so an expanding direction is balanced by compressing directions in the signed
matrix.  That does not say the selected positive direction keeps its signed
partner inside the same packet, same projection, same lift, same cutoff, and
same terminal positive ledger.

Thus incompressibility gives signed redistribution, not endpoint uniform
integrability of \(a_m\).

## 4. Why local energy still gives only a measure, not a modulus

The local energy inequality sees the selected feed through the local balance,
but at the terminal face it gives a nonnegative defect measure.  A finite measure
can have an endpoint atom.

In the normalized packet variables, local energy can support

```math
\int_{-1}^{0}a_m(s)\,ds\le C,
\tag{SCEUI.14}
```

without improving it to

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds<\infty
\qquad(p>1),
\tag{SCEUI.15}
```

or to a de la Vallee-Poussin Orlicz condition.  The model `(SCEUI.9)` is the
standard finite-measure endpoint atom; no contradiction is visible at the
level of `(SCEUI.14)`.

## 5. Why pressure does not spread the endpoint pulse in time

Pressure is recovered at each time by an elliptic spatial equation,

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{SCEUI.16}
```

Calderon--Zygmund bounds control spatial norms on each time slice.  They do not
create a positive time modulus at the terminal endpoint.

A separated normalized profile

```math
U_m(s,y)=b_m(s)V(y),
\tag{SCEUI.17}
```

has pressure of the form

```math
P_m(s,y)=b_m(s)^2\Pi(y),
\tag{SCEUI.18}
```

up to the usual harmless harmonic/local pieces.  If \(b_m\) concentrates in
time, the pressure concentrates with it.  Spatial ellipticity does not turn
`(SCEUI.9)` into endpoint equicontinuity.

## 6. Why physical participation is discounted at heat scale

For a heat-scale packet

```math
u_m(t,x)=r_m^{-1}U\!\left({t-T\over r_m^2},{x-x_m\over r_m}\right),
\tag{SCEUI.19}
```

the physical energy and \(L^2\) dissipation costs are subcritical:

```math
\int_{B_{r_m}}|u_m|^2dx\sim r_m,
\qquad
\int_{Q_m}|\nabla u_m|^2dxdt\sim r_m.
\tag{SCEUI.20}
```

The normalized positive carrier can still be order one:

```math
{1\over r_m}\mathcal T_m^+\sim1.
\tag{SCEUI.21}
```

So physical participation controls only a discounted sum such as

```math
\sum_m r_m\,(\text{normalized carrier})_m.
\tag{SCEUI.22}
```

For a Zeno schedule \(\sum_m r_m<\infty\), this does not force the unweighted
normalized carriers to vanish, and it does not force the endpoint modulus
`(SCEUI.6)`.

## 7. Why signed trilinear cancellation does not recover the modulus

The full signed trilinear term has cancellations.  The selected native carrier
has already passed through localization, lifting, packet selection, projection,
and positive-part extraction.

Finite donor chains are paid by retained signed partners, legal exits, and
telescoping donor depletion.  The remaining obstruction is an infinite
heat-scale donor chain accumulating at the terminal face.  On that chain, the
positive receiver side can keep producing \(a_m\) while its signed partner is
shifted to the next smaller packet.

That is exactly the no-free-terminal-Zeno-donor-chain obstruction in carrier
language:

```math
\text{finite signed cancellation}
\not\Longrightarrow
\text{endpoint uniform integrability of }a_m.
\tag{SCEUI.23}
```

## 8. Exact sufficient upgrades

Any one of the following would prove `(SCEUI.6)`.

First, an \(L_s^p\) carrier estimate:

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds\le C_p,
\qquad p>1.
\tag{SCEUI.24}
```

Then Holder gives

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
C_p^{1/p}\theta^{1-1/p}.
\tag{SCEUI.25}
```

Second, a source-square domination on the same selected carrier:

```math
a_m(s)\le C_{\square}G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2ds\le C_G,
\tag{SCEUI.26}
```

with legal endpoint residue

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\ell_m(s)\,ds=0.
\tag{SCEUI.27}
```

Third, a selected cubic/CKN terminal modulus:

```math
a_m(s)\le
C_{\rm cub}\int_{B_1}
\left(|U_m|^3+|P_m-P_{m,h}|^{3/2}\right)dy+\ell_m(s),
\tag{SCEUI.28}
```

plus

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{B_1}
\left(|U_m|^3+|P_m-P_{m,h}|^{3/2}\right)dyds
=0.
\tag{SCEUI.29}
```

Fourth, a selected critical-strain carrier uniform-integrability theorem, for
example a same-carrier bound strong enough to make

```math
\int_{B_1}
|\Sigma_m^{loc}(s,y)|\,|W_m(s,y)|^2\,dy
\tag{SCEUI.30}
```

uniformly integrable in \(s\).

Fifth, a strict rescaled no-waste Lyapunov theorem:

```math
-{d\over ds}L_m(s)
\ge
c\,a_m(s)-\operatorname{legal}_m(s),
\qquad
L_m(s)\ge -C,
\tag{SCEUI.31}
```

with terminal legal modulus.  Then an endpoint atom would force a fixed drop in
\(L_m\) on arbitrarily small terminal intervals, contradicting the no-waste
bounded-below ledger.

## 9. Verdict

The selected-carrier endpoint route is now exact:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}
\Longrightarrow
\text{terminal anti-atom on the moving packet.}
}
\tag{SCEUI.32}
```

The direct production attempt from installed inputs fails:

```math
\boxed{
\text{energy/local energy/pressure/incompressibility/signed cancellation}
\not\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
}
\tag{SCEUI.33}
```

The remaining forward-gold production theorem must supply one actual
super-\(L^1\) or no-waste mechanism on the same positive selected carrier:

```math
\boxed{
\text{SourceSquareReserve.A + SelectedSourceSquareCarrierDomination.A}
}
\tag{SCEUI.34}
```

or

```math
\boxed{
\text{SelectedCriticalStrainCarrierUI.A / NormalizedCKNCarleson.A}
}
\tag{SCEUI.35}
```

or

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{SCEUI.36}
```

or the equivalent critical-element package that proves `(SCEUI.31)` for the
minimal terminal object.

