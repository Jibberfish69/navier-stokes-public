# MPP LCI.A First-Rung Viscous-Center Supplier Note

## Status

Candidate theorem-facing note.

Role: isolate the exact same-fluid lower-order supplier that remains beneath
`AFD.A` once the far-tail pressure supplier is collapsed by the imported
ordinary energy ledger.

## Installed Inputs

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)
3. [mpp-lci-a-affine-defect-supplier-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-supplier-reduction-note.md)
4. [mpp-lci-a-pressure-tail-energy-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pressure-tail-energy-supplier-note.md)

## Purpose

```math
\boxed{
\text{after the ordinary energy ledger removes the far-tail half, the honest remaining lower-order first-rung wall is the viscous center readout }
\mathfrak K_{1,\rho,\psi}^{visc,ctr}.
}
\tag{VCS.0}
```

This note does **not** claim that the wall is already closed. Its narrower job
is to separate the exact remaining same-fluid supplier from the already
downstream pressure-tail half and to record what would count as a genuine
non-circular discharge.

## Exact Remaining Supplier After The Energy Collapse

Recall

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
:=
\nu\sum_{j=1}^{J}
\big|
\Delta U_1(c_j(t),t)
\big|,
\tag{VCS.1}
```

and the affine-defect residual supplier ledger

```math
\mathfrak F_{1,\rho,\psi}^{aff,sup}(t)
:=
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t).
\tag{VCS.2}
```

### Proposition `VCS.1a` (Under the ordinary energy ledger, the affine-defect supplier split collapses exactly to the viscous center ledger)

Assume the interval energy ledger

```math
\mathfrak E_I^{vel}<\infty.
\tag{VCS.3}
```

Then

```math
\mathfrak F_{1,\rho,\psi}^{aff,sup}\in L^1(I)
\Longleftrightarrow
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{VCS.4}
```

### Proof

Proposition `PTE.A` gives
`\mathfrak T_{1,\rho,\psi}^{press,far}\in L^\infty(I)\subset L^1(I)`. Since
`(VCS.2)` is an exact identity of nonnegative ledgers on the finite interval
`I`, the remaining summand `\mathfrak K_{1,\rho,\psi}^{visc,ctr}` also lies in
`L^1(I)`, which is `(VCS.4)`. ∎

So, on the energy-conditioned first-rung route, the residual lower-order
supplier beneath `AFD.A` is no longer the pair from `AFS.A`. It is exactly
`\mathfrak K_{1,\rho,\psi}^{visc,ctr}`.

## Algebraic Recycle Shape

### Reduction `VCS.2a` (If the third center rung is already available, the viscous first-rung ledger is downstream)

Whenever `q=1` lies in the recycle range of Proposition `LCI.B2g4`, i.e.
whenever `m\ge 3`, the lower-viscous contraction law `(LCI.3c3z19d)` yields

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\le
C_{\rho,\psi}\,\nu\,
\mathfrak A_{3,\rho,\psi}^{ctr}(t).
\tag{VCS.5}
```

Consequently,

```math
\mathfrak A_{3,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{VCS.6}
```

### Proof

Apply `(LCI.3c3z19d)` with `q=1`, then integrate on `I`. ∎

So the viscous first-rung ledger is algebraically a third-rung center readout.
It is not a pressure-tail or geometry-side datum.

## Why This Is Not Yet The Installed Upstream Discharge

### Obstruction `VCS.2b` (Using `\mathfrak A_{3,\rho,\psi}^{ctr}` here is route-circular on the present lower-order surface)

Corollary `LCI.B2g3` proves that the higher center rungs become downstream
only **after** the first center rung is controlled. Likewise, after the
affine rewrite, Corollary `LCI.B2g5o` replays the higher-rung induction only
once the first-rung package has already been repaired into the affine frame.

So `(VCS.6)` is a valid downstream recycle identity, but it is not by itself
the honest current theorem on the lower-order first-rung surface. On the
installed route, appealing to `\mathfrak A_{3,\rho,\psi}^{ctr}` before the
first-rung package closes simply feeds the still-missing first-rung
closure back into itself.

That is exactly why `\mathfrak K_{1,\rho,\psi}^{visc,ctr}` still survives as a
named supplier in `LCI.B2g5m`, `AFD.A`, and `AFS.A` even though the algebraic
identity `(VCS.5)` is elementary.

## Target Statement

### Target Theorem `VCS.A` (Energy-conditioned first-rung viscous-center supplier)

On the same-fluid interval `I`, under the imported ordinary energy ledger
`(VCS.3)`, prove

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{VCS.A0}
```

This is the exact theorem-facing lower-order wall that remains once the
far-tail pressure supplier is discharged by `PTE.A`.

## Downstream Use

With `EOC.A`, finite seed center data, the rung-0 center forcing, and the
bounded pack-side gauge already in place, the chain becomes

```math
(VCS.A0)
\Longrightarrow
AFD.A
\Longrightarrow
AFB.B
\Longrightarrow
RCF.2.
\tag{VCS.7}
```

So this note does not introduce a new route. It freezes the exact remaining
same-fluid supplier still needed on the installed one-field receiver branch.

## Boundary

This note does **not** prove `VCS.A`.

It only records the two honest discharge shapes currently visible on disk:

1. the stronger lower-order halo-shell packet `HSP.A0a`, which now gives a
   non-circular discharge by the dedicated reduction note
   [mpp-lci-a-viscous-center-halo-shell-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-viscous-center-halo-shell-reduction-note.md);
2. a separate center-ball readout that controls
   `\Delta U_1(c_j(t),t)` directly on the transported-center balls, now
   isolated theorem-facing in
   [mpp-lci-a-first-rung-center-ball-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-center-ball-readout-note.md).

With the imported ordinary energy ledger and the remaining `AFD.A` inputs in
place, Corollary `AFS.C` now turns the first discharge shape into a direct
export to `AFD.A`. So `VCS.A` remains the exact single-supplier theorem on this
surface, but the sharper next-form theorem target under the energy-conditioned
halo-shell route is `HSP.A0a`, not `VCS.A` in isolation. And because
`HSP.A0a` is the installed stronger form beneath `HSP.A`, that branch does
not stop there: its honest direct successor is already the fixed-increment
source law `FEI.C7`, with the sharper route-native nonlocal return
`(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now makes the terminal continuation explicit: via those exact FEI return
instances, this energy-conditioned branch reopens only the returned
lower-carrier reads
`LCI.A[N+4,N+4,\delta+\Lambda_{\delta,\rho}^{halo}]` and
`LCI.A[N+2,N+2,\delta+5\Lambda_{\delta,\rho}^{halo}]`, so it feeds back into
the already-installed lower-carrier route rather than opening a new external
supplier family.

So after that halo-shell branch is pushed to terminal return, the exact
surviving genuinely different candidate discharge beneath `VCS.A` is the
direct transported-center-ball readout isolated in the companion center-ball
note, not `HSP.A0a` itself. The companion `U_3` reduction note
[mpp-lci-a-first-rung-u3-center-ball-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-u3-center-ball-reduction-note.md)
now sharpens that one step further: the stronger sufficient branch `(VCR.B0)`
is already route-internal, so the exact surviving distinct alternative is the
Laplacian-ball readout `(VCR.A0)`. The companion Laplacian-ball reduction note
[mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md)
now closes that remaining distinction too: when `m\ge 3`, `(VCR.A0)` is
already downstream of the old widened-shell oscillation packet. So on the
currently visible note stack, both explicit discharge shapes beneath `VCS.A`
are route-internal.

Until one of those is supplied, the exact energy-conditioned lower-order wall
remains the first-rung viscous center ledger `\mathfrak K_{1,\rho,\psi}^{visc,ctr}`.
