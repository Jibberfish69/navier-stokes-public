# MPP LowStrainBVCharge.A Direct Attempt

Date: 2026-05-06

Status: partial reduction; far-low scale-separation mechanism isolated; full
charge remains open at near-band material derivative / pressure-source gate.

Purpose: attack the new PDE target produced by the corrected
`HeatDwellSampling.BV` lemma:

```text
LowStrainBVCharge.A.
```

## 0. Target

For a retained active packet family `F_N(W)`, each packet `P` has shell
`j_P`, heat time

```math
\tau_P:=(\nu2^{2j_P})^{-1},
```

sampled low strain

```math
\sigma_P(t)
:=
n_P(t)\cdot S^{loc}_{<j_P}(X_P(t),t)n_P(t),
```

and packet energy height `E_P:=sup_{I_P}e_P`.

The theorem target is:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_P E_P\tau_P\,\mathrm{Var}_{I_P}(\sigma_P)
\le
C\mathcal P_{N,Q}^{part}(W)
+C\mathcal L_{N,Q}^{field}(W)
+C\mathcal Z_{N,Q}^{atom}(W)
+o_N(1).
}
\tag{LBV.1}
```

The point of this target is to price the only loophole left by net Pack
control: fast alternation of the sampled expanding low-strain direction.

## 1. Material derivative expansion

Along the same-fluid packet path, write `D_t=partial_t+u\cdot\nabla`.
Ignoring cutoff commutators for one line,

```math
D_t\sigma_P
=
n_P\cdot (D_tS^{loc}_{<j_P})n_P
+2(D_tn_P)\cdot S^{loc}_{<j_P}n_P.
\tag{LBV.2}
```

For the strain tensor,

```math
D_tS
=
\nu\Delta S
-S^2-\Omega^2-\nabla^2p,
\tag{LBV.3}
```

where `\Omega=(\nabla u-(\nabla u)^T)/2` and the pressure is fixed by the
incompressible Poisson equation

```math
-\Delta p
=
\partial_i u_j\,\partial_j u_i
=
\operatorname{tr}\big((\nabla u)^2\big)
=
\operatorname{tr}(S^2+\Omega^2),
\tag{LBV.3a}
```

with zero spatial mean on the periodic model, or the declared decay/local gauge
on the whole-space model.  After localization and low-frequency projection,

```math
D_tS^{loc}_{<j}
=
\nu\Delta S^{loc}_{<j}
-P^{loc}_{<j}(S^2+\Omega^2+\nabla^2p)
+\mathrm{Comm}_{<j}^{flow/cut}.
\tag{LBV.4}
```

Thus `LowStrainBVCharge.A` has three native pieces:

```text
far-low parabolic variation,
near-band material derivative / pressure-source variation,
packet-frame variation.
```

## 2. Scale split

Fix a large but finite integer `L`.  Decompose

```math
S^{loc}_{<j}
=
S^{far}_{j,L}+S^{near}_{j,L},
```

where

```math
S^{far}_{j,L}:=\sum_{m\le j-L}S_m^{loc},
\qquad
S^{near}_{j,L}:=\sum_{j-L<m<j}S_m^{loc}.
\tag{LBV.5}
```

Correspondingly,

```math
\mathrm{Var}(\sigma_P)
\le
\mathrm{Var}(\sigma_P^{far})
+\mathrm{Var}(\sigma_P^{near})
+\mathrm{FrameVar}_P
+\mathrm{CommVar}_P.
\tag{LBV.6}
```

The far-low term is paid only by the exact estimate `(LBV.8)` below.  Its small
factor is \(2^{-2L}\) after the material-derivative envelope `(LBV.7)`, together
with the legal \(B_m\) leakage term.  The near band has no corresponding
far-low factor; it must be routed to the parabolic burst/source structure.

## 3. Far-low slow variation lemma

### Statement

Assume the material derivative envelope

```math
\|D_tS_m^{loc}(t)\|_{L^\infty(Q_P)}
\le
C\nu2^{2m}\|S_m^{loc}(t)\|_{L^\infty(Q_P)}
+B_m(t)
\tag{LBV.7}
```

for `m<=j_P-L`, where `B_m` is already legal Field/source leakage.  Then

```math
\tau_P\mathrm{Var}_{I_P}(\sigma_P^{far})
\le
C2^{-2L}
\int_{I_P}\|S^{far}_{j_P,L}(t)\|_{L^\infty(Q_P)}\,dt
+C\tau_P
\int_{I_P}\sum_{m\le j_P-L}B_m(t)\,dt.
\tag{LBV.8}
```

### Proof

Use `(LBV.2)` with `S^{far}` and temporarily suppress the frame term.  From
`(LBV.7)`,

```math
\begin{aligned}
\tau_P\int_{I_P}|D_tS^{far}_{j_P,L}|\,dt
&\le
C\tau_P\int_{I_P}
\sum_{m\le j_P-L}
\nu2^{2m}\|S_m^{loc}\|_\infty\,dt\\
&\quad
+C\tau_P\int_{I_P}\sum_{m\le j_P-L}B_m(t)\,dt.
\end{aligned}
```

Since `\tau_P=(\nu 2^{2j_P})^{-1}`,

```math
\tau_P\nu2^{2m}
=
2^{-2(j_P-m)}
\le
2^{-2L}.
```

Summing over `m<=j_P-L` gives `(LBV.8)`.  `\square`

This is a real gain: very low modes cannot oscillate at the high-shell heat
rate without paying an explicit material-derivative source term.

## 4. Far-low gap condition

The far-low contribution is spendable only if the retained packet normalization
supplies

```math
\sum_{P\in F_N(W)}
\omega_P E_P
\int_{I_P}\|S^{far}_{j_P,L}\|_\infty\,dt
\le
C\mathcal P_Q^{net}(W)
+C\mathcal L_{N,Q}^{field}(W)
+o_N(1),
\tag{LBV.9}
```

Together with the heat-scale coefficient, the spend is
`C2^{-2L}` times the displayed right side.  After fixing
`0<eta_far<1`, choose `L` so that `C2^{-2L}<=eta_far` before taking
`N->infty`.

This is not the false accumulated-positive Pack claim.  It is an unsigned
far-low variation tail with a small scale-separation coefficient.

The remaining far-low source leakage is:

```math
\sum_P
\omega_P E_P\tau_P
\int_{I_P}\sum_{m\le j_P-L}B_m(t)\,dt,
\tag{LBV.10}
```

and belongs in the legal Field/source ledger by construction of `B_m`.

## 5. Near-band gate

The near band `j-L<m<j` has no small factor:

```math
2^{-2(L-1)}
\le
\tau_P\nu2^{2m}
\le
2^{-2}
\quad\text{for }m=j-\ell,\ 1\le \ell<L.
```

Therefore near-band BV is the only serious part of `(LBV.1)`.

The needed theorem is:

```text
NearBandBVToBurstOrSource.A.
```

Target:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_PE_P\tau_P
\mathrm{Var}_{I_P}(\sigma_P^{near})
\le
C\,BurstHeightCharge_N(W)
+C\mathcal L_{N,Q}^{field}(W)
+C\mathcal Z_{N,Q}^{atom}(W)
+o_N(1).
}
\tag{LBV.11}
```

The intended proof is a first-large-variation selection.  If the near-band
variation is large on `I_P`, then for some time and some `m in (j_P-L,j_P)`,
one of the following holds:

```text
1. |S_m^{loc}| reaches parabolic-rate size relative to j_P;
2. the pressure/nonlinear material derivative term is large;
3. the packet frame rotates at parabolic rate;
4. the variation concentrates on a terminal Zeno subwindow.
```

Case 1 is the existing parabolic-rate strain burst branch.  By
`InverseParabolicBurst.A`, it forces lower/neighbor donor height.  On a
first-height run this is inherited, legally charged, or sent to the Zeno
residue branch.

Cases 2 and 3 are the real pressure/source and frame-transport legalizers.
They are not supplied by scalar shell balance.

## 6. Frame variation gate

The frame part in `(LBV.2)` is:

```math
2(D_tn_P)\cdot S^{loc}_{<j_P}n_P.
\tag{LBV.12}
```

If `n_P` is the transported high-packet direction, the needed frame-transport
input is the explicit estimate

```math
|D_tn_P|
\le
C_{Frame}
\big(
|Q_{n_P}S^{loc}_{<j_P}n_P|
+\mathrm{FrameComm}_P
\big).
\tag{LBV.13}
```

This note does not prove `(LBV.13)`. It isolates the required hypotheses: the
first term is geometric rotation by strain, and `\mathrm{FrameComm}_P` must be a
legal localization/pressure/viscous leakage term on the same packet. Under that
input, large frame variation is exactly the active-strain-alignment-cost branch:

```text
FrameBVCharge.A
<= ActiveStrainAlignmentCost.A / TPNI.A style geometry.
```

This is consistent with the signed-current surfaces: rotating a retained high
packet into the expanding low-strain eigendirection cannot be free.

## 7. Conditional closure

The direct proof path for `(LBV.1)` is:

```text
FarLowMaterialDerivativeEnvelope.A
+ FarLowPackAbsorption.A
+ NearBandBVToBurstOrSource.A
+ FrameBVCharge.A
=> LowStrainBVCharge.A.
\tag{LBV.14}
```

Then:

```text
HeatDwellSampling.BV
+ NetPackSpend.A
+ LowStrainBVCharge.A
=> ActiveHeightFluxTrichotomy.A.
```

## 8. Verdict

`LowStrainBVCharge.A` is not just a renamed source wall.  Its far-low part is
paid only by `(LBV.8)`: the \(2^{-2L}\) material-derivative factor plus legal
\(B_m\) leakage.  The live obstruction is now much more localized:

```text
near-band material derivative / pressure-source variation
+ packet-frame rotation at the high heat rate.
```

The next theorem-facing target is:

```text
NearBandBVToBurstOrSource.A + FrameBVCharge.A.
```

The subsequent near-band attempt sharpens this further: subparabolic near-band
heat variation is absorbable, and the non-subparabolic amplitude branch is a
`ParabolicRateStrainBurst` forcing lower/neighbor donor height.  The live
microfrontier is therefore:

```text
NearBandMaterialSourceCharge.A + FrameBVCharge.A.
```

If these fail, the countermodel is very specific: a retained high packet
samples a near-neighbor low-strain band whose direction/value oscillates at the
high heat rate, while Pack remains bounded, Part remains active, Field legal
loss is absent, and no Zeno atom forms.
