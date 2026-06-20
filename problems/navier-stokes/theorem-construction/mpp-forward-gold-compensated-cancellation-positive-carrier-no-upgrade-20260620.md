# MPP Forward-Gold Compensated Cancellation Positive Carrier No-Upgrade Test

Date: 2026-06-20

## Status

Direct cancellation upgrade test complete.  Trace-free strain, local
incompressibility, and signed compensated-compactness structure do not by
themselves upgrade the selected positive carrier from finite \(L_s^1\) mass to
endpoint uniform integrability.

The obstruction is sharper than the scalar Holder-saturation model.  The same
terminal time-face atom can be carried by a trace-free expanding strain
direction, with the compressing directions discarded by the selected
positive-part carrier.

## 1. Carrier under test

The selected normalized carrier is

```math
a_m(s)
=
\int_{B_1}
\left[
\left\langle
\Sigma_m(s,y)W_m(s,y),W_m(s,y)
\right\rangle
\right]_+
dy,
\qquad -1\le s\le0.
\tag{CCPC.1}
```

The endpoint no-jump target is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{CCPC.2}
```

The question tested here is whether `(CCPC.2)` follows from the extra algebraic
information

```math
\operatorname{tr}\Sigma_m=0,
\tag{CCPC.3}
```

plus the signed cancellation or compensated-compactness structure attached to
incompressible flow.

## 2. Trace-free aligned endpoint atom

Let

```math
S_0=\operatorname{diag}(2,-1,-1),
\qquad e=e_1.
\tag{CCPC.4}
```

Then

```math
\operatorname{tr}S_0=0,
\qquad
\left[e\cdot S_0e\right]_+=2.
\tag{CCPC.5}
```

Fix nonnegative \(\sigma,\psi\in C_c^\infty(B_1)\) with

```math
\int_{B_1}\sigma^{5/2}\,dy=1,
\qquad
\int_{B_1}\psi^{10/3}\,dy=1,
\qquad
\int_{B_1}\sigma\psi^2\,dy=c_0>0.
\tag{CCPC.6}
```

For \(\tau_m\downarrow0\), define

```math
\Sigma_m(s,y)
=
\tau_m^{-2/5}\sigma(y)S_0\,{\bf 1}_{(-\tau_m,0]}(s),
\tag{CCPC.7}
```

and

```math
W_m(s,y)
=
\tau_m^{-3/10}\psi(y)e\,{\bf 1}_{(-\tau_m,0]}(s).
\tag{CCPC.8}
```

The trace-free constraint is exact:

```math
\operatorname{tr}\Sigma_m(s,y)=0.
\tag{CCPC.9}
```

The critical factor bounds remain fixed, up to the harmless constant
\(|S_0|^{5/2}\):

```math
\int_{-1}^{0}\int_{B_1}|\Sigma_m|^{5/2}\,dy\,ds
=
|S_0|^{5/2},
\tag{CCPC.10}
```

and

```math
\int_{-1}^{0}\int_{B_1}|W_m|^{10/3}\,dy\,ds
=1.
\tag{CCPC.11}
```

But the selected positive carrier is still the endpoint atom

```math
a_m(s)
=
2c_0\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s).
\tag{CCPC.12}
```

Thus

```math
\int_{-1}^{0}a_m(s)\,ds=2c_0,
\tag{CCPC.13}
```

while

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=2c_0.
\tag{CCPC.14}
```

So trace-free critical factor control does not imply endpoint uniform
integrability of the selected positive carrier.

## 3. Local incompressibility does not change the obstruction

The matrix \(S_0\) is not just trace-free algebra.  It is locally compatible
with incompressibility: the linear field

```math
u_0(y)=S_0y
\tag{CCPC.15}
```

satisfies

```math
\nabla\cdot u_0=\operatorname{tr}S_0=0,
\qquad
{1\over2}\left(\nabla u_0+\nabla u_0^T\right)=S_0.
\tag{CCPC.16}
```

Cutting this field off inside a packet produces boundary and commutator terms.
Those terms belong to the separate cutoff/collar ledgers, not to the algebraic
cancellation mechanism being tested here.  They do not alter the local point:
incompressibility balances expansion by compression in the full signed tensor,
while the selected carrier can keep the expanding direction and discard the
compressing directions.

This note is not asserting that `(CCPC.7)`--`(CCPC.8)` is a Navier--Stokes
solution.  It is a normal-form countermodel to the proposed estimate that would
derive `(CCPC.2)` from trace-free structure, incompressibility, or signed
compensation alone.

## 4. Why div-curl compensation does not upgrade the selected carrier

A div-curl or compensated-compactness theorem can improve signed products of
the schematic form

```math
\int \phi\,
\left\langle \Sigma_m W_m,W_m\right\rangle\,dy\,ds.
\tag{CCPC.17}
```

The selected route instead needs control of

```math
\int \phi\,
\left[
\left\langle \Sigma_m W_m,W_m\right\rangle
\right]_+\,dy\,ds.
\tag{CCPC.18}
```

The passage from `(CCPC.17)` to `(CCPC.18)` is exactly where signed
cancellation is lost.  In the model above, the negative trace-free partners
live in the \(e_2,e_3\) directions, but the active packet chooses \(e_1\).  The
full signed tensor still balances, while the selected positive scalar does not.

Thus compensated compactness can only become useful here after an additional
theorem retains the negative partner in the same terminal ledger or forces
selected polar saturation.  Without that extra theorem, it supplies signed
visibility, not a terminal no-jump modulus.

## 5. Proof effect

The following implication is false as a functional/cancellation estimate:

```math
\boxed{
\begin{aligned}
&\operatorname{tr}\Sigma_m=0,\quad
\Sigma_m\text{ has critical }L^{5/2}_{s,y}\text{ control},\\
&W_m\text{ has critical }L^{10/3}_{s,y}\text{ control},\\
&\text{and only signed div-curl / incompressible cancellation is used}
\\
&\Longrightarrow
\{a_m\}\text{ is endpoint-uniformly integrable at }s=0.
\end{aligned}
}
\tag{CCPC.19}
```

The remaining supplier must add a genuinely one-sided mechanism on the same
selected carrier:

```math
\begin{gathered}
\text{same-carrier source-square/product control},\\
\text{selected positive polar saturation with retained signed partners},\\
\text{strict exponent slack or same-layer tail depletion},\\
\text{strict rescaled no-waste Lyapunov control},\\
\text{or equivalent critical-element rigidity.}
\end{gathered}
\tag{CCPC.20}
```

## Verdict

Trace-free incompressibility and signed compensated cancellation do not remove
the terminal selected-positive time-face atom.  They identify where the missing
negative partner lives; they do not force that partner to remain inside the
same selected positive terminal carrier.
