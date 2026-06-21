# MPP Constitutive-First Survivor Ledger

## Status

Theorem-facing matrix ledger.

Role: align the current stalled shell programs against the same class-membership
carrier, isolate the smallest shared packet already visible on disk, and prevent
the live NS MPP queue from being rebuilt as a fake surviving-pair frontier.

## Purpose

With the separate Law 2 no-drop branch installed, the live frontier is no longer
allowed to drift across three independent primitive laws. But one installed
matrix entry is still not a surviving-pair theorem:

```math
\text{no-drop}
\Longrightarrow
\text{installed `(Part, Dead)` entry only.}
\tag{SFL.0}
```

So the practical constitutive-first question is no longer:

```math
\text{which branch do we patch next in isolation?}
```

It is:

```math
\boxed{
\text{which same-fluid survivor packet receives the stalled tails of the remaining branches, and what is its irreducible receiver?}
}
\tag{SFL.1}
```

This note records that alignment explicitly.

## Common Carrier

Every entry below is measured against the same constitutive carrier:

```math
(u,p,\Phi,F),
\qquad
F:=D_a\Phi.
\tag{SFL.2}
```

The branch is not allowed to change that carrier silently. It may only project
or consume it.

## Survivor-Equivalence Atlas Overlay

The carrier comparison language for this ledger is now fixed by
[mpp-survivor-equivalence-atlas-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-survivor-equivalence-atlas-note.md).
The current candidate for the unified survivor itself is the enhanced terminal
finite--infinitesimal separation survivor
`\mathbb S_\ast^{h/F}=(J_\ast,M_\ast)`, with scalar trace
`\mathcal S_\ast^{h/F}=\operatorname{tr}M_\ast`, in
[mpp-unified-survivor-finite-infinitesimal-separation-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-unified-survivor-finite-infinitesimal-separation-defect-note.md).

Each entry below is read as a packet

```math
R=(F,I,\Lambda,C,W,E,\rho)
\tag{SFL.2a}
```

and every map between entries must be classified as one of:

```math
\mathrm{IdEdge},\qquad
\mathrm{ReadoutEdge},\qquad
\mathrm{BridgeEdge},\qquad
\mathrm{IllegalCarrierChange}.
\tag{SFL.2b}
```

The current high-level edge audit is:

1. `L2F.A` is a bridge edge removing the participation-side live branch after
   the installed no-drop theorem; it does not by itself identify the remaining
   pack and field survivors.
2. `OFP.A` is a bridge edge from the lower-carrier / collar receiver packet to
   the `Field / Jump` endpoint cell, conditional on the source-side and
   receiver-side inputs named in the one-field program.
3. `CSP.A / LCI.A` is a bridge edge from receiver/collar failure to the
   one-field survivor packet, not a separate primitive endpoint row.
4. The four-body / selector dictionary supplies readout edges from the older
   tail, tower, deformation, and selector faces to one survivor family, but
   those readouts become class-membership edges only after their endpoint cell
   in `Pack / Part / Field` is exhibited.
5. The affine transported-center route is a bridge edge into the receiver
   packet only if its `DTC.A` license is obeyed; any use of `LCI.A`, `CSP.A`,
   `OFP.A`, `Field`, or endpoint exclusion inside that supplier is an illegal
   carrier change.

So this ledger is no longer read only as a list of branch residues. It is
an atlas-compatibility ledger: every survivor entry must preserve the same
carrier, endpoint cell, and proof direction before it can be identified with
another entry.

## Mandatory Header For Every Entry

Every survivor entry is read through the same seven constitutive questions from
the import map:

1. same one-field law:
   which one common smooth field is the branch still talking about?
2. pressure carrier:
   how does `-\nabla p` enter as part of the common participation carrier?
3. viscosity carrier:
   how does `\nu\Delta u` enter as the coupling / drag term?
4. incompressibility carrier:
   how does `\nabla\!\cdot u=0` constrain the branch geometry through the
   packing / flow-map structure?
5. transport / coherence predicates:
   which CM predicates remain installed on this branch?
6. exported observables:
   which branch-facing observables are exported from the CM carrier?
7. derived error budgets:
   which ledgers are CM-paid, and which are genuinely branch-local?

Every entry then records five additional survivor items:

1. the final obstruction term;
2. the carrier it lives on;
3. the branch readout it feeds;
4. the source terms that keep it alive;
5. the visible class-violation forced by the entry.

## First Dictionary Layer Already On Disk

Before writing new survivor theorems, the current notes already supply the first
conversion layer.

### 1. Law 2 survivor reduction

The live frontier is already reduced to the packing / one-field side by
`L2F.A`. So participation failure is not supposed to be kept as a third live
survivor family inside this ledger.

### 2. One-field survivor packet

The current best common one-field packet candidate is:

```math
\Upsilon_{N,\rho,\psi}^{\delta}(t)
:=
\sup_{0<|r|\le \rho}
\left(
\frac{1}{|r|^2}\widetilde E_{N,r,\psi}(t)
+
P_F^\ast(r,t;\psi)
\right)
+
A_F(t;\psi_\rho^\sharp)
+
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t).
\tag{SFL.3}
```

This is just `(OFP.10o)`. The note already installs the first dictionary maps:

```math
\mathcal Q_{1,\rho,\psi}^{str}
\Longrightarrow
\Upsilon,
\tag{SFL.3a}
```

```math
A_F^\sharp
\Longrightarrow
\Upsilon,
\tag{SFL.3b}
```

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}
\Longrightarrow
P_{F,\rho,\psi}^\ast \cdot \mathfrak C_{N+1,\rho,\psi}^{\delta}
\Longrightarrow
\Upsilon,
\tag{SFL.3c}
```

through `(OFP.10p)`--`(OFP.10r)` and `(PC.14)`.

### 3. Irreducible receiver

The same one-field note already records that the enlarged packet does **not**
fully close on its own:

```math
\boxed{
\text{the real irreducible receiver is the collar packet, not the earlier whole supplier ladder.}
}
\tag{SFL.4}
```

So the first honest survivor theorem on this line is still:

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty.
\tag{SFL.5}
```

### 4. Receiver sharpening inside the collar route

That collar receiver is no longer monolithic. The current notes already reduce
it to the lower-carrier package:

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}
\Longrightarrow
\text{lower-carrier receiver branch}
\Longrightarrow
\text{either }(LCI.3c3x)\text{ or }(LCI.3c3k0)\to(LCI.3c5f).
\tag{SFL.6}
```

On the transported-center realization with bounded pack-side gauge, the sharper
receiver side already reduces further to:

```math
(LCI.3c3y)
\Longrightarrow
\text{local Holder oscillation ledger}
\;+\;
\text{transported-center triangular carrier system.}
\tag{SFL.7}
```

So the survivor program is already telling us where to look: the common packet
exists, and its receiver is smaller than the old branch ladder.

## Survivor Entries

### Entry 1. One-field forward preservation branch `OFP.A`

- Same one-field law:
  one same-fluid neighboring-tower law on the still-live family.
- Pressure carrier:
  pressure enters through the finite-difference tower law and the frozen-family
  response / pressure ledgers on the same field.
- Viscosity carrier:
  viscosity enters through the dissipative collar packet and lower-order collar
  packet.
- Incompressibility carrier:
  incompressibility is carried through the deformation / distortion ledgers
  `F`, `A_F`, and `P_F^\ast`.
- Transport / coherence predicates:
  `\widetilde E`, `P_F^\ast`, `A_F`, and the collar packet remain on the same
  same-fluid packet family.
- Exported observables:
  positive one-field coherence regimes and the field-side readout preventing jump.
- Derived error budgets:
  CM-paid carrier part is the enlarged same-fluid packet `\Upsilon`;
  branch-local consumer part is the final one-field preservation readout.
- Final obstruction term:
  the paired one-field wall: frozen-family source-only integrability plus the
  lower-carrier receiver package, with the common packet still bottlenecking on
  the collar receiver `(OFP.10s)`.
- Carrier it lives on:
  `\Upsilon_{N,\rho,\psi}^{\delta}`.
- Branch readout it feeds:
  `OFP.A`, hence the one-field side of `CFI.A` and the no-jump side.
- Source terms that keep it alive:
  frozen-family source-only ledger `(FCI.5ec)` and the lower-carrier
  receiver branch.
- Visible class-violation forced by the entry:
  jump manifestation / one-field coherence fracture.

### Entry 2. Collar receiver branch `CSP.A` / `LCI.A`

- Same one-field law:
  one same-fluid packet family on the moving collar.
- Pressure carrier:
  pressure stays on the redistribution / flux channel, and on the sharper
  transported-center branch as pressure-center forcing.
- Viscosity carrier:
  viscosity enters through the collar dissipation packet and, on the sharper
  center branch, the top-two viscous center ledgers.
- Incompressibility carrier:
  the moving collar geometry and the packet-local deformation gauge are carried
  by the same flow map `\Phi` and deformation field `F`.
- Transport / coherence predicates:
  same-fluid collar packet propagation, packet-local deformation control,
  lower-order carrier packet.
- Exported observables:
  common collar envelope, weighted-segment packet, and the collar contribution
  to the one-field survivor packet.
- Derived error budgets:
  CM-paid carrier part is the moving collar packet geometry and its same-fluid
  deformation / transport package; branch-local consumer part is the lower-
  carrier coefficient closure.
- Final obstruction term:
  the sharper coefficient closure `(LCI.3c3x)`;
  on the coarser scalar route, the shell bridge `(LCI.3c3k0)` followed by the
  direct scalar bridge `(LCI.3c5f)`;
  on the transported-center realization, the square-integrable pair `(LCI.3c3y)`
  with unresolved first-center / pressure-center / top-two-viscous forcing.
- Carrier it lives on:
  `\mathcal K_{N+1,m,\rho,\psi}^{\delta}` and its lower-order receiver packet
  `\mathcal G_{N,m,\rho,\psi}^{low,\delta}`.
- Branch readout it feeds:
  the common collar envelope, then the weighted-segment side, then `\Upsilon`.
- Source terms that keep it alive:
  lower-carrier coefficients, packet-local deformation gauge, frozen-family
  source term, center oscillation / center forcing on the sharper branch.
- Visible class-violation forced by the entry:
  jump manifestation through loss of common collar coherence.

### Entry 3. Frozen-family source branch `FCI.A1`

- Same one-field law:
  the same field read through a fixed finite Eulerian family on the same
  interval.
- Pressure carrier:
  pressure remains inside the packet-level neighboring-response density.
- Viscosity carrier:
  viscosity remains inside the same packet-level neighboring-response density.
- Incompressibility carrier:
  the frozen increments are still read on the same one-field carrier.
- Transport / coherence predicates:
  the frozen family remains a consumer of the same one-field packet law, not an
  autonomous fluid.
- Exported observables:
  the fixed finite packet family on the reference side.
- Derived error budgets:
  CM-paid carrier part is the fixed-family packet energy itself; branch-local
  consumer part is the surviving neighboring-response ledger on that frozen
  family.
- Final obstruction term:
  the stricter source-only ledger
  `\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I)`.
- Carrier it lives on:
  the frozen finite family `\mathcal F_{N,\rho,\psi}^{\varepsilon}`.
- Branch readout it feeds:
  the fixed-family half of the one-field supplier split and the reference-envelope
  discharge.
- Source terms that keep it alive:
  `\mathcal P_N^{red}+\mathcal F_N^{press}+\mathcal S_N+\mathcal R_N+\mathcal C_N^{cut}`
  on each frozen increment.
- Visible class-violation forced by the entry:
  jump manifestation on the one-field side if the reference-family coherence
  collapses.

### Entry 4. Field-window support gauge branch `CFI.C1a`

- Same one-field law:
  one common deformation carrier on one compact label collar.
- Pressure carrier:
  pressure is not the primary readout here; this branch tracks the deformation
  class beneath the same field.
- Viscosity carrier:
  viscosity acts only through the same shared field generating the strain
  `\nabla u` along the flow.
- Incompressibility carrier:
  the branch is literally a flow-map / deformation branch, so
  `\nabla\!\cdot u=0` constrains the admissible deformation class directly.
- Transport / coherence predicates:
  one common label collar `A_\sharp`, one flow map `\Phi`, one deformation field
  `F`.
- Exported observables:
  `\Gamma_\sharp\in L^\infty(I)` and packet-local variants of the same
  deformation control.
- Derived error budgets:
  CM-paid carrier part is the deformation gauge itself; branch-local consumer
  part is only the chosen collar on which it is read.
- Final obstruction term:
  `\|\nabla u(\cdot,t)\|_{L^\infty(\Phi(A_\sharp,t))}\in L^1(I)`.
- Carrier it lives on:
  `\Gamma_\sharp`.
- Branch readout it feeds:
  packing-side forward preservation and the bounded pack-side gauge required by
  the transported-center receiver branch.
- Source terms that keep it alive:
  the deformation-driving strain ledger on the common label collar.
- Visible class-violation forced by the entry:
  blown manifestation / failure of the common deformation class.

### Entry 5. Manifestation bridge `MBR.C`

- Same one-field law:
  one approaching still-live family carrying the same field into the terminal
  approach.
- Pressure carrier:
  pressure is reconstructed together with the same limiting field.
- Viscosity carrier:
  viscosity survives in the differentiated laws passed to the limit.
- Incompressibility carrier:
  the limiting field remains one incompressible NS field.
- Transport / coherence predicates:
  uniform surviving-side non-degeneration on the still-live approach family.
- Exported observables:
  local classical reconstitution near `(x_\ast,T_\ast)`.
- Derived error budgets:
  CM-paid carrier part is the surviving-side non-degeneration data on the
  approach family; branch-local consumer part is the compactness / extraction /
  reconstruction argument.
- Final obstruction term:
  on the compactness route, there is no remaining obstruction inside the local
  reconstitution step under the current weakened genuineness notion; the bridge
  is now exported downstream to the surviving endpoint pair.
- Carrier it lives on:
  the still-live approach family `\mathcal Q_\ast`.
- Branch readout it feeds:
  formal `MBR.E`, i.e. genuine non-smoothness implies blown or jump
  manifestation, with chronological readout `MBR.F`.
- Source terms that keep it alive:
  finite tower bounds and surviving positive coherence scales on the approach
  family.
- Visible class-violation forced by the entry:
  blown manifestation or jump manifestation.

### Entry 6. Surviving endpoint exclusions `L13`

- Same one-field law:
  one common deformation carrier and one common one-field coherence carrier.
- Pressure carrier:
  pressure remains inside the same field; on the one-field side it is mediated
  through the transported closure packet.
- Viscosity carrier:
  viscosity remains inside the same field and the transported closure packet.
- Incompressibility carrier:
  packing-side deformation and one-field coherence are both read on the same
  incompressible carrier.
- Transport / coherence predicates:
  `Pack` on the deformation side and `Field` on the one-field side.
- Exported observables:
  no blown endpoint and no jump endpoint.
- Derived error budgets:
  CM-paid carrier part is the common class-membership witness and its packet
  ledgers; branch-local consumer part is the final endpoint exclusion statement.
- Final obstruction term:
  on the packing side `(L13.9)`;
  on the one-field side `(L13.17)`.
- Carrier it lives on:
  deformation ledgers `A_F`, `P_F` and the transported one-field packet
  `\widetilde E_{N,r,\psi}`.
- Branch readout it feeds:
  the law / endpoint proof matrix needed before downstream readout branches.
- Source terms that keep it alive:
  packing ledgers on the Law 1 side and transported closure packet ledgers on
  the Law 3 side.
- Visible class-violation forced by the entry:
  one of the open shell programs currently under test.

### Entry 7. Optional one-defect compression

- Same one-field law:
  one same-fluid `Pack / Part / Field` predicate package.
- Pressure carrier:
  pressure remains part of that same exact predicate package.
- Viscosity carrier:
  viscosity remains part of that same exact predicate package.
- Incompressibility carrier:
  the defect is admissible only if it preserves one common deformation /
  participation / one-field carrier.
- Transport / coherence predicates:
  `Pack`, `Part`, and `Field` must remain exact, not unspecified witness surrogates.
- Exported observables:
  a zero-set realization of class membership.
- Derived error budgets:
  CM-paid carrier part is the exact predicate package itself; branch-local
  consumer part is only the residual same-fluid defect law.
- Final obstruction term:
  there is still no accepted defect `\mathfrak D` and no closed zero-set
  propagation law.
- Carrier it lives on:
  the exact `Pack / Part / Field` predicates.
- Branch readout it feeds:
  a compressed realization of `CFI.A`.
- Source terms that keep it alive:
  whichever branch tails survive after exact predicate export.
- Visible class-violation forced by the entry:
  `\mathfrak D>0`, hence blown or jump.

## Current Survivor Choice By Minimality

The present survivor choice is not “the broadest packet we can name.” It is the
smallest object currently meeting the constitutive-first tests:

1. it lives on the common carrier `(u,p,\Phi,F)`;
2. several one-field branch tails already map into it on disk;
3. it still feeds a visible class-violation on the one-field side;
4. its unresolved receiver is already smaller than the old supplier ladder.

So the current best common packet candidate is:

```math
\Upsilon_{N,\rho,\psi}^{\delta}(t).
\tag{SFL.8}
```

But the irreducible receiver is not `\Upsilon` itself. It is first the collar
packet `\mathcal K_{N+1,m,\rho,\psi}^{\delta}`, and then inside that the
lower-carrier receiver package:

```math
\Upsilon
\Longrightarrow
\mathcal K
\Longrightarrow
\text{lower-carrier receiver}
\Longrightarrow
\text{visible one-field preservation or jump.}
\tag{SFL.9}
```

So the shortest constitutive-first propagation theorem on this line is still:

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty.
\tag{SFL.10}
```

and its sharper live receiver remains the lower-carrier closure package rather
than the old undifferentiated supplier ladder.

## Hard Accept Rule

On this survivor line, a new lemma is worth keeping only if it does one of the
following:

1. reduces a stalled branch tail to the common survivor packet;
2. propagates the common survivor packet or its irreducible receiver;
3. converts that packet to visible blown or jump manifestation;
4. closes the final contradiction.

Everything else is treated as archive material rather than live frontier.
