# MPP Viscosity-Class Separation Unconditional Closure Attempt

## Status

Failed theorem attempt.

Role: test whether the bridge lemmas in `ViscClassSep.A` can be closed unconditionally from the current repo surfaces.

Result: the unconditional closure fails. The conditional theorem program remains useful, and the failure localizes the exact missing mathematical assertions.

## Target

Close the following bridge lemmas with no extra hypotheses:

```math
ACTKX\_ELCI\_Dichotomy.A,
\qquad
EulerOnlyDefectClassification.A,
\qquad
SameLedgerLimitTransfer.A,
\qquad
NoPositiveNuEulerizationInsideNSClass.A.
```

The intended conclusion would be:

```math
CM^{\nu}_{N,r,Q}
\Longrightarrow
\text{no terminal }Part/Field\text{ defect at fixed }\nu>0.
```

## Deleted retained-budget bridge slot

### Desired statement

For every positive-viscosity Navier--Stokes class member on a synchronized packet ledger,

```math
CM^{\nu}_{N,r,Q}
\Longrightarrow
\mathcal V^{\nu}_{\mathcal W}\ge c_{\nu,\mathcal W}>0.
```

### Attempt

Split the proposed budget into two possible meanings.

First meaning: actual dissipative expenditure,

```math
\mathcal V^{\nu}_{\mathcal W}
:=
\nu\int_I\mathcal D^{low}(t)\,dt
+\text{top-viscous readout terms}.
```

This fails. A smooth class-member packet can be locally rigid or constant on the selected collar. Then the relevant gradient and top-viscous ledgers can vanish while `Pack`, `Part`, and `Field` remain true. Hence actual dissipation has no positive lower bound on all class-member packets.

Second meaning: available coefficient budget,

```math
\mathcal V^{\nu}_{\mathcal W}
:=
\nu,
\quad c_{\nu}>0.
```

This gives a true coefficient statement at fixed viscosity. It supplies a positive absorption coefficient, rather than a theorem closing the receiver chain.

### Verdict

This slot is deleted from the theorem-facing route. The coefficient-positivity
reading is too weak for unconditional `ACT.KX` closure, and the hard target is
the direct fixed-`nu` Euler-smooth to Navier--Stokes-smooth bridge.

## Attempted Lemma 2: `ACTKX_ELCI_Dichotomy.A`

### Desired statement

Every terminal `Part/Field` defect either has zero effective budget and becomes Euler-class, or has positive effective budget and closes through

```math
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

### Attempt

Use fixed `\nu>0` coefficient positivity to force the positive-budget side. Then invoke the `ACT.KX` route.

### Failure

The repo `ACT.KX` packet is conditional. It spends retained-window admission, bounded pack gauge, scheduler/scale seeds, post-receiver source inputs, and endpoint certificates. Positive viscosity coefficient alone supplies none of those package hypotheses.

There is also a scale-critical obstruction. The source-wall execution ledger records that first-moment dissipation tail control gives

```math
\int\sum_{k>N}D_k(t)\,dt\to0,
```

while it does not imply the square reserve

```math
\int
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\to0.
```

Thus a branch can retain positive viscosity coefficient while the scale-critical receiver/source reserve remains open. That branch is neither closed by `ACT.KX` nor forced into Euler membership or defect-boundary classification by coefficient positivity.

### Verdict

The dichotomy is unproved. A third region remains:

```math
\nu>0\text{ coefficient retained}
\quad+\quad
\text{scale-critical receiver/source reserve open}.
```

This is exactly where `ScaleCriticalTreeCarleson.A` or the Zeno rigid-class pair remains live.

## Attempted Lemma 3: `EulerOnlyDefectClassification.A`

### Desired statement

Every zero-budget terminal defect is either an Euler member or a named
defect-boundary object.

### Attempt

Let `\mathcal V^{\nu_j}_{\mathcal W_j}\to0`. Drop the viscous term in

```math
K_k^{\nu_j}=-\nabla^{k+1}p_j+\nu_j\Delta U_{k,j}
```

and pass to

```math
K_k^{E}=-\nabla^{k+1}p.
```

### Failure

Zero effective budget does not by itself produce an Euler member. Compactness
limits may contain concentration, oscillation, Reynolds stress, pressure-source
residue, or source measures. The Zeno branch in the live source-wall ledger
explicitly allows an ancient local suitable source-residue limit

```math
(u_\ast,p_\ast,\mu_\ast^{src}),
\qquad
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
```

That object is an Euler-comparison object only after an additional rigid-class
production and Liouville theorem. It is not automatically `Member_E`.

### Verdict

`EulerOnlyDefectClassification.A` requires an extra no-residue membership theorem, or a named rigid class plus Liouville theorem. The repo currently lists this as

```math
ZenoBoundedClass_{\mathcal B}.A
+
ZenoResidueLiouville_{\mathcal B}.A.
```

## Attempted Lemma 4: `SameLedgerLimitTransfer.A`

### Desired statement

Compactness extraction preserves the same `Part/Field` witnesses, covers, pressure readouts, receiver ledgers, and packet labels.

### Attempt

Use smooth packet convergence on retained windows and pass every finite-depth object to the limit.

### Failure

The retained-window proof gives this only on compact classical intervals or under conditional retained hypotheses. A terminal extraction can lose:

```math
\text{fixed-cover control},
\quad
\text{positive coherence scale},
\quad
\text{strong pressure readout convergence},
\quad
\text{product convergence in the nonlinear and pressure source terms}.
```

Weak convergence preserves fewer structures than the witness ledger requires. In particular, the `Field` face uses finite differences of both `U_k` and `K_k`; weak limits can create defect measures exactly in the pressure/source channel.

### Verdict

`SameLedgerLimitTransfer.A` needs strong compactness on the selected packet ledger. Current live surfaces keep this as a conditional support problem, rather than an unconditional theorem.

## Attempted Lemma 5: `NoPositiveNuEulerizationInsideNSClass.A`

### Desired statement

A positive-viscosity Navier--Stokes class member cannot have a vanishing normalized receiver budget while class membership remains installed.

### Attempt

If the normalized budget is the coefficient `\nu`, the statement reduces to:

```math
\nu>0
\Longrightarrow
\nu\ne0.
```

### Failure

The receiver route uses an effective packet budget, not merely the raw coefficient. Under packet normalization, high-frequency or high-Reynolds terminal packets can make the effective viscous receiver budget vanish relative to inertial/source terms while the raw equation still has fixed `\nu>0`.

So the coefficient statement is true and irrelevant, while the effective-budget statement is exactly the missing anti-degeneration theorem.

### Verdict

The no-eulerization lemma reduces to the deleted effective-budget form. That
form is not part of the hardened theorem-facing route.

## Combined proof attempt

Assume a terminal `Part/Field` defect at fixed `\nu>0`.

A coefficient-level split gives:

```math
\nu>0.
```

This alone gives no receiver closure.

An effective-budget split gives two cases.

### Case 1: effective budget stays positive

To close the case, one needs the full conditional `ACT.KX` chain. The current route requires H1-H6 from the `ACT.KX` packet. These are not consequences of coefficient positivity. Therefore the case remains open unless the conditional hypotheses are installed independently.

### Case 2: effective budget vanishes

To close the case, one needs Euler membership / defect classification plus
same-ledger transfer. Current surfaces allow Zeno source-residue limits and
require either a rigid class plus Liouville theorem or a temporal anti-atom
theorem. Therefore the case remains open unless the Zeno/Euler cleanup theorem
is installed independently.

Hence the unconditional proof does not close.

## Exact reduced theorem targets

The unconditional version reduces to three sharper theorem targets.

### `EffectiveViscosityRetention.A`

```math
CM^{\nu}_{N,r,Q}
+\text{terminal same-ledger packet normalization}
\Longrightarrow
\inf\mathcal V^{\nu,eff}_{\mathcal W}>0.
```

### `PositiveBudgetACTKX.A`

```math
\inf\mathcal V^{\nu,eff}_{\mathcal W}>0
\Longrightarrow
ACT.KX
```

with no retained-window admission hypothesis.

### `ZeroBudgetEulerMember.A`

```math
\mathcal V^{\nu,eff}_{\mathcal W_j}\to0
\Longrightarrow
\mathrm{Member}_E\text{ as Euler flux-volume and weak momentum-pressure membership}
```

or, more realistically,

```math
\mathcal V^{\nu,eff}_{\mathcal W_j}\to0
\Longrightarrow
ZenoBoundedClass_{\mathcal B}.A
+ZenoResidueLiouville_{\mathcal B}.A.
```

## Final verdict

The unconditional closure of all `ViscClassSep.A` bridge lemmas is unavailable from current repo surfaces.

The proof attempt fails for structural reasons:

1. actual dissipative budget has no positive lower bound on all smooth class-member packets;
2. coefficient positivity does not imply `ACT.KX` closure;
3. positive effective budget closure still needs the conditional receiver hypotheses;
4. zero effective budget can yield source-residue / Zeno limits, rather than `Member_E` objects;
5. same-ledger transfer needs strong compactness and fixed-cover preservation.

The correct next proof target is therefore the effective-budget anti-degeneration theorem, or the Zeno rigid-class cleanup theorem.
