# MPP Forward Gold Far-Corona \(L^p\) Factorization Test

Date: 2026-06-19

## Status

Direct \(L^p\)-factorization test complete.  Varying the spatial Hölder
exponent in the far-corona density does not remove the endpoint obstruction.
Every such factorization leaves the same finite-band active endpoint factor
near the lower edge of the far-corona:

\[
E_k(t)^{1/2}\,2^{-j/2}D_j(t),
\qquad k\lesssim j .
\tag{FC-LP.1}
\]

Thus the direct factorized two-scale route \((\mathrm{F2S})\) is not closed by
choosing a better \(L^p\) split.  It reduces to the already isolated endpoint /
finite-band survivor, not to a new easy Carleson theorem.

## 1. Dyadic model of the coupled density

Dyadically, let \(r\sim2^{-k}\) be the lower far-corona scale and
\(\ell\sim2^{-j}\) the active scale, with \(k\le j-C_1\).  Write

\[
E_k(t):=2^{2k}\|\Delta_k u(t)\|_2^2,
\qquad
D_j(t):=2^{4j}\|\Delta_j u(t)\|_2^2 .
\]

The far-corona density has the schematic form

\[
\mathcal A_{j,k}(t)
\sim
\int \widetilde\Sigma_k(x,t)\,\tau_j^{H^1}(x,t)\,dx .
\]

The gap kernel contributes

\[
\frac{\ell}{r}\sim 2^{k-j}.
\]

## 2. General \(L^p\times L^{p'}\) bound

Let \(2\le p\le\infty\) and \(p'\) be the conjugate exponent.  Bernstein gives

\[
\|\widetilde\Sigma_k(t)\|_{L^p}
\lesssim
2^{k(5/2-3/p)}\|\Delta_k u(t)\|_2 .
\tag{FC-LP.2}
\]

For the active \(H^1\)-stress density,

\[
\|\tau_j^{H^1}(t)\|_{L^{p'}}
\lesssim
2^{j(2+3/p)}\|\Delta_j u(t)\|_2^2 .
\tag{FC-LP.3}
\]

Hence

\[
\mathcal A_{j,k}(t)
\lesssim
2^{k(5/2-3/p)}
2^{j(2+3/p)}
\|\Delta_k u(t)\|_2\|\Delta_j u(t)\|_2^2 .
\tag{FC-LP.4}
\]

After multiplying by the gap kernel \(2^{k-j}\) and rewriting in \(E_k,D_j\),

\[
2^{k-j}\mathcal A_{j,k}(t)
\lesssim
2^{k(5/2-3/p)}
2^{j(-3+3/p)}
E_k(t)^{1/2}D_j(t).
\tag{FC-LP.5}
\]

## 3. The near-edge exponent is invariant

On the lower edge of the far-corona, \(k=j-O(1)\).  In that region the total
dyadic exponent in \((\mathrm{FC\text{-}LP}.5)\) is

\[
\Big(\frac52-\frac3p\Big)
+
\Big(-3+\frac3p\Big)
=
-\frac12 .
\]

So every Hölder exponent leaves the same endpoint structure:

\[
2^{k-j}\mathcal A_{j,k}(t)
\lesssim
C_{C_1,p}\,
2^{-j/2}E_k(t)^{1/2}D_j(t),
\qquad k=j-O(1).
\tag{FC-LP.6}
\]

This is exactly the finite-band endpoint factor \((\mathrm{FC\text{-}LP}.1)\).
Changing \(p\) merely moves weight between the lower strain factor and the
active stress factor; it does not improve the endpoint scale.

## 4. Consequence

The direct factorization route

\[
\mathcal A_{\ell,r}\le U(\ell,t)V(r,t)
\]

cannot be closed from the inherited Euclidean energy surface by a different
spatial Hölder choice.  Near the far-corona lower edge it still asks for control
of

\[
\int_0^T
\sum_{\substack{j\ge N\\ k=j-O(1)}}
2^{-j/2}E_k(t)^{1/2}D_j(t)\,dt .
\tag{FC-LP.7}
\]

Using the energy bound only gives

\[
E_k(t)^{1/2}\le C_E^{1/2}2^k,
\]

and then \((\mathrm{FC\text{-}LP}.7)\) has coefficient
\(2^{j/2}\) near \(k\sim j\), which is not absorbable into the viscous
dissipation.

Thus the direct \(L^p\)-factorization attempt lands on the same endpoint
survivor already isolated in the operator route:

\[
\boxed{
\text{finite-band endpoint / FBE / EP survivor.}
}
\]

If one collapses the entire lower prefix instead of staying near the endpoint,
the same obstruction appears as the dyadic lower-prefix active-square theorem
\((\mathrm{LPAS})\).

## Result

The direct far-corona route is now sharper:

\[
\text{F2S by naive }L^p\text{ factorization}
\quad\text{fails at the finite-band endpoint.}
\]

The remaining exact alternatives are:

\[
\text{prove a genuinely coupled two-scale Carleson theorem not reducible to }
L^p\text{ factorization,}
\]

\[
\text{prove the operator endpoint theorem }(\mathrm{EP})/(\mathrm{FBE}),
\]

or

\[
\text{fall back to the dyadic lower-prefix active-square theorem }(\mathrm{LPAS}).
\]
