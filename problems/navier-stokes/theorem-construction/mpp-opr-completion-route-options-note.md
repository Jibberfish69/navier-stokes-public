# MPP OP.R Completion Route Options

## Status

Theorem-facing route note.

Role: record the main structural ways to complete a global smoothness argument
once `OP.R` is chosen as the local incompatibility engine.

## Fixed Local Engine

[mpp-ontic-incompatibility-of-autonomous-singular-geometry-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ontic-incompatibility-of-autonomous-singular-geometry-theorem.md)
supplies the local terminal engine:

```math
\mathrm{CM}_{N,r,Q}(u,p,\Phi)
\Longrightarrow
\text{no autonomous singular geometry on }Q.
\tag{OPRC.0}
```

What remains is to force the class-membership witness on the still-live windows
relevant to a hypothetical singularity, or equivalently to force class-exit on
those windows if a singularity is assumed.

## Route Options

### Route 1. Analytic-To-Ontic Bridge

Prove a separate analytic-control-to-CM bridge.  The bridge must output the
actual CM services on the same still-live window: positive same-fluid carrier
and deformation comparability for `Pack_Q`, differentiated pressure-viscosity
tower survival through depth `N` for `Part_{N,Q}`, and a positive-scale field
readout for `Field_{N,r,Q}`.

```math
\mathcal A^{\mathrm{ctrl}}_{N,r,Q}
\Longrightarrow
\mathrm{CM}_{N,r,Q}(u,p,\Phi).
\tag{OPRC.1}
```

An analytic package can be spent here only after it proves those three CM
outputs on the approaching still-live windows, with same-fluid custody and the
declared pressure gauges.

### Route 2. Direct Singularity-To-Class-Exit Theorem

Prove directly:

```math
\text{first singularity at }(x_\ast,T_\ast)
\Longrightarrow
\exists Q,N,r:\ \neg \mathrm{CM}_{N,r,Q}(u,p,\Phi).
\tag{OPRC.2}
```

This bypasses a large explicit bridge package and goes straight from singularity
to failure of one of the MPP predicates.

### Route 3. Still-Live Smooth Window Implies Class Membership

This local bridge is now installed in
[mpp-still-live-smooth-window-implies-class-membership-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md):

```math
\text{classical still-live window }Q
\Longrightarrow
\exists r_Q>0\ \text{such that}\ \forall N\ge 0,\
\mathrm{CM}_{N,r_Q,Q}(u,p,\Phi).
\tag{OPRC.3}
```

Then under a hypothetical first singularity, every pre-terminal still-live
window already has `CM`, and `OP.R` can be combined with a separate
first-singularity-to-autonomous-sharpening theorem.

### Route 4. Initial Installation Plus Persistence Of Class Membership

Prove:

```math
\text{initial working object}
\Longrightarrow
\mathrm{CM}\text{ is installed initially,}
\tag{OPRC.4}
```

and then prove `Pack`, `Part`, and `Field` persist on every still-live window
of the same object. This gives

```math
\text{initial object}
\Longrightarrow
\mathrm{CM}\text{ on all still-live windows.}
\tag{OPRC.5}
```

### Route 5. First Singularity To Autonomous Local Sharpening

Prove:

```math
\text{first singularity}
\Longrightarrow
\text{autonomous local sharpening on approaching still-live windows.}
\tag{OPRC.6}
```

Then combine `(OPRC.6)` with either `(OPRC.1)`, `(OPRC.3)`, or `(OPRC.5)`,
followed by `OP.R`.

### Route 6. Endpoint-Exhaustion Route

Prove:

```math
\text{first singularity}
\Longrightarrow
\text{dead or blown or jump geometry on approaching still-live windows.}
\tag{OPRC.7}
```

Then use the primitive endpoint meanings together with
`CMW.A` and `OP.R`.

## Minimal OP.R Completion Package

The structurally leanest OP.R route is:

```math
\text{still-live smooth window}
\Longrightarrow
\exists r_Q>0\ \text{such that}\ \forall N\ge 0,\ \mathrm{CM}_{N,r_Q,Q},
\tag{OPRC.8}
```

together with

```math
\text{first singularity}
\Longrightarrow
\text{autonomous local sharpening}.
\tag{OPRC.9}
```

Then `OP.R` closes the contradiction locally.

## Boundary

This note records route options only. The separate theorem note above supplies
`(OPRC.3)`. The other implications `(OPRC.1)`, `(OPRC.2)`, and `(OPRC.4)`--`(OPRC.9)`
are not proved here.
