# MPP B_ASAC Terminal Atom CM Face Labeling

Date: 2026-05-19

## Status

Conditional diagnostic theorem. This note assigns the exits forced by a `B_ASAC^closed` terminal atom to the `Pack`, `Part`, and `Field` witnesss.

## Input

The upstream classification gives:

```math
\mu_*^{src}(Q_R\times\{0\})>0
\Longrightarrow
J_{in}>0
\vee
M_{CM}=\infty
\vee
Exit>0.
```

Here `J_in` is incoming participation flux, `M_CM` is the finite shared-participation/source-current envelope, and `Exit` denotes paid legal/projected/cutoff/boundary exits.

The class-membership witness is

```math
CM_{N,r,Q}:=Part_{N,Q}+Field_{N,r,Q}.
```

## Face labels

The primary geometric reading is Field-certification: a terminal atom is an attempted
order-one source-current accumulation inside a volume-preserving transported
packet. It lands on another face only when the compensation is explicitly carried
by that face.

### 1. Paid exit

If `Exit>0`, the branch exits `B_ASAC^closed` directly. This is already a named paid-exit channel.

### 2. Incoming participation flux

Incoming participation flux through a failed transported control-volume boundary is `Pack`-facing:

```math
J_{in}>0\text{ through uncontrolled transported geometry}
\Longrightarrow
\neg Pack_Q.
```

Incoming participation flux through retained geometry with a source-current mismatch is `Field`-facing:

```math
J_{in}>0\text{ as retained cross-boundary source-current mismatch}
\Longrightarrow
\neg Field_{N,r,Q}.
```

Mixed cases may carry both labels.

### 3. CM envelope blowout

The envelope blowout has three possible face locations.

Packing deformation or transported-boundary geometry blowout is `Pack`:

```math
\Gamma_{pack,Q}=\infty
\Longrightarrow
\neg Pack_Q.
```

Common pressure-viscosity carrier blowout is `Part`:

```math
\mathfrak P_{N,Q}=\infty
\Longrightarrow
\neg Part_{N,Q}.
```

Finite-difference/tower coherence or source-current readout blowout is `Field`:

```math
\mathfrak C_{N,r,Q}=\infty
\Longrightarrow
\neg Field_{N,r,Q}.
```

## Theorem

```math
\boxed{
BASACTerminalAtomCMFaceLabeling.A:
\mu_*^{src}(Q_R\times\{0\})>0
\Longrightarrow
Exit
\vee
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}.
}
```

## Proof

Apply `BASACClosedTerminalAtomCMExitClassification.A`. A positive terminal atom forces incoming participation flux, CM envelope blowout, or paid exit.

Paid exits are already outside `B_ASAC^closed`.

Incoming participation flux must either cross a failed transported control-volume boundary, giving `Pack`, or cross retained geometry as source-current mismatch, giving `Field`.

CM envelope blowout is exactly failure of one of the three finite witness predicates in `CMW.A`: packing gauge, participation carrier envelope, or finite-difference field coherence. These are `Pack`, `Part`, and `Field` respectively.

Therefore the displayed face-label implication holds.

## Canonical priority

When a single diagnostic label is needed, use this priority:

```text
1. Paid exit, if an exit ledger is present.
2. Pack, if the atom requires hidden compression, failed transported geometry,
   or incoming flux through the incompressible packet boundary.
3. Part, if the compensation is a pressure-viscosity participation carrier
   failure.
4. Field, if retained geometry and carrier persist but the source-current
   readout breaks one-field coherence.
```

Mixed cases can still carry multiple labels. The priority only prevents a
Pack-native incompressible balance failure from being prematurely re-described
as a Field jump or Part carrier defect without a specific bridge.

## Boundary

This theorem gives at least one valid face label. It does not force uniqueness. Mixed failures can be recorded on multiple faces; the canonical priority above is only the default diagnostic reading when a single label is needed.
