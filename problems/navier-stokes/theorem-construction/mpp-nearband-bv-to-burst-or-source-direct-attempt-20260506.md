# MPP NearBandBVToBurstOrSource.A Direct Attempt

Date: 2026-05-06

Status: partial reduction; subparabolic near-band variation is absorbable,
parabolic-rate variation routes to burst height, remaining gate is material
source / pressure plus frame rotation.

Purpose: continue the direct attack under `LowStrainBVCharge.A` and decide
whether the near-band BV wall is a new theorem or only another presentation of
the native source wall.

## 0. Target

For the near band

```math
S^{near}_{j,L}:=\sum_{j-L<m<j}S_m^{loc},
```

define

```math
\sigma_P^{near}(t)
:=
n_P(t)\cdot S^{near}_{j_P,L}(X_P(t),t)n_P(t).
```

The target from the previous note is:

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
\tag{NBV.1}
```

## 1. Material derivative split

Along the packet path,

```math
D_t\sigma_P^{near}
=
n_P\cdot D_tS^{near}_{j_P,L}n_P
+2(D_tn_P)\cdot S^{near}_{j_P,L}n_P.
\tag{NBV.2}
```

Using the strain equation,

```math
D_tS^{near}_{j,L}
=
\nu\Delta S^{near}_{j,L}
+\mathcal N^{near}_{j,L}
+\mathcal P^{near}_{j,L}
+\mathcal C^{near}_{j,L},
\tag{NBV.3}
```

where

```text
N^{near} = near-band projection of -(S^2+Omega^2),
P^{near} = near-band projection of -nabla^2 p,
C^{near} = cutoff / material-commutator / localization errors.
```

Therefore

```math
\tau_P\mathrm{Var}_{I_P}(\sigma_P^{near})
\le
C_{NBV}\left(
V_P^{heat}
+V_P^{src}
+V_P^{frame}
\right),
\tag{NBV.4}
```

with

```math
V_P^{heat}
:=
\tau_P\int_{I_P}\|\nu\Delta S^{near}_{j_P,L}\|_\infty\,dt,
```

```math
V_P^{src}
:=
\tau_P\int_{I_P}
\|\mathcal N^{near}_{j_P,L}
+\mathcal P^{near}_{j_P,L}
+\mathcal C^{near}_{j_P,L}\|_\infty\,dt,
```

and

```math
V_P^{frame}
:=
\tau_P\int_{I_P}
|D_tn_P|\,\|S^{near}_{j_P,L}\|_\infty\,dt.
```

## 2. Subparabolic near-band absorption

On the subparabolic near-band set

```math
\|S^{near}_{j_P,L}(t)\|_\infty
\le
\theta\nu2^{2j_P},
\tag{NBV.5}
```

the heat part is harmless up to a finite-band constant:

```math
V_P^{heat}
\le
C_L
\theta
\tag{NBV.6}
```

after normalizing by `tau_P=(nu2^{2j_P})^{-1}`.

Thus

```math
\sum_P\omega_PE_PV_P^{heat}
\le
C_L\theta\sum_P\omega_PE_P.
\tag{NBV.7}
```

In the height-flux application this term is absorbable by choosing `theta`
small before the terminal limit, because it is proportional to the same active
packet height being tested and carries no positive source sign.

## 3. Complement is parabolic-rate burst

On the complement of `(NBV.5)`,

```math
\|S^{near}_{j_P,L}\|_\infty
>
\theta\nu2^{2j_P}.
\tag{NBV.8}
```

Since `S^{near}_{j,L}` is a sub-sum of `S^{loc}_{<j}`, this implies

```text
ParabolicRateStrainBurst_{j_P}.
```

The already-proved inverse Bernstein lemma gives:

```text
ParabolicRateStrainBurst_{j_P}
=> lower/neighbor donor height.
```

Therefore on first-height windows the complement of `(NBV.5)` routes to:

```text
inherited height,
native height creation charge,
or Zeno residue.
```

This is exactly the `BurstHeightCharge_N + Zeno` side of `(NBV.1)`.

## 4. Remaining source term

After the subparabolic/burst split, the actual unproved term is:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_PE_P\tau_P
\int_{I_P}
\|\mathcal N^{near}_{j_P,L}
+\mathcal P^{near}_{j_P,L}
+\mathcal C^{near}_{j_P,L}\|_\infty\,dt.
}
\tag{NBV.9}
```

Call the needed theorem:

```text
NearBandMaterialSourceCharge.A.
```

Target:

```math
\boxed{
\sum_P\omega_PE_P V_P^{src}
\le
C\mathcal L_{N,Q}^{field}(W)
+C\,BurstHeightCharge_N(W)
+C\mathcal Z_{N,Q}^{atom}(W)
+o_N(1).
}
\tag{NBV.10}
```

This is the pressure/source gate in its sharpest current form.  It is not
settled by absolute Calderon-Zygmund estimates, because those return to the
same scale-critical active-source multiplier.  A noncircular proof must use
one of:

```text
localized pressure-source cancellation on the retained packet family,
signed-current legalization,
terminal no-incoming rigidity,
or near-band donor depletion.
```

## 5. Remaining frame term

The other unproved term is:

```math
\boxed{
\sum_P\omega_PE_PV_P^{frame}.
}
\tag{NBV.11}
```

This is precisely:

```text
FrameBVCharge.A.
```

If the active high-packet direction rotates at the high heat rate into the
expanding near-band strain eigenspace, the route must charge that rotation.
This is the local version of the already isolated active alignment wall:

```text
ActiveStrainAlignmentCost.A / TPNI.A / TerminalSignedSaturation.A.
```

## 6. Conditional theorem

The proved part of this attempt is the split:

```text
subparabolic near-band heat variation
=> absorbable,
```

and

```text
non-subparabolic near-band amplitude
=> ParabolicRateStrainBurst
=> lower/neighbor donor height.
```

Therefore:

```math
\boxed{
NearBandMaterialSourceCharge.A
+ FrameBVCharge.A
+ BurstToHeightInheritanceOrCharge.A
\Longrightarrow
NearBandBVToBurstOrSource.A.
}
\tag{NBV.12}
```

Combining with the far-low note:

```text
FarLowMaterialDerivativeEnvelope.A
+ FarLowPackAbsorption.A
+ NearBandMaterialSourceCharge.A
+ FrameBVCharge.A
+ BurstToHeightInheritanceOrCharge.A
=> LowStrainBVCharge.A.
```

## 7. Verdict

`NearBandBVToBurstOrSource.A` is partially discharged.  The near-band heat
part is not a live obstruction; it is either subparabolic and absorbable, or it
is a parabolic-rate burst that forces lower/neighbor donor height.

The live remainder is sharper:

```text
NearBandMaterialSourceCharge.A + FrameBVCharge.A.
```

This is the smallest current source-wall face in the height-flux route: a
retained high packet must either pay for near-band pressure/material-source
variation, or pay for rotating into the expanding near-band strain frame.
