# MPP Forward Gold Source Residence Weak-Lp / Dwell Direct Test

Date: 2026-06-19

## Status

Direct weak-residence test complete.  The weaker-looking formulations do not
produce a new supplier from current inputs.  Weak \(L^p\), distribution-tail
control, Orlicz uniform integrability, positive dwell thickness, source-square,
and active-height bounds are all valid ways to kill the terminal time-face atom;
current Navier-Stokes ledgers do not prove any of them from finite selected
\(L^1_t\) source mass, same-fluid ancestry, viscosity, or BV local-energy
traces.

The live enemy remains

\[
g_m(s)=\frac{a}{\tau_m}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\]

It has fixed total mass and no terminal residence thickness.

## 1. Distribution-function test

For the terminal layer \(g_m\),

\[
|\{s:g_m(s)>\lambda\}|
=
\begin{cases}
\tau_m,&0<\lambda<a/\tau_m,\\
0,&\lambda\ge a/\tau_m.
\end{cases}
\]

Hence for every \(p>1\),

\[
\|g_m\|_{L^{p,\infty}}
\simeq
\sup_{\lambda>0}\lambda |\{g_m>\lambda\}|^{1/p}
=
\frac{a}{\tau_m}\tau_m^{1/p}
=
a\,\tau_m^{1/p-1}
\longrightarrow\infty.
\]

Thus even a weak-\(L^p\) bound with \(p>1\) would forbid the atom.  This is not
a smaller free theorem; it is already a super-\(L^1\) residence estimate.

Equivalently, any distribution-tail estimate of the form

\[
|\{g_m>\lambda\}|\le C\lambda^{-p},
\qquad p>1,
\]

kills the layer, while finite \(L^1\) gives only

\[
|\{g_m>\lambda\}|\le C\lambda^{-1},
\]

which is exactly compatible with terminal concentration.

## 2. Orlicz / de la Vallee Poussin test

A uniformly integrable source family would satisfy, for some superlinear
convex function \(\Phi\),

\[
\sup_m\int_{-1}^0 \Phi(g_m(s))\,ds<\infty,
\qquad
\frac{\Phi(z)}{z}\to\infty.
\]

For the terminal layer,

\[
\int_{-1}^0\Phi(g_m(s))\,ds
=
\tau_m\Phi(a/\tau_m)
=
a\,\frac{\Phi(a/\tau_m)}{a/\tau_m}
\longrightarrow\infty.
\]

So Orlicz uniform integrability also kills the atom.  But this is again a
super-\(L^1\) theorem.  The installed source ledger gives finite mass, not
uniform integrability.

## 3. Dwell-thickness test

A positive dwell theorem would say that a selected source pulse carrying mass
\(a_0>0\) must occupy a terminal time interval of length bounded below by some
function \(\delta(a_0)>0\), or must obey a height cap

\[
g_m(s)\le H(a_0)
\]

on the selected packet currency.  Either form kills a zero-thickness terminal
atom.

The model layer violates exactly this:

\[
\int_{-\tau_m}^0 g_m(s)\,ds=a,
\qquad
\|g_m\|_{L^\infty}=a/\tau_m\to\infty,
\qquad
|{\rm supp}\,g_m|=\tau_m\to0.
\]

Same-fluid ancestry does not provide the missing lower dwell time.  It says the
source belongs to the same coupled fluid branch.  It does not cap the selected
source rate on the last heat-time layer.

## 4. Heat-scale dwell is still dangerous

The terminal pulse does not need a fixed positive physical radius.  It survives
on heat-scale windows.  At frequency \(m\), let

\[
|I_m|=h_m=2^{-2m}
\]

and set one active high shell by

\[
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
A_m=2^{-3m/2}.
\]

Then the first-moment tail is small:

\[
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt=A_m\to0.
\]

But the source-square contribution remains order one:

\[
\int_{I_m}2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
=
2^mA_m^2h_m^{-1}
=1.
\]

Thus finite first-moment source/dissipation control does not imply the
scale-critical square reserve, even when the time interval is exactly a heat
window.

The missing throttle is a pointwise height or square control:

\[
H_N(W)
=
\sup_{t\in W}\sup_{k>N}
2^k\sum_{\ell>k+4}D_\ell(t).
\]

A global bound for \(H_N(W)\) closes source-square, but it is
continuation-strength because it supplies a uniform high-frequency \(H^1\) tail
up to the terminal time.

## 5. Local balance does not create super-L1 residence

The packet local-energy balance has the schematic form

\[
E_P'(t)+D_P(t)
\le
F_P(t)+L_P(t),
\]

where \(F_P\) is pressure/convection/cutoff flux and \(L_P\) is legal loss or
ledger routing.  This balance sees a terminal source jump, but it permits BV
trace jumps unless one proves absolute continuity or a no-waste lower drop:

\[
-\frac{d}{ds}L(s)
\ge
c\,{\mathcal A}_R(s)-{\rm legal}(s).
\]

No installed input supplies this strict pressure-corrected Lyapunov drop.  The
sign-indefinite pressure/convection flux is precisely the obstruction.

## 6. Result

The weak-residence branch does not produce a new forward-gold supplier.

The valid implications are:

\[
L^{p,\infty}\ (p>1)
\quad{\rm or}\quad
{\rm Orlicz\ uniform\ integrability}
\quad{\rm or}\quad
{\rm positive\ dwell}
\quad{\rm or}\quad
{\rm source\ square}
\quad\Longrightarrow\quad
{\rm no\ terminal\ time\ atom}.
\]

The current inputs prove only finite \(L^1_t\) selected source mass and
visibility of the terminal trace.  They do not prove any super-\(L^1\) residence,
height cap, source-square reserve, or strict no-waste Lyapunov theorem.

So this route returns to the already isolated forward-gold alternatives:

\[
{\rm TerminalSourceResidence.A}
\quad{\rm or}\quad
{\rm PositiveSourceTraceAC.A}
\quad{\rm or}\quad
{\rm SourceSquareReserve.A}
\quad{\rm or}\quad
{\rm StrictNoWasteLyapunov.A}.
\]

Absent one of those, the retained heat-scale terminal pulse is not deleted by
the forward-gold route.  It must be admitted as the CM-facing Part/Field
exit witness rather than hidden behind a nonexistent weak-residence estimate.
