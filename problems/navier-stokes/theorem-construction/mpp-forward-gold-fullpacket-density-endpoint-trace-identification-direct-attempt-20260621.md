---
theorem_id: forward-gold-fullpacket-density-endpoint-trace-identification-direct-attempt-20260621
status: exact-for-base-local-energy-endpoint-selector-general-selector-mismatch-routes-to-selector-legal-defect
logical_landing_node: fullpacket_density_endpoint_trace_identification
edge_effect: "Tests FullPacketDensityEndpointTraceIdentification.A after the corrected gold route distinction h_sigma -> H_m. The theorem is exact on the endpoint base local-energy selector: when the selected full-packet density is formed by pairing the retained full Hodge-Stokes packet with phi_m^E=eta_m^2 V_m on the same cutoff/carrier, the expansion is precisely the local energy identity, so H_m(s) is the spatial integral of the base full-packet density up to storage/drop placement, nonnegative dissipation, and trace/legal residues. Therefore [H_m]_+ <= int [h_m^E]_+ dy + R_m^{trace/legal,+}. The theorem is false for an arbitrary four-body selected test varphi_sigma; if the active selector does not retain the endpoint base test, the difference is a selector/admissibility/legal mismatch, not hidden trace control. Thus the first half of the minimal gold producer closes only on endpoint-base-selected same-carrier packets. The remaining no-jump producer is SameCarrierEndpointTraceLpReserve.A / EndpointTraceTemporalTowerRegularity.A or an equivalent reverse-Holder/source-square/critical-density reserve."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-endpoint-nojump-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-selected-full-packet-identification-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-endpoint-trace-lp-reserve-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full-Packet Density Endpoint Trace Identification Direct Attempt

Date: 2026-06-21

## 0. Corrected target

The four-body loop pays the order-locked selected full-packet density
\(h_\sigma\).  The endpoint Hardy consumer needs the scalar local-energy trace
\(H_m(s)\).

So the missing bridge is not:

```math
h_\sigma=H_m .
\tag{FDE.1-false}
```

The correct bridge is:

```math
\boxed{
\text{base local-energy full-packet density}
\longrightarrow
\text{endpoint scalar trace}.
}
\tag{FDE.1}
```

That bridge is exact only after fixing the same endpoint test and carrier.

## 1. Endpoint base selector

On a retained heat-scale packet, write

```math
\partial_sV_m+(V_m\cdot\nabla)V_m+\nabla Q_m-\nu\Delta V_m=0,
\qquad
\nabla\cdot V_m=0.
\tag{FDE.2}
```

Let \(\eta_m\) be the retained cutoff from the endpoint no-jump note.  The base
endpoint local-energy test is

```math
\boxed{
\varphi_m^E=\eta_m^2V_m .
}
\tag{FDE.3}
```

Define \(h_m^E(s,y)\) as the order-locked full-packet scalar obtained by
pairing the retained full Hodge-Stokes packet with this exact test:

```math
h_m^E
=
\left\langle
T_m+N_m+P_m+V_m^{vis}+I_m+L_m+S_m,
\varphi_m^E
\right\rangle_y ,
\tag{FDE.4}
```

where \(T,N,P,V^{vis},I,L,S\) denote the time, transport, pressure, viscous,
incompressibility, localization/legal, and selector/sign/terminal records.
The superscript \(E\) marks that the scalar is tied to the endpoint
local-energy test, not to an arbitrary four-body selected test.

## 2. Exact expansion

Pair `(FDE.2)` with \(\eta_m^2V_m\).  The time term gives

```math
\int \eta_m^2V_m\cdot\partial_sV_m\,dy
=
{d\over ds}
\left(
{1\over2}\int\eta_m^2|V_m|^2\,dy
\right)
-
{1\over2}\int |V_m|^2\partial_s(\eta_m^2)\,dy .
\tag{FDE.5}
```

The transport term gives, by incompressibility,

```math
\int\eta_m^2V_m\cdot(V_m\cdot\nabla)V_m\,dy
=
-{1\over2}\int |V_m|^2V_m\cdot\nabla(\eta_m^2)\,dy .
\tag{FDE.6}
```

The pressure term gives

```math
\int\eta_m^2V_m\cdot\nabla Q_m\,dy
=
-\int Q_mV_m\cdot\nabla(\eta_m^2)\,dy .
\tag{FDE.7}
```

The viscous term gives

```math
-\nu\int\eta_m^2V_m\cdot\Delta V_m\,dy
=
\nu\int\eta_m^2|\nabla V_m|^2\,dy
-{\nu\over2}\int |V_m|^2\Delta(\eta_m^2)\,dy .
\tag{FDE.8}
```

Combining `(FDE.5)`--`(FDE.8)` yields

```math
{d\over ds}M_m(s)+D_m(s)
=
H_m(s)+R_m^{trace/legal}(s),
\tag{FDE.9}
```

with

```math
M_m(s)={1\over2}\int\eta_m^2|V_m|^2\,dy,
\qquad
D_m(s)=\nu\int\eta_m^2|\nabla V_m|^2\,dy,
\tag{FDE.10}
```

and

```math
\begin{aligned}
H_m(s)
&=
{1\over2}\int |V_m|^2\partial_s(\eta_m^2)\,dy\\
&\quad+
\int
\left({1\over2}|V_m|^2+Q_m\right)
V_m\cdot\nabla(\eta_m^2)\,dy\\
&\quad+
{\nu\over2}\int |V_m|^2\Delta(\eta_m^2)\,dy .
\end{aligned}
\tag{FDE.11}
```

The term \(R_m^{trace/legal}\) contains exactly the extra retained packet
records not present in the displayed smooth calculation: selector motion,
collar changes, terminal trace bookkeeping, sign records, and legal tail
terms.

Thus, for the endpoint base selector,

```math
\boxed{
H_m(s)
=
\int h_m^E(s,y)\,dy
+R_m^{trace/legal}(s)
}
\tag{FDE.12}
```

after moving the storage derivative and the nonnegative interior viscous loss
to the capacity/drop side of the four-body payment.

## 3. Positive part

From `(FDE.12)` and \([a+b]_+\le [a]_+ + [b]_+\),

```math
\boxed{
[H_m(s)]_+
\le
\int [h_m^E(s,y)]_+\,dy
+R_m^{trace/legal,+}(s).
}
\tag{FDE.13}
```

This is the desired endpoint trace identification.  It is exact at the
same-carrier base local-energy level.

Integrating in time gives only

```math
\int_{-1}^{0}[H_m(s)]_+\,ds
\le
\int_{-1}^{0}\int [h_m^E(s,y)]_+\,dy\,ds
+R_m^{trace/legal,+}((-1,0]).
\tag{FDE.14}
```

The four-body loop can pay the first term on the right when \(h_m^E\) is one of
the retained selected full-packet densities.  But `(FDE.14)` is an \(L_s^1\)
statement.  It is not the Hardy producer.

## 4. General selected tests do not identify the endpoint trace

The selected full-packet production step allows finite same-carrier packet
tests \(\varphi_\sigma\) built from local energy-dual tower tests.  For a
general selected test, define

```math
h_m^\varphi
=
\left\langle
T_m+N_m+P_m+V_m^{vis}+I_m+L_m+S_m,
\varphi_\sigma
\right\rangle_y .
\tag{FDE.15}
```

There is no identity

```math
H_m(s)
=
\int h_m^\varphi(s,y)\,dy .
\tag{FDE.16-false}
```

The exact discrepancy is

```math
\mathcal E_m^\varphi(s)
=
H_m(s)
-
\int h_m^\varphi(s,y)\,dy .
\tag{FDE.17}
```

If \(\varphi_\sigma\ne\varphi_m^E\) on the retained endpoint carrier, then
\(\mathcal E_m^\varphi\) is a selector/test mismatch.  It is not hidden
endpoint control.  It must enter

```math
d\Lambda_{sel}
\quad\text{or}\quad
d\Lambda_{legal},
\tag{FDE.18}
```

or else the selector has failed to retain the endpoint local-energy readout.

Therefore the true statement is:

```math
\boxed{
\texttt{FullPacketDensityEndpointTraceIdentification.A}
\text{ holds exactly for }
\varphi_m^E=\eta_m^2V_m.
}
\tag{FDE.19}
```

and

```math
\boxed{
\text{for arbitrary selected tests, the missing endpoint-base test is a
selector/admissibility/legal defect.}
}
\tag{FDE.20}
```

## 5. Result

The first half of the corrected minimal gold producer closes in the following
sharp form:

```math
\boxed{
\varphi_m^E=\eta_m^2V_m
\text{ retained on the same carrier}
\Longrightarrow
[H_m]_+
\le
\int[h_m^E]_+\,dy+R_m^{trace/legal,+}.
}
\tag{FDE.21}
```

This proves the endpoint trace identification only for the endpoint-base
same-carrier selector.

It leaves the real no-jump production burden exactly where Thomas's correction
placed it:

```math
\boxed{
\texttt{SameCarrierEndpointTraceLpReserve.A}
}
\tag{FDE.22}
```

namely

```math
\sup_m\|[H_m]_+\|_{L_s^p(-1,0)}<\infty
\qquad
\text{for some }p>1,
\tag{FDE.23}
```

or the tower-shaped sufficient producer

```math
\boxed{
\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}
\le
C(D_S^{rad}+D_Q^w+D_G+R_{\rm legal})
}
\tag{FDE.24}
```

for some \(\beta>0\).  Without `(FDE.23)` or `(FDE.24)`, the endpoint
heat-scale pulse remains compatible with the current \(L_s^1\) four-body
payment.
