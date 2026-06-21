# Selected Positive Cone Kernel Normal Form

Date: 2026-06-20

## Status

Reduction proof complete.  This does not prove
`SelectedPositivePolarSaturation.A`.  It rewrites that theorem as an exact
cone-kernel alternative.

The broad saturation phrase hides two different failures:

1. a nonzero selected positive carrier can lie in the null space of every
   same-shadow signed readout;
2. the normalized carrier can escape compactness through the terminal Zeno
   time face.

After legal exits, retained finite partners, and finite donor telescoping are
removed, these are the only algebraic ways the signed readout can fail to
control the selected positive carrier.

## 1. Abstract selected ledger

Let `E_N` be the finite selected terminal edge or packet ledger after installed
legal spill terms have been removed.  Let

```math
q_N:E_N\to\mathbb R
\tag{SPK.1}
```

be the signed local pre-Cauchy residue on that same ledger.  The native selected
positive carrier is

```math
M_N^+(q_N)
:=
\sum_{e\in E_N}[q_N(e)]_+ .
\tag{SPK.2}
```

Let

```math
L_N q_N
\tag{SPK.3}
```

be the usable same-shadow signed readout after the allowed projection, endpoint
test, mode test, local-energy defect, or stress-current map has been applied.
Let `||.||_N` denote the corresponding legal finite test norm or total-variation
norm.  The positive saturation target is

```math
M_N^+(q_N)
\le
C\|L_Nq_N\|_N+\operatorname{Legal}_N+o_N(1).
\tag{SPK.4}
```

This is the exact finite-ledger form of
`SelectedPositivePolarSaturation.A`.

## 2. Normalized kernel alternative

Assume `(SPK.4)` fails after legal terms are removed.  Then there is a sequence
with

```math
M_N^+(q_N)=1,
\qquad
\|L_Nq_N\|_N\to0.
\tag{SPK.5}
```

Indeed, divide the failing sequence by `M_N^+(q_N)`.  The legal remainder
vanishes along the failing subsequence because otherwise `(SPK.4)` is paid by
the legal ledger.

Conversely, any sequence satisfying `(SPK.5)` contradicts `(SPK.4)` for every
fixed constant `C`.  Thus

```math
\boxed{
\text{SelectedPositivePolarSaturation.A}
}
\tag{SPK.6}
```

is equivalent, at fixed legal class, to excluding normalized selected positive
carrier sequences whose same-shadow signed readout tends to zero.

Define this exact exclusion as

```math
\boxed{
\text{SelectedPositiveConeNoNullReadout.A}.
}
\tag{SPK.7}
```

Its content is

```math
M_N^+(q_N)=1
\quad\Longrightarrow\quad
\liminf_N\|L_Nq_N\|_N>0
\tag{SPK.8}
```

after legal exits and paid finite donor pieces are removed.

## 3. Compact form

When the normalized selected cone is compact in the topology seen by `L_N`, the
same statement becomes a literal kernel condition.

Let a subsequence converge to a limit `q` with

```math
M^+(q)=1.
\tag{SPK.9}
```

If `(SPK.5)` holds, continuity gives

```math
Lq=0.
\tag{SPK.10}
```

So compactness turns failure of saturation into a nonzero positive cone element
inside the readout kernel:

```math
q\in\ker L,
\qquad
M^+(q)=1.
\tag{SPK.11}
```

Conversely, any limit object satisfying `(SPK.11)` produces failing
approximants whenever it is realized by selected terminal ledgers.  Therefore,
under compact realization,

```math
\boxed{
\text{SelectedPositivePolarSaturation.A}
\Longleftrightarrow
\ker L\cap\{q:M^+(q)=1\}=\varnothing.
}
\tag{SPK.12}
```

This is the exact no-null form of the saturation theorem.

## 4. Why current inputs do not prove no-null readout

The two-sheet model is a kernel element.  Take two selected sheets with equal
positive amount:

```math
q_1=1,
\qquad
q_2=-1,
\tag{SPK.13}
```

and let the signed readout assemble them by addition:

```math
L(q_1,q_2)=q_1+q_2.
\tag{SPK.14}
```

Then

```math
M^+(q_1,q_2)=1,
\qquad
L(q_1,q_2)=0.
\tag{SPK.15}
```

The selected positive carrier survives, while the signed readout vanishes.
This is not a compactness failure.  It is a true positive-cone kernel.

Navier-Stokes legality can remove this model only by proving that the negative
sheet is retained as the same signed partner, paid by a legal exit, depleted by
a finite donor tree, or routed into a terminal Zeno/no-waste/profile branch.

## 5. Relation to terminal Zeno escape

There is a second way `(SPK.5)` can occur.  The normalized sequence may have no
compact same-shadow limit on the terminal ledger.  This is exactly the
terminal Zeno donor-chain/time-face atom:

```math
M_N^+(q_N)=1,
\qquad
\|L_Nq_N\|_N\to0,
\qquad
\text{no compact same-shadow limit before }s=0.
\tag{SPK.16}
```

That branch is not an algebraic kernel inside a fixed compact ledger.  It is
the moving terminal trace failure already isolated as

```math
\text{NoFreeTerminalZenoDonorChain.A}
\tag{SPK.17}
```

or as an equivalent source-square, strict no-waste, or exact Zeno profile
production theorem.

## 6. Compactness side equals endpoint UI

In the selected terminal heat-scale variables, `SelectedPositiveConeCompactness.A`
has the concrete endpoint form already tested as
`SelectedCarrierEndpointUI.A`.

For the normalized selected nonlegal carrier `a_m(s)>=0`, this is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{SPK.18}
```

This is the shortest strict statement that kills the terminal time-face pulse
on the actual selected positive carrier.  The weaker finite-mass statement

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds<\infty
\tag{SPK.19}
```

allows the endpoint layer

```math
a_m(s)=\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{SPK.20}
```

because

```math
\int_{-1}^{0}a_m(s)\,ds=1,
\qquad
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=1.
\tag{SPK.21}
```

Thus the compactness half of positive-cone saturation is not ordinary weak
compactness or finite measure mass.  It is endpoint uniform integrability of
the actual selected carrier, equivalently the moving-packet terminal strip
modulus after carrier identification.  Source-square, critical strain,
normalized CKN, and strict no-waste are production mechanisms for this same
endpoint modulus.

## 7. Exact reduction

The positive saturation theorem splits into a compact no-null theorem and a
terminal compactness theorem:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
+
\text{SelectedPositiveConeNoNullReadout.A}
\Longrightarrow
\text{SelectedPositivePolarSaturation.A}.
}
\tag{SPK.22}
```

Here `SelectedCarrierEndpointUI.A` is the concrete compactness/no-terminal-atom
form of `SelectedPositiveConeCompactness.A` for the actual selected carrier.

If compactness fails, the failure is the terminal Zeno/time-face branch:

```math
\boxed{
\neg\text{SelectedCarrierEndpointUI.A}
\Rightarrow
\text{NoFreeTerminalZenoDonorChain.A / strict no-waste / exact Zeno profile
production}.
}
\tag{SPK.23}
```

If compactness holds but no-null readout fails, the failure is a genuine
same-shadow cancellation kernel:

```math
\boxed{
\neg\text{SelectedPositiveConeNoNullReadout.A}
\Rightarrow
\exists q\ne0:
M^+(q)>0,\ Lq=0.
}
\tag{SPK.24}
```

That kernel must be removed by retained signed-partner saturation,
source-resolved native mode readout, same-carrier source-square control, or by a
CM Part/Field admission of the retained positive carrier.

## Verdict

`SelectedPositivePolarSaturation.A` is not one primitive theorem.

At the current forward-gold resolution it is exactly:

```math
\boxed{
\text{endpoint uniform integrability of the actual selected positive carrier}
}
\tag{SPK.25}
```

plus

```math
\boxed{
\text{no nonzero selected positive cone element in the same-shadow signed
readout kernel}.
}
\tag{SPK.26}
```

The first clause is the terminal Zeno/no-waste/time-face problem in its shortest
carrier form.  The second clause is the true same-shadow no-hidden-cancellation
problem.  Keeping these separate prevents signed visibility, endpoint readout
polarization, or formal mode separation from being misreported as positive
native carrier saturation.
