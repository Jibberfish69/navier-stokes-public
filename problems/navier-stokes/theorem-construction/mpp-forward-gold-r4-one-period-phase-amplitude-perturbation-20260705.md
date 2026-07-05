---
theorem_id: forward-gold-r4-one-period-phase-amplitude-perturbation-20260705
status: filed-pending-codex-regate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / symbolic comparisons / MG row R4
authorship: Codex, 2026-07-05. Direct attack on MG row R4 after
  R1-R3 were cleared/source-identified.
completion_truth: >-
  Attacks R4 directly. The root-turning-point hazard is real only if
  the proof compares true and frozen paths by inverting the root
  coordinate \(X\), where \(dX/du=0\) at the turn. The proof instead
  compares the true and frozen finite-chain dynamics in the original
  helical amplitude variables, where the vector field and the transfer
  integrand are polynomial and uniformly Lipschitz on the finite
  \(E_{\rm res}\) ball. The elliptic \(sn^2\) root chart is used only
  to evaluate the frozen orbit and its period; on the capped split band
  the maps \(m\mapsto K(m)\), \(u\mapsto sn^2(u;m)\), and the frozen
  transfer integrand are \(C^1\) with finite closed-form constants.
  With
  \(\operatorname{drift}_{\rm per}\) defined as the same local-clock
  per-period parameter/forcing drift appearing in the target-5 notes,
  Gronwall gives
  \[
  \sup_{I_{\rm per}}\|z(t)-z_0(t)\|
  \le C_z\operatorname{drift}_{\rm per}.
  \]
  Lipschitz continuity of the transfer integrand gives the demanded
  average bound
  \[
  \left\|\langle F_{\rm true}\rangle_{I_{\rm per}}
  -\langle F_{\rm frozen}\rangle_{I_{\rm per}}\right\|
  \le C_{\rm per}\operatorname{drift}_{\rm per}.
  \]
  The constant is explicit in the compact-band data:
  \(C_{\rm per}=L_F(C_z+1)\), with
  \(C_z=e^{L_zT_*}(L_\pi T_*+1)\) after local-clock normalization.
  This is a proof-shaped payment of R4 pending re-gate. It does not
  clear target-6 sign fragmentation, G2, G3-B, Sheet 2, Chapter 10,
  or the manuscript. No MPP closure claimed.
---

# R4: one-period perturbation without turning-point loss

## 1. The object

At a time \(t_0\), freeze the finite-chain coefficients and invariants.
Let \(z_0(t)\) be the frozen five-mode solution over one frozen period
\[
I_{\rm per}(t_0)=[t_0,t_0+T_{\rm per}(t_0)].
\]

Let \(z(t)\) be the true finite-chain window dynamics over the same
time interval, in the same local fast-clock normalization. R4 asks for
\[
\left\|
\frac1{T_{\rm per}}\int_{I_{\rm per}}F(z(t),\pi(t))\,dt
-
\frac1{T_{\rm per}}\int_{I_{\rm per}}F(z_0(t),\pi_0)\,dt
\right\|
\le
C_{\rm per}\operatorname{drift}_{\rm per}.
\]

Here \(\pi(t)\) denotes the slowly varying window parameters: roots,
couplings, and the finite-chain remainder terms in the target-5
currency. The frozen value is \(\pi_0=\pi(t_0)\).

## 2. The turning-point issue

The dangerous coordinate is \(X\), the package energy. The frozen
solution has
\[
X(t)=X_2+(X_3-X_2)\operatorname{sn}^2(u;m),
\]
and \(dX/du=0\) at the turning points. Any proof that compares true and
frozen paths by solving for \(u=u(X)\) manufactures a false
turning-point sensitivity.

The comparison is therefore not made in \(X\). It is made in the
original helical amplitude vector \(z\). In those variables the
finite-chain vector field is polynomial, and the transfer integrand is
polynomial. Turning points are ordinary points of a smooth ODE.

The elliptic root chart is used only after the comparison, to compute
the frozen average. On the capped split band,
\[
m\le m_*<1,
\]
the functions \(K(m)\), \(\operatorname{sn}(u;m)\), and the frozen
integrand \(F(z_0(u),\pi_0)\) are \(C^1\) on the compact rectangle
\[
0\le u\le 2K(m),\qquad m\in[0,m_*].
\]
Thus the frozen-period formula has finite closed-form sensitivity in
the modulus. No inverse-root derivative enters.

## 3. The local-clock Gronwall estimate

Write the true and frozen equations as
\[
\dot z=\mathcal V(z,\pi(t))+\mathcal R(t),
\qquad
\dot z_0=\mathcal V(z_0,\pi_0),
\qquad
z(t_0)=z_0(t_0).
\]

On the finite \(E_{\rm res}\) ball and the capped split band, define
the closed-form Lipschitz constants
\[
L_z:=\sup\|\partial_z\mathcal V\|,
\qquad
L_\pi:=\sup\|\partial_\pi\mathcal V\|,
\qquad
L_F:=\sup(\|\partial_zF\|+\|\partial_\pi F\|),
\]
and
\[
T_*:=\sup_{\rm band}T_{\rm per}.
\]

The local-clock fast-window hypothesis gives \(L_zT_*=O(1)\); no
large global-chain Gronwall appears.

Define the per-period drift in this exact window by
\[
\operatorname{drift}_{\rm per}
:=
\sup_{t\in I_{\rm per}}\|\pi(t)-\pi_0\|
+
\int_{I_{\rm per}}\|\mathcal R(t)\|\,dt .
\]

Then
\[
\frac{d}{dt}\|z-z_0\|
\le
L_z\|z-z_0\|+L_\pi\|\pi(t)-\pi_0\|+\|\mathcal R(t)\|.
\]

Gronwall over \(I_{\rm per}\) gives
\[
\sup_{I_{\rm per}}\|z-z_0\|
\le
e^{L_zT_*}(L_\pi T_*+1)\operatorname{drift}_{\rm per}
=:C_z\operatorname{drift}_{\rm per}.
\]

## 4. The average bound

Using the integrand Lipschitz bound,
\[
\|F(z(t),\pi(t))-F(z_0(t),\pi_0)\|
\le
L_F\left(\|z(t)-z_0(t)\|+\|\pi(t)-\pi_0\|\right).
\]

Averaging over the frozen period gives
\[
\left\|
\frac1{T_{\rm per}}\int_{I_{\rm per}}F(z(t),\pi(t))\,dt
-
\frac1{T_{\rm per}}\int_{I_{\rm per}}F(z_0(t),\pi_0)\,dt
\right\|
\le
L_F(C_z+1)\operatorname{drift}_{\rm per}.
\]

Thus
\[
C_{\rm per}:=L_F(C_z+1)
\]
is the demanded constant.

## 5. What this pays

This pays R4 in the finite-chain/local-clock setting:

- true one-period average = frozen one-period average plus controlled
  drift error;
- the turning-point sensitivity is controlled because the perturbation
  comparison is made in amplitude variables, while the elliptic root
  chart is used only for the frozen integral;
- the constants are local-clock constants on the same capped split band
  already used by the tau and period displays.

## 6. What this does not pay

This does not prove the target-6 sign-fragmentation lemma. It also does
not advance \(G2\), \(G3\)-B, Sheet 2 \(B1\)-\(B3\), Chapter 10, or the
manuscript.

The remaining re-gate pressure points are:

1. confirm that the filed target-5 \(\operatorname{drift}_{\rm per}\)
   is exactly the drift defined above, or replace it by this definition;
2. confirm that the capped split band supplies \(T_*<\infty\) and the
   compact \(E_{\rm res}\) ball used for \(L_z,L_\pi,L_F\);
3. confirm that the PDE-to-finite-chain locality/remainder term is the
   \(\mathcal R\) already present in the finite-chain reduction.

Filed is not closure.
