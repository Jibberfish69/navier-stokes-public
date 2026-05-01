# jump-avg-branch-elimination — visible audit and failed discharge attempt

## Target

Discharge `jump-avg-branch-elimination`:

```math
\text{Eliminate }Jump_{avg}\text{ without assuming }Field_{avg}\text{ on that branch.}
```

## Controlling edge

The live Navier-Stokes edge is the independently reopened `PCTP.hard` terminal-tail production frontier. The relevant unresolved row is `jump-avg-branch-elimination`: eliminate the averaged jump branch without spending `Field_avg` on the branch where that object is absent.

## Definitions read from the canonical surfaces

For a bounded-distortion same-fluid terminal tail `T`, define

```math
r_{good}(a,t)=\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le \varepsilon_m\}.
```

The averaged field object is

```math
Field_{avg}(T)
\Longleftrightarrow
\exists T'\subset T\text{ terminal},\ \exists r_*>0
\text{ such that }r_{good}(a,t)\ge r_*\text{ on }T'.
```

The averaged jump object is the complementary terminal radius-loss object:

```math
Jump_{avg}(T)
\Longleftrightarrow \neg Field_{avg}(T)
\Longleftrightarrow
\forall T'\subset T\text{ terminal},\ \inf_{(a,t)\in T'} r_{good}(a,t)=0.
```

The bad material set typing theorem `CAVG.J` assigns bad-set contact to the averaged jump face:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Attempted routes

### Route 1: endpoint consumption through `AVG.END.A`

The installed averaged endpoint row removes `Jump_avg` using

```math
Field_{avg}+OFP.A_{avg}\Longrightarrow \neg Jump_{avg}.
```

This route is circular for the branch target. On the `Jump_avg` branch, `Field_avg` is exactly unavailable by definition. Therefore `AVG.END.A` is a valid endpoint-consumption theorem only after `CFI.A_avg` has already supplied the averaged class witness containing `Field_avg`; it is not a branch-native elimination of `Jump_avg`.

### Route 2: good-side averaged receiver path

The `AACT.Global.noJump` path starts from a finite positive-scale SCF-good cover, equivalently `Field_avg` on a terminal subtail, and then obtains

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

This path is valid on the no-`Jump_avg` / `Field_avg` side. It does not discharge the `Jump_avg` branch because its cover hypothesis is the denied object on that branch.

### Route 3: branch-native no-escape theorem

The only noncircular route would prove a direct contradiction:

```math
Jump_{avg}+OriginalSmoothData+SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow \bot,
```

using no `Field_avg` premise. The natural skeleton is:

1. `Jump_avg` gives terminal persistence of arbitrarily small SCF-good radius, with bad-set contact or radius degeneration on every terminal subtail.
2. A repaired local `AACT.KX` or replacement local estimate produces a nonnegative defect charge or boundary flux attached to the persistent bad region.
3. Finite energy, incompressibility, and pressure/source estimates give an upper bound for the same charge.
4. Quantitative separation or divergent accumulation of terminal subscales gives a positive lower total that contradicts the upper bound.

The canonical surfaces contain the skeleton and the failure diagnosis, but they do not contain the decisive quantitative lower-bound/upper-bound pair for the same charge.

## Result

`jump-avg-branch-elimination` is not discharged by the currently installed repo surfaces. The legal conclusion is a failed discharge attempt with a precise missing theorem:

```math
\boxed{
\text{Branch-native averaged no-escape defect-charge theorem is required.}
}
```

A successful discharge must install either that theorem or an equivalent quantitative mechanism proving `Jump_avg -> contradiction` without `Field_avg`.

## Failure modes checked

- The route `Jump_avg -> Field_avg -> CFI.A_avg -> contradiction` is circular.
- `AVG.END.A` removes `Jump_avg` only after `CFI.A_avg` supplies `Field_avg`.
- `CAVG.J` types bad-set contact as `Jump_avg`; it does not exclude it.
- `AACT.Global.noJump` assumes the good-side finite cover and therefore cannot prove the jump-side contradiction.
- The definition dichotomy `Field_avg` / `Jump_avg` classifies the branch split; it does not eliminate the losing branch.

## Current status

Failed attempt recorded. The obligation remains open until the branch-native no-escape theorem or equivalent quantitative defect-charge machinery is proved and installed.