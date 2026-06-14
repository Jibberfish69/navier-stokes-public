---
ns_viewer:
  theorem_id: direct-lpas-raw-active-square-false-shear-counterexample-20260611
  status: direct-lpas-raw-active-square-theorem-false
  proof_role: forward_positive_lpas_target_correction
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Proves that the raw DirectLPAS active-square theorem is too strong: an exact smooth Navier-Stokes shear solution with zero nonlinear source and pure heat decay violates the lower-prefix active-square bound at high frequency. The forward-positive target must be a residual/source-balanced LPAS after subtracting harmless linear heat decay and through-flow, not the raw D_j^2 bill."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/lower-prefix-active-square-theorem.md
    - problems/navier-stokes/theorem-construction/mpp-direct-lpas-cts-hardy-volterra-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-forward-positive-cone-tower-active-square-exhaustion-20260611.md
  downstream_consequence: "Do not try to prove unrenormalized DirectLPAS.A as a universal theorem. Replace it by the residual refill ledger in mpp-residual-refill-ledger-and-spine-consolidation-20260611.md: ResidualSourceBalancedLPAS.A or a continuum CTS/FCTS theorem whose active-square density has harmless heat-decay / through-flow pieces removed. The CM exit branch applies only to the surviving source-balanced terminal residual, not to harmless exact heat modes."
---

# MPP DirectLPAS Raw Active-Square False Shear Counterexample

Date: 2026-06-11

Status: direct counterexample to the raw active-square theorem.

## 0. Target

The raw dyadic target was

```math
\textbf{(LPAS)}
\qquad
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)\,
2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
```

with

```math
\mathcal P_j^\downarrow(t)
=
\sum_{k\le j-C_1}E_k(t),
```

and

```math
E_j(t)=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t)=2^{4j}\|\Delta_j u(t)\|_2^2.
```

This note tests whether the theorem can hold as a universal estimate for
smooth Navier-Stokes solutions.

It cannot.

## 1. Exact Smooth Shear Solution

Work on the periodic torus.  Let

```math
u(x,t)
=
\left[
a e^{-\nu 2^{2k}t}\sin(2^k x_2)
+
b e^{-\nu 2^{2j}t}\sin(2^j x_2)
\right]e_1,
```

with `j>>k` and `j>=N`.

This is divergence-free.  Since the velocity points in the `x_1` direction
and depends only on `x_2`,

```math
(u\cdot\nabla)u=u_1\partial_{x_1}u=0.
```

The pressure may be taken constant, and the Navier-Stokes equation reduces
exactly to the heat equation:

```math
\partial_t u-\nu\Delta u=0.
```

So this is an exact smooth unforced Navier-Stokes solution.  It has no
nonlinear source-balanced pulse.

## 2. The Lower Prefix Is Nonzero

For the high shell `j`, the low shell `k` lies in the lower prefix for
`j-k>C_1`.  Fix the Littlewood-Paley cutoff convention once. There is a
constant `c_P>0`, depending only on that cutoff and on the chosen terminal time
window, such that on the high heat time interval used below

```math
\mathcal P_j^\downarrow(t)
\ge
c_P2^{2k}a^2
=:P_0>0
```

This is the exact lower-prefix input used in the counterexample.

For the high shell there are cutoff constants `0<c_D<=C_D<infty` such that

```math
c_D2^{4j}b^2 e^{-2\nu2^{2j}t}
\le
D_j(t)
\le
C_D2^{4j}b^2 e^{-2\nu2^{2j}t}.
```

## 3. Raw LPAS Cost

The high shell contribution to the left side is bounded below by

```math
\int_0^\infty
P_0\,2^{-j}D_j(t)^2\,dt.
```

Substitute the exact heat-decay formula:

```math
\int_0^\infty
P_0\,2^{-j}
\left(c_D2^{4j}b^2 e^{-2\nu2^{2j}t}\right)^2
dt
=
P_0c_D^2\,2^{-j}2^{8j}b^4
\int_0^\infty e^{-4\nu2^{2j}t}dt.
```

Since

```math
\int_0^\infty e^{-4\nu2^{2j}t}dt
=
{1\over4\nu2^{2j}},
```

the raw active-square cost is

```math
\ge
{P_0c_D^2\over4\nu}\,2^{5j}b^4.
```

## 4. Drain Cost

The corresponding high-shell drain term on the right is only linear in
`D_j`:

```math
\nu\int_0^\infty D_j(t)\,dt
\le
\nu C_D
\int_0^\infty
2^{4j}b^2e^{-2\nu2^{2j}t}dt
=
{C_D\over2}2^{2j}b^2.
```

For the unlocalized sine mode this is the same heat integral:

```math
\nu\int_0^\infty
2^{4j}b^2e^{-2\nu2^{2j}t}dt
=
{1\over2}2^{2j}b^2.
```

So the ratio of raw LPAS cost to the drain cost is

```math
\ge
{P_0c_D^2\over 2\nu C_D}
2^{3j}b^2.
```

For any nonzero `a` and `b`, this ratio tends to infinity as `j\to\infty`.
The summable tail `C_*2^{-2\delta N}` cannot repair a high-frequency violation
of this size.

## 5. Conclusion

The raw theorem `(LPAS)` is false as a universal smooth Navier-Stokes estimate.
It fails on an exact heat-decaying shear solution with no nonlinear source.

This is the key correction:

```math
\boxed{
\text{active-square size alone is not the bad object.}
}
```

The bad object is active-square size that is being sustained by nonlinear
same-fluid source refill after harmless heat decay, through-flow, and already
paid linear dissipation have been removed.

## 6. Corrected Forward Target

The forward-positive target must be renormalized to a residual theorem, for
example:

```math
\boxed{
\text{ResidualSourceBalancedLPAS.A}
}
```

The residual refill ledger is defined in
`mpp-residual-refill-ledger-and-spine-consolidation-20260611.md`.

It should control only the active-square portion that remains after subtracting
the exact heat-decay contribution and other harmless transport/through-flow
pieces.

At the target-template level, the raw factor

```math
2^{-j}D_j(t)^2
```

must be replaced by a residual density such as

```math
\mathcal R_j^{src,+}(t),
```

where `\mathcal R_j^{src,+}` measures positive nonlinear refill of the active
shell against the lower-prefix field, not mere existence of a high-frequency
heat mode.

Then the correct pass-or-exit program is:

```math
\text{ResidualSourceBalancedLPAS.A}
\quad\vee\quad
\text{source-balanced terminal residual is a CM witness-face failure.}
```

The raw `DirectLPAS.A` name should no longer be used as the theorem to prove
unless it explicitly means this residual/source-balanced version.
