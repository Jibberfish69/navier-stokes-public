# ESNS Next Targets: Expanded Proof Audit

## Status

This is a theorem-facing expansion of the next five targets after the failed `ESNS.B1/B2` closure attempt.

The result is mixed:

- several rigorous conditional lemmas are proved below;
- none of the five target theorems closes unconditionally from current surfaces;
- the exact successor obligations are isolated.

## Target 1. `EulerSmoothA priori.A`

### Intended statement

Fix `s>5/2`. Let `u^E` solve incompressible Euler smoothly on a scenario interval `[0,T]` with the same smooth divergence-free datum `u_0`. Let `u^nu` be the maximal classical Navier-Stokes solution with fixed `nu>0` and the same datum. The desired target is

```math
\sup_{0\le t<T}\|u^\nu(t)\|_{H^s}<\infty
\qquad(\forall\nu>0).
\tag{ESA.1}
```

This would imply continuation of `NS_nu` on the whole Euler-smooth scenario interval.

### Rigorous available lemma: Euler-anchored difference estimate

Let

```math
w=u^\nu-u^E.
```

Then, after Leray projection,

```math
\partial_t w+\mathbb P(u^E\cdot\nabla w)+\mathbb P(w\cdot\nabla u^E)+\mathbb P(w\cdot\nabla w)
=\nu\Delta w+\nu\Delta u^E.
\tag{ESA.2}
```

For `s>5/2`, there is a constant `C_s` such that on every common classical interval,

```math
\frac{d}{dt}\|w(t)\|_{H^s}^2
+\nu\|\nabla w(t)\|_{H^s}^2
\le
C_s\bigl(\|\nabla u^E(t)\|_{L^\infty}+\|u^E(t)\|_{H^{s+1}}\bigr)
\|w(t)\|_{H^s}^2
+C_s\|w(t)\|_{H^s}^3
+C_s\nu^2\|u^E(t)\|_{H^{s+2}}^2.
\tag{ESA.3}
```

### Proof

Apply `\Lambda^s` to `(ESA.2)`, take the `L^2` inner product with `\Lambda^s w`, and use the standard Kato-Ponce / commutator estimate for `s>5/2`:

```math
|\langle \Lambda^s\mathbb P(a\cdot\nabla b),\Lambda^s b\rangle|
\le
C_s\|\nabla a\|_{L^\infty}\|b\|_{H^s}^2
+C_s\|a\|_{H^s}\|\nabla b\|_{L^\infty}\|b\|_{H^s}.
```

Use Sobolev embedding `H^s\hookrightarrow W^{1,\infty}` for `s>5/2` to bound the nonlinear term by `C_s\|w\|_{H^s}^3`. The viscous term gives

```math
\langle \Lambda^s\nu\Delta w,\Lambda^s w\rangle
=-\nu\|\nabla w\|_{H^s}^2.
```

The forcing term is bounded by Young's inequality:

```math
2|\nu\langle \Lambda^s\Delta u^E,\Lambda^s w\rangle|
\le
C_s\nu^2\|u^E\|_{H^{s+2}}^2+	frac12\|w\|_{H^s}^2,
```

with the harmless `\|w\|_{H^s}^2` absorbed into the Euler coefficient term. This proves `(ESA.3)`.

### Closure verdict

`(ESA.3)` gives finite-time stability under a bootstrap on `\|w\|_{H^s}` and gives small-viscosity stability on Euler-smooth windows. It does not prove `(ESA.1)` for every fixed `nu>0`, because the cubic term can only be controlled with a bootstrap/a priori bound on `w` or `u^nu`.

Therefore:

```math
EulerSmoothA\ priori.A\quad\text{remains open.}
```

The reduced successor target is an a priori estimate that controls the cubic difference term without importing Navier-Stokes regularity.

## Target 2. `EffectiveViscosityRetention.A`

### Intended statement

For a synchronized terminal packet ledger `W`, prove

```math
CM^\nu_{N,r,Q}+\text{terminal same-ledger packet normalization}
\Longrightarrow
\inf_W\mathcal V^{\nu,eff}_W>0.
\tag{EVR.1}
```

Here `\mathcal V^{\nu,eff}` is the effective viscous budget available to the terminal receiver/source packet after the route's scale-critical normalization.

### Rigorous coefficient lemma

For the raw equation coefficient,

```math
\nu>0\Longrightarrow \nu\ge c_\nu>0
```

with `c_nu=nu`. This proves only raw coefficient retention.

### Actual-dissipation obstruction

Actual packet dissipation has the form

```math
\nu\int_I\mathcal D_W(t)\,dt.
```

A smooth class-member packet may be locally rigid on the selected collar, with `\nabla u=0` on the active piece. Then `Pack`, `Part`, and `Field` remain valid on that local packet, while the actual dissipation integral vanishes. Hence CM membership cannot imply a positive lower bound on actual dissipative expenditure.

### Effective-budget obstruction

The terminal receiver uses scale-critical normalized ledgers, not the raw coefficient alone. A positive raw coefficient does not force the normalized budget `\mathcal V^{\nu,eff}_W` to stay positive relative to inertial/source terms. That is exactly the anti-degeneration content of `(EVR.1)`.

Therefore:

```math
EffectiveViscosityRetention.A\quad\text{remains open.}
```

## Target 3. `PositiveBudgetACTKX.A`

### Intended statement

```math
\inf_W\mathcal V^{\nu,eff}_W>0
\Longrightarrow ACT.KX.
\tag{PBA.1}
```

### Attempt

The positive effective budget supplies one coercive scalar input. `ACT.KX` requires an entire receiver packet: retained-window admission, bounded pack gauge, scale scheduler, source inputs, pressure/cutoff controls, and endpoint certificates.

### Formal obstruction

A scalar lower bound on `\mathcal V^{\nu,eff}` does not encode the remaining ACT.KX hypotheses. In logical form, `(PBA.1)` needs bridge lemmas of the form

```math
\inf\mathcal V^{\nu,eff}>0
\Longrightarrow
\text{retained-window admission},\quad
\text{scheduler},\quad
\text{source closure},\quad
\text{endpoint certificates}.
```

No current surface supplies those implications. The source-frontier still records a source-wall root after reconciliation.

Therefore:

```math
PositiveBudgetACTKX.A\quad\text{remains open.}
```

## Target 4. `ZeroBudgetEulerMember.A`

### Intended statement

```math
\mathcal V^{\nu,eff}_{W_j}\to0
\Longrightarrow
\mathrm{Member}_E
\quad\text{(flux-volume plus weak momentum-pressure fidelity).}
\tag{ZBEM.1}
```

### Rigorous conditional lemma

Assume a sequence of NS packet fields `u_j` satisfies:

1. `nu_j\to0`;
2. `u_j\to u` strongly in `L^2_{loc}` and weakly enough to pass derivatives in distributions;
3. `u_j\otimes u_j\to u\otimes u` in distributions;
4. `nu_j\Delta u_j\to0` in distributions;
5. `p_j\to p` in distributions;
6. `\nabla\cdot u_j=0`.

Then the limit `(u,p)` solves incompressible Euler distributionally:

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{ZBEM.2}
```

### Proof

For every divergence-free test field `\varphi`, the NS weak form gives

```math
\int u_j\cdot\partial_t\varphi
+\int (u_j\otimes u_j):\nabla\varphi
+\nu_j\int u_j\cdot\Delta\varphi=0.
```

Pass to the limit using the six hypotheses. The nonlinear term converges by assumption 3, and the viscous term vanishes by `nu_j\to0` and local distributional control. This gives Euler in weak form. The pressure version follows by adding the distributional limit of `p_j`.

### Closure obstruction

Zero effective terminal budget alone does not imply assumptions 2-5. Concentration, oscillation, Reynolds stress, pressure-source residue, and Zeno source-residue measures may survive. The current source-wall ledger explicitly preserves this possibility through ancient local source-residue objects.

Therefore:

```math
ZeroBudgetEulerMember.A\quad\text{remains open.}
```

## Target 5. `ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A`

### Intended statement

Produce an explicit ancient rigid class `B` such that terminal Zeno source-residue limits satisfy

```math
(u_*,p_*,\mu_*^{src})\in B,
\tag{ZENO.1}
```

and prove

```math
B\Longrightarrow \mu_*^{src}=0.
\tag{ZENO.2}
```

### Rigorous conditional contradiction

Assume the extraction supplies a nonzero source residue:

```math
\mu_*^{src}(Q_1^-)
\ge c_0>0.
\tag{ZENO.3}
```

Assume also `(ZENO.1)` and `(ZENO.2)`. Then `(ZENO.2)` gives `\mu_*^{src}=0`, contradicting `(ZENO.3)`. Hence the Zeno terminal branch is excluded under those two assumptions.

### Closure obstruction

The class-production theorem `(ZENO.1)` is absent for the currently audited candidate classes. The Liouville theorem `(ZENO.2)` is available only after a class is explicitly named with enough rigidity to kill source residue.

Therefore:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A\quad\text{remains open.}
```

## Consolidated proof result

The current rigorous proofs establish:

1. the Euler-anchored `H^s` difference inequality `(ESA.3)`;
2. raw coefficient positivity for fixed viscosity;
3. conditional Euler passage under strong no-residue compactness;
4. conditional Zeno contradiction from rigid-class production plus Liouville.

The current rigorous obstructions are:

1. Euler smoothness does not by itself control the nonlinear NS difference term for all fixed `nu>0`;
2. CM membership does not force actual dissipative expenditure;
3. raw viscosity coefficient does not force normalized effective packet budget;
4. positive effective budget does not supply the full `ACT.KX` packet;
5. zero effective budget does not force Euler membership without strong compactness and no-residue transfer;
6. Zeno cleanup still needs an explicit rigid class and Liouville theorem.

## Exact next theorem after this audit

The sharpest single next theorem is

```math
EffectiveViscousPacketAntiDegeneration.A:
\quad
\text{terminal same-ledger NS packet with }\nu>0
\Longrightarrow
\text{either }\mathcal V^{\nu,eff}\text{ stays positive with ACT.KX hypotheses, or the zero-budget limit is an Euler member / Zeno-rigid object.}
```

This theorem combines the two unresolved halves without adding route machinery. It is the exact missing bridge between the simple ESNS strategy and the existing source-wall frontier.
