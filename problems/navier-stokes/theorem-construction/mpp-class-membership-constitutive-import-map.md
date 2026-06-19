# MPP Class-Membership Constitutive Import Map

## Status

Theorem-facing integration note.

Role: re-root the active Navier--Stokes branch notes in the class-membership
doctrine so that branch-local hypotheses stop floating free of the governing MPP
object.

## Purpose

The current lane now has a real constitutive doctrine on disk:

```math
\text{one incompressible velocity-pressure-viscosity field}
\Longrightarrow
\text{shared packing, shared participation, shared one-field coherence.}
\tag{CIM.0}
```

The problem is no longer whether that doctrine exists. The problem is that many
branch notes still begin with branch-local hypotheses as though transport
coherence, calibration, and directional observability were autonomous
geometric miracles.

The job of this note is to force the opposite reading:

```math
\boxed{
\text{every closure-driving branch must declare what it imports from the class-membership carrier before it asks for branch-local geometry.}
}
\tag{CIM.1}
```

That is still not the strongest correction. For the sharper route rule, see
[mpp-constitutive-first-rederivation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-constitutive-first-rederivation-note.md):
the branch-start hypotheses and first consumer equations themselves must be
re-derived from the earliest CM-sensitive precipitating theorem, not merely
decorated with a later import header.

For the active surface-by-surface ledger of those starts, see
[mpp-surface-ontology-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-surface-ontology-ledger.md).

## Governing Object Law

The governing object is **not** the current witness package. The governing
object is the class-membership NS evolution itself:

```math
\boxed{
\text{one smooth incompressible Navier--Stokes evolution that remains internal to one single coupled pressure-viscosity field.}
}
\tag{CIM.2}
```

Its primitive laws are:

1. shared packing law;
2. shared participation law;
3. shared one-field law.

The stable carriers of that object law are:

```math
(u,p,\Phi,F),
\qquad
F:=D_a\Phi.
\tag{CIM.2a}
```

Only after fixing that object law do branch notes get to consume the currently
installed witness coordinates:

```math
\Gamma,\qquad
\widetilde{\mathcal H}_{N,r,\psi},\qquad
\mathfrak P_N,\qquad
\mathfrak Q_N.
\tag{CIM.2b}
```

This note does **not** claim that `(CIM.2b)` is already the final best witness.
It records the current installed witness coordinates of the object law, not the
object law itself.

## Mandatory Constitutive-Import Header

Every closure-driving branch note should now answer the same seven questions.

1. same one-field law:
   ```math
   \text{Which one common smooth field is the branch still talking about?}
   \tag{CIM.3}
   ```
2. pressure carrier:
   ```math
   \text{How is }-\nabla p\text{ entering the branch as part of the common participation carrier?}
   \tag{CIM.4}
   ```
3. viscosity carrier:
   ```math
   \text{How is }\nu\Delta u\text{ entering the branch as the coupling/drag term?}
   \tag{CIM.5}
   ```
4. incompressibility carrier:
   ```math
   \text{How does }\nabla\!\cdot u=0\text{ constrain the branch geometry through packing/flow-map structure?}
   \tag{CIM.6}
   ```
5. transport/coherence predicates:
   ```math
   \Gamma<\infty,\qquad
   \widetilde{\mathcal H}_{N,r,\psi}<\infty,\qquad
   \mathfrak P_N+\mathfrak Q_N<\infty.
   \tag{CIM.7}
   ```
6. exported observables:
   ```math
   \text{Which branch-facing observables are exported from the CM carrier?}
   \tag{CIM.8}
   ```
7. derived error budgets:
   ```math
   \text{Which branch error ledgers are CM-paid, and which remain genuinely branch-local?}
   \tag{CIM.9}
   ```

## Four-Layer Map

### Layer A. Constitutive doctrine

1. [mpp-primitive-class-laws-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md)
2. [mpp-class-membership-endpoint-exclusion-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md)
3. [mpp-material-packet-closure-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md)
4. [mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md)

### Layer B. Export / interface

1. [mpp-fused-sg4-supplier-schema.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fused-sg4-supplier-schema.md)
2. [mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md)

The generic interface shape is

```math
\mathcal E_J^{cm}
\;+\;
\mathfrak R_J^{branch}
\Longrightarrow
\mathfrak e_J^{cm}.
\tag{CIM.10}
```

### Layer C. Branch consumers

1. [exact-potential-angular-ledger-from-selector-strain.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md)
2. [directional-observability-from-projector-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/directional-observability-from-projector-identification.md)
3. [pd70z-cycle-exact-normal-covector-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-normal-covector-route.md)
4. [cycle-exact-angular-observability-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-angular-observability-packet.md)

### Layer D. Downstream consequence

```math
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2.
\tag{CIM.11}
```

## What Pops Out

Three route corrections appear at once.

### 1. `TCJ` is not a free miracle

In the cycle-exact angular packet, transport coherence on the good family is
currently written as an external-style hypothesis `TCJ`. After re-rooting in
class membership, the honest reading is:

```math
\text{TCJ is either a CM-imported transport/coherence consequence, or the exact open CM-to-branch export theorem.}
\tag{CIM.12}
```

So the old `TCJ` opening line is not an honest constitutive start. It is at
best a consumer-side hypothesis pending the earlier CM precipitation theorem.

### 2. Projector-identification errors must split

The abstract observability note still writes a generic
`\mathrm{Err}_{J,\mathrm{id}}`. Under the constitutive import discipline, that
ledger must be read as

```math
\mathrm{Err}_{J,\mathrm{id}}
=
\mathrm{Err}_{J,\mathrm{pack}}^{cm}
\;+\;
\mathrm{Err}_{J,\mathrm{tc}}^{cm}
\;+\;
\mathrm{Err}_{J,\mathrm{cal}}^{branch}.
\tag{CIM.13}
```

### 3. The exact-potential branch is ahead of the normal-covector/Hodge branch

The exact-potential branch already has its branch-specific CM splice:

```math
\mathcal E_J^{cm}
\;+\;
\mathfrak R_J^{ang}
\Longrightarrow
\mathfrak e_{J,\mathrm{ang}}^{cm}
\Longrightarrow
\Xi_J^{ang}.
\tag{CIM.14}
```

What is still missing on the normal-covector/Hodge side is the analogous
specialization:

```math
\mathcal E_J^{cm}
\;+\;
\mathfrak R_J^{\perp}
\Longrightarrow
\mathfrak e_{J,\perp}^{cm}
\Longrightarrow
\Theta_J^\perp,
\tag{CIM.15}
```

and similarly on the Hodge branch with the harmonic slot included.

## Current Integration Queue

The highest-leverage next injections are:

1. make the fused SG.4 schema speak in constitutive-import language from the
   first paragraph;
2. make the exact-potential angular ledger declare the CM import and its paid
   ledgers explicitly;
3. rewrite the abstract projector-identification note so
   `\mathrm{Err}_{J,\mathrm{id}}` is no longer branch-opaque;
4. write the normal-covector/Hodge specialization of `(CIM.10)`.
