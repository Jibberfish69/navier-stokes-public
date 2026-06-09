# R3 Exterior Source Dyadic Escape To CM Face

Date: 2026-06-07

Status: theorem reduction installed; not whole-space `H^s` tail closure.

## Target

The current whole-space export target is

```text
R3.ExteriorNonlinearSourceHsLedger.A:
  lim_{R -> infinity} ExtSource_s(R,T_*) = 0.
```

The direct high-order route is circular when it spends
`int_0^{T_*} ||nabla u||_{L^\infty} dt`, global `H^s`, or an equivalent
continuation-grade coefficient. This note uses a different method. It asks what
must be true if the exterior nonlinear Duhamel source does not vanish.

## Setup

Let \(s>5/2\). Let \(\eta_R\) be an exterior cutoff. Let

```text
W_R(t)
 :=
 eta_R integral_0^t e^{nu(t-tau)Delta}
 P div(chi_{>=R/4} u tensor u)(tau) dtau.
```

Assume the already installed exterior energy tightness:

```text
lim_{R -> infinity} sup_{t<T_*} || eta_R u(t) ||_{L^2(R^3)} = 0.
```

Assume also that the exterior nonlinear source still carries high-order tail:

```text
limsup_{R -> infinity} sup_{t<T_*} || W_R(t) ||_{H^s(R^3)} >= epsilon > 0.
```

## Lemma: Low Frequencies Cannot Carry The Tail

For every fixed dyadic cutoff \(N_0\),

```text
lim_{R -> infinity} sup_{t<T_*}
|| P_{<=N_0} W_R(t) ||_{H^s} = 0.
```

### Proof

On bounded frequency,

```text
||P_{<=N_0} f||_{H^s} <= C_s N_0^s ||f||_{L^2}.
```

It remains to prove the corresponding \(L^2\) claim for the low-frequency
Duhamel response. Let

```text
F_R = chi_{>=R/4}(u tensor u).
```

After the compact-core source has been removed, \(F_R\) is the only source
seen by \(W_R\). On a fixed frequency band, Bernstein and boundedness of the
heat semigroup give

```text
||P_{<=N_0} e^{nu(t-tau)Delta} P div F_R(tau)||_2
  <= C_{N_0} ||F_R(tau)||_{L^{3/2}}.
```

Hence

```text
sup_{t<T_*} ||P_{<=N_0} W_R(t)||_2
  <= C_{N_0} ||F_R||_{L^1_t L^{3/2}_x([0,T_*) x R^3)}.
```

The energy class supplies

```text
u in L^\infty_t L^2_x cap L^2_t dot H^1_x,
```

and therefore \(u\in L^4_tL^3_x\) on every finite interval by interpolation.
For the exterior source,

```text
||F_R(t)||_{L^{3/2}}
  <= ||chi_{>=R/4}u(t)||_{L^3} ||u(t)||_{L^3}.
```

The second factor is in \(L^2_t\). The first factor tends to zero in
\(L^2_t\) as \(R\to\infty\), by dominated convergence applied to the
finite \(L^4_tL^3_x\) energy-class norm. Therefore

```text
||F_R||_{L^1_t L^{3/2}_x} -> 0.
```

Combining this with the fixed-band estimate gives

```text
lim_{R -> infinity} sup_{t<T_*}
||P_{<=N_0}W_R(t)||_2 = 0,
```

and the bounded-frequency \(H^s\) bound follows from the first displayed
estimate.

Thus bounded frequencies cannot produce the positive \(H^s\) limsup.

## Consequence: Any Survivor Is Dyadic Scale Escape

If the high-order exterior source tail survives, there are radii \(R_j\to
\infty\), times \(t_j<T_*\), and dyadic frequencies \(N_j\to+\infty\) such that

```text
N_j^s || P_{N_j} W_{R_j}(t_j) ||_{L^2} >= c_epsilon > 0.
```

Equivalently, the physical scale \(r_j=N_j^{-1}\) tends to zero.

This is no longer an ordinary far-field mass escape. Exterior `L^2` tightness
has removed that. The only surviving object is a high-frequency packet whose
physical radius collapses along the terminal approach.

## CM Landing

The dyadic survivor has two possible CM readings.

1. It has no positive same-fluid material carrier in the original variables.
   Then the Pack face fails:

```text
not Pack_Q.
```

2. A recentered/rescaled profile survives, but the original unscaled terminal
   readout has no single positive physical scale at which the field remains
   coherent. Then the Field face fails:

```text
forall r>0 not Field_{N,r,Q}.
```

In either case, the survivor is a Pack/Field face issue for the same terminal
object. It is not a silent `Member(Q)` branch and not a whole-space continuation
bridge.

## Installed Reduction

The R3 branch now has this sharper split:

```text
Exterior nonlinear-source Hs tail vanishes
  => Tail.Hs_R3 export input is supplied.

Exterior nonlinear-source Hs tail survives
  => the survivor is high-frequency dyadic scale escape
  => not Pack_Q or forall r>0 not Field_{N,r,Q}.
```

The note does not prove whole-space `H^s` tail tightness. It prevents the
remaining exterior source from being treated as an unspecified analytic fog. A
surviving exterior source must now enter the CM matrix as a scale-zero
Pack/Field face, or the positive tail theorem must be proved directly by a
new noncircular estimate.

## Noncircularity Boundary

The proof uses the energy-class interpolation
`L^\infty_t L^2_x cap L^2_t dot H^1_x -> L^4_t L^3_x`, fixed-frequency
Bernstein control, and the Duhamel split that already removed initial tail and
compact-core far-kernel tail. It does not use global `H^s`, BKM, or
continuation-grade Lipschitz integrability.
