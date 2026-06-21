---
ns_viewer:
  theorem_id: forward-gold-projected-source-atom-to-finite-rung-field-face-20260621
  status: exact-projected-source-atom-field-consumer-installed
  proof_role: forward_gold_projected_source_atom_cm_field_consumer
  logical_landing_node: projected_source_atom_to_finite_rung_field_face
  edge_effect: >-
    Installs the direct finite-rung Field consumer for a terminal atom that is
    already identified with the actual projected Navier-Stokes source
    N=-P div(v tensor v). If Pack_Q and Part_N,Q are retained and a positive
    finite-rung Field_N,rho,Q certificate gives ess sup_I ||v_m||_{H_F^(gamma+1)}
    <= C for some gamma>5/2, then ||N_m||_infty <= C_inf,gamma C_alg,gamma+1 C^2.
    Therefore the selected projected-source marginal A_m(s)=int [sigma_m dot
    N_m]_+ is uniformly bounded, and int_I A_m <= C theta_m -> 0. This
    contradicts any projected-source terminal atom of fixed mass. Thus a
    projected-source atom lands as not Pack_Q, not Part_N,Q, or forall rho>0
    not Field_N,rho,Q after same-witness admission. This does not identify the
    native positive pre-Cauchy carrier with the projected source.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-atom-forces-finite-order-readout-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-branch-sobolev-tower-blowup-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-sobolev-branch-to-cm-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-threshold-margin-selector-capture-fork-20260621.md
  downstream_consequence: >-
    The projected-source terminal atom no longer needs to pass through the
    tensor/height/gradient split once finite-rung Field is retained: the
    projected source itself is a finite-order expression of v. The remaining
    forward-gold work is to produce endpoint UI/source-square/no-waste on the
    actual native selected carrier, or to prove the bridge identifying that
    native carrier with the projected-source atom modulo legal residue.
---

# MPP Forward-Gold Projected Source Atom To Finite-Rung Field Face

Date: 2026-06-21

## Status

This note consumes a terminal atom only after the atom has been identified with
the actual projected Navier-Stokes source

\[
N_m=-\mathbb P\nabla\cdot(v_m\otimes v_m)
\tag{PSF.1}
\]

on the same normalized witness windows.

It does not identify the native positive pre-Cauchy carrier with `(PSF.1)`.
That remains a separate signed/localization/projection bridge.

The exact consumer statement is:

\[
\boxed{
\text{projected-source terminal atom}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}^{finite\text{-}rung}
}
\tag{PSF.2}
\]

after same-witness CM-test admission.

## 1. Projected-source atom

Work on the normalized torus

\[
\mathbb T^3=[0,2\pi]^3,
\qquad
V:=|\mathbb T^3|.
\tag{PSF.3}
\]

Let \(I_m\subset[-1,0]\) be terminal strips with

\[
\theta_m:=|I_m|\downarrow0.
\tag{PSF.4}
\]

Let \(|\sigma_m|=1\), and define the selected projected-source marginal

\[
A_m(s)
:=
\int_{\mathbb T^3}
[\sigma_m\cdot N_m(s,y)]_+\,dy.
\tag{PSF.5}
\]

The projected-source terminal atom condition is

\[
\int_{I_m}A_m(s)\,ds\ge a>0.
\tag{PSF.6}
\]

## 2. Field input

Assume the same terminal object has been admitted to the CM witness test.

Failure to put the normalized windows on a compatible same-fluid carrier is
\(\neg Pack_Q\).  Failure to write the differentiated
pressure-viscosity-incompressibility law for the same solution through the
needed depth is \(\neg Part_{N,Q}\).

Now retain both \(Pack_Q\) and \(Part_{N,Q}\), and suppose there is a positive
finite-rung \(Field_{N,\rho,Q}\) certificate at depth high enough to control the
following Sobolev rung.  Fix \(\gamma>5/2\).  The installed finite-rung Field
meaning gives a constant \(C_{\gamma,\rho,Q}<\infty\) such that

\[
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H_F^{\gamma+1}(\mathbb T^3)}
\le
C_{\gamma,\rho,Q}
\tag{PSF.7}
\]

along the retained terminal subsequence.

## 3. The projected source is then uniformly bounded

For the actual projected source `(PSF.1)`, the Fourier estimate already used in
the gradient-branch Sobolev note gives

\[
\|N_m(s)\|_{H_F^\gamma}
\le
\|v_m(s)\otimes v_m(s)\|_{H_F^{\gamma+1}}.
\tag{PSF.8}
\]

Let \(C_{\mathrm{alg},\gamma+1}\) be the finite algebra constant

\[
\|f\otimes f\|_{H_F^{\gamma+1}}
\le
C_{\mathrm{alg},\gamma+1}\|f\|_{H_F^{\gamma+1}}^2.
\tag{PSF.9}
\]

Combining `(PSF.7)` through `(PSF.9)`,

\[
\|N_m(s)\|_{H_F^\gamma}
\le
C_{\mathrm{alg},\gamma+1}C_{\gamma,\rho,Q}^2
\quad\text{for a.e. }s\in I_m.
\tag{PSF.10}
\]

Since \(\gamma>3/2\), Sobolev embedding on the fixed torus gives a finite
constant \(C_{\infty,\gamma}\) with

\[
\|h\|_{L^\infty(\mathbb T^3)}
\le
C_{\infty,\gamma}\|h\|_{H_F^\gamma(\mathbb T^3)}.
\tag{PSF.11}
\]

Thus

\[
\|N_m(s)\|_{L^\infty}
\le
C_{\infty,\gamma}C_{\mathrm{alg},\gamma+1}C_{\gamma,\rho,Q}^2
\quad\text{for a.e. }s\in I_m.
\tag{PSF.12}
\]

Consequently,

\[
\begin{aligned}
A_m(s)
&\le
\int_{\mathbb T^3}|N_m(s,y)|\,dy\\
&\le
V C_{\infty,\gamma}C_{\mathrm{alg},\gamma+1}C_{\gamma,\rho,Q}^2
\end{aligned}
\tag{PSF.13}
\]

for almost every \(s\in I_m\).

## 4. Contradiction with a terminal atom

Integrating `(PSF.13)` over \(I_m\) gives

\[
\int_{I_m}A_m(s)\,ds
\le
\theta_m
V C_{\infty,\gamma}C_{\mathrm{alg},\gamma+1}C_{\gamma,\rho,Q}^2.
\tag{PSF.14}
\]

The right-hand side tends to \(0\), while `(PSF.6)` says the same quantity is at
least \(a>0\).  This is impossible.

Therefore, under retained \(Pack_Q\) and \(Part_{N,Q}\),

\[
\boxed{
\text{projected-source terminal atom}
\Longrightarrow
\forall\rho>0\,\neg Field_{N,\rho,Q}^{finite\text{-}rung}.
}
\tag{PSF.15}
\]

Together with the Pack and Part alternatives, this proves `(PSF.2)`.

## 5. Boundary

This note consumes only a terminal atom already written as the selected
positive marginal of the projected Navier-Stokes source `(PSF.1)`.

It does not prove the bridge

\[
\boxed{
\text{native positive pre-Cauchy carrier}
\Longrightarrow
\text{projected-source atom modulo legal residue.}
}
\tag{PSF.16}
\]

It also does not produce the forward-gold reserve:

\[
\boxed{
\text{same-carrier source-square, endpoint UI, strict no-waste, or profile
production.}
}
\tag{PSF.17}
\]

Its role is to remove a possible CM-facing escape: once a selected terminal
atom is genuinely the projected nonlinear source on the same witness, finite
rung Field control cannot coexist with it.

## Verdict

The projected-source terminal atom is a finite-rung Field-face object:

\[
\boxed{
\int_{I_m}\int_{\mathbb T^3}[\sigma_m\cdot N_m]_+\,dy\,ds\ge a
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}^{finite\text{-}rung}.
}
\tag{PSF.18}
\]

The remaining gold burden is upstream of this consumer: identify or dominate
the actual native selected positive carrier by this projected-source object, or
produce source-square/no-waste/profile control directly on the native carrier.
