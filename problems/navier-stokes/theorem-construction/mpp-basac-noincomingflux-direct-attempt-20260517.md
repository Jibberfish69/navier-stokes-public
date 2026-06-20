# MPP NoIncomingFlux_{B_ASAC}.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt after `UniformTemporalSourceIntegrability_{p,B_ASAC}.A` stayed open.

Outcome: open in the useful lateral/global-incoming sense. The attempt separates spatial no-incoming flux from terminal time-face source concentration.

## Target

A useful version of the theorem would give a class-specific no-incoming condition for the produced `B_ASAC` source-residue tangent class:

```math
\boxed{NoIncomingFlux_{B_{ASAC}}.A}
```

Strong enough target form:

```math
\lim_{R\to\infty}\limsup_{s_0\to-\infty}
Flux^{in}_{B_{ASAC}}(\partial_{par}\mathcal C_R^S(s_0,0))=0,
```

with the flux controlling incoming same-fluid source residue through the backward transported boundary.

Combined with an explicit time-face anti-atom theorem, this feeds `ZenoResidueLiouville_{B_ASAC}.A`.

## Installed inputs

The `B_ASAC` class gives no earlier selected source slice, zero ASAC defect, removed legal/projected/cutoff/boundary exits, removed finite and non-Zeno donor exits, and terminal Zeno source support. The source ledger gives local finite `L^1_s` mass.

The older `NoIncomingFlux_global.A` attempt shows that `FirstPulse.NoParent` controls selected source ancestry and supplies no full-field incoming flux bound through transported backward boundaries.

## Attempt 1: promote first-pulse no-parent to global no-incoming flux

`FirstPulse.NoParent` excludes earlier selected same-fluid source parents. The no-incoming flux target asks for a quantitative vanishing of all incoming source or field flux through a global transported boundary.

A nonselected packet family, a diffuse legal source cloud, or incoming far-field energy can cross the transported boundary without producing a bounded earlier selected source parent. Thus first-pulse no-parent gives a graph selection exclusion and no global flux estimate.

## Attempt 2: use B_ASAC exit removal

The `B_ASAC` clauses remove paid exits and ASAC-paid defect. They leave the retained native source residue as the live terminal record. The clauses classify a terminal Zeno survivor; they supply no transported-boundary tightness or weighted ancient decay.

Therefore exit removal does not yield no-incoming flux.

## Attempt 3: compact terminal time-face atom

A compact terminal layer

```math
F_m^{src,+}(s,x)=m\mathbf 1_{(-1/m,0]}(s)\rho(x),
\qquad \rho\in C_c(B_1),\quad \rho\ge0,
```

has bounded local `L^1_s` mass and converges to `\rho(x)dx\otimes\delta_{s=0}`. For large transported cylinders containing `supp(\rho)`, lateral incoming flux from spatial infinity can vanish, while the terminal time-face atom remains nonzero.

Thus a useful lateral/global no-incoming theorem controls spatial or backward-boundary inflow and leaves terminal time-face concentration as a separate obstruction.

## Attempt 4: include the terminal time face in the flux definition

A full parabolic-boundary definition that counts the terminal time face can detect the source atom. Under that definition, nonzero terminal source charge appears as the boundary flux itself.

That reformulation is diagnostic rather than a Liouville theorem. It restates the live terminal atom and gives no mechanism forcing its vanishing.

## Result

`NoIncomingFlux_{B_ASAC}.A` remains open as a useful analytic supplier. The available class data do not produce global transported-boundary no-incoming, and lateral no-incoming leaves compact terminal time-face atoms admissible.

The corrected conditional chain is:

```math
NoIncomingFlux_{B_ASAC}.A
+
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_ASAC}.A.
```

The time-face factor may be supplied by super-`L^1_s` temporal residence, terminal reverse Holder, branch-entropy reserve, or a rigid produced subclass.

## Verdict

The requested no-incoming form is a real equivalent entrance only when it includes enough strength to remove terminal time-face atoms. In the currently useful lateral/global-boundary reading, the theorem stays open and the next requested equivalent form is:

```math
\boxed{TransportedCylinderNoFlux_{B_ASAC}.A.}
```
