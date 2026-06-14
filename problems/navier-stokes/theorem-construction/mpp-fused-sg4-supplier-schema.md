# MPP Fused SG.4 Supplier Schema

## Status

Candidate theorem-facing schema note.

Role: fused supplier surface connecting the MPP class-membership packet to the
selector-side `SG.4` packet.

This note does **not** claim that the selector readout is produced from the
signless packet `W_J` alone. Its job is narrower: treat the class-membership
packet as an upstream error ledger and state the exact branch-sensitive theorem
shape by which that ledger is exported into the live `SG.4` route.

## Purpose

The current repo now has two live theorem surfaces that need to meet without
being flattened into each other:

1. the MPP material-packet route, whose live closure packet is
   `\widetilde{\mathcal H}_{N,r,\psi}`;
2. the selector / pair-defect route, whose live downstream burden is the
   `SG.4` supplier packet built from the signless observed carrier `W_J`.

The correct fused theorem must therefore do **two** things, not one:

```math
\mathcal E_J^{cm}
+\mathfrak R_J^{branch}
\Longrightarrow
\mathfrak e_J^{cm},
\tag{FS.0}
```

and then

```math
W_J+\mathfrak R_J^{branch}+\mathfrak e_J^{cm}
\Longrightarrow
\text{SG.4 supplier packet.}
\tag{FS.1}
```

The decisive correction is that the theorem consumes a branch readout
`\mathfrak R_J^{branch}`. It does **not** manufacture that readout from
`W_J+\mathcal E_J^{cm}` alone.

## Constitutive Import

This schema is not allowed to start from selector algebra alone. Its governing
input is the class-membership object law:

```math
\text{shared packing law}
\;+\;
\text{shared participation law}
\;+\;
\text{shared one-field law}
\rightsquigarrow
\bigl(u,p,\Phi,F\bigr)
\rightsquigarrow
\bigl(
\Gamma,\ \widetilde{\mathcal H}_{N,r,\psi_J},\ \mathfrak P_N,\ \mathfrak Q_N
\bigr).
\tag{FS.1a}
```

So this note should always be read with the following split in mind:

1. constitutive import:
   one incompressible velocity-pressure-viscosity field with shared packing,
   shared participation, and shared one-field laws, then its current witness
   coordinates;
2. branch readout:
   `\mathfrak R_J^{branch}`;
3. downstream consumer:
   the selector-facing `SG.4` supplier packet.

## Upstream Class-Membership Packet

Fix one selector scale `J`, one transported good family `\mathcal G_J` on a
time window `I_J`, one material packet `\psi_J`, one signless pair-defect
observation packet `W_J`, and one packet depth `N\ge 1`.

Write the transported closure packet

```math
\widetilde{\mathcal H}_{N,r,\psi_J}(t)
:=
\widetilde E_{N,r,\psi_J}(t)
+
\alpha\,A_F(t;\psi_J)
+
\beta\,P_F(r,t;\psi_J),
\tag{FS.2}
```

where

```math
\widetilde E_{N,r,\psi_J}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi_J(a)^2\,|\Delta_r^X U_k(a,t)|^2\,da,
\tag{FS.3}
```

```math
A_F(t;\psi_J)
:=
\int \psi_J(a)^2\Big(|F(a,t)|^2+|A(a,t)|^2\Big)\,da,
\tag{FS.4}
```

```math
P_F(r,t;\psi_J)
:=
\int \psi_J(a)^2\Big(|\Delta_rF(a,t)|^2+|\Delta_rA(a,t)|^2\Big)\,da.
\tag{FS.5}
```

Write the exact rung-1 material source term

```math
\mathcal Q_{1,r,\psi_J}^{str}(t)
:=
\int \psi_J(a)^2
\big|
\Delta_r\big((\nabla u)\circ X\big)(a,t)
\big|^2\,da.
\tag{FS.6}
```

Then define the upstream class-membership budget

```math
\mathcal E_J^{cm}
:=
\sup_{t\in I_J}\sup_{0<|r|\le \rho_J}
\widetilde{\mathcal H}_{N,r,\psi_J}(t)
+
\int_{I_J}
\sup_{0<|r|\le \rho_J}
\mathcal Q_{1,r,\psi_J}^{str}(t)\,dt.
\tag{FS.7}
```

This is the MPP-side supplier budget. It is upstream of the selector route and
should be read as one class-membership error ledger, not yet as a directional
selector theorem.

More sharply: `\mathcal E_J^{cm}` is where pressure, viscosity,
incompressibility, and transported one-field coherence enter this schema before
any branch-specific projector or covector geometry is chosen.

## Branch Readout Packets

The selector-side theorem still needs one branch readout slot.

### Simple-Top / Exact-Potential Branch

Install a branch readout packet

```math
\mathfrak R_J^{ang},
\tag{FS.8}
```

whose output is the angular/projective directional ledger

```math
\Xi_J^{ang}(a,b,t)
:=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
=
\frac12\big\|P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)\big\|_F^2.
\tag{FS.9}
```

This branch is the exact-potential / projective readout surface.

Its exact specialization is now written in
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md),
which installs the honest branch theorem

```math
\mathcal E_J^{cm}
+
\mathfrak R_J^{ang}
\Longrightarrow
\mathfrak e_{J,\mathrm{ang}}^{cm}
\Longrightarrow
\Xi_J^{ang}.
\tag{FS.9a}
```

### Normal-Covector Branch

Install a branch readout packet

```math
\mathfrak R_J^{\perp},
\tag{FS.10}
```

whose output is the normal-covector directional density

```math
\Theta_J^{\perp}(a,b,t)
:=
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2.
\tag{FS.11}
```

This is the branch variable already consumed by the normal-covector `PD.70z`
route.

Its branch-specific class-membership splice is now written in
[mpp-normal-covector-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md),
which installs the honest branch theorem

```math
\mathcal E_J^{cm}
+
\mathfrak R_J^{\perp}
\Longrightarrow
\mathfrak e_{J,\perp}^{cm}
\Longrightarrow
\Theta_J^\perp.
\tag{FS.11a}
```

### General Hodge Branch

On the general Hodge branch, the branch readout packet is allowed to carry an
additional harmonic slot:

```math
\mathfrak R_J^{Hodge}
\rightsquigarrow
\big(\Xi_J^{branch},\mathcal E_J^{harm}\big).
\tag{FS.12}
```

Write

```math
\mathcal E_J^{branch}
\tag{FS.12a}
```

for the quantitative ledger carried by the chosen branch packet
`\mathfrak R_J^{branch}`. On the simple-top branch this is the projective /
angular readout budget; on the normal-covector branch it is the normal-direction
readout budget; on the Hodge branch it also includes the harmonic component.

## Transfer Lemma Schema

The first fused lemma should be written as a transfer statement.

### Lemma Candidate FS.A (class-membership packet plus branch readout supplies the MPP-side error ledger)

Assume one of the branch packets `\mathfrak R_J^{branch}` is installed on the
same transported good family `\mathcal G_J`. Then there exists a nonnegative
supplier error ledger

```math
\mathfrak e_J^{cm}
:=
\mathfrak e_J^{pack}
+
\mathfrak e_J^{tc}
+
\mathfrak e_J^{cal},
\tag{FS.13}
```

such that

```math
\mathcal E_J^{cm}
+\mathfrak R_J^{branch}
\Longrightarrow
\mathfrak e_J^{cm},
\tag{FS.14}
```

and

```math
\int_{I_J}\!\!\int_{\mathcal G_J}\mathfrak e_J^{cm}
\le
C_{\mathrm{FS,cm}}
\left(
\mathcal E_J^{cm}
+\mathcal E_J^{branch}
\right).
\tag{FS.15}
```

So every integrated supplier conclusion below must carry the integrated
branch-readout budget explicitly, either as
`\int_{I_J}\!\!\int_{\mathcal G_J}\mathfrak e_J^{cm}` or, after invoking the
transfer lemma `(FS.15)`, as `\mathcal E_J^{cm}+\mathcal E_J^{branch}`.

Interpretation:

1. `\mathfrak e_J^{pack}` pays for the packing-to-selector transfer error;
2. `\mathfrak e_J^{tc}` pays for transport coherence on the selector strip;
3. `\mathfrak e_J^{cal}` pays for selector calibration on the chosen branch.

The theorem should treat `\mathfrak e_J^{cm}` as an exported error ledger, not
as a free input.

## SG.4 Supplier Schema

The second fused lemma should use `W_J` together with the branch readout and the
exported MPP-side ledger.

### Lemma Candidate FS.B-ang (simple-top supplier packet)

On the simple-top / exact-potential branch,

```math
\Xi_J^{ang}
+
\operatorname{Err}_J^{loop}
+
\operatorname{Err}_J^{tc}
+
\operatorname{Err}_J^{cal}
\le
C_{\mathrm{FS,ang}}
\left(|W_J|^2+\mathfrak e_J^{cm}\right).
\tag{FS.16}
```

After integration on `\mathcal G_J`,

```math
\mathcal E_J^{dir,\mathrm{ang}}
+
\mathcal E_J^{loop}
+
\mathcal E_J^{tc}
+
\mathcal E_J^{cal}
\le
C_{\mathrm{FS,ang,int}}
\left(\mathcal E_J^{obs}(W_J)+\mathcal E_J^{cm}+\mathcal E_J^{branch}\right).
\tag{FS.17}
```

### Lemma Candidate FS.B-perp (normal-covector supplier packet)

On the normal-covector branch,

```math
\Theta_J^{\perp}
+
\operatorname{Err}_J^{loop}
+
\operatorname{Err}_J^{tc}
+
\operatorname{Err}_J^{cal}
\le
C_{\mathrm{FS,perp}}
\left(|W_J|^2+\mathfrak e_J^{cm}\right).
\tag{FS.18}
```

After integration,

```math
\mathcal E_J^{dir,\perp}
+
\mathcal E_J^{loop}
+
\mathcal E_J^{tc}
+
\mathcal E_J^{cal}
\le
C_{\mathrm{FS,perp,int}}
\left(\mathcal E_J^{obs}(W_J)+\mathcal E_J^{cm}+\mathcal E_J^{branch}\right).
\tag{FS.19}
```

### Lemma Candidate FS.B-H (general Hodge supplier packet)

On the general Hodge branch,

```math
\mathcal E_J^{dir}
+
\mathcal E_J^{harm}
+
\mathcal E_J^{loop}
+
\mathcal E_J^{tc}
+
\mathcal E_J^{cal}
\le
C_{\mathrm{FS,H}}
\left(\mathcal E_J^{obs}(W_J)+\mathcal E_J^{cm}+\mathcal E_J^{branch}\right).
\tag{FS.20}
```

## Consequence For `SG.4`

Whenever the supplier error ledger is absorbable on the chosen strip and branch,
the fused supplier packet reduces to the branch-local direct `SG.4` input:

```math
\mathcal E_J^{dir,\mathrm{branch}}
+
\mathcal E_J^{loop}
\le
C_{\mathrm{FS,red}}\mathcal E_J^{obs}(W_J),
\tag{FS.21}
```

which is then passed into the installed selector-side `SG.4` chain.

The exact form of the downstream `SG.4` export remains branch-sensitive. This
note only asserts that the MPP packet can be supplied into that chain through
one upstream error ledger `\mathcal E_J^{cm}` once the selector readout slot is
already installed.

## Exact Boundary

This schema deliberately refuses one false strengthening:

```math
\boxed{
\text{do not claim that }W_J+\mathcal E_J^{cm}\text{ alone manufacture the branch readout.}
}
\tag{FS.22}
```

The current repo truth is:

1. `W_J` is the signless observable carrier;
2. `\mathcal E_J^{cm}` is the upstream class-membership supplier budget;
3. `\mathfrak R_J^{branch}` is the missing selector readout slot;
4. only after all three are present should one package the `SG.4` supplier
   packet.

So the correct theorem-facing burden is:

```math
\boxed{
\text{construct the branch readout slot and prove the transfer }
\mathcal E_J^{cm}+\mathfrak R_J^{branch}\Longrightarrow \mathfrak e_J^{cm}.
}
\tag{FS.23}
```

On the exact-potential branch this abstract burden is now instantiated by
`EWI.A` in
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md).

On the normal-covector and general Hodge branches, the corresponding
specializations remain to be written. That is the exact place where
class-membership data still needs to be injected back into the active branch
starts.

## Source Surfaces

Primary source surfaces for this schema:

1. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
2. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
3. `problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md`
4. `problems/navier-stokes/theorem-construction/four-body-survivor-to-selector-readout-dictionary.md`
5. `problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md`
6. `problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md`
7. `problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md`
8. `problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md`
