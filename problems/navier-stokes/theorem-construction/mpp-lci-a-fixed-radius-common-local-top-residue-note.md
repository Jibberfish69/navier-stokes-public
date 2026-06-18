# MPP LCI.A Fixed-Radius Common Local Top Residue Note

## Status

Candidate theorem-facing companion note.

Role: isolate the exact larger-radius top-tail residue that remains once the
pressure-side local wall `FPL.C` is separated off from the common local packet
theorem `FCL.C`.

This note does **not** replace the sharp direct pair `(FPC.H,FVR.F)`, and it
does **not** replace the common local packet theorem `FCL.C`. Its narrower job
is:

```math
\boxed{
\text{show that the only extra still-local burden inside }FCL.C\text{ beyond the pressure-side packet }FPL.C
\newline
\text{is the true top-tail packet }U_{N+3},U_{N+4}\text{ on the larger }5\Lambda\text{ balls.}
}
\tag{FTR.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
2. [mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md)
3. [mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)

## Setup

Retain

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
R_{\rho,\delta}^{press}:=5\Lambda.
\tag{FTR.1}
```

The pressure-side packet is

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+2}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FTR.2}
```

The common local packet is

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+4}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FTR.3}
```

Define the enlarged-radius top-tail residue

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FTR.4}
```

This packet is the true part of the common local packet not already supplied by
the pressure packet `(FTR.2)`: the field `U_{N+2}` remains on the pressure
side, while only `U_{N+3},U_{N+4}` survive as a separate residue on the larger
`5\Lambda` balls.

## Exact Split Of The Common Local Packet

### Proposition `FTR.A` (The common local packet is equivalent to the pressure packet plus the enlarged-radius top-tail residue)

For every `t\in I`,

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t),
\tag{FTR.A0}
```

and

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t)
\le
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
+
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t).
\tag{FTR.A1}
```

Consequently,

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I)
\Longleftrightarrow
\Big(
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I)
\ \text{and}\
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}\in L^1(I)
\Big).
\tag{FTR.A2}
```

### Proof

The lower bound `(FTR.A0)` is the restriction of
`(FTR.3)` to the subfamily `q=N+3,N+4`.

For the upper bound, split the sum in `(FTR.3)` into
`q=1,\dots,N+2` and `q=N+3,N+4`. The first block is bounded by `(FTR.2)`,
and the second block is bounded by `(FTR.4)`. This gives `(FTR.A1)`.

For the implication from left to right in `(FTR.A2)`, combine `(FTR.A0)` with
the imported pressure-side restriction `(FCL.A0)`. For the reverse implication,
integrate `(FTR.A1)` over `I`. This yields `(FTR.A2)`. ∎

### Target Theorem `FTR.C` (Enlarged-radius top-tail residue theorem)

Prove

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}\in L^1(I).
\tag{FTR.C0}
```

Then, together with the already-isolated pressure wall `(FPL.C0)`,
equivalence `(FTR.A2)` yields `FCL.C0`, hence the sharp direct pair
`(FPC.H,FVR.F)`.

This does **not** replace `FCL.C` as the exact common still-local theorem. It
only says that, relative to the pressure branch, the remaining common surplus is
exactly the larger-radius top-tail packet `(FTR.4)`. Relative to the
top-viscous branch, that larger-radius residue is now sharpened further in
[mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
to the annular shell theorem `FTSR.C`.

### Corollary `FTR.H` (Pressure packet plus the enlarged-radius top-tail residue imply the branch-local top wall)

If

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I),
\qquad
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}\in L^1(I),
\tag{FTR.H0}
```

then

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I),
\tag{FTR.H1}
```

hence `FTL.C`, `FTS.C`, `FVR.F`, `FVR.D`, and `FVR.A`.

### Proof

For every `j`,

```math
B(c_j(t),\Lambda)\subset B(c_j(t),R_{\rho,\delta}^{press})=B(c_j(t),5\Lambda),
\tag{FTR.H2}
```

so

```math
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2
\le
\left\|
U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
+
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FTR.H3}
```

The first term on the right is one summand of `(FTR.2)` and the second is
exactly `(FTR.4)`. Taking the supremum in `j` gives

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
\le
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
+
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t).
\tag{FTR.H4}
```

Integrating `(FTR.H4)` over `I` under `(FTR.H0)` yields `(FTR.H1)`, and then
`FTL.H` gives the stated direct-frontier consequences. ∎

## Relation To The Adjacent Wider-Collar Route

### Corollary `FTR.B` (The common widened-thickness collar packet implies the enlarged-radius top-tail residue)

Assume `m\ge 0` and

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTR.B0}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FTR.B1}
```

### Proof

For each `j`, the fixed ball `B(c_j(t),R_{\rho,\delta}^{press})=B(c_j(t),5\Lambda)`
lies inside the widened collar
`\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)` by the same
geometry used in `(FPL.B2)` and `(FCL.B2)`. Every local integral in `(FTR.4)`
is therefore one of the `\beta=0` summands already measured by
`\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`, so

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTR.B2}
```

Now `(FTR.B0)` gives `(FTR.B1)`. ∎

This is only a comparison fact. It explains why the common widened-thickness
collar route suffices for the exact top-tail residue, but it does not make that wider
route the sharp theorem-facing object.

### Remark `FTR.Ba` (The widened-thickness sufficient form is again just `CSP.A` at larger depth)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary thickness `\delta_\ast>0`
and depth parameter. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\qquad
N_\ast:=N+3,
\tag{FTR.Ba0}
```

turns the generic collar target into exactly the widened packet hypothesis
`(FTR.B0)`.

## Boundary

This note does **not** prove `FTR.C`, and it does **not** prove `FCL.C`.

On the present on-disk route, the companion note
[mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
now sharpens `(FTR.C0)` further: relative to the branch-local top wall `FTL.C`,
the exact remaining extra burden is the annular shell theorem `FTSR.C`.

It only isolates the exact still-local residue inside the common packet:

```math
\boxed{
\text{once the pressure-side local packet }FPL.C\text{ is separated off,}
\newline
\text{the remaining difference between the common theorem }FCL.C\text{ and that pressure branch is}
\newline
\text{the true top-tail packet }U_{N+3},U_{N+4}\text{ on the same }5\Lambda\text{ balls,}
\newline
\text{with }(FTR.Ba0)\text{ only the nearby widened-thickness }CSP.A\text{ instance for that residue.}
}
\tag{FTR.9}
```
