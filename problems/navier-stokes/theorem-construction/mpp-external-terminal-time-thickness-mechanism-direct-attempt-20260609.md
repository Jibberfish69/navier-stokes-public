# MPP External Terminal Time-Thickness Mechanism Direct Attempt

## Status

`ExternalTerminalTimeThicknessMechanism.A` is not proved by the current theorem
stack.

This pass tests whether the current Navier-Stokes sources contain an external
mechanism that forbids zero-thickness native positive source concentration in
the produced `B_ASAC` terminal source-residue class, or produces a rigid
source-residue subclass with a paid Liouville theorem.

## Target

The desired theorem must rule out the terminal layer model

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
```

or place every produced survivor into a subclass with a terminal strip modulus

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
```

This is stronger than classifying the terminal atom as a CM face.  It is the
positive-production theorem that would make the source-time branch disappear
before it reaches the face tree.

## Reverse-Holder / super-L1 production

The conditional rigid subclass is valid:

```text
B_ASAC^{RH(p)} => source-residue Liouville,
\qquad p>1.
```

The missing production theorem is:

```text
B_ASAC => B_ASAC^{RH(p)}.
```

Current `B_ASAC` data give finite local `L^1_s` source mass, no fixed earlier
selected source slice, zero ASAC defect, and paid legal/donor exits.  Finite
`L^1_s` control permits the terminal layer `g_m`.  It does not self-improve to
any uniform `L^p_s`, `p>1`, bound.

So reverse-Holder production is not installed.

## Pressure / Leray time-spread

Pressure and Leray structure are spatial at each fixed heat time:

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad
\nabla^2p=\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

The checked pressure notes show that elliptic pressure recovery can see or
redistribute the spatial carrier while leaving the time support on the same
shrinking terminal layer.  Pressure/source absolute continuity also permits
both measures to charge the same terminal time face.

Thus pressure/Leray coupling does not supply the terminal strip modulus.

## Transported no-incoming / boundary flux

Transported no-incoming flux controls lateral spatial entry.  A compact
terminal source layer can live inside every large transported cylinder with
zero lateral flux and still charge the terminal time face.  Spatial
no-incoming and terminal time-face anti-atom control are separate burdens.

So transported no-incoming does not install time thickness.

## Trace, capacity, and backward-adjoint tests

Local energy trace control gives compactness and bounded-variation-type
information for source primitives.  Bounded variation allows positive terminal
jumps.

Backward adjoint tests either vanish at the terminal face and hide the atom, or
have nonzero terminal trace and detect it.  The parabolic terminal time face has
positive boundary-trace capacity for finite Radon source measures.  There is no
forward heat-time region beyond the terminal boundary in which smoothing can
dissolve the source atom.

These tests translate the atom; they do not remove it.

## Active-square / source-reserve routes

The active-square and source-reserve routes would close if they supplied a
scale-critical reserve for every terminal source-balanced pulse.  Current notes
reduce those routes to:

```text
LocalPositiveSourceCarleson.A,
PositiveActiveCarlesonReserve.A,
SquareSourceEstimate.A,
ScaleCriticalTreeCarleson.A,
or LPAS.
```

Those are not installed.  Reusing them as terminal time-thickness would be
alias cycling.

## CM face boundary

The zero-thickness native positive source atom can still be classified as a
Pack/Part/Field witness-face object once admitted to the same-solution terminal
record.  That supports

```text
Exit(Q):=not Member(Q).
```

It does not, by itself, prove the public Clay-facing bridge that original
smooth data cannot realize a proof-bearing first face failure.  The terminal
source-time elimination route has not paid that bridge.

## Verdict

`ExternalTerminalTimeThicknessMechanism.A` is not proved.

At current resolution, the terminal source-time branch has reached a hard
zero-thickness source atom.  The installed system can classify this atom in the
CM witness tree, but it cannot yet eliminate the atom by temporal thickness,
reverse-Holder production, pressure time spread, transported no-incoming flux,
trace regularity, capacity, or active-square reserve.

The exact next target is:

```math
\textbf{NoProofBearingFirstFaceFailureFromOriginalSmoothData.A}.
```

It must prove that a Pack/Part/Field face landing produced from original smooth
Clay data cannot remain a proof-bearing finite-time counterexample, or else
identify the exact bridge from finite Clay breakdown to a same-solution
terminal record whose face failure excludes the counterexample rather than
merely classifying it.

## Closure impact

The current chain becomes:

```math
\text{ExternalTerminalTimeThicknessMechanism.A}
\Longleftarrow
\text{NoProofBearingFirstFaceFailureFromOriginalSmoothData.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
