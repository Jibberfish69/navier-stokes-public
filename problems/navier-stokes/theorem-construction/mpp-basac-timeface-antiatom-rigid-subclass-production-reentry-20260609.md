# MPP B_ASAC Time-Face Anti-Atom / Rigid-Subclass Production Reentry

## Status

Active-completion proof attempt after the active-square / diffuse-parent reserve
subroute failed.

This note tests the next subtarget:

```math
BASACTimeFaceAntiAtom.A
\quad\text{or}\quad
ProductionIntoRigidBASACTimeFaceSubclass.A.
```

It does not close public Clay finality.

## Target

The useful production theorem is:

```math
B_{ASAC}^{closed,min}
\Longrightarrow
B_{ASAC}^{TA},
```

where `B_{ASAC}^{TA}` adds the terminal time-face anti-atom clause:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

Inside `B_{ASAC}^{TA}`, the residue Liouville step is already paid: the
no-earlier-selected-source-slice clause removes every fixed earlier slab, and
the anti-atom clause removes the terminal slice.

Thus the live burden is production into the subclass, not Liouville after the
subclass has been granted.

## Direct Time-Face Test

The produced `B_ASAC` data give finite local temporal source mass:

```math
\int_{-1}^{0}
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds
\le C_R.
```

This is only an `L_s^1` statement. It permits:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
```

with unit `L_s^1` mass and terminal weak limit:

```math
g_m(s)\,ds\rightharpoonup \delta_0.
```

This sequence violates every uniform `L_s^p`, `p>1`, bound and carries exactly the
terminal time-face atom that the theorem must remove.

## Reverse-Holder / Super-L1 Test

The conditional implication is valid:

```math
B_{ASAC}^{RH(p)}
\Longrightarrow
BASACTimeFaceAntiAtom.A.
```

Holder gives the terminal strip modulus once:

```math
\left\|
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}
\right\|_{L_s^p}
\le C_R,\qquad p>1.
```

The production theorem:

```math
B_{ASAC}^{closed,min}\Longrightarrow B_{ASAC}^{RH(p)}
```

is not installed. The same terminal layer `g_m` is compatible with the current
`B_ASAC` clauses, so finite `L_s^1` source mass does not self-improve.

## Trace-Jump Test

The trace route names a real mechanism:

```math
SourceAtomToTraceJump.A
+
BASACLocalEnergyTraceNoPositiveJump.A
\Longrightarrow
ProductionIntoRigidBASACTimeFaceSubclass.A.
```

The current local energy and compactness inputs give bounded variation for the
localized source-balance primitive. Bounded variation allows positive terminal
jumps. The terminal layer above is exactly a positive terminal jump in the
primitive.

Thus local energy trace control translates the atom; it does not forbid it
without stronger trace regularity.

## Capacity / Backward-Adjoint Test

Backward adjoint tests either vanish at the terminal face and hide the atom, or
have nonzero terminal trace and detect:

```math
\langle\mu_*^{src},\phi\rangle
=
\int\rho(y)\phi(y,0)\,dy.
```

There is no forward time beyond the boundary on which heat smoothing dissolves
the source measure.

The parabolic terminal time face is a full spatial boundary slice. It has
positive boundary-trace capacity for finite Radon source measures. Therefore:

```math
ParabolicTimeFaceCapacityZero.A
```

is false for this measure class.

## Soft Local-Energy Superintegrability Test

The local suitable energy class gives soft space-time integrability of the
velocity. That does not dominate the live native source residue, which is the
selected one-sided active product:

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+.
```

To turn soft velocity integrability into source anti-atom control one needs a
same-packet coefficient/source estimate for this exact one-sided product on the
selected terminal windows. That is the failed active-square / Carleson reserve
route, not a new proof.

## Verdict

`BASACTimeFaceAntiAtom.A` /
`ProductionIntoRigidBASACTimeFaceSubclass.A` is not installed from current
inputs.

The route has reached the same hard endpoint under every checked non-alias
mechanism:

```text
finite L1 source mass permits terminal atoms;
local energy trace gives BV and BV permits jumps;
capacity/backward-adjoint tests see or hide the terminal boundary atom;
soft local-energy superintegrability does not control the native selected
positive source carrier;
active-square / diffuse-parent reserve is unproved.
```

## Next Loop Target

The active target is now a genuinely new terminal time-thickness mechanism,
not another recombination of the consumed surfaces:

```math
\boxed{
ExternalTerminalTimeThicknessMechanism.A:
\text{add a new NS-specific theorem that forbids zero-thickness native positive
source concentration in }B_{ASAC}^{closed,min}.
}
```

Until such a theorem is found, installed, and integrated through the source-wall
and first-exit Pack-survival chain, both PDFs remain non-final.
