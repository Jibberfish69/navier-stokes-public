---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-source-square-spatial-domination-noalias-20260621
  status: exact-noalias-installed-current-inputs-do-not-pay-moving-gauge-set
  proof_role: forward_gold_moving_gauge_supplier_alias_test
  logical_landing_node: moving_gauge_source_square_spatial_domination
  edge_effect: >-
    Tests whether the installed source-square, normalized CKN, or selected
    critical-strain currencies pay the controlled moving-gauge symmetric-difference
    set from the previous criterion. They do not unless upgraded to same-carrier
    spacetime domination on E_j^gauge. Source-square controls a normalized time
    marginal and pays terminal strips by Cauchy-Schwarz; it does not pay a small
    spatial symmetric-difference set with fixed time projection. Critical CKN
    and critical-strain bounds are L1 endpoint currencies at this resolution;
    without strict exponent slack, terminal-tail depletion, or same-carrier
    product domination, they also do not imply uniform integrability on E_j^gauge.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-normalized-ckn-carleson-packing-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-strain-carrier-ui-holder-saturation-test-20260620.md
  downstream_consequence: >-
    Do not alias source-square, CKN visibility, or critical-strain scale payment
    into moving-gauge spatial payment. The exact bridge must be a same-carrier
    spacetime density/UI theorem, a time-marginal source-square theorem plus
    conditional spatial UI on the selected carrier, strict exponent slack, true
    terminal-tail depletion on the same set, strict no-waste, signed saturation
    upgraded to square/spacetime form, or no-drift/profile production.
---

# MPP Forward-Gold Moving-Gauge Source-Square Spatial Domination No-Alias

Date: 2026-06-21

## Status

This note tests whether the existing source-square / normalized CKN / selected
critical-strain surfaces already pay the controlled moving-gauge set

\[
E_j^{gauge}
=
\Delta_j^{gauge}\cap\Omega_j .
\tag{MSS.1}
\]

They do not in their installed form.  The exact reason is that the moving-gauge
defect is spatial inside a parent time slab, while the installed source-square
bridge controls a time marginal.

## 1. What source-square actually gives

The installed source-square bridge uses a normalized time density

\[
G_j(s)
=
r_j^{1/2}T_{k_j}(T_j+r_j^2s)
\tag{MSS.2}
\]

and, after carrier domination,

\[
a_j(s)\le C G_j(s)+\ell_j(s),
\qquad
\sup_j\int_{-1}^{0}G_j(s)^2\,ds<\infty.
\tag{MSS.3}
\]

This pays a terminal time strip because

\[
\int_{-\varepsilon}^{0}a_j(s)\,ds
\le
C\varepsilon^{1/2}
+\int_{-\varepsilon}^{0}\ell_j(s)\,ds.
\tag{MSS.4}
\]

So source-square is exact for the endpoint time-face atom once the selected
carrier domination is in place.

The moving-gauge payment asks for a different estimate:

\[
\mu_j(E_j^{gauge})\to0
\qquad\text{or}\qquad
\sum_j\mu_j(E_j^{gauge})<\infty .
\tag{MSS.5}
\]

The time-marginal estimate pays `(MSS.5)` only when the time projection of
\(E_j^{gauge}\) is small:

\[
\mu_j(E_j^{gauge})
\le
\int_{\pi_s(E_j^{gauge})}a_j(s)\,ds
\le
C|\pi_s(E_j^{gauge})|^{1/2}
+\ell_j(\pi_s(E_j^{gauge})).
\tag{MSS.6}
\]

For a dyadic adjacent-scale moving-gauge defect with \(\lambda_j\equiv1/2\),
the time projection has fixed length \(1/4\).  Then `(MSS.6)` gives boundedness,
not smallness.  It does not see that the spatial symmetric difference may have
small volume.

## 2. Exact countermodel for the alias

Let \(I=[-1/4,0]\), let \(A_j\subset B_1\) have \(|A_j|\downarrow0\), and set

\[
E_j=A_j\times I.
\tag{MSS.7}
\]

Fix \(g\in L^2(I)\), \(g\ge0\), with \(\int_I g(s)\,ds=1\), and define

\[
d\mu_j(s,y)
=
{g(s)\over |A_j|}
\mathbf 1_{A_j}(y)\,dy\,ds.
\tag{MSS.8}
\]

The time marginal is

\[
a_j(s):=\mu_j(\{s\}\times B_1)=g(s),
\qquad
\sup_j\|a_j\|_{L^2(I)}=\|g\|_{L^2(I)}<\infty.
\tag{MSS.9}
\]

But the small spatial set keeps all the mass:

\[
\mu_j(E_j)=1
\qquad\text{while}\qquad
|E_j|=|A_j|\,|I|\to0.
\tag{MSS.10}
\]

Thus the implication

\[
\boxed{
\text{time-marginal source-square}
\Longrightarrow
\text{moving-gauge spatial symmetric-difference payment}
}
\tag{MSS.11}
\]

is false as a measure statement.  This is not a Navier-Stokes solution
construction.  It is the exact no-alias test: a time-square bound cannot be used
as spatial uniform integrability of the same carrier.

## 3. The exact source-square upgrade that would work

Source-square pays \(E_j^{gauge}\) if it is upgraded from a time marginal to a
spacetime domination on the actual selected carrier.  One sufficient form is

\[
d\mu_j
\le
C F_j(s,y)\,dy\,ds+d\ell_j,
\qquad
\sup_j\|F_j\|_{L^p(\Omega_j)}<\infty,
\qquad
p>1,
\tag{MSS.12}
\]

with \(\ell_j(E_j^{gauge})\) legal or tail-small.  Then Hölder gives

\[
\mu_j(E_j^{gauge})
\le
C\|F_j\|_{L^p(\Omega_j)}|E_j^{gauge}|^{1-1/p}
+\ell_j(E_j^{gauge}).
\tag{MSS.13}
\]

Another sufficient form is a disintegration of \(\mu_j\):

\[
d\mu_j(s,y)=\rho_j(s,y)\,dy\,ds,
\qquad
\int_{B_1}\rho_j(s,y)\,dy\le a_j(s),
\tag{MSS.14}
\]

together with conditional spatial uniform integrability:

\[
\int_{E_s}\rho_j(s,y)\,dy
\le
\omega(|E_s|)\,a_j(s)
\quad\text{for all }E_s\subset B_1,
\qquad
\omega(\delta)\downarrow0 .
\tag{MSS.15}
\]

Then

\[
\mu_j(E_j^{gauge})
\le
\int_{\pi_s(E_j^{gauge})}
\omega(|(E_j^{gauge})_s|)\,a_j(s)\,ds.
\tag{MSS.16}
\]

This is the precise meaning of source-square plus spatial selected-carrier
domination.  The current installed source-square bridge supplies `(MSS.3)`, not
`(MSS.12)` or `(MSS.15)`.

## 4. CKN and critical strain have the same no-alias boundary

Normalized CKN visibility controls the critical physical density

\[
|u|^3+|p|^{3/2}
\tag{MSS.17}
\]

only in \(L^1\) at this route resolution.  Finite \(L^1\) mass does not imply
uniform integrability for a moving selected family.  It gives physical mass
control, not unweighted normalized packet-counting or spatial payment on
\(E_j^{gauge}\).

The critical-strain product has the same endpoint issue.  The native product
bound is

\[
a_j(s)
\le
\|\Sigma_j(s)\|_{L_y^{5/2}}
\|W_j(s)\|_{L_y^{10/3}}^2.
\tag{MSS.18}
\]

The exponents are exactly conjugate.  On a shrinking spacetime set \(E_j\), the
functional saturation model

\[
\Sigma_j=|E_j|^{-2/5}\mathbf 1_{E_j},
\qquad
W_j=|E_j|^{-3/10}\mathbf 1_{E_j}
\tag{MSS.19}
\]

has

\[
\|\Sigma_j\|_{L^{5/2}}^{5/2}=1,
\qquad
\|W_j\|_{L^{10/3}}^{10/3}=1,
\tag{MSS.20}
\]

while

\[
\int_{E_j}|\Sigma_j|\,|W_j|^2\,dy\,ds=1.
\tag{MSS.21}
\]

So critical-strain and velocity bounds at the conjugate exponents do not pay
small \(E_j^{gauge}\) unless one adds strict exponent slack, terminal-tail
depletion of one factor on the same selected set, direct product/source-square
control, or no-waste rigidity.

## Verdict

The moving-gauge branch has no valid shortcut through the existing
source-square, CKN, or critical-strain currencies.

\[
\boxed{
\text{time-marginal source-square / CKN visibility / critical-strain scale payment}
\ne
\text{same-carrier spacetime payment on }E_j^{gauge}.
}
\tag{MSS.22}
\]

The exact bridge that remains is one of:

\[
\boxed{
\begin{gathered}
\text{same-carrier spacetime }L^p\text{ or Orlicz UI on }E_j^{gauge},\\
\text{source-square plus conditional spatial UI of the selected carrier},\\
\text{strict exponent slack or true terminal-tail depletion on the same set},\\
\text{strict no-waste / square-synchronous saturation},\\
\text{or no-drift/profile production.}
\end{gathered}
}
\tag{MSS.23}
\]

This note does not prove the gold route.  It removes a false alias: the
installed source-square and critical currencies are not already the moving-gauge
spatial payment theorem.
