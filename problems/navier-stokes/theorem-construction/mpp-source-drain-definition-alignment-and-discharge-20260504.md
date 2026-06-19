# MPP Source-Drain Definition Alignment And Discharge

## Status

Definition-aligned supplier-route discharge packet.

This note locks the definitions used by the normalized-mass source-drain proof
to the final lane symbols used across the current theorem-construction surfaces.
Together with
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`, it
discharges the source-pulse / no-`Jump_avg` supplier route at the
definition-aligned analytic-certificate level:

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
LemmaB.SourceDrain.
```

The typed downstream consequence is:

```math
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

Boundary: this discharges the source-pulse/no-`Jump_avg` supplier route and
feeds the downstream terminal-tail consumer/readout `PCTP.hard / TTU.A`.  It is
not itself the governing contrapositive primitive for the whole class-membership
program.

CM-exit boundary: the displayed `SOURCE.NO-PULSE.A -> AWG.A -> Jump_avg` chain
is supplier/readout support only. It does not close the source wall or prove a
`Pack`, `Part`, or `Field` exit unless a separate bridge licenses that landing.

## Definition Crosswalk

| certificate symbol | final lane symbol | source path | exact definition | status | downstream consumer |
|---|---|---|---|---|---|
| `T` | same-fluid bounded-overlap terminal tile `T` | `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | `T=(j,k,Q_T,I_T)` with `k<j-M`; it is the localized terminal child tile used as the unit of parent/child ancestry. | locked | `CoeffStop.A`, `ParentKernel.A` |
| `I_T` | tile time interval `I_T` | `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md` | `I_T=[t_-,t_+]`. | locked | adjoint identities, residual pairing |
| `Q_T` | same-fluid heat cylinder `Q_T` | `mpp-coefficient-stopping-for-strain-gauged-packets-note-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | `Q_T=\{(x,t):t\in I_T,\ |x-X_T(t)|\le r_T\}` up to fixed bounded-overlap cylinder constants; enlarged cylinder `Q_T^*` is used in coefficient bounds. | locked | coefficient budget, source-pulse selection |
| `r_T` | tile heat radius `r_T` | `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md`; `mpp-coefficient-stopping-for-strain-gauged-packets-note-20260504.md` | `r_T=2^{-j}`. | locked | coefficient budget, source-pulse functional |
| `j,k` | high shell `j`, low/principal strain shell `k` | `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | Shell indices satisfying `k<j-M` on the separated packet calculus. | locked | coefficient stopping, residual split |
| `X_T` | low-flow tile center `X_T(t)` | `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md`; `mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md` | `\dot X_T(t)=b_k(X_T(t),t)`. | locked | affine heat packet bounds |
| `J_T` | linearized low-flow frame `J_T(t)` | `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md`; `mpp-four-layer-analytic-verification-certificates-20260504.md` | `\dot J_T(t)=(\nabla b_k)(X_T(t),t)J_T(t)`, `J_T(t_+)=I`. | locked | affine heat packet realization |
| `b_k` | low transport field `b_k` | `mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | `b_k=u_{\le k}`. | locked | principal operator `L_{j,k}` |
| `A_k` | principal symmetric strain-production matrix `A_k` | `mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | Matrix chosen so `L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k`; equivalently `-A_ku_j` is the retained principal strain term. | locked | strain gauge, gain `g_T` |
| `\psi_T` | backward adjoint terminal packet `\psi_T` | `mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md`; `mpp-adjbessel-strain-gauge-packet-calculus-note-20260504.md` | Solves `L_{j,k}^*\psi_T=0`, i.e. `-\partial_t\psi_T-b_k\cdot\nabla\psi_T-\nu\Delta\psi_T-A_k^*\psi_T=0`, with terminal packet data at `t_+`. | locked | adjoint identity, residual pairing |
| `g_T(t)` | time-dependent positive strain gain `g_T(t)` | `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`; `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md` | `g_T(t)=e^{\Gamma_T(t)}`, `\Gamma_T(t)=\int_t^{t_+}\lambda_{\max}^+(A_k(X_T(s),s))\,ds`; hence `g_T(t_+)=1`. | locked | normalized packet, normalized mass |
| `\chi_T(t)` | normalized adjoint packet `\chi_T(t)` | `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`; `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md` | `\chi_T(t)=g_T(t)^{-1}\psi_T(t)`, so `\chi_T(t_+)=\psi_T(t_+)`. | locked | `WeightedAdjBessel.A`, parent kernel |
| `M(T)` | normalized child mass `M(T)` | `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`; `mpp-six-step-normalized-mass-source-drain-proof-package-20260504.md`; `mpp-normalized-child-mass-source-drain-assembly-note-20260504.md` | `M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2`. | locked | all six source-drain steps |

All crosswalk rows have exact final symbol, exact source path, exact formula, and
exact downstream consumer.

## Residual Decomposition Lock

The localized packet equation is

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k.
```

The residual decomposition used in the certificate is locked as

```math
R_{j,k}
=
R^{comm}_{j,k}
+
R^{press}_{j,k}
+
R^{cut}_{j,k}
+
R^{off}_{j,k}.
```

| residual term | operator source | exact formula / description | norm and estimate | status | downstream consumer |
|---|---|---|---|---|---|
| `R^{comm}_{j,k}` | commutator after principal-strain extraction | `[\Delta_j,b_k\cdot\nabla]w_j-\text{principal strain part}` | `\|R^{comm}\|_{L_t^2H^{-1}}^2\le C_{\mathrm{comm}}\int\sum_{q>N}D_q` | locked | `WeightedAdjRes.A` |
| `R^{press}_{j,k}` | pressure / Leray projection | `\nabla\Delta_jp-\text{localized Leray projection}` with local pressure normalization | `\|R^{press}\|_{L_t^2H^{-1}}^2\le C_{\mathrm{press}}\int\sum_{q>N}D_q` | locked | `WeightedAdjRes.A` |
| `R^{cut}_{j,k}` | heat-cylinder cutoff commutator | `[\partial_t+b_k\cdot\nabla-\nu\Delta,\eta_T]w_j` | `\|R^{cut}\|_{L_t^2H^{-1}}^2\le C_{\mathrm{cut}}\int\sum_{q>N}D_q` | locked | `WeightedAdjRes.A` |
| `R^{off}_{j,k}` | off-packet shell interaction | Shell-separated remainder outside the same-fluid bounded-overlap packet family | `\|R^{off}\|_{L_t^2H^{-1}}^2=o_N(1)` | locked | `WeightedAdjRes.A` |

Therefore

```math
\|R\|_{L_t^2H^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1),
```

and duality with `WeightedAdjBessel.A` gives

```math
\sum_T
\left|
\int_{I_T}g_T(t)^{-1}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

## Source-Pulse Functional And Measure Lock

The source-pulse functional is locked as

```math
\mathcal P(Q_r(x,t))
:=
r^{-1}
\int_{Q_r(x,t)}
[F^{src}_{>1/r}]_+.
```

The residue object is the localized positive pre-Cauchy source residue:

```math
\nu_n\rightharpoonup\nu_*.
```

The selected first source-pulse tile gives

```math
\nu_*(Q_1(0,0))\ge\eta.
```

The measurable first-pulse rule is dyadic-grid earliest crossing with
lexicographic tie-breaking.  Its no-leakage conclusion is

```math
\nu_*(\text{earlier source-pulse class in }s<-a)=0
```

for every finite backward slice `s<-a`.  Thus earlier ancestry cannot reappear
as diffuse source residue in the ancient limit.  This pins `FirstPulseKill.A` to
the same residue object consumed by `SOURCE.NO-PULSE.A`.

## Typed Vocabulary Lock

The following replacements are now the lane-typed language for this route:

| old phrase | lane-typed phrase | reason |
|---|---|---|
| packet / tile | same-fluid bounded-overlap terminal tile | separates physical heat cylinders from global Fourier-shell products |
| source residue | localized positive pre-Cauchy source residue | pins the object to `F^{src}_{>1/r}` and weak measure convergence |
| ancestor | earlier threshold-crossing source-pulse ancestor | pins ancestry to measurable source-pulse threshold crossing |
| bad coefficient tile | coefficient-stopped same-fluid terminal tile | pins stopping to `\mathcal C(T)>\varepsilon_M` and `\sigma_T` |
| residual charge | weighted residual charge | pins charge to `|\int g_T(t)^{-1}\langle R,\psi_T\rangle|^2` |

## Discharge

The definition crosswalk, residual lock, source-pulse measure lock, and typed
vocabulary lock give the discharge criterion:

```math
\boxed{
\text{every row has exact final symbol, exact source path, exact formula, exact
estimate, and exact downstream consumer.}
}
```

Therefore the source-drain package is discharged at the definition-aligned
analytic-certificate supplier-route level:

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
LemmaB.SourceDrain.
```

The downstream typed consequence is:

```math
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
