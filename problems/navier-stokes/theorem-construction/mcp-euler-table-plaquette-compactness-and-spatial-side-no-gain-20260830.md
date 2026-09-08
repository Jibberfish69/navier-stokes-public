# Euler table plaquette compactness and the missing spatial side

## Object

Let

\[
V_n=\partial_t^n u,
\qquad
Q_n=\partial_t^n p
\]

belong to one smooth finite-energy incompressible Euler history on
\([0,T_*)\times\mathbb R^3\).  The pressure-complete recurrence is

\[
V_{n+1}
=
-\mathbb P\sum_{a=0}^n\binom na
(V_a\cdot\nabla)V_{n-a}.
\tag{1}
\]

This note keeps the row-wise spatial intersection fixed and identifies the
exact compactness relation carried by one horizontal and one vertical
neighbour in its temporal-spatial table.

## 1. Plaquette compactness lemma

Fix integers \(n\geq0\) and \(M\geq1\).  Assume

\[
A_{n,M+1}
:=
\sup_{t<T_*}\|V_n(t)\|_{H^{M+1}}
<\infty
\tag{2}
\]

and

\[
B_{n+1,M-1}
:=
\sup_{t<T_*}\|V_{n+1}(t)\|_{H^{M-1}}
<\infty.
\tag{3}
\]

For \(0\leq r<t<T_*\), the identity
\(\partial_tV_n=V_{n+1}\) gives

\[
\|V_n(t)-V_n(r)\|_{H^{M-1}}
\leq
B_{n+1,M-1}|t-r|.
\tag{4}
\]

The upper horizontal coordinate gives

\[
\|V_n(t)-V_n(r)\|_{H^{M+1}}
\leq 2A_{n,M+1}.
\tag{5}
\]

Interpolation in the Hilbert Sobolev scale yields

\[
\|V_n(t)-V_n(r)\|_{H^M}
\leq
\bigl(2A_{n,M+1}B_{n+1,M-1}\bigr)^{1/2}
|t-r|^{1/2}.
\tag{6}
\]

Hence \(V_n(t)\) is Cauchy in \(H^M\) as \(t\uparrow T_*\), and there is
one strong terminal trace

\[
V_n(T_*)\in H^M.
\tag{7}
\]

The compactness cell is an L-shaped plaquette:

\[
\begin{array}{c|cc}
 & H^M & H^{M+1}\\
\hline
V_n & \text{terminal trace} & \text{spatial bound}\\
V_{n+1} & & \\
\raisebox{1.2ex}{\scriptstyle H^{M-1}} &
\text{time increment bound} &
\end{array}
\]

No spatial Rellich theorem is needed for this one-history endpoint result;
the temporal increment estimate and Hilbert-scale interpolation give strong
global \(H^M(\mathbb R^3)\) convergence directly.

## 2. Euler closes the temporal-lower side

For \(M>3/2\), the Sobolev multiplier law and boundedness of \(\mathbb P\)
give from (1)

\[
\|V_{n+1}\|_{H^{M-1}}
\leq
C_{n,M}
\sum_{a=0}^n\binom na
\|V_a\|_{H^M}\|V_{n-a}\|_{H^M}.
\tag{8}
\]

Thus a uniformly bounded finite \(H^M\) column produces the lower temporal
side of every plaquette.  The unproduced side is exactly

\[
\sup_{t<T_*}\|V_n(t)\|_{H^{M+1}}<\infty.
\tag{9}
\]

If (9) is obtained for every finite \((n,M)\), (6) supplies compatible strong
terminal traces at every coordinate.  Each temporal row then lands in
\(\bigcap_MH^M\), pressure follows by its Riesz formula, and the established
smooth endpoint and restart argument applies.

## 3. Exact fixed-column no-gain test

A nonzero smooth compactly supported stationary Euler pair \((W,P)\) on
\(\mathbb R^3\) exists.  For a construction, see A. V. Gavrilov,
[*A steady Euler flow with compact support*](https://arxiv.org/abs/1810.08020).

Fix \(s>3/2\), \(\delta>0\), and \(0<\varepsilon<\delta\).  Set

\[
W_\lambda(x)
=
\lambda^{\frac32-s-\varepsilon}W(\lambda x),
\qquad
P_\lambda(x)
=
\lambda^{3-2s-2\varepsilon}P(\lambda x).
\tag{10}
\]

This is another exact smooth compactly supported stationary Euler pair.  Its
pressure-complete temporal tower is

\[
V_0=W_\lambda,
\qquad
V_n=0\quad(n\geq1),
\tag{11}
\]

and

\[
Q_0=P_\lambda,
\qquad
Q_n=0\quad(n\geq1).
\tag{12}
\]

The selected lower column vanishes as \(\lambda\to\infty\):

\[
\|W_\lambda\|_{H^s}\longrightarrow0,
\qquad
\|P_\lambda\|_{H^s}\longrightarrow0.
\tag{13}
\]

At the higher spatial coordinate,

\[
\|W_\lambda\|_{\dot H^{s+\delta}}
=
\lambda^{\delta-\varepsilon}
\|W\|_{\dot H^{s+\delta}}
\longrightarrow\infty.
\tag{14}
\]

The full temporal tower and pressure closure at height \(s\) can consequently
be arbitrarily small while a chosen higher spatial coordinate is arbitrarily
large.  Positive temporal rows vanish identically in this test.

It follows that no estimate using only one complete fixed-height Euler column,
pressure closure, and temporal recurrence can generate any higher spatial
column.  Scaling covariance also cannot supply (9): it preserves the exact
countertest while moving concentration to smaller spatial scales.

## 4. Consequence for the intersection route

The Euler table carries a genuine compactness mechanism:

\[
(n,M+1)+(n+1,M-1)
\quad\Longrightarrow\quad
\text{strong terminal trace at }(n,M).
\tag{15}
\]

Euler recurrence produces the temporal-lower term from a finite column.  It
does not produce the upper spatial term.  Navier--Stokes viscosity produces
that term through its positive parabolic contribution; Euler has no matching
fixed-column contribution.

The row-wise compatible intersection remains the correct endpoint object.
An unconditional Euler proof using it must produce the upper spatial sides
collectively from a nonstationary one-history law.  Fixed-column lifting,
pressure covariance, temporal generating functions, and a continuous scalar
on the projective table cannot perform that task.

