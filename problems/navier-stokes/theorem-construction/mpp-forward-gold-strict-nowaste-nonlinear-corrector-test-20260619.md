# MPP Forward Gold Strict No-Waste Nonlinear Corrector Test

Date: 2026-06-19

## Status

Direct nonlinear-corrector test complete.  The quadratic pressure-corrected
Lyapunov route cannot be repaired by adding an instantaneous packet-local cubic
normal-form correction unless one already has the missing unweighted critical
action reserve.  The obstruction is algebraic: the localized convection flux is
odd under \(v\mapsto -v\), while any uncapped cubic correction that can cancel
it is unbounded below.  Capping or regularizing the correction removes the
uniform cancellation and leaves the same source-square / CKN / critical-strain
reserve.

This note does not rule out every possible nonlocal compactness-rigidity
functional.  It rules out the natural next shortcut after the quadratic
Lyapunov test: add a cubic local corrector to cancel the collar flux.

## 1. The obstruction left by quadratic local energy

In terminal self-similar variables,

\[
s=-\log(T-t),\qquad
y=\frac{x-x_*}{\sqrt{T-t}},\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\]

the rescaled equation is

\[
\partial_s v+(v\cdot\nabla)v+\nabla q
\,+\frac12 y\cdot\nabla v+\frac12v
=\nu\Delta v,\qquad \nabla\cdot v=0.
\]

For a localized pressure-corrected quadratic functional

\[
L_A(s)=\frac12\langle v,A_sv\rangle,
\]

the derivative has the form

\[
-\frac{d}{ds}L_A(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-\mathcal C_A(v)
-\operatorname{Comm}_A(v)
-\operatorname{Mod}_A(v).
\]

The problematic leading local term is the localized convection flux.  For a
scalar cutoff it contains

\[
\mathcal C_\chi(v)
=
\frac12\int |v|^2v\cdot\nabla\chi\,dy.
\]

It satisfies

\[
\mathcal C_\chi(-v)=-\mathcal C_\chi(v).
\]

So the term to be cancelled is cubic and sign-changing.

## 2. What a strict no-waste functional would need

A strict no-waste Lyapunov theorem would provide a functional \(L\) satisfying

\[
\inf_s L(s)>-\infty
\]

and

\[
-\frac{d}{ds}L(s)
\ge
c\,\mathcal A_R(s)-\mathcal R_{\rm legal}(s),
\]

where one admissible choice of \(\mathcal A_R\) is the unweighted normalized
critical action on the retained packet:

\[
\mathcal A_R(s)
=
\int_{B_R}\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right)\,dy .
\]

The lower bound on \(L\) is essential.  Without it, infinitely many positive
action quanta do not contradict finite total drop.

## 3. Cubic corrector obstruction

Suppose one tries

\[
L(s)=L_A(s)+B(v(s)),
\]

where \(B\) is an instantaneous packet-local cubic correction.  At leading
order the correction must have the same sign-changing homogeneity as
\(\mathcal C_\chi\).  Thus for some packet profile \(V\),

\[
B(\lambda V)=\lambda^3B(V)
\]

for the large-amplitude critical part it is meant to cancel.

If \(B(V)\ne0\), then one of \(V\) or \(-V\) gives a negative cubic direction:

\[
B(-\lambda V)=-\lambda^3B(V).
\]

Therefore

\[
L_A(-\lambda V)+B(-\lambda V)
=
\frac{\lambda^2}{2}\langle V,A_sV\rangle
-\lambda^3B(V)
\longrightarrow-\infty
\]

along one sign choice.  The functional is not bounded below.

So an uncapped cubic corrector cannot be the strict no-waste Lyapunov
functional.

## 4. Capped correctors lose the cancellation

The obvious repair is to cap or regularize \(B\), for example by replacing the
cubic growth with a bounded-below saturating function.  But then the correction
cannot cancel the cubic collar flux uniformly at critical amplitude.

More concretely, a bounded-below correction must obey along at least one large
sign branch

\[
B(\lambda V)\ge -C(1+\lambda^2)
\]

or some other subcubic lower control.  Its time derivative can no longer
dominate an arbitrary critical cubic flux of size

\[
|\mathcal C_\chi(\lambda V)|=\lambda^3|\mathcal C_\chi(V)|.
\]

The uncancelled remainder is again controlled only by a critical action bound:

\[
|\mathcal C_A(v)|+|\operatorname{Comm}_A(v)|
\le C_A
\int_{\operatorname{collar}(A)}
\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right)dy.
\]

Thus a capped corrector returns to

\[
\text{UnweightedActionFinite.A}
\quad\text{or}\quad
\text{NormalizedCKNCarleson.A}
\quad\text{or}\quad
\text{SourceSquareReserve.A}
\quad\text{or}\quad
\text{SelectedCriticalStrainCarleson.A}.
\]

## 5. Higher-order correctors do not lower the burden

A quartic or higher correction can be bounded below, but differentiating it
through Navier-Stokes introduces higher-order local terms.  For example,

\[
\frac{d}{ds}\int \chi |v|^4
\]

contains a convection/collar term controlled by

\[
\|\nabla\chi\|_\infty
\int_{\operatorname{collar}\chi}|v|^5,
\]

pressure terms of size

\[
\int \chi |v|^2v\cdot\nabla q,
\]

and viscous commutators involving

\[
\int |\nabla\chi|\,|v|^3|\nabla v|.
\]

These are not controlled by the finite \(L^1_t\) source ledger or by physical
energy on the terminal heat-scale stack.  Absorbing them requires stronger
critical integrability than the target action itself.

So higher-order instantaneous corrections do not produce a smaller supplier.
They either introduce stronger uninstalled norms or collapse back to the same
critical reserve.

## 6. Result

The strict no-waste route remains a valid possible architecture, but the
instantaneous nonlinear-corrector shortcut is exhausted:

\[
\boxed{
\text{bounded-below packet-local Lyapunov}
\;+\;
\text{cubic flux cancellation}
\Rightarrow
\text{unweighted critical-action control is already being assumed}.
}
\]

The remaining non-alias options are therefore only:

\[
\text{ProjectedLocalizedFluxCommutatorCoercivity.A},
\]

\[
\text{UnweightedActionFinite.A / NormalizedCKNCarleson.A},
\]

\[
\text{SourceSquareReserve.A / SelectedCriticalStrainCarleson.A},
\]

or a genuinely compact recurrent-profile rigidity theorem whose functional is
not an instantaneous packet-local cubic correction.

At the current proof resolution, a nonlinear local normal form does not give a
new forward-gold bridge for the terminal heat-scale pulse.
