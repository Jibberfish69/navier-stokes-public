# MPP Torus Global Material Atlas Terminal Capture

Date: 2026-05-26

Status: working proof installation for the torus-first CM contrapositive
route.

## Target

This note works the terminal-capture burden directly on the active periodic
surface:

```text
finite terminal non-continuation on T^3
=> one readout-complete same-fluid terminal atlas is tested
=> first failed Part/Field service
=> Exit(Q):=not Member(Q).
```

The proof does not choose an undefined "terminal subsequence" as the
load-bearing object.  It uses the whole finite material atlas of the torus.

## Scope

The source frontier currently states the active theorem on `T^3`:

```text
smooth divergence-free zero-mean data on T^3, f=0
=> global smooth classical Navier-Stokes solution.
```

This note closes terminal capture for that torus-first surface.  Whole-space
`R^3` export still needs its own tightness/localization theorem and is not
claimed here.

## Construction

Let `(u,p)` be the maximal classical Navier-Stokes solution on `[0,T_*)` with
`T_*<infty`, and fix `s>5/2`.  Let `N_s` be a finite continuation depth high
enough for the installed `H^s` readout.

Choose once and for all a finite smooth atlas/partition on `T^3`:

```text
{A_a}_{a=1}^m,     {chi_a^0}_{a=1}^m,
```

with positive coordinate radius and finite overlap.  For each `t<T_*`, let
`Phi_t` be the Lagrangian flow of the same velocity field `u`, and transport
the atlas:

```text
A_a(t)=Phi_t(A_a),        chi_a(t)=chi_a^0 o Phi_t^{-1}.
```

The terminal packet `Q_atlas` is the terminal tail of this whole transported
atlas.  It is not a selected local diagnostic packet.  It covers the whole
periodic solution.

## Unified Pack Predicate

For this working proof, `Pack_{Q_atlas}` means:

1. the transported atlas remains a finite same-fluid cover up to the terminal
   tail;
2. the cover has a positive terminal carrier scale;
3. the deformation gauges needed to compare the transported local norms with
   fixed Sobolev norms remain finite.

Thus Pack is both the carrier/cover predicate and the readout-compatible
material-atlas predicate.  Failure of the material atlas lands first at
`not Pack_Q`; it is not a fourth loss.

This is the required `PackDefinitionUnification.A` for the torus-first
terminal-capture proof.

## Theorem `TorusGlobalMaterialAtlasTerminalCapture.A`

On `T^3`, a finite terminal non-continuation time for the same original smooth
Navier-Stokes solution forces a Field-certification Part/Field failure on the global material
atlas:

```text
not Pack_{Q_atlas}
or
Pack_{Q_atlas} and not Part_{N_s,Q_atlas}
or
Pack_{Q_atlas} and Part_{N_s,Q_atlas}
  and for all r>0 not Field_{N_s,r,Q_atlas}.
```

## Proof

For every `t<T_*`, the solution is classical, so the transported atlas exists
as a finite same-fluid atlas on the preterminal interval.

First ask whether the terminal atlas keeps the unified Pack service.  If the
atlas loses positive carrier scale, finite material compatibility, or the
deformation control needed for readout, then

```text
not Pack_{Q_atlas}.
```

Assume `Pack_{Q_atlas}` survives.  The next service is the same
pressure-viscosity Navier-Stokes participation tower on that same atlas through
depth `N_s`.  If the tower or its finite participation envelope fails on the
atlas, then

```text
Pack_{Q_atlas} and not Part_{N_s,Q_atlas}.
```

Assume both `Pack_{Q_atlas}` and `Part_{N_s,Q_atlas}` survive.  Suppose some
positive scale `r>0` also satisfies `Field_{N_s,r,Q_atlas}`.  Since
`Q_atlas` covers the whole torus with finite overlap, and since Pack contains
the material deformation comparability needed for the partition readout, the
local coherent field bounds sum to the global continuation norm:

```text
sup_{t<T_*} ||u(t)||_{H^s(T^3)} < infinity.
```

The classical continuation criterion at `s>5/2` then extends the same solution
past `T_*`, contradicting terminal non-continuation.  Therefore no positive
Field scale survives after Pack and Part:

```text
Pack_{Q_atlas} and Part_{N_s,Q_atlas}
and for all r>0 not Field_{N_s,r,Q_atlas}.
```

These cases exhaust the global material atlas because the continuation packet
has exactly three services: carrier/readout-compatible material atlas, same
pressure-viscosity participation, and positive-scale one-field coherence.

## What This Discharges

This proves the three terminal-capture atoms for the torus-first branch.

```text
TerminalSelectionCompleteness.A:
  the selected object is the whole finite transported atlas Q_atlas.

SelectedPacketReadoutCompleteness.A:
  Q_atlas covers T^3 with finite overlap, so a retained Field service gives
  the global H^s readout.

PackDefinitionUnification.A:
  Pack is the readout-compatible same-fluid material atlas service; failure of
  terminal atlas selection is not a fourth CM service.
```

## Consequence For Branch Families

Branch-family rows are no longer allowed to be the load-bearing proof that
terminal capture exists.  The global atlas is the proof object.  Branch-family
material has one of three roles:

1. it identifies the selected terminal atlas record and proves which Pack,
   Part, or Field face is lost for that same record;
2. it supplies support for a service or readout theorem;
3. it stays demoted until a same-atlas Part/Field derivation is proved.

Thus unresolved supplier rows such as retained native reserve birth, signed
current, local critical translators, and no-pulse/readout machinery do not block
the torus-first CM terminal-capture proof.  They are optional support unless the
paper uses them as independent proof-bearing branches.

## Remaining Boundary

This note does not prove the whole-space `R^3` export branch.  It also does not
prove any optional positive supplier estimate.  The remaining submission work is
to keep the paper from presenting demoted branch-family support as if it were
needed proof mass for the torus-first terminal-capture theorem.
