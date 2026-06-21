---
ns_viewer:
  theorem_id: forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621
  status: exact-source-square-to-spacetime-ui-bridge-installed-forward-gold-not-proved
  proof_role: forward_gold_source_square_same_carrier_spacetime_ui_bridge
  logical_landing_node: source_square_domination_same_carrier_spacetime_ui
  edge_effect: >-
    Installs the exact spacetime version of the source-square consumer bridge.
    If the actual selected native positive carrier has a density dominated by a
    square-controlled same-carrier density plus a legal residue with its own
    uniform absolute-continuity modulus, then the selected carrier measures are
    uniformly absolutely continuous on arbitrary controlled spacetime subsets.
    This pays both terminal strip UI and the controlled sparse gauge-defect UI
    needed by the moving-gauge branch. The note does not produce the square
    bound or the same-carrier domination from Navier-Stokes; those remain the
    genuine source-square / selected critical-strain / normalized CKN / no-waste /
    signed-saturation production burden.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-ui-sparse-gauge-defect-summability-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
  downstream_consequence: >-
    Source-square should now be cited in two exact consumer forms: terminal time
    strip modulus and spacetime same-carrier UI. Both require the actual selected
    native carrier to be dominated on the same carrier by the square-controlled
    density. Without that domination, source-square tail control may live on a
    different packet, sign, projection, cutoff, or donor channel and does not pay
    the selected carrier.
---

# MPP Forward-Gold Source-Square Domination To Same-Carrier Spacetime UI

Date: 2026-06-21

## Status

This note records the spacetime form of the source-square bridge. The older
moving-trace note proves the terminal time-strip modulus. The same argument,
with arbitrary small spacetime sets in place of terminal strips, gives the
uniform absolute-continuity input needed by the sparse moving-gauge branch.

The exact implication is:

\[
\boxed{
\text{same-carrier source-square domination}
\Longrightarrow
\text{same-carrier spacetime UI}.
}
\tag{SSI.1}
\]

This is a consumer bridge. It does not produce the square density or identify it
with the native selected carrier.

## 1. Controlled carrier measures

Let \(\Omega_j\subset[-1,0]\times B_R\) be the controlled normalized spacetime
domain for the \(j\)-th selected carrier. Let \(\mu_j\) be the actual selected
native positive carrier measure on \(\Omega_j\).

Assume that, after legal exits are separated, \(\mu_j\) is represented by

\[
d\mu_j=a_j(s,y)\,dy\,ds,
\qquad
a_j\ge0.
\tag{SSI.2}
\]

Let \(G_j\ge0\) be the square-controlled same-carrier density. The precise
same-carrier domination hypothesis is

\[
a_j(s,y)
\le
C_{\rm car}G_j(s,y)+\ell_j(s,y)
\qquad
\text{on }\Omega_j,
\tag{SSI.3}
\]

where \(C_{\rm car}<\infty\) is independent of \(j\), and \(\ell_j\ge0\) is a
legal residue.

Assume the square bound

\[
\sup_j
\int_{\Omega_j}G_j(s,y)^2\,dy\,ds
\le
C_{\square}<\infty.
\tag{SSI.4}
\]

Assume also that the legal residues have a uniform absolute-continuity modulus:

\[
\omega_{\rm legal}(\delta)
:=
\sup_j\sup_{\substack{E\subset\Omega_j\\ |E|\le\delta}}
\int_E\ell_j(s,y)\,dy\,ds
\longrightarrow0
\qquad(\delta\downarrow0).
\tag{SSI.5}
\]

## 2. Uniform absolute continuity

Let \(E\subset\Omega_j\) be measurable. By `(SSI.3)`,

\[
\mu_j(E)
\le
C_{\rm car}\int_EG_j\,dy\,ds
+
\int_E\ell_j\,dy\,ds.
\tag{SSI.6}
\]

Cauchy-Schwarz gives

\[
\int_EG_j\,dy\,ds
\le
|E|^{1/2}
\left(
\int_{\Omega_j}G_j^2\,dy\,ds
\right)^{1/2}
\le
C_{\square}^{1/2}|E|^{1/2}.
\tag{SSI.7}
\]

Therefore

\[
\boxed{
\mu_j(E)
\le
C_{\rm car}C_{\square}^{1/2}|E|^{1/2}
+
\omega_{\rm legal}(|E|).
}
\tag{SSI.8}
\]

Taking the supremum over \(j\) and all measurable \(E\subset\Omega_j\) with
\(|E|\le\delta\), `(SSI.8)` gives

\[
\boxed{
\sup_j\sup_{\substack{E\subset\Omega_j\\ |E|\le\delta}}
\mu_j(E)
\le
C_{\rm car}C_{\square}^{1/2}\delta^{1/2}
+
\omega_{\rm legal}(\delta)
\longrightarrow0.
}
\tag{SSI.9}
\]

This is exactly same-carrier spacetime uniform absolute continuity.

## 3. Terminal strip modulus as a special case

For a terminal strip

\[
E_\theta:=\Omega_j\cap\{-\theta<s<0\},
\tag{SSI.10}
\]

the estimate becomes

\[
\mu_j(E_\theta)
\le
C_{\rm car}C_{\square}^{1/2}|E_\theta|^{1/2}
+
\omega_{\rm legal}(|E_\theta|).
\tag{SSI.11}
\]

On a fixed normalized spatial carrier, \(|E_\theta|\le C_R\theta\), so

\[
\lim_{\theta\downarrow0}\limsup_j\mu_j(E_\theta)=0.
\tag{SSI.12}
\]

This recovers the terminal moving-packet trace modulus.

## 4. Sparse gauge-defect payment as a special case

For the sparse moving-gauge controlled defect

\[
E_k^{gauge}
=
\Omega_{j_k}\cap
\left[
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)
\times[-\Lambda_k^2,0]
\right],
\tag{SSI.13}
\]

the geometric estimate gives

\[
|E_k^{gauge}|
\le
C_0\Lambda_k^5.
\tag{SSI.14}
\]

Using `(SSI.9)`, choose the sparse gaps so that

\[
C_{\rm car}C_{\square}^{1/2}(C_0\Lambda_k^5)^{1/2}
+
\omega_{\rm legal}(C_0\Lambda_k^5)
\le2^{-k}.
\tag{SSI.15}
\]

This is possible because \(\Lambda_k\) can be made arbitrarily small along an
infinite retained scale tail. Then

\[
\mu_{j_k}(E_k^{gauge})\le2^{-k},
\qquad
\sum_k\mu_{j_k}(E_k^{gauge})<\infty.
\tag{SSI.16}
\]

Thus source-square domination pays the controlled sparse gauge-defect sum.

## 5. What remains unproved

The bridge above requires the actual selected native carrier to satisfy the
same-carrier domination `(SSI.3)`. This is exactly the previously isolated wall:
the square-controlled density must be on the same packet, after the same
localization, projection, weighting, positive-part extraction, and selector
choice as the native carrier.

Without `(SSI.3)`, source-square control may apply to a different tail, sign,
projection, cutoff, or donor channel, and `(SSI.8)` says nothing about
\(\mu_j\).

Therefore the remaining production burden is:

\[
\boxed{
\text{SelectedSourceSquareCarrierDomination.A}
\quad+\quad
\text{SourceSquareReserve.A}
}
\tag{SSI.17}
\]

or an equivalent producer such as selected critical-strain/normalized CKN
carrier UI, strict no-waste, square-synchronous signed saturation, or profile
production.

## Verdict

\[
\boxed{
\text{Source-square domination of the actual selected carrier gives spacetime UI.}
}
\tag{SSI.18}
\]

\[
\boxed{
\text{The current open wall is production and same-carrier identification,
not the Cauchy-Schwarz UI step.}
}
\tag{SSI.19}
\]
