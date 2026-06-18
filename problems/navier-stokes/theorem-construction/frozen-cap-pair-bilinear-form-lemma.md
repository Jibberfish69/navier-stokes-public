# Frozen Cap-Pair Bilinear-Form Theorem Candidate

## Status

Standalone local theorem packet extracted from the preferred operator branch of
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).

This note stays on the live local reserve route. It does **not** introduce any
global coercivity or rigidity claim. Its only purpose is to isolate the exact
same-depth capwise bilinear form and the packet-freezing remainder that feeds
`(WERS.2b)` / `(WERS.2s)`.

It assumes the projector / metric defect side has already been discharged by
`(WEP.2')`, so `b_G^{rem}` is no longer a live same-depth burden. This packet
only isolates the frozen capwise main term plus `\mathcal R_j^{freeze}` on the
way to `(WERS.2b)` / `(WERS.2s)`.

## Carrier

Work on one resonant dyadic shell
`c_02^j\le|\xi|,|\eta|,|\xi+\eta|\le C_02^j` under the metric hypotheses
`(WERS.0)`-`(WERS.0b)` from
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).

Let `\{\psi_{j,\omega}\}` be a shell-cap partition at angular width `\rho_j`,
let `\mathcal R_j` be the active cap-pair graph

```math
\mathcal R_j
:=
\{(\omega,\omega'):\angle(\omega,\omega')\le C_\rho \rho_j\},
\tag{FCP.0}
```

and define cap packets

```math
f_{j,\omega}:=\Delta_{j,\omega}f,
\qquad
g_{j,\omega'}:=\Delta_{j,\omega'}g.
\tag{FCP.0a}
```

Assume the same smooth finite-overlap cap partition and `WERS.3N8a`-style
derivative control used on the parent `WERS.3Cap` branch, so every cap packet is
microlocalized at angular scale `\rho_j` on the shell carrier.

The active cap graph is required to have bounded valence:

```math
\sup_\omega \#\{\omega':(\omega,\omega')\in\mathcal R_j\}
+
\sup_{\omega'} \#\{\omega:(\omega,\omega')\in\mathcal R_j\}
\le N_{\mathrm{cap}}.
\tag{FCP.0b}
```

## Frozen Main Form

Let `b_{G,j}^{main}(a,\xi,\eta)` be the same-depth main symbol from
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).
This is exactly the main symbol appearing in the frozen capwise operator branch
`(WERS.3Cap-0)` / `(WERS.3Cap-TT)`.

For each active pair `(\omega,\omega')\in\mathcal R_j`, choose a frozen packet
base point `a_{j,\omega,\omega'}` on the packet scale and define the frozen
principal symbol

```math
b^{frozen}_{G,j,\omega,\omega'}(\xi,\eta)
:=
\chi_j(\xi)\chi_j(\eta)\chi_j(\xi+\eta)\,
\psi_{j,\omega}(\xi)\psi_{j,\omega'}(\eta)\,
b_{G,j}^{main}(a_{j,\omega,\omega'},\xi,\eta).
\tag{FCP.1}
```

The associated scalar bilinear form is

```math
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
:=
\iint
b^{frozen}_{G,j,\omega,\omega'}(\xi,\eta)\,
\widehat{f_{j,\omega}}(\xi)\,
\widehat{g_{j,\omega'}}(\eta)\,
d\xi d\eta.
\tag{FCP.2}
```

## Freezing Split

The same-depth main contribution splits as

```math
\mathcal B_{G,main}^{res,j}(f_j,g_j)
=
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
+
\mathcal R_j^{freeze}(f_j,g_j),
\tag{FCP.3}
```

where the packet-freezing remainder is itself the cap-pair sum

```math
\mathcal R_j^{freeze}(f_j,g_j)
:=
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{rem}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'}).
\tag{FCP.3r}
```

Here `\Lambda^{rem}_{j,\omega,\omega'}` contains the coefficient-variation term
produced by replacing the variable packet-scale coefficient by its frozen value
on the active pair `(\omega,\omega')`. This is the same packet-freezing
remainder that must be absorbed on the lower-order ledger together with
`b_G^{rem}` after `(WEP.2')` has removed the projector defect as a live
same-depth obstruction.

Write the packet-scale coefficient oscillation as

```math
\delta_j^{freeze}
:=
\sup_{(\omega,\omega')\in\mathcal R_j}
\sup_{(\xi,\eta)\in\operatorname{supp}(\psi_{j,\omega}\psi_{j,\omega'})}
\frac{|b_{G,j}^{main}(a,\xi,\eta)-b_{G,j}^{main}(a_{j,\omega,\omega'},\xi,\eta)|}{2^j}.
\tag{FCP.3a}
```

Then the theorem target is

```math
\boxed{
\sum_{(\omega,\omega')\in\mathcal R_j}
\big|
\Lambda^{rem}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\big|
\le
C_G\,\delta_j^{freeze}\,2^j
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}.
}
\tag{FCP.3b}
```

In particular, `|\mathcal R_j^{freeze}(f_j,g_j)|` obeys the same bound. This is
the exact place where packet freezing interfaces with the already budgeted
coefficient/error ledger.

For the live closure route, the preferred strengthened discharge target is the
same shell demotion already carried by the projector-defect side:

```math
\boxed{
|\mathcal R_j^{freeze}(f_j,g_j)|
\le C_{\mathrm{frz}}
C_G\,2^{-j}\,
\|f_j\|_{\mathsf{SameDepth}_j}\,
\|g_j\|_{\mathsf{SameDepth}_j}.
}
\tag{FCP.3c}
```

This is stronger than `(FCP.3b)` and is **not** automatic from packet freezing
alone. It requires the packet-scale coefficient oscillation `\delta_j^{freeze}`
to be subordinate to the same lower-order ledger as `b_G^{rem}`. But `(FCP.3c)`
is the exact local target that would make the freezing remainder behave like an
ordinary projector/metric defect rather than a new same-depth burden.

The first honest reduction of `(FCP.3c)` is a mean-value bound on the frozen
coefficient variation. Let `P_{j,\omega,\omega'}` denote the packet patch in the
`a`-variable where the active cap pair `(\omega,\omega')` is frozen, and set

```math
M_j^{coeff}
:=
\sup_{(\omega,\omega')\in\mathcal R_j}
\sup_{a\in P_{j,\omega,\omega'}}
\sup_{(\xi,\eta)\in\operatorname{supp}(\psi_{j,\omega}\psi_{j,\omega'})}
2^{-j}\big|\nabla_a b_{G,j}^{main}(a,\xi,\eta)\big|.
\tag{FCP.3d}
```

Then the mean-value theorem gives the explicit bridge

```math
\delta_j^{freeze}
\le
M_j^{coeff}
\sup_{(\omega,\omega')\in\mathcal R_j}
\sup_{a\in P_{j,\omega,\omega'}}
|a-a_{j,\omega,\omega'}|.
\tag{FCP.3e}
```

So the remaining local task inside `(FCP.3c)` is now sharp: show that the
packet-scale coefficient oscillation in `(FCP.3e)` is already carried by the
same lower-order ledger as the frozen Stokes-style coefficient oscillation
quantities on the lane.

A theorem-grade way to freeze this step without overcommitting to one packet
geometry is to introduce the abstract cell scale

```math
r_j^{cell}
:=
\sup_{(\omega,\omega')\in\mathcal R_j}
\operatorname{diam}(P_{j,\omega,\omega'}).
\tag{FCP.3f}
```

Then `(FCP.3e)` gives the local criterion

```math
\boxed{
\delta_j^{freeze}
\le
M_j^{coeff}\,r_j^{cell}.
}
\tag{FCP.3g}
```

So the exact coefficient-control target is now:

```math
M_j^{coeff}\,r_j^{cell}\le \varepsilon_j
\qquad\text{with }\{\varepsilon_j\}\text{ absorbable on the same ledger.}
\tag{FCP.3h}
```

This algebraic reduction is already closed:

```math
\boxed{\text{(FCP-cell)}}
```

If `(FCP.3g)` and `(FCP.3h)` hold, then

```math
\delta_j^{freeze}\le \varepsilon_j.
\tag{FCP-cell}
```

Indeed, `(FCP.3g)` gives `\delta_j^{freeze}\le M_j^{coeff}r_j^{cell}`, and
`(FCP.3h)` bounds the right-hand side by `\varepsilon_j`.
So the only live burden is no longer the implication `(FCP-cell)` itself, but
verifying the smallness hypothesis `M_j^{coeff}r_j^{cell}\le \varepsilon_j` on
the chosen carrier.

If the chosen cap carrier is later shown to satisfy
`r_j^{cell}\le C_{cell}2^{-j}\rho_j`, then `(FCP.3g)` specializes to the sharper
shell-scale estimate

```math
\delta_j^{freeze}\le C_{cell}M_j^{coeff}\,2^{-j}\rho_j.
\tag{FCP.3i}
```

That is the correct place to insert any later anchoring / averaging choice for
the frozen coefficient. The live packet should not hardwire the exact cell
diameter before the carrier geometry is fully fixed.

A theorem-grade sufficient corollary is the anchored / averaged Hölder freezing
lemma. Choose the frozen coefficient on each active cap pair by either

```math
a_{j,\omega,\omega'}:=a(x_{j,\omega,\omega'})
\qquad\text{or}\qquad
a_{j,\omega,\omega'}:=\fint_{P_{j,\omega,\omega'}} a.
\tag{FCP.3j}
```

If `a\in C^\alpha_{\mathrm{loc}}` on the packet patches, then

```math
\sup_{a\in P_{j,\omega,\omega'}}
|a-a_{j,\omega,\omega'}|
\le C_\alpha
\operatorname{diam}(P_{j,\omega,\omega'})^\alpha
[a]_{C^\alpha(P_{j,\omega,\omega'})}.
\tag{FCP.3k}
```

and therefore

```math
\delta_j^{freeze}
\le C_\alpha
M_j^{coeff}\,(r_j^{cell})^\alpha
\sup_{(\omega,\omega')\in\mathcal R_j}
[a]_{C^\alpha(P_{j,\omega,\omega'})}.
\tag{FCP.3l}
```

In particular, if the chosen carrier later satisfies
`r_j^{cell}\le C_{cell}2^{-j}\rho_j`, then

```math
\delta_j^{freeze}
\le C_{\alpha,cell}
M_j^{coeff}\,(2^{-j}\rho_j)^\alpha
\sup_{(\omega,\omega')\in\mathcal R_j}
[a]_{C^\alpha(P_{j,\omega,\omega'})}.
\tag{FCP.3m}
```

So a sufficient local discharge of `(FCP.3c)` is the absorbable smallness
condition

```math
M_j^{coeff}\,(r_j^{cell})^\alpha
\sup_{(\omega,\omega')\in\mathcal R_j}
[a]_{C^\alpha(P_{j,\omega,\omega'})}
\le
\varepsilon_j,
\qquad
\{\varepsilon_j\}\text{ absorbable on the same ledger.}
\tag{FCP.3n}
```

This is the theorem-grade Hölder specialization of `(FCP-cell)`: once the
packet patches carry an absorbable Hölder oscillation bound, the freezing
remainder is discharged on the same ledger.

It is useful to collapse these parallel sufficient routes into one scalar local
defect envelope. Define

```math
\varepsilon_j^{freeze}
:=
\inf\Big\{
\varepsilon>0:
\text{ either }M_j^{coeff}r_j^{cell}\le \varepsilon
\text{ or }
M_j^{coeff}(r_j^{cell})^\alpha
\sup_{(\omega,\omega')\in\mathcal R_j}
[a]_{C^\alpha(P_{j,\omega,\omega'})}
\le \varepsilon
\Big\}.
\tag{FCP.3u}
```

Then `(FCP-cell)` and `(FCP.3n)` give

```math
\delta_j^{freeze}\le \varepsilon_j^{freeze}.
\tag{FCP.3v}
```

So the local freezing packet is now reduced to one scalar carrier-verification
burden: force `\varepsilon_j^{freeze}` onto the lower-order ledger. In
particular, the dyadic same-depth demotion `(FCP-shell)` follows as soon as

```math
\varepsilon_j^{freeze}\le c\,2^{-2j}.
\tag{FCP.3w}
```

Indeed, `(FCP.3w)` implies either `(FCP.3h)` or `(FCP.3n)` with
`\varepsilon_j\le c\,2^{-2j}`, and the corresponding route then closes
`(FCP-shell)`.

### Automatic Capwise Square-Function Control

The capwise square-function step uses the explicit multiplier overlap
hypothesis, not an unrecorded "standard" import. For the shell-cap multipliers
`\Delta_{j,\omega}` assume the smooth partition satisfies, on the active shell,

```math
\sum_\omega |\psi_{j,\omega}(\xi)|^2\le C_{\mathrm{fo}}
\qquad\text{for all }\xi
\text{ in the }j\text{-shell.}
\tag{FCP-sq0}
```

Equivalently, the active cap cover has uniformly bounded overlap after the
fixed smooth bump enlargement used to define the Fourier multipliers. For every
shell-supported field `h_j`, Plancherel gives

```math
\sum_\omega \|\Delta_{j,\omega}h_j\|_{L^2_a}^2
=
\int
\sum_\omega |\psi_{j,\omega}(\xi)|^2|\widehat h_j(\xi)|^2\,d\xi
\le
C_{\mathrm{fo}}
\|h_j\|_{L^2_a}^2.
\tag{FCP-sq}
```

Thus the exact capwise square-function bound is

```math
\sum_\omega \|h_{j,\omega}\|_{L^2_a}^2
\le C_{\mathrm{fo}}
\|h_j\|_{L^2_a}^2
\qquad\text{for every shell field }h_j.
\tag{FCP-sq'}
```

So the only additional ledger comparison needed for `(FCP.3o)` is the
same-depth-to-shell dominance on the chosen carrier:

```math
\|h_j\|_{L^2_a}
\le C_{\mathrm{sd}}
\|h_j\|_{\mathsf{SameDepth}_j}.
\tag{FCP-sq''}
```

Under `(FCP-sq')` and `(FCP-sq'')`, the square-function hypothesis `(FCP.3o)`
is automatic.

There is also a sharper dyadic sufficient route from `(FCP.3b)` to the stronger
same-depth target `(FCP.3c)`. Once `(FCP.3o)` is automatic, only the dyadic
smallness remains:

```math
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\le
\|f_j\|_{\mathsf{SameDepth}_j},
\qquad
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}
\le
\|g_j\|_{\mathsf{SameDepth}_j}.
\tag{FCP.3o}
```

Then `(FCP.3b)` and `(FCP-cell)` give

```math
|\mathcal R_j^{freeze}(f_j,g_j)|
\le
C_G\,2^j\,\varepsilon_j\,
\|f_j\|_{\mathsf{SameDepth}_j}\,
\|g_j\|_{\mathsf{SameDepth}_j}.
\tag{FCP.3p}
```

So a sufficient quantitative discharge of `(FCP.3c)` is

```math
2^j\varepsilon_j\le c\,2^{-j},
\qquad\text{equivalently}\qquad
\varepsilon_j\le c\,2^{-2j}.
\tag{FCP.3q}
```

This dyadic implication is now closed:

```math
\boxed{\text{(FCP-shell)}}
```

If `(FCP.3o)` and `(FCP.3q)` hold, then the strengthened freezing remainder
theorem follows:

```math
|\mathcal R_j^{freeze}(f_j,g_j)|
\le C_{\mathrm{frz}}
C_G\,2^{-j}\,
\|f_j\|_{\mathsf{SameDepth}_j}\,
\|g_j\|_{\mathsf{SameDepth}_j}.
\tag{FCP-shell}
```

Indeed, `(FCP.3p)` gives the bound
`|\mathcal R_j^{freeze}|\le C_G 2^j\varepsilon_j\|f_j\|_{\mathsf{SameDepth}_j}\|g_j\|_{\mathsf{SameDepth}_j}`,
and `(FCP.3q)` demotes the prefactor to `2^j\varepsilon_j\le c2^{-j}`.

Combining this with `(FCP.3h)` yields the cell-scale sufficient condition

```math
M_j^{coeff}r_j^{cell}\le c\,2^{-2j},
\tag{FCP.3r'}
```

and combining it with `(FCP.3n)` yields the Hölder sufficient condition

```math
M_j^{coeff}(r_j^{cell})^\alpha
\sup_{(\omega,\omega')\in\mathcal R_j}
[a]_{C^\alpha(P_{j,\omega,\omega'})}
\le
c\,2^{-2j}.
\tag{FCP.3s}
```

These are still stronger than the abstract absorbability criterion, but they
have the virtue of being explicit: once the packet-scale oscillation is
subordinate to the shell demotion `2^{-2j}`, the freezing remainder lands on the
same `2^{-j}` ledger as the projector defects.
The clean bundled geometric verification target for this local scalar gate is
now recorded separately in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md),
where the selector stopping law `(TPS.2a)` is designed to force
`\varepsilon_j^{freeze}\le c\,2^{-2j}` on one common geometry.

### Pairwise Corollary From The Operator Route

The pairwise frozen cap bound `(FCP.4)` is the single-pair specialization of the
capwise operator theorem `(WERS.3Cap-TT)` on the same frozen carrier. Indeed,
if `(WERS.3Cap-TT)` holds and one chooses test packets supported on one active
pair `(\omega,\omega')`, then the cap-pair sum collapses to the single
`(\omega,\omega')` term and yields

```math
\big|
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\big|
\le
C_G\,2^j\,\Theta_j(\omega,\omega')\,
\|f_{j,\omega}\|_{L^2_a}\,
\|g_{j,\omega'}\|_{L^2_a},
```

with `0\le\Theta_j\le\rho_j` on the active graph, i.e. exactly `(FCP.4)`. So the
only genuinely new local theorem content is the operator route itself; the
pairwise cap bound is its corollary once the carrier-level operator estimate is
proved.

## Capwise Operator Theorem

Assume the frozen projected principal symbol carries the projected null factor on
active cap pairs, and that `\rho_j` is the same cap-width / gain parameter used
on the parent `WERS.3Cap` branch, so there is a cap-graph weight `\Theta_j`
with

```math
0\le \Theta_j(\omega,\omega')\le \rho_j,
\qquad
\operatorname{supp}\Theta_j\subseteq \mathcal R_j,
\tag{FCP.4a}
```

and

```math
\big|
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\big|
\le
C_G\,2^j\,\Theta_j(\omega,\omega')\,
\|f_{j,\omega}\|_{L^2_a}\,
\|g_{j,\omega'}\|_{L^2_a}.
\tag{FCP.4}
```

The local operator theorem is then:

```math
\boxed{
\sum_{(\omega,\omega')\in\mathcal R_j}
\big|
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\big|
\le
C_G\,N_{\mathrm{cap}}\,\rho_j\,2^j
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}.
}
\tag{FCP.5}
```

This finite-valence graph reduction is already closed:

```math
\boxed{\text{(FCP-graph)}}
```

Let `x_\omega:=\|f_{j,\omega}\|_{L^2_a}` and
`y_{\omega'}:=\|g_{j,\omega'}\|_{L^2_a}`. Then `(FCP.4)` gives

```math
\sum_{(\omega,\omega')\in\mathcal R_j}
\big|
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\big|
\le
C_G\,2^j
\sum_{(\omega,\omega')\in\mathcal R_j}
\Theta_j(\omega,\omega')\,x_\omega y_{\omega'}.
\tag{FCP.5a}
```

Using `0\le \Theta_j\le \rho_j` from `(FCP.4a)`, Cauchy on each cap
neighborhood, and the bounded valence `(FCP.0b)`, one obtains

```math
\sum_{(\omega,\omega')\in\mathcal R_j}
\Theta_j(\omega,\omega')\,x_\omega y_{\omega'}
\le
N_{\mathrm{cap}}\,\rho_j
\Big(\sum_\omega x_\omega^2\Big)^{1/2}
\Big(\sum_{\omega'} y_{\omega'}^2\Big)^{1/2}.
\tag{FCP.5b}
```

Substituting `(FCP.5b)` into `(FCP.5a)` yields exactly `(FCP.5)`. So the local
operator burden is no longer the graph sum `(FCP.5)` itself, but the pairwise
frozen cap estimate `(FCP.4)` on the chosen carrier.

## Consequence For The Live Route

Combining `(FCP.3)`-`(FCP.5)` gives

```math
\boxed{
|\mathcal B_{G,main}^{res,j}(f_j,g_j)|
\le
C_G\,(N_{\mathrm{cap}}\rho_j+\delta_j^{freeze})\,2^j
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}.
}
\tag{FCP.6}
```

If `\delta_j^{freeze}` is absorbable on the coefficient ledger, then `WEP.2'`
plus the pairwise frozen cap bound `(FCP.4)` and absorbable packet freezing
turns `(FCP.6)` into the main resonant shell estimate `(WERS.2b)`, because the
graph summation step `(FCP-graph)` is already discharged. Summing in `j` then
yields `(WERS.2s)`.

So this note isolates the live local burden exactly:

1. prove the pairwise frozen cap bound `(FCP.4)` on the chosen carrier,
2. prove the packet-freezing remainder estimate `(FCP.3b)`, ideally in the
   strengthened form `(FCP.3c)`,
3. feed the result back into the reserve shell theorem, with the finite-valence
   graph summation `(FCP-graph)` already automatic and the capwise
   square-function step `(FCP.3o)` reduced to `(FCP-sq')`.
