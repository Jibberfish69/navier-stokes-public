# MPP Normal-Covector Witness-To-Readout Theorem

## Status

Theorem-facing interface note.

Role: normal-covector specialization of the fused supplier splice
`(\mathrm{FS}.23)`.

This note isolates the honest master interface between the class-membership
packet and the normal-covector selector readout. It does **not** claim that the
class-membership witness alone manufactures the normal covector or the
selector-normal observable, and it does **not** claim that `W_J` alone already
contains the needed branch geometry.

## Purpose

Keep the normal-covector branch logic explicit:

```math
\boxed{
\mathcal E_J^{cm}
+
\mathfrak R_J^{\perp}
\Longrightarrow
\mathfrak e_{J,\perp}^{cm},
}
\tag{NWI.0}
```

followed by

```math
\boxed{
W_J
+
\mathfrak R_J^{\perp}
+
\mathfrak e_{J,\perp}^{cm}
\Longrightarrow
\Theta_J^\perp
\text{ and the normal-covector SG.4 supplier packet.}
}
\tag{NWI.1}
```

So this note is the normal-covector answer to the question:

```text
How does the branch-blind MPP witness enter the branch-sensitive normal-covector readout without pretending it already is the readout?
```

## Route Position

This branch is not allowed to carry the dead-endpoint burden. By
[mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md),
the normal-covector readout only becomes a live frontier branch on the
Law-2-survivor side, after the separate no-drop theorem has removed the dead
branch. So this note should be read as a surviving one-field readout splice,
not as a theorem surface for participation failure.

The normal-covector branch already has the geometric route packet
[pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md),
where the concrete directional quantity is

```math
\Theta_J^\perp(a,b,t)
:=
M_J(t)^2\big(\Xi_J^\perp(a,b,t)\big)^2,
\qquad
\Xi_J^\perp(a,b,t):=\big|n_J(a)\cdot e_{ab}(t)\big|^2.
\tag{NWI.2}
```

The missing integration theorem is therefore not another downstream residual
closure. It is the upstream semantic splice that tells the normal-covector
branch how the class-membership packet pays for packing/transport/coherence
losses on the same transported family before the normal observable is read,
once the branch has already survived the separate Law 2 reduction.

## The Shared Carrier And The Genuine Difference

The class-membership witness and the normal-covector readout are the same
object at the level of transported deformation/strain geometry:

```math
(F,A,h,\Delta_r^XU_1,\mathcal Q_{1,r,\psi_J}^{str})
\rightsquigarrow
(N_a,P_{N_a},n_J,\Xi_J^\perp).
\tag{NWI.3}
```

Here:

1. `A_F` and `P_F` measure amplitude and relative coherence of the deformation
   pair `(F,A)`;
2. `\widetilde E_{1,r,\psi_J}` and `\mathcal Q_{1,r,\psi_J}^{str}` measure the
   same transported rung-1 strain geometry on the tower side;
3. the normal-covector branch reads that same geometry through the transported
   bundle `N_a`, its orthogonal projector `P_{N_a}`, and the measurable unit
   normal covector `n_J(a)`.

The genuine difference is the readout step:

```math
\widetilde{\mathcal H}_{N,r,\psi_J}
\quad\text{is branch-blind,}
\tag{NWI.4a}
```

```math
\mathfrak R_J^\perp
\quad\text{is branch-sensitive and must choose the normal-covector observable.}
\tag{NWI.4b}
```

So `\widetilde{\mathcal H}_{N,r,\psi_J}` witnesses the admissible
Navier--Stokes object, but it does not by itself choose:

1. the transported bundle `N_a`,
2. the measurable normal covector `n_J(a)`,
3. the selector-normal moment observable `\mathcal M_J^\perp`.

That is the exact reason the splice must consume a branch packet.

## Exact Inputs

Fix one selector scale `J`, one transported good family `\mathcal G_J` on a
time window `I_J`, one material packet `\psi_J`, and one signless pair-defect
packet `W_J`.

### 1. Upstream MPP witness

Use the transported class-membership budget

```math
\mathcal E_J^{cm}
:=
\sup_{t\in I_J}\sup_{0<|r|\le \rho_J}
\widetilde{\mathcal H}_{N,r,\psi_J}(t)
+
\int_{I_J}\sup_{0<|r|\le \rho_J}
\mathcal Q_{1,r,\psi_J}^{str}(t)\,dt.
\tag{NWI.5}
```

### 2. Normal-covector branch readout packet

Install the normal-covector readout packet

```math
\mathfrak R_J^\perp
:=
\Big(
P_{N_a},\,
n_J,\,
\mathcal M_J^\perp,\,
\operatorname{Err}_{J,\perp}^{mom},\,
\operatorname{Err}_{J,\perp}^{win}
\Big),
\tag{NWI.6}
```

where:

1. `P_{N_a}` is the orthogonal projector onto the transported rank-two bundle;
2. `n_J(a)` is the measurable unit normal covector with `\ker n_J(a)=N_a`;
3. `\mathcal M_J^\perp` is the selector-normal moment observable from
   `(CN.9b)`;
4. `\operatorname{Err}_{J,\perp}^{mom}` is the branch ledger controlling the
   moment observable by `W_J`;
5. `\operatorname{Err}_{J,\perp}^{win}` is the branch window/localization loss.

Write the integrated branch budget

```math
\mathcal E_J^\perp
:=
\int_{I_J}\!\!\int_{\mathcal G_J}
\Big(
\operatorname{Err}_{J,\perp}^{mom}
+
\operatorname{Err}_{J,\perp}^{win}
\Big).
\tag{NWI.7}
```

## Exported CM-Side Supplier Ledger

The point of the theorem is to export the class-membership witness into the
normal-covector readout through one explicit ledger:

```math
\mathfrak e_{J,\perp}^{cm}
:=
\operatorname{Err}_{J,\mathrm{pack}}^{cm}
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}
+
\operatorname{Err}_{J,\mathrm{cal}}^{\perp}.
\tag{NWI.8}
```

Interpretation of the three pieces:

1. `\operatorname{Err}_{J,\mathrm{pack}}^{cm}` pays for replacing the true
   transported separation `h(a,r,t)` by the linearized deformation model
   `F(a,t)r`, using the bridge `(TB.18)` and the relative packing ledger `P_F`;
2. `\operatorname{Err}_{J,\mathrm{tc}}^{cm}` pays for transporting the rung-1
   tower/strain defect onto the same strip, using `\widetilde E_{1,r,\psi_J}`
   and the exact source `\mathcal Q_{1,r,\psi_J}^{str}`;
3. `\operatorname{Err}_{J,\mathrm{cal}}^{\perp}` is the branch calibration
   ledger needed to pass from the transported bundle geometry to the concrete
   normal observable.

## Exact Theorem Shape

### Theorem NWI.A (MPP witness to normal-covector readout)

Assume:

1. the transported class-membership packet `(NWI.5)` is finite on `I_J`;
2. the normal-covector branch readout packet `(NWI.6)` is installed on the same
   transported good family `\mathcal G_J`;
3. the normal directional density is read on that same family by `(NWI.2)`.

Then there exist nonnegative ledgers
`\operatorname{Err}_{J,\mathrm{pack}}^{cm}`,
`\operatorname{Err}_{J,\mathrm{tc}}^{cm}`,
`\operatorname{Err}_{J,\mathrm{cal}}^{\perp}` such that

```math
\Theta_J^\perp(a,b,t)
+
\operatorname{Err}_{J,\mathrm{loop}}(a,b,t)
\le C_{NWI,9}
\mathcal M_J^\perp(a,b,t)
+
\operatorname{Err}_{J,\mathrm{pack}}^{cm}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{cal}}^{\perp}(a,b,t).
\tag{NWI.9}
```

Moreover the integrated supplier ledger obeys

```math
\int_{I_J}\!\!\int_{\mathcal G_J}
\Big(
\operatorname{Err}_{J,\mathrm{pack}}^{cm}
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}
\Big)
\le C_{NWI,10}
\mathcal E_J^{cm},
\tag{NWI.10}
```

and

```math
\int_{I_J}\!\!\int_{\mathcal G_J}
\Big(
\mathcal M_J^\perp
+
\operatorname{Err}_{J,\mathrm{cal}}^{\perp}
\Big)
\le C_{NWI,11}
\mathcal E_J^{obs}(W_J)
+
\mathcal E_J^\perp.
\tag{NWI.11}
```

Therefore

```math
\mathcal E_J^{dir,\perp}
+
\mathcal E_J^{loop}
+
\mathcal E_J^{pack}
+
\mathcal E_J^{tc}
+
\mathcal E_J^{cal,\perp}
\le C_{NWI,12}
\mathcal E_J^{obs}(W_J)
+
\mathcal E_J^{cm}
+
\mathcal E_J^\perp.
\tag{NWI.12}
```

Equation `(NWI.12)` is the normal-covector specialization of `(FS.19)`.

## Proof Skeleton

1. Use the transported bridge identity

   ```math
   \Delta_r^XU_k(a,t)
   =
   \delta_{h(a,r,t)}U_k(X(a,t),t)
   \tag{NWI.13}
   ```

   to identify the tower side and the material side on the same transported
   increment.

2. Use the geometric packing bridge

   ```math
   \int \psi_J(a)^2 |h(a,r,t)-F(a,t)r|^2\,da
   \le
   |r|^2 P_F^\ast(r,t;\psi_J)
   \tag{NWI.14}
   ```

   to export packing coherence into the normal-covector strip geometry. This is
   the source of `\operatorname{Err}_{J,\mathrm{pack}}^{cm}`.

3. Use the exact rung-1 material source `(NWI.5)` together with
   `\widetilde E_{1,r,\psi_J}` to control the transported strain/tower mismatch
   on the same family. This is the source of
   `\operatorname{Err}_{J,\mathrm{tc}}^{cm}`.

4. Invoke the measurable normal-covector packet from
   [pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md)
   to pass from the transported bundle to `n_J(a)` and the normal-direction
   defect `\Xi_J^\perp`.

5. Invoke the selector-normal moment observable `\mathcal M_J^\perp` and its
   branch-local observability ledger to control the normal readout by `W_J`.

6. Absorb the remaining transport/geometry losses into the CM-exported
   packing/transport ledgers and the residual normal-covector calibration term.

This yields `(NWI.9)`--`(NWI.12)`.

## Exact Boundary

This note deliberately refuses the following stronger claims:

```math
\mathcal E_J^{cm}
\Longrightarrow
n_J(a),
\tag{NWI.15a}
```

```math
\mathcal E_J^{cm}
\Longrightarrow
\mathcal M_J^\perp,
\tag{NWI.15b}
```

```math
W_J+\mathcal E_J^{cm}
\Longrightarrow
\Theta_J^\perp
\quad\text{without a branch readout packet.}
\tag{NWI.15c}
```

The honest on-disk conclusion is narrower and stronger in the right sense:
class membership is the semantic carrier, while the normal-covector packet
remains the branch consumer that turns that carrier into a concrete directional
ledger.

## Downstream Use

Once `(NWI.12)` is available, the normal-covector branch reads cleanly as

```math
\mathcal E_J^{cm}
+
\mathcal E_J^\perp
+
\mathcal E_J^{obs}(W_J)
\Longrightarrow
\mathcal E_J^{dir,\perp}
+
\mathcal E_J^{loop},
\tag{NWI.16}
```

then the existing downstream route takes over through the `PD.70z` packet and
its installed handoff to the selector-side continuation chain.
