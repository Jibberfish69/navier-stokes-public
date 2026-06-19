# MPP Forward Gold FBE Endpoint Energy Test

Date: 2026-06-19

## Status

Direct endpoint energy test complete.  The fixed-band endpoint theorem
`(FBE)` / `(EP)` is not supplied by the inherited energy-dissipation ledger.
It is the same terminal active-square time-pulse obstruction, now reduced to a
fixed finite band rather than a moving lower prefix.

This note does not disprove `(FBE)` for Navier-Stokes.  It proves that the
current inherited estimates do not imply it.  Closing `(FBE)` still requires a
new active-square, trace-absolute-continuity, source-square, pressure-corrected
no-waste, or genuinely coupled two-scale theorem.

## 1. Endpoint target

The operator endpoint route reduces the far-corona survivor to the finite-band
estimate

\[
\textbf{(FBE)}:\qquad
\int_0^T
\Big(\sum_{m\in\mathcal B_I(N)}E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)}2^{-j}D_j(t)^2\Big)\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
\]

Since the two index sets have bounded cardinality, the scalar shell-pair test is

\[
\textbf{(FBE)}_{m,j}:\qquad
\int_0^T E_m(t)\,2^{-j}D_j(t)^2\,dt
\le
C\int_0^T D_N(t)\,dt+C_*2^{-2\delta N},
\]

with \(m=j+O(1)\) on the endpoint collar.

The dyadic quantities are

\[
E_\ell(t)=2^{2\ell}\|\Delta_\ell u(t)\|_2^2,
\qquad
D_\ell(t)=2^{4\ell}\|\Delta_\ell u(t)\|_2^2
=2^{2\ell}E_\ell(t).
\]

The inherited ledger gives first-moment control:

\[
\int_0^T D_N(t)\,dt<\infty,
\]

together with the global \(L^\infty_tL^2_x\) energy bound.  It does not give an
\(L_t^2\) bound for \(D_j\).

## 2. Heat-scale endpoint pulse test

Fix a large endpoint shell \(j\), take \(m=j+O(1)\), and take a heat-scale
interval

\[
|I_j|=\tau_j\sim 2^{-2j}.
\]

Put a lower-band weight on the same interval:

\[
E_m(t)=P\,\mathbf 1_{I_j}(t),
\qquad P>0.
\]

Its dissipation cost is

\[
\int_{I_j}D_m(t)\,dt
=
\int_{I_j}2^{2m}E_m(t)\,dt
\sim
2^{2j}P\,2^{-2j}
=
P.
\]

Now put active-shell dissipation mass \(M>0\) into the same heat-scale interval:

\[
D_j(t)=\frac{M}{\tau_j}\mathbf 1_{I_j}(t).
\]

Then

\[
\int_{I_j}D_j(t)\,dt=M.
\]

The corresponding active shell energy is

\[
E_j(t)=2^{-2j}D_j(t)
\sim
2^{-2j}\frac{M}{2^{-2j}}
=M,
\]

so the model stays compatible with the shell energy-dissipation scaling on the
heat scale.

The endpoint square contribution is

\[
\int_{I_j}E_m(t)\,2^{-j}D_j(t)^2\,dt
=
P\,2^{-j}\frac{M^2}{\tau_j^2}\tau_j
=
P\,2^{-j}\frac{M^2}{\tau_j}.
\]

Since \(\tau_j\sim2^{-2j}\),

\[
\int_{I_j}E_m(t)\,2^{-j}D_j(t)^2\,dt
\sim
P\,M^2\,2^j.
\]

The first-moment dissipation seen by the inherited ledger is only

\[
\int_{I_j}(D_m(t)+D_j(t))\,dt
\sim
P+M.
\]

Thus, for fixed \(P,M>0\), the left side of `(FBE)` grows like \(2^j\), while
the inherited first-moment ledger stays order \(1\).  The endpoint square is
not controlled by energy and dissipation alone.

## 3. Meaning for the far-corona route

The direct \(L^p\)-factorization test already showed that the far-corona lower
edge always leaves the invariant endpoint factor

\[
2^{-j/2}E_m(t)^{1/2}D_j(t),
\qquad m=j+O(1).
\]

The operator route shrinks the affine survivor further to `(EP)` and then to
`(FBE)`, but this heat-scale pulse test shows that `(FBE)` still asks for a
real time-regularity or no-pulse theorem:

\[
\int E_m\,2^{-j}D_j^2\,dt
\quad\text{is an active-square time payment, not a first-moment drain.}
\]

So the fixed-band endpoint route is strictly sharper than raw `(LPAS)`, but it
does not close from the inherited energy surface.

## 4. Updated frontier

The remaining far-corona alternatives are now:

\[
\text{a genuinely coupled two-scale Carleson theorem},
\]

\[
\text{or an endpoint active-square theorem for }(EP)/(FBE),
\]

\[
\text{or a pressure/source no-waste theorem that forbids the heat-scale pulse},
\]

\[
\text{or the dyadic }(LPAS)\text{ fallback with residual/source-balanced control.}
\]

The endpoint pulse has a fixed positive spatial band and a heat-scale time
window.  That is exactly why spatial coercivity alone does not remove it: the
unpaid quantity is the square-in-time active load, not a hidden spatial point
object.
