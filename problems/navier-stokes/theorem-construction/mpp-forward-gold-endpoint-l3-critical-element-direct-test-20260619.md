# MPP Forward-Gold Endpoint L3 Critical-Element Direct Test

Date: 2026-06-19

## Status

Direct endpoint \(L^\infty_tL^3_x\) / Serrin-critical test complete.
Endpoint critical-norm criteria are useful consumers: they kill a terminal
critical element once the whole object is bounded in the critical norm.  They
do not supply the missing forward-gold reserve from energy/local-energy inputs.

The exact reason is that the heat-scale packet has a free amplitude parameter.
Bounded amplitude gives a compact \(L^3\)-bounded critical element, which is
regularity-consumable.  Growing amplitude gives visible \(L^3\)/CKN/Serrin
critical concentration while its physical energy and dissipation costs can
remain summable over a dyadic terminal stack.

## 1. Critical scaling with an amplitude parameter

Let \(V\in C_c^\infty((-1,0)\times B_1;\mathbb R^3)\) be divergence-free, and
set

```math
u_j(t,x)
=
a_j r_j^{-1}
V\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\qquad
r_j\downarrow0.
\tag{L3E.1}
```

At a fixed rescaled time \(s=(t-t_j)/r_j^2\),

```math
\|u_j(t)\|_{L^3(B_{r_j})}^3
=
a_j^3\|V(s)\|_{L^3(B_1)}^3.
\tag{L3E.2}
```

The local kinetic energy is only

```math
\|u_j(t)\|_{L^2(B_{r_j})}^2
=
a_j^2 r_j\|V(s)\|_{L^2(B_1)}^2.
\tag{L3E.3}
```

The heat-scale dissipation cost is also first-moment weighted:

```math
\int_{t_j-r_j^2}^{t_j}
\int_{B_{r_j}}
|\nabla_x u_j|^2\,dx\,dt
=
a_j^2 r_j
\int_{-1}^{0}\int_{B_1}|\nabla_yV|^2\,dy\,ds.
\tag{L3E.4}
```

The CKN cubic charge and Serrin \(L^5\) charge are unweighted in the packet
normalization:

```math
{1\over r_j^2}
\int_{Q_j}|u_j|^3\,dx\,dt
=
a_j^3
\int_{-1}^{0}\int_{B_1}|V|^3\,dy\,ds,
\tag{L3E.5}
```

and

```math
\int_{Q_j}|u_j|^5\,dx\,dt
=
a_j^5
\int_{-1}^{0}\int_{B_1}|V|^5\,dy\,ds.
\tag{L3E.6}
```

Thus \(a_j\) is the exact variable deciding whether the packet is a bounded
critical element or an unbounded critical-norm concentration.

## 2. Bounded-amplitude compact element is a consumer branch

If

```math
\sup_j a_j<\infty,
\tag{L3E.7}
```

and the entire terminal object is captured by one compact profile family with
no extra tails, then the \(L^3\) critical size of that object is bounded:

```math
\sup_{t<T}\|u(t)\|_{L^3_x}<\infty
\tag{L3E.8}
```

after the required global/tail localization hypotheses.

That is a regularity-consumer branch.  In the repo vocabulary, this is a
`KC.L3` placement, not a native source-square supplier.  It can kill a compact
critical element only after the proof has produced the hypotheses in
`(L3E.8)` for the whole same-solution object, not merely for one selected local
packet.

So endpoint \(L^3\) theory is useful for the zero-defect compact-element side:

```math
\text{compact terminal element}
+\text{ global critical }L^3\text{ bound}
\Longrightarrow
\text{regularity contradiction}.
\tag{L3E.9}
```

This is a consumer, not a source of the missing reserve.

## 3. Energy allows unbounded critical amplitude

Finite physical energy and finite physical dissipation do not force
`(L3E.7)`.  For a dyadic stack \(r_j=2^{-j}\), choose for example

```math
a_j=r_j^{-1/4}=2^{j/4}.
\tag{L3E.10}
```

Then the packet energy/dissipation cost is summable:

```math
a_j^2r_j
=
r_j^{1/2},
\qquad
\sum_j a_j^2r_j<\infty.
\tag{L3E.11}
```

But the scale-critical charges diverge:

```math
\|u_j(t)\|_{L^3(B_{r_j})}^3
\simeq
a_j^3
=
r_j^{-3/4}
\to\infty,
\tag{L3E.12}
```

```math
{1\over r_j^2}\int_{Q_j}|u_j|^3\,dx\,dt
\simeq
a_j^3
\to\infty,
\tag{L3E.13}
```

and

```math
\int_{Q_j}|u_j|^5\,dx\,dt
\simeq
a_j^5
=
r_j^{-5/4}
\to\infty.
\tag{L3E.14}
```

This is not a Navier-Stokes blowup construction.  It is the exact scaling
obstruction to deriving endpoint \(L^3\), CKN, or \(L^5\) upper control from
the physical energy ledger.  The same obstruction is already visible in the
source-square and normalized CKN notes: the physical budget sees
\(a_j^2r_j\), while the critical consumers see \(a_j^3\) or \(a_j^5\).

## 4. What the endpoint critical criteria really buy

Endpoint \(L^3\), Prodi-Serrin, and CKN epsilon regularity are all valid
regularity consumers.  Their logical use is:

```math
\text{critical norm bounded or small on the whole relevant object}
\Longrightarrow
\text{regularity}.
\tag{L3E.15}
```

The heat-scale pulse problem needs the reverse kind of estimate:

```math
\text{finite physical energy/local energy}
\Longrightarrow
\text{critical norm bounded, summable, or terminal-tail small}.
\tag{L3E.16}
```

The direct calculation above shows why `(L3E.16)` does not follow from the
current inputs.

Failure of `(L3E.16)` is not invisible.  It produces a retained critical-norm
concentration branch:

```math
\limsup_{j\to\infty}
\|u(t_j)\|_{L^3(B_{r_j})}
=\infty
\quad\text{or}\quad
\limsup_{j\to\infty}\mathcal C(Q_j)=\infty.
\tag{L3E.17}
```

After same-ledger localization and retained Pack/Part, this is exactly the
CM-facing critical \(L^3\) / Field-exit readout already recorded in the local
translator surfaces.  It is not a forward-gold contradiction.

## 5. Relation to the compact critical-element route

The critical-element architecture can use endpoint \(L^3\) only after it has
proved a stronger production theorem:

```math
\text{CriticalTerminalElementExtraction.A}
+\text{PositivePackDefectOrthogonality.A}
+\text{global/tail }L^3\text{ compactness}
\Longrightarrow
\sup_{t<T}\|u(t)\|_3<\infty
\tag{L3E.18}
```

or an equivalent no-waste statement that prevents all critical-norm mass from
escaping into tails, profile switching, terminal boundary defects, or unbounded
amplitude.

Current inputs produce local recurrent packets and local suitable limits.  They
do not produce `(L3E.18)`.  Without `(L3E.18)`, endpoint \(L^3\) regularity
remains a consumer waiting for a production theorem.

## Verdict

The endpoint \(L^3\) / Serrin-critical route closes only the bounded compact
critical-element subbranch:

```math
\boxed{
\text{bounded global critical element}
\Longrightarrow
\text{known critical-norm regularity contradiction}.
}
\tag{L3E.19}
```

It does not close the full heat-scale terminal pulse, because energy permits
unbounded critical amplitude with summable physical cost:

```math
\boxed{
\sum_j a_j^2r_j<\infty
\quad\text{can coexist with}\quad
a_j^3\to\infty.
}
\tag{L3E.20}
```

So this branch returns to the same exact gold suppliers:

```math
\boxed{
\text{UnweightedActionFinite.A / NormalizedCKNCarleson.A}
\quad\text{or}\quad
\text{SourceSquareReserve.A / SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\text{compact no-waste critical-element production with global }L^3\text{ control}.
}
\tag{L3E.21}
```

The useful conclusion is sharper than the generic no-go: endpoint \(L^3\)
regularity kills bounded compact critical elements, while the remaining enemy
must be a visible unbounded critical-norm/source-square branch rather than a
bounded hidden profile.
