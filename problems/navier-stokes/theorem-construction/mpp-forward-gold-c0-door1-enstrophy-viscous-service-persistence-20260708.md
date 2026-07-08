---
theorem_id: forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Door 1 / service persistence
status: door-1-conditional-proof-under-admitted-local-strain-H1-row; not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-section17-compactness-critical-gap-obstruction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
completion_truth: >-
  This note attacks Door 1 only. It proves that Claude's a=r critical bubble is
  a counterexample to an L2/Korn-only bill, but not to an admitted strict
  same-field viscous participation row read from the local strain production
  budget. The viscous response paired with Vieillefosse service is the
  localized H1/enstrophy-dissipation term, not the L2 strain energy. If that
  row is admitted as actual retained strict payment, zero payment gives strong
  L3 persistence of the non-affine strain defect. This is a conditional Door-1
  proof, not c0 closure; the row-admission/finiteness and Door-2 endpoint
  burdens remain.
---

# Door 1: Enstrophy-Viscous Service Persistence

Physical sentence: a small participating stretcher cannot keep unit
Vieillefosse service while paying only the \(L^2\) strain energy. The service is
the cubic production term in the local strain budget, and the same budget's
viscous response is the \(H^1\)-level strain/enstrophy dissipation. That is the
same-field row that sees the critical bubble, provided the strict VPI bill
admits it as retained payment.

## 0. Why the \(H^1\) row is same-field

Let \(D_t=\partial_t+u\cdot\nabla\),

```math
S={1\over2}(\nabla u+\nabla u^T),
\qquad
\Omega={1\over2}(\nabla u-\nabla u^T).
\tag{D1.0a}
```

Taking the symmetric gradient of Navier--Stokes gives

```math
D_tS-\nu\Delta S+S^2+\Omega^2+\nabla^2p=0.
\tag{D1.0b}
```

Testing this equation on a retained packet by \(\phi^2S\) gives, after the
usual localized integration by parts,

```math
{1\over2}D_t\int\phi^2|S|^2
+
\nu\int\phi^2|\nabla S|^2
=
-\int\phi^2\operatorname{tr}(S^3)
-\int\phi^2S:\Omega^2
-\int\phi^2S:\nabla^2p
+\operatorname{Collar}_\phi .
\tag{D1.0c}
```

Thus the row that controls \(H^1\) strain is not an external norm. It is the
viscous response in the same local strain-production identity that contains
the Vieillefosse service \(-\operatorname{tr}(S^3)\), with vorticity, pressure,
transport, and collar appearing as the other same-record rows.

## 1. The \(a=r\) bubble only beats an \(L^2\) bill

Let a retained packet have radius \(\ell\), strain amplitude
\(\sigma\sim \ell^{-1}\), and velocity variation \(\delta u\sim 1\). This is
Claude's normalized \(a=r\) bubble in physical units. Per unit material time,

```math
\mathsf S_\ell
\sim
\int_{B_\ell} |S|^3
\sim
\sigma^3\ell^3
\sim
1 .
\tag{D1.1}
```

The quadratic \(L^2\) strain/enstrophy size is small:

```math
\int_{B_\ell}|S|^2
\sim
\sigma^2\ell^3
\sim
\ell
\to0 .
\tag{D1.2}
```

So the bubble is a real obstruction to any proof that tries to pass cubic
service through \(L^2\) compactness alone.

But the same Navier--Stokes budget that contains the cubic stretching service
also contains the viscous enstrophy response:

```math
\nu\int_{B_\ell}|\nabla\omega|^2
\simeq
\nu\int_{B_\ell}|\nabla S|^2 .
\tag{D1.3}
```

For a packet of width \(\ell\), the strain changes on scale \(\ell\), so

```math
|\nabla S|\sim \frac{\sigma}{\ell}\sim \ell^{-2},
\qquad
\nu\int_{B_\ell}|\nabla S|^2
\sim
\nu \ell^{-4}\ell^3
=
\frac{\nu}{\ell}.
\tag{D1.4}
```

If the packet only lives for a time \(\tau\), then
\(\mathsf S_\ell\sim\tau\) and the viscous enstrophy bill is
\(\sim\nu\tau/\ell\). Splitting the event into shorter episodes does not help:
for total retained service \(\mathsf S_{\rm tot}\), the same-scale viscous row
is \(\sim(\nu/\ell)\mathsf S_{\rm tot}\). Normalizing
\(\mathsf S_{\rm tot}=1\) gives a bill \(\gtrsim\nu/\ell\), not \(o(1)\).

Thus the \(a=r\) bubble says exactly this: the \(L^2\) Korn bill is the wrong
viscous readout for Door 1. It does not give a zero-payment same-fluid packet
once the bill includes the viscous response in the same enstrophy budget as the
service.

## 2. Fixed-packet compactness from the same-field viscous bill

On a normalized strict packet \(Q\), subtract the selected affine strain
channel and write

```math
E_n=S(u_n)-A_n .
\tag{D1.5}
```

The affine channel has no spatial strain curvature. Localized Hodge--Korn for
the same divergence-free field gives, with the collar/owner terms included in
the strict participation bill,

```math
\|\nabla E_n\|_{L^2(Q)}^2
\le
C\left(
\|\nabla\omega(u_n)\|_{L^2(\Lambda Q)}^2
+\mathsf P_{\rm collar}(u_n)
+\mathsf P_{\rm owner}(u_n)
\right).
\tag{D1.6}
```

The lower-order Korn part gives

```math
\|E_n\|_{L^2(Q)}^2
\le
C\,\mathsf P_{\rm rel}(u_n).
\tag{D1.7}
```

Therefore zero strict payment in this Door-1 sense implies

```math
\|E_n\|_{L^2(Q)}+\|\nabla E_n\|_{L^2(Q)}
\to0 .
\tag{D1.8}
```

By Sobolev/Gagliardo--Nirenberg on the fixed packet,

```math
\|E_n\|_{L^3(Q)}^3
\le
C\|E_n\|_{L^2(Q)}^{3/2}
  \|\nabla E_n\|_{L^2(Q)}^{3/2}
\to0 .
\tag{D1.9}
```

The cubic service is a polynomial in \(S=A_n+E_n\). The affine channels live in a
finite-dimensional normalized family, so after passing to a subsequence
\(A_n\to A_\infty\), and (D1.9) gives

```math
\int_Q\phi\,[-\operatorname{tr}(A_n+E_n)^3]_+
\to
\int_Q\phi\,[-\operatorname{tr}A_\infty^3]_+ .
\tag{D1.10}
```

This is the missing service-persistence step for the non-affine part:

```math
\mathsf P_{\rm Door\,1}(u_n)\to0
\quad\Longrightarrow\quad
\mathsf S(u_n)-\mathsf S(A_\infty)\to0 .
\tag{D1.11}
```

## 3. What Door 1 now leaves to Door 2

Door 1 does not decide the affine endpoint. After (D1.11), a zero-payment
positive-service sequence can only retain service in the affine channel
\(A_\infty\). If \(A_\infty=0\), the service is zero. If \(A_\infty\ne0\), the
packet is the smooth affine endpoint: it must either be parent-owned, routed
out, or paid at the first non-merge collar.

That last statement is Door 2. The fixed smooth-affine first non-merge collar
is Door 2a; the scale-consistent critical pressure cone is Door 2b:

```math
\texttt{FixedSmoothAffineFirstNonmergeCollarPayment.A}
\quad+\quad
\texttt{NoRetainedWrongSignCriticalPressureCone.A}.
\tag{D1.12}
```

So the physical accounting is:

```math
\begin{array}{ll}
\text{non-affine critical bubble} & \text{seen by the enstrophy-viscous }H^1\text{ bill,}\\
\text{affine endpoint} & \text{left to Door 2a / Door 2b endpoint payment.}
\end{array}
\tag{D1.13}
```

This closes Door 1 only under the strict participation bill that admits the
same-field local strain \(H^1\) response in (D1.0c) as retained payment. The
retained strict tower \(c_0\) bound then requires that row admission/finiteness,
Door 2a, Door 2b, and the global no-double-count accounting.
