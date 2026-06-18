# MPP ParabolicCycleCoercivity.A Direct Attempt

## Status

Direct theorem-grade attempt on the missing heat-action coercivity behind
`CycleHeatAction.A`.

Verdict:

```math
\boxed{
ParabolicCycleCoercivity.A
\text{ / }
TerminalParabolicSignedSaturation.A
\text{ is not proved from the installed inputs.}
}
```

The obstruction is sharper than the previous abstract-flow obstruction.  The
finite spacetime flow decomposition can be made, but the selected positive
terminal current can still be fed by an internal signed sink before the flow
crosses any heat edge.  Proving heat-action coercivity therefore requires a
new PDE statement tying the signed donor sink and the receiver source to the
same usable parabolic ledger, or else charging the separated partner by heat,
boundary flux, residual charge, or earlier-source arrival.

Equivalently:

```math
\boxed{
\text{the missing primitive is terminal parabolic signed saturation, not
ordinary graph-cycle bookkeeping.}
}
```

## Governing Inputs

The current route is:

```math
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
```

`LocalizedSkewCurrent.A` supplies the signed packet ledger:

```math
\partial_t E_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
\tag{1}
```

with

```math
\sum_P\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{2}
```

The intended `CycleHeatAction.A` estimate is:

```math
\sum_{P\in\mathcal T}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
Flux^+_{\partial\mathcal T}
+\theta\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}.
\tag{CHA}
```

The previously isolated missing lemma was:

```math
\boxed{
ParabolicCycleCoercivity.A
}
```

meaning that closed terminal spacetime source-current flow is bounded by the
actual viscous heat ledger:

```math
Flow_{closed}(\mathcal T)
\le
C\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}.
\tag{PCC}
```

The signed version is:

```math
\boxed{
TerminalParabolicSignedSaturation.A:
\text{a selected positive terminal same-fluid source-current edge cannot lose
its signed donor/heat partner outside the usable parabolic ledger without
paying an installed ledger.}
}
\tag{TPSS}
```

## Direct Proof Attempt

Work on a finite same-fluid packet/time truncation.  Discretize at the packet
heat scale and write vertices as

```math
v=(P,n).
```

Add three kinds of edges:

```math
\mathcal E_{space},
\qquad
\mathcal E_{time},
\qquad
\mathcal E_{bdry}.
```

Spatial edges carry the signed localized source current.  Time edges carry
stored packet energy.  Boundary edges carry admitted exterior, stopped, or
legal residual flux.

From `(1)`, on each time slab:

```math
\operatorname{div}_{\mathcal G}J(P)
=
\partial_tE_P+D_P-L_P.
\tag{3}
```

Taking positive parts gives the always-legal but weak inequality

```math
\int[\operatorname{div}_{\mathcal G}J(P)]_+dt
\le
\operatorname{Var}^+(E_P)
+\int D_P\,dt
+\int |L_P|\,dt.
\tag{4}
```

Thus `CycleHeatAction.A` would follow if one could prove

```math
\sum_{P\in\mathcal T}\operatorname{Var}^+(E_P)
\le
C_{\mathrm{cyc}}\left(
Flux^+_{\partial\mathcal T}
+\theta\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}
\right).
\tag{5}
```

This is the first exact wall.  The installed energy inequality controls net
energy and heat, not the positive temporal variation created by repeated
internal signed transfers.

Try instead to use skewness.  For a positive terminal receiver edge

```math
e:P^-\to P^+,
\qquad
J_e>0,
\tag{6}
```

the signed ledger gives the formal counter-contribution at the donor:

```math
\operatorname{div}_{\mathcal G}J(P^-)\le -J_e+\text{other edges}.
\tag{7}
```

If the donor contribution stayed inside the same selected terminal ledger, and
if the other edges were already heat/boundary/residual paid, then the positive
receiver source could be paired with a negative donor drain.  But `(7)` is only
a formal signed identity.  It does not prove that the negative partner remains
usable after:

```math
\text{one-sided source weights},
\quad
\text{lifted commutator reductions},
\quad
\text{terminal packet selection},
\quad
\text{positive-part extraction},
\quad
\text{same-fluid time-window pruning}.
```

The attempted proof therefore needs exactly:

```math
TerminalParabolicSignedSaturation.A.
```

Without it, skewness only says that the full unlocalized exchange is balanced.
It does not say that the selected positive terminal current is balanced inside
the selected parabolic ledger.

## No-Free-Sink Obstruction

The obstruction is already visible on the finite lifted graph.

Take two internal vertices `A,B` in the same time layer and a skew spatial
current:

```math
J(A\to B)=F>0,
\qquad
J(B\to A)=-F.
\tag{8}
```

Then:

```math
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
\tag{9}
```

There is no boundary input and no heat edge crossing.  Yet:

```math
\sum_{P\in\{A,B\}}[\operatorname{div}J(P)]_+=F.
\tag{10}
```

This is not a Navier-Stokes counterexample.  It is a counterexample to the
claim that antisymmetric current plus finite graph decomposition alone proves
`ParabolicCycleCoercivity.A`.

In PDE language, `A` is a donor packet and `B` is a receiver packet.  The
receiver obtains positive terminal source by inviscid transfer from the donor.
Unless the donor sink is retained in the same terminal signed ledger or charged
to an installed loss, the receiver source has not crossed any heat edge.  Heat
coercivity cannot be inferred from graph closure.

## Why Parabolic Dwell Does Not Close By Itself

One might try to repair `(8)` by requiring every terminal cycle to use temporal
storage.  That proves only a conditional statement about already-identified
closed spacetime cycles.

The positive divergence in `(9)` is not a closed cycle; it is a path from an
internal sink to an internal source.  To convert it into a closed cycle, one
must add a return path.  The return path is not supplied by the signed ledger.
It is a choice in the rectified flow decomposition.  A nonminimal
decomposition can insert artificial circulation, while a minimal decomposition
can leave the sink-to-source path open.  Neither choice proves that the actual
positive terminal source pays heat.

Therefore:

```math
ParabolicDwell.A
\not\Rightarrow
TerminalParabolicSignedSaturation.A.
```

Dwell controls internal cycle flow once cycle flow is already the correct
object.  The missing theorem is the prior assertion that selected terminal
positive source has no free internal sink outside the payable ledger.

## Why First-Current Pruning Does Not Close By Itself

First-current selection removes earlier positive source-current arrivals.  It
does not remove a same-window donor sink.

For the edge `(6)`, the donor packet may have stored energy before the selected
terminal arrival and may transfer it to `P^+` during the selected window.  This
does not create an earlier positive arrival at `P^+`.  It creates a negative
source at `P^-` and a positive source at `P^+` in the same current window.

Thus first-current pruning gives:

```math
\text{no earlier positive receiver arrival},
```

but the required saturation is:

```math
\text{no unpaid internal donor sink feeding the selected receiver source}.
```

These are different statements.  The second is exactly the parabolic signed
saturation wall.

## Why Existing Heat Bounds Do Not Close

First-moment dissipation gives only:

```math
\int\sum_{j>N}D_j(t)\,dt=o_N(1)
\tag{11}
```

on the high tail.  The source-wall route needs a scale-critical positive-source
price, equivalently a heat-scale square/action price.  Thin terminal pulses can
have small first heat moment while keeping order-size scale-critical source
reserve.  This is the scalar source-wall obstruction in signed-current
language.

The three-shell parabolic test gives the same obstruction.  A skew exchange
law can have:

```math
\dot E_i+H_i=S_i,
\qquad
\sum_iS_i=0,
\tag{12}
```

with large

```math
\sum_i[S_i]_+
```

relative to

```math
\sum_iH_i
```

unless the legal source-current edges themselves have heat-scale resistance.
Skewness preserves total exchange; it does not bound the exchange rate by
viscous heat.

The missing edge law is therefore:

```math
\boxed{
ParabolicEdgeResistance.A:
\text{legal same-fluid source-current edges have heat-scale resistance.}
}
\tag{PER}
```

One sufficient target form is:

```math
\int_I |J_e(t)|\,dt
\le
\varepsilon\int_I\mathcal R_e(t)\,dt
+C_\varepsilon Boundary_e^+
+Loss_e
+o_N(1),
\tag{13}
```

with

```math
c_R\,2^{-j_e}(D_P+D_{P'}+D_{halo(e)})
\le
\mathcal R_e
\le
C_R\,2^{-j_e}(D_P+D_{P'}+D_{halo(e)})
```

or the corresponding Thomson/action form:

```math
\int_I
\frac{|J_e(t)|^2}{D_P+D_{P'}+D_{halo(e)}}\,2^{-j_e}\,dt
\le
\int_I(D_P+D_{P'}+D_{halo(e)})\,dt
+Loss_e
+o_N(1).
\tag{14}
```

No installed theorem-facing surface proves `(13)` or `(14)` for the true
weighted lifted localized Navier-Stokes source current.

## Strongest Valid Reduction

The proof attempt does establish the following exact conditional reduction.

```math
\boxed{
LocalizedSkewCurrent.A
+
TerminalParabolicSignedSaturation.A
+
ParabolicEdgeResistance.A
\Longrightarrow
ParabolicCycleCoercivity.A
\Longrightarrow
CycleHeatAction.A.
}
\tag{15}
```

More explicitly, `TerminalParabolicSignedSaturation.A` may be stated as:

```math
\boxed{
\begin{gathered}
\text{For every selected positive terminal source-current arrival }e:P^-\to P^+,\\
\text{the donor/signed counter-part is either retained in the same saturated}\\
\text{same-fluid terminal parabolic ledger, or is charged to boundary flux,}\\
\text{legal localization/residual loss, viscous heat action, or an earlier}\\
\text{source-current arrival excluded by first-current selection.}
\end{gathered}
}
\tag{TPSS}
```

Under `TPSS`, every terminal positive source unit is either:

```math
\text{boundary-fed},
\quad
\text{legal-loss-fed},
\quad
\text{earlier-arrival-fed},
\quad
\text{or retained in an internal saturated signed component}.
```

The first three are already admitted ledgers.  The last component is now a true
internal parabolic component with no free sink.  Rectifying that component gives
closed spacetime circulation rather than an open sink-to-source path.

`ParabolicEdgeResistance.A` then prices each retained legal source-current edge
by the heat-scale resistance `(13)` or `(14)`.  Bounded overlap of the
same-fluid packet tree gives:

```math
\sum_{\text{retained cycles }C}
\sum_{e\in C}\int \mathcal R_e
\le
C_{\mathrm{ov}}
\left(
\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}
\right).
\tag{16}
```

Therefore:

```math
Flow_{closed}(\mathcal T)
\le
C_{\mathrm{flow}}
\left(
\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}
\right),
\tag{17}
```

which is `ParabolicCycleCoercivity.A`.  Inserting `(17)` into the already
proved abstract flow reduction gives `CycleHeatAction.A`.

Equivalently, the direct source-wall branch is now reduced to the single
combined native source-control primitive:

```math
\boxed{
\text{Retained legal same-fluid signed source-current cannot separate its
positive terminal receiver from its donor/heat partner without heat-scale
resistance.}
}
\tag{18}
```

## Exact Obstruction

The attempted direct proof fails at the following implication:

```math
\text{global antisymmetric localized source current}
\Longrightarrow
\text{selected terminal positive current has a retained payable signed partner}.
\tag{19}
```

Installed inputs prove the left side only before the route applies one-sided
weights, lifted commutator reductions, terminal localization, and positive-part
selection.  They do not prove that the negative exchange partner remains inside
the selected terminal same-fluid ledger or is otherwise paid.

Thus the exact surviving theorem burden is:

```math
\boxed{
TerminalParabolicSignedSaturation.A
\text{ plus the edge heat-resistance estimate }ParabolicEdgeResistance.A.
}
```

Without those, `ParabolicCycleCoercivity.A` would assert that all selected
positive terminal source is closed heat-paying cycle flow, but the current
ledger still permits the weaker structure:

```math
\text{unpaid internal donor sink}
\longrightarrow
\text{selected terminal positive receiver source}.
```

That structure is precisely the live source-wall atom in signed parabolic
current form.

## Final Verdict

`ParabolicCycleCoercivity.A` / `TerminalParabolicSignedSaturation.A` is not
proved here.  The strongest reduction is:

```math
\boxed{
TerminalParabolicSignedSaturation.A
+
ParabolicEdgeResistance.A
\Longrightarrow
ParabolicCycleCoercivity.A
\Longrightarrow
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
}
```

The remaining exact obstruction is not the finite graph decomposition and not
the algebraic skew-current ledger.  It is the missing theorem-grade assertion
that the selected positive terminal same-fluid source-current cannot be fed by
an unpaid internal donor sink and cannot carry retained edge current without
heat-scale resistance.
