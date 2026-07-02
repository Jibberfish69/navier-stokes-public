---
theorem_id: forward-gold-noncircular-same-parent-coupled-storage-proof-pressure-20260702
status: superseded-support-after-signed-height-restart
created: 2026-07-02
problem: navier-stokes
route: forward-gold coupled pressure-viscosity-incompressibility participation law support
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A support only
completion_truth: >-
  This note is not a proof of Gold closure and is no longer the primitive Gold
  L1 wall. After the signed-height restart correction, this coupled-storage
  pressure route is support only unless it proves sign persistence with physical
  cost or peak-height control from the signed Navier-Stokes evolution.
source_surfaces:
  - problems/navier-stokes/target-operating-contract.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-summation-type-custody-audit-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-coupled-storage-loop-audit-20260702.md
---

# Noncircular same-parent coupled storage proof pressure

The physical object is one stopped original parent packet before child clipping.
The proof cannot begin from a child count, an atom count, or a scalar tail sum.
Those are allowed later only as typed readouts of the same parent measure.

For a stopped parent \(P\), write the three active faces as continuous parent
measures

\[
\mathcal F_P
:=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix},
\qquad
dZ_P^{crit}=d\rho_{crit,P}^{ac}+d\rho_{crit,P}^{entry}.
\tag{NSP.1}
\]

The noncircular Gold theorem is exactly this: construct bounded-below same-parent
storages

\[
\mathcal M_P
:=
\begin{pmatrix}
M_P^{crit}\\
M_P^{FE}\\
M_P^{AT}
\end{pmatrix}
\tag{NSP.2}
\]

from the original pressure-Hodge, viscous-Stokes, self-advection, and
incompressibility packet, and prove a vector measure inequality

\[
\mathcal F_P
\le
-d\mathcal M_P
+K_P\mathcal F_P
+d\Theta_P^0
+dPaid_P,
\qquad
\rho(K_P)\le 1-\eta
\tag{NSP.3}
\]

with \(\eta>0\) independent of the stopped descendants of \(P\). The entries of
\(K_P\) are the same-parent feedback couplings among critical source, full
exchange, and active transit. The matrix is not a notation choice: it is the
place where the proof either wins strict non-self-feeding or remains circular.

## Absorption once the coupled inequality is proved

Assume `(NSP.3)'. Since \(K_P\ge 0\) and \(\rho(K_P)\le 1-\eta\), Perron-Frobenius
duality gives a vector \(q_P>0\) with

\[
q_P^T K_P\le (1-\eta)q_P^T .
\tag{NSP.4}
\]

Multiplying `(NSP.3)' by \(q_P^T\) gives

\[
\eta\, q_P^T\mathcal F_P
\le
-d(q_P^T\mathcal M_P)
+q_P^T d\Theta_P^0
+q_P^T dPaid_P .
\tag{NSP.5}
\]

Integrating over the stopped parent history and using the bounded-below storage
property yields

\[
\int_P q_P^T\mathcal F_P
\lesssim_\eta
q_P^T\mathcal M_P(t_0)-\inf q_P^T\mathcal M_P
+\int_P q_P^T d\Theta_P^0
+\int_P q_P^T dPaid_P .
\tag{NSP.6}
\]

Thus `(NSP.3)' is sufficient for the Gold L1 parent active budget. This is the
clean mathematical replacement for the old sequential TFE2748B.1548/TFE2748B.1555
reading.

## Why the old chain is not a proof

The bad algebra is already visible in two faces. Suppose a proposed proof gives

\[
dZ\le -dM_Z+\alpha\,d\Xi+dE_Z,
\qquad
d\Xi\le -dM_\Xi+\beta\,dZ+dE_\Xi .
\tag{NSP.7}
\]

This closes only when \(\alpha\beta<1\). At \(\alpha=\beta=1\), the inequalities
are compatible with \(dZ=d\Xi\) and no finite parent budget follows. In matrix
form the feedback matrix

\[
K=
\begin{pmatrix}
0&1\\
1&0
\end{pmatrix}
\tag{NSP.8}
\]

has spectral radius \(1\). A child atom sum, a Littlewood-Paley tail sum, or a
finite point sample cannot lower this spectral radius; it can only re-express
the same coupled parent mass. This is why the atom bookkeeping mistake was not
cosmetic. It could make a circular feedback loop look like a finite inventory.

## What the PDE packet must actually supply

The remaining proof pressure is to get `(NSP.3)' from the original coupled
Navier-Stokes packet. The useful target is a same-parent Lyapunov vector and a
strict loss mechanism:

\[
q_P^T\bigl(\text{critical source},\text{full exchange},\text{active transit}\bigr)
\quad\text{strictly decreases up to zero-baseline and paid terms.}
\tag{NSP.9}
\]

The only admissible sources for the strict loss are same-parent PDE mechanisms:
viscous-Stokes dissipation, pressure-Hodge zero-mean lobe pairing,
incompressible transport cancellation, stop/legal payments, and bounded
selector reselection costs. None of these may be replaced by a physical count of
atoms. An atom decomposition can norm a measure after the parent packet is
present; it cannot create the parent reserve or prove \(\rho(K_P)<1\).

So the active mathematical wall is now precise. Prove the same-parent coupled
Lyapunov inequality `(NSP.3)', or prove one face from the original packet
independently enough that the remaining feedback matrix has spectral radius
strictly below one.
