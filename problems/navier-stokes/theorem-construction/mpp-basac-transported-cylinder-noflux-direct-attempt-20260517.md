# MPP TransportedCylinderNoFlux_{B_ASAC}.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt after `NoIncomingFlux_{B_ASAC}.A` stayed open.

Outcome: open from installed inputs. The transported-cylinder condition controls lateral/backward spatial inflow only when supplied as an external theorem, and it still requires an explicit terminal time-face anti-atom clause to close `B_ASAC` residue Liouville.

## Target

Prove:

```math
\boxed{TransportedCylinderNoFlux_{B_{ASAC}}.A}
```

One sufficient target form:

```math
\lim_{R\to\infty}\limsup_{s_0\to-\infty}
\int_{\partial_{par}\mathcal C_R^S(s_0,0)} J^{src}_{B_{ASAC}}\cdot n_{tr}\,d\sigma ds=0.
```

Here `\mathcal C_R^S` is adapted to the frozen-strain transport and `J^{src}_{B_ASAC}` denotes the source-residue flux current in the produced tangent class.

## Installed inputs

The relevant installed data are:

```text
B_ASAC equality-class production,
no earlier selected source slice,
zero ASAC-paid defect,
removed legal/projected/cutoff/boundary exits,
removed finite and non-Zeno donor exits,
local finite L1_s source mass,
terminal Zeno source support.
```

The older transported-cylinder audit records the spatial issue: mixed-sign frozen strain can import far-field energy through transported lateral faces, while first-pulse no-parent controls only selected source ancestry.

## Attempt 1: derive transported no-flux from first-pulse no-parent

First-pulse no-parent removes earlier selected same-fluid source tiles. Transported-cylinder no-flux is a quantitative boundary statement over full transported parabolic boundaries. A nonselected family or diffuse legal parent cloud can cross those boundaries without producing a bounded selected source tile.

Thus graph ancestry exclusion gives no transported boundary identity.

## Attempt 2: derive transported no-flux from B_ASAC exit removal

The `B_ASAC` clauses remove paid exits and ASAC-paid defect leakage. They retain the native positive source-residue measure as the live terminal record. These clauses give equality organization and no transported-boundary flux estimate.

Thus the produced class supplies no new lateral tightness beyond the older global no-incoming attempt.

## Attempt 3: compact terminal layer

Let

```math
F_m^{src,+}(s,x)=m\mathbf 1_{(-1/m,0]}(s)\rho(x),
\qquad \rho\in C_c(B_1),\quad \rho\ge0.
```

For every sufficiently large transported cylinder containing `supp(\rho)`, the lateral transported boundary contribution can vanish. The weak limit still has nonzero source mass on `B_1\times\{0\}`.

Therefore transported lateral no-flux, even when granted, does not remove the terminal time-face atom.

## Conditional theorem

The correct conditional result is:

```math
TransportedCylinderNoFlux_{B_ASAC}.A
+
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_ASAC}.A.
```

Proof: transported no-flux rules out incoming source mass through the lateral/backward transported boundary. `BASACTimeFaceAntiAtom.A` removes the compact terminal time-face atom. The no-earlier-selected-source-slice clause removes fixed earlier selected slabs. The finite local Radon measure then vanishes on every compact transported cylinder, and exhaustion gives `\mu_*^{src}=0`.

## Result

`TransportedCylinderNoFlux_{B_ASAC}.A` remains open as an analytic boundary theorem. In addition, its useful lateral form is insufficient without `BASACTimeFaceAntiAtom.A`.

## Verdict

The transported-cylinder route has no unconditional discharge from current `B_ASAC` production data.

The final requested equivalent route is a produced rigid subclass of `B_ASAC` with residue Liouville, ideally one whose defining structure gives terminal time-face anti-atom or temporal thickness intrinsically.
