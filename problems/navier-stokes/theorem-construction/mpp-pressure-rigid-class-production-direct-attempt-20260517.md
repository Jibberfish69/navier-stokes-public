# MPP PressureRigidClassProduction.A Direct Attempt

Date: 2026-05-17

Status: failed direct production; strongest alternative isolated.

Purpose: search for a rigid class that every pure pressure-sustain residue tangent must enter, so that a pressure Liouville theorem can kill the residue.

## 0. Target

The desired production theorem is

```math
\boxed{PressureRigidClassProduction.A}
```

meaning every pure pressure-sustain residue tangent with zero native source-legal carrier lies in a rigid pressure class `\mathcal P` supporting

```math
\boxed{PressureAncientLiouville[\mathcal P].A.}
```

The target class must be produced from the pressure tangent data alone:

```text
ancient local suitable compactness,
interior retained pressure-sustain residue,
zero native source-legal carrier,
zero pressure collar / cutoff / harmonic / off-family exit,
Calderon-Zygmund pressure-Hessian relation.
```

## 1. Vorticity-free class candidate

Candidate:

```math
\omega_*=0.
```

The available hypothesis is zero native source-legal carrier on the singular pressure part. This controls the source-current measure, not the vorticity or the full strain. The trace-free symmetric tangent test separates positive pressure-Hessian sustain from native vorticity source. Thus the vorticity-free class is not produced.

## 2. Trace-balanced class candidate

Candidate:

```math
\operatorname{tr}\nabla^2p_*=0
\quad\text{or angular pressure cancellation saturation.}
```

Pressure trace/angular cancellation controls the full signed pressure object. The residue is selected after one-sided weights, directional testing, and positive sustain extraction. A positive selected directional lobe may coexist with full angular cancellation. Therefore trace balance does not produce a rigid selected-sign class.

## 3. Type-I / critical class candidate

Candidate:

```math
|u_*(x,t)|\le C_{I}|t|^{-1/2},
\qquad
u_*\in L_t^\infty L_x^3,
```

or a comparable critical envelope. The tangent extraction supplies local energy and pressure compactness. It supplies no global energy after rescaling, no Type-I envelope, and no critical norm bound. This mirrors the source-residue Liouville obstruction. The critical rigid class is not produced.

## 4. Self-similar class candidate

Candidate:

```math
u_*(x,t)=\lambda u_*(\lambda x,\lambda^2t)
```

or discrete self-similarity. Terminal pressure selection and Zeno/packet scaling select subsequences and packets; they impose no exact scaling identity on the ancient tangent. The self-similar rigid class is not produced.

## 5. Pressure-time-spread candidate

The remaining candidate is a temporal-spread class:

```math
\mu_*^{press\perp src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^\alpha,
\qquad \alpha>0.
```

A theorem proving the displayed temporal-spread bound eliminates a terminal
pressure atom and supplies the temporal input needed by a pressure Liouville
route. This candidate is genuinely new. It requires an elliptic-to-temporal
theorem: pressure is instantaneous in time, so temporal spread must come from
terminal packet dynamics or from a material identity, not from
Calderon-Zygmund ellipticity alone.

The sharpened alternative is therefore

```math
\boxed{PressureTimeSpread.A}
```

or equivalently

```math
\boxed{EllipticTimeSmearing.A.}
```

## 6. Verdict

`PressureRigidClassProduction.A` fails from the installed tangent data. The rigid class candidates requiring vorticity-free, trace-balanced, critical, Type-I, global-energy, or self-similar structure are unavailable.

The only new viable rigid-class producer found here is temporal pressure spread:

```math
PressureTimeSpread.A
\Longrightarrow
PressureRigidClassProduction.A
\Longrightarrow
PurePressureSustainResidueLiouville.A.
```

This becomes the next pressure-specific alternative to test alongside terminal pressure trace/angular saturation and legal classification.
