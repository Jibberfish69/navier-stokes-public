---
ns_viewer:
  theorem_id: forward-gold-same-carrier-coefficient-square-budget-direct-test-20260620
  status: direct-test-complete-not-independent-supplier
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests the same-carrier coefficient-square budget left open after the extremal coefficient throttle and strict heat-clock gap tests. Bare coefficient square is radius-discounted and summable on heat-clock equality windows. Scale-critical coefficient square is precisely selected critical-strain / normalized CKN Carleson control. Source-weighted coefficient square is the missing unweighted selected source-square reserve itself. Thus SameCarrierCoefficientSquareBudget.A is not an installed independent supplier."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-coefficient-throttle-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-heat-clock-gap-eigenframe-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-coefficient-throttle-direct-test-20260619.md
  downstream_consequence: "Do not use SameCarrierCoefficientSquareBudget.A as a new branch unless the statement specifies which square currency is meant. The bare currency is too weak; the scale-critical currency is SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A; the source-weighted currency is UnweightedTerminalCriticalActionReserve.A or SourceSquareReserve.A plus carrier domination."
---

# MPP Forward-Gold Same-Carrier Coefficient-Square Budget Direct Test

Date: 2026-06-20

## Status

Direct test complete.

`SameCarrierCoefficientSquareBudget.A` is not currently installed as an
independent forward-gold supplier.  Once its possible meanings are separated,
each one either is too weak, is an already open critical-strain/CKN supplier, or
is the missing selected source-square reserve itself.

The same heat-clock equality packet that defeats strict coefficient throttling
also defeats bare coefficient-square accounting.

## 1. Same-carrier shell normal form

Let

```math
\lambda=2^j,\qquad r=\lambda^{-1},
\qquad I_\lambda=(T-\lambda^{-2},T].
\tag{SCB.1}
```

On the selected packet, write the shell energy, dissipation, positive
coefficient, and positive selected carrier as

```math
E(t)=\|w_j(t)\|_2^2,\qquad
D(t)=\lambda^2E(t),
\tag{SCB.2}
```

```math
\alpha_+(t,x)
=
\left[e_j(t,x)\cdot S^{loc}_{<j}(t,x)e_j(t,x)\right]_+,
\tag{SCB.3}
```

and, after localization to the selected carrier,

```math
\Pi^+(t)=\int_{B_r}\alpha_+(t,x)|w_j(t,x)|^2\,dx.
\tag{SCB.4}
```

The heat-clock equality case has

```math
c_\alpha\nu\lambda^2
\le
\alpha_+(t,x)
\le
C_\alpha\nu\lambda^2
\quad\text{on }I_\lambda\times B_r,
\qquad
0<c_\alpha\le C_\alpha<\infty,
\tag{SCB.5}
```

and

```math
c_E\lambda^{-3/2}
\le
E(t)
\le
C_E\lambda^{-3/2},
\qquad
c_\Pi\nu\lambda^{1/2}
\le
\Pi^+(t)
\le
C_\Pi\nu\lambda^{1/2},
\tag{SCB.6}
```

Therefore the selected carrier has vanishing linear residence,

```math
c_\Pi\nu\lambda^{-3/2}
\le
\int_{I_\lambda}\Pi^+(t)\,dt
\le
C_\Pi\nu\lambda^{-3/2}
\to0,
\tag{SCB.7}
```

while its unweighted square reserve remains bounded above and below by fixed
positive constants:

```math
c_\Pi^2\nu^2
\le
\int_{I_\lambda}\lambda\bigl(\Pi^+(t)\bigr)^2\,dt
\le
C_\Pi^2\nu^2.
\tag{SCB.8}
```

That is the exact terminal heat-scale pulse.

## 2. Bare coefficient square is radius-discounted

The first possible meaning of a coefficient-square budget is the bare localized
coefficient bill

```math
\mathcal C_{bare}(\lambda)
:=
\int_{I_\lambda}\int_{B_r}\alpha_+(t,x)^2\,dxdt.
\tag{SCB.9}
```

Using `(SCB.5)` and \(|B_r|=C_B\lambda^{-3}\),

```math
c_\alpha^2 C_B\nu^2\lambda^{-1}
\le
\mathcal C_{bare}(\lambda)
\le
C_\alpha^2 C_B\nu^2\lambda^{-1}.
\tag{SCB.10}
```

Along a dyadic Zeno chain \(\sum_k\lambda_k^{-1}<\infty\).  Thus the bare
coefficient-square bill can be finite even while every generation carries the
fixed positive selected square reserve `(SCB.8)`.

So the bare square budget does not imply endpoint uniform integrability, source
residence, or unweighted selected action reserve.

## 3. Scale-critical coefficient square is CKN/critical-strain control

The second possible meaning is the scale-critical coefficient bill

```math
\mathcal C_{crit}(\lambda)
:=
\lambda
\int_{I_\lambda}\int_{B_r}\alpha_+(t,x)^2\,dxdt.
\tag{SCB.11}
```

For the heat-clock equality packet,

```math
c_\alpha^2 C_B\nu^2
\le
\mathcal C_{crit}(\lambda)
\le
C_\alpha^2 C_B\nu^2.
\tag{SCB.12}
```

This would charge each terminal heat-clock pulse by a fixed amount.  If one had
a finite Carleson bound for the selected scale-critical coefficient square over
all terminal selected packets, then an infinite fixed-positive Zeno recurrence would
be impossible.

But `(SCB.11)` is exactly the selected critical-strain / normalized CKN type
currency:

```math
\lambda\int_{I_\lambda}\int_{B_r}|S^{loc}_{<j}|^2\,dxdt.
\tag{SCB.13}
```

The current energy inequality gives only

```math
\nu\int_0^T\int_{\mathbb R^3}|\nabla u|^2\,dxdt<\infty,
\tag{SCB.14}
```

with no terminal Carleson factor \(\lambda\) on selected heat-scale packets.
So the scale-critical coefficient-square route is not a new proof; it is the
already isolated supplier

```math
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A}.
\tag{SCB.15}
```

## 4. Source-weighted coefficient square is the target itself

The third possible meaning is the square of the actual selected positive
carrier:

```math
\mathcal C_{src}(\lambda)
:=
\int_{I_\lambda}\lambda\bigl(\Pi^+(t)\bigr)^2\,dt
=
\int_{I_\lambda}
\lambda
\left(
\int_{B_r}\alpha_+(t,x)|w_j(t,x)|^2\,dx
\right)^2
dt.
\tag{SCB.16}
```

This is the right same-carrier square strength.  It is also exactly the open
object:

```math
\mathcal C_{src}
=
\text{UnweightedTerminalCriticalActionReserve.A}
\tag{SCB.17}
```

once the selected positive native carrier has been identified.  If one phrases
it as source-square rather than action reserve, the bridge needed is still

```math
\text{SourceSquareReserve.A}
+
\text{SelectedSourceSquareCarrierDomination.A}.
\tag{SCB.18}
```

Thus the source-weighted coefficient-square budget is not an independent
supplier.  It is the missing theorem under another name.

## 5. Consequence

The candidate `SameCarrierCoefficientSquareBudget.A` has no fourth useful
meaning at the current proof resolution:

```math
\boxed{
\begin{array}{rcl}
\text{bare coefficient square} &\Rightarrow& \text{radius-discounted, too weak},\\[2mm]
\text{scale-critical coefficient square} &\equiv&
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A},\\[2mm]
\text{source-weighted coefficient square} &\equiv&
\text{UnweightedTerminalCriticalActionReserve.A}.
\end{array}
}
\tag{SCB.19}
```

Therefore

```math
\boxed{
\text{SameCarrierCoefficientSquareBudget.A is not an installed independent
forward-gold supplier.}
}
\tag{SCB.20}
```

The live forward-gold wall remains square-strength heat-scale payment on the
actual selected positive carrier.  The non-aliased suppliers are still:

```math
\boxed{
\begin{gathered}
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A},\\
\text{SourceSquareReserve.A + SelectedSourceSquareCarrierDomination.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{SelectedPositivePolarSaturation.A + NoFreeTerminalZenoDonorChain.A},\\
\text{or UnweightedTerminalCriticalActionReserve.A itself.}
\end{gathered}
}
\tag{SCB.21}
```

## Verdict

The coefficient-square continuation is exhausted as a separate shortcut.
Bare coefficient square does not see the terminal heat-scale pulse strongly
enough.  Scale-critical coefficient square is the CKN/critical-strain branch.
Source-weighted coefficient square is the missing same-carrier reserve itself.

So this route does not close forward gold; it removes one more alias from the
frontier and returns to the actual heat-scale payment theorem.
