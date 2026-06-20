# Selected Positive Saturation Two-Obstruction Assembly

Date: 2026-06-20

## Status

Assembly proof complete.  This note proves the exact split for
`SelectedPositivePolarSaturation.A` after legal exits, retained finite signed
partners, and finite donor telescoping have been removed.

It does not prove the forward-gold theorem.  It proves that the remaining
failure of selected positive saturation has exactly two nonlegal forms:

1. an endpoint time-face atom on the actual selected carrier;
2. a compact same-shadow positive-cone kernel in the signed readout.

The first form is `SelectedCarrierEndpointUI.A`.  The second form is
`SelectedPositiveConeNoNullReadout.A`.

## 1. Unified selected carrier

Let `E_m` be the selected terminal packet ledger in normalized heat-time
variables

```math
s\in[-1,0].
\tag{SPA.1}
```

Let \(q_m(s,e)\) be the signed selected pre-Cauchy residue density on `E_m`
after paid legal pieces have been removed.  The selected positive carrier is

```math
d\mu_m^+(s,e)
:=
[q_m(s,e)]_+\,ds\,d\#(e).
\tag{SPA.2}
```

Its time marginal is

```math
a_m(s):=\sum_{e\in E_m}[q_m(s,e)]_+,
\qquad
\mu_m^+([-\theta,0]\times E_m)
=
\int_{-\theta}^{0}a_m(s)\,ds.
\tag{SPA.3}
```

Normalize the nonlegal branch by

```math
\mu_m^+([-1,0]\times E_m)=1.
\tag{SPA.4}
```

Let

```math
L_mq_m
\tag{SPA.5}
```

be the usable same-shadow signed readout on the same selected ledger.
`SelectedPositivePolarSaturation.A` is the estimate

```math
\mu_m^+([-1,0]\times E_m)
\le
C\|L_mq_m\|_m+Legal_m+o_m(1).
\tag{SPA.6}
```

After normalization and removal of paid pieces, failure of `(SPA.6)` is exactly

```math
\mu_m^+([-1,0]\times E_m)=1,
\qquad
\|L_mq_m\|_m\to0.
\tag{SPA.7}
```

## 2. First obstruction: endpoint time-face atom

`SelectedCarrierEndpointUI.A` is the endpoint modulus

```math
\lim_{\theta\downarrow0}\limsup_m
\mu_m^+([-\theta,0]\times E_m)
=0.
\tag{SPA.8}
```

Failure of `(SPA.8)` gives a terminal atom.  There are a subsequence and a
finite nonnegative weak-* limit \(\mu^+\) with

```math
\mu_m^+\stackrel{*}{\rightharpoonup}\mu^+,
\qquad
\mu^+(\{0\}\times E_\infty)>0.
\tag{SPA.9}
```

The scalar model is

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{SPA.10}
```

It satisfies finite normalized mass but violates `(SPA.8)`.

Thus endpoint compactness is not automatic from finite source mass, local
energy as a finite measure, pressure ellipticity, fixed viscosity over vanishing
time, or physical participation with heat-scale radius discount.

## 3. Second obstruction: compact same-shadow kernel

Assume `(SPA.8)` holds.  Then the positive mass cannot disappear into the
terminal endpoint.  Under the finite selected packet topology used by the
same-shadow readout, pass to a compact subsequential limit:

```math
\mu_m^+\stackrel{*}{\rightharpoonup}\mu^+,
\qquad
\mu^+([-1,0]\times E_\infty)=1.
\tag{SPA.11}
```

If `(SPA.7)` holds and the readout is continuous on this compact selected
ledger, then

```math
Lq=0,
\qquad
M^+(q)=1.
\tag{SPA.12}
```

This is exactly the failure of `SelectedPositiveConeNoNullReadout.A`:

```math
\ker L\cap\{q:M^+(q)=1\}\ne\varnothing.
\tag{SPA.13}
```

The finite algebra model is

```math
B(a_1,a_2)=a_1-a_2,
\qquad
A=(1,1),
\qquad
BA=0,
\qquad
\|A\|_{\ell^2}^2=2.
\tag{SPA.14}
```

The carrier model is

```math
q_1=1,
\qquad
q_2=-1,
\qquad
L(q_1,q_2)=q_1+q_2=0,
\qquad
M^+(q_1,q_2)=1.
\tag{SPA.15}
```

This obstruction is not a time-face compactness failure.  It is signed
same-shadow cancellation after positive selection.

## 4. Exact assembly theorem

The two clauses together give the exact forward-gold assembly:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
+
\text{SelectedPositiveConeNoNullReadout.A}
\Longrightarrow
\text{SelectedPositivePolarSaturation.A}.
}
\tag{SPA.16}
```

Proof.  Suppose `(SPA.16)` fails after legal terms are removed.  Normalize to
`(SPA.7)`.

If `(SPA.8)` fails, the first obstruction occurs: a nonzero endpoint atom is
present.

If `(SPA.8)` holds, compactness of the selected carrier gives a nonzero limit
with total positive mass one.  Continuity of the same-shadow readout and
`\|L_mq_m\|_m\to0` give `Lq=0`.  This is the second obstruction `(SPA.13)`.
`SelectedPositiveConeNoNullReadout.A` excludes it.

With both obstructions excluded, `(SPA.7)` is impossible.  Undoing the
normalization gives `(SPA.6)`.  This proves `(SPA.16)`.

## 5. What the theorem does not prove

The assembly theorem is exact, but it is not a new Navier-Stokes supplier.
Current inputs do not prove either production clause:

```math
\text{current inputs}
\not\Longrightarrow
\text{SelectedCarrierEndpointUI.A},
\tag{SPA.17}
```

and

```math
\text{current inputs}
\not\Longrightarrow
\text{SelectedPositiveConeNoNullReadout.A}.
\tag{SPA.18}
```

The endpoint clause needs a same-carrier \(p>1\), Orlicz, source-square,
critical-strain, normalized CKN, or strict no-waste modulus on the actual
selected positive carrier.

The no-null clause needs retained signed-partner saturation, a same-ledger
positive carrier fidelity theorem, same-carrier source-square/no-waste
domination, or a CM face consumption theorem for a surviving null positive
carrier.

## 6. CM-facing readout boundary

Failure of `SelectedCarrierEndpointUI.A` is already consumed after same-witness
CM admission by the selected-carrier service-certification theorem: the endpoint
atom violates the uniform `Part` or `Field` service modulus.

Failure of `SelectedPositiveConeNoNullReadout.A` is not the same object.  It is
a nonzero selected positive carrier with zero same-shadow signed readout.  To
consume that branch in CM, one must prove that a same-witness service survivor
cannot carry a positive selected source while every legal same-shadow signed
readout vanishes.  Equivalently, one needs service-level readout completeness on
the selected positive carrier, or else the branch must land as a `Part` source
participation failure or a `Field` one-readout coherence failure.

Thus the exact gold/CM boundary is:

```math
\boxed{
\begin{aligned}
&\text{forward gold: prove } \text{SelectedCarrierEndpointUI.A}
\text{ and } \text{SelectedPositiveConeNoNullReadout.A};\\
&\text{CM fallback: endpoint atom is consumed; compact no-null carrier still
needs same-witness readout-completeness consumption.}
\end{aligned}
}
\tag{SPA.19}
```

## Verdict

The selected positive saturation branch is now exhausted as an abstract
normal-form problem.  There is no third hidden mechanism after paid legal exits,
finite signed partners, and finite donor trees are removed.

What remains is production, not bookkeeping:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
}
\tag{SPA.20}
```

for the terminal time-face pulse, and

```math
\boxed{
\text{SelectedPositiveConeNoNullReadout.A}
}
\tag{SPA.21}
```

for the compact signed-readout cancellation kernel.
