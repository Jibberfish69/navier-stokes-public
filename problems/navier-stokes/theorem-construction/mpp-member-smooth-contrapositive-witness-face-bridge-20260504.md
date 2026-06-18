# MPP Member-Smooth Contrapositive Witness-Face Bridge

## Status

Direction-corrected CM witness note.

The theorem-grade installed direction retained from this surface is the
certificate direction:

```math
\forall N\ \exists r_N>0:
CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
```

The broader static converse reading is not installed.  In particular, this note
must not be cited as proving

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

The current governing correction is
`mpp-cm-certificate-direction-correction-20260506.md`.

## CM Witness

Define the witness conjunction

```math
CM_{N,r,Q}(u,p,\Phi)
:=
Pack_Q(u,\Phi)
\wedge
Part_{N,Q}(u,p)
\wedge
Field_{N,r,Q}(u,p).
```

The installed certificate theorem is

```math
\forall N\ \exists r_N>0:
CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
```

The following stronger smoothness bridge is a route-program statement unless a
live surface separately promotes the needed all-depth membership-to-smoothness
criterion:

```math
\boxed{
\forall N\ \exists r_N>0:
CM_{N,r_N,Q}
\Longrightarrow
Smooth_N(Q).
}
\tag{MemberSmooth_N.A}
```

Here `Smooth_N(Q)` means the classical tower is controlled through depth `N` on
`Q`.  The all-depth smoothness statement is

```math
Smooth(Q)
:=
\forall m<\infty,\quad
\sup_{(x,t)\in Q}
\left(
|\nabla^m u(x,t)|+|\nabla^{m+1}p(x,t)|
\right)<\infty,
```

together with the transported flow map `\Phi` remaining `C^1` with finite
deformation gauge on `Q`.  Thus

```math
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q).
```

## Forward Proof

Assume

```math
\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}.
```

Fix a finite depth `N`.

### Pack Row

`Pack_Q` gives a single retained same-fluid carrier on `Q`:

```math
\Phi_t:A_Q(t)\to Q_t,
\qquad
\det\nabla_a\Phi=1,
\qquad
\Gamma_{\mathrm{pack},Q}(t)<\infty.
```

It supplies retained localization, bounded pack gauge, positive-scale finite
cover control, and the finite deformation geometry needed to read the field
tower on one transported carrier.

### Participation Row

`Part_{N,Q}` gives participation persistence through depth `N`:

```math
D_tU_k=K_k+B_k,
\qquad
0\le k\le N,
```

with

```math
U_k=\nabla^k u,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
```

and

```math
\sup_{x\in Q_t}\sum_{k=0}^{N}|K_k(x,t)|<\infty.
```

This prevents a dead or dropped participation face from masquerading as field
coherence: the transported tower remains attached to the same incompressible
field.

### Field Row

`Field_{N,r_N,Q}` supplies the actual local field bounds.  In the one-field
coherence gauge this is represented by

```math
\mathfrak C_{N,r_N,Q}(t)
:=
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r_N}}
\sum_{k=0}^{N}
\frac{
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
}{|h|}
<\infty.
```

Therefore each `U_k` and `K_k`, `0<=k<=N`, has finite local Lipschitz coherence
on the same retained carrier.  The tower remains a classical one-field tower
through depth `N`.

Since the argument holds for every finite `N`, the velocity, pressure, and
transported carrier remain classical on `Q`.  Hence

```math
\boxed{
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q).
}
\tag{MemberSmooth.A}
```

Equivalently, at any continuation depth high enough for the classical criterion
used in the lane, `CM_{N,r_N,Q}` supplies the usual local continuation norm.  In
particular the source-locked readout surface records

```math
CM_{N,r,Q}
\Longrightarrow
\sup_{t<T_Q}\|u(t)\|_{H^s}<\infty,
\qquad
s>\frac52,
```

and the periodic `H^s`, `s>5/2`, continuation theorem gives `Smooth(Q)` at
that continuation depth: the local existence time depends only on the displayed
`H^s` bound, so restarting before `T_Q` extends the same solution.

## Non-Smooth Witness Program, Not Blunt Converse

If the all-depth smoothness bridge is separately promoted, its contrapositive is

```math
\boxed{
NonSmooth(Q)
\Longrightarrow
\neg\left(\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right).
}
\tag{CMExit.Witness}
```

Expanding the quantifiers:

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\neg CM_{N,r,Q}.
```

Expanding `CM_{N,r,Q}`:

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\neg\left(
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\right).
```

By finite De Morgan:

```math
\boxed{
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
}
\tag{WitnessFace.A}
```

This is not the blunt converse `\neg CM=>\neg Member`.  The installed
theorem-grade statement around exits is only the first-exit decomposition:
first class-exit is detected by first failure of at least one of the three
route-relative witness services `Pack`, `Part`, or `Field`.

## Refined Field-Face Landing

Under retained pack and retained participation at the corresponding witness
depth, the failed face is forced to be the field certificate:

```math
\boxed{
NonSmooth(Q)\wedge Pack_Q\wedge Part_{N,Q}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}
}
\tag{FieldFace.A}
```

where `N` is the witness depth selected by `WitnessFace.A`, or any retained
all-depth participation regime containing that witness depth.

Proof: if some `r>0` had `Field_{N,r,Q}`, then

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
```

gives `CM_{N,r,Q}`, hence the depth-`N` classical tower on `Q`.  At the
witness depth selected by non-smoothness, that contradicts the failure of the
all-depth smooth tower.  Therefore retained pack plus retained participation
forces the exit to land on the field face.

## Terminal-Tail Typing

For the terminal-tail route, the typed inputs are:

```math
Pack.TTU\Longrightarrow Pack_Q,
```

```math
Part.NoDrop\Longrightarrow Part_{N,Q},
```

and

```math
LemmaB.SourceDrain
+TGC.A+AACT.Global.noJump+SRC.Final+AVG.END.Cert
+READ.COVER+ATD_m^\varepsilon+Field.Read
\Longrightarrow
Field_{N,r,Q}.
```

Therefore

```math
Pack.TTU
+Part.NoDrop
+Field.Readout_{source\text{-}pulse}
\Longrightarrow
CM_{N,r,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
```

By the bridge above, a genuine non-smooth occurrence forces the terminal-tail
witness split:

```math
\boxed{
\neg Pack.TTU
\vee
\neg Part.NoDrop
\vee
\neg Field.Readout_{source\text{-}pulse}
}
```

at the corresponding witness depth and scale.

## Source-Drain Boundary

The normalized-adjoint source-drain package remains in its lawful supplier role:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

It can supply the `Field` / source-pulse readout side, but it is not the CM
primitive.  The CM primitive is the contrapositive witness theorem:

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
```

## Anchors

- `mpp-cm-contrapositive-primitive-seat-repair-note-20260503.md` defines the
  governing primitive as `Exit(Q):=\neg Member(Q)` and
  `CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}`.
- `mpp-live-status-sourcelock-clay-final-verification-note.md` records
  `CM.Readout`, namely `CM_{N,r,Q}` gives the classical `H^s`, `s>5/2`,
  continuation norm.
- `mpp-h1-h2-h6-origin-retain-source-attack-note.md` records the endpoint-face
  grammar: failure of `Part`, `Pack`, or `Field` maps to dead, blown/packing,
  or jump faces.
- `mpp-terminal-class-membership-six-burden-closure-note.md` records the
  retained endpoint matrix and the terminal implication
  `CFI.A+End_NS=>no finite-time class exit`.
- `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`
  and `mpp-source-drain-definition-alignment-and-discharge-20260504.md` supply
  the source-drain / no-`Jump_avg` branch support feeding the Field/readout
  side.

## Discharge

This note installs the direct bridge that the live route was missing:

```math
\left[\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}\right]
\Longrightarrow
Smooth(Q),
```

and therefore

```math
NonSmooth(Q)
\Longrightarrow
\exists N\ \forall r>0:
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right).
```

The previous status

```text
cm-witness-face-bridge-required
```

is discharged at the theorem-bridge level.
