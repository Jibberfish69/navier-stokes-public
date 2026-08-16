# Euler datum-to-whole-terminal intersection: exact BKM reduction

Date: 2026-08-07

Status: rigorous reduction and surface audit. The arbitrary-smooth-data three-dimensional Euler producer remains an open theorem target. The two-dimensional Euler producer closes globally.

## 1. Target

Let \(\Omega=\mathbb R^3\) or \(\mathbb T^3\). Let \(u_0\in H^\infty(\Omega)\) be divergence free and let \((u,p)\) be the maximal classical incompressible Euler history

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=0,
\qquad \nabla\cdot u=0,
\qquad u(0)=u_0,
\]

on \([0,T_*)\). Define the whole-terminal compatible mixed intersection

\[
\mathcal I_E(T_*):=\bigcap_{r,m<\infty}H^r(0,T_*;H^m(\Omega)).
\]

The desired producer is

\[
u_0\in H^\infty_{\rm div}
\Longrightarrow
u\in\mathcal I_E(T_*)
\quad\text{for every finite candidate }T_*.
\tag{EWI.1}
\]

## 2. Exact equivalence theorem

For a finite maximal classical horizon \(T_*<\infty\), the following statements are equivalent.

1. \(u\in\mathcal I_E(T_*)\).
2. For every finite \(m\), \(u\in L^\infty(0,T_*;H^m)\).
3. For one, hence every, integer \(s>5/2\), \(\sup_{t<T_*}\|u(t)\|_{H^s}<\infty\).
4. The Beale--Kato--Majda terminal integral is finite:
   \[
   \int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty,
   \qquad \omega=\nabla\times u.
   \tag{EWI.2}
   \]
5. The history has a common \(H^\infty\) endpoint and a smooth same-history continuation beyond \(T_*\).

### Proof: (1) implies (2)

For each \(m\), the intersection contains \(u\in H^1(0,T_*;H^m)\). The vector-valued one-dimensional Sobolev trace theorem gives

\[
H^1(0,T_*;H^m)\hookrightarrow C([0,T_*];H^m),
\]

hence a finite \(L_t^\infty H_x^m\) norm and a strong endpoint trace at that level.

### Proof: (2) implies (3)

Immediate by selecting any integer \(s>5/2\).

### Proof: (3) implies all spatial rows

For every integer \(m\ge s\), the standard differentiated Euler estimate gives

\[
\frac12\frac d{dt}\|u\|_{H^m}^2
\le C_m\|\nabla u\|_{L^\infty}\|u\|_{H^m}^2.
\tag{EWI.3}
\]

Since \(s>5/2\), Sobolev embedding gives

\[
\|\nabla u\|_{L^\infty}\le C_s\|u\|_{H^s}.
\]

A uniform \(H^s\) bound on the finite interval therefore gives

\[
\sup_{t<T_*}\|u(t)\|_{H^m}
\le
\|u_0\|_{H^m}
\exp\!\left(C_mT_*\sup_{t<T_*}\|u(t)\|_{H^s}\right)<\infty.
\tag{EWI.4}
\]

Thus one terminal high-Sobolev bound propagates every spatial row carried by the smooth datum.

### Proof: spatial rows generate every temporal and mixed row

Set \(V_n=\partial_t^nu\). The pressure-normalized Euler recurrence is

\[
V_{n+1}
=-\sum_{a=0}^{n}\binom na\mathbb P\bigl((V_a\cdot\nabla)V_{n-a}\bigr),
\tag{EWI.5}
\]

with pressure supplied by the Riesz-transform law on \(\mathbb R^3\) or \(\mathbb T^3\). If \(V_0,\ldots,V_n\) are uniformly bounded in every spatial Sobolev space, Sobolev multiplication applied to (EWI.5) places \(V_{n+1}\) uniformly in every finite \(H^m\), after spending a finite derivative margin. Induction gives

\[
\partial_t^n u\in L^\infty(0,T_*;H^m)
\quad\text{for every finite }n,m.
\tag{EWI.6}
\]

Since \(T_*<\infty\), each such row belongs to \(L^2_tH^m_x\). Hence

\[
 u\in\bigcap_{r,m<\infty}H^r(0,T_*;H^m)=\mathcal I_E(T_*).
\tag{EWI.7}
\]

This proves (3) implies (1).

### BKM equivalence

The Beale--Kato--Majda continuation theorem gives

\[
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\quad(s>5/2),
\tag{EWI.8}
\]

and hence smooth continuation. Conversely, any uniform sufficiently high Sobolev row gives a uniform \(L^\infty\) vorticity bound by Sobolev embedding, so the finite time interval gives (EWI.2). This establishes the equivalence of (2)--(5), and the preceding steps include (1).

Therefore the compatible-intersection formulation and BKM are two exact interfaces for the same terminal obstruction on a classical three-dimensional Euler history:

\[
\boxed{
\mathcal I_E(T_*)
\Longleftrightarrow
\int_0^{T_*}\|\omega(t)\|_\infty\,dt<\infty
\Longleftrightarrow
\text{smooth endpoint and continuation}.}
\tag{EWI.9}
\]

## 3. The missing datum theorem in sharp form

The original target (EWI.1) is therefore equivalent to the datum-paid estimate

\[
\boxed{
\forall u_0\in H^\infty_{\rm div},\ \forall T<\infty:\qquad
\int_0^{\min(T,T_*)}\|\omega(t)\|_{L^\infty}\,dt
\le C(u_0,T)<\infty.}
\tag{EWI.10}
\]

An equivalent target is a datum-paid terminal bound for one fixed \(H^s\) norm with \(s>5/2\). Every stronger all-orders mixed-intersection producer factors through this single obstruction.

## 4. Why strict preterminal smoothness supplies only local rectangles

Classical local well-posedness gives, for every strict \(T<T_*\),

\[
 u\in\bigcap_{r,m}H^r(0,T;H^m).
\]

The constants may depend on \(T\). The required terminal producer is the uniform control as \(T\uparrow T_*\). Equation (EWI.3) displays the exact coefficient whose terminal integrability matters. Thus projective compatibility of the strict-interval rows establishes consistency of the rows, while the BKM integral supplies the missing terminal coercivity.

## 5. Vorticity equation isolates the three-dimensional obstruction

Euler vorticity satisfies

\[
D_t\omega=(\omega\cdot\nabla)u=S\omega,
\tag{EWI.11}
\]

where \(S=(\nabla u+\nabla u^T)/2\). Along a particle trajectory,

\[
\frac d{dt}|\omega(X(a,t),t)|
\le \|S(t)\|_{L^\infty}|\omega(X(a,t),t)|.
\tag{EWI.12}
\]

Hence the datum producer reduces to controlling the accumulated stretching/strain. Energy conservation supplies \(\|u(t)\|_2=\|u_0\|_2\); this invariant leaves \(\|S\|_\infty\) and \(\|\omega\|_\infty\) free at the required scale. Cauchy invariants give

\[
\omega(X(a,t),t)=\nabla_aX(a,t)\,\omega_0(a),
\qquad \det\nabla_aX=1,
\tag{EWI.13}
\]

and volume preservation permits anisotropic stretching because the singular values of \(\nabla_aX\) have product one. A terminal bound therefore requires a further geometric or nonlocal pressure mechanism controlling the largest material stretch.

## 6. Two-dimensional Euler closes completely

For two-dimensional Euler, vorticity is scalar and obeys

\[
D_t\omega=0.
\tag{EWI.14}
\]

Therefore

\[
\|\omega(t)\|_{L^\infty}=\|\omega_0\|_{L^\infty},
\qquad
\int_0^T\|\omega(t)\|_{L^\infty}\,dt
\le T\|\omega_0\|_{L^\infty}<\infty
\tag{EWI.15}
\]

for every finite \(T\). By (EWI.9), every finite-time whole-terminal mixed intersection exists, every endpoint is smooth, and the classical solution continues globally. Thus the compatible-intersection program yields a complete global smoothness proof for 2D Euler.

## 7. Audit of the retained Navier--Stokes producer against \(\nu=0\)

The current NS proof program is explicitly fixed-viscosity. `PROOF-PROGRAM.md` starts with \(\nu>0\) and records the whole-terminal rectangle theorem as its first theorem.

The explicit signed-prefix bootstrap in `thomas-first-signed-prefix-generates-complete-intersection-20260803.md` shows where viscosity enters its constructive estimates. At critical height,

\[
E_{1/2}(t)+\nu\int_0^t\|\Lambda^{3/2}u\|_2^2
=E_{1/2}(0)+\int_0^t\mathcal P_{1/2},
\]

which yields

\[
\int_0^T\|\Lambda^{3/2}u\|_2^2\,dt\lesssim \nu^{-1}.
\]

The differentiated row then has the form

\[
X_m'+\nu Y_m
\le \frac{K_m^2}{\nu}a(t)^2X_m,
\]

and its Gronwall exponent scales as \(\nu^{-2}\). These estimates are coercive for each fixed \(\nu>0\) and degenerate at \(\nu=0\). The Euler balance is

\[
E_s'=\mathcal P_s,
\tag{EWI.16}
\]

so an inviscid terminal producer needs direct control of nonlinear stretching/flux rather than viscous absorption.

The Euler-specific retained notes agree with this boundary:

- `mpp-euler-ns-boundary-line-theorem-program-20260612.md` assigns Euler comparison roles and records the free-space/periodic smooth-data regularity theorem as outside its installed results.
- `mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md` separates smooth-family singular limits, weak same-datum branches, boundary smooth blowup, and the free-space/periodic classical smooth-data problem.
- `mpp-euler-control-case-to-ns-attack-map-20260517.md` identifies pressure plus incompressibility as insufficient for one-field regularity and identifies fixed positive viscosity as the additional NS mechanism.
- `mpp-silver-participation-complement-contrapositive-repair-20260722.md` records the strict-preterminal versus terminal-participation distinction in the same logical form.

## 8. Exact next theorem target

The shortest three-dimensional Euler route is now

\[
\boxed{
\text{smooth datum}
\Longrightarrow
\int_0^{T}\|S(t)\|_{L^\infty}\,dt<\infty\ \text{for every finite }T
\Longrightarrow
\text{BKM control}
\Longrightarrow
\mathcal I_E(T)
\Longrightarrow
\text{smooth global continuation}.}
\tag{EWI.17}
\]

Equivalently, one may target a direct datum-paid bound on \(\int\|\omega\|_\infty\), one terminal \(H^s\) row for \(s>5/2\), or a pressure-complete geometric estimate that bounds the largest material stretch in (EWI.13). These targets are mathematically equivalent at the continuation level.

## 9. Surface-audit verdict

The compatible-intersection implication to smooth endpoint/restart is rigorous. The Euler temporal/mixed tower follows once one terminal high-spatial row survives. The current retained NS constructive bootstrap spends positive viscosity essentially. The remaining arbitrary-data three-dimensional Euler theorem is the datum-paid vorticity/strain bound (EWI.10)/(EWI.17). The repo presently contains comparison, weak-limit, boundary-blowup, and conditional continuation material rather than an inviscid datum-paid estimate closing that bound.