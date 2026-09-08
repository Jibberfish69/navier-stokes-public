# EulerHorizontalShapeForcingClock.Attempt

## Result of the history-level closure attempt

Continue from the normalized one-row system

\[
U_\tau+\mathbb P(U\cdot\nabla U)+bDU=0,
\qquad
\|U\|_2=\|\Lambda^mU\|_2=1,
\qquad m>5/2,
\]

with

\[
B'=b,
\qquad
b_\tau+\frac52b^2=\mathcal Q_m[U].
\tag{HFC.1}
\]

The physical clock is

\[
dt=C_0e^{-\frac52B(\tau)}d\tau.
\tag{HFC.2}
\]

### 1. Linearization of the dilation clock

Define

\[
Y(\tau)=e^{\frac52B(\tau)}.
\]

Then

\[
Y'=\frac52bY,
\]

and (HFC.1) gives the exact scalar equation

\[
\boxed{
Y''=\frac52\mathcal Q_m[U(\tau)]Y.}
\tag{HFC.3}
\]

Moreover

\[
\boxed{
t(\tau)-t(0)=C_0\int_0^\tau\frac{ds}{Y(s)}.}
\tag{HFC.4}
\]

Thus global physical time follows once the pressure-complete shape forcing prevents a superlinear positive solution of (HFC.3) strong enough to make \(1/Y\) integrable.

### 2. A sufficient finite-work theorem

Put

\[
q(\tau)=\frac52[\mathcal Q_m(U(\tau))]_+.
\]

Since \(Y>0\),

\[
Y''\le qY.
\tag{HFC.5}
\]

Variation of constants yields

\[
Y(\tau)
\le Y(0)+Y'_+(0)\tau
+\int_0^\tau(\tau-s)q(s)Y(s)ds.
\]

Set \(F(\tau)=Y(\tau)/(1+\tau)\). Since

\[
\frac{(\tau-s)(1+s)}{1+\tau}\le 1+s,
\]

we obtain

\[
F(\tau)
\le C_0+\int_0^\tau(1+s)q(s)F(s)ds.
\]

Therefore Gronwall gives the exact implication

\[
\boxed{
\int_0^\infty(1+\tau)[\mathcal Q_m(U(\tau))]_+d\tau<\infty
\Longrightarrow
Y(\tau)\le C(1+\tau).}
\tag{HFC.6}
\]

Combining (HFC.4) and (HFC.6),

\[
\boxed{
\int_0^\infty(1+\tau)[\mathcal Q_m(U(\tau))]_+d\tau<\infty
\Longrightarrow
\int_0^\infty\frac{d\tau}{Y(\tau)}=\infty
\Longrightarrow
T_*=\infty.}
\tag{HFC.7}
\]

This is a true one-row pressure-complete finite-work closure theorem.

### 3. Why an unweighted or merely bounded forcing estimate does not close

The scalar clock itself gives an exact obstruction to weaker estimates. Take

\[
b(\tau)=(1+\tau)^{-1/2}.
\]

Then

\[
B(\tau)=2(\sqrt{1+\tau}-1),
\]

so

\[
\int_0^\infty e^{-\frac52B(\tau)}d\tau<\infty.
\]

The corresponding forcing required by (HFC.1) is

\[
\mathcal Q(\tau)
=b_\tau+\frac52b^2
=-\frac12(1+\tau)^{-3/2}
+\frac52(1+\tau)^{-1},
\tag{HFC.8}
\]

which is bounded and tends to zero. Hence pointwise boundedness, sign indefiniteness, or \(\mathcal Q\to0\) cannot exclude a finite physical clock. The closure must control cumulative positive shape work at approximately the first-moment level of (HFC.6), or provide a different mechanism with the same consequence.

### 4. Pressure and multiscale escape

The installed pressure-Hessian identities prove that pressure slaving fixes the trace and the full nonlocal trace-free response while permitting both signs of local directional action. They therefore do not yield

\[
[\mathcal Q_m]_+\le -\partial_\tau(\text{bounded storage})
\]

or the weighted finite-work estimate (HFC.6) from pointwise pressure geometry.

The normalized manifold also admits noncompact two-scale sequences with fixed \(L^2\) and \(\dot H^m\) norms. Consequently no compactness argument is available from the two normalization constraints alone. Any history-level proof of (HFC.6) has to control repeated multiscale reorganization by the actual Euler source; static scale normalization does not supply that control.

### 5. Compact/self-similar branch versus multiscale branch

If a normalized orbit converges to a fixed smooth profile with \(b\to b_*>0\), the physical solution becomes asymptotically self-similar. Existing Euler Liouville/nonexistence theorems exclude substantial subclasses of such profiles under decay, outgoing, periodicity, or integrability hypotheses. They do not cover an arbitrary smooth finite-energy normalized orbit.

Therefore a hypothetical smooth whole-space singularity can avoid those compact-profile exclusions by persistent nonstationary or multiscale shape reorganization. This is exactly the branch represented by the failure of normalized compactness in the first attempt.

### 6. Hard boundary

The exact new theorem sufficient for unconditional closure is

\[
\boxed{
\int_0^\infty(1+\tau)[\mathcal Q_m(U(\tau))]_+d\tau<\infty
\quad\text{for one fixed }m>5/2,
}
\tag{HFC.9}
\]

or any strictly weaker pressure-complete history estimate implying

\[
Y(\tau)\lesssim1+\tau.
\]

No installed Euler/pressure identity or Navier--Stokes support theorem proves (HFC.9) after viscosity is removed. Proving it for every smooth finite-energy Euler datum would itself resolve the smooth whole-space 3D Euler regularity problem.

## Verdict

The history-level attempt derives a genuine finite-work closure theorem, (HFC.7), and proves that bounded/vanishing pressure-complete shape forcing is insufficient. The unconditional estimate (HFC.9) remains unproved. The hard obstruction is cumulative multiscale shape reorganization; claiming global Euler closure without a new estimate controlling that history would be a false proof.