---
theorem_id: forward-gold-sheet2-comparison-endpoint-f-dial-payment-20260705
status: sheet2-comparison-paid-by-endpoint-f-dial-conditional-on-horn-a-bridge
created: 2026-07-05
problem: navier-stokes
route: forward-gold / Sheet2-Poor / explicit comparison
authorship: Codex, 2026-07-05. This note proves the displayed Sheet2
  inequality after B1-B3 are written, using only the free horn dial
  \(f<1\), the closed form \(r_0(f)=f^2/(2\pi\rho)\), the cleared
  \(\tau_{\min}>0\), and the B2 ceiling \(A_{\max}^{\rm S2}<\infty\).
depends_on:
  - mpp-forward-gold-sheet2-b1-b3-octave-bill-display-20260705.md
  - mpp-forward-gold-sheet2-b2-package-ceiling-payment-20260705.md
  - mpp-forward-gold-nine-gate-consumption-angular-appetite-ledger-recurrence-20260705.md
completion_truth: >-
  Pays the Sheet2 comparison structurally, conditional on the horn-(a)
  bridge. After B1-B3, Sheet2 asks for
  r0(f) tau_min f/(8 A_max^S2) >= -log max{f,1-r0(f)}. Write
  r0(f)=a f^2 with a=1/(2 pi rho)>0 and C=tau_min/(8 A_max^S2)>0.
  Near f=1, the max is f because f >= 1-a f^2 holds by continuity from
  f=1, and the right side is -log f -> 0. The left side is C a f^3 ->
  C a >0. Therefore there exists f_*<1 such that every f in (f_*,1)
  satisfies the Sheet2 inequality. No decimal constant is introduced.
  This does not clear the horn-(a) bridge itself and does not prove the
  boxed Sheet1 inequality.
---

# Sheet2 comparison: endpoint \(f\)-dial payment

## 1. The displayed Sheet2 line

After B1-B3 and B2, Sheet2 is the single inequality
\[
r_0(f)\tau_{\min}
\frac{f}{8A_{\max}^{\rm S2}}
\ge
-\log\max\{f,1-r_0(f)\}.
\]

Here \(f\in(0,1)\) is the horn dial, fixed once. The horn-(a) bridge
allows any fixed \(f<1\); smaller values give a stronger self-throttling
horn, but the theorem only needs a positive octave loss.

## 2. Rewrite the two sides

Use the closed return-race floor
\[
r_0(f)=a f^2,\qquad a:=\frac1{2\pi\rho}>0,
\]
and set
\[
C:=\frac{\tau_{\min}}{8A_{\max}^{\rm S2}}>0.
\]
The positivity of \(C\) is exactly the cleared tau floor plus the B2
finite package ceiling.

The left side is
\[
L(f)=Caf^3.
\]
The right side is
\[
R(f)=-\log\max\{f,1-af^2\}.
\]

## 3. Endpoint comparison

At \(f=1\), the inequality selecting the first branch of the max is
\[
f\ge 1-af^2,
\]
which reads \(1\ge 1-a\), true because \(a>0\). By continuity, there is
\(\delta>0\) such that for all \(f\in(1-\delta,1)\),
\[
\max\{f,1-af^2\}=f.
\]

On that interval
\[
R(f)=-\log f\to0
\qquad(f\uparrow1),
\]
while
\[
L(f)=Caf^3\to Ca>0.
\]
Hence there exists \(f_*<1\) such that for every \(f\in(f_*,1)\),
\[
Caf^3\ge -\log f
=-\log\max\{f,1-af^2\}.
\]
This proves the displayed Sheet2 inequality for any such fixed horn dial.

## 4. Meaning

The poor horn can be made to pay because the demanded log toll tends to
zero as the self-throttling threshold \(f\) approaches one, while the
per-window residence price remains positive. The resulting octave loss
may be very small, but it is strictly positive, and the chapter-8
geometric series only needs positivity.

## 5. Register

Sheet2 is paid conditional on the horn-(a) bridge's multiplier line. The
remaining live dependencies are upstream:

1. Codex/Fable re-gate of the horn-(a) bridge itself;
2. the boxed Sheet1 inequality from update 116;
3. broader PDE/interface gates and manuscript assembly.

No MPP closure is claimed.
