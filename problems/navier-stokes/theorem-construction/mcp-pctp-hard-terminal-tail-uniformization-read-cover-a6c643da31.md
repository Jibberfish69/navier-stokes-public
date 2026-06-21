# PCTP.hard Terminal-Tail Uniformization Attempt

Status: failed-discharge theorem attempt. This is a local theorem-note/audit artifact.

## Target

`PCTP.hard` is the periodic terminal-tail theorem:

```math
OriginalSmoothData \Longrightarrow \text{uniform terminal-tail retained class-membership readout}.
```

Equivalently, the required endpoint formulation is endpoint-face impossibility for the first finite classical endpoint:

```math
Dead \vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached \vee tower\text{-}blown \vee Jump
```

is excluded as the terminal face of the maximal classical periodic solution.

The retained class-membership witness is

```math
CM_{N,r,Q}(u,p,\Phi)=Pack_Q(u,\Phi)\wedge Part_{N,Q}(u,p)\wedge Field_{N,r,Q}(u,p).
```

The continuation-grade readout is a uniform terminal-tail bound strong enough to imply

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,\qquad s>5/2.
```

## Step 1: formalization

The exact theorem is:

For smooth divergence-free zero-mean data on `T^3`, let `(u,p)` be the maximal classical zero-force solution on `[0,T_*)`. If `T_*<\infty`, every terminal same-fluid approach tail must admit uniform retained `Part/Field/tower` data strong enough for `CM.Readout` and `ECQ.A`. This yields a uniform `H^s`, `s>5/2`, readout; the periodic relaunch theorem then gives a common preterminal lifespan and uniqueness overlap, contradicting a finite endpoint.

This formalization matches the repo frontier and the periodic promotion note.

## Step 2: terminal-tail admission

The repo has `RetainedAdmission.Persistence`, which gives retained-window admission from the finite ledgers

```math
\Gamma_{pack,Q},\quad \mathfrak A_{M,Q},\quad \mathfrak P_{M,Q},\quad \mathfrak C_{M,r,Q}
\in L^\infty(I_*).
```

This proves persistence after finite terminal-tail data are supplied. It leaves the production of those finite ledgers from `OriginalSmoothData` as the analytic burden.

`RawData.Production` attempts the production step by saying that failure of a ledger enters an endpoint face, and then `End_NS` removes the endpoint faces. This consumes the endpoint contradiction engine while producing the analytic inputs required by that same engine. The dependency therefore loops:

```math
\text{finite terminal-tail ledgers}\Rightarrow End_{NS},
\qquad
End_{NS}\Rightarrow \text{finite terminal-tail ledgers}.
```

This blocks terminal-tail admission.

## Step 3: `Dead`

`Dead` is participation failure. The grammar row routes participation loss into the endpoint matrix. A PDE exclusion of first finite participation failure would require a propagation theorem for `Part_{N,Q}` on every terminal same-fluid tail from original dynamics. The current surfaces supply the grammar and the persistence theorem under finite ledgers. They do not supply the direct propagation theorem from original smooth data to the terminal endpoint.

## Step 4: `packing-detached`

`packing-detached` is escape of

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q(t)}\max\{|F(a,t)|,|F(a,t)^{-1}|\}.
```

On compact classical subintervals, the flow-map ODE and Gronwall control this gauge by

```math
\exp\left(\int \|\nabla u(t)\|_{L^\infty}\,dt\right).
```

A terminal-tail exclusion requires an integrable `\|\nabla u\|_{L^\infty}` bound or an equivalent pack-native substitute up to `T_*`. That estimate is essentially continuation-grade information. The current route lacks a noncircular derivation of this terminal integral from original smooth data.

## Step 5: `tower-blown`

`tower-blown` is escape of

```math
\mathfrak A_{N,Q}(t)=\sup_{x\in Q_t}\sum_{k=0}^N(|U_k(x,t)|+|K_k(x,t)|).
```

The repo has the local readout architecture: finite transported-center cover, `DTC.Read`, pressure Poisson readout, and viscous readout. These yield the tower bound after the fixed SCF-good cover and averaged endpoint package are available. The remaining global burden is to produce that fixed terminal cover and the required averaged endpoint inputs from the original PDE dynamics.

## Step 6: `Jump`

`Jump` is loss of positive one-field coherence scale. The repo has the downstream conversion

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Rightarrow Field.
```

`READ.COVER` is noncircular only after `End_{NS,avg}` is reached. Thus it serves as an averaged-to-pointwise bridge after the averaged endpoint package. It does not produce the averaged endpoint package or the terminal-tail inputs from original dynamics.

## Step 7: endpoint contradiction packaging

The grammar implication is valid as a conditional engine:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Rightarrow End_{NS}.
```

This packaging closes after the analytic terminal-tail inputs are supplied. It cannot supply those inputs itself without circular dependence.

## Step 8: periodic terminal bridge

`PCTP.cond` is valid:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\quad s>5/2
\Rightarrow T_*=\infty.
```

The missing step is exactly the uniform terminal-tail readout from `OriginalSmoothData` to that `H^s` continuation norm.

## Step 9: release consequence

The release posture remains conditional-class-membership packet. A terminal release requires one new noncircular theorem:

```math
OriginalSmoothData\Rightarrow\text{uniform terminal-tail retained Part/Field/tower data}
```

or a direct PDE theorem excluding `Dead`, `response-margin-collapse`,
`packing-detached`, `tower-blown`, and `Jump` as first finite classical endpoint
faces.

## Short verdict

The ordered attempt closes Step 1 as the definition of the endpoint-face
vocabulary and validates Steps 7-8 only as conditional packaging.  Steps 2-6
remain the same analytic barrier in endpoint-face coordinates: the old four
rows plus the repaired response-margin subface unless the Part
margin/closed-predicate input has already removed it.  The first decisive
obstruction is terminal-tail admission from original dynamics without spending
`End_NS` as an upstream supplier.
