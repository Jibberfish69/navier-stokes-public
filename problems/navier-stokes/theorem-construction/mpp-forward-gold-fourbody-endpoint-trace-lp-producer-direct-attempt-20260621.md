---
theorem_id: forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621
status: direct-attempt-complete-core-reduces-to-trace-lp-coercivity-two-lines-open
logical_landing_node: fourbody_endpoint_trace_lp_producer_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-reserve-producer-family-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-storage-controls-normalized-terminal-packet-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# Four-Body Endpoint Trace Lp Producer Direct Attempt

Date: 2026-06-21

## 0. Target

Gold route target:

```math
\boxed{
\texttt{FourBodyEndpointTraceLpProducer.A}
}
```

On every retained same-carrier terminal heat-scale packet, prove that the positive endpoint trace density obeys

```math
\boxed{
\sup_m\|[H_m]_+\|_{L_s^p(-1,0)}<\infty
\quad\text{for some }p>1,
}
\tag{ETP.1}
```

with weighted endpoint control for the legal, signed, selector, terminal, and geometry measures.

Once `(ETP.1)` is proved, Hardy gives no-jump: for every

```math
0<\alpha<1-{1\over p},
```

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds<\infty,
```

hence

```math
\lim_{\theta\downarrow0}\limsup_m\mu_m((-\theta,0])=0.
```

Then the discarded-partner bridge gives

```math
A_{native}\le C A_{4B}+R_{legal}+T_\sigma,
```

and the closed four-body loop gives

```math
\int A_{native}<\infty.
```

## 1. Endpoint trace formula

For the normalized packet, the smooth local energy trace has the form

```math
\begin{aligned}
H_m(s)={}&
{1\over2}\int |V_m|^2\partial_s(\eta_m^2)\,dy
+\int \left({1\over2}|V_m|^2+Q_m\right)V_m\cdot\nabla(\eta_m^2)\,dy\\
&+\nu\int {1\over2}|V_m|^2\Delta(\eta_m^2)\,dy
+H_m^{sel}(s)+H_m^{sgn}(s)+H_m^{term}(s)+H_m^{legal}(s)+H_m^{geom}(s).
\end{aligned}
\tag{ETP.2}
```

The finite same-carrier full-packet decomposition splits pressure as

```math
Q_m=Q_m^{loc}+Q_m^H,
```

so

```math
H_m=H_m^{E}+H_m^{tr}+H_m^{p,loc}+H_m^{p,H}+H_m^{vis,cut}+H_m^{sel}+H_m^{sgn}+H_m^{term}+H_m^{legal}+H_m^{geom}.
\tag{ETP.3}
```

The target is to bound the positive part of each term in some common `L_s^p`, `p>1`, on the same carrier.

## 2. Gauge-fixed velocity trace terms

Let

```math
\overline V_m(s)=\langle V_m(s)\rangle_{\eta_m}
```

and

```math
U_m=V_m-\overline V_m.
```

Because the selected singular activity is Galilean invariant, the trace producer must be formulated in terms of `U_m`, plus explicit mean-mode cancellations in the collar terms. The exact splitting is

```math
|V_m|^2V_m
=|U_m|^2U_m
+\overline V_m |U_m|^2
+2(U_m\cdot\overline V_m)U_m
+2(U_m\cdot\overline V_m)\overline V_m
+|\overline V_m|^2U_m
+|\overline V_m|^2\overline V_m.
\tag{ETP.4}
```

The constant mode contributions are harmless only after one of two mechanisms is installed:

1. the cutoff/selected test is transported with the local Galilean mode so that constant-mode collar flux cancels in the order-locked full packet; or
2. the four-body storage is enlarged by the local mean-energy storage and its boundary flux is included in the endpoint trace measure.

Without one of these, a large constant mode can make the collar trace large while `A_4B`, `D_4B`, strain, source, and tower variation vanish. Therefore the first hard gold subline is:

```math
\boxed{
\texttt{GaugeFixedEndpointTraceCoercivity.A:}
\quad
\|[H_m^{E}+H_m^{tr}+H_m^{vis,cut}]_+\|_{L_s^p}
\le C\left(\|A_{4B,m}\|_{L_s^1}+\|D_{4B,m}\|_{L_s^1}+R_{legal,m}\right)
}
\tag{ETP.5}
```

for some `p>1`, with all Galilean mean terms cancelled or explicitly stored.

### Conditional proof under gauge-fixed energy-dissipation

Assume the gauge-fixed bound

```math
\sup_m
\left(
\|U_m\|_{L_s^\infty L_y^2}^2
+\|\nabla U_m\|_{L_{s,y}^2}^2
\right)<\infty.
\tag{ETP.6}
```

Then interpolation gives

```math
\|U_m\|_{L_{s,y}^{10/3}}^{10/3}
\le C.
\tag{ETP.7}
```

For the cubic collar trace

```math
F_m^U(s)=\int_{collar}|U_m(s,y)|^3\,dy,
```

Hölder in space and the energy interpolation give

```math
\|F_m^U\|_{L_s^{10/9}}\le C.
\tag{ETP.8}
```

The lower-order energy trace

```math
E_m^U(s)=\int_{collar}|U_m|^2\,dy
```

is bounded in `L_s^\infty`, hence in every finite `L_s^p`. The viscous cutoff term is controlled by

```math
\int |U_m||\nabla U_m||\nabla\eta_m|\,dy
\le \varepsilon\int\eta_m^2|\nabla U_m|^2\,dy+C_\varepsilon\int_{collar}|U_m|^2\,dy,
\tag{ETP.9}
```

so it is in `L_s^1 + L_s^\infty`; after the usual full-packet Young routing, the positive endpoint density is controlled by the `L_s^{10/9}` cubic term plus paid viscous loss. Thus under `(ETP.6)` the velocity part of `(ETP.1)` holds with `p=10/9`.

This proves the conditional implication:

```math
\boxed{
\texttt{GaugeFixedFourBodyStorageCoercivity.A}
\Longrightarrow
\text{velocity endpoint trace }L_s^{10/9}.
}
\tag{ETP.10}
```

It does not produce `(ETP.6)` from the existing `L_4B`; `(ETP.6)` is precisely the missing coercivity line.

## 3. Local pressure trace

For the local pressure part,

```math
-\Delta Q_m^{loc}=\partial_i\partial_j((V_m)_i(V_m)_j)
```

on the retained enlarged carrier. After Galilean quotient, only `U_m\otimes U_m` and legal mean/collar terms remain in the local pressure service. Calderon-Zygmund gives

```math
\|Q_m^{loc}\|_{L_{s,y}^{5/3}}\le C\|U_m\otimes U_m\|_{L_{s,y}^{5/3}}+R_{legal,m}.
\tag{ETP.11}
```

The pressure trace contribution is

```math
H_m^{p,loc}(s)=\int Q_m^{loc}V_m\cdot\nabla(\eta_m^2)\,dy.
```

After gauge transport/cancellation of the mean component, the retained term is bounded by

```math
|H_m^{p,loc}(s)|
\le C\|Q_m^{loc}(s)\|_{L_y^{3/2}(collar)}\|U_m(s)\|_{L_y^3(collar)}+R_{legal,m}(s).
\tag{ETP.12}
```

Using `(ETP.6)` and interpolation gives

```math
H_m^{p,loc}\in L_s^{10/9}(-1,0)
```

with a uniform bound. Thus the local pressure trace is conditionally produced by the same gauge-fixed energy-dissipation coercivity.

## 4. Harmonic pressure-memory trace

The harmonic part appears only as the collar trace

```math
H_m^{p,H}(s)=\int Q_m^H V_m\cdot\nabla(\eta_m^2)\,dy.
\tag{ETP.13}
```

Existing harmonic pressure notes route this term as collar/legal/terminal/selector loss. That routing is an `L_s^1` or measure statement. The Hardy producer requires `L_s^p`, `p>1`, for the positive part:

```math
\boxed{
\sup_m\|[H_m^{p,H}]_+\|_{L_s^p(-1,0)}<\infty
\quad\text{for some }p>1.
}
\tag{ETP.14}
```

This is the second hard gold subline:

```math
\boxed{
\texttt{HarmonicPressureMemoryTraceLpCoercivity.A}.}
\tag{ETP.15}
```

A sufficient formulation is

```math
\|Q_m^H\|_{L_s^aL_y^{3/2}(collar)}\|U_m\|_{L_s^bL_y^3(collar)}\le C,
\qquad {1\over p}={1\over a}+{1\over b}<1.
\tag{ETP.16}
```

Under `(ETP.6)`, one may take `U_m` in `L_s^{10/3}L_y^{10/3}` and restrict to `L_y^3` on the bounded collar. This leaves the needed harmonic pressure condition:

```math
Q_m^H\in L_s^aL_y^{3/2}(collar)
\quad\text{for some }a>{10\over7}
\tag{ETP.17}
```

so that `p>1` is available. Existing routing does not provide `(ETP.17)`.

Therefore the harmonic pressure trace remains a genuine gold-only producer, not a completed estimate.

## 5. Legal, signed, selector, terminal, and geometry measures

For the remaining endpoint measures, the Hardy producer requires weighted moments or an `L_s^p` density:

```math
\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_j(s)<\infty,
\qquad
\Lambda_j\in\{\Lambda_{legal},\Lambda_{sgn},\Lambda_{sel},\Lambda_{term},\Lambda_{geom}\}.
\tag{ETP.18}
```

For absolutely continuous densities this follows from `L_s^p`, `p>1`, exactly as for `[H_m]_+`. For singular measures it requires a true weighted endpoint moment. Finite mass is not enough.

Thus the endpoint reserve producer consists of:

```math
\boxed{
\begin{array}{ll}
(1)& \text{gauge-fixed velocity/local-pressure endpoint trace }L_s^p,\\
(2)& \text{harmonic pressure-memory trace }L_s^p,\\
(3)& \text{weighted endpoint moments for legal/sign/selector/terminal/geometry measures.}
\end{array}
}
\tag{ETP.19}
```

## 6. Result of the direct attempt

The direct attempt proves the conditional implication:

```math
\boxed{
\texttt{GaugeFixedFourBodyStorageCoercivity.A}
+
\texttt{HarmonicPressureMemoryTraceLpCoercivity.A}
+
\text{weighted endpoint measure moments}
\Longrightarrow
\texttt{FourBodyEndpointTraceLpProducer.A}.
}
\tag{ETP.20}
```

It also proves that the velocity and local-pressure pieces are not separate once gauge-fixed energy-dissipation is installed.

The current installed four-body storage does not yet prove `GaugeFixedFourBodyStorageCoercivity.A`, and the current harmonic-pressure routing does not yet prove `HarmonicPressureMemoryTraceLpCoercivity.A`.

Therefore the gold-only frontier is exactly:

```math
\boxed{
\text{produce gauge-fixed storage coercivity and harmonic pressure-memory trace }L_s^p.
}
\tag{ETP.21}
```

Once `(ETP.21)` is installed, Hardy no-jump follows, and the native bridge closes with

```math
\int A_{native}<\infty.
```