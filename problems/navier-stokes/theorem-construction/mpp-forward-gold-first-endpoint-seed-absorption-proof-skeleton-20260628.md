---
theorem_id: forward-gold-first-endpoint-seed-absorption-proof-skeleton-20260628
status: compactness-route-corrected-current-carleson-still-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - FreshPositiveAffineEndpointMassKill.A
  - NativeBirthChargePacking.A
  - PositiveCriticalTransferBound.A
  - StoppedEndpointAccretiveTestingData.A
completion_truth: partial-not-mpp-closed
---

# First endpoint seed absorption proof skeleton

This note records the shortest noncircular route for the retained first endpoint
seed absorption theorem and the exact point where the compactness proof cannot
yet be closed.

The target is

\[
\sum_{\gamma\subset P}
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
\le
C_N(u_0)\mathcal R(P)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+
Paid(P),
\qquad
\theta<1 .
\tag{1}
\]

Here \(M_\gamma\) is the positive endpoint seed left after lower-band carry,
spent-source reuse, reset, reselection, silent exchange, legal loss, stop, and
annular payback have been removed.

## 1. Original-packet divergence form

For every retained first endpoint seed, prove the same-material identity

\[
M_\gamma
=
D_AJ_\gamma
+
M_{\gamma,stop}
+
M_{\gamma,legal}
+
M_{\gamma,reset}
+
M_{\gamma,return},
\tag{2}
\]

where \(D_A=\operatorname{div}_a(A\cdot)\) is the material divergence and
\(J_\gamma\) is built from the original transported
pressure-viscosity-incompressibility-velocity packet:

\[
J_\gamma
=
\Pi_{\gamma}^{fresh}
\int_{J_\gamma}
k_\gamma(\sigma)
\Bigl(
2\nu S_A
-p_A I
+[D_t,\mathcal L_A]w
+\operatorname{covector}
+\operatorname{frame}
+\operatorname{turnstile}
+\partial_\sigma Z
\Bigr)\,d\sigma .
\tag{3}
\]

This is the formal version of the physical claim: a retained first seed is not a
free scalar object; it is the divergence/readout of the same material stress and
geometry current.

The paid terms in `(2)` obey

\[
\sum_\gamma
\|M_{\gamma,stop}\|_{H_\gamma^{-1}}^2
+
\|M_{\gamma,legal}\|_{H_\gamma^{-1}}^2
+
\|M_{\gamma,reset}\|_{H_\gamma^{-1}}^2
+
\|M_{\gamma,return}\|_{H_\gamma^{-1}}^2
\le
Paid(P).
\tag{4}
\]

## 2. Endpoint testing

The positive endpoint mass is recovered by duality:

\[
\int H_\gamma\|M_\gamma\|_2^2
=
\sup_{\|g\|_{L^2(H_\gamma)}\le1}
\left|\int H_\gamma M_\gamma g\right|^2 .
\tag{5}
\]

Using `(2)` and integrating by parts in material variables gives

\[
\int H_\gamma M_\gamma g
=
-\int J_\gamma\cdot D_A^*(H_\gamma g)
+Paid_g .
\tag{6}
\]

The required stopped endpoint testing estimate is

\[
\int |D_A^*(H_\gamma g)|^2\,d\mathcal R_\gamma^{-1}
\le
C\int H_\gamma |g|^2
+
Paid(P).
\tag{7}
\]

This estimate is the exact place where the selector must be parent-known and
accretive before future selected readout.  If the test is chosen from the future
tail, `(7)` is circular.

## 3. Current Carleson estimate

The endpoint current must satisfy

\[
\sum_{\gamma\subset P}
\int |J_\gamma|^2\,d\mathcal R_\gamma
\le
C_N(u_0)\mathcal R(P)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+
Paid(P),
\qquad
\theta<1 .
\tag{8}
\]

This is the current-energy form of the original-packet positive critical
transfer estimate.  It says that the fresh endpoint currents are square-packed
by the same pressure-viscosity-incompressibility packet, with only a strict
fraction of the native viscous reserve left to absorb.

## 4. Absorption proof

Combine `(5)`--`(8)`.  For each normalized dual test \(g\),

\[
\left|\int H_\gamma M_\gamma g\right|^2
\le
\left(\int |J_\gamma|^2\,d\mathcal R_\gamma\right)
\left(\int |D_A^*(H_\gamma g)|^2\,d\mathcal R_\gamma^{-1}\right)
+
Paid(P).
\tag{9}
\]

By `(7)`, the second factor is bounded uniformly for
\(\|g\|_{L^2(H_\gamma)}\le1\).  Taking the supremum in `(5)` and summing in
\(\gamma\), `(8)` gives `(1)`.

## 5. Corrected rigidity form

The tempting contradiction proof is:

If `(1)` fails, normalize a sequence of counterexamples so that

\[
\sum_{\gamma}
\int H_\gamma\|M_\gamma\|_2^2=1,
\tag{10}
\]

while

\[
\sum_\gamma\int |J_\gamma|^2\,d\mathcal R_\gamma
+Paid(P)
+\nu\int\|\Lambda^{3/2}u\|_2^2
\to0
\tag{11}
\]

after subtracting the allowed strict absorption term.  Stopped compactness gives
a limiting retained endpoint seed \(M_\infty\) with

\[
\int H_\infty\|M_\infty\|_2^2=1,
\qquad
M_\infty=D_{A_\infty}J_\infty,
\qquad
J_\infty=0 .
\tag{12}
\]

Thus \(M_\infty=0\), contradicting the unit endpoint mass.  This is the physical
rigidity statement: there is no retained first endpoint seed detached from the
original material current.

The flaw is that failure of `(1)` does not imply `(11)`.  It only gives a
sequence for which the endpoint seed mass is large compared with the allowed
right side.  After normalization one obtains

\[
\sum_\gamma\int H_\gamma\|M_\gamma\|_2^2=1,
\qquad
\sum_\gamma\int |J_\gamma|^2\,d\mathcal R_\gamma\simeq1,
\tag{13}
\]

while the lower-order paid terms vanish and the strict absorbed portion of the
native reserve is not enough to dominate the current.  The limit is therefore
not a seed with zero current.  It is a nonzero retained endpoint current with no
available original-data reserve left to spend:

\[
M_\infty=D_{A_\infty}J_\infty,
\qquad
\int H_\infty\|M_\infty\|_2^2=1,
\qquad
\int |J_\infty|^2\,d\mathcal R_\infty\simeq1 .
\tag{14}
\]

There is no contradiction in `(14)`.  The identity \(M=D_AJ\) transfers endpoint
mass to current energy; it does not by itself force the current to vanish.

Thus a compactness proof needs an additional Liouville/rigidity theorem:

\[
\text{no nonzero retained endpoint current can survive with zero paid
same-material reserve beyond the strict native viscous fraction.}
\tag{15}
\]

That theorem is equivalent to the one-sided positive critical transfer bound in
compactness language.

## 6. Remaining noncircular burden

The absorption theorem is proved once `(2)`, `(7)`, and `(8)` are proved from the
original packet before future selected-tail readout.

The installed notes already identify `(2)` and `(7)` as the endpoint
current/testing surface.  The only smoothness-bearing estimate in this proof is
`(8)`, equivalently the one-sided positive critical transfer bound.  The
compactness route does not remove that burden; it repackages it as the rigidity
statement `(15)`.
