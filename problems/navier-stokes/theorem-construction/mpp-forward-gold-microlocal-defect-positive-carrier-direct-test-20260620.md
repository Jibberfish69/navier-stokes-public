---
theorem_id: forward-gold-microlocal-defect-positive-carrier-direct-test-20260620
status: direct-microlocal-defect-test-complete-not-proved
logical_landing_node: microlocal_defect_positive_carrier
edge_effect: "Tests whether H-measure / Young-measure / microlocal defect visibility upgrades signed compensated cancellation into endpoint uniform integrability or square reserve on the selected positive carrier. It does not. A divergence-free high-frequency polarization measure can sit in the expanding eigendirection of a trace-free strain, satisfy the microlocal incompressibility constraint, and still carry an endpoint positive carrier atom."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compensated-cancellation-positive-carrier-no-upgrade-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-profile-decoupling-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-oriented-varifold-no-hidden-cancellation-attempt-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-spreading-branch-closeout-20260620.md
downstream_consequence: "Microlocal defect measures are useful visibility objects, but they do not supply the forward-gold anti-atom theorem. To become spendable they still need endpoint trace tightness, polar saturation on the selected carrier, same-carrier source-square control, strict no-waste, or a rigidity theorem that consumes the produced defect."
---

# MPP Forward-Gold Microlocal Defect Positive Carrier Direct Test

Date: 2026-06-20

## Status

Direct microlocal-defect test complete.  The theorem is not proved from current
inputs.

H-measures, Young measures, or related microlocal defect measures can see the
oscillation/concentration defect.  Seeing the defect is not the same as paying
the selected positive terminal carrier.

## 1. Target

The hoped-for route is:

```math
\boxed{
\text{divergence-free microlocal defect structure}
\Longrightarrow
\text{selected positive carrier has endpoint UI or square reserve.}
}
\tag{MDP.1}
```

For a terminal packet in normalized variables, the selected carrier is

```math
a_m(s)
=
\int_{B_1}
\left[
\left\langle
\Sigma_m(s,y)W_m(s,y),W_m(s,y)
\right\rangle
\right]_+dy.
\tag{MDP.2}
```

The anti-atom target is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0.
\tag{MDP.3}
```

The microlocal question is whether the extra polarization constraint for
divergence-free high-frequency packets forces `(MDP.3)`.

## 2. Divergence-free polarized endpoint model

Let the low strain be the trace-free expanding/compressing matrix

```math
S_0=\operatorname{diag}(2,-1,-1).
\tag{MDP.4}
```

Choose wave direction \(\xi=e_2\) and velocity polarization \(p=e_1\).  Then

```math
\xi\cdot p=0,
\tag{MDP.5}
```

so the principal high-frequency packet is divergence-free.

Let \(\psi\in C_c^\infty(B_1)\) and let \(N_m\to\infty\).  On the terminal
time layer \((-\tau_m,0]\), define

```math
W_m(s,y)
=
\tau_m^{-3/10}\psi(y)e_1\cos(N_my_2)\,
{\bf 1}_{(-\tau_m,0]}(s).
\tag{MDP.6}
```

The leading oscillation has wave vector \(e_2\) and polarization \(e_1\).
The divergence error from the cutoff is lower-order and belongs to the usual
packet/cutoff correction ledger; the principal microlocal constraint `(MDP.5)`
is exact.

Let

```math
\Sigma_m(s,y)
=
\tau_m^{-2/5}\sigma(y)S_0{\bf 1}_{(-\tau_m,0]}(s)
\tag{MDP.7}
```

with nonnegative \(\sigma\in C_c^\infty(B_1)\).

The critical factor bounds have the endpoint scale:

```math
\int_{-1}^{0}\int_{B_1}|\Sigma_m|^{5/2}\,dy\,ds=O(1),
\tag{MDP.8}
```

and

```math
\int_{-1}^{0}\int_{B_1}|W_m|^{10/3}\,dy\,ds=O(1).
\tag{MDP.9}
```

The selected carrier is

```math
a_m(s)
=
2\tau_m^{-1}
\int_{B_1}\sigma(y)\psi(y)^2\cos^2(N_my_2)\,dy\,
{\bf 1}_{(-\tau_m,0]}(s).
\tag{MDP.10}
```

Along a subsequence,

```math
\int_{B_1}\sigma\psi^2\cos^2(N_my_2)\,dy
\longrightarrow
{1\over2}\int_{B_1}\sigma\psi^2\,dy
=c_0>0.
\tag{MDP.11}
```

Thus

```math
a_m(s)
\rightharpoonup
2c_0\,\delta_{s=0}
\quad\text{as measures in time,}
\tag{MDP.12}
```

and `(MDP.3)` fails.

## 3. What the microlocal defect records

The oscillation defect measure of \(W_m\) records a positive rank-one
polarization:

```math
\mu_{osc}
\sim
{1\over2}\psi(y)^2\,e_1\otimes e_1
\otimes \delta_{\xi=e_2}.
\tag{MDP.13}
```

It satisfies the incompressibility support constraint:

```math
\xi\cdot e_1=0.
\tag{MDP.14}
```

The selected strain reading against this defect is positive:

```math
\operatorname{tr}\left(S_0\,e_1\otimes e_1\right)=2.
\tag{MDP.15}
```

So the microlocal defect does not contradict the selected carrier.  It
faithfully displays it.

That is the point: microlocal compactness converts oscillation into a positive
defect measure, but it does not force that measure to spread away from
\(s=0\), and it does not supply a square budget for the selected terminal
family.

## 4. Why this is sharper than signed compensated compactness

Signed compensated compactness can say that certain signed products converge
well under div-curl structure.  The microlocal version keeps the missing
oscillation as a measure instead of losing it.

That helps visibility, but the forward-gold theorem needs payment:

```math
\text{positive microlocal defect at }s=0
\quad\Longrightarrow\quad
\text{legal cost, endpoint UI, or rigidity contradiction.}
\tag{MDP.16}
```

The H-measure itself gives only the left side.  It does not supply the arrow in
`(MDP.16)`.

The same failure appeared in the oriented-varifold audit: keeping the paired
fiber measure \(W_x\) is stronger than keeping only the signed first moment,
but no-hidden-cancellation follows only after polar saturation or another
one-sided terminal theorem is added.

## 5. Exact reduction

Microlocal defect compactness gives a usable visibility package:

```math
\boxed{
\text{terminal selected oscillation/concentration}
\Longrightarrow
\text{positive microlocal defect measure.}
}
\tag{MDP.17}
```

It does not give the needed forward-gold supplier:

```math
\boxed{
\text{positive microlocal defect measure}
\not\Longrightarrow
\text{endpoint UI or unweighted selected square reserve}
}
\tag{MDP.18}
```

without one of:

```math
\begin{gathered}
\text{SelectedCarrierEndpointUI.A},\\
\text{PolarSaturationOnSelectedCarrier.A},\\
\text{SourceSquareReserve.A plus carrier domination},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{or a rigidity theorem for the produced microlocal defect.}
\end{gathered}
\tag{MDP.19}
```

## Verdict

The microlocal defect route is a better microscope, not a payment theorem from
current inputs.

It can preserve the divergence-free oscillation and show the selected positive
terminal defect as a positive measure.  It does not make that measure
endpoint-uniformly integrable, polar-saturated, square-summable, or impossible.
The branch returns to `UnweightedTerminalCriticalActionReserve.A` on the actual
selected positive carrier, or to a future rigid-defect Liouville theorem after
exact defect production.
