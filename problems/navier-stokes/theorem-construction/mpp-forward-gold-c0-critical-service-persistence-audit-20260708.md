---
theorem_id: forward-gold-c0-critical-service-persistence-audit-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / service persistence
status: audit-and-conditional-lemma; direct-c0-gap-not-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
completion_truth: >-
  This note records the direct c0 service-persistence audit prompted by Claude
  cycle 41. VPL Section 17 is a conditional compactness proof under A1--A5,
  not an unconditional proof of the c0 atom inequality. In particular A5 is
  true only when the same-field bill supplies strong enough normalized control
  to pass cubic Vieillefosse service, such as H1 control of the non-affine
  strain defect modulo the affine channel. L2/Korn-only control is insufficient:
  cubic service can concentrate in small volume while L2 vanishes. Therefore
  the direct theorem now has an explicit producer row:
  CriticalServicePersistenceFromPayment.A. Under H1-payment admission this row
  is proved by Sobolev/strong L3 convergence; without that admission the bubble
  is a real gap in the direct c0 proof. The cubic radial strain moment note
  supplies the signed cubic turn-off coordinate that can replace square-slope
  control, provided CubicRadialMomentOddPayment.A is proved in the legitimate
  same-field pressure/current bill.
---

# Critical Service Persistence Audit

The direct \(c_0\) theorem is still:

```math
\mathcal P=0\Longrightarrow \mathcal S=0
\tag{CSP.1}
```

on the lawful same-fluid strict atom/tower class. The audit point is that
VPL Section 17 proves the packet inequality only after A1--A5 are installed.
It does not prove A3, A4, or A5 unconditionally.

## 1. What A5 really needs

The service is cubic in strain, for example

```math
\mathsf S(u)=\int_P\phi\,[-\operatorname{tr}S(u)^3]_+.
\tag{CSP.2}
```

To pass service to a zero-payment limit, one needs strong convergence in
\(L^3(P)\) for the participating strain, modulo the selected affine channel:

```math
S(u_n)-S(b_n)\to0
\quad\text{strongly in }L^3(P).
\tag{CSP.3}
```

Strong \(L^2\) convergence is not enough in three dimensions. A concentrated
packet can have unit cubic mass while its \(L^2\) mass vanishes. On a fixed
normalized packet, the model scaling is:

```math
S_n\sim \varepsilon_n^{-1}
\quad\text{on a ball of radius }\varepsilon_n,
\tag{CSP.4}
```

so

```math
\|S_n\|_{L^3}^3\sim 1,
\qquad
\|S_n\|_{L^2}^2\sim \varepsilon_n\to0.
\tag{CSP.5}
```

Thus any proof that reaches only \(L^2\) compactness leaves a real
critical-service concentration gap. That gap is direct \(c_0\) work, not a
presentation issue.

## 2. Conditional lemma: H1 payment gives A5

If the strict payment supplies

```math
\mathsf P(u_n)
\to0
\quad\Longrightarrow\quad
\|S(u_n)-S(b_n)\|_{H^1(P)}\to0
\tag{CSP.6}
```

on the fixed normalized packet/collar geometry, then A5 follows.

Indeed, Sobolev on the fixed packet gives

```math
\|S(u_n)-S(b_n)\|_{L^3(P)}
\le
C\|S(u_n)-S(b_n)\|_{H^1(P)}
\to0.
\tag{CSP.7}
```

The affine jets \(b_n\) live in a finite-dimensional normalized manifold. After
passing to a subsequence,

```math
b_n\to b_\infty,
\tag{CSP.8}
```

and hence

```math
S(u_n)\to S(b_\infty)
\quad\text{strongly in }L^3(P).
\tag{CSP.9}
```

The cubic service is continuous under this convergence:

```math
\mathsf S(u_n)\to\mathsf S(b_\infty).
\tag{CSP.10}
```

So the normalized contradiction sequence

```math
\mathsf S(u_n)=1,
\qquad
\mathsf P(u_n)\to0
\tag{CSP.11}
```

cannot lose its service in the compact limit if (CSP.6) is part of the same
payment law.

## 3. Direct producer row

The missing direct theorem row is therefore:

```math
\texttt{CriticalServicePersistenceFromPayment.A}
\tag{CSP.12}
```

Statement. In every lawful strict atom/tower zero-payment sequence, the
same-field payment \(\mathcal P\) admits enough positive pressure/viscous/collar
bill to force strong \(L^3\) persistence of the selected Vieillefosse service,
or else the disappearing service is routed to a declared stopped/pass,
parent-owned, collar/exit, or nonparticipating class.

Equivalently, a normalized sequence with

```math
\mathcal S(u_n)=1,
\qquad
\mathcal P(u_n)\to0
\tag{CSP.13}
```

cannot hide its service in a critical \(L^3\) bubble whose \(L^2\) defect
vanishes.

## 4. Relation to the log-chain Hodge payment

The log-chain Hodge payment note proves an interior off-kernel statement after
lawful channel extraction:

```math
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C\left(\mathsf P_{\rm chain}(I)+\operatorname{Err}_{\rm atom}(I)\right).
\tag{CSP.14}
```

That is a valid Hodge payment row under its assumptions. It does not by itself
prove (CSP.12), because (CSP.12) is the no-loss passage from raw cubic service
to the extracted channel/payment structure.

Thus the current direct \(c_0\) frontier is:

```math
\begin{array}{ll}
\text{service persistence/payment admission:}
& \texttt{CriticalServicePersistenceFromPayment.A},\\
\text{signed cubic turn-off bill:}
& \texttt{CubicRadialMomentOddPayment.A},\\
\text{channel extraction:}
& \text{extract the same-affine log channel without losing service,}\\
\text{endpoint ownership:}
& \text{parent-own or pay the smooth affine endpoint kernel and approach layer,}\\
\text{atom accounting:}
& \text{combine atoms/chains without service loss or payment double count.}
\end{array}
\tag{CSP.15}
```

With these rows installed, the direct contradiction proof of \(c_0>0\) goes
through. Without the first row, the cubic concentration bubble is not excluded.
Without the second row, the cubic moment drop is only a signed readout, not yet
the legitimate \(\mathsf P\)-currency.
