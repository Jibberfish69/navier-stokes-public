---
theorem_id: forward-gold-no-free-terminal-zeno-fourbody-direct-attempt-20260621
status: direct-fourbody-attempt-reduces-to-terminal-trace-ac-or-strict-nowaste
logical_landing_node: no_free_terminal_zeno_fourbody_direct_attempt
edge_effect: "Runs the upgraded four-body loop directly against NoFreeTerminalZenoDonorChain.A. After the finite donor/legal branches and supplement criteria are installed, the closed same-carrier loop gives the right terminal strip inequality only if the four-body storage and legal residual have terminal absolute continuity. Without that trace AC, the selected source curve can concentrate as a last-instant atom paid by a storage jump at the terminal face. Thus the direct four-body attack does not close the theorem from current inputs; it reduces the production theorem to FourBodyTerminalTraceAC.A or equivalently a strict no-waste Lyapunov/unweighted reserve on the same selected carrier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-zeno-unweighted-reserve-normal-form-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-precauchy-remainder-fourbody-reduction-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-source-residue-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# No-Free Terminal Zeno Four-Body Direct Attempt

Date: 2026-06-21

## 0. Aim

This note runs the upgraded four-body loop directly against

\[
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NF4.1}
\]

At the reduced donor-chain resolution, this theorem is endpoint uniform
integrability for the donor-produced selected positive source curve.  The
question is whether the closed four-body balance itself proves that endpoint
modulus.

It does not close from current inputs.  The attempt reduces the theorem to a
terminal trace absolute-continuity or strict no-waste statement for the summed
four-body storage.

## 1. Reduced donor-chain source curve

After finite signed partners, legal exits, finite donor trees, and entrance
leaves have been paid, the remaining branch has normalized selected source
marginals

\[
a_m(s)\,ds,
\qquad
-1\le s\le0,
\qquad
a_m\ge0,
\tag{NF4.2}
\]

with retained mass

\[
\int_{-1}^{0}a_m(s)\,ds\ge c_0>0.
\tag{NF4.3}
\]

The first-pulse/no-parent reduction forces any retained mass toward the terminal
face:

\[
\lim_{m\to\infty}
\int_{-1}^{-b}a_m(s)\,ds=0
\qquad
\text{for every }b>0.
\tag{NF4.4}
\]

Define the terminal cumulative curve

\[
M_m(\theta)=\int_{-\theta}^{0}a_m(s)\,ds.
\tag{NF4.5}
\]

The no-free theorem is exactly

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
M_m(\theta)=0.
}
\tag{NF4.6}
\]

Failure of `(NF4.6)` is the terminal time-face atom.

## 2. Closed four-body strip inequality

Assume the same-carrier supplement criteria have all been installed so the
actual selected source curve is part of a closed four-body exchange.  The
summed loop has measure form

\[
dL_{4B,m}
+
dD_{4B,m}
+
c\,dA_m
\le
dR_{m},
\qquad
c>0,
\qquad
dD_{4B,m}\ge0,
\tag{NF4.7}
\]

where \(dA_m=a_m(s)\,ds\) is the selected positive carrier on the reduced
branch and \(R_m\) is legal/charged residual.

Integrating `(NF4.7)` on the terminal strip \((-\theta,0]\) gives

\[
L_{4B,m}(0)-L_{4B,m}(-\theta)
+
D_{4B,m}((-\theta,0])
+
cA_m((-\theta,0])
\le
R_m((-\theta,0]).
\tag{NF4.8}
\]

Therefore

\[
\boxed{
cM_m(\theta)
\le
R_m((-\theta,0])
+
L_{4B,m}(-\theta)-L_{4B,m}(0).
}
\tag{NF4.9}
\]

The nonnegative drain has dropped out on the good side.  The endpoint source
curve is controlled exactly by terminal legal mass plus terminal storage drop.

## 3. Exact sufficient trace theorem

Thus `(NF4.6)` follows if

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
R_m((-\theta,0])=0
}
\tag{NF4.10}
\]

and

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\left[
L_{4B,m}(-\theta)-L_{4B,m}(0)
\right]_+
=0.
}
\tag{NF4.11}
\]

This is the precise direct four-body supplier:

\[
\boxed{
\text{FourBodyTerminalTraceAC.A}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NF4.12}
\]

It is a terminal trace theorem for the summed same-carrier four-body storage and
legal residual.

## 4. Why current inputs do not prove the trace theorem

The current physical and local energy ledgers give finite storage and finite
legal mass, not terminal absolute continuity of the normalized strip in
`(NF4.10)`--`(NF4.11)`.

A bounded-variation storage can have a terminal downward jump:

\[
L_m(s)=L_0-a\,{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{NF4.13}
\]

Then

\[
L_m(-\theta)-L_m(0)=a
\tag{NF4.14}
\]

for every fixed \(\theta>0\) and all large \(m\).  This storage jump can pay a
terminal source curve of the form

\[
a_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s).
\tag{NF4.15}
\]

The total variation is finite, and the source mass is finite, but endpoint
uniform integrability fails:

\[
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=a.
\tag{NF4.16}
\]

This is not a constructed Navier-Stokes solution.  It is the exact normal form
showing why finite \(L^1_s\) source mass or finite BV storage is weaker than
the trace theorem `(NF4.10)`--`(NF4.11)`.

## 5. Relation to strict no-waste

If the four-body storage is a bounded-below Lyapunov functional with strict
drop

\[
-{d\over d\sigma}L_{4B}(\sigma)
\ge
c\,\mathcal A_{\rm sel}(\sigma)
-
\mathcal R_{\rm legal}(\sigma),
\qquad
\mathcal R_{\rm legal}\in L^1_\sigma,
\tag{NF4.17}
\]

then integration gives an unweighted reserve and hence `(NF4.6)`.

So strict no-waste is stronger than terminal trace AC:

\[
\boxed{
\text{StrictFourBodyNoWasteLyapunov.A}
\Longrightarrow
\text{FourBodyTerminalTraceAC.A}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NF4.18}
\]

The current rescaled local energy identity does not have the sign in
`(NF4.17)`.  Pressure, convection, cutoff, commutator, and selected positive
source terms still prevent the summed object from being an installed
monotone/no-waste functional.

## 6. Current state

The direct upgraded four-body attempt does not prove
`NoFreeTerminalZenoDonorChain.A` from current inputs.

It sharpens the production theorem to one exact trace statement:

\[
\boxed{
\text{FourBodyTerminalTraceAC.A}
:
R_m((-\theta,0])
+
\left[L_{4B,m}(-\theta)-L_{4B,m}(0)\right]_+
\to0
\text{ uniformly as }\theta\downarrow0.
}
\tag{NF4.19}
\]

Equivalently, one may prove the stronger strict no-waste/unweighted reserve
`(NF4.17)`.

Thus the four-body loop is now fully engaged: tower, participation,
compactness, and geometry can pay the terminal Zeno donor chain only if their
summed same-carrier storage has no terminal jump, or if the legal/defect
measure records that jump as a charged exit.  Without that, the last-instant
source pulse remains exactly the allowed endpoint atom.
