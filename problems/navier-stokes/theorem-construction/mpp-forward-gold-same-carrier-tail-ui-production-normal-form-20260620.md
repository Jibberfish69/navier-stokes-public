# Same-Carrier Tail UI Production Normal Form

Date: 2026-06-20

## Status

Normal-form proof complete.  This note isolates the exact common production
content behind the endpoint \(p>1\), Orlicz, source-square, and Carleson
routes.

The common object is not finite \(L_s^1\) mass.  It is tail uniform
integrability of the actual selected positive carrier.

This note proves the consumer implication and records why current
Navier-Stokes inputs do not produce the tail theorem.

## 1. Selected carrier

For a selected terminal heat-scale packet, let

```math
a_m(s)\ge0,
\qquad
-1\le s\le0,
\tag{SCT.1}
```

be the normalized selected positive source marginal

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle S_{<j_m}^{loc}w_{j_m},w_{j_m}\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx .
\tag{SCT.2}
```

The endpoint no-jump theorem is

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
}
\tag{SCT.3}
```

The installed visibility gives only

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds<\infty.
\tag{SCT.4}
```

## 2. Tail UI theorem

Define the same-carrier tail condition:

```math
\boxed{
\lim_{K\to\infty}\sup_m
\int_{\{s:a_m(s)>K\}}a_m(s)\,ds
=0 .
}
\tag{SCT.5}
```

Call this `SameCarrierTailUI.A`.

It is a pure statement about the actual selected positive source carrier.  It
does not mention a nearby cubic density, parent square density, strain density,
or signed shadow unless that quantity has already been identified with
`a_m`.

## 3. Tail UI implies endpoint UI

Assume `(SCT.5)`.  For any \(K>0\) and any \(0<\theta<1\),

```math
\int_{-\theta}^{0}a_m(s)\,ds
\le
K\theta
+
\int_{\{s:a_m(s)>K\}}a_m(s)\,ds.
\tag{SCT.6}
```

Take the supremum over \(m\), then let \(m\) enter only through the supremum:

```math
\limsup_m\int_{-\theta}^{0}a_m(s)\,ds
\le
K\theta
+
\sup_m\int_{\{s:a_m(s)>K\}}a_m(s)\,ds.
\tag{SCT.7}
```

First choose \(K\) so the tail term is small by `(SCT.5)`.  Then choose
\(\theta\) so \(K\theta\) is small.  This proves `(SCT.3)`.

Thus

```math
\boxed{
\text{SameCarrierTailUI.A}
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
}
\tag{SCT.8}
```

## 4. Standard suppliers factor through tail UI

A same-carrier \(p>1\) bound implies `(SCT.5)`:

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds\le C_p
\quad\Longrightarrow\quad
\int_{\{a_m>K\}}a_m
\le
K^{1-p}C_p.
\tag{SCT.9}
```

A same-carrier Orlicz bound also implies `(SCT.5)`.  If \(\Phi\) is
superlinear and

```math
\sup_m\int_{-1}^{0}\Phi(a_m(s))\,ds\le C_\Phi,
\tag{SCT.10}
```

then for \(a_m>K\),

```math
a_m
\le
\left(\sup_{z\ge K}{z\over\Phi(z)}\right)\Phi(a_m).
\tag{SCT.11}
```

Since \(\Phi(z)/z\to\infty\), `(SCT.11)` gives `(SCT.5)`.

The source-square route factors through `(SCT.9)` only after same-carrier
domination is proved.  Namely, if

```math
a_m(s)\le C_\square G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2\,ds\le C_G,
\tag{SCT.12}
```

and \(\ell_m\) already has endpoint tail control, then `(SCT.5)` follows for
`a_m`.

So the exact production chain is

```math
\boxed{
\text{same-carrier }p>1\text{ / Orlicz / source-square domination}
\Longrightarrow
\text{SameCarrierTailUI.A}
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
}
\tag{SCT.13}
```

## 5. Sharp obstruction

The terminal layer

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{SCT.14}
```

satisfies `(SCT.4)` with mass one.  But for any fixed \(K\), once
\(\tau_m^{-1}>K\),

```math
\int_{\{a_m>K\}}a_m(s)\,ds=1.
\tag{SCT.15}
```

Hence

```math
\lim_{K\to\infty}\sup_m
\int_{\{a_m>K\}}a_m(s)\,ds
=1.
\tag{SCT.16}
```

The endpoint layer is therefore exactly a failure of same-carrier tail UI.

## 6. Why current inputs do not produce tail UI

Local energy gives a finite measure, and finite measures can have atoms.
Pressure is spatially elliptic on each time slice and does not spread terminal
time support.  Critical Holder factor bounds can saturate:

```math
\Sigma_m=\tau_m^{-2/5}\sigma(y)S_0{\bf 1}_{(-\tau_m,0]},
\qquad
W_m=\tau_m^{-3/10}\psi(y)e_1{\bf 1}_{(-\tau_m,0]},
\tag{SCT.17}
```

with \(S_0=\operatorname{diag}(2,-1,-1)\).  The critical factor norms remain
bounded while the product produces `(SCT.14)`.

Physical participation gives radius-weighted sums on a heat-scale Zeno
sequence:

```math
\sum_m r_m A_m^{ren}<\infty
\quad\text{or}\quad
\sum_m r_m^2 C_m^{ren}<\infty.
\tag{SCT.18}
```

It does not give the unweighted tail condition `(SCT.5)`.

Signed trilinear cancellation can pay finite partners and legal exits.  After
positive-part extraction, the infinite terminal Zeno chain can retain the
positive receiver side while the signed partner moves to the next packet.
Thus signed cancellation also does not produce `(SCT.5)` without terminal
signed saturation or no-free Zeno donor-chain control.

## 7. Exact route consequence

The endpoint production problem has the normal form

```math
\boxed{
\text{prove SameCarrierTailUI.A on }a_m.
}
\tag{SCT.19}
```

Equivalent concrete ways to prove it are:

```math
\begin{gathered}
\text{same-carrier }p>1\text{ or Orlicz control},\\
\text{source-square domination on the same carrier},\\
\text{selected critical-strain carrier nonconcentration},\\
\text{normalized CKN terminal strip tail control},\\
\text{strict rescaled no-waste with an unweighted action carrier},\\
\text{terminal signed saturation plus no-free Zeno donor chain}.
\end{gathered}
\tag{SCT.20}
```

Current inputs prove none of `(SCT.20)` on the actual selected carrier.

## Verdict

`SameCarrierTailUI.A` is the exact shared endpoint production target.  It is
stronger than finite normalized \(L_s^1\) visibility and weaker than choosing a
specific supplier such as \(p>1\), Orlicz, or source-square.

The forward-gold branch will close once `(SCT.5)` is proved for the selected
carrier.  Without `(SCT.5)`, the layer `(SCT.14)` remains a legitimate
forward-gold obstruction and is only consumed after same-witness CM admission.
