# Record-dwell and energy-resource impossibility audit

**Date:** 2026-07-11  
**Live Gold object:**

\[
\sup_{0\le t<T}H(t)<\infty,
\qquad
H(t)=\frac12\|\Lambda^{1/2}u(t)\|_2^2.
\tag{RD.1}
\]

**Status:** proved obstruction at the level of the exact scalar balance,
critical trilinear estimates, energy equality, and Sobolev moment inequalities.
The counterhistory below is deliberately not claimed to be a Navier--Stokes
solution. It proves that those retained estimates alone cannot close (RD.1).

## 1. Exact same-field estimates retained from Navier--Stokes

For one smooth unforced incompressible fixed-viscosity history, write

\[
H'=N-\nu D,
\qquad
D=\|\Lambda^{3/2}u\|_2^2,
\qquad
Z=\|\Lambda u\|_2.
\tag{RD.2}
\]

The standard critical estimates have the form

\[
|N|\le C_1\sqrt{2H}\,D,
\qquad
|N|\le C_2Z^2\sqrt D.
\tag{RD.3}
\]

On a record doubling \(H(a)=M\), \(H(b)=2M\), division of (RD.2) by
\(H\) and use of the first inequality in (RD.3) give

\[
\log 2
+\nu\int_a^b\frac{D}{H}\,dt
\le
\sqrt2\,C_1\int_a^b\frac{D}{\sqrt H}\,dt.
\tag{RD.4}
\]

Thus the scale-critical measure

\[
\mu_*([a,b])
=\int_a^b\frac{D}{\sqrt H}\,dt
\tag{RD.5}
\]

charges every disjoint record doubling by

\[
\mu_*([a,b])
\ge\frac{\log2}{\sqrt2\,C_1}.
\tag{RD.6}
\]

Its total finiteness is an equivalent critical continuation burden, not an
energy consequence.

The second estimate in (RD.3) and Young's inequality give

\[
H'+\frac\nu2D
\le\frac{C_2^2}{2\nu}Z^4.
\tag{RD.7}
\]

Consequently each doubling also satisfies

\[
\int_a^b Z^4\,dt
\ge\frac{2\nu M}{C_2^2}.
\tag{RD.8}
\]

The quantity \(\int Z^4dt\) is another critical regularity resource whose
finiteness is not supplied by the energy equality.

## 2. Exact estimate-level counterhistory

Fix \(B>0\) and choose

\[
H_0\ge
\max\left\{
\frac{2\nu^2}{C_1^2},
\frac{4\nu^2}{C_2^2}
\right\}.
\tag{RD.9}
\]

On

\[
0\le t<T_*:=\frac{1}{3BH_0^3},
\tag{RD.10}
\]

define

\[
H(t)=\left(H_0^{-3}-3Bt\right)^{-1/3},
\qquad
D(t)=\frac{B}{\nu}H(t)^4,
\qquad
N(t)=2BH(t)^4,
\tag{RD.11}
\]

and

\[
E(t)^2
=\frac{8\nu}{BH_0}+\frac{8\nu}{BH(t)},
\qquad
Z(t)^2=\frac{4H(t)^2}{E(t)}.
\tag{RD.12}
\]

Direct differentiation gives

\[
H'=BH^4=N-\nu D,
\qquad
E'=-\nu Z^2.
\tag{RD.13}
\]

The first threshold in (RD.9) gives

\[
N\le C_1\sqrt{2H}\,D.
\tag{RD.14}
\]

Since \(E\) decreases and

\[
E(0)^2=\frac{16\nu}{BH_0},
\tag{RD.15}
\]

the second threshold in (RD.9) gives

\[
N\le C_2Z^2\sqrt D.
\tag{RD.16}
\]

The standard moment inequalities are also respected:

\[
4H^2\le2EZ^2,
\qquad
Z^4\le2HD.
\tag{RD.17}
\]

Nevertheless,

\[
H(t)\longrightarrow\infty
\quad\text{as}\quad t\uparrow T_*,
\tag{RD.18}
\]

while the two quantities available from energy and interpolation remain
finite:

\[
\int_0^{T_*}H(t)^2\,dt
=\frac{1}{BH_0}<\infty,
\tag{RD.19}
\]

\[
\int_0^{T_*}Z(t)^2\,dt
=\frac{E(0)-E(T_*)}{\nu}<\infty.
\tag{RD.20}
\]

For \(M_n=2^nH_0\), the first-record interval \(I_n\) from \(M_n\) to
\(2M_n\) has

\[
|I_n|=\frac{7}{24B M_n^3},
\qquad
\int_{I_n}H^2\,dt=\frac{1}{2BM_n}.
\tag{RD.21}
\]

Both sequences are summable. The Leray dissipation also telescopes through
(RD.13) to a finite total. In contrast, the critical charge correctly grows:

\[
\mu_*(I_n)
=\frac{2(\sqrt2-1)}{\nu}\sqrt{M_n}.
\tag{RD.22}
\]

## 3. What this proves and what it leaves open

This is a model shadow of the retained estimates, not a same-fluid PDE
history. It supplies no blow-up example. Its exact role is to falsify the
claim that the balance, the two critical trilinear estimates, the energy
equality, the moment inequalities, or the proved \(\int H^2dt\) bound already
force a minimum dwell time or a finite additive charge for critical-height
doublings.

Exact Navier--Stokes scaling gives the parallel class-level obstruction: it
preserves critical-height levels while scaling dwell time, Leray dissipation,
and \(\int H^2dt\) respectively by

\[
\lambda^{-2},
\qquad
\lambda^{-1},
\qquad
\lambda^{-2}.
\tag{RD.23}
\]

Therefore no scale-independent positive floor in any of those three resources
can charge every doubling across the solution class.

The remaining mathematical burden is now narrower and physical: a successful
record-resource theorem must use additional same-history Navier--Stokes
structure that the scalar balance and energy hierarchy forget. The explicit
critical candidates \(\mu_*\) and \(\int Z^4dt\) have the correct scaling but
no proved datum-bounded total. SHR.7 remains open.

