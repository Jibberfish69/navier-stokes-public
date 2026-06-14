# MPP Exact-Potential Witness-To-Readout Theorem

## Status

Active theorem-facing interface note.

Role: exact-potential specialization of the fused supplier splice
`(\mathrm{FS}.23)`.

This note isolates the honest master interface between the class-membership
packet and the exact-potential selector readout. It does **not** claim that the
class-membership witness alone manufactures the projective readout, and it does
**not** claim that `W_J` plus class-membership data alone recover the needed
projector field.

## Purpose

Keep the exact branch logic explicit:

```math
\boxed{
\mathcal E_J^{cm}
+
\mathfrak R_J^{ang}
\Longrightarrow
\mathfrak e_{J,\mathrm{ang}}^{cm},
}
\tag{EWI.0}
```

followed by

```math
\boxed{
W_J
+
\mathfrak R_J^{ang}
+
\mathfrak e_{J,\mathrm{ang}}^{cm}
\Longrightarrow
\Xi_J^{ang}
\text{ and the exact-potential SG.4 supplier packet.}
}
\tag{EWI.1}
```

So this note is the exact-potential answer to the question:

```text
How does the branch-blind MPP witness enter the branch-sensitive projective readout
without pretending it already is the readout?
```

## Route Position

This branch is not allowed to carry the dead-endpoint burden. By
[mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md),
the exact-potential readout only becomes a live frontier branch on the
Law-2-survivor side, after the separate no-drop theorem has removed the dead
branch. So this note should be read as a surviving one-field readout splice,
not as a theorem surface for participation failure.

The on-disk exact-potential branch already has the downstream readout/export
chain

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
D.7mq,
\tag{EWI.2a}
```

```math
D.7mp + D.7mo + D.7mm
\Longrightarrow
SSD.A
\Longrightarrow
SSC\text{-}EP.A,
\tag{EWI.2b}
```

```math
D.7mq + SSC\text{-}EP.A
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2.
\tag{EWI.2c}
```

The missing integration theorem is therefore not another downstream export. It
is the upstream semantic splice that tells the exact-potential branch how the
class-membership packet pays for packing/transport/coherence losses on the same
transported family, once the branch has already survived the separate Law 2
reduction.

## The Shared Carrier And The Genuine Difference

The class-membership witness and the exact-potential readout are the same object
at the level of transported deformation/strain geometry:

```math
(F,A,h,\Delta_r^XU_1,\mathcal Q_{1,r,\psi_J}^{str})
\rightsquigarrow
\mathcal C_J^{CG}
\rightsquigarrow
P_J^{CG}.
\tag{EWI.3}
```

Here:

1. `A_F` and `P_F` measure amplitude and relative coherence of the deformation
   pair `(F,A)`;
2. `\widetilde E_{1,r,\psi_J}` and `\mathcal Q_{1,r,\psi_J}^{str}` measure the
   same transported rung-1 strain geometry on the tower side;
3. the exact-potential branch reads that same geometry through the Cauchy--Green
   tensor and its top projector.

The genuine difference is the readout step:

```math
\widetilde{\mathcal H}_{N,r,\psi_J}
\quad\text{is branch-blind,}
\tag{EWI.4a}
```

```math
\mathfrak R_J^{ang}
\quad\text{is branch-sensitive and must select/synchronize a top projective readout.}
\tag{EWI.4b}
```

So `\widetilde{\mathcal H}_{N,r,\psi_J}` witnesses the admissible Navier--Stokes
object, but it does not by itself choose:

1. a synchronized projector `\widehat P_J`,
2. a reference top projector `P_J^{CG}`,
3. the instantaneous top-strain projector `P_{J,\top}^{seg}`.

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
\tag{EWI.5}
```

### 2. Exact-potential branch readout packet

Install the exact-potential readout packet

```math
\mathfrak R_J^{ang}
:=
\Big(
\widehat P_J,\,
P_J^{CG},\,
P_{J,\top}^{seg},\,
g_J^{CG},\,
\operatorname{Err}_{J,\mathrm{sync}},\,
\operatorname{Err}_{J,CG}^{pair,\varepsilon},\,
\operatorname{Err}_{J,\mathrm{ssc}}^{CG}
\Big),
\tag{EWI.6}
```

where:

1. `\widehat P_J` is the synchronized pair projector supplied by `D.7mq`;
2. `P_J^{CG}` is the current-time Cauchy--Green top projector;
3. `P_{J,\top}^{seg}` is the true instantaneous top-strain projector;
4. `g_J^{CG}` is the branch gap floor on the exact-potential strip;
5. `\operatorname{Err}_{J,\mathrm{ssc}}^{CG}` is supplied by `SSC-EP.A`, or by
   the installed sufficient packets `D.7mp + D.7mo + D.7mm` or `D.7mf + D.7mk`.

Write the integrated branch budget

```math
\mathcal E_J^{ang}
:=
\int_{I_J}\!\!\int_{\mathcal G_J}
\Big(
\operatorname{Err}_{J,\mathrm{sync}}
+
\operatorname{Err}_{J,CG}^{pair,\varepsilon}
+
\operatorname{Err}_{J,\mathrm{ssc}}^{CG}
\Big).
\tag{EWI.7}
```

## Exported CM-Side Supplier Ledger

The point of the theorem is to export the class-membership witness into the
exact-potential readout through one explicit ledger:

```math
\mathfrak e_{J,\mathrm{ang}}^{cm}
:=
\operatorname{Err}_{J,\mathrm{pack}}^{cm}
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}
+
\operatorname{Err}_{J,\mathrm{cal}}^{ang}.
\tag{EWI.8}
```

Interpretation of the three pieces:

1. `\operatorname{Err}_{J,\mathrm{pack}}^{cm}` pays for replacing the true
   transported separation `h(a,r,t)` by the linearized deformation model
   `F(a,t)r`, using the bridge `(TB.18)` and the relative packing ledger `P_F`;
2. `\operatorname{Err}_{J,\mathrm{tc}}^{cm}` pays for transporting the rung-1
   tower/strain defect onto the same strip, using `\widetilde E_{1,r,\psi_J}`
   and the exact source `\mathcal Q_{1,r,\psi_J}^{str}`;
3. `\operatorname{Err}_{J,\mathrm{cal}}^{ang}` is the branch calibration ledger
   already present on the exact-potential branch:

   ```math
   \operatorname{Err}_{J,\mathrm{cal}}^{ang}
   :=
   \operatorname{Err}_{J,\mathrm{sync}}
   +
   \operatorname{Err}_{J,CG}^{pair,\varepsilon}
   +
   \operatorname{Err}_{J,\mathrm{ssc}}^{CG}.
   \tag{EWI.8a}
   ```

## Exact Theorem Shape

### Theorem EWI.A (MPP witness to exact-potential readout)

Assume:

1. the transported class-membership packet `(EWI.5)` is finite on `I_J`;
2. the exact-potential branch readout packet `(EWI.6)` is installed on the same
   transported good family `\mathcal G_J`;
3. the angular ledger is read on that same family by

   ```math
   \Xi_J^{ang}(a,b,t)
   :=
   \frac12
   \bigl\|
   P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)
   \bigr\|_F^2.
   \tag{EWI.9}
   ```

Then there exist nonnegative ledgers
`\operatorname{Err}_{J,\mathrm{pack}}^{cm}`,
`\operatorname{Err}_{J,\mathrm{tc}}^{cm}`,
`\operatorname{Err}_{J,\mathrm{cal}}^{ang}` such that

```math
\Xi_J^{ang}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{loop}}(a,b,t)
\le
C_{\mathrm{EWI}}
\left(
|W_J(a,b,t)|^2
+
\operatorname{Err}_{J,\mathrm{pack}}^{cm}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}(a,b,t)
+
\operatorname{Err}_{J,\mathrm{cal}}^{ang}(a,b,t)
\right).
\tag{EWI.10}
```

Moreover the integrated supplier ledger obeys

```math
\int_{I_J}\!\!\int_{\mathcal G_J}
\Big(
\operatorname{Err}_{J,\mathrm{pack}}^{cm}
+
\operatorname{Err}_{J,\mathrm{tc}}^{cm}
\Big)
\le
C_{\mathrm{EWI,cm}}\mathcal E_J^{cm},
\tag{EWI.11}
```

and

```math
\int_{I_J}\!\!\int_{\mathcal G_J}
\operatorname{Err}_{J,\mathrm{cal}}^{ang}
\le
C_{\mathrm{EWI,ang}}\mathcal E_J^{ang}.
\tag{EWI.12}
```

Therefore

```math
\mathcal E_J^{dir,\mathrm{ang}}
+
\mathcal E_J^{loop}
+
\mathcal E_J^{pack}
+
\mathcal E_J^{tc}
+
\mathcal E_J^{cal}
\le
C_{\mathrm{EWI,tot}}
\left(
\mathcal E_J^{obs}(W_J)
+
\mathcal E_J^{cm}
+
\mathcal E_J^{ang}
\right).
\tag{EWI.13}
```

Equation `(EWI.13)` is the exact-potential specialization of `(FS.17)`.

## Proof Skeleton

1. Use the transported bridge identity

   ```math
   \Delta_r^XU_k(a,t)
   =
   \delta_{h(a,r,t)}U_k(X(a,t),t)
   \tag{EWI.14}
   ```

   to identify the tower side and the material side on the same transported
   increment.

2. Use the geometric packing bridge

   ```math
   \int \psi_J(a)^2 |h(a,r,t)-F(a,t)r|^2\,da
   \le
   |r|^2 P_F^\ast(r,t;\psi_J)
   \tag{EWI.15}
   ```

   to export packing coherence into the exact-potential strip geometry. This is
   the source of `\operatorname{Err}_{J,\mathrm{pack}}^{cm}`.

3. Use the exact rung-1 material source

   ```math
   \mathcal Q_{1,r,\psi_J}^{str}(t)
   =
   \int \psi_J(a)^2
   \big|
   \Delta_r((\nabla u)\circ X)(a,t)
   \big|^2\,da
   \tag{EWI.16}
   ```

   together with `\widetilde E_{1,r,\psi_J}` to control the transported
   strain/tower mismatch on the same family. This is the source of
   `\operatorname{Err}_{J,\mathrm{tc}}^{cm}`.

4. Invoke `D.7mq` to compare the synchronized projector `\widehat P_J` to the
   branch Cauchy--Green projector `P_J^{CG}` and record the pair-side ledger
   `\operatorname{Err}_{J,CG}^{pair,\varepsilon}`.

5. Invoke `SSC-EP.A` or the installed sufficient packet to compare `P_J^{CG}`
   to the true instantaneous top-strain projector `P_{J,\top}^{seg}` and record
   `\operatorname{Err}_{J,\mathrm{ssc}}^{CG}`.

6. Insert the projector-space triangle

   ```math
\|P_{ab}-P_{J,\top}^{seg}\|_F^2
\le
3
\left(
\|P_{ab}-\widehat P_J\|_F^2
+
\|\widehat P_J-P_J^{CG}\|_F^2
+
\|P_J^{CG}-P_{J,\top}^{seg}\|_F^2
\right),
\tag{EWI.17}
```

   and absorb the first term into `|W_J|^2` plus synchronization error, the
   second and third into the branch calibration ledger, and the strip/coherence
   geometry losses into the CM-exported packing/transport ledgers.

This yields `(EWI.10)`--`(EWI.13)`.

## Exact Boundary

This note deliberately refuses the following stronger claims:

```math
\mathcal E_J^{cm}
\Longrightarrow
D.7mq,
\tag{EWI.18a}
```

```math
\mathcal E_J^{cm}
\Longrightarrow
SSC\text{-}EP.A,
\tag{EWI.18b}
```

```math
W_J+\mathcal E_J^{cm}
\Longrightarrow
\widehat P_J.
\tag{EWI.18c}
```

The honest on-disk conclusion is narrower and stronger in the right sense:
class-membership is the semantic carrier, while `D.7mq` and selector-strain
compatibility remain the installed branch consumers that turn that carrier into
an exact-potential directional ledger.

## Downstream Use

Once `(EWI.13)` is available, the exact-potential branch reads cleanly as

```math
\mathcal E_J^{cm}
+
\mathcal E_J^{ang}
+
\mathcal E_J^{obs}(W_J)
\Longrightarrow
\mathcal E_J^{dir,\mathrm{ang}}
+
\mathcal E_J^{loop},
\tag{EWI.19}
```

then the existing downstream route takes over:

```math
EWI.A
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2.
\tag{EWI.20}
```

More sharply, on the installed exact-potential simple-top branch, the live
theorem-facing composition is now

```math
EWI.A
+ D.7mq
+ (D.7mp + D.7mo + D.7mm)
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{EWI.21}
```

Here the exact packet roles are now explicit on disk:

1. Theorem `SSD.A` packages the installed selector-strain supplier
   `D.7mp + D.7mo + D.7mm => SSC-EP.A`;
2. Corollary `EPA.B` packages
   `D.7mq + (D.7mp + D.7mo + D.7mm) => D.7mr2`;
3. Corollary `EPR.B` packages the same supplier chain into `RPC.3`;
4. Corollary `SGH.C` packages the same supplier chain into
   `SG.4 -> BR.\lambda2 -> continuation`.

So this note does not replace the exact-potential branch. It installs the exact
place where the class-membership doctrine enters that branch without being
flattened into a generic error term.

## Source Surfaces

Primary source surfaces for this interface:

1. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
2. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
3. `problems/navier-stokes/theorem-construction/mpp-fused-sg4-supplier-schema.md`
4. `problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md`
5. `problems/navier-stokes/theorem-construction/selector-strain-compatibility-for-synchronized-projector.md`
6. `problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md`
