---
theorem_id: forward-gold-same-carrier-endpoint-trace-lp-reserve-direct-attempt-20260621
status: direct-attempt-complete-reduces-to-temporal-trace-regularity-or-reverse-holder-producer
logical_landing_node: same_carrier_endpoint_trace_lp_reserve
edge_effect: "Attacks Thomas's sharpened minimal gold producer SameCarrierEndpointTraceLpReserve.A. The consumer step is exact: a same-carrier bound sup_m ||[H_m]_+||_{L_s^p(-1,0)}<infinity for some p>1 gives a Hardy endpoint moment for every alpha<1-1/p and hence FullHodgeStokesEndpointNoJump.A after the weighted legal/sign/selector/geometry endpoint measures are controlled. The direct production attempt does not close from the current four-body loop. The full-packet production identity directly pays the order-locked full-packet density h_sigma. It controls the local-energy endpoint trace H_m only after a same-carrier endpoint trace identification between h_sigma and the selected local-energy readout. Even with that identification, the available control is L_s^1 through capacity drop and payment measures, and finite L_s^1 control permits the terminal heat-scale pulse. The local energy trace bound gives L_s^p only after a reverse-Holder or normalized critical-density input for the collar quantities. The mixed derivative tower is the right way to try to get this smaller producer, but the installed tower normal form only gives exact factorial coupling and radius-spend bookkeeping; it does not yet control a positive fractional time-regularity norm of the endpoint trace. Therefore the new hard subproducer is FullPacketDensityEndpointTraceIdentification.A plus EndpointTraceTemporalTowerRegularity.A, or an equivalent TraceReverseHolder/SourceSquare/CriticalDensity theorem on the same retained full packet."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-reserve-producer-family-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-endpoint-nojump-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fullpacket-density-endpoint-trace-identification-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Same-Carrier Endpoint Trace Lp Reserve Direct Attempt

Date: 2026-06-21

## 0. Target

The sharpened minimal gold producer is:

```math
\boxed{
\texttt{SameCarrierEndpointTraceLpReserve.A}
}
\tag{ELP.1}
```

On every retained terminal heat-scale full packet, prove that the positive
endpoint trace density satisfies

```math
\boxed{
\sup_m\|[H_m]_+\|_{L_s^p(-1,0)}<\infty
\qquad\text{for some }p>1.
}
\tag{ELP.2}
```

This must be on the same retained full packet.  A bound for a different scalar,
a different selector, or a recombined carrier after losing the selected trace
does not prove `(ELP.2)`.

The legal, signed, selector, terminal, and geometry endpoint measures must also
have the corresponding weighted endpoint control.  This note focuses on the
main smooth full-packet trace \(H_m\).

## 1. Consumer step is exact

Let \(p'=p/(p-1)\).  Holder gives

```math
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds
\le
\|[H_m]_+\|_{L_s^p}
\left(
\int_{-1}^{0}(-s)^{-\alpha p'}\,ds
\right)^{1/p'}.
\tag{ELP.3}
```

The weight is integrable exactly when

```math
\alpha p'<1,
\qquad\text{equivalently}\qquad
0<\alpha<1-{1\over p}.
\tag{ELP.4}
```

Therefore `(ELP.2)` implies `TerminalHardyNoWaste.A` for every
\(\alpha<1-1/p\).  The endpoint Hardy note then gives
`FullHodgeStokesEndpointNoJump.A`, once the weighted legal/sign/selector/
terminal/geometry endpoint measures are controlled.

So `(ELP.2)` is exactly a producer theorem, not a new consumer.

## 2. Four-body payment gives L1, not Lp

The selected full-packet production step gives the distributional inequality

```math
[h_\sigma]_+\,dy\,ds\,d\sigma
+d\Phi_\sigma^{cap}
\le
d\mathfrak M_{vis}
+d\mathfrak M_{press}
+d\mathfrak M_{sel}
+d\mathfrak M_{sgn}
+d\mathfrak M_{term}
+d\mathfrak M_{legal}
+T_\sigma\,dy\,ds\,d\sigma .
\tag{ELP.5}
```

This statement is for the order-locked full-packet density \(h_\sigma\).  The
endpoint no-jump theorem uses the local-energy trace \(H_m(s)\):

```math
M_m(b)-M_m(a)+D_m(a,b)
=
\int_a^bH_m(s)\,ds+L_m(a,b).
\tag{ELP.5a}
```

So there is an additional same-carrier identification step:

```math
\boxed{
\texttt{FullPacketDensityEndpointTraceIdentification.A}
}
\tag{ELP.5b}
```

meaning that, on the retained local-energy test/cutoff/carrier, the positive
endpoint trace is controlled by the order-locked full-packet density plus legal
endpoint residues:

```math
[H_m(s)]_+
\le
C\int_{\text{retained carrier}}[h_m(s,y)]_+\,dy
+R_m^{trace/legal}(s).
\tag{ELP.5c}
```

This identification is natural when the selected full-packet test is exactly
the local-energy endpoint test.  It is not automatic for an arbitrary four-body
selector, and it must be retained as part of the same-carrier hypothesis.

The direct identification attempt now verifies the sharp form.  If the selected
test is the endpoint base test

```math
\varphi_m^E=\eta_m^2V_m,
\tag{ELP.5d}
```

then the full-packet expansion is exactly the local energy identity:

```math
H_m(s)
=
\int h_m^E(s,y)\,dy
+R_m^{trace/legal}(s),
\tag{ELP.5e}
```

after the storage derivative and nonnegative interior viscous loss are placed
on the capacity/drop side.  Therefore

```math
[H_m(s)]_+
\le
\int[h_m^E(s,y)]_+\,dy
+R_m^{trace/legal,+}(s).
\tag{ELP.5f}
```

For a general selected test \(\varphi_\sigma\), `(ELP.5e)` is false unless the
endpoint base test is retained or the mismatch is charged to
\(d\Lambda_{sel}\) or \(d\Lambda_{legal}\).

After `(ELP.5b)`--`(ELP.5c)`, integrating over the retained spatial carrier
gives an \(L_s^1\) bound for the positive endpoint trace against capacity drop
and payment measures:

```math
\int_{-1}^{0}[H_m(s)]_+\,ds
\le
C
\left(
\Phi_m^{cap}(-1)-\inf_s\Phi_m^{cap}(s)
+\mathfrak M_m^{full}((-1,0])
+\|T_m\|_{L^1_s}
\right).
\tag{ELP.6}
```

This is the four-body unweighted reserve at the \(L^1_s\) level.  It is not an
\(L_s^p\) reserve.

The model terminal pulse

```math
a_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{ELP.7}
```

has fixed \(L_s^1\) mass:

```math
\int_{-1}^{0}a_m(s)\,ds=a,
\tag{ELP.8}
```

but, for every \(p>1\),

```math
\|a_m\|_{L_s^p(-1,0)}
=
a\,\tau_m^{-(1-1/p)}
\to\infty .
\tag{ELP.9}
```

Thus the closed four-body loop does not by itself prove `(ELP.2)`.  It pays
total activity, but it does not prevent the activity from occupying a vanishing
terminal time thickness.

## 3. Local trace size reduces to reverse Holder on collar quantities

The full Hodge-Stokes endpoint note gives the local trace bound

```math
\begin{aligned}
[H_m(s)]_+
&\le
C_\eta
\int_{\operatorname{collar}(\eta_m)}
\left(
|V_m|^3+|Q_m|^{3/2}+|V_m|^2
\right)\,dy\\
&\quad
+\varepsilon\nu\int\eta_m^2|\nabla V_m|^2\,dy
+R_m^{legal}(s).
\end{aligned}
\tag{ELP.10}
```

Therefore `(ELP.2)` follows from same-carrier reverse-Holder estimates such as

```math
\left\|
\int_{\operatorname{collar}}
|V_m|^3\,dy
\right\|_{L_s^p}
+
\left\|
\int_{\operatorname{collar}}
|Q_m|^{3/2}\,dy
\right\|_{L_s^p}
+
\left\|
\int\eta_m^2|\nabla V_m|^2\,dy
\right\|_{L_s^p}
\le C
\tag{ELP.11}
```

for some \(p>1\), plus the corresponding legal endpoint bound.

The already-checked uniform normalized energy-pressure theorem is one
sufficient way to get this, with \(p=10/9\).  But current inputs do not supply
`(ELP.11)` directly.  The available physical energy and local energy inputs
give \(L_s^1\)-type control of the normalized critical densities, with the
terminal heat-scale pulse still allowed.

So the direct size estimate reduces the problem to:

```math
\boxed{
\texttt{TraceCriticalDensityReverseHolder.A}
}
\tag{ELP.12}
```

or an equivalent source-square, selected critical-strain, normalized CKN, or
strict no-waste theorem on the same retained full packet.

## 4. What the mixed tower could add

The terminal pulse in `(ELP.7)` is not only large in \(L_s^p\).  It also has
large time variation and large fractional time regularity cost.  For example,
its total variation is of size

```math
\operatorname{Var}(a_m)\sim a\,\tau_m^{-1},
\tag{ELP.13}
```

and its fractional \(W_s^{\beta,1}\) seminorm blows up for every
\(\beta>0\).

Thus a genuine temporal tower estimate would rule it out.  A clean sufficient
form is:

```math
\boxed{
\sup_m\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}<\infty
\qquad\text{for some }\beta>0.
}
\tag{ELP.14}
```

In one dimension,

```math
W^{\beta,1}(-1,0)
\hookrightarrow
L^p(-1,0)
\qquad
1<p<{1\over 1-\beta}.
\tag{ELP.15}
```

So `(ELP.14)` implies `(ELP.2)`.

This is the useful role of the mixed time-space tower here.  The tower should
not merely exist; it must control a positive temporal regularity norm of the
same endpoint trace density \(H_m\).  That would make the terminal pulse pay
through the time rung of the participation tower.

## 5. Current tower input is not enough

The installed mixed tower normal form gives the exact differentiated
Navier-Stokes law:

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha},
\tag{ELP.16}
```

with factorial weights absorbing the mixed time-space Leibniz coefficients.
It also gives the Body-I radius-spend identity:

```math
dL_S+dD_S^{rad}=dJ_{SQ}.
\tag{ELP.17}
```

But the Body-I note explicitly leaves open the domination of selected terminal
activity by tower radius spend:

```math
dA_{\rm sel}
\le
C\,dD_S^{rad}
+C\,dR_S.
\tag{ELP.18}
```

Moreover, the base rung has zero radius spend.  The endpoint trace \(H_m\) is
formed from base local energy, pressure flux, viscous cutoff, selector, and
legal terms.  To prove `(ELP.14)`, the tower must control the time variation of
that trace, not merely the formal derivatives of \(V\) and \(Q\) on a carrier.

The missing theorem is therefore:

```math
\boxed{
\texttt{EndpointTraceTemporalTowerRegularity.A}
}
\tag{ELP.19}
```

For some \(\beta>0\),

```math
\|[H_m]_+\|_{W_s^{\beta,1}}
\le
C
\left(
D_S^{rad}
+D_Q^w
+D_G
+R_{\rm legal}
\right),
\tag{ELP.20}
```

or a same-carrier lossless tower-rigidity alternative forcing
\([H_m]_+=0\) on the unpaid branch.

This is stronger than the current tower normal form and weaker than demanding
the full ungauged normalized local energy bound.

## 6. Result

The direct \(L_s^p\) route is the right smaller target, but it is not currently
proved from the installed four-body loop.

The exact current reduction is:

```math
\boxed{
\texttt{SameCarrierEndpointTraceLpReserve.A}
}
\tag{ELP.21}
```

is supplied by any one of:

```math
\boxed{
\texttt{FullPacketDensityEndpointTraceIdentification.A}
}
\tag{ELP.21a}
```

together with one of the temporal-thickness producers below:

```math
\boxed{
\texttt{TraceCriticalDensityReverseHolder.A}
}
\tag{ELP.22}
```

```math
\boxed{
\texttt{EndpointTraceTemporalTowerRegularity.A}
}
\tag{ELP.23}
```

```math
\boxed{
\texttt{SourceSquareReserve.A}
\quad\text{or}\quad
\texttt{SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\texttt{NormalizedCKNCarleson.A}
}
\tag{ELP.24}
```

all on the same retained full packet.

The new best tower-shaped target is `(ELP.19)`: prove that the coupled mixed
velocity-pressure-incompressibility tower controls a positive temporal
regularity norm of the endpoint trace.  Without that temporal regularity or an
equivalent reverse-Holder estimate, the terminal heat-scale pulse remains
compatible with the current \(L_s^1\) four-body payment.
