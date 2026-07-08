---
theorem_id: forward-gold-c0-critical-service-persistence-audit-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / service persistence
status: door-1-audit-corrected; conditional-h1-sufficiency-not-proof
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
completion_truth: >-
  This note records the direct c0 service-persistence audit prompted by Claude
  cycle 41 and corrected after the cycle-55 two-door audit. VPL Section 17 is a
  compactness proof under A1--A5, but the H1/strong-L3 control needed for A5 is
  not supplied by Korn-Hodge L2 compactness alone. The note proves only the
  conditional implication: if the same-field payment gives H1 control of the
  non-affine strain defect modulo the affine channel, then Sobolev gives strong
  L3 convergence and cubic service persists. The companion Door-1 note proves
  that Claude's a=r bubble is seen by the localized enstrophy-viscous H1 bill,
  provided that term is admitted as part of the strict same-field participation
  bill. The remaining global status is not c0 closure: Door 2, the affine
  endpoint/no-free-collar sign, is still open.
---

# Critical Service Persistence Audit

The strict-atom service-persistence target is:

```math
\mathcal P=0\Longrightarrow \mathcal S=0
\tag{CSP.1}
```

on the lawful same-fluid strict atom class. VPL Section 17 proves the packet
inequality after A1--A5 are installed. The open issue is whether the actual
same-field participation bill supplies the H1/strong-L3 input needed for A5, or
forces the concentrating service to leave the retained participant class.

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

## 3. Door-1 theorem still to prove

The direct theorem row is therefore:

```math
\texttt{CriticalServicePersistenceFromPayment.A}
\tag{CSP.12}
```

Statement to prove. In every lawful strict atom zero-payment sequence, the
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
vanishes. This is exactly the missing Door-1 theorem unless the strict atom bill
is strengthened to include the H1 control in (CSP.6).

## 4. Relation to the log-chain Hodge payment

The log-chain Hodge payment note proves the interior long-chain row after
lawful channel extraction: the off-kernel defect is paid by Hodge coercivity.
The smooth affine endpoint payment is a separate Door-2 claim, not supplied by
this Door-1 audit.

```math
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C\left(\mathsf P_{\rm chain}(I)+\operatorname{Err}_{\rm atom}(I)\right).
\tag{CSP.14}
```

That is a valid off-kernel chain payment row under its assumptions. It gives
service persistence only after Door 1 supplies the H1/strong-L3 payment and
the affine endpoint is handled. The fixed smooth-affine first non-merge collar
is handled by the companion Door-2a H1 trace/collar note; the remaining Door-2
endpoint is the scale-consistent degree -1 wrong-sign pressure-bank cone, now
handled by the Door-2b note under strict profile-production bill admission.
VPL Section 23 supplies the stopping decomposition; it does not itself prove
bill admission/accounting for these payment doors.

Thus the current direct strict-tower \(c_0\) reduction is:

```math
\begin{array}{ll}
\text{strict atoms:}
& \text{Door 1 must give }H^1\text{ control and A5 service persistence,}\\
\text{long chains:}
& \text{off-kernel Hodge payment plus Door-2a/2b endpoint payment admission,}\\
\text{tower accounting:}
& \text{Section 23 decomposes atoms/chains without closing global bill admission.}
\end{array}
\tag{CSP.15}
```

If Door 1 and Door 2 are proved, the direct contradiction proof for the strict
participation tower class goes through. Until then, the critical cubic bubble is
still the Door-1 pressure test: either the same-field bill produces H1/strong-L3
control, or the bubble must be routed out of retained participation by an
explicit same-fluid mechanism.
