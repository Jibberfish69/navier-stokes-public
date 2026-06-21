# MPP Canonical Terminal Packet Capture

Date: 2026-05-22

Status: theorem-facing capture proof and no-exit obstruction isolation.

Theorem label:

```text
CanonicalTerminalPacketCapture.A
```

## Point

The route from a hypothetical first Navier--Stokes blow-up to the CM decision
tree is not a new positive estimate. It is a terminal packet construction.

Starting from a maximal classical solution on `[0,T_*)`, every terminal
obstruction that remains after legal losses and readout artifacts are removed
must break the continuation packet itself:

```math
Pack_Q,\qquad Part_{N,Q},\qquad Field_{N,r,Q}.
```

So the capture theorem closes the "no fourth residue" question. It does not by
itself prove that the three exits are impossible.

## Statement

Let `(u,p)` be a maximal smooth incompressible Navier--Stokes solution on
`[0,T_*)`, with `T_*<\infty` assumed for contradiction. Fix a continuation
depth `N_s` high enough for the installed `H^s`, `s>5/2`, readout.

Let `\mathcal R_*` be any terminal obstruction extracted from the same solution
after passing to a terminal subsequence and removing:

- legal boundary/cutoff/collar losses;
- non-selected branches;
- readout-only artifacts;
- paid finite ledger terms.

Then `\mathcal R_*` is captured by the Pack-before-Part audited CM tree:

```math
\boxed{
\mathcal R_*
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
}
\tag{CTPC.A}
```

Equivalently:

```math
\boxed{
\mathcal R_*
\Longrightarrow
\begin{cases}
\neg Pack_Q,\\
Pack_Q\wedge\neg Part_{N_s,Q},\\
Pack_Q\wedge Part_{N_s,Q}\wedge\forall r>0\,\neg Field_{N_s,r,Q}.
\end{cases}
}
```

Thus every same-solution terminal obstruction is a witness of

```math
\neg CM_{N_s,r,Q}
```

for every positive terminal coherence scale `r`.

## Proof

### 1. Preterminal packets exist

For every compact subinterval `[0,T_*-\epsilon]`, the solution is classical.
The still-live smooth-window theorem supplies local CM packets on any
preterminal smooth window:

```math
CM_{N,r,Q}
=
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

So before the terminal time, the canonical object is already the same
same-fluid Pack/Part/Field packet. The only question is what survives as
`t\uparrow T_*`.

### 2. Terminal extraction has only three services

Pass to a terminal subsequence of preterminal packets carrying the selected
obstruction `\mathcal R_*`.

There are three and only three continuation services needed by the installed
readout:

1. a positive legal same-fluid carrier/cover;
2. the shared differentiated Navier--Stokes pressure-viscosity tower on that
   carrier;
3. positive-scale one-field finite-difference coherence for that tower.

These are exactly `Pack_Q`, `Part_{N_s,Q}`, and `Field_{N_s,r,Q}`.

### 3. Pack gate

If no positive legal terminal carrier survives for `\mathcal R_*`, then

```math
\mathcal R_*\Longrightarrow\neg Pack_Q.
```

This includes zero-scale terminal residues and unpaid donor-refill ancestry.
The endpoint label is Pack-facing:

```math
\neg Pack_Q\Longrightarrow(Pack,Blown).
```

The proof stops there.

### 4. Part gate

Assume a positive same-fluid carrier survives:

```math
Pack_Q.
```

If the selected obstruction cannot be written inside the same differentiated
Navier--Stokes tower

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad 0\le k\le N_s,
```

then it is not a lawful participant in the continuation packet:

```math
\mathcal R_*+Pack_Q\Longrightarrow\neg Part_{N_s,Q}.
```

The endpoint label is Part-facing:

```math
\neg Part_{N_s,Q}\Longrightarrow(Part,Dead).
```

The proof stops there.

### 5. Field gate

Assume both the carrier and the shared participation tower survive:

```math
Pack_Q\wedge Part_{N_s,Q}.
```

If there were some `r>0` with

```math
Field_{N_s,r,Q},
```

then the terminal packet would satisfy

```math
CM_{N_s,r,Q}.
```

The installed continuation-packet readout gives

```math
CM_{N_s,r,Q}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2.
```

Set `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s}`. Local `H^s` theory gives
`\tau=\tau(\nu,s,M_s)>0`; choosing `t_j\uparrow T_*` with
`T_*-t_j<\tau/2`, the relaunch from `u(t_j)` exists past `T_*` and uniqueness
identifies it with the original solution on the overlap. This contradicts
maximality. Hence no positive field-coherence scale can survive:

```math
Pack_Q\wedge Part_{N_s,Q}\wedge\mathcal R_*
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}.
```

The endpoint label is Field-facing:

```math
\neg Field_{N_s,r,Q}\Longrightarrow(Field,Jump),
```

and this label is licensed only after Pack and Part have survived.

## No-Fourth-Residue Consequence

Every terminal defect measure, pressure pulse, source residue, tower drop,
critical-norm concentration, Zeno endpoint, or packet-ancestry failure has to
answer the same question:

```text
Does it have a positive same-fluid carrier?
Does it participate in the same pressure-viscosity tower?
Does it preserve positive-scale one-field coherence?
```

The first negative answer is the landing face. There is no fourth primitive
CM face.

In particular:

- zero-scale terminal residues are typed before Pack: a same-solution
  the original NS participation law record resurfaces them under Part first,
  while absence of that record leaves true Pack/window failure;
- unpaid donor-refill ancestry lands in Pack when it lacks a same-solution
  original participation record;
- tower participation loss lands in Part after Pack is retained;
- raw source residue lands in Part once Pack is retained;
- retained coherence/readout residue can land in Field only after Pack and Part
  are separately licensed.

This is exactly the capture statement needed by
`AnyFiniteFailureWitnessCMExit.A`.

## Supersession Of The Positive No-Exit Tail

The section formerly named the remaining CM work as `TerminalCMNoExit.A`.
That is now superseded for the CM contrapositive program.

The live CM use of this note is the Pack-first terminal capture statement:

```math
\text{finite terminal obstruction}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

The positive no-exit formulation

```math
OriginalSmoothData
\Longrightarrow
\exists Q,r>0:
Pack_Q\wedge Part_{N_s,Q}\wedge Field_{N_s,r,Q}
```

is historical support for a separate positive packet-survival route.  It is not
the governing CM burden and must not be used to respawn a demand to prove
smooth data positively stays inside CM.

The active torus-first terminal-capture proof is now
`mpp-torus-global-material-atlas-terminal-capture-20260526.md`.  It selects the
whole transported material atlas on `T^3`, makes the selected packet
readout-complete, and treats failure of atlas selection as `not Pack_Q` rather
than a fourth service.  Branch-family estimates may support Pack, Part, Field,
or readout, but they are not proof-bearing unless they land a same-atlas face
failure.
