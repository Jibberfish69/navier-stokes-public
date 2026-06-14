---
ns_viewer:
  theorem_id: threshold-local-spill-collar-bound-direct-test-20260611
  status: failed-direct-energy-only-spill-bound-reduces-to-noncircular-high-tail-reserve
  proof_role: forward_positive_scale_barrier_spill_collar_direct_test
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Tests ThresholdLocalSpillCollarBound.A, the smaller child left after the vortex-stretching scale-barrier reduction. The collar is finite-width in frequency, but the direct estimate still produces a supercritical factor equivalent to requiring pointwise or stronger spacetime high-tail control. That control is the scale barrier being proved, so the direct spill route is circular without a new high-tail reserve."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-vortex-stretching-throttle-lyapunov-scale-barrier-reduction-20260611.md
    - problems/navier-stokes/theorem-construction/scale-spill-reduction-lemma.md
    - problems/navier-stokes/theorem-construction/scale-paraproduct-reduction-lemma.md
    - problems/navier-stokes/theorem-construction/scale-high-side-remainder-packet.md
  downstream_consequence: "The threshold-local spill collar is not an independent easy closure from energy alone. It requires either a noncircular high-tail reserve, a dynamic cutoff that keeps the collar absorbable, or a packet reorganization that moves the collar into an already paid stress-strain flux class."
---

# MPP ThresholdLocalSpillCollarBound.A Direct Test

Date: 2026-06-11

Status: forward-positive direct test. This note tests the threshold-local spill
collar left by the scale-barrier transport-defect reduction.

## 0. Target

The spill collar is created when the low transport coefficient is frozen at
the cutoff `N`.

Write

```text
b_N = (S_{N+M}-S_{N-4})u.
```

For each output shell `j>=N`, the spill terms are

```text
T_j^spill
= Delta_j((b_N dot grad)Delta_j u)
 + Delta_j((Delta_j u dot grad)b_N).
```

The desired theorem is

```text
int_0^T sum_{j>=N} |<T_j^spill, Delta_j u>| dt
<= C int_0^T L_N E_N dt
   + epsilon int_0^T D_N dt
   + C_*2^(-2 delta N).
```

The question is whether this follows from the energy surface and the finite
collar width alone.

## 1. Basic Collar Estimate

The natural pointwise bound is

```text
sum_{j>=N} |<T_j^spill, Delta_j u>|
<= C ||grad b_N||_infty E_N.
```

Since `b_N` only uses the finite collar `N-4 <= k <= N+M`,

```text
||grad b_N||_infty
<= C_M sum_{N-4<=k<=N+M} 2^(5k/2)||Delta_k u||_2.
```

Because the collar is inside the high tail,

```text
sum_{N-4<=k<=N+M} ||Delta_k u||_2^2 <= E_{N-4}.
```

Thus

```text
||grad b_N||_infty
<= C_M 2^(5N/2) E_{N-4}^{1/2}.
```

So the direct spill bound becomes

```text
|spill_N(t)|
<= C_M 2^(5N/2) E_{N-4}^{1/2} E_N.
```

Using

```text
E_N <= 2^(-2N)D_N
```

gives only

```text
|spill_N(t)|
<= C_M 2^(-N/2) E_{N-4}^{1/2} D_N.
```

This is absorbable only when the high-tail amplitude `E_{N-4}^{1/2}` is already
small enough pointwise, or when a stronger spacetime estimate replaces it.

That is exactly the scale-barrier information the argument is trying to prove.

## 2. Time-Integrated Attempt

Integrating the preceding bound gives

```text
int_0^T |spill_N(t)| dt
<= C_M 2^(-N/2) int_0^T E_{N-4}^{1/2}(t)D_N(t) dt.
```

The available energy surface gives

```text
int_0^T D_N(t) dt < infinity.
```

It does not give

```text
sup_t E_{N-4}(t) << 1,
```

nor

```text
int_0^T E_{N-4}(t)D_N(t) dt < infinity
```

with a summable `N`-gain.

Using `sup_t E_{N-4}` would be circular, because the scale-barrier tail theorem
is the mechanism meant to produce high-tail smallness. Using Cauchy-Schwarz
instead asks for `D_N in L_t^2`, which is not available from the baseline
energy law.

## 3. Output-Shell Absorption Does Not Remove The Whole Collar

For output shells far above the threshold, viscosity wins:

```text
||grad b_N||_infty ||Delta_j u||_2^2
<= epsilon 2^(2j)||Delta_j u||_2^2
```

once `2^(2j)` dominates the collar coefficient.

The problem is the threshold and intermediate output range. There the finite
collar coefficient can be too large to absorb by the `j`-shell viscosity
without again using a high-tail smallness statement.

So "finite collar width" is not enough. It localizes the debt, but it does not
pay the debt.

## 4. Result

The direct theorem

```text
ThresholdLocalSpillCollarBound.A
```

is not proved from the current energy/enstrophy surface.

The failed direct route is:

```text
finite frequency collar + energy
  => absorbable spill estimate.
```

The exact remaining options are:

```text
ThresholdSpillHighTailReserve.A
```

Prove a noncircular pointwise or mixed spacetime high-tail reserve strong
enough to make

```text
2^(-N/2)E_{N-4}^{1/2}D_N
```

absorbable or summable.

```text
ThresholdSpillDynamicCutoff.A
```

Choose a dynamic threshold so the collar stays below the viscous absorption
scale without importing the final tail conclusion.

```text
ThresholdSpillFluxReorganization.A
```

Move the collar into a signed or mesoscopic stress-strain flux class where it
is paid together with the lifted middle-band packet.

This is the honest state of the smaller scale-barrier child. The collar is
smaller than the lifted high-side flux, but it is not closed by basic energy
bookkeeping.
