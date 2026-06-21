---
ns_viewer:
  theorem_id: forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621
  status: direct-test-complete-negative-source-norm-visible-not-square-reserve
  proof_role: forward_gold_actual_nonlinear_source_norm_test
  logical_landing_node: exact_nonlinear_source_norm_upgrade
  edge_effect: "Tests the actual Leray-projected nonlinear source from the exact Duhamel split. Energy-class interpolation gives a genuine bound on N=-P div(v tensor v) in L_s^(5/3) W_y^(-1,5/3) on any normalized cylinder where the scale-invariant local energy and dissipation are bounded. This is a real Navier-Stokes estimate, not a model. It gives a terminal strip modulus for the linear negative source norm by Holder, but not for the 5/3-power action density and not for the selected positive native carrier. It does not dominate the same-carrier source-square reserve or the mixed analytic tower radius, and localization adds heat/cutoff and Leray/cutoff commutators. The missing upgrade is still a square-strength same-carrier theorem or strict no-waste/profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-production-finality-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-supplier-direct-test-20260619.md
  downstream_consequence: "Do not use the energy-class nonlinear source norm as a same-carrier square reserve. It is a correct visibility estimate for the projected source in a negative Sobolev currency. The forward-gold proof still needs SelectedCarrierEndpointUI.A, SourceSquareReserve.A plus carrier domination, SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A with terminal-tail depletion, StrictRescaledNoWasteLyapunov.A, or MinimalZenoProfileProduction.A."
---

# MPP Forward-Gold Exact Nonlinear Source-Norm Upgrade Test

Date: 2026-06-21

## Status

This note tests the strongest source estimate obtained directly from the exact
Navier-Stokes Duhamel split and the energy-class interpolation. The tested
source is the actual projected nonlinearity

\[
N:=-\mathbb P\nabla\cdot(v\otimes v).
\tag{NSU.1}
\]

The result is:

\[
\boxed{
\text{energy gives a negative-order source norm for }N,
\text{ not the same-carrier square reserve.}
}
\tag{NSU.2}
\]

This is an exact Navier-Stokes estimate. It is not a linear approximation.

## 1. Exact source estimate on one normalized cylinder

Let \(Q=I\times B\) be a fixed normalized cylinder and assume the local
scale-invariant energy bound

\[
E_Q
:=
\sup_{s\in I}\|v(s)\|_{L^2(B)}^2
+
\int_I\|\nabla v(s)\|_{L^2(B)}^2\,ds
<\infty.
\tag{NSU.3}
\]

With harmless enlargement of \(B\), Sobolev interpolation gives

\[
\|v\|_{L^{10/3}(Q)}^{10/3}
\le
C
\left(\sup_{s\in I}\|v(s)\|_{L^2(B)}^2\right)^{2/3}
\int_I\|\nabla v(s)\|_{L^2(B)}^2\,ds.
\tag{NSU.4}
\]

Thus

\[
v\otimes v\in L^{5/3}(Q),
\qquad
\|v\otimes v\|_{L^{5/3}(Q)}^{5/3}
=
\|v\|_{L^{10/3}(Q)}^{10/3}
\le
C E_Q^{5/3}.
\tag{NSU.5}
\]

Since \(\mathbb P\nabla\cdot\) maps \(L^{5/3}\) to
\(W^{-1,5/3}\),

\[
\boxed{
\|N\|_{L_s^{5/3}W_y^{-1,5/3}(Q)}
\le
C E_Q.
}
\tag{NSU.6}
\]

This is the exact energy-class source visibility theorem.

## 2. What this estimate actually buys

If \(E_Q\) is uniformly bounded on a selected normalized family, then Hölder
gives a terminal strip modulus for the linear negative source norm:

\[
\lim_{\theta\downarrow0}
\sup_Q
\int_{I\cap(-\theta,0)}
\|N(s)\|_{W^{-1,5/3}(B)}\,ds
=0.
\tag{NSU.7}
\]

Indeed,

\[
\int_{I\cap(-\theta,0)}
\|N(s)\|_{W^{-1,5/3}(B)}\,ds
\le
\theta^{2/5}
\|N\|_{L_s^{5/3}W_y^{-1,5/3}(Q)}.
\tag{NSU.7a}
\]

So the actual nonlinear source is not invisible in every topology. It is
visible in the linear negative Sobolev source norm forced by the energy class.

This does not give a terminal strip modulus for the action density
\(\|N(s)\|_{W^{-1,5/3}}^{5/3}\). A bounded \(L^1_s\) family of those powers
can still concentrate at the endpoint.

The gold target is stronger. It needs endpoint control of the selected positive
native carrier, or a square-strength substitute such as

\[
\int_I \lambda\,F_\lambda(s)^2\,ds
\le
\text{small tail}+\text{legal},
\tag{NSU.8}
\]

where \(F_\lambda\) is the selected positive carrier after localization,
projection, positive-part extraction, and legal exits.

Formula `(NSU.6)` does not imply `(NSU.8)`.

## 3. Why the implication fails at the exact level

The negative source norm controls the distribution

\[
N=-\mathbb P\nabla\cdot(v\otimes v).
\tag{NSU.9}
\]

The native selected carrier is not this norm. It is a one-sided local object of
the form

\[
\Phi_j^+(s)
=
\int
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+dx.
\tag{NSU.10}
\]

Three operations separate `(NSU.9)` from `(NSU.10)`:

\[
\boxed{
\text{localization/cutoff, Leray projection, and positive-part selection.}
}
\tag{NSU.11}
\]

After localization, the exact projected source identity contains a commutator.
For

\[
L F:=\mathbb P\nabla\cdot F,
\qquad
F=v\otimes v,
\tag{NSU.12}
\]

one has

\[
\eta\,L F
=
L(\eta F)+[\eta,L]F,
\qquad
[\eta,L]F:=\eta L F-L(\eta F).
\tag{NSU.13}
\]

Thus the selected local source is not obtained from the global projected source
by multiplication with \(\eta\). The commutator is exactly one of the legal or
same-carrier terms that must be paid.

The positive part is also not controlled by a signed negative norm. A signed
distribution can be small in \(W^{-1,5/3}\) while its localized positive
projection remains large unless one proves a same-carrier polar/saturation
theorem.

## 4. Heat smoothing from this norm is still radius-losing

The terminal Duhamel term is

\[
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}N(\sigma)\,d\sigma.
\tag{NSU.14}
\]

For a derivative of order \(k\), the heat estimate from
\(W^{-1,5/3}\) to \(L^2\) has a singular factor:

\[
\|\nabla^k e^{\nu r\Delta}f\|_{L^2}
\le
C_{k,\nu}
r^{-\gamma_k}
\|f\|_{W^{-1,5/3}},
\qquad
\gamma_k={3\over20}+{k+1\over2}.
\tag{NSU.15}
\]

The exponent comes from the \(L^{5/3}\to L^2\) heat gain and the additional
\(k+1\) derivatives needed to pass from \(W^{-1,5/3}\) to \(L^2\).

For the base derivative \(k=0\),

\[
\gamma_0={13\over20}.
\tag{NSU.16}
\]

The factor \(r^{-13/20}\) is not controlled by Hölder against an
\(L_s^{5/3}W_y^{-1,5/3}\) source on a terminal slab. The conjugate exponent is
\(5/2\), and

\[
\int_0^\theta r^{-(13/20)(5/2)}\,dr
=
\int_0^\theta r^{-13/8}\,dr
=\infty .
\tag{NSU.17}
\]

The endpoint \(k=0\) Hölder calculation therefore gives no finite bound:

\[
\int_0^\theta r^{-13/20}\|N(-r)\|_{W^{-1,5/3}}\,dr
\le
\left(\int_0^\theta r^{-13/8}\,dr\right)^{2/5}
\|N\|_{L_s^{5/3}W_y^{-1,5/3}},
\tag{NSU.18}
\]

so the endpoint estimate at this strength is not even a clean bounded
\(L^2\)-smoothing statement without additional time structure.

For weaker target spaces or older material with a positive gap \(r\ge\theta\),
heat smoothing is available. For the terminal face and the mixed analytic
tower, this negative source norm is not a uniform radius supplier.

## 5. Correct consequence

The exact conclusion is not that the projected source is uncontrolled. It is
controlled in the wrong currency:

\[
\boxed{
N\in L_s^{5/3}W_y^{-1,5/3}
\quad\text{is visibility, not same-carrier square coercion.}
}
\tag{NSU.19}
\]

The missing upgrade is:

\[
\boxed{
\text{negative-order projected source visibility}
\Longrightarrow
\text{selected same-carrier endpoint UI or square reserve}.
}
\tag{NSU.20}
\]

That implication is exactly where localization, projection, positive-part
selection, and terminal time concentration remain unpaid.

## Verdict

The actual nonlinear Duhamel source gives one exact estimate:

\[
\boxed{
\|-\mathbb P\nabla\cdot(v\otimes v)\|_{L_s^{5/3}W_y^{-1,5/3}}
\le
C E_Q.
}
\tag{NSU.21}
\]

This does not close the gold route. It leaves the same non-aliased suppliers:

\[
\boxed{
\text{SelectedCarrierEndpointUI.A,\quad SourceSquareReserve.A with carrier
domination,\quad SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A,
\quad StrictRescaledNoWasteLyapunov.A,\quad MinimalZenoProfileProduction.A.}
}
\tag{NSU.22}
\]
