---
ns_viewer:
  theorem_id: lower-prefix-active-square-global-drain-direct-test-20260611
  status: failed-direct-first-moment-drain-does-not-control-active-square-payment
  proof_role: forward_positive_far_corona_lpas_direct_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests the drain-versus-local-accumulation idea at the exact far-corona blocker. The global energy law supplies a first-moment dissipation ledger, but LPAS asks for a lower-prefix weighted active-square payment. In the heat-scale pulse model, the active-square cost contains the factor 2^j times the square of the delivered amount while the first moment stays finite. Thus the route needs a genuine amplitude, pulse-thickness, or cumulative-tail stress theorem; global drain alone does not prove the far-corona payment bound."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/lifted-packet-closure-result.md
    - problems/navier-stokes/theorem-construction/far-corona-cumulative-tail-stress-theorem.md
    - problems/navier-stokes/theorem-construction/lower-prefix-active-square-theorem.md
    - problems/navier-stokes/theorem-construction/mpp-volterra-selected-lower-prefix-active-square-payment-direct-attempt-20260609.md
  downstream_consequence: "The forward-positive cone/payment route is now narrowed to active-shell amplitude normalization, terminal pulse-thickness control, direct CTS/FCTS/Car, or direct LPAS. Same-scale and moving-boundary pieces may be carried on the weighted carrier surface, but the far-corona active-square wall remains the noncircular payment theorem."
---

# MPP Lower-Prefix Active-Square Global-Drain Direct Test

Date: 2026-06-11

Status: forward-positive direct test. This note tests whether the global drain
ledger can pay the far-corona lower-prefix active-square theorem.

## 0. Target

The lifted packet has already been reduced to:

```text
upper boundary
+ moving spill
+ far corona.
```

The same-scale side is on the weighted carrier surface. The remaining far
corona can be closed by the continuum stress theorems

```text
CTS / FCTS / Car
```

or by the dyadic fallback theorem:

```text
LPAS.
```

Write

```text
E_j(t) := 2^(2j)||Delta_j u(t)||_2^2,
D_j(t) := 2^(4j)||Delta_j u(t)||_2^2,
P_j^down(t) := sum_{k<=j-C_1} E_k(t).
```

The LPAS target is

```text
int_0^T sum_{j>=N}
  P_j^down(t) 2^(-j) D_j(t)^2 dt
<=
epsilon nu int_0^T D_N(t)dt
+ C_*2^(-2 delta N).
```

This is the exact place where the drain-versus-local-accumulation idea must
become a quantitative theorem.

## 1. What The Global Drain Law Supplies

The energy identity supplies a first-moment dissipation ledger:

```text
nu int_0^T ||grad u(t)||_2^2 dt <= E_0.
```

On dyadic tails this gives first-moment control of

```text
int_0^T D_N(t) dt.
```

It says the field spends a finite total amount through the dissipation ledger.

It does not by itself say that an active shell cannot spend that amount in a
short, high-amplitude pulse.

LPAS asks for a square-amplitude payment:

```text
int P_j^down 2^(-j) D_j^2 dt.
```

That is a different kind of bill.

## 2. Heat-Scale Pulse Test

Fix one active shell `j` and a heat-scale time window

```text
c_h2^(-2j) <= |I_j| <= C_h2^(-2j).
```

Assume the active shell carries a constant model load

```text
E_j(t)=A_j
```

on `I_j`. Then

```text
D_j(t) = 2^(2j)E_j(t) = 2^(2j)A_j.
```

The first-moment dissipation cost is

```text
int_{I_j} D_j(t)dt
>= c_h A_j,
\qquad
int_{I_j} D_j(t)dt
<= C_h A_j.
```

So the drain ledger sees only the delivered amount `A_j`.

The LPAS square cost is

```text
int_{I_j} 2^(-j)D_j(t)^2 dt
>= c_h 2^j A_j^2,
\qquad
int_{I_j} 2^(-j)D_j(t)^2 dt
<= C_h 2^j A_j^2.
```

With a lower-prefix weight `P_j^down(t)>=P>0`, the contribution is

```text
>= P c_h 2^j A_j^2.
```

Thus a heat-scale pulse can have first-moment drain `A_j` while its active-square
payment is `P 2^j A_j^2`.

For fixed nonzero `A_j` and `P`, this square payment grows with the shell
index. The first-moment drain does not control it.

## 3. Why Fast Collapse Is The Dangerous Case

The same point can be written without assuming a constant pulse.

Let

```text
M_j := int_{I_j} D_j(t)dt.
```

By Cauchy-Schwarz,

```text
int_{I_j} D_j(t)^2 dt >= M_j^2 / |I_j|.
```

Therefore

```text
int_{I_j} 2^(-j)D_j(t)^2 dt
>= 2^(-j) M_j^2 / |I_j|.
```

On a heat-scale interval `c_h2^(-2j) <= |I_j| <= C_h2^(-2j)`, this becomes

```text
int_{I_j} 2^(-j)D_j(t)^2 dt
>= C_h^(-1)2^j M_j^2.
```

So shortening the active time window makes the square bill worse. This is the
mathematical form of the fast-collapse danger:

```text
less time to drain globally,
but a larger active-square price for the same delivered amount.
```

Longer feeding spreads the square cost, but it also gives the global field more
time to dissipate. The proof cannot settle this tradeoff with the energy
identity alone. It needs a theorem relating the delivered amount `M_j`, the
active interval length `|I_j|`, and the lower-prefix stress weight
`P_j^down`.

## 4. What Would Be Needed To Pay LPAS

For LPAS to follow from the drain ledger on active windows, one would need an
estimate of the form

```text
P_j^down 2^(-j) M_j^2 / |I_j|
<=
epsilon M_j + summable_N.
```

Equivalently, on heat-scale windows,

```text
P_j^down 2^j M_j^2
<=
epsilon M_j + summable_N.
```

For nonzero `M_j`, this demands a real amplitude or thickness law:

```text
M_j <= C 2^(-j) / P_j^down
```

up to the allowed error terms.

That is not contained in the global energy law. It is an active-shell amplitude
normalization, a terminal pulse-thickness theorem, or a direct cumulative-tail
stress theorem.

## 5. Result

The direct theorem

```text
global drain + dyadic tail energy => LPAS
```

is not proved and is false as a first-moment argument.

The exact reason is:

```text
first-moment dissipation does not control square-amplitude active pulses.
```

So the forward-positive route has narrowed to one of these noncircular inputs:

```text
ActiveShellAmplitudeNormalization.A
```

Prove the active shell cannot carry heat-scale amount `M_j` unless
`M_j` is small enough to pay `P_j^down 2^j M_j^2`.

```text
TerminalPulseThickness.A
```

Prove the active packet must persist on a long enough time interval that its
square cost is spread and paid by the drain ledger.

```text
DirectCTSOrFCTS.A
```

Prove the continuum cumulative-tail stress theorem directly, without reducing
to the dyadic active-square pulse.

```text
DirectLPAS.A
```

Prove the lower-prefix active-square theorem by a mechanism stronger than
energy, Volterra selection, or the currently installed upper-tail queue.

This is the current forward-positive wall. Same-scale edge packets and moving
boundary pieces have been reduced to the weighted carrier surface. The far
corona still needs a theorem that controls active-square concentration, not
just total drain.
