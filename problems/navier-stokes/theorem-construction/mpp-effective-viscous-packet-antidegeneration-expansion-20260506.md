# EffectiveViscousPacketAntiDegeneration.A Expansion

## Status

Conditional expansion theorem with rigorous branch proof.

This note expands the sharp next target after the ESNS audit:

```math
EffectiveViscousPacketAntiDegeneration.A.
```

The theorem is proved here only as a precise branch decomposition. Its two nontrivial branch-closure estimates remain open.

## Setup

Fix `nu>0`. Let

```math
\mathcal W_m=(Q_m,N_m,r_m,\Phi_m,u_m,p_m)
```

be a terminal same-ledger Navier-Stokes packet sequence selected by the `Part/Field` route. Assume every `\mathcal W_m` is normalized by the same route ledger, and let

```math
\mathcal V_m^{eff}\ge0
```

be the effective viscous packet budget on `\mathcal W_m`, after the same scale-critical normalization used by the receiver/source packet.

The raw coefficient is fixed:

```math
nu>0.
```

The effective budget is allowed to depend on packet scale, terminal normalization, and the receiver/source ledger.

## Expanded target

The correct expansion is the following theorem schema.

### Theorem `EVPAD.A` (effective-budget branch decomposition)

After passing to a subsequence, exactly one of the following two cases holds:

```math
\liminf_{m\to\infty}\mathcal V_m^{eff}>0,
\tag{EVPAD.1}
```

or

```math
\mathcal V_m^{eff}\to0.
\tag{EVPAD.2}
```

In the positive-budget case, closure requires the receiver theorem

```math
PositiveBudgetReceiver.A:
\quad
\liminf_m\mathcal V_m^{eff}>0
+\mathsf{Ledger}_{ACT}
\Longrightarrow ACT.KX.
\tag{EVPAD.3}
```

In the zero-budget case, closure requires one of the two cleanup theorems:

```math
ZeroBudgetEulerMember.A:
\quad
\mathcal V_m^{eff}\to0
+\mathsf{StrongCompactness}
+\mathsf{NoResidue}
\Longrightarrow \mathrm{Member}_E,
\tag{EVPAD.4}
```

or

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
\tag{EVPAD.5}
```

Thus the expanded anti-degeneration target is:

```math
\boxed{
\begin{aligned}
&\text{terminal fixed-}nu\text{ same-ledger NS packet}\cr
&\Longrightarrow
\Big[(\text{positive effective budget} + PositiveBudgetReceiver.A)\cr
&\qquad\qquad\vee\ (\text{zero effective budget} + ZeroBudgetEulerMember.A)\cr
&\qquad\qquad\vee\ (\text{zero effective budget} + ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A)\Big].
\end{aligned}}
\tag{EVPAD.6}
```

## Proof of the decomposition

Since `\mathcal V_m^{eff}\ge0`, set

```math
L:=\liminf_{m\to\infty}\mathcal V_m^{eff}\in[0,\infty].
```

If `L>0`, then `(EVPAD.1)` holds. This is the positive-budget branch.

If `L=0`, there is a subsequence `m_j` such that

```math
\mathcal V_{m_j}^{eff}\to0.
```

Relabel that subsequence as `m`. This gives `(EVPAD.2)`. This is the zero-budget branch.

These alternatives exhaust every terminal packet sequence after subsequence selection.

## Positive-budget branch proof skeleton

Assume `(EVPAD.1)` and assume the ACT ledger hypotheses `\mathsf{Ledger}_{ACT}` are available: retained-window admission, bounded pack gauge, scale scheduler, source closure, pressure/cutoff bounds, and endpoint certificates.

Under these hypotheses, the positive lower bound on `\mathcal V_m^{eff}` gives the receiver absorption margin used by the `ACT.KX` packet. The exact input needed from the ACT ledger is the following scalar first-exit lemma:

```math
\textbf{ACT.FirstExitAbsorb:}\quad
\begin{gathered}
Y(t)\le Y(a)+\int_a^t b(s)Y(s)\,ds+\int_a^t f(s)\,ds
-\gamma\int_a^t Z(s)\,ds,\\
\int_a^b b(s)\,ds\le\eta,\qquad
\int_a^b f(s)\,ds\le\eta\,\gamma,\qquad
Y(a)\le\eta\,\gamma
\end{gathered}
\Longrightarrow
\sup_{a\le t\le b}Y(t)\le C\eta\,\gamma,
```

with constants matching the packet excess variable `Y`, receiver budget
`\gamma`, and dissipative quantity `Z` in `ACT.KX`. The scheduler supplies the
smallness of `\int b` and `\int f`; the positive effective-viscous lower bound
supplies `\gamma`; finite cover and finite parameter count then sum the packet
outputs. This exact lemma, rather than the phrase "standard first-exit
absorption," is what yields `ACT.KX`.

So the rigorous conditional implication is:

```math
\liminf_m\mathcal V_m^{eff}>0
+\mathsf{Ledger}_{ACT}
\Longrightarrow ACT.KX.
```

The proof is conditional because `\mathsf{Ledger}_{ACT}` is a real package, not a scalar consequence of `(EVPAD.1)`.

## Zero-budget Euler membership branch proof skeleton

Assume `(EVPAD.2)` and the compactness package:

```math
u_m^{eff}\to0,
\qquad
u_m\Delta u_m\to0\text{ in distributions},
\qquad
u_m\otimes u_m\to u\otimes u,
\qquad
p_m\to p,
```

with strong enough convergence to pass nonlinear and pressure terms, and assume the no-residue condition: every pressure/source defect measure vanishes on the selected ledger.

The weak Navier-Stokes identity is

```math
\int u_m\cdot\partial_t\varphi
+\int (u_m\otimes u_m):\nabla\varphi
+\int p_m\nabla\cdot\varphi
+\nu_m\int u_m\cdot\Delta\varphi=0.
```

Passing to the limit gives

```math
\int u\cdot\partial_t\varphi
+\int (u\otimes u):\nabla\varphi
+\int p\nabla\cdot\varphi=0.
```

Together with `\nabla\cdot u=0`, this gives the Euler momentum-pressure law.
The zero-budget branch can therefore land only in Euler-native membership
`Member_E`: flux-volume plus weak momentum-pressure fidelity. Strong convergence
of old `Pack/Part/Field` variables may supply optional carrier or regularity
data, but it is not the definition of Euler membership and must not be promoted
to a copied Navier-Stokes class object.

So the rigorous conditional implication is:

```math
\mathcal V_m^{eff}\to0
+\mathsf{StrongCompactness}
+\mathsf{NoResidue}
\Longrightarrow \mathrm{Member}_E.
```

## Zero-budget Zeno branch proof skeleton

Assume zero effective budget produces an ancient source-residue object

```math
(u_*,p_*,\mu_*^{src}),
\qquad
\mu_*^{src}(Q_1^-)\ge c_0>0.
```

If the class-production theorem gives

```math
(u_*,p_*,\mu_*^{src})\in B,
```

and the Liouville theorem gives

```math
B\Longrightarrow \mu_*^{src}=0,
```

then `\mu_*^{src}=0`, contradicting `\mu_*^{src}(Q_1^-)\ge c_0`. Hence the Zeno branch closes under

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Why this still leaves a real theorem burden

The decomposition proves the exact logical split. The live proof still needs one of the following branch closures.

### Subtarget 1: `BudgetToACTLedger.A`

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow
\mathsf{Ledger}_{ACT}.
```

Current status: open. A scalar budget lower bound alone supplies absorption margin, while the ACT packet also needs retained-window, scheduler, source, pressure/cutoff, and endpoint data.

### Subtarget 2: `ZeroBudgetNoResidueCompactness.A`

```math
\mathcal V_m^{eff}\to0
\Longrightarrow
\mathsf{StrongCompactness}+\mathsf{NoResidue}.
```

Current status: open. Weak convergence can leave Reynolds stress, pressure-source residue, or Zeno source measures.

### Subtarget 3: `ZenoClassProduction.A`

```math
\text{zero-budget Zeno residue object}
\Longrightarrow
(u_*,p_*,\mu_*^{src})\in B.
```

Current status: open for every currently audited rigid class.

### Subtarget 4: `ZenoResidueLiouville_B.A`

```math
B\Longrightarrow\mu_*^{src}=0.
```

Current status: conditional on a named rigid class `B` strong enough to support the Liouville proof.

## Final theorem-state

The rigorous expansion is complete:

```math
EffectiveViscousPacketAntiDegeneration.A
\equiv
\text{positive-budget receiver closure}
\vee
\text{zero-budget Euler-membership closure}
\vee
\text{zero-budget Zeno-rigidity closure}.
```

The unconditional closure is open. The shortest next exact target is:

```math
BudgetToACTLedger.A
\quad\text{or}\quad
ZeroBudgetNoResidueCompactness.A
\quad\text{or}\quad
ZenoClassProduction.A.
```

The strongest single target is `BudgetToACTLedger.A`, because it attacks the fixed-positive-viscosity side directly rather than routing through a zero-budget limit.
