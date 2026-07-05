---
theorem_id: forward-gold-sheet1-endpoint-f-dial-reduction-20260705
status: sheet1-reduced-to-strict-endpoint-inequality-no-pass-claimed
created: 2026-07-05
problem: navier-stokes
route: forward-gold / Sheet1 / endpoint f-dial reduction
authorship: Codex, 2026-07-05. Strict reduction of the boxed Sheet1
  inequality after Sheet2's horn-(a) bridge clearance.
depends_on:
  - mpp-forward-gold-codex-chi-sheet1-combined-boundary-reduction-20260705.md
  - mpp-forward-gold-codex-horn-a-financing-bridge-regate-20260705.md
  - mpp-forward-gold-sheet2-comparison-endpoint-f-dial-payment-20260705.md
completion_truth: >-
  Reduces the boxed Sheet1 inequality to one f-free endpoint inequality
  plus a strict-margin requirement. Since r0(f)=f^2/(2 pi rho), the
  Sheet1 seed-demand term is monotone decreasing in f and has infimum
  only at f=1. Therefore a single fixed f<1 can clear Sheet1 by the
  endpoint dial exactly when the f=1 endpoint row is strict; if the
  endpoint row fails or is only equal, no choice f<1 can make the
  current Sheet1 display pass. If the endpoint row is strict, the same
  close-to-one f can also satisfy the already-paid Sheet2 comparison.
  No value is certified here, chapter 10 remains the place where this
  endpoint row is checked.
---

# Sheet1 endpoint \(f\)-dial reduction

## 1. Source row

The checked Sheet1 reduction is
\[
\frac{2Q_W}{L_W|I|}
+
\frac{
2\exp\!\left(
D_{\rm req}
-
\gamma_G\pi\sqrt{\frac{3}{2\ln2}}
\right)
}{r_0(f)\tau_{\min}}
\le
\frac12.
\]

Set
\[
E_G:=
\exp\!\left(
D_{\rm req}
-
\gamma_G\pi\sqrt{\frac{3}{2\ln2}}
\right)
\]
and
\[
r_0(f)=\frac{f^2}{2\pi\rho}.
\]
Then the Sheet1 row becomes
\[
\frac{2Q_W}{L_W|I|}
+
\frac{4\pi\rho\,E_G}{f^2\tau_{\min}}
\le
\frac12.
\]

## 2. Endpoint monotonicity

The only \(f\)-dependent term is
\[
\frac{4\pi\rho\,E_G}{f^2\tau_{\min}}.
\]
It is strictly decreasing on \(0<f<1\), and its infimum over allowed
horn dials is its endpoint value as \(f\uparrow1\):
\[
\inf_{0<f<1}
\frac{4\pi\rho\,E_G}{f^2\tau_{\min}}
=
\frac{4\pi\rho\,E_G}{\tau_{\min}}.
\]
The endpoint is not itself an allowed dial, so equality at the endpoint
does not suffice.

## 3. Equivalent strict reduction

Define the endpoint Sheet1 margin
\[
\mathcal S_1:=
\frac12
-
\frac{2Q_W}{L_W|I|}
-
\frac{4\pi\rho}{\tau_{\min}}
\exp\!\left(
D_{\rm req}
-
\gamma_G\pi\sqrt{\frac{3}{2\ln2}}
\right).
\]

If
\[
\mathcal S_1>0,
\]
then by continuity there exists \(f_1<1\) such that every fixed
\(f\in(f_1,1)\) proves the boxed Sheet1 inequality.

If
\[
\mathcal S_1\le0,
\]
then the current Sheet1 display cannot be proved by the \(f\)-dial:
for every admissible \(f<1\), the second term is strictly larger than
its endpoint infimum, so the boxed inequality fails or has no margin.

Thus the current Sheet1 front is exactly the strict endpoint inequality
\[
\boxed{
\frac{2Q_W}{L_W|I|}
+
\frac{4\pi\rho}{\tau_{\min}}
\exp\!\left(
D_{\rm req}
-
\gamma_G\pi\sqrt{\frac{3}{2\ln2}}
\right)
<
\frac12
}
\]
plus the chapter-10 certification of the symbols in that row.

## 4. Compatibility with Sheet2

Sheet2 was paid by choosing \(f\) sufficiently close to one. Sheet1, if
the endpoint row is strict, also asks for \(f\) sufficiently close to
one. Therefore the two choices are compatible: choose
\[
f>\max\{f_{\rm S1},f_{\rm S2}\}
\]
with \(f<1\).

If the endpoint Sheet1 margin is not strict, Sheet2 remains paid but
Sheet1 stays open and must be repaired by improving endpoint routing,
improving the \(G\)-ratio delivery, reducing \(D_{\rm req}\),
strengthening \(\tau_{\min}\), or returning to the long-window
construction.

## 5. Register

This is a strict reduction, not a Sheet1 pass and not MPP closure.
Chapter 10 no longer needs to optimize over \(f\) for Sheet1; it must
certify the endpoint row above, with strict margin.

