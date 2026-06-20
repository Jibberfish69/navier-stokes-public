# MPP Forward-Gold Critical Regularity Consumer Inversion Closeout

Date: 2026-06-20

## Status

Direct inversion test complete.

Endpoint \(L^\infty_tL^3_x\), Prodi--Serrin \(L^5_{t,x}\), CKN epsilon
regularity, and selected \(L^{5/2}_{t,x}\) strain control are valid regularity
consumers.  They do not produce the forward-gold unweighted terminal reserve
from the installed energy/local-energy/pressure/packet inputs.

The reason is exact: the known criteria run in the direction

```math
\text{bounded or small critical norm}
\Longrightarrow
\text{regularity}.
\tag{CRCI.1}
```

The heat-scale terminal pulse needs the reverse production statement

```math
\text{finite physical energy and local energy}
\Longrightarrow
\text{critical norm tail-small, summable, or uniformly integrable}.
\tag{CRCI.2}
```

That reverse statement is false by scaling unless an additional
Navier--Stokes mechanism supplies the missing unweighted reserve.

## 1. The amplitude split

Let \(V\in C_c^\infty((-1,0)\times B_1;\mathbb R^3)\) be divergence-free and
put

```math
u_j(t,x)
=
a_j r_j^{-1}
V\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\qquad
r_j\downarrow0.
\tag{CRCI.3}
```

This is not used as a Navier--Stokes solution construction.  It is the scaling
normal form every estimate in this branch must survive.

At one heat scale, the physical kinetic energy and gradient dissipation carry
the small factor \(r_j\):

```math
\|u_j(t)\|_{L^2(B_{r_j})}^2
\simeq
a_j^2 r_j,
\qquad
\int_{Q_j}|\nabla u_j|^2\,dxdt
\simeq
a_j^2 r_j.
\tag{CRCI.4}
```

The critical currencies do not carry that factor:

```math
\|u_j(t)\|_{L^3(B_{r_j})}^3
\simeq
a_j^3,
\tag{CRCI.5}
```

```math
{1\over r_j^2}
\int_{Q_j}
\left(|u_j|^3+|p_j|^{3/2}\right)\,dxdt
\simeq
a_j^3,
\tag{CRCI.6}
```

```math
\int_{Q_j}|u_j|^5\,dxdt
\simeq
a_j^5,
\qquad
\int_{Q_j}|\nabla u_j|^{5/2}\,dxdt
\simeq
a_j^{5/2}.
\tag{CRCI.7}
```

Thus the critical criteria see the amplitude \(a_j\), while the energy ledger
sees \(a_j^2r_j\).

## 2. Bounded amplitude is a consumer branch

If

```math
\sup_j a_j<\infty
\tag{CRCI.8}
```

and the proof has already produced a whole-object compactness/tail theorem,
then endpoint \(L^3\), Serrin, or CKN regularity can consume the branch.  In
that case the terminal object is a bounded critical element and the known
regularity theorem can be applied.

This requires the production theorem first:

```math
\text{compact same-solution terminal element}
+
\text{global critical-norm/tail control}
\Longrightarrow
\text{known regularity contradiction}.
\tag{CRCI.9}
```

The installed inputs do not produce the compact same-solution critical object
with global/tail control.  They produce selected local heat-scale packets.
Therefore bounded-amplitude regularity is a downstream consumer, not the
missing forward-gold reserve.

## 3. Unbounded amplitude is visible but not excluded by energy

Energy permits \(a_j\to\infty\) along a shrinking terminal stack.  For example,
with \(r_j=2^{-j}\) and

```math
a_j=r_j^{-1/4},
\tag{CRCI.10}
```

the physical cost remains summable:

```math
\sum_j a_j^2r_j
=
\sum_j r_j^{1/2}
<\infty.
\tag{CRCI.11}
```

The critical quantities diverge:

```math
a_j^3\to\infty,
\qquad
a_j^5\to\infty,
\qquad
a_j^{5/2}\to\infty.
\tag{CRCI.12}
```

This is exactly compatible with the contrapositive form of the known
regularity criteria:

```math
\text{singularity}
\Longrightarrow
\text{critical norm is not bounded/small}.
\tag{CRCI.13}
```

It does not give the forward-gold contradiction.  It gives a visible
critical-concentration branch.  In the CM-facing grammar, after same-solution
localization and retained Pack/Part are secured, that branch is a Field-type
readout rather than a proof that the heat-scale pulse cannot occur.

## 4. Why CKN and Serrin do not remove the radius discount

CKN epsilon regularity says that sufficiently small normalized critical
quantity on a cylinder implies regularity on a smaller cylinder.  Its
contrapositive gives only visibility:

```math
\text{singular terminal point}
\Longrightarrow
\limsup_{r\downarrow0}
{1\over r^2}
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
\ge
\varepsilon_{\rm CKN}.
\tag{CRCI.14}
```

For a dyadic terminal stack this is consistent with

```math
\sum_j
r_j^2
{1\over r_j^2}
\int_{Q_j}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
<\infty
\tag{CRCI.15}
```

and with

```math
\sum_j
{1\over r_j^2}
\int_{Q_j}
\left(|u|^3+|p|^{3/2}\right)\,dxdt
=\infty.
\tag{CRCI.16}
```

The first line is the physical cubic-pressure ledger.  The second line is the
unweighted reserve the forward-gold route needs.  CKN gives the lower bound
needed to see a bad point; it does not give the upper/tail summability needed
to forbid infinitely many terminal heat-scale packets at one point.

The same logic applies to Serrin \(L^5_{t,x}\).  A global \(L^5\) bound would
be a continuation-strength input.  Energy does not supply it, and the amplitude
split `(CRCI.10)` shows why.

## 5. Exact closure of this branch

Critical regularity criteria are still useful, but their role is now precise.

They close the bounded compact critical-element branch:

```math
\boxed{
\text{bounded compact critical element}
\Longrightarrow
\text{regularity contradiction}.
}
\tag{CRCI.17}
```

They identify the unbounded branch as visible critical concentration:

```math
\boxed{
\text{unbounded }L^3/\text{CKN}/L^5/L^{5/2}\text{ critical size}
\Longrightarrow
\text{retained critical-concentration readout}.
}
\tag{CRCI.18}
```

They do not install

```math
\boxed{
\text{finite physical energy}
\Longrightarrow
\text{unweighted terminal critical-action reserve}.
}
\tag{CRCI.19}
```

The remaining forward-gold object is unchanged and non-aliased:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{CRCI.20}
```

on the actual selected positive carrier, equivalently a same-carrier endpoint
UI/source-square/normalized CKN/selected critical-strain/strict no-waste or
rigid no-free-Zeno production theorem.

So this branch is exhausted as a forward-gold supplier.  Its useful output is
the amplitude split: bounded compact critical elements are known-criterion
consumers, while unbounded amplitude becomes a visible CM-facing critical
concentration readout rather than a hidden terminal source.
