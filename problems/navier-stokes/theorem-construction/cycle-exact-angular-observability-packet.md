# Cycle-Exact Angular Observability Packet

## Status

Terminal downstream consumer packet for the preferred exact-potential branch of
the live selector route.

This note does **not** claim that the missing alignment theorem is already
proved. Its job is to isolate the final geometric input with exact assumptions
and to make the downstream closure to `PD.70z`, `PD.70`, `PD.70aa`, and
`SG.4B` completely explicit.

Its lawful branch start is upstream: `EWI.A` on the exact-potential side, and
`NWI.A` on the parallel normal-covector side. Both only become live after the
separate Law 2 survivor reduction has excluded the dead-endpoint line:
[mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md).

## Purpose

After the exact-potential witness-to-readout splice, the current lane has
already reduced the exact-potential branch to one concrete geometric problem:
convert signless observed pair-defect data into control of a concrete angular
directional ledger on a transported good family.

The strongest honest packet now is therefore not another PDE coercivity note.
It is one theorem packet whose assumptions are exactly the external-style inputs
that would still be needed:

1. transport coherence on the good family;
2. trajectorywise alignment with the expanding eigendirection;
3. the installed pair-defect observation bound.

Everything downstream of that packet is an explicit conditional implication
chain on disk.

## Constitutive Import

After the class-membership splice work, this packet should no longer be read as
purely external-style geometry.

The honest split is:

1. constitutive import:
   the CM carrier should pay for transported packing/coherence on the good
   family wherever the export theorem is available;
2. branch readout:
   alignment with the branch-specific top direction;
3. downstream consequence:
   the directional ledger consumed by `PD.70z`, `PD.70`, `PD.70aa`, and
   `SG.4B`.

So this packet has no primitive theorem start of its own. The lawful consumer
discipline is

```math
EWI.A
\Longrightarrow
\text{exact-potential angular/readout consumer surfaces}
\Longrightarrow
\text{this packet},
```

on the exact-potential branch, and

```math
NWI.A
\Longrightarrow
\Theta_J^\perp\text{ consumer packet}
\Longrightarrow
\text{finite-strip upgrade},
```

on the parallel normal-covector branch.

So Hypothesis `TCJ` below is no longer a free-floating miracle. It is a
downstream consumer input on top of an already named witness-to-readout
theorem.

In particular, the note's current theorem start is a consumer start, not yet the
earliest constitutive start. The earlier precipitating correction is written in
[mpp-constitutive-first-rederivation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-constitutive-first-rederivation-note.md).

## Live branch position

Installed already:

1. pair-defect PDE closure on the torus-first branch;
2. the residual splice
   `pair-defect PDE -> PD.70 -> PD.70aa -> SG.4B`
   once the cycle-exact directional estimate is granted;
3. the simple-top angle reduction on the selector-good family;
4. the concrete cycle-exact directional ledgers

```math
\Xi_J^{ang}(a,b,t)
:=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2,
\tag{CAO.0}
```

and

```math
\Xi_J^{\perp}(a,b,t)
:=
\big|n_J(a)\cdot e_{ab}(t)\big|^2;
\tag{CAO.0a}
```

5. the finite-strip square-root upgrade already available on the
   normal-covector route.

Read the exact-potential side here only below `EWI.A`; the mention of the
normal-covector route is only a parallel consumer comparison downstream of
`NWI.A`, not an alternative primitive start.

Still missing:

1. selector-adapted observability from signless `W_J` to one of the concrete
   angular ledgers;
2. on the normal-covector route, the final linear upgrade if one wants full
   `PD.70z` from that branch.

Preferred local endgame:

```text
cycle-exact simple-top angular route.
```

## External geometric input to isolate

This packet introduces two explicit external-style hypotheses.

### Hypothesis `TCJ` (transport coherence on the good family)

There exists a transported good family `G_J^{pair}(I)` on the strip
`I=[t_0,t_1]` and a measurable transported pair direction field

```math
e_{ab}(t)\in\mathbb S^2
\qquad
\text{for }(a,b)\in G_J^{pair}(I),
\tag{TCJ.1}
```

such that:

1. trajectories are uniquely defined for almost every active pair on `I`;
2. transported pair directions vary measurably along `I`;
3. the good family is stable under transport on `I`;
4. one has an asymmetric Lusin-Lipschitz distortion control strong enough to
   compare transported pair directions at nearby times and locations with an
   error absorbed into a strip coherence ledger
   `\mathcal E_{J,\mathrm{coh}}(I)`.

Interpretation:

1. this is the exact role suggested by the transport-coherence line;
2. it does **not** choose an expanding direction;
3. it only makes the transported good family and the direction field usable.

Under the constitutive-import discipline, `TCJ` should ultimately be discharged
from the class-membership carrier rather than left as an independent branch
axiom.

### Hypothesis `TEA` (trajectorywise expanding-direction alignment)

Let

```math
S_J(t,x)
:=
\frac{\nabla u_{\le J}(t,x)+\nabla u_{\le J}(t,x)^\top}{2}
\tag{TEA.0}
```

be the coarse strain tensor, and let `n_J(t,x)` denote a measurable top
eigendirection of `S_J` on the simple-top cone, where the top eigengap is
bounded below by the installed cone / spectral-gap ledger.

Assume that on the transported good family,

```math
1-\big|e_{ab}(t)\cdot n_J(t,X_{\le J}(a,t))\big|^2
\le
C_{\mathrm{align}}\,
\big|W_J(a,b,t)\big|^2
+
\operatorname{err}_{J,\mathrm{align}}(a,b,t)
\tag{TEA.1}
```

for almost every `(a,b,t)\in G_J^{pair}(I)\times I`, with integrated error
bound

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\operatorname{err}_{J,\mathrm{align}}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt
\le
C\Big(
\mathcal E_{J,\mathrm{coh}}(I)
+
\mathcal E_{J,\mathrm{ang}}^{\mathrm{err}}(I)
\Big).
\tag{TEA.2}
```

Interpretation:

1. this is the missing polarization / alignment input;
2. it upgrades signless `W_J` into proximity of the transported pair direction
   to the top expanding direction.

## Cycle-exact angular observability theorem

### Theorem `CAO.1` (cycle-exact angular observability from coherence and alignment)

Assume:

1. the cycle-exact branch, so
   `\mathcal E_J^{loop}(I)=0`;
2. the installed simple-top spectral-gap and angle-reduction packet;
3. Hypothesis `TCJ`;
4. Hypothesis `TEA`;
5. the installed observed-packet bound

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\big|W_J(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}\,
\mathcal E_J^{obs}(I).
\tag{CAO.1}
```

Then the angular directional ledger satisfies

```math
\mathcal E_J^{dir,ang}(I)
:=
\int_I\!\!\int_{G_J^{pair}(I)}
\Big(
1-\big|e_{ab}(t)\cdot n_J(t,X_{\le J}(a,t))\big|^2
\Big)
\,d\mu_J^{pair}(a,b)\,dt
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{coh}}(I)
+
\mathcal E_{J,\mathrm{ang}}^{\mathrm{err}}(I)
\Big).
\tag{CAO.2}
```

In particular, if the coherence and angular error ledgers are absorbed into the
installed strip error budget, then

```math
\mathcal E_J^{dir,ang}(I)
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{strip}}^{\mathrm{err}}(I)
\Big).
\tag{CAO.3}
```

**Proof.**
Integrate `(TEA.1)` over `G_J^{pair}(I)\times I`:

```math
\mathcal E_J^{dir,ang}(I)
\le
C_{\mathrm{align}}
\int_I\!\!\int_{G_J^{pair}(I)}
\big|W_J(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
+
\int_I\!\!\int_{G_J^{pair}(I)}
\operatorname{err}_{J,\mathrm{align}}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt.
```

Apply `(CAO.1)` and `(TEA.2)` to obtain `(CAO.2)`. The absorbed form `(CAO.3)`
comes from moving the final term of `(CAO.2)` to the left. ∎

## Splice to the installed cycle-exact branch

### Corollary `CAO.2` (angular observability implies `PD.70z`)

Assume the hypotheses of `CAO.1` and the installed simple-top angle reduction

```math
[\lambda_J(t)-\mathfrak s_J(a,b,t)]_+
\le
\varepsilon_J^{spec}(a,b,t)
+
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t),
\tag{CAO.4}
```

with `\alpha_J` identified with the angular ledger on the same selector-good
family up to the already installed branch constants.

Then

```math
\mathcal E_J^{dir}(I)
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{strip}}^{\mathrm{err}}(I)
\Big),
\tag{CAO.5}
```

which is the desired cycle-exact directional estimate `PD.70z` on the
simple-top branch.

**Proof.**
The installed simple-top reduction expresses the one-sided directional deficit
through the angular forcing ledger. By `(CAO.3)`, that ledger is controlled by
the observation packet and the absorbed strip errors. Substitute this into the
installed cycle-exact reduction to obtain `(CAO.5)`. ∎

## Downstream consequence packet

### Corollary `CAO.3` (`PD.70z` closes the exact-potential branch)

Assume the hypotheses of `CAO.2`. Then the exact-potential branch closes
through the already installed on-disk splices:

```math
\text{cycle-exact angular observability}
\Longrightarrow
PD.70z
\Longrightarrow
PD.70
\Longrightarrow
PD.70aa
\Longrightarrow
SG.4B.
\tag{CAO.6}
```

**Proof.**
This is exactly the existing downstream packet and requires no new geometry
beyond `CAO.2`. ∎

## Why this packet is exact

This packet isolates the final missing input with no ambiguity.

What it does **not** claim:

1. it does not replace `EWI.A` as the exact-potential constitutive start or
   `NWI.A` on the parallel normal-covector side;
2. it does not derive `TEA` from the installed signless pair-defect packet;
3. it does not derive the top-direction readout from exactness alone;
4. it does not claim the normal-covector route has the final linear upgrade.

What it **does** claim:

1. once the exact-potential consumer start under `EWI.A` is in place and
   transport coherence and trajectorywise expanding-direction alignment are
   granted in the explicit forms `TCJ` and `TEA`, the exact-potential branch
   closes formally by the current packet stack;
2. the exact remaining theorem is therefore no longer ambiguous.

## Why nearby abstract ideas are not better

I searched for abstract replacements not tied directly to Navier-Stokes. There
is one nearby reformulation that is slightly cleaner: the projective
synchronization packet in
`cycle-exact-projective-synchronization-packet.md`. It is better only in theorem
hygiene: the target `1-(e_{ab}\cdot n_J)^2` is already signless, so the final
object should be a rank-one projector or line field rather than an oriented
polarity map.

Beyond that reformulation, the nearest alternatives are still:

1. Davis-Kahan style eigenspace perturbation;
2. dominated-splitting / cone-contraction packages for linear cocycles;
3. Oseledets / covariant-Lyapunov-vector alignment frames.

Those are conceptually adjacent, but they are not better for the live route.
Each still needs one of the same missing ingredients:

1. an observable symmetric perturbation whose eigenspaces can be compared to the
   expanding direction;
2. a projective cone contraction forced by a packet built from `W_J`;
3. a trajectorywise alignment hypothesis already equivalent in strength to
   `TEA`.

So the only genuine improvement from the abstract search is the sign-compatible
projective reformulation. It sharpens the theorem shape, but it still does not
remove the need for a new geometric input from signless observed pair-defect
data to the angular ledger.

## Relation to external ideas

This packet is intentionally modeled on two external geometric roles.

1. `TCJ` is the transport-coherence role suggested by the asymmetric
   Lusin-Lipschitz / almost-everywhere trajectory uniqueness line.
2. `TEA` is the trajectorywise alignment role suggested by alignment with strain
   eigendirections / Lyapunov vectors.

These roles are used only as hypothesis templates here. No unsupported import
of those papers into the Navier-Stokes packet is made.

## Minimal remaining burden after this packet

After installing this downstream consumer packet, the exact remaining unproved
content is reduced to:

1. prove `TCJ` on the active transported good family from the available
   weak-solution transport package;
2. prove `TEA` from a selector-adapted geometric readout theorem on the
   simple-top branch.

Everything else on the exact-potential branch is downstream bookkeeping already
recorded as explicit conditional implications on disk.
