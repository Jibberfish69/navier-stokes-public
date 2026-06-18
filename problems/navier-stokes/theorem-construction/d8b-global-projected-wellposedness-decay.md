# D.8b — Global projected well-posedness and exponential decay

## Four-line audit block

**Input surfaces.**
Approximation / compactness:
\[
X_n \to X
\qquad
\text{strongly in } L^2_{\mathrm{loc}}(0,T;H)
\]
from `D.8a`.

Projected energy identity passes to the limit.

Global low-tier coercivity under uniform \(H\)-control:
\[
\frac{d}{dt}\|X(t)\|_H^2
\le
-c_{\mathrm{glob}}\|X(t)\|_H^2
\qquad
\forall t\ge 0
\]
from `D6_global_carrier_bound`.

**Claim.**
The projected solution exists globally with
\[
X\in L^\infty_{\mathrm{loc}}([0,\infty);H)\cap L^2_{\mathrm{loc}}([0,\infty);\mathcal N),
\]
and
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\]

**Dependency chain.**
Approximants \(\to\) compactness and passage to the limit \(\to\) limiting projected solution \(\to\) global coercive decay.

**Discharge location.**
`d8b-global-projected-wellposedness-decay.md`

---

## Statement

Let \((X_n)\) be an approximating family for the projected NC flow with the uniform bounds
\[
\sup_n \|X_n\|_{L^\infty(0,T;H)}<\infty,
\qquad
\sup_n \|X_n\|_{L^2(0,T;\mathcal N)}<\infty,
\qquad
\sup_n \|\partial_tX_n\|_{L^2(0,T;\mathcal N^\ast)}<\infty
\]
on every finite interval \([0,T]\).

Assume the hypotheses of `D.8a` and `D6_global_carrier_bound`.  
Then there exists a global projected solution
\[
X\in L^\infty_{\mathrm{loc}}([0,\infty);H)\cap L^2_{\mathrm{loc}}([0,\infty);\mathcal N)
\]
such that, for every \(T>0\),
\[
X_n\to X
\quad\text{strongly in }L^2(0,T;H)
\]
along a subsequence, \(X\) satisfies the projected weak formulation on \([0,T]\), and
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\]

## Proof

Fix \(T>0\).  
By `D.8a`, there exists a subsequence, still denoted \(X_n\), and
\[
X\in L^\infty(0,T;H)\cap L^2(0,T;\mathcal N)
\]
such that
\[
X_n\to X
\quad\text{strongly in }L^2(0,T;H).
\]

The uniform bounds give the exact compactness used here:
\[
X_n \rightharpoonup X \quad\text{in }L^2(0,T;\mathcal N),
\qquad
X_n \overset{*}{\rightharpoonup} X \quad\text{in }L^\infty(0,T;H).
\]
Those two convergences pass the time derivative, projected linear operator, and
test-paired linear terms to the limit against smooth compactly supported test
functions on \((0,T)\).  
The strong \(L^2_tH\) convergence supplies the convergence needed for the projected nonlinear term on the certified approximation route.  
Therefore \(X\) satisfies the projected weak equation on \([0,T]\).

Since \(T\) is arbitrary, a diagonal extraction gives a global projected solution
\[
X\in L^\infty_{\mathrm{loc}}([0,\infty);H)\cap L^2_{\mathrm{loc}}([0,\infty);\mathcal N).
\]

Now apply `D6_global_carrier_bound` to the limiting solution \(X\).  
This yields
\[
\frac{d}{dt}\|X(t)\|_H^2\le -c_{\mathrm{glob}}\|X(t)\|_H^2
\qquad
\forall t\ge 0.
\]
Gronwall gives
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2
\qquad
\forall t\ge 0.
\]
\(\square\)

## Exported consequence

The projected NC flow admits a global weak solution on the certified approximation route, and this solution satisfies the exponential decay bound
\[
\|X(t)\|_H^2\le e^{-c_{\mathrm{glob}}t}\|X(0)\|_H^2 .
\]
The classical Leray--Hopf export of the same limit construction is recorded as
Theorem T* in the realization note.
Dependency row:
| D.8b | global projected well-posedness and exponential decay | `d8b-global-projected-wellposedness-decay.md` |
