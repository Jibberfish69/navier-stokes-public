# PSJ Plus D.7mb Residual-Budget Route

## Status

Theorem-facing sufficient-descendant note for the exact-potential simple-top
branch.

Role: record one residual-collapse descendant that can discharge the
selector-strain slot after the projector-first packet has already fixed the
branch readout.

## Purpose

Keep the projector-first branch read fixed and isolate one sufficient
measurable-derivative descendant for the remaining selector-strain slot:

```math
\boxed{
D.7mq
+
\text{one }D.7mb\text{ residual-collapse descendant}
\Longrightarrow
\text{selector-strain compatibility}
\Longrightarrow
D.7mr2.
}
```

rather than treating `BootSquare` or the `D.7mb` collapse as a new branch
primitive.

## Route Position

The branch-facing packet already reads

```math
\text{PTC-Lin}+\text{PTC-Shape}\Longrightarrow D.7mq,
\tag{PBR.1}
```

```math
D.7mp + D.7mo + D.7mm
\Longrightarrow
\text{selector-strain compatibility},
\tag{PBR.2}
```

```math
D.7mq + \text{selector-strain compatibility}
\Longrightarrow
D.7mr2,
\tag{PBR.3}
```

```math
D.7mr2\Longrightarrow RPC.3,
\tag{PBR.4}
```

followed by the already packaged downstream handoff

```math
RPC.3
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{PBR.5}
```

So `D.7mr2` is an organized branch export, not the final live obstruction. The
actual theorem effort belongs upstream, at `PSJ+`.

The upstream class-membership splice into this branch is now isolated in
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md).
That note does not claim `\mathcal E_J^{cm}` closes `PSJ+` by itself; it states
the honest interface by which the MPP witness exports packing/transport
ledgers into the exact-potential readout already installed here.

## Exact Theorem Choice

The exact-potential branch remains projector-first:

```math
D.7mq + \text{selector-strain compatibility}\Longrightarrow D.7mr2.
```

Two descendant realizations of the selector-strain slot are currently written
on disk:

1. the localized projector-moment route through `(PSJ+.6)`;
2. the measurable-derivative Cauchy--Green route through the explicit
   `D.7mb` residual budgets.

This note records the second descendant only. It does not promote that
residual-collapse packaging above the projector-first branch primitive.

## The `D.7mb` Residual Budgets

Proposition `D.7mb` reduces selector-strain compatibility to three explicit
budgets:

```math
|m_J(t_0)|,
\tag{PBR.6a}
```

```math
\int_I
\bigl|Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J\bigr|,
\tag{PBR.6b}
```

```math
\int_I
|\mathcal C_J^N|\,|\partial_t S_J^N|/g_J^{str}.
\tag{PBR.6c}
```

The later packets `D.7md`, `D.7me`, `D.7mp`, `D.7mo`, and `D.7mm` already refine
these into the current selector-strain sufficiency route.

## Installed Branch-Local Theorem Surface

The branch-local selector-strain theorem is no longer implicit. It is already
written on disk in
[restricted-cg-reference-gap-persistence.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/restricted-cg-reference-gap-persistence.md),
[reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md),
and
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md).

Define the combined strip residual packet

```math
\eta_J^{mb}(t,a,b)
:=
|m_J(t_0,a,b)|
+
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds
+
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds.
\tag{PBR.6d}
```

If the reference Cauchy--Green persistence budget satisfies

```math
E_{J,t_0}^{CG}(t,a)\le \frac{g_0}{4}
\qquad\text{for every }t\in I_0,
\tag{PBR.6e}
```

then the gap floor and projector persistence estimates from `CGR.A` hold, and
the same theorem gives

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
\frac{8\,\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{PBR.6f}
```

So the measurable-derivative selector-strain compatibility theorem on the
exact-potential branch is already explicit:

```math
E_{J,t_0}^{CG}\le g_0/4
\quad\text{and}\quad
\eta_J^{mb}\ \text{controlled}
\Longrightarrow
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le C_{\mathrm{PBR6g}}
\eta_J^{mb}(t,a,b)^2/g_0^2.
\tag{PBR.6g}
```

This is exactly the branch-local theorem `SSC-EP.A` / `RPTS.0d`, with
`D.7mp + D.7mo + D.7mm` serving as the shortest installed sufficient packet on
disk for producing the hypotheses.

## Preferred Next Closure Cut

The measurable-derivative route is therefore read in the theorem-facing form

```math
\text{pair-to-cocycle synchronization}
+
\text{reference-direction transport}
+
\text{reference-gap persistence}
+
\text{bootstrap / commutator / source smallness}
\Longrightarrow
\text{selector-strain compatibility}.
\tag{PBR.7}
```

Concretely, this is:

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
D.7mq,
\tag{PBR.8}
```

```math
D.7mp + D.7mo + D.7mm
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le C_{\mathrm{PBR9}}
\mathrm{Err}_{J,\mathrm{ssc}},
\tag{PBR.9}
```

and then `(PBR.8)` plus `(PBR.9)` feed `D.7mr2`.

So the next exact work item is not to invent a new selector-strain theorem from
scratch. The theorem form is already explicit. The remaining burden is to force
the two supplier packets in `(PBR.6g)` on a quantitatively large selector-good
family and then combine them with `D.7mq`.

Equivalently, the next theorem note to close is:

```math
\boxed{
\text{justify the CG persistence packet }E_{J,t_0}^{CG}
\text{ and the combined residual packet }\eta_J^{mb}
\text{ strongly enough to fire }SSC\text{-}EP.A,
}
\tag{PBR.10}
```

or, in the sufficiency form already normalized on disk,

```math
\boxed{
\text{justify the }D.7mb\text{-side residual budgets strongly enough to fire }
D.7mp + D.7mo + D.7mm,
}
\tag{PBR.10a}
```

## Exact Gronwall Split

The proof of `(PBR.6g)` already has the correct three-piece structure on disk.
The point is not to invent a new evolution law, but to read Proposition `D.7mb`
and its refinements in theorem-facing form.

Set

```math
E_J(t,a,b)
:=
|m_J(t,a,b)|
\quad\text{with}\quad
m_J(t,a,b)=Q_J^{top}(t)\,\mathcal C_J^N(t,a)\,n_J(a,b,t).
\tag{PBR.10b}
```

Then `D.7mb7`-`D.7mb8` give the exact residual evolution inequality

```math
E_J(t,a,b)
\le
E_J(t_0,a,b)
+
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
+
\eta_{J,\mathrm{var}}^{mb}(t,a,b),
\tag{PBR.10c}
```

where `\eta_{J,\mathrm{off}}^{mb}` and `\eta_{J,\mathrm{var}}^{mb}` are the
strip integrals in `(PBR.6d)`. The three theorem-facing lemmas are therefore:

1. entrance residual:

```math
E_J(t_0,a,b)=|m_J(t_0,a,b)|
\tag{PBR.10d}
```

is the initial projector mismatch ledger;

2. off-axis source forcing:

```math
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
:=
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds
\tag{PBR.10e}
```

is the transported source term coming from `\partial_t\mathcal C_J^N`;

3. gap-weighted variation / curvature forcing:

```math
\eta_{J,\mathrm{var}}^{mb}(t,a,b)
:=
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds
\tag{PBR.10f}
```

is the motion-of-top-projector term coming from `\partial_t n_J` and
`|\partial_t P_{J,\top}^{seg}|\le C_{\mathrm{top}}|\partial_t S_J^N|/g_J^{str}`.

Once these three ledgers are controlled, `D.7mb9` converts the residual into
projector comparison:

```math
\bigl\|P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)\bigr\|_F^2
\le
\frac{2\,E_J(t,a,b)^2}{\operatorname{gap}_J^{CG}(t,a)^2}.
\tag{PBR.10g}
```

Under the reference-gap floor from `D.7mo`, this is exactly the selector-strain
comparison `(PBR.6g)` / `SSC-EP.A`.

## Weighted Supplier Extraction

The plain pair-measure extraction theorem is correct as a pointwise family
selection device, but the authoritative exact branch closes through the weighted
ledger `\int_{\mathcal G_J} M_J^2(\cdot)\,d\mu_J`. So the supplier theorem
needed by `D.7mr2` is the weighted version.

Let

```math
d\nu_J(a,b):=M_J(a,b)^2\,d\mu_J^{pair}(a,b),
\qquad
\nu_J(G):=\int_G M_J(a,b)^2\,d\mu_J^{pair}(a,b).
\tag{PBR.10h}
```

For the strip sup-packets

```math
E_J^\sharp(a,b):=\sup_{t\in I_0}E_{J,t_0}^{CG}(t,a),
\qquad
\eta_J^\sharp(a,b):=\sup_{t\in I_0}\eta_J^{mb}(t,a,b),
\tag{PBR.10i}
```

assume the weighted normalized budgets

```math
\int_G
\frac{E_J^\sharp(a,b)^2}{g_0(a)^2}\,d\nu_J(a,b)
\le
\delta_E\,\nu_J(G),
\tag{PBR.10j}
```

and

```math
\int_G
\frac{\eta_J^\sharp(a,b)^2}{g_0(a)^2}\,d\nu_J(a,b)
\le
\delta_\eta\,\nu_J(G).
\tag{PBR.10k}
```

Define the extracted good subfamily

```math
G^\star
:=
\Bigl\{
(a,b)\in G:
E_J^\sharp(a,b)\le g_0(a)/4,\
\eta_J^\sharp(a,b)\le c_\star g_0(a)
\Bigr\}.
\tag{PBR.10l}
```

Weighted Chebyshev gives

```math
\nu_J(G\setminus G^\star)
\le
\left(16\delta_E+\frac{\delta_\eta}{c_\star^2}\right)\nu_J(G).
\tag{PBR.10m}
```

On `G^\star`, the branch-local selector-strain theorem `(PBR.6g)` gives

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
8c_\star^2
\qquad\text{for every }t\in I_0.
\tag{PBR.10n}
```

Since rank-one projector differences satisfy
`\|P-Q\|_F^2\le 2`, the bad set contributes at most its weighted mass. Hence

```math
\int_G
M_J(a,b)^2
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2\,d\mu_J^{pair}(a,b)
\le
\Bigl(
8c_\star^2
+
2\Bigl(16\delta_E+\frac{\delta_\eta}{c_\star^2}\Bigr)
\Bigr)\nu_J(G).
\tag{PBR.10o}
```

Therefore, if `c_\star,\delta_E,\delta_\eta\to 0` along the supplier packet, the
weighted selector-strain remainder is `o_J(1)` on `G`. This is the exact
weighted familywise form needed by the branch export `D.7mr2`.

No additional projector-comparison tolerance from `D.7mq` is needed at this
stage: once `D.7mq` supplies the pair-to-reference projector ledger and
`SSC-EP.A` supplies the reference-to-top-strain projector ledger, the branch
export `D.7mr2` follows by the fixed projector-space triangle inequality already
recorded in
[exact-potential-angular-ledger-discharge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-discharge.md).

## Common Supplier Reduction

The weighted supplier theorem above still packages the strip through the abstract
sup-ledgers `E_J^\sharp` and `\eta_J^\sharp`. On the measurable-derivative
exact branch one can reduce those two abstract quantities to three concrete
weighted suppliers.

Define the common strip integral

```math
A_J(a)
:=
2\int_{I_0}
|W_J^N(s,a)|_{\mathrm{op}}^2\,|S_J^N(s,a)|\,ds.
\tag{PBR.10p1}
```

Since the persistence functional in `CGR.A` is exactly this integral, one has
for every `t\in I_0`

```math
E_{J,t_0}^{CG}(t,a)
\le
A_J(a).
\tag{PBR.10p2}
```

Likewise the off-axis source term in `D.7mb` satisfies

```math
\bigl|
Q_J^{top}(s,a)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\bigr|
\le
|W_J^N(s,a)|_{\mathrm{op}}^2\,|S_J^N(s,a)|,
\tag{PBR.10p3}
```

so the off-axis strip packet obeys

```math
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
\le
A_J(a).
\tag{PBR.10p4}
```

For the variation term define the full-strip quantity

```math
\eta_{J,\mathrm{var}}^{mb}(a,b)
:=
3\int_{I_0}
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds.
\tag{PBR.10p5}
```

Because the integrand is nonnegative, the strip supremum version of the
variation packet is exactly `\eta_{J,\mathrm{var}}^{mb}(a,b)`. Therefore

```math
E_J^\sharp(a,b)\le A_J(a),
\qquad
\eta_J^\sharp(a,b)
\le
|m_J(t_0,a,b)|+A_J(a)+\eta_{J,\mathrm{var}}^{mb}(a,b).
\tag{PBR.10p6}
```

Consequently the two abstract weighted budgets `(PBR.10j)`-`(PBR.10k)` follow
from the three concrete weighted suppliers

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{|m_J(t_0,a,b)|^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b)
\le
\varepsilon_0,
\tag{PBR.10p7}
```

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{A_J(a)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b)
\le
\varepsilon_A,
\tag{PBR.10p8}
```

and

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{\bigl(\eta_{J,\mathrm{var}}^{mb}(a,b)\bigr)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b)
\le
\varepsilon_{\mathrm{var}}.
\tag{PBR.10p9}
```

Indeed, `(PBR.10p2)` gives `(PBR.10j)` with `\delta_E=\varepsilon_A/\nu_J(\mathcal G_J)`,
while `(PBR.10p6)` and `(x+y+z)^2\le 3(x^2+y^2+z^2)` yield

```math
\int_{\mathcal G_J}
\frac{\eta_J^\sharp(a,b)^2}{g_0(a)^2}\,d\nu_J(a,b)
\le
3\bigl(
\varepsilon_0+\varepsilon_A+\varepsilon_{\mathrm{var}}
\bigr).
\tag{PBR.10q1}
```

So the authoritative exact branch no longer has four genuinely independent
weighted suppliers from the raw `D.7mb` split. It reduces to the three scalar
familywise estimates `(PBR.10p7)`-`(PBR.10p9)`.

One candidate further collapse is to absorb the variation supplier into the
common `A_J` supplier via a pointwise theorem of the form

```math
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}
\le C_{\mathrm{PBR10q2}}
|W_J^N(s,a)|_{\mathrm{op}}^2\,|S_J^N(s,a)|.
\tag{PBR.10q2}
```

Under `(PBR.10q2)`, `(PBR.10p9)` follows from
`(PBR.10p8)` and the exact wall collapses from three weighted suppliers to
two. But the current `D.7mm` packet does **not** prove `(PBR.10q2)`; it only
packages bootstrap control through `a_J^{lin}`, `a_J^{quad}`,
`\Theta_J^{comm}`, and `\eta_J^{boot}`. So the strongest honest exact reduction
visible on disk stops at the three weighted suppliers `(PBR.10p7)`-`(PBR.10p9)`.

## Exact Upstream Supplier List On The Measurable-Derivative Route

The projective branch can be compressed one step further without changing its
live theorem wall. The exact remaining upstream debt on the measurable-derivative
Cauchy--Green route is:

```math
\texttt{D.7mq}
+
\texttt{InitCollapse}
+
\texttt{MixCollapse-Honest}
+
\texttt{DriftCollapse-Honest}.
\tag{PBR.10p}
```

Indeed, the companion note
[ssc-d7mb-collapse-and-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ssc-d7mb-collapse-and-suppliers.md)
already packages

```math
\texttt{InitCollapse + MixCollapse-Honest + DriftCollapse-Honest}
\Longrightarrow
\texttt{SSC-D7mb-collapse}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10q}
```

So once the pair-to-reference projector packet `D.7mq` is available, the
genuinely new selector-strain work is no longer an undifferentiated “residual
budget” problem. It is exactly the three supplier theorems:

1. `InitCollapse`, controlling the weighted entrance supplier `(PBR.10p7)`;
2. `MixCollapse-Honest`, controlling the weighted common
   `W_J^N\!-\!S_J^N` supplier `(PBR.10p8)`, which simultaneously bounds
   `E_{J,t_0}^{CG}` and `\eta_{J,\mathrm{off}}^{mb}` through
   `(PBR.10p2)` and `(PBR.10p4)`;
3. `DriftCollapse-Honest`, controlling the weighted variation supplier
   `(PBR.10p9)`.

The bare `MixCollapse` label is only the square budget
`\mathcal R_{J,2}^{mix}=o_J(1)`. The theorem-facing hard supplier is
`MixCollapse-Honest`, because it is the installed `D.7md` / `D.7me` split that
actually controls that square budget without using the unjustified
projector-angle domination shortcut. `InitCollapse` and `DriftCollapse-Honest`
are supporting suppliers inside the same `SSC-D7mb-collapse` packet.

Equivalently, one honest sufficient descendant under the projector-first splice
may be read as

```math
\boxed{
\texttt{D.7mq}
+
\texttt{InitCollapse}
+
\texttt{MixCollapse-Honest}
+
\texttt{DriftCollapse-Honest}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
}
\tag{PBR.10r}
```

This is the honest measurable-derivative descendant inside the projector-first
exact-potential path.

It also fixes the route boundary: `D.7mr2` is the export supplied by
`D.7mq + SSC`, and the later
`RPC.3 -> SG.4 -> BR.lambda2 -> continuation` chain remains downstream export,
not a replacement for the upstream `PSJ+` square-budget wall.

The branch-local terminal assembly is now recorded in
[psj-plus-terminal-assembly.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-terminal-assembly.md):

```math
\texttt{PTC-Lin}
+\texttt{PTC-Shape}
+\texttt{SSC-D7mb-collapse}
\Longrightarrow
\texttt{PSJ+.Terminal}
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3.
\tag{PBR.10r'}
```

So this note supplies the square-budget selector-strain descendant consumed by
that terminal assembly. The terminal assembly closes the branch-local `PSJ+`
splice from installed inputs; it does not promote `PSJ+` above the current
class-membership live edge.

### Proposition PBR.10s (a common weighted bad-set theorem collapses the `D.7mb` square supplier budgets)

Let `d\nu_J:=M_J^2\,d\mu_J` on the selector-good family `\mathcal G_J`, and let
`B_J\subset \mathcal G_J` be a weighted bad set with

```math
\nu_J(B_J)=o_J(1).
\tag{PBR.10s1}
```

Assume the three `D.7mb` supplier descendants are represented by measurable
densities

```math
\rho_J^{init},\qquad \rho_J^{mix},\qquad \rho_J^{drift},
\tag{PBR.10s2}
```

with

```math
\operatorname{supp}\rho_J^{init},
\operatorname{supp}\rho_J^{mix},
\operatorname{supp}\rho_J^{drift}
\subseteq
B_J,
\tag{PBR.10s3}
```

and suppose there exists one exponent `p>2` such that

```math
\|\rho_J^{init}\|_{L^p(d\nu_J)}
+
\|\rho_J^{mix}\|_{L^p(d\nu_J)}
+
\|\rho_J^{drift}\|_{L^p(d\nu_J)}
\le
C_p.
\tag{PBR.10s4}
```

Then the weighted square supplier budgets vanish:

```math
\int_{\mathcal G_J} |\rho_J^{init}|^2\,d\nu_J
+
\int_{\mathcal G_J} |\rho_J^{mix}|^2\,d\nu_J
+
\int_{\mathcal G_J} |\rho_J^{drift}|^2\,d\nu_J
=
o_J(1).
\tag{PBR.10s5}
```

In particular, if these three densities dominate the square packets behind
`InitCollapse`, `MixCollapse-Honest`, and `DriftCollapse-Honest`, then the
entire `D.7mb` supplier stack collapses from one common bad-set theorem:

```math
\texttt{P2}^{\sharp}
:\;
\text{weighted bad-set support localization}
+
\text{one shared }L^p(d\nu_J)\text{ packet},\ p>2.
\tag{PBR.10s6}
```

So one sufficient descendant under the projector-first splice compresses to

```math
\texttt{D.7mq}
+
\texttt{P2}^{\sharp}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10s7}
```

**Proof.**
Because each density is supported on `B_J`, Hölder with exponent `p/2>1` gives

```math
\int |\rho|^2\,d\nu_J
\le
\|\rho\|_{L^p(d\nu_J)}^2\,\nu_J(B_J)^{1-2/p}.
\tag{PBR.10s8}
```

Apply `(PBR.10s8)` to `\rho_J^{init}`, `\rho_J^{mix}`, and
`\rho_J^{drift}`, then use `(PBR.10s1)` and `(PBR.10s4)`. This yields
`(PBR.10s5)`, and the implication `(PBR.10s6)` follows from the square-budget
form of `SSC-D7mb-collapse`. ∎

### Remark a pure `L^2` bad-set theorem only gives linear residual collapse

If one assumes only uniform `L^2(d\nu_J)` control on the residual densities
supported in `B_J`, then Cauchy--Schwarz yields linear `L^1(d\nu_J)` smallness,
not the weighted square-budget vanishing required by `SSC-D7mb-collapse`.

So the projective branch needs the stronger `L^p`, `p>2`, common bad-set
theorem above. The weaker `L^2` support-smallness form still remains useful on
the Hodge side, where the residual ledgers in `E.18` and `E.19` are linear.

### Corollary PBR.10t (BootSquare is one sufficient descendant under the projector-first splice)

The common bad-set theorem `(PBR.10s)` is a strong sufficient realization of
the measurable-derivative selector-strain collapse, but neither `(PBR.10s)` nor
`BootSquare` is the branch primitive. The projector-first branch read remains

```math
D.7mq + \text{selector-strain compatibility}\Longrightarrow D.7mr2.
```

The companion note
[ssc-d7mb-collapse-and-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ssc-d7mb-collapse-and-suppliers.md)
already shows that, once one chooses the measurable-derivative descendant, the
three `D.7mb` square supplier budgets collapse from the single combined weighted
bootstrap packet

```math
\int_{\mathcal G_J}
M_J^2
\bigl(\Lambda_J^{boot}(a)\,\eta_J^{boot}(a,b)\bigr)^2
\,d\mu_J
=
o_J(1),
\tag{PBR.10t1}
```

which is exactly `(SDC.21)`. Therefore one exact sufficient descendant of the
projector-first splice can be read as

```math
\texttt{D.7mq}
+
\texttt{BootSquare}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2},
\tag{PBR.10t2}
```

where `BootSquare` denotes the single weighted square theorem `(PBR.10t1)`.

The localization theorem `(PBR.10s)` is then one stronger sufficient route to
the same descendant: if the combined residual density or its three descendants
are supported on a weighted bad set of vanishing `\nu_J`-mass and carry a
uniform `L^p(d\nu_J)` bound for some `p>2`, then `(PBR.10t1)` follows.

So the exact projective hierarchy is:

```math
\texttt{projector-first primitive:}\qquad
\texttt{D.7mq + SSC \Longrightarrow D.7mr2},
\tag{PBR.10t3}
```

```math
\texttt{BootSquare descendant:}\qquad
\texttt{D.7mq + BootSquare \Longrightarrow SSC \Longrightarrow D.7mr2},
\tag{PBR.10t4}
```

```math
\texttt{localization descendant:}\qquad
\texttt{D.7mq + P2}^{\sharp}
\Longrightarrow
\texttt{BootSquare}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10t5}
```

This is sharper than treating `InitCollapse`, `MixCollapse-Honest`, and
`DriftCollapse-Honest` as three independent live theorem cuts, and it keeps the
projector-first splice primitive.

### Corollary PBR.10u (a strong weighted bad-set theorem is one exact sufficient realization of `BootSquare`)

Let

```math
\beta_J(a,b)
:=
\Lambda_J^{boot}(a)\,\eta_J^{boot}(a,b),
\tag{PBR.10u1}
```

so that `BootSquare` is exactly

```math
\int_{\mathcal G_J} |\beta_J(a,b)|^2\,d\nu_J(a,b)=o_J(1).
\tag{PBR.10u2}
```

Assume there exists a weighted bad set `B_J\subset \mathcal G_J` such that

```math
\nu_J(B_J)=o_J(1),
\qquad
\operatorname{supp}\beta_J\subseteq B_J,
\tag{PBR.10u3}
```

and one exponent `p>2` with

```math
\|\beta_J\|_{L^p(d\nu_J)}\le C_p.
\tag{PBR.10u4}
```

Then `BootSquare` holds.

So the localization theorem

```math
\texttt{StrongBadSet}_{p>2}
:\;
\nu_J(B_J)=o_J(1),
\ \operatorname{supp}\beta_J\subseteq B_J,
\ \|\beta_J\|_{L^p(d\nu_J)}\le C_p
\tag{PBR.10u5}
```

is one exact sufficient realization of the `BootSquare` descendant under the
projector-first splice.

**Proof.**
Because `\beta_J` is supported on `B_J`, Hölder gives

```math
\int_{\mathcal G_J} |\beta_J|^2\,d\nu_J
=
\int_{B_J} |\beta_J|^2\,d\nu_J
\le
\|\beta_J\|_{L^p(d\nu_J)}^2\,\nu_J(B_J)^{1-2/p}.
```

Insert `(PBR.10u3)`-`(PBR.10u4)`. Since `p>2`, the right-hand side is `o_J(1)`,
which is exactly `(PBR.10u2)`. ∎

### Corollary PBR.10u6 (the highway packet imports into `BootSquare` under uniform weight promotion)

The exact-potential / HWY audit note
[hwy-instability-attack-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/hwy-instability-attack-packet.md)
already reduces the unweighted entrance packet to the plain pair-measure boot
channel under the predecessor-slab bounds

```math
\operatorname{gap}_J^{CG}\ge \gamma_\ast>0,
\qquad
\bigl|\mathbf W_J^{coc}\bigr|_{\mathrm{op}}\le M_\ast,
\qquad
K_J^{lin}\le K_\ast.
\tag{PBR.10u6a}
```

If one adds the uniform weight-promotion theorem

```math
\sup_{(a,b)\in\mathcal G_J} M_J(a,b)\le M_\ast^{wt}<\infty,
\tag{PBR.10u6b}
```

then the plain boot packet

```math
\int_{\mathcal G_J}\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)=o_J(1)
\tag{PBR.10u6c}
```

implies the weighted boot packet

```math
\int_{\mathcal G_J}
M_J(a,b)^2\,\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)
=
o_J(1),
\tag{PBR.10u6d}
```

and hence `BootSquare` by the already recorded corollary
`Uniform-Klin + BootSmall => SSC`.

So the highway packet supplies one more exact sufficient realization of the
projector-first descendant:

```math
\texttt{HWY-boot}
\;+\;
\texttt{WeightPromotion}
\Longrightarrow
\texttt{BootSquare}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10u6e}
```

This does **not** change the live exact wall, because `(PBR.10u6b)` is not
currently an installed theorem on the selector-good family. It isolates the
remaining interface precisely: the HWY note already reaches the unweighted boot
packet, and the exact branch still needs the promotion from `d\mu_J^{pair}` to
the live weighted ledger `d\nu_J=M_J^2\,d\mu_J^{pair}`.

### Corollary PBR.10u7 (finite-exponent Hölder promotion is a more flexible sufficient realization of `WeightPromotion`)

The uniform bound `(PBR.10u6b)` is only the endpoint `L^\infty` version of the
weight-promotion interface. More generally, let `q\in(2,\infty]` and let
`r\in[2,\infty)` be the Hölder conjugate determined by

```math
\frac{1}{q}+\frac{1}{r}=\frac12.
\tag{PBR.10u7a}
```

Assume on `\mathcal G_J` that

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\tag{PBR.10u7b}
```

and that the boot packet is small in the stronger plain pair-measure norm

```math
\|\eta_J^{boot}\|_{L^r(d\mu_J^{pair})}=o_J(1).
\tag{PBR.10u7c}
```

Then the weighted boot packet follows:

```math
\int_{\mathcal G_J}
M_J(a,b)^2\,\eta_J^{boot}(a,b)^2\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{PBR.10u7d}
```

So one more exact sufficient realization of the projector-first descendant is

```math
\texttt{HWY-boot}_{L^r}
\;+\;
\texttt{Weight}_{L^q}
\Longrightarrow
\texttt{BootSquare}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10u7e}
```

The endpoint `q=\infty`, `r=2` recovers `(PBR.10u6)`. For any finite `q>2`,
this shows exactly what extra ingredient is needed to avoid an `L^\infty`
weight theorem: one must upgrade the plain boot packet from `L^2(d\mu_J^{pair})`
to the corresponding higher integrability `L^r(d\mu_J^{pair})`.

**Proof.**
Apply Hölder to `M_J^2\eta_J^{boot}{}^2` with exponents `q/2` and `r/2`. Since
`(2/q)+(2/r)=1` by `(PBR.10u7a)`, one gets

```math
\int_{\mathcal G_J}
M_J^2\,\eta_J^{boot}{}^2\,d\mu_J^{pair}
\le
\|M_J\|_{L^q(d\mu_J^{pair})}^2
\|\eta_J^{boot}\|_{L^r(d\mu_J^{pair})}^2.
\tag{PBR.10u7f}
```

Insert `(PBR.10u7b)`-`(PBR.10u7c)` to obtain `(PBR.10u7d)`. ∎

### Proposition PBR.10u8 (mixed pair-measure bad-set localization plus finite-exponent weight control implies `BootSquare`)

The weighted bad-set theorem `(PBR.10u5)` and the finite-exponent promotion
packet `(PBR.10u7)` admit a common interpolation descendant that stays on the
plain pair-measure side until the final weighted square integral is formed.

Keep `\beta_J=\Lambda_J^{boot}\eta_J^{boot}` from `(PBR.10u1)`. Assume there is
an unweighted bad set `B_J\subset \mathcal G_J` such that

```math
\mu_J^{pair}(B_J)=o_J(1),
\qquad
\operatorname{supp}\beta_J\subseteq B_J.
\tag{PBR.10u8a}
```

Assume further that there exist exponents `q,p\in(2,\infty]` satisfying

```math
\frac{1}{q}+\frac{1}{p}<\frac12,
\tag{PBR.10u8b}
```

and constants `C_q,C_p<\infty` such that

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\qquad
\|\beta_J\|_{L^p(d\mu_J^{pair})}\le C_p.
\tag{PBR.10u8c}
```

Then `BootSquare` holds:

```math
\int_{\mathcal G_J}
M_J(a,b)^2\,|\beta_J(a,b)|^2\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{PBR.10u8d}
```

So the exact projective square packet has the further sufficient realization

```math
\texttt{Weight}_{L^q}
\;+\;
\texttt{BadSet}_{\mu,p}
\Longrightarrow
\texttt{BootSquare},
\tag{PBR.10u8e}
```

where `\texttt{BadSet}_{\mu,p}` denotes the unweighted localization packet
`(PBR.10u8a)`-`(PBR.10u8c)` on the combined boot density `\beta_J`.

This is weaker than demanding a weighted reverse-Hölder packet in `d\nu_J`,
and it is sharper than the pure finite-exponent promotion `(PBR.10u7)` because
the higher integrability of `\beta_J` is only needed on a vanishing
pair-measure bad set.

**Proof.**
Because `\beta_J` is supported on `B_J`, one has

```math
\int_{\mathcal G_J} M_J^2|\beta_J|^2\,d\mu_J^{pair}
=
\int_{B_J} M_J^2|\beta_J|^2\,d\mu_J^{pair}.
```

Choose `s\in[1,\infty)` by

```math
\frac{1}{s}
:=
1-\frac{2}{q}-\frac{2}{p},
\tag{PBR.10u8f}
```

which is positive by `(PBR.10u8b)`. Hölder with exponents `q/2`, `p/2`, and
`s` gives

```math
\int_{B_J} M_J^2|\beta_J|^2\,d\mu_J^{pair}
\le
\|M_J\|_{L^q(d\mu_J^{pair})}^2
\|\beta_J\|_{L^p(d\mu_J^{pair})}^2
\mu_J^{pair}(B_J)^{1-2/q-2/p}.
\tag{PBR.10u8g}
```

Insert `(PBR.10u8a)` and `(PBR.10u8c)`. Since `1-2/q-2/p>0`, the right-hand
side is `o_J(1)`, which is exactly `(PBR.10u8d)`. ∎

### Corollary PBR.10u9 (uniform strip control converts the mixed bad-set theorem to a raw `\eta_J^{boot}` packet)

Assume the uniform strip bound

```math
\sup_{\mathcal G_J} K_J^{lin}\le K_\ast<\infty,
\tag{PBR.10u9a}
```

and let `q,p\in(2,\infty]` satisfy `(PBR.10u8b)`. Suppose there is an
unweighted bad set `B_J\subset \mathcal G_J` such that

```math
\mu_J^{pair}(B_J)=o_J(1),
\qquad
\operatorname{supp}\eta_J^{boot}\subseteq B_J,
\tag{PBR.10u9b}
```

while

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\qquad
\|\eta_J^{boot}\|_{L^p(d\mu_J^{pair})}\le C_p.
\tag{PBR.10u9c}
```

Then `BootSquare` holds.

Equivalently,

```math
\texttt{Uniform-Klin}
\;+\;
\texttt{Weight}_{L^q}
\;+\;
\texttt{BootBadSet}_{\mu,p}
\Longrightarrow
\texttt{BootSquare},
\tag{PBR.10u9d}
```

where `\texttt{BootBadSet}_{\mu,p}` denotes `(PBR.10u9b)`-`(PBR.10u9c)` for the
raw bootstrap source `\eta_J^{boot}`.

This is the exact bad-set analogue of the finite-exponent promotion
`(PBR.10u7)`: instead of upgrading `\eta_J^{boot}` globally from `L^2` to
`L^r`, one only needs `L^p` control on the vanishing pair-measure support of
the bootstrap source.

**Proof.**
By `(SDC.20)` and `(PBR.10u9a)`,

```math
\Lambda_J^{boot}(a)\le 1+K_\ast e^{K_\ast}
\qquad\text{on }\mathcal G_J.
\tag{PBR.10u9e}
```

Therefore `\beta_J=\Lambda_J^{boot}\eta_J^{boot}` satisfies

```math
\operatorname{supp}\beta_J\subseteq B_J,
\qquad
\|\beta_J\|_{L^p(d\mu_J^{pair})}
\le
\bigl(1+K_\ast e^{K_\ast}\bigr)\,
\|\eta_J^{boot}\|_{L^p(d\mu_J^{pair})}.
\tag{PBR.10u9f}
```

Now apply Proposition `(PBR.10u8)` with `(PBR.10u9b)`-`(PBR.10u9c)` and
`(PBR.10u9f)`. ∎

### Corollary PBR.10u10 (if the bootstrap source localizes to the differentiability exceptional family, then `DiffExc` feeds `BootSquare`)

Keep the selector-good differentiability exceptional family
`E_{J,\varepsilon,\eta}^{diff}(t,a)` from `(PTCL.3r)` and assume the
measure-smallness packet `(PTCL.3s)` on the selector-good family. Assume also
the uniform strip bound

```math
\sup_{\mathcal G_J} K_J^{lin}\le K_\ast<\infty,
\tag{PBR.10u10a}
```

and let `q,p\in(2,\infty]` satisfy `(PBR.10u8b)`. Suppose there is a tolerance
schedule `\eta_{J,\varepsilon}\to 0` and a resulting bad set

```math
B_J
:=
\bigl\{(a,b)\in\mathcal G_J:
b\in E_{J,\varepsilon,\eta_{J,\varepsilon}}^{diff}(t,a)\bigr\},
\tag{PBR.10u10b}
```

such that

```math
\operatorname{supp}\eta_J^{boot}\subseteq B_J,
\qquad
\mu_J^{pair}(B_J)=o_J(1),
\tag{PBR.10u10c}
```

and

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\qquad
\|\eta_J^{boot}\|_{L^p(d\mu_J^{pair})}\le C_p.
\tag{PBR.10u10d}
```

Then `BootSquare` holds.

So the measurable-derivative projective cut admits the sharper exact
realization

```math
\texttt{DiffExc}
\;+\;
\texttt{BootLoc}_{diff,p}
\;+\;
\texttt{Weight}_{L^q}
\;+\;
\texttt{Uniform-Klin}
\Longrightarrow
\texttt{BootSquare}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2},
\tag{PBR.10u10e}
```

where `\texttt{BootLoc}_{diff,p}` abbreviates the support localization
`(PBR.10u10c)` together with the plain pair-measure `L^p` control
`(PBR.10u10d)` for `\eta_J^{boot}`.

This does not claim that `DiffExc` alone localizes `\eta_J^{boot}`. It records
the exact remaining bridge: once the bootstrap source is shown to live on the
same vanishing exceptional family and carries a plain pair-measure `L^p`
packet, the exact branch closes through `(PBR.10u9)`.

**Proof.**
By `(PTCL.3s)` and the definition `(PBR.10u10b)`, the bad set has vanishing
pair measure. The rest is exactly Corollary `(PBR.10u9)` applied with this
choice of `B_J`. ∎

### Corollary PBR.10u11 (the canonical bootstrap source splits `BootSquare` into entrance and commutator bad-set packets)

The abstract upper bound `\eta_J^{boot}` in `(D.7mm2)` may be replaced by the
canonical source

```math
\eta_{J,\mathrm{can}}^{boot}(a,b)
:=
|m_J(t_0,a,b)|
+
\int_{t_0}^{t_1}\Theta_J^{comm}(s,a,b)\,ds.
\tag{PBR.10u11a}
```

Indeed, `(D.7mm2)` holds with `\eta_J^{boot}:=\eta_{J,\mathrm{can}}^{boot}`.

Assume the uniform strip bound `(PBR.10u9a)`, and let `q,p\in(2,\infty]`
satisfy `(PBR.10u8b)`. Suppose there are measurable bad sets
`B_J^{init},B_J^{comm}\subset \mathcal G_J` such that

```math
\operatorname{supp}|m_J(t_0,\cdot)|\subseteq B_J^{init},
\qquad
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds\right)
\subseteq B_J^{comm},
\tag{PBR.10u11b}
```

and

```math
\mu_J^{pair}(B_J^{init})+\mu_J^{pair}(B_J^{comm})=o_J(1).
\tag{PBR.10u11c}
```

Assume further that

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\tag{PBR.10u11d}
```

and both canonical source pieces satisfy plain pair-measure `L^p` bounds

```math
\|m_J(t_0,\cdot)\|_{L^p(d\mu_J^{pair})}\le C_{p,\mathrm{init}},
\qquad
\left\|\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le C_{p,\mathrm{comm}}.
\tag{PBR.10u11e}
```

Then `BootSquare` holds.

Equivalently, the exact projective square packet admits the realization

```math
\texttt{Uniform-Klin}
\;+\;
\texttt{Weight}_{L^q}
\;+\;
\texttt{InitLoc}_{\mu,p}
\;+\;
\texttt{CommLoc}_{\mu,p}
\Longrightarrow
\texttt{BootSquare},
\tag{PBR.10u11f}
```

where `\texttt{InitLoc}_{\mu,p}` and `\texttt{CommLoc}_{\mu,p}` denote the
support and `L^p(d\mu_J^{pair})` packets in `(PBR.10u11b)`-`(PBR.10u11e)` for
the entrance residual and the integrated commutator source respectively.

This shows the exact remaining bridge beneath `BootLoc_{diff,p}`. The
differentiability exceptional family `DiffExc` can only help if one proves that
the canonical bootstrap source pieces themselves localize to that family or to
another vanishing pair-measure bad set. `DiffExc` alone does not reach
`BootSquare`.

**Proof.**
Set

```math
B_J:=B_J^{init}\cup B_J^{comm}.
\tag{PBR.10u11g}
```

Then `(PBR.10u11b)` implies
`\operatorname{supp}\eta_{J,\mathrm{can}}^{boot}\subseteq B_J`, and
`(PBR.10u11c)` gives `\mu_J^{pair}(B_J)=o_J(1)`. By Minkowski,

```math
\|\eta_{J,\mathrm{can}}^{boot}\|_{L^p(d\mu_J^{pair})}
\le
\|m_J(t_0,\cdot)\|_{L^p(d\mu_J^{pair})}
+
\left\|\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})},
\tag{PBR.10u11h}
```

so `(PBR.10u11e)` yields a finite `L^p` bound for
`\eta_{J,\mathrm{can}}^{boot}`. Now apply Corollary `(PBR.10u9)` with
`\eta_J^{boot}:=\eta_{J,\mathrm{can}}^{boot}`. ∎

### Remark the commutator localization packet is still genuinely stronger than the current direct `\beta_J` route

The canonical split `(PBR.10u11)` isolates the exact source debt under
`BootSquare`, and it also shows what the current HWY forcing packets do **not**
yet prove.

Indeed, the integrated commutator source in `(PBR.10u11a)` is built from
`\Theta_J^{comm}` in `(D.7mf2)`, namely

```math
\Theta_J^{comm}
:=
\frac{\mu_2^{CG}}{\operatorname{gap}_J^{CG}}
\bigl\|[\mathcal C_J^N,B_J^N]\bigr\|_{\mathrm{op}}
+
\frac{|\mathcal C_J^N|\,|\partial_t S_J^N|}{g_J^{str}}.
\tag{PBR.10u11i}
```

By contrast, the direct non-adiabatic `\beta_J` route in `EP.12d` only reduces
the angular forcing to the rotational slot `|K_J^{seg}n_J|` plus the
strain-variation slot `|\partial_t S_J^N|/g_J^{str}`. It does **not** absorb
the commutator term `\|[\mathcal C_J^N,B_J^N]\|_{\mathrm{op}}`.

So the remaining exact localization debt beneath `(PBR.10u11f)` is:

```math
\boxed{\texttt{InitLoc}_{\mu,p}}
\quad+\quad
\boxed{\texttt{CommLoc}_{\mu,p}^{comm}}
\quad+\quad
\boxed{\texttt{CommLoc}_{\mu,p}^{var}},
\tag{PBR.10u11j}
```

where the variation part is compatible with the direct `\beta_J` / drift
packets, but the commutator part still needs its own theorem-safe localization
or domination theorem.

### Proposition PBR.10u12 (the integrated commutator source packet splits exactly into commutator and variation localization)

Define the two source pieces of `(D.7mf2)` by

```math
\Theta_{J}^{comm,op}(t,a,b)
:=
2\frac{
\mu_2^{CG}(t,a)
}{
\operatorname{gap}_J^{CG}(t,a)
}
\bigl\|[\mathcal C_J^N(t,a),B_J^N(t,a)]\bigr\|_{\mathrm{op}},
\tag{PBR.10u12a}
```

and

```math
\Theta_{J}^{comm,var}(t,a,b)
:=
3\frac{
|\mathcal C_J^N(t,a)|\,|\partial_t S_J^N(t,a)|
}{
g_J^{str}(t,a)
}.
\tag{PBR.10u12b}
```

Then

```math
\Theta_J^{comm}(t,a,b)
=
\Theta_{J}^{comm,op}(t,a,b)
+
\Theta_{J}^{comm,var}(t,a,b).
\tag{PBR.10u12c}
```

Assume the uniform strip bound `(PBR.10u9a)`, and let `q,p\in(2,\infty]`
satisfy `(PBR.10u8b)`. Suppose there are measurable bad sets
`B_J^{comm,op},B_J^{comm,var}\subset \mathcal G_J` such that

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_J^{comm,op}(s,\cdot)\,ds\right)
\subseteq B_J^{comm,op},
\tag{PBR.10u12d}
```

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_J^{comm,var}(s,\cdot)\,ds\right)
\subseteq B_J^{comm,var},
\tag{PBR.10u12e}
```

with

```math
\mu_J^{pair}(B_J^{comm,op})+\mu_J^{pair}(B_J^{comm,var})=o_J(1).
\tag{PBR.10u12f}
```

Assume further that

```math
\|M_J\|_{L^q(d\mu_J^{pair})}\le C_q,
\tag{PBR.10u12g}
```

and

```math
\left\|\int_{t_0}^{t_1}\Theta_J^{comm,op}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{comm}},
\tag{PBR.10u12h}
```

```math
\left\|\int_{t_0}^{t_1}\Theta_J^{comm,var}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{var}}.
\tag{PBR.10u12i}
```

Then `\texttt{CommLoc}_{\mu,p}` from `(PBR.10u11f)` holds.

Equivalently,

```math
\texttt{Weight}_{L^q}
\;+\;
\texttt{CommLoc}_{\mu,p}^{comm}
\;+\;
\texttt{CommLoc}_{\mu,p}^{var}
\Longrightarrow
\texttt{CommLoc}_{\mu,p},
\tag{PBR.10u12j}
```

where the two new packets denote `(PBR.10u12d)`-`(PBR.10u12i)` for the
commutator operator source and the variation source respectively.

So the exact remaining wall under `BootSquare` is no longer the monolithic
integrated source `\int\Theta_J^{comm}`. It is the pair of localization
theorems `(PBR.10u12j)`, with only the first one still invisible to the direct
`EP.12d` forcing route.

**Proof.**
By `(PBR.10u12c)`,

```math
\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds
=
\int_{t_0}^{t_1}\Theta_J^{comm,op}(s,\cdot)\,ds
+
\int_{t_0}^{t_1}\Theta_J^{comm,var}(s,\cdot)\,ds.
\tag{PBR.10u12k}
```

Set `B_J^{comm}:=B_J^{comm,op}\cup B_J^{comm,var}`. Then `(PBR.10u12d)`-
`(PBR.10u12f)` imply

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds\right)
\subseteq B_J^{comm},
\qquad
\mu_J^{pair}(B_J^{comm})=o_J(1).
\tag{PBR.10u12l}
```

Minkowski and `(PBR.10u12h)`-`(PBR.10u12i)` give

```math
\left\|\int_{t_0}^{t_1}\Theta_J^{comm}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{comm}}+C_{p,\mathrm{var}}.
\tag{PBR.10u12m}
```

This is exactly the `\texttt{CommLoc}_{\mu,p}` packet used in
`(PBR.10u11f)`. ∎

### Proposition PBR.10u13 (the operator-commutator localization packet reduces to a nearly commuting reference pair plus persistence)

Fix one reference time `\tau\in I_0`. Using `(D.7mk4)`, define the three
reference-persistence pieces

```math
\Theta_{J,\tau}^{ref,op}(t,a,b)
:=
2\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\bigr\|_{\mathrm{op}},
\tag{PBR.10u13a}
```

```math
\Theta_{J,\tau}^{CG,pers}(t,a,b)
:=
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
E_{J,\tau}^{CG}(t,a)\,|B_{J,\tau}^N|_{\mathrm{op}},
\tag{PBR.10u13b}
```

```math
\Theta_{J,\tau}^{B,pers}(t,a,b)
:=
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
|\mathcal C_J^N(t,a)|_{\mathrm{op}}\,E_{J,\tau}^{B}(t,a).
\tag{PBR.10u13c}
```

Then `(D.7mk4)` implies the pointwise domination

```math
\Theta_J^{comm,op}(t,a,b)
\le
\Theta_{J,\tau}^{ref,op}(t,a,b)
+
\Theta_{J,\tau}^{CG,pers}(t,a,b)
+
\Theta_{J,\tau}^{B,pers}(t,a,b).
\tag{PBR.10u13d}
```

Assume there are measurable bad sets
`B_J^{ref,op},B_J^{CG,pers},B_J^{B,pers}\subset \mathcal G_J` such that the
three integrated source pieces are supported there:

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,op}(s,\cdot)\,ds\right)
\subseteq B_J^{ref,op},
\tag{PBR.10u13e}
```

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{CG,pers}(s,\cdot)\,ds\right)
\subseteq B_J^{CG,pers},
\tag{PBR.10u13f}
```

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,pers}(s,\cdot)\,ds\right)
\subseteq B_J^{B,pers},
\tag{PBR.10u13g}
```

with

```math
\mu_J^{pair}(B_J^{ref,op})
+
\mu_J^{pair}(B_J^{CG,pers})
+
\mu_J^{pair}(B_J^{B,pers})
=
o_J(1).
\tag{PBR.10u13h}
```

Assume also that each integrated piece has a plain pair-measure `L^p` bound:

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,op}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{ref}},
\tag{PBR.10u13i}
```

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{CG,pers}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{CG}},
\tag{PBR.10u13j}
```

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,pers}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{B}}.
\tag{PBR.10u13k}
```

Then `\texttt{CommLoc}_{\mu,p}^{comm}` holds.

Equivalently,

```math
\texttt{RefCommLoc}_{\mu,p}
\;+\;
\texttt{CGPersistLoc}_{\mu,p}
\;+\;
\texttt{BPersistLoc}_{\mu,p}
\Longrightarrow
\texttt{CommLoc}_{\mu,p}^{comm}.
\tag{PBR.10u13l}
```

So the exact operator-commutator wall is no longer the raw localization of
`\|[\mathcal C_J^N,B_J^N]\|_{\mathrm{op}}`. It reduces to one nearly commuting
reference-pair packet at time `\tau`, one Cauchy-Green persistence packet, and
one transported-strain persistence packet.

**Proof.**
Multiply `(D.7mk4)` by
`2\mu_2^{CG}(t,a)/\operatorname{gap}_J^{CG}(t,a)` to obtain
`(PBR.10u13d)`. Integrate over `[t_0,t_1]`, use Minkowski, and let

```math
B_J^{comm,op}
:=
B_J^{ref,op}\cup B_J^{CG,pers}\cup B_J^{B,pers}.
\tag{PBR.10u13m}
```

Then `(PBR.10u13e)`-`(PBR.10u13h)` imply the required support-smallness for the
integrated operator-commutator source, and `(PBR.10u13i)`-`(PBR.10u13k)` give
its `L^p(d\mu_J^{pair})` bound. This is exactly
`\texttt{CommLoc}_{\mu,p}^{comm}`. ∎

### Proposition PBR.10u14 (transported-strain persistence itself splits into variation and rotational-commutator packets)

Keep the reference time `\tau` and define the two persistence pieces from
`(D.7mi4)` by

```math
\Theta_{J,\tau}^{B,var}(t,a,b)
:=
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
|\mathcal C_J^N(t,a)|_{\mathrm{op}}
\int_{\min\{t,\tau\}}^{\max\{t,\tau\}}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
|\partial_s S_J^N(s,a)|\,ds,
\tag{PBR.10u14a}
```

and

```math
\Theta_{J,\tau}^{B,rot}(t,a,b)
:=
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
|\mathcal C_J^N(t,a)|_{\mathrm{op}}
\int_{\min\{t,\tau\}}^{\max\{t,\tau\}}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
\bigl|[S_J^N(s,a),K_J^N(s,a)]\bigr|_{\mathrm{op}}\,ds.
\tag{PBR.10u14b}
```

Then `(D.7mi4)` implies

```math
\Theta_{J,\tau}^{B,pers}(t,a,b)
\le
\Theta_{J,\tau}^{B,var}(t,a,b)
+
\Theta_{J,\tau}^{B,rot}(t,a,b).
\tag{PBR.10u14c}
```

Assume there are measurable bad sets
`B_J^{B,var},B_J^{B,rot}\subset \mathcal G_J` such that the integrated pieces
are supported there:

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,var}(s,\cdot)\,ds\right)
\subseteq B_J^{B,var},
\tag{PBR.10u14d}
```

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,rot}(s,\cdot)\,ds\right)
\subseteq B_J^{B,rot},
\tag{PBR.10u14e}
```

with

```math
\mu_J^{pair}(B_J^{B,var})+\mu_J^{pair}(B_J^{B,rot})=o_J(1).
\tag{PBR.10u14f}
```

Assume also the corresponding `L^p(d\mu_J^{pair})` bounds

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,var}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{B,var}},
\tag{PBR.10u14g}
```

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,rot}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{B,rot}}.
\tag{PBR.10u14h}
```

Then `\texttt{BPersistLoc}_{\mu,p}` from `(PBR.10u13l)` holds.

Equivalently,

```math
\texttt{StrainVarPersistLoc}_{\mu,p}
\;+\;
\texttt{RotCommPersistLoc}_{\mu,p}
\Longrightarrow
\texttt{BPersistLoc}_{\mu,p}.
\tag{PBR.10u14i}
```

So the `D.7mk` reduction trades the raw operator commutator wall for three
smaller packets:

```math
\boxed{\texttt{RefCommLoc}_{\mu,p}}
\quad+\quad
\boxed{\texttt{CGPersistLoc}_{\mu,p}}
\quad+\quad
\boxed{\texttt{RotCommPersistLoc}_{\mu,p}},
\tag{PBR.10u14j}
```

with the strain-variation persistence slot separated from the genuinely
rotational commutator persistence term. Proposition `(PBR.10u15)` sharpens the
first packet further by splitting `\texttt{RefCommLoc}_{\mu,p}` into a
reference off-axis packet plus a lower-slot reference commutator packet.

**Proof.**
Split the integral in `(D.7mi4)` into its `|\partial_s S_J^N|` and
`|[S_J^N,K_J^N]|_{\mathrm{op}}` parts, then multiply by the prefactor in
`(PBR.10u13c)` to obtain `(PBR.10u14c)`. The support and `L^p` claims follow
from the union bound and Minkowski exactly as in the proof of
`(PBR.10u12j)`. ∎

### Proposition PBR.10u15 (the reference-pair commutator itself splits into reference off-axis blocks plus a lower-slot commutator)

Keep the reference time `\tau` from `(PBR.10u13)` and write

```math
P_{J,\tau}^{CG}
:=
P_J^{CG}(\tau,a),
\qquad
Q_{J,\tau}^{CG}
:=
I_{N_a}-P_{J,\tau}^{CG},
\tag{PBR.10u15a}
```

```math
\mu_{1,\tau}^{CG}
:=
\mu_1^{CG}(\tau,a),
\qquad
R_{J,\tau}^{CG}
:=
Q_{J,\tau}^{CG}\,\mathcal C_{J,\tau}^N\,Q_{J,\tau}^{CG}.
\tag{PBR.10u15b}
```

Since `P_{J,\tau}^{CG}` is the top spectral projector of `\mathcal C_{J,\tau}^N`,

```math
\mathcal C_{J,\tau}^N
=
\mu_{1,\tau}^{CG}P_{J,\tau}^{CG}
+
R_{J,\tau}^{CG},
\qquad
P_{J,\tau}^{CG}R_{J,\tau}^{CG}
=
R_{J,\tau}^{CG}P_{J,\tau}^{CG}
=
0.
\tag{PBR.10u15c}
```

Decompose the reference transported strain operator into the corresponding
blocks:

```math
B_{J,\tau}^N
=
P_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}
+
P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}
+
Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}
+
Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}.
\tag{PBR.10u15d}
```

Then the reference commutator obeys the exact block expansion

```math
\begin{aligned}
[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]
=\;&
\mu_{1,\tau}^{CG}
\Bigl(
P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}
-
Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}
\Bigr) \\
&-
P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}R_{J,\tau}^{CG}
+
R_{J,\tau}^{CG}Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG} \\
&+
[R_{J,\tau}^{CG},Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}],
\end{aligned}
\tag{PBR.10u15e}
```

and therefore the pointwise bound

```math
\bigl\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\bigr\|_{\mathrm{op}}
\le
2\bigl|\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}
\Bigl(
\bigl|P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
+
\bigl|Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
\Bigr)
+
\bigl\|[R_{J,\tau}^{CG},Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}]\bigr\|_{\mathrm{op}}.
\tag{PBR.10u15f}
```

Define the two refined reference source pieces

```math
\Theta_{J,\tau}^{ref,off}(t,a,b)
:=
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl|\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}
\Bigl(
\bigl|P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
+
\bigl|Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
\Bigr),
\tag{PBR.10u15g}
```

```math
\Theta_{J,\tau}^{ref,Q}(t,a,b)
:=
2\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl\|[R_{J,\tau}^{CG},Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}]\bigr\|_{\mathrm{op}}.
\tag{PBR.10u15h}
```

Then `(PBR.10u13a)` satisfies

```math
\Theta_{J,\tau}^{ref,op}(t,a,b)
\le
\Theta_{J,\tau}^{ref,off}(t,a,b)
+
\Theta_{J,\tau}^{ref,Q}(t,a,b).
\tag{PBR.10u15i}
```

Assume there are measurable bad sets
`B_J^{ref,off},B_J^{ref,Q}\subset \mathcal G_J` such that

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,off}(s,\cdot)\,ds\right)
\subseteq B_J^{ref,off},
\tag{PBR.10u15j}
```

```math
\operatorname{supp}\!\left(\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,Q}(s,\cdot)\,ds\right)
\subseteq B_J^{ref,Q},
\tag{PBR.10u15k}
```

with

```math
\mu_J^{pair}(B_J^{ref,off})+\mu_J^{pair}(B_J^{ref,Q})=o_J(1),
\tag{PBR.10u15l}
```

and assume the `L^p(d\mu_J^{pair})` bounds

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,off}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{ref,off}},
\tag{PBR.10u15m}
```

```math
\left\|\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,Q}(s,\cdot)\,ds\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{ref,Q}}.
\tag{PBR.10u15n}
```

Then `\texttt{RefCommLoc}_{\mu,p}` from `(PBR.10u13l)` holds.

Equivalently,

```math
\texttt{RefOffAxisLoc}_{\mu,p}
\;+\;
\texttt{RefQCommLoc}_{\mu,p}
\Longrightarrow
\texttt{RefCommLoc}_{\mu,p}.
\tag{PBR.10u15o}
```

If moreover `\dim N_a=2`, then `Q_{J,\tau}^{CG}` has rank one, so
`Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}` and `R_{J,\tau}^{CG}` are scalar
operators on `Q_{J,\tau}^{CG}N_a` and therefore

```math
[R_{J,\tau}^{CG},Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}]=0.
\tag{PBR.10u15p}
```

Hence in the codimension-one transverse bundle case,

```math
\texttt{RefOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefCommLoc}_{\mu,p}.
\tag{PBR.10u15q}
```

So the exact reference-pair wall is no longer the raw localization of
`\|[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]\|_{\mathrm{op}}`. It splits into one
reference off-axis packet plus one strictly lower-slot commutator packet, and
the latter disappears when `\dim N_a=2`.

**Proof.**
Insert the block decomposition `(PBR.10u15d)` into the commutator
`[\mathcal C_{J,\tau}^N,B_{J,\tau}^N]` and use `(PBR.10u15c)`. The
`PBP`-block commutes with `\mu_{1,\tau}^{CG}P_{J,\tau}^{CG}`, the mixed blocks
produce the first two lines of `(PBR.10u15e)`, and the `QBQ`-block leaves the
lower-slot commutator `[R_{J,\tau}^{CG},Q_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}]`.
Taking operator norms and using
`\mu_{1,\tau}^{CG}\le |\mathcal C_{J,\tau}^N|_{\mathrm{op}}` and
`|R_{J,\tau}^{CG}|_{\mathrm{op}}\le |\mathcal C_{J,\tau}^N|_{\mathrm{op}}`
gives `(PBR.10u15f)`, hence `(PBR.10u15i)` after multiplying by the prefactor
in `(PBR.10u13a)`. The support and `L^p` claims follow from the union bound and
Minkowski exactly as in `(PBR.10u13m)`. When `\dim N_a=2`, the
`Q_{J,\tau}^{CG}`-subspace is one-dimensional, so every endomorphism of it is a
scalar and `(PBR.10u15p)` is automatic. ∎

### Proposition PBR.10u16 (in transverse rank two, the reference off-axis packet is a rotated symmetric off-axis packet)

Assume `\dim N_a=2` and keep the codimension-one transverse setup of
`(PBR.10u15q)`. Let the reference cocycle at time `\tau` have polar
decomposition on `N_a`

```math
W_J^N(\tau,a)
=
O_{J,\tau}^{CG}\,(\mathcal C_{J,\tau}^N)^{1/2},
\qquad
(O_{J,\tau}^{CG})^*O_{J,\tau}^{CG}=I_{N_a},
\tag{PBR.10u16a}
```

and define the rotated reference strain

```math
\widetilde S_{J,\tau}^{ref}
:=
(O_{J,\tau}^{CG})^*S_J^N(\tau,a)\,O_{J,\tau}^{CG}.
\tag{PBR.10u16b}
```

Then

```math
B_{J,\tau}^N
=
(\mathcal C_{J,\tau}^N)^{-1/2}\,
\widetilde S_{J,\tau}^{ref}\,
(\mathcal C_{J,\tau}^N)^{1/2}.
\tag{PBR.10u16c}
```

Write

```math
\mu_{2,\tau}^{CG}:=\mu_2^{CG}(\tau,a),
\qquad
\chi_{J,\tau}^{CG}
:=
\left(\frac{\mu_{1,\tau}^{CG}}{\mu_{2,\tau}^{CG}}\right)^{1/2}
+
\left(\frac{\mu_{2,\tau}^{CG}}{\mu_{1,\tau}^{CG}}\right)^{1/2}.
\tag{PBR.10u16d}
```

Since `P_{J,\tau}^{CG}` and `Q_{J,\tau}^{CG}` are rank-one spectral projectors
for `\mathcal C_{J,\tau}^N`,

```math
Q_{J,\tau}^{CG}(\mathcal C_{J,\tau}^N)^{-1/2}
=
(\mu_{2,\tau}^{CG})^{-1/2}Q_{J,\tau}^{CG},
\qquad
(\mathcal C_{J,\tau}^N)^{1/2}P_{J,\tau}^{CG}
=
(\mu_{1,\tau}^{CG})^{1/2}P_{J,\tau}^{CG},
\tag{PBR.10u16e}
```

and similarly with `P_{J,\tau}^{CG}` and `Q_{J,\tau}^{CG}` interchanged. Hence

```math
\bigl|Q_{J,\tau}^{CG}B_{J,\tau}^NP_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
=
\left(\frac{\mu_{1,\tau}^{CG}}{\mu_{2,\tau}^{CG}}\right)^{1/2}
\bigl|Q_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}P_{J,\tau}^{CG}\bigr|_{\mathrm{op}},
\tag{PBR.10u16f}
```

```math
\bigl|P_{J,\tau}^{CG}B_{J,\tau}^NQ_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
=
\left(\frac{\mu_{2,\tau}^{CG}}{\mu_{1,\tau}^{CG}}\right)^{1/2}
\bigl|P_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}Q_{J,\tau}^{CG}\bigr|_{\mathrm{op}}.
\tag{PBR.10u16g}
```

Because `\widetilde S_{J,\tau}^{ref}` is symmetric,

```math
\bigl|P_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}Q_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
=
\bigl|Q_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}P_{J,\tau}^{CG}\bigr|_{\mathrm{op}},
\tag{PBR.10u16h}
```

so `(PBR.10u15g)` reduces to

```math
\Theta_{J,\tau}^{ref,off}(t,a,b)
\le
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl|\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}\,
\chi_{J,\tau}^{CG}\,
\bigl|Q_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}P_{J,\tau}^{CG}\bigr|_{\mathrm{op}}.
\tag{PBR.10u16i}
```

Therefore, in transverse rank two, the codimension-one reference commutator
packet from `(PBR.10u15q)` follows from a single rotated symmetric off-axis
packet:

```math
\texttt{RefRotOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefCommLoc}_{\mu,p}.
\tag{PBR.10u16j}
```

So on the exact branch the residual reference wall is no longer a raw
non-symmetric commutator packet. In the rank-two transverse case it becomes a
condition-number-weighted off-axis packet for the rotated reference strain
`\widetilde S_{J,\tau}^{ref}`.

**Proof.**
The polar decomposition `(PBR.10u16a)` gives
`(W_J^N(\tau,a))^{-1}=(\mathcal C_{J,\tau}^N)^{-1/2}(O_{J,\tau}^{CG})^*`, so
substituting into `(D.7mc1)` yields `(PBR.10u16c)`. Since
`P_{J,\tau}^{CG},Q_{J,\tau}^{CG}` are the rank-one spectral projectors of
`\mathcal C_{J,\tau}^N` in transverse rank two, `(PBR.10u16e)` follows by diagonalizing the two transverse modes and
gives `(PBR.10u16f)`-`(PBR.10u16g)` by block multiplication. Symmetry of
`\widetilde S_{J,\tau}^{ref}` gives `(PBR.10u16h)`, and substitution into
`(PBR.10u15g)` yields `(PBR.10u16i)`. The localization implication
`(PBR.10u16j)` is then exactly the same support-plus-`L^p` transfer used in
`(PBR.10u15o)`. ∎

### Corollary PBR.10u17 (the rank-two rotated off-axis packet is an ordinary strain off-axis packet at the reference time)

Keep the rank-two transverse setup of `(PBR.10u16)` and define the rotated
reference projector on `N_a`

```math
\Pi_{J,\tau}^{rot}
:=
O_{J,\tau}^{CG}\,P_{J,\tau}^{CG}\,(O_{J,\tau}^{CG})^*.
\tag{PBR.10u17a}
```

Then

```math
I_{N_a}-\Pi_{J,\tau}^{rot}
=
O_{J,\tau}^{CG}\,Q_{J,\tau}^{CG}\,(O_{J,\tau}^{CG})^*.
\tag{PBR.10u17b}
```

Using `(PBR.10u16b)`,

```math
O_{J,\tau}^{CG}
\bigl(
Q_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}P_{J,\tau}^{CG}
\bigr)
(O_{J,\tau}^{CG})^*
=
(I_{N_a}-\Pi_{J,\tau}^{rot})\,S_J^N(\tau,a)\,\Pi_{J,\tau}^{rot}.
\tag{PBR.10u17c}
```

Since orthogonal conjugation preserves the operator norm,

```math
\bigl|Q_{J,\tau}^{CG}\widetilde S_{J,\tau}^{ref}P_{J,\tau}^{CG}\bigr|_{\mathrm{op}}
=
\bigl|(I_{N_a}-\Pi_{J,\tau}^{rot})\,S_J^N(\tau,a)\,\Pi_{J,\tau}^{rot}\bigr|_{\mathrm{op}}.
\tag{PBR.10u17d}
```

Therefore `(PBR.10u16i)` becomes

```math
\Theta_{J,\tau}^{ref,off}(t,a,b)
\le
4\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl|\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}\,
\chi_{J,\tau}^{CG}\,
\bigl|(I_{N_a}-\Pi_{J,\tau}^{rot})\,S_J^N(\tau,a)\,\Pi_{J,\tau}^{rot}\bigr|_{\mathrm{op}}.
\tag{PBR.10u17e}
```

So in transverse rank two, the reference commutator packet can be read as an
ordinary strain off-axis theorem at the reference time:

```math
\texttt{RefStrainOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefRotOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefCommLoc}_{\mu,p}.
\tag{PBR.10u17f}
```

This is exactly the off-axis block pattern `(OA.7)` from
[psj-plus-off-axis-smallness-implies-bootstrap-envelope.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-off-axis-smallness-implies-bootstrap-envelope.md),
but evaluated on the frozen reference projector `\Pi_{J,\tau}^{rot}` at time
`\tau` rather than on the moving branch reference projector `P_J^{CG}(t,a)`.

This is the sharpest exact reduction reached on the envelope route: the
remaining reference-source theorem is no longer a raw commutator statement, and
no longer even a rotated-strain packet. It is a condition-number-weighted
off-axis localization theorem for the symmetric reference strain block
`(I-\Pi_{J,\tau}^{rot})S_J^N(\tau,a)\Pi_{J,\tau}^{rot}`.

**Proof.**
Identity `(PBR.10u17c)` is just `(PBR.10u16b)` conjugated by
`O_{J,\tau}^{CG}`, together with `(PBR.10u17a)`-`(PBR.10u17b)`. Taking operator
norms gives `(PBR.10u17d)`, and substituting into `(PBR.10u16i)` yields
`(PBR.10u17e)`. The localization implication `(PBR.10u17f)` is the same
support-plus-`L^p` transfer as in `(PBR.10u16j)`. ∎

### Proposition PBR.10u18 (the reference-time off-axis packet reduces to a frozen off-axis block plus an amplitude packet)

Keep the setup of `(PBR.10u17)` and write the frozen reference off-axis block

```math
\mathcal B_{J,\tau}^{ref,str}
:=
(I_{N_a}-\Pi_{J,\tau}^{rot})\,S_J^N(\tau,a)\,\Pi_{J,\tau}^{rot}.
\tag{PBR.10u18a}
```

Define the scalar reference amplitude

```math
\mathfrak A_{J,\tau}^{ref}(a)
:=
4\int_{t_0}^{t_1}
\frac{\mu_2^{CG}(s,a)}{\operatorname{gap}_J^{CG}(s,a)}
\bigl|\mathcal C_{J,\tau}^N\bigr|_{\mathrm{op}}\,
\chi_{J,\tau}^{CG}\,ds.
\tag{PBR.10u18b}
```

Then `(PBR.10u17e)` implies

```math
\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,off}(s,a,b)\,ds
\le
\mathfrak A_{J,\tau}^{ref}(a)\,
\bigl|\mathcal B_{J,\tau}^{ref,str}\bigr|_{\mathrm{op}}.
\tag{PBR.10u18c}
```

Assume there is a measurable bad set `B_J^{ref,str}\subset\mathcal G_J` such
that

```math
\operatorname{supp}\bigl(\mathcal B_{J,\tau}^{ref,str}\bigr)
\subseteq B_J^{ref,str},
\qquad
\mu_J^{pair}(B_J^{ref,str})=o_J(1),
\tag{PBR.10u18d}
```

and assume the frozen off-axis block has a plain pair-measure `L^p` bound

```math
\bigl\|\mathcal B_{J,\tau}^{ref,str}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{ref,str}}.
\tag{PBR.10u18e}
```

If moreover the amplitude is uniformly bounded on the active family,

```math
\sup_{a\in\pi_a(\mathcal G_J)}\mathfrak A_{J,\tau}^{ref}(a)
\le
A_{J,\tau}^{ref},
\tag{PBR.10u18f}
```

then `\texttt{RefStrainOffAxisLoc}_{\mu,p}` holds, with

```math
\left\|
\int_{t_0}^{t_1}\Theta_{J,\tau}^{ref,off}(s,\cdot)\,ds
\right\|_{L^p(d\mu_J^{pair})}
\le
A_{J,\tau}^{ref}\,C_{p,\mathrm{ref,str}}.
\tag{PBR.10u18g}
```

Equivalently,

```math
\texttt{RefAmp}_{\infty}
\;+\;
\texttt{RefFrozenOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefStrainOffAxisLoc}_{\mu,p}.
\tag{PBR.10u18h}
```

If in addition the cocycle-norm packet `SCN.A` holds on `I_0` with

```math
\sup_{s\in I_0}|W_J^N(s,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\tag{PBR.10u18i}
```

and `CGR.A` holds with entrance gap floor `g_0(a)`, then

```math
\operatorname{gap}_J^{CG}(s,a)\ge \frac{g_0(a)}{2},
\qquad
\mu_2^{CG}(s,a)\le \bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}^2
\le
e^{2K_J^{coc}(a)},
\tag{PBR.10u18j}
```

so the amplitude obeys

```math
\mathfrak A_{J,\tau}^{ref}(a)
\le
8|I_0|
\frac{
e^{2K_J^{coc}(a)}\,|\mathcal C_{J,\tau}^N|_{\mathrm{op}}\,\chi_{J,\tau}^{CG}
}{
g_0(a)
}.
\tag{PBR.10u18k}
```

Therefore one exact sufficient packet for `(PBR.10u18f)` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{2K_J^{coc}(a)}\,|\mathcal C_{J,\tau}^N|_{\mathrm{op}}\,\chi_{J,\tau}^{CG}
}{
g_0(a)
}
\le
K_{J,\tau}^{ref,amp}.
\tag{PBR.10u18l}
```

So the remaining exact reference wall is now split honestly into two pieces:
one frozen-time off-axis localization theorem and one reference amplitude /
condition-number packet.

### Corollary PBR.10u18m (the reference amplitude is a forward/inverse cocycle packet)

At the reference time `\tau`, write the singular values of `W_J^N(\tau,a)` on
`N_a` as `\sigma_{J,1}(\tau,a)\ge \sigma_{J,2}(\tau,a)>0`. Then

```math
\mu_{1,\tau}^{CG}=\sigma_{J,1}(\tau,a)^2,
\qquad
\mu_{2,\tau}^{CG}=\sigma_{J,2}(\tau,a)^2,
\tag{PBR.10u18m1}
```

so

```math
\chi_{J,\tau}^{CG}
=
\left(\frac{\mu_{1,\tau}^{CG}}{\mu_{2,\tau}^{CG}}\right)^{1/2}
+
\left(\frac{\mu_{2,\tau}^{CG}}{\mu_{1,\tau}^{CG}}\right)^{1/2}
=
\frac{\sigma_{J,1}(\tau,a)}{\sigma_{J,2}(\tau,a)}
+
\frac{\sigma_{J,2}(\tau,a)}{\sigma_{J,1}(\tau,a)}.
\tag{PBR.10u18m2}
```

Since

```math
|W_J^N(\tau,a)|_{\mathrm{op}}=\sigma_{J,1}(\tau,a),
\qquad
|(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}=\sigma_{J,2}(\tau,a)^{-1},
\tag{PBR.10u18m3}
```

one has

```math
\chi_{J,\tau}^{CG}
\le
2\,|W_J^N(\tau,a)|_{\mathrm{op}}\,
|(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}.
\tag{PBR.10u18m4}
```

Because

```math
|\mathcal C_{J,\tau}^N|_{\mathrm{op}}
=
|W_J^N(\tau,a)|_{\mathrm{op}}^2,
\tag{PBR.10u18m5}
```

the amplitude bound `(PBR.10u18k)` sharpens to

```math
\mathfrak A_{J,\tau}^{ref}(a)
\le
16|I_0|
\frac{
e^{2K_J^{coc}(a)}
|W_J^N(\tau,a)|_{\mathrm{op}}^3
|(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}
}{
g_0(a)
}.
\tag{PBR.10u18m6}
```

Hence a sufficient packet for `\texttt{RefAmp}_{\infty}` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{2K_J^{coc}(a)}
|W_J^N(\tau,a)|_{\mathrm{op}}^3
|(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}
}{
g_0(a)
}
\le
K_{J,\tau}^{ref,coc}.
\tag{PBR.10u18m7}
```

Equivalently,

```math
\texttt{RefCoc}_{\infty}
\;+\;
\texttt{RefInvCoc}_{\infty}
\;+\;
\texttt{RefGapFloor}
\Longrightarrow
\texttt{RefAmp}_{\infty}.
\tag{PBR.10u18m8}
```

So the amplitude side is no longer a mysterious condition-number theorem. It is
exactly a forward cocycle size packet, an inverse cocycle size packet at the
reference time, and the frozen Cauchy-Green gap floor.

### Corollary PBR.10u18n (the only genuinely new amplitude supplier is the inverse-cocycle packet)

Assume `SCN.A` on `I_0`, so that

```math
\sup_{s\in I_0}|W_J^N(s,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\tag{PBR.10u18n1}
```

and assume `CGR.A` with entrance gap floor `g_0(a)`, so that

```math
\operatorname{gap}_J^{CG}(s,a)\ge \frac{g_0(a)}{2}
\qquad\text{for every }s\in I_0.
\tag{PBR.10u18n2}
```

If in addition there is a reference-time inverse cocycle bound

```math
|(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}
\le
e^{K_{J,\tau}^{inv}(a)},
\tag{PBR.10u18n3}
```

then

```math
\mathfrak A_{J,\tau}^{ref}(a)
\le
16|I_0|
\frac{
e^{5K_J^{coc}(a)+K_{J,\tau}^{inv}(a)}
}{
g_0(a)
}.
\tag{PBR.10u18n4}
```

Consequently, one exact sufficient packet for `\texttt{RefAmp}_{\infty}` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{5K_J^{coc}(a)+K_{J,\tau}^{inv}(a)}
}{
g_0(a)
}
\le
K_{J,\tau}^{amp,\star}.
\tag{PBR.10u18n5}
```

Equivalently,

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{CGR}
\Longrightarrow
\texttt{RefAmp}_{\infty}.
\tag{PBR.10u18n6}
```

So after the current reductions, the amplitude side introduces no new forward
cocycle debt, no new inverse-cocycle debt, and no new gap-floor debt beyond
the installed selector-good cocycle packet plus `CGR.A`.

**Proof.**
Integrate `(PBR.10u17e)` over `[t_0,t_1]` to obtain `(PBR.10u18c)`. The
support claim in `(PBR.10u18d)` implies the support of the integrated source is
contained in the same bad set, and `(PBR.10u18g)` is Hölder with
the uniform amplitude bound `(PBR.10u18f)`. This gives `(PBR.10u18h)`. For the
last part, `\mu_2^{CG}(s,a)\le |\mathcal C_J^N(s,a)|_{\mathrm{op}}
=|W_J^N(s,a)|_{\mathrm{op}}^2` and `CGR.A` gives the gap floor, so
`(PBR.10u18k)` follows by substitution into `(PBR.10u18b)`. Identities
`(PBR.10u18m1)`-`(PBR.10u18m5)` are the singular-value formulas on
`N_a`, and `(PBR.10u18m4)` uses `\kappa+\kappa^{-1}\le 2\kappa` for
`\kappa\ge 1`. Substituting into `(PBR.10u18k)` gives `(PBR.10u18m6)`, hence
`(PBR.10u18m8)`. If `(PBR.10u18n1)` and `(PBR.10u18n3)` hold, then
`|W_J^N(\tau,a)|_{\mathrm{op}}^3 |(W_J^N(\tau,a))^{-1}|_{\mathrm{op}}
\le e^{3K_J^{coc}(a)+K_{J,\tau}^{inv}(a)}`. Substituting this into
`(PBR.10u18m6)` yields `(PBR.10u18n4)`, hence `(PBR.10u18n6)`. ∎

### Corollary PBR.10u19 (reference normality identifies the frozen rotated off-axis block with the frozen Cauchy-Green off-axis block)

Keep the rank-two transverse setup of `(PBR.10u18)` and assume the reference
cocycle at time `\tau` is normal:

```math
\bigl[(W_J^N(\tau,a))^*,W_J^N(\tau,a)\bigr]=0.
\tag{PBR.10u19a}
```

Then

```math
\mathcal C_{J,\tau}^N
=
(W_J^N(\tau,a))^*W_J^N(\tau,a)
=
W_J^N(\tau,a)(W_J^N(\tau,a))^*.
\tag{PBR.10u19b}
```

Writing the polar decomposition from `(PBR.10u16a)`,

```math
W_J^N(\tau,a)
=
O_{J,\tau}^{CG}\,(\mathcal C_{J,\tau}^N)^{1/2},
\tag{PBR.10u19c}
```

the identity `(PBR.10u19b)` becomes

```math
O_{J,\tau}^{CG}\,\mathcal C_{J,\tau}^N\,(O_{J,\tau}^{CG})^*
=
\mathcal C_{J,\tau}^N.
\tag{PBR.10u19d}
```

Hence `O_{J,\tau}^{CG}` commutes with `\mathcal C_{J,\tau}^N` and with all of
its spectral projectors. In particular,

```math
\Pi_{J,\tau}^{rot}
=
O_{J,\tau}^{CG}\,P_{J,\tau}^{CG}\,(O_{J,\tau}^{CG})^*
=
P_{J,\tau}^{CG}.
\tag{PBR.10u19e}
```

Therefore the frozen reference off-axis block from `(PBR.10u18a)` collapses to

```math
\mathcal B_{J,\tau}^{ref,str}
=
(I_{N_a}-P_{J,\tau}^{CG})\,S_J^N(\tau,a)\,P_{J,\tau}^{CG}.
\tag{PBR.10u19f}
```

Equivalently,

```math
\texttt{RefNormal}
\Longrightarrow
\texttt{RefFrozenCGOffAxisLoc}_{\mu,p}
\Longrightarrow
\texttt{RefFrozenOffAxisLoc}_{\mu,p}.
\tag{PBR.10u19g}
```

So under the exact normal-reference packet, the remaining frozen wall is no
longer a rotated reference object at all. It is the ordinary off-axis strain
block relative to the frozen Cauchy-Green projector at time `\tau`, i.e. the
same off-axis pattern as `(OA.7)` but with the projector frozen at the
reference time.

**Proof.**
For the polar decomposition `(PBR.10u19c)`, one has
`W_J^N(\tau,a)(W_J^N(\tau,a))^*=O_{J,\tau}^{CG}\mathcal C_{J,\tau}^N(O_{J,\tau}^{CG})^*`.
Thus `(PBR.10u19b)` gives `(PBR.10u19d)`. Since `P_{J,\tau}^{CG}` is a spectral
projector of `\mathcal C_{J,\tau}^N`, it is preserved by any unitary conjugation
that fixes `\mathcal C_{J,\tau}^N`, which yields `(PBR.10u19e)`. Substituting
into `(PBR.10u18a)` gives `(PBR.10u19f)`. ∎

### Proposition PBR.10u20 (under `RefNormal`, the frozen Cauchy-Green off-axis wall transfers from a frozen pair off-axis packet plus a frozen sync-strain packet)

Keep the exact-potential setup and assume `RefNormal`, so `(PBR.10u19f)` holds.
Define the frozen pair projector and its frozen off-axis block by

```math
\Pi_{J,\tau}^{pair}(a,b)
:=
\widehat P_{J,\varepsilon}^{pair}(a,b,\tau),
\qquad
\mathcal B_{J,\tau}^{pair,str}(a,b)
:=
(I_{N_a}-\Pi_{J,\tau}^{pair})\,S_J^N(\tau,a)\,\Pi_{J,\tau}^{pair}.
\tag{PBR.10u20a}
```

Define also the frozen sync-strain density

```math
\Delta_{J,\tau}^{sync,str}(a,b)
:=
\|S_J^N(\tau,a)\|_F\,
\bigl\|\Pi_{J,\tau}^{pair}(a,b)-P_{J,\tau}^{CG}(a)\bigr\|_F.
\tag{PBR.10u20b}
```

Then pointwise on the active family,

```math
\bigl\|
(I_{N_a}-P_{J,\tau}^{CG})\,S_J^N(\tau,a)\,P_{J,\tau}^{CG}
\bigr\|_F
\le
\bigl\|\mathcal B_{J,\tau}^{pair,str}(a,b)\bigr\|_F
+
2\,\Delta_{J,\tau}^{sync,str}(a,b).
\tag{PBR.10u20c}
```

Assume there are measurable bad sets
`B_J^{pair,\tau},B_J^{sync,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\mathcal B_{J,\tau}^{pair,str}\bigr)
\subseteq
B_J^{pair,\tau},
\qquad
\operatorname{supp}\bigl(\Delta_{J,\tau}^{sync,str}\bigr)
\subseteq
B_J^{sync,\tau},
\tag{PBR.10u20d}
```

with

```math
\mu_J^{pair}(B_J^{pair,\tau})=o_J(1),
\qquad
\mu_J^{pair}(B_J^{sync,\tau})=o_J(1),
\tag{PBR.10u20e}
```

and assume the plain pair-measure `L^p` bounds

```math
\bigl\|\mathcal B_{J,\tau}^{pair,str}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{pair},\tau}^{off},
\qquad
\bigl\|\Delta_{J,\tau}^{sync,str}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{sync},\tau}^{str}.
\tag{PBR.10u20f}
```

Then `\texttt{RefFrozenCGOffAxisLoc}_{\mu,p}` holds, with bad set

```math
B_J^{frz,CG}
:=
B_J^{pair,\tau}\cup B_J^{sync,\tau},
\qquad
\mu_J^{pair}(B_J^{frz,CG})=o_J(1),
\tag{PBR.10u20g}
```

and quantitative `L^p` bound

```math
\left\|
(I_{N_a}-P_{J,\tau}^{CG})\,S_J^N(\tau,\cdot)\,P_{J,\tau}^{CG}
\right\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{pair},\tau}^{off}
+
2\,C_{p,\mathrm{sync},\tau}^{str}.
\tag{PBR.10u20h}
```

Equivalently,

```math
\texttt{RefNormal}
\;+\;
\texttt{PairFrozenOffAxisLoc}_{\mu,p}
\;+\;
\texttt{FrozenSyncStrainLoc}_{\mu,p}
\Longrightarrow
\texttt{RefFrozenCGOffAxisLoc}_{\mu,p}.
\tag{PBR.10u20i}
```

So under exact reference normality, the remaining frozen wall splits honestly
once more: one part is a frozen pair-level off-axis supplier, and the other is
a frozen strain-weighted synchronization supplier.

**Proof.**
Identity `(PBR.10u20c)` is exactly the pointwise transfer inequality
`(PSS.16)` from
[pair-topslot-and-offaxis-suppliers-imply-ssc.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pair-topslot-and-offaxis-suppliers-imply-ssc.md),
evaluated at the frozen time `t=\tau` with
`\Pi_J^{ref}=P_{J,\tau}^{CG}` and
`\Pi_J^{pair}=\Pi_{J,\tau}^{pair}`.
The support statement follows from `(PBR.10u20d)`-`(PBR.10u20g)`, and the `L^p`
bound `(PBR.10u20h)` is the triangle inequality together with
`(PBR.10u20f)`. ∎

### Corollary PBR.10u20m (the frozen pair off-axis packet reduces to a frozen symmetric surrogate packet)

Keep the frozen pair projector `\Pi_{J,\tau}^{pair}` from `(PBR.10u20a)`. Let
`T_{J,\tau}^{pair}(a,b)` be a symmetric bundle tensor on `N_a` with

```math
\Pi_{\max}\!\bigl(T_{J,\tau}^{pair}(a,b)\bigr)
=
\Pi_{J,\tau}^{pair}(a,b).
\tag{PBR.10u20m1}
```

Define the frozen surrogate defect

```math
\Delta_{J,\tau}^{pair,sur}(a,b)
:=
\bigl\|S_J^N(\tau,a)-T_{J,\tau}^{pair}(a,b)\bigr\|_{\mathrm{op}}.
\tag{PBR.10u20m2}
```

Then pointwise,

```math
\bigl\|\mathcal B_{J,\tau}^{pair,str}(a,b)\bigr\|_F
\le
\Delta_{J,\tau}^{pair,sur}(a,b).
\tag{PBR.10u20m3}
```

Assume there is a measurable bad set `B_J^{pair,sur,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(\Delta_{J,\tau}^{pair,sur}\bigr)
\subseteq
B_J^{pair,sur,\tau},
\qquad
\mu_J^{pair}(B_J^{pair,sur,\tau})=o_J(1),
\tag{PBR.10u20m4}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|\Delta_{J,\tau}^{pair,sur}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{pair,sur}.
\tag{PBR.10u20m5}
```

Then `\texttt{PairFrozenOffAxisLoc}_{\mu,p}` holds with the same bad set and
quantitative bound

```math
\bigl\|\mathcal B_{J,\tau}^{pair,str}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{pair,sur}.
\tag{PBR.10u20m6}
```

Equivalently,

```math
\texttt{FrozenPairSurLoc}_{\mu,p}
\Longrightarrow
\texttt{PairFrozenOffAxisLoc}_{\mu,p}.
\tag{PBR.10u20m7}
```

This is exactly the frozen-time slice of the surrogate argument from
[localized-projector-moment-concentration-implies-pair-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-concentration-implies-pair-suppliers.md):
the pair off-axis wall is not primitive once a symmetric frozen pair surrogate
with the correct top projector is available.

One natural exact-potential candidate is the frozen localized projector-moment
tensor `\widetilde S_J(\tau)`, but the current repo still does not contain an
installed frozen support-plus-`L^p` localization theorem for
`\|S_J^N(\tau)-\widetilde S_J(\tau)\|_{\mathrm{op}}`. So the honest new wall is
`FrozenPairSurLoc_{\mu,p}`, not yet a fully discharged projector-moment packet.

**Proof.**
Since `\Pi_{J,\tau}^{pair}` is the top projector of `T_{J,\tau}^{pair}`,

```math
(I_{N_a}-\Pi_{J,\tau}^{pair})\,T_{J,\tau}^{pair}\,\Pi_{J,\tau}^{pair}=0.
```

Therefore

```math
\mathcal B_{J,\tau}^{pair,str}
=(I_{N_a}-\Pi_{J,\tau}^{pair})
\bigl(S_J^N(\tau,a)-T_{J,\tau}^{pair}\bigr)
\Pi_{J,\tau}^{pair},
```

which is exactly the frozen-time version of `(LPM.8)`. Taking Frobenius norms
gives `(PBR.10u20m3)`, i.e. the frozen-time version of `(LPM.9)`. The support
and `L^p` statements are exactly `(PBR.10u20m4)`-`(PBR.10u20m5)`. ∎

### Corollary PBR.10u20n (the localized projector-moment realization gives one exact sufficient frozen pair-surrogate packet)

Keep the exact-potential branch and assume the frozen pair surrogate in
`(PBR.10u20m1)` is realized by a pair-family symmetric projector-moment
surrogate
`\Sigma_{J,\tau}^{pair,mom}(a,b)` coming from the localized projector-moment
route of
[localized-projector-moment-concentration-implies-pair-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-concentration-implies-pair-suppliers.md):

```math
T_{J,\tau}^{pair}(a,b)
:=
\Sigma_{J,\tau}^{pair,mom}(a,b),
\qquad
\Pi_{J,\tau}^{pair}(a,b)
=
\Pi_{\max}\!\bigl(\Sigma_{J,\tau}^{pair,mom}(a,b)\bigr).
\tag{PBR.10u20n1}
```

Define the frozen localized projector-moment defect

```math
\Delta_{J,\tau}^{pair,mom}(a,b)
:=
\bigl\|S_J^N(\tau,a)-\Sigma_{J,\tau}^{pair,mom}(a,b)\bigr\|_{\mathrm{op}}.
\tag{PBR.10u20n2}
```

Assume there is a measurable bad set `B_J^{pair,mom,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(\Delta_{J,\tau}^{pair,mom}\bigr)
\subseteq
B_J^{pair,mom,\tau},
\qquad
\mu_J^{pair}(B_J^{pair,mom,\tau})=o_J(1),
\tag{PBR.10u20n3}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|\Delta_{J,\tau}^{pair,mom}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{pair,mom}.
\tag{PBR.10u20n4}
```

Then `\texttt{FrozenPairSurLoc}_{\mu,p}` holds, hence
`\texttt{PairFrozenOffAxisLoc}_{\mu,p}` holds by `(PBR.10u20m7)`.
Equivalently,

```math
\texttt{FrozenPairMomentLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenPairSurLoc}_{\mu,p}
\Longrightarrow
\texttt{PairFrozenOffAxisLoc}_{\mu,p}.
\tag{PBR.10u20n5}
```

So on the exact projector-moment realization, the remaining pair off-axis wall
can be read as a frozen operator-localization theorem for
`\|S_J^N(\tau)-\Sigma_{J,\tau}^{pair,mom}\|_{\mathrm{op}}`.

This does **not** claim that such a frozen localization theorem is already on
disk. It only identifies the exact projector-moment descendant if that route is
the one being used.

**Proof.**
Under `(PBR.10u20n1)`, one has
`\Delta_{J,\tau}^{pair,sur}=\Delta_{J,\tau}^{pair,mom}` in
`(PBR.10u20m2)`. So `(PBR.10u20m7)` applies directly. ∎

### Audit Note PBR.10u20o (the localized-projector local wall is a parallel bypass, not a further reduction of the frozen pair-moment packet)

The exact localized-projector notes do furnish a sharper independent local
route, but it is **not** a further reduction of `(PBR.10u20n5)`.

Indeed, on the tail-free exact `PSJ+.1` realization
[exact-psj-plus-1-construction-eliminates-localization-tail.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-psj-plus-1-construction-eliminates-localization-tail.md)
and the frozen transported packet
[frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md)
show that the localized-projector local dynamics wall collapses to weighted
theorem-safe entrance plus weighted corotational drift:

```math
\texttt{Weighted theorem-safe entrance}
\;+\;
\texttt{Weighted corotational drift}
\Longrightarrow
\texttt{localized projector concentration}
\Longrightarrow
\texttt{LPMC.26}.
\tag{PBR.10u20o1}
```

This is a parallel exact bypass on the localized-projector branch. It does
**not** currently imply `\texttt{FrozenPairMomentLoc}_{\mu,p}`, because no
installed theorem on disk converts that weighted localized-projector packet
into the frozen support-plus-`L^p` localization theorem
`(PBR.10u20n3)`-`(PBR.10u20n4)` for
`\Delta_{J,\tau}^{pair,mom}`.

So the exact branch now has a clean asymmetry:

```math
\texttt{FrozenPairMomentLoc}_{\mu,p}
\tag{PBR.10u20o2}
```

is the honest pair-side frozen wall on the present reference-source splice,
while `(PBR.10u20o1)` is a separate localized-projector exact bypass rather
than a further descendant of `(PBR.10u20n5)`.

### Corollary PBR.10u20p (an overstrong weighted projector-moment discrepancy theorem gives a parallel pair-side bypass)

Keep the exact projector-moment realization `(PBR.10u20n1)`, and suppose that
at the frozen reference time `\tau` one has the weighted square discrepancy
bound

```math
\int_{\mathcal G_J}
M_J^2
\frac{
\bigl\|S_J^N(\tau,a)-\Sigma_{J,\tau}^{pair,mom}(a,b)\bigr\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(\tau,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{PBR.10u20p1}
```

Then the pair-level supplier packets hold directly:

```math
\texttt{Pair-OffAxis}
\quad+\quad
\texttt{Pair-TopSlot}.
\tag{PBR.10u20p2}
```

Consequently, after adjoining the already installed synchronization and ratio
packets from
[pair-topslot-and-offaxis-suppliers-imply-ssc.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pair-topslot-and-offaxis-suppliers-imply-ssc.md),
one gets

```math
\texttt{Sync}
\;+\;
\texttt{Ratio}
\;+\;
(PBR.10u20p1)
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10u20p3}
```

So `(PBR.10u20p1)` is a genuine parallel stronger sufficient bypass on the
pair side. It is stronger than `\texttt{FrozenPairMomentLoc}_{\mu,p}`, but it
does bypass that bad-set/localization wall entirely.

**Proof.**
This is exactly the frozen-time version of the surrogate-concentration route
`LPM.A`: with
`T_J^{pair}:=\Sigma_{J,\tau}^{pair,mom}` and
`\Pi_J^{pair}:=\Pi_{\max}(\Sigma_{J,\tau}^{pair,mom})`, the pointwise bounds
`(LPM.10)` and `(LPM.16)` give

```math
\delta_{J,\mathrm{pair}}^{off}
\le
\frac{
\|S_J^N(\tau,a)-\Sigma_{J,\tau}^{pair,mom}(a,b)\|_{\mathrm{op}}
}{
g_J^{str}(\tau,a)
},
\tag{PBR.10u20p4}
```

and

```math
\delta_{J,\mathrm{pair}}^{ray}
\le
2\frac{
\|S_J^N(\tau,a)-\Sigma_{J,\tau}^{pair,mom}(a,b)\|_{\mathrm{op}}
}{
g_J^{str}(\tau,a)
}.
\tag{PBR.10u20p5}
```

Integrating `(PBR.10u20p4)`-`(PBR.10u20p5)` against `M_J^2\,d\mu_J^{pair}`
and using `(PBR.10u20p1)` gives `(PBR.10u20p2)`. Then `PSS.B` yields
`(PBR.10u20p3)`. ∎

### Corollary PBR.10u20q (the overstrong transported-strip discrepancy route implies the frozen pair-side bypass on every frozen slice)

Work on the strengthened transported projector-moment route from
[lpm-transport-comparison-and-residual-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/lpm-transport-comparison-and-residual-split.md),
and assume the transported strip is realized directly on the pair family so
that `\Omega_J=\mathcal G_J` and `d\bar\mu_J=d\mu_J^{pair}`.

Assume further that the frozen pair-family projector-moment surrogate is the
time slice of the transported localized projector moment:

```math
\Sigma_{J,\tau}^{pair,mom}(a,b)
:=
\widetilde S_J(a,b,\tau).
\tag{PBR.10u20q1}
```

If the overstrong discrepancy theorem `LPM.C` supplies

```math
\sup_{t\in I_0}
\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(t,a)-\widetilde S_J(a,b,t)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(t,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)
=
o_J(1),
\tag{PBR.10u20q2}
```

then for every frozen time `\tau\in I_0`,

```math
\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(\tau,a)-\Sigma_{J,\tau}^{pair,mom}(a,b)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(\tau,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{PBR.10u20q3}
```

Hence `(PBR.10u20p3)` applies on every frozen slice:

```math
\texttt{LPM.C}
\Longrightarrow
(PBR.10u20p1)
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10u20q4}
```

So the pair-side overstrong bypass is itself a direct frozen descendant of the
transport-comparison route, once that route is realized on the transported pair
family.

**Proof.**
Under `(PBR.10u20q1)`, the integrand in `(PBR.10u20q3)` is exactly the
integrand in `(PBR.10u20q2)` evaluated at `t=\tau`. Since `(PBR.10u20q2)` is a
uniform-in-time bound, evaluating it at `t=\tau` gives `(PBR.10u20q3)`. Then
`(PBR.10u20p3)` applies. ∎

### Corollary PBR.10u20r (a spacetime weighted discrepancy theorem yields a good frozen slice for the pair-side bypass)

Keep the pair-family transported realization `(PBR.10u20q1)`. Assume only the
spacetime weighted discrepancy bound

```math
\int_{I_0}\!\!\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(t,a)-\widetilde S_J(a,b,t)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(t,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)\,dt
=
o_J(1).
\tag{PBR.10u20r1}
```

Then there exists a reference time `\tau_J\in I_0` such that

```math
\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(\tau_J,a)-\Sigma_{J,\tau_J}^{pair,mom}(a,b)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(\tau_J,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)
\le
\frac{1}{|I_0|}
\int_{I_0}\!\!\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(t,a)-\widetilde S_J(a,b,t)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(t,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)\,dt,
\tag{PBR.10u20r2}
```

and in particular

```math
\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(\tau_J,a)-\Sigma_{J,\tau_J}^{pair,mom}(a,b)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(\tau_J,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b)
=
o_J(1).
\tag{PBR.10u20r3}
```

Hence the pair-side bypass fires on that good frozen slice:

```math
(PBR.10u20r1)
\Longrightarrow
\exists\,\tau_J\in I_0:\ (PBR.10u20p1)
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10u20r4}
```

So even without the stronger uniform-in-time packet `(PBR.10u20q2)`, a
spacetime weighted discrepancy theorem is enough to produce one good frozen
reference slice for the pair-side overstrong route.

**Proof.**
Define

```math
F_J(t)
:=
\int_{\mathcal G_J}
M_J^2
\frac{
\|S_J^N(t,a)-\widetilde S_J(a,b,t)\|_{\mathrm{op}}^2
}{
\bigl(g_J^{str}(t,a)\bigr)^2
}
\,d\mu_J^{pair}(a,b).
\tag{PBR.10u20r5}
```

Then `F_J\ge 0` and `(PBR.10u20r1)` says `\int_{I_0}F_J(t)\,dt=o_J(1)`. Hence
there exists `\tau_J\in I_0` with
`F_J(\tau_J)\le |I_0|^{-1}\int_{I_0}F_J(t)\,dt`, which is exactly
`(PBR.10u20r2)`. Under `(PBR.10u20q1)`, `F_J(\tau_J)` is the left-hand side of
`(PBR.10u20r3)`. Then `(PBR.10u20p3)` applies. ∎

### Corollary PBR.10u21 (the frozen sync-strain packet reduces to a frozen strain amplitude plus frozen projector synchronization)

Keep the notation of `(PBR.10u20)` and define the frozen projector-sync defect

```math
\Delta_{J,\tau}^{sync,\Pi}(a,b)
:=
\bigl\|\Pi_{J,\tau}^{pair}(a,b)-P_{J,\tau}^{CG}(a)\bigr\|_F.
\tag{PBR.10u21a}
```

Assume there is a measurable bad set `B_J^{sync,\Pi}\subset\mathcal G_J` such
that

```math
\operatorname{supp}\bigl(\Delta_{J,\tau}^{sync,\Pi}\bigr)
\subseteq
B_J^{sync,\Pi},
\qquad
\mu_J^{pair}(B_J^{sync,\Pi})=o_J(1),
\tag{PBR.10u21b}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|\Delta_{J,\tau}^{sync,\Pi}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\mathrm{sync},\tau}^{\Pi}.
\tag{PBR.10u21c}
```

If moreover the frozen strain amplitude is uniformly bounded,

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\|S_J^N(\tau,a)\|_F
\le
S_{J,\tau}^{frz},
\tag{PBR.10u21d}
```

then `\texttt{FrozenSyncStrainLoc}_{\mu,p}` holds with the same bad set and
with quantitative bound

```math
\bigl\|\Delta_{J,\tau}^{sync,str}\bigr\|_{L^p(d\mu_J^{pair})}
\le
S_{J,\tau}^{frz}\,C_{p,\mathrm{sync},\tau}^{\Pi}.
\tag{PBR.10u21e}
```

Equivalently,

```math
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{FrozenSyncProjLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenSyncStrainLoc}_{\mu,p}.
\tag{PBR.10u21f}
```

So the new sync half of the frozen wall is not primitive either: it splits into
one frozen-time strain-amplitude packet and one frozen-time projector
localization packet.

**Proof.**
By definition,
`\Delta_{J,\tau}^{sync,str}
=
\|S_J^N(\tau,a)\|_F\,\Delta_{J,\tau}^{sync,\Pi}`.
Thus the support claim is `(PBR.10u21b)`, and `(PBR.10u21e)`
follows from the uniform bound `(PBR.10u21d)` multiplied into
`(PBR.10u21c)`. ∎

### Corollary PBR.10u22 (frozen projector synchronization localizes from a frozen `D.7mq` error packet)

Assume `p\ge 2`, and keep the exact-potential pair-to-Cauchy-Green packet
`(D.7mq3)`. At the frozen time `\tau`, define

```math
R_{J,\tau}^{pair,CG}(a,b)
:=
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,\tau).
\tag{PBR.10u22a}
```

Then `(D.7mq3)` gives

```math
\bigl(\Delta_{J,\tau}^{sync,\Pi}(a,b)\bigr)^2
\le
R_{J,\tau}^{pair,CG}(a,b).
\tag{PBR.10u22b}
```

Assume there is a measurable bad set `B_J^{pair,CG,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(R_{J,\tau}^{pair,CG}\bigr)
\subseteq
B_J^{pair,CG,\tau},
\qquad
\mu_J^{pair}(B_J^{pair,CG,\tau})=o_J(1),
\tag{PBR.10u22c}
```

and assume the plain pair-measure bound

```math
\bigl\|R_{J,\tau}^{pair,CG}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{p/2,\tau}^{pair,CG}.
\tag{PBR.10u22d}
```

Then `\texttt{FrozenSyncProjLoc}_{\mu,p}` holds with the same bad set and
quantitative bound

```math
\bigl\|\Delta_{J,\tau}^{sync,\Pi}\bigr\|_{L^p(d\mu_J^{pair})}
\le
\bigl(C_{p/2,\tau}^{pair,CG}\bigr)^{1/2}.
\tag{PBR.10u22e}
```

Equivalently,

```math
\texttt{FrozenPairCGErrLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenSyncProjLoc}_{\mu,p}.
\tag{PBR.10u22f}
```

So the frozen synchronization half of the exact wall can be pushed all the way
down to a frozen-time localization theorem for the installed `D.7mq` error
density itself.

**Proof.**
The pointwise estimate `(PBR.10u22b)` is exactly `(D.7mq3)` evaluated at
`t=\tau`. Hence
`\Delta_{J,\tau}^{sync,\Pi}\le (R_{J,\tau}^{pair,CG})^{1/2}` pointwise. The
support claim follows from `(PBR.10u22c)`, and raising to the `p`-th power gives
`\bigl(\Delta_{J,\tau}^{sync,\Pi}\bigr)^p\le
\bigl(R_{J,\tau}^{pair,CG}\bigr)^{p/2}`. Integrating proves
`(PBR.10u22e)`. ∎

### Corollary PBR.10u23 (the frozen `D.7mq` error packet reduces to frozen linearization plus weighted shape packets)

Assume `p\ge 2`, and keep the explicit error formula `(D.7mq2)`. Define the
frozen linearization and weighted shape densities

```math
\eta_{J,\tau}^{lin}(a)
:=
\operatorname{Err}_{J,\varepsilon}^{lin}(\tau,a),
\qquad
\eta_{J,\tau}^{shape,w}(a)
:=
\bigl|\mathbf W_J^{coc}(\tau,a)\bigr|_{\mathrm{op}}^2\,
\operatorname{Err}_{J,\varepsilon}^{shape}(\tau,a).
\tag{PBR.10u23a}
```

Assume a frozen Cauchy-Green gap floor

```math
\gamma_J^{CG}(\tau,a)\ge \gamma_{J,\tau}^{CG,\ast}>0
\qquad\text{on }\pi_a(\mathcal G_J),
\tag{PBR.10u23b}
```

and assume there are measurable bad sets
`B_J^{lin,\tau},B_J^{shape,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\eta_{J,\tau}^{lin}\bigr)
\subseteq
B_J^{lin,\tau},
\qquad
\operatorname{supp}\bigl(\eta_{J,\tau}^{shape,w}\bigr)
\subseteq
B_J^{shape,\tau},
\tag{PBR.10u23c}
```

with

```math
\mu_J^{pair}(B_J^{lin,\tau})=o_J(1),
\qquad
\mu_J^{pair}(B_J^{shape,\tau})=o_J(1),
\tag{PBR.10u23d}
```

and the plain pair-measure `L^p` bounds

```math
\bigl\|\eta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{lin},
\qquad
\bigl\|\eta_{J,\tau}^{shape,w}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{shape,w}.
\tag{PBR.10u23e}
```

Then `\texttt{FrozenPairCGErrLoc}_{\mu,p/2}` holds, with bad set

```math
B_J^{pair,CG,\tau}
:=
B_J^{lin,\tau}\cup B_J^{shape,\tau},
\qquad
\mu_J^{pair}(B_J^{pair,CG,\tau})=o_J(1),
\tag{PBR.10u23f}
```

and quantitative bound

```math
\bigl\|R_{J,\tau}^{pair,CG}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
\frac{C_{CG,\mathrm{DK}}}{(\gamma_{J,\tau}^{CG,\ast})^2}
\bigl(C_{p,\tau}^{lin}+C_{p,\tau}^{shape,w}\bigr)^2.
\tag{PBR.10u23g}
```

Equivalently,

```math
\texttt{FrozenCGGapFloor}
\;+\;
\texttt{FrozenLinLoc}_{\mu,p}
\;+\;
\texttt{FrozenWShapeLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenPairCGErrLoc}_{\mu,p/2}.
\tag{PBR.10u23h}
```

So the frozen synchronization wall is not really the `D.7mq` error density
either: it is already reduced to two frozen upstream packets, one linearization
and one weighted selector-shape packet, under the frozen simple-top gap floor.

**Proof.**
Under `(PBR.10u23b)`, the coefficient in `(D.7mq2)` is bounded by
`C_{CG,\mathrm{DK}}/(\gamma_{J,\tau}^{CG,\ast})^2`. Thus

```math
R_{J,\tau}^{pair,CG}
\le
\frac{C_{CG,\mathrm{DK}}}{(\gamma_{J,\tau}^{CG,\ast})^2}
\bigl(\eta_{J,\tau}^{lin}+\eta_{J,\tau}^{shape,w}\bigr)^2.
```

The support statement follows from `(PBR.10u23c)`-`(PBR.10u23f)`. Taking the
`L^{p/2}` norm and using Minkowski on the `L^p` norm of
`\eta_{J,\tau}^{lin}+\eta_{J,\tau}^{shape,w}` gives `(PBR.10u23g)`. ∎

### Corollary PBR.10u24 (the frozen weighted shape packet reduces to cocycle amplitude plus frozen raw shape localization)

Keep the setup of `(PBR.10u23)` and define the frozen raw shape density

```math
\eta_{J,\tau}^{shape}(a)
:=
\operatorname{Err}_{J,\varepsilon}^{shape}(\tau,a).
\tag{PBR.10u24a}
```

Assume there is a measurable bad set `B_J^{shape,raw,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(\eta_{J,\tau}^{shape}\bigr)
\subseteq
B_J^{shape,raw,\tau},
\qquad
\mu_J^{pair}(B_J^{shape,raw,\tau})=o_J(1),
\tag{PBR.10u24b}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|\eta_{J,\tau}^{shape}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{shape}.
\tag{PBR.10u24c}
```

If moreover the cocycle amplitude at the frozen time is uniformly bounded,

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\bigl|\mathbf W_J^{coc}(\tau,a)\bigr|_{\mathrm{op}}^2
\le
K_{J,\tau}^{coc,frz},
\tag{PBR.10u24d}
```

then `\texttt{FrozenWShapeLoc}_{\mu,p}` holds with the same bad set and bound

```math
\bigl\|\eta_{J,\tau}^{shape,w}\bigr\|_{L^p(d\mu_J^{pair})}
\le
K_{J,\tau}^{coc,frz}\,C_{p,\tau}^{shape}.
\tag{PBR.10u24e}
```

Equivalently,

```math
\texttt{FrozenCoc}_{\infty}
\;+\;
\texttt{FrozenShapeLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenWShapeLoc}_{\mu,p}.
\tag{PBR.10u24f}
```

So the frozen weighted-shape supplier is itself just the raw frozen
selector-shape localization multiplied by a frozen cocycle-amplitude packet.

**Proof.**
By definition,
`\eta_{J,\tau}^{shape,w}
=
\bigl|\mathbf W_J^{coc}(\tau,a)\bigr|_{\mathrm{op}}^2\eta_{J,\tau}^{shape}`.
The support statement is `(PBR.10u24b)`, and `(PBR.10u24e)`
follows from the uniform bound `(PBR.10u24d)` multiplied into
`(PBR.10u24c)`. ∎

### Corollary PBR.10u24g (the frozen raw shape packet is exactly a frozen directional-isotropy packet)

Keep the shape measure from `PTC-Shape.A`, and at the frozen time `\tau` define
the directional quadratic defect

```math
\eta_{J,\tau}^{shape,dir}(a)
:=
\sup_{v\in S(N_a)}
\left|
\int_{S(N_a)}
\left(
(\omega\!\cdot\! v)^2-\frac1d
\right)
d\nu_{J,\varepsilon}^{shape}(\tau,a;\omega)
\right|.
\tag{PBR.10u24g1}
```

Then, by the exact equivalence `(PTCS.3e)` / `(A19)`, one has pointwise

```math
\eta_{J,\tau}^{shape}(a)
=
\eta_{J,\tau}^{shape,dir}(a).
\tag{PBR.10u24g2}
```

Consequently, if there is a measurable bad set
`B_J^{shape,dir,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\eta_{J,\tau}^{shape,dir}\bigr)
\subseteq
B_J^{shape,dir,\tau},
\qquad
\mu_J^{pair}(B_J^{shape,dir,\tau})=o_J(1),
\tag{PBR.10u24g3}
```

and if

```math
\bigl\|\eta_{J,\tau}^{shape,dir}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{shape,dir},
\tag{PBR.10u24g4}
```

then `\texttt{FrozenShapeLoc}_{\mu,p}` holds with the same bad set and bound

```math
\bigl\|\eta_{J,\tau}^{shape}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{shape,dir}.
\tag{PBR.10u24g5}
```

Equivalently,

```math
\texttt{FrozenShapeDirLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenShapeLoc}_{\mu,p}.
\tag{PBR.10u24g6}
```

So the honest frozen shape wall is not an abstract tensor remainder. It is the
frozen-time slice of the selector-good degree-2 isotropy packet.

**Proof.**
The identity `(PBR.10u24g2)` is exactly the variational equivalence between the
operator norm of the normalized shape tensor defect and the directional
quadratic test from `(PTCS.3e)` / `(A19)`, evaluated at `t=\tau`. The support
and `L^p` statements then transfer verbatim. ∎

### Corollary PBR.10u24h (the frozen linearization packet reduces to frozen differentiability-exceptional pricing)

Assume `p\ge 2`, and keep the weighted pricing theorem `PTCL.D`. At the frozen
reference time `\tau`, choose one admissible tolerance schedule from `PTCL.D`
and write

```math
\vartheta_{J,\tau}^{lin}(a)
:=
\eta_{J,\varepsilon}(\tau,a).
\tag{PBR.10u24h1}
```

Define the frozen differentiability-exceptional price

```math
\Theta_{J,\tau}^{diff}(a)
:=
\Theta_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}(\tau,a)
=
\int_{E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,\tau;b),
\tag{PBR.10u24h2}
```

and the total frozen linearization-price density

```math
\Xi_{J,\tau}^{lin,price}(a)
:=
C_*\,\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
+
L_*^2\,\Theta_{J,\tau}^{diff}(a).
\tag{PBR.10u24h3}
```

Then `(PTCL.3x)` evaluated at `t=\tau` gives the pointwise domination

```math
\bigl(\eta_{J,\tau}^{lin}(a)\bigr)^2
\le
\Xi_{J,\tau}^{lin,price}(a).
\tag{PBR.10u24h4}
```

Assume there is a measurable bad set `B_J^{lin,price,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(\Xi_{J,\tau}^{lin,price}\bigr)
\subseteq
B_J^{lin,price,\tau},
\qquad
\mu_J^{pair}(B_J^{lin,price,\tau})=o_J(1).
\tag{PBR.10u24h5}
```

and assume the plain pair-measure bound

```math
\bigl\|\Xi_{J,\tau}^{lin,price}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{p/2,\tau}^{lin,price}.
\tag{PBR.10u24h6}
```

Then `\texttt{FrozenLinLoc}_{\mu,p}` holds with the same bad set and with
quantitative bound

```math
\bigl\|\eta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}
\le
\bigl(C_{p/2,\tau}^{lin,price}\bigr)^{1/2}.
\tag{PBR.10u24h7}
```

Equivalently,

```math
\texttt{FrozenDiffPriceLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenLinLoc}_{\mu,p}.
\tag{PBR.10u24h8}
```

So the honest frozen linearization wall is not a free residual norm. It is the
frozen-time slice of the differentiability-exceptional pricing theorem already
isolated in `PTCL.D`.

**Proof.**
The pointwise inequality `(PBR.10u24h4)` is exactly `(PTCL.3x)` evaluated at
`t=\tau` with the admissible frozen tolerance schedule
`\vartheta_{J,\tau}^{lin}`. Hence the support claim for `\eta_{J,\tau}^{lin}`
follows from `(PBR.10u24h5)`. Raising `(PBR.10u24h4)` to the power `p/2` and
integrating gives
`\|\eta_{J,\tau}^{lin}\|_{L^p(d\mu_J^{pair})}^p
\le
\|\Xi_{J,\tau}^{lin,price}\|_{L^{p/2}(d\mu_J^{pair})}^{p/2}`,
which is `(PBR.10u24h7)`. ∎

### Corollary PBR.10u24i (the frozen differentiability-exceptional price splits into a tolerance packet and a weighted exceptional-set packet)

Keep the notation of `(PBR.10u24h)` and define

```math
\Xi_{J,\tau}^{tol}(a)
:=
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2,
\qquad
\Xi_{J,\tau}^{diff,w}(a)
:=
\Theta_{J,\tau}^{diff}(a).
\tag{PBR.10u24i1}
```

Assume there are measurable bad sets
`B_J^{tol,\tau},B_J^{diff,w,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\vartheta_{J,\tau}^{lin}\bigr)
\subseteq
B_J^{tol,\tau},
\qquad
\operatorname{supp}\bigl(\Theta_{J,\tau}^{diff}\bigr)
\subseteq
B_J^{diff,w,\tau},
\tag{PBR.10u24i2}
```

with

```math
\mu_J^{pair}(B_J^{tol,\tau})=o_J(1),
\qquad
\mu_J^{pair}(B_J^{diff,w,\tau})=o_J(1),
\tag{PBR.10u24i3}
```

and assume the plain pair-measure bounds

```math
\bigl\|\vartheta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{tol},
\qquad
\bigl\|\Theta_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{p/2,\tau}^{diff,w}.
\tag{PBR.10u24i4}
```

Then `\texttt{FrozenDiffPriceLoc}_{\mu,p/2}` holds, with bad set

```math
B_J^{lin,price,\tau}
:=
B_J^{tol,\tau}\cup B_J^{diff,w,\tau},
\qquad
\mu_J^{pair}(B_J^{lin,price,\tau})=o_J(1),
\tag{PBR.10u24i5}
```

and quantitative bound

```math
\bigl\|\Xi_{J,\tau}^{lin,price}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_*\,\bigl(C_{p,\tau}^{tol}\bigr)^2
+
L_*^2\,C_{p/2,\tau}^{diff,w}.
\tag{PBR.10u24i6}
```

Equivalently,

```math
\texttt{FrozenTolLoc}_{\mu,p}
\;+\;
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffPriceLoc}_{\mu,p/2}.
\tag{PBR.10u24i7}
```

So the price packet exposed in `(PBR.10u24h)` is not primitive either. It
already splits into one scalar tolerance-schedule packet and one weighted
exceptional-set price packet.

**Proof.**
By `(PBR.10u24h3)`,
`\Xi_{J,\tau}^{lin,price}=C_*\,\Xi_{J,\tau}^{tol}+L_*^2\,\Xi_{J,\tau}^{diff,w}`.
The support claim follows from `(PBR.10u24i2)`-`(PBR.10u24i5)`. For the norm,
use
`\|\Xi_{J,\tau}^{tol}\|_{L^{p/2}(d\mu_J^{pair})}
=
\|\vartheta_{J,\tau}^{lin}\|_{L^p(d\mu_J^{pair})}^2`
and then apply `(PBR.10u24i4)`. ∎

### Corollary PBR.10u24j (under the selector-scale hypotheses, the frozen weighted exceptional-set price reduces to frozen exceptional-set measure localization)

Keep the notation of `(PBR.10u24h)`, assume the selector-scale realization
`(PTCL.3ai)` and the active-pair scale packet `(PTCL.3aj)`, and define the
frozen exceptional-set measure density

```math
\mu_{J,\tau}^{diff}(a)
:=
\mu_{J,\varepsilon}^{pair}
\bigl(E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)\bigr).
\tag{PBR.10u24j1}
```

By `PTCL.H`, bounded collar support at the frozen time is automatic; write this
as

```math
|\xi_{ab}|
\le
R_{J,\tau}^{frz}(a)
\qquad
\text{for }\mu_{J,\varepsilon}^{pair}(a,\tau;\cdot)\text{-a.e. }b.
\tag{PBR.10u24j2}
```

Then `PTCL.F` evaluated at `t=\tau` gives the pointwise domination

```math
\Theta_{J,\tau}^{diff}(a)
\le
\bigl(R_{J,\tau}^{frz}(a)\bigr)^2\,\mu_{J,\tau}^{diff}(a).
\tag{PBR.10u24j3}
```

Assume moreover that

```math
\sup_{a\in\pi_a(\mathcal G_J)}R_{J,\tau}^{frz}(a)
\le
R_{J,\tau}^{frz,\ast}<\infty,
\tag{PBR.10u24j4}
```

and that there is a measurable bad set `B_J^{diff,meas,\tau}\subset\mathcal G_J`
such that

```math
\operatorname{supp}\bigl(\mu_{J,\tau}^{diff}\bigr)
\subseteq
B_J^{diff,meas,\tau},
\qquad
\mu_J^{pair}(B_J^{diff,meas,\tau})=o_J(1),
\tag{PBR.10u24j5}
```

with plain pair-measure bound

```math
\bigl\|\mu_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{p/2,\tau}^{diff,meas}.
\tag{PBR.10u24j6}
```

Then `\texttt{FrozenDiffWeightLoc}_{\mu,p/2}` holds with the same bad set and
bound

```math
\bigl\|\Theta_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
\bigl(R_{J,\tau}^{frz,\ast}\bigr)^2\,C_{p/2,\tau}^{diff,meas}.
\tag{PBR.10u24j7}
```

Equivalently,

```math
\texttt{PTCL.H}
\;+\;
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}.
\tag{PBR.10u24j8}
```

So under `(PTCL.3ai)`, `(PTCL.3aj)`, the uniform frozen collar bound
`(PBR.10u24j4)`, and the frozen exceptional-set localization hypothesis
`(PBR.10u24j5)`-`(PBR.10u24j6)`, the geometric part of the frozen
linearization price is exactly a frozen-time exceptional-set measure
localization estimate.

**Proof.**
The pointwise estimate `(PBR.10u24j3)` is exactly `(PTCL.3ad)` at `t=\tau`
combined with the automatic collar support from `PTCL.H`. The support claim
for `\Theta_{J,\tau}^{diff}` follows from `(PBR.10u24j5)`, and the `L^{p/2}`
bound comes from applying `(PBR.10u24j6)` to the pointwise estimate
`(PBR.10u24j4)`. ∎

### Audit Note PBR.10u24k (the scalar frozen tolerance packet is auxiliary, while the geometric frozen wall is exceptional-set measure localization)

The chain `(PBR.10u24h)`-`(PBR.10u24j)` exposes a real asymmetry in the frozen
linearization side.

The weighted pricing theorem `PTCL.D` naturally supplies an admissible
tolerance schedule

```math
\vartheta_{J,\tau}^{lin}(a)=\eta_{J,\varepsilon}(\tau,a)\to 0,
\tag{PBR.10u24k1}
```

but it does **not** by itself force
`\operatorname{supp}(\vartheta_{J,\tau}^{lin})` to lie in a vanishing bad set.
So `\texttt{FrozenTolLoc}_{\mu,p}` from `(PBR.10u24i7)` is a strong auxiliary
localization form, not the intrinsic output of `PTCL.D`.

By contrast, the weighted exceptional-set factor `\Theta_{J,\tau}^{diff}` is
geometric: under `(PTCL.3ai)`, `(PTCL.3aj)`, the uniform frozen collar bound
`(PBR.10u24j4)`, and the frozen exceptional-set localization hypothesis
`(PBR.10u24j5)`-`(PBR.10u24j6)`, `(PBR.10u24j8)` reduces it to the
frozen-time exceptional-set measure packet
`\texttt{FrozenDiffMeasLoc}_{\mu,p/2}`.

So the honest frozen linearization wall now reads as

```math
\boxed{
\text{geometric frozen wall }=\texttt{FrozenDiffMeasLoc}_{\mu,p/2},
\qquad
\text{auxiliary scalar wall }=\texttt{FrozenTolLoc}_{\mu,p}.
}
\tag{PBR.10u24k2}
```

If one later permits scalar smallness without bad-set support, then the
auxiliary packet `\texttt{FrozenTolLoc}_{\mu,p}` can be weakened to direct
global `L^p(d\mu_J^{pair})` smallness of `\vartheta_{J,\tau}^{lin}`.

### Audit Note PBR.10u24l (the frozen exceptional-set measure packet is stronger than bare fixed-threshold `DiffExc`)

The geometric packet `\texttt{FrozenDiffMeasLoc}_{\mu,p/2}` from
`(PBR.10u24j8)` is still stronger than the bare selector-good theorem
`DiffExc`.

Indeed, `DiffExc` only asserts that for every fixed `\eta>0`,

```math
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(\tau,a)\bigr)\to 0,
\tag{PBR.10u24l1}
```

whereas `\texttt{FrozenDiffMeasLoc}_{\mu,p/2}` asks for localization and
`L^{p/2}` control of

```math
\mu_{J,\varepsilon}^{pair}
\bigl(E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)\bigr),
\tag{PBR.10u24l2}
```

with the threshold `\vartheta_{J,\tau}^{lin}(a)` depending on `(J,\varepsilon)`
and on the base point `a`.

So `DiffExc` by itself does **not** discharge
`\texttt{FrozenDiffMeasLoc}_{\mu,p/2}`. To cross that wall one needs one extra
synchronization theorem, for example:

```math
\boxed{
\text{a quantitative modulus in }\eta
\quad\text{or}\quad
\text{a synchronized bad-set extraction for the schedule }
\vartheta_{J,\tau}^{lin}.
}
\tag{PBR.10u24l3}
```

This is the honest remaining geometric theorem debt on the frozen
linearization side once `(PBR.10u24j8)` has been applied.

### Corollary PBR.10u24n (a quadratic synchronized threshold modulus is one exact sufficient realization of the frozen geometric wall)

Keep the notation of `(PBR.10u24j)`. Assume there exists a quantitative
synchronized modulus constant `C_{J,\tau}^{diff,sync}` such that

```math
\mu_{J,\tau}^{diff}(a)
\le
C_{J,\tau}^{diff,sync}\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\qquad\text{for every }a\in\pi_a(\mathcal G_J).
\tag{PBR.10u24n1}
```

Assume further that

```math
\sup_{a\in\pi_a(\mathcal G_J)} C_{J,\tau}^{diff,sync}
\le
C_{\tau}^{diff,sync,\ast}<\infty,
\tag{PBR.10u24n2}
```

and that `\texttt{FrozenTolLoc}_{\mu,p}` holds, i.e. there is a measurable bad
set `B_J^{tol,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\vartheta_{J,\tau}^{lin}\bigr)
\subseteq
B_J^{tol,\tau},
\qquad
\mu_J^{pair}(B_J^{tol,\tau})=o_J(1),
\tag{PBR.10u24n3}
```

with

```math
\bigl\|\vartheta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{tol}.
\tag{PBR.10u24n4}
```

Then `\texttt{FrozenDiffMeasLoc}_{\mu,p/2}` holds with the same bad set and
quantitative bound

```math
\bigl\|\mu_{J,\tau}^{diff}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
\le
C_{\tau}^{diff,sync,\ast}\,
\bigl(C_{p,\tau}^{tol}\bigr)^2.
\tag{PBR.10u24n5}
```

Equivalently,

```math
\texttt{SyncDiffQuad}_{\tau}
\;+\;
\texttt{FrozenTolLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}.
\tag{PBR.10u24n6}
```

So the extra synchronization theorem named in `(PBR.10u24l3)` can be taken, in
one exact sufficient form, to be a quadratic threshold-modulus estimate
relative to the same frozen tolerance schedule.

**Proof.**
By `(PBR.10u24n1)`, one has
`\operatorname{supp}(\mu_{J,\tau}^{diff})
\subseteq
\operatorname{supp}(\vartheta_{J,\tau}^{lin})`, so `(PBR.10u24n3)` supplies the
bad set. Raising `(PBR.10u24n1)` to the power `p/2`, integrating, and using
`(PBR.10u24n2)`-`(PBR.10u24n4)` gives `(PBR.10u24n5)`. ∎

### Audit Note PBR.10u24o (the installed `TPS.4u` surface is still qualitative and does not yet supply `SyncDiffQuad_\tau`)

The source theorem `TPS.4u` in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md:773)
states only that the selector-good remainder is negligible in measure relative
to `|a-b|`; this is exactly the qualitative input used in `PTCL.J` to reach
`DiffExc`.

It does **not** presently give a synchronized quantitative estimate of the form

```math
\mu_{J,\varepsilon}^{pair}
\bigl(E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)\bigr)
\le
C\,\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\tag{PBR.10u24o1}
```

for the J-dependent frozen threshold schedule.

So the strengthened packet `\texttt{SyncDiffQuad}_{\tau}` from `(PBR.10u24n6)`
is not already an installed descendant of `TPS.4u`. It is a genuinely stronger
quantitative transport theorem.

### Corollary PBR.10u24q (a threshold-vs-linearization synchronization law is one exact sufficient realization of `SyncDiffQuad_{\tau}`)

Keep the notation of `(PBR.10u24h)` and assume the selector-scale realization
`(PTCL.3ai)` together with the active-pair scale packet `(PTCL.3aj)`. Then
there exists a selector-scale lower constant
`c_{\mathrm{sel}}>0` such that

```math
|\xi_{ab}|\ge c_{\mathrm{sel}}
\qquad\text{on the active pair family.}
\tag{PBR.10u24q1}
```

Assume moreover that the frozen threshold schedule is quantitatively
synchronized with the frozen linearization error in the form

```math
\eta_{J,\tau}^{lin}(a)
\le
C_{\tau}^{th,sync}\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\qquad\text{for every }a\in\pi_a(\mathcal G_J).
\tag{PBR.10u24q2}
```

Then `\texttt{SyncDiffQuad}_{\tau}` holds. More precisely,

```math
\mu_{J,\tau}^{diff}(a)
\le
c_{\mathrm{sel}}^{-2}\,
\bigl(C_{\tau}^{th,sync}\bigr)^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2.
\tag{PBR.10u24q3}
```

Equivalently,

```math
\texttt{SyncThreshSq}_{\tau}
\Longrightarrow
\texttt{SyncDiffQuad}_{\tau}.
\tag{PBR.10u24q4}
```

So one exact sufficient realization of the synchronized geometric theorem debt
is not a separate transport-measure theorem, but a square-threshold
synchronization inequality tying the chosen frozen tolerance schedule directly
to the frozen linearization error packet.

**Proof.**
On the exceptional set
`E_{J,\varepsilon,\vartheta_{J,\tau}^{lin}(a)}^{diff}(\tau,a)`, one has by
definition `(PTCL.3r)`

```math
|z_{ab}(\tau)-W\,\xi_{ab}|^2
>
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2\,|\xi_{ab}|^2
\ge
c_{\mathrm{sel}}^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\tag{PBR.10u24q5}
```

using `(PBR.10u24q1)`. Integrating over the exceptional set gives

```math
c_{\mathrm{sel}}^2\,
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2
\mu_{J,\tau}^{diff}(a)
\le
\int
|z_{ab}(\tau)-W\,\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,\tau;b)
=
\bigl(\eta_{J,\tau}^{lin}(a)\bigr)^2.
\tag{PBR.10u24q6}
```

Apply `(PBR.10u24q2)` to the right-hand side to obtain `(PBR.10u24q3)`, which
is exactly `\texttt{SyncDiffQuad}_{\tau}`. ∎

### Audit Note PBR.10u24r (the frozen directional-shape packet is likewise a localization refinement of the geometric `PTC-Shape.A` slice)

The frozen shape packet `\texttt{FrozenShapeDirLoc}_{\mu,p}` from
`(PBR.10u24g6)` is read the same way.

At the geometric level, `PTC-Shape.A` already supplies the frozen directional
quadratic control

```math
\eta_{J,\tau}^{shape,dir}(a)
\le
\epsilon_{J,\varepsilon}^{shape}(\tau,a),
\tag{PBR.10u24r1}
```

which is exactly the time slice of `(A19)` / `(PTCS.3e)`. Moreover the
directional quadratic defect is uniformly bounded:

```math
0\le \eta_{J,\tau}^{shape,dir}(a)\le 1.
\tag{PBR.10u24r2}
```

So the real geometric theorem on the frozen shape side is already the frozen
slice of `PTC-Shape.A`. What remains in `\texttt{FrozenShapeDirLoc}_{\mu,p}` is
the stronger bad-set/localization packaging, not a new directional-isotropy
mechanism.

In particular, if one later permits global scalar smallness rather than
support-localized `L^p` packaging, then pointwise convergence from
`PTC-Shape.A` together with the bound `(PBR.10u24r2)` gives frozen
`L^p(d\mu_J^{pair})` smallness by dominated convergence under that relaxed
packaging.

### Corollary PBR.10u25 (the frozen Cauchy-Green gap floor is already a slice of `CGR.A`)

Assume the hypotheses of `CGR.A`, so in particular

```math
E_{J,t_0}^{CG}(t,a)\le \frac{g_0(a)}{4}
\qquad\text{for every }t\in I_0.
\tag{PBR.10u25a}
```

Then at every frozen reference time `\tau\in I_0`,

```math
\operatorname{gap}_J^{CG}(\tau,a)
\ge
\frac{g_0(a)}{2}.
\tag{PBR.10u25b}
```

Equivalently,

```math
\texttt{CGR.A}
\Longrightarrow
\texttt{FrozenCGGapFloor}.
\tag{PBR.10u25c}
```

So `FrozenCGGapFloor` introduces no new theorem debt beyond the already
installed exact Cauchy-Green persistence packet.

**Proof.**
This is exactly `(CGR.9)` evaluated at `t=\tau`. ∎

### Corollary PBR.10u26 (the frozen cocycle amplitude is already a slice of `SCN.A`)

Assume the cocycle packet `SCN.A`, so

```math
\sup_{t\in I_0}|W_J^N(t,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{PBR.10u26a}
```

Then at every frozen reference time `\tau\in I_0`,

```math
\bigl|\mathbf W_J^{coc}(\tau,a)\bigr|_{\mathrm{op}}^2
\le
e^{2K_J^{coc}(a)}.
\tag{PBR.10u26b}
```

Equivalently,

```math
\texttt{SCN.A}
\Longrightarrow
\texttt{FrozenCoc}_{\infty}.
\tag{PBR.10u26c}
```

So `FrozenCoc_{\infty}` also introduces no new theorem debt beyond the
installed cocycle operator-norm packet.

**Proof.**
This is just `(SCN.5)` evaluated at `t=\tau`, then squared. ∎

### Audit Note PBR.10u27 (the remaining frozen strain-amplitude packet is still genuine)

The scalar packet

```math
\texttt{FrozenStrainAmp}_{\infty}:
\qquad
\sup_{a\in\pi_a(\mathcal G_J)}\|S_J^N(\tau,a)\|_F\le S_{J,\tau}^{frz}
\tag{PBR.10u27a}
```

does **not** currently collapse from the installed ratio packet alone. The
available ratio surface,

```math
\sup_{\mathcal G_J}\frac{\|S_J^N\|_F}{g_J^{str}}\le C_S,
\tag{PBR.10u27b}
```

controls `\|S_J^N\|_F` only relative to the instantaneous strain gap. Without a
separate frozen upper control on `g_J^{str}(\tau,a)` or an absolute frozen
strain bound, it does not imply `(PBR.10u27a)`.

So after `(PBR.10u25c)` and `(PBR.10u26c)`, the scalar frozen wall does **not**
disappear completely. The honest residual scalar packet is exactly
`\texttt{FrozenStrainAmp}_{\infty}`.

### Proposition PBR.10u28 (the Cauchy-Green persistence packet reduces to the common strip supplier plus a frozen transported-strain amplitude)

Fix the reference time `\tau\in I_0` from `(PBR.10u13)`. Lift the common strip
integral to the pair family by

```math
A_J^{pair}(a,b):=A_J(a).
\tag{PBR.10u28a}
```

Define the frozen Cauchy-Green persistence amplitude

```math
\mathfrak A_{J,\tau}^{CG,pers}(a)
:=
4|I_0|
\sup_{t\in I_0}
\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}.
\tag{PBR.10u28b}
```

Assume there is a measurable bad set `B_J^{A,pers}\subset \mathcal G_J` such
that

```math
\operatorname{supp}\bigl(A_J^{pair}\bigr)
\subseteq
B_J^{A,pers},
\qquad
\mu_J^{pair}(B_J^{A,pers})=o_J(1),
\tag{PBR.10u28c}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|A_J^{pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,A}^{pers}.
\tag{PBR.10u28d}
```

If moreover the frozen amplitude is uniformly bounded,

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\mathfrak A_{J,\tau}^{CG,pers}(a)
\le
K_{J,\tau}^{CG,pers},
\tag{PBR.10u28e}
```

then `\texttt{CGPersistLoc}_{\mu,p}` holds with the same bad set and with
quantitative bound

```math
\left\|
\int_{t_0}^{t_1}\Theta_{J,\tau}^{CG,pers}(s,\cdot)\,ds
\right\|_{L^p(d\mu_J^{pair})}
\le
K_{J,\tau}^{CG,pers}\,C_{p,A}^{pers}.
\tag{PBR.10u28f}
```

Equivalently,

```math
\texttt{CGCommonLoc}_{\mu,p}
\;+\;
\texttt{CGPersAmp}_{\infty}
\Longrightarrow
\texttt{CGPersistLoc}_{\mu,p}.
\tag{PBR.10u28g}
```

So the Cauchy-Green persistence packet is not primitive either: it is exactly
the common strip supplier `A_J` multiplied by one frozen transported-strain
amplitude.

**Proof.**
Because the integrand in `E_{J,\tau}^{CG}` is nonnegative and the interval
`[\min\{t,\tau\},\max\{t,\tau\}]` is contained in `I_0`, one has for every
`t\in I_0`

```math
E_{J,\tau}^{CG}(t,a)\le A_J(a)=A_J^{pair}(a,b).
\tag{PBR.10u28h}
```

Substituting `(PBR.10u28h)` into `(PBR.10u13b)` gives

```math
\Theta_{J,\tau}^{CG,pers}(t,a,b)
\le
4
\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}
A_J^{pair}(a,b).
\tag{PBR.10u28i}
```

Integrating over `I_0` yields

```math
\int_{t_0}^{t_1}\Theta_{J,\tau}^{CG,pers}(s,a,b)\,ds
\le
\mathfrak A_{J,\tau}^{CG,pers}(a)\,A_J^{pair}(a,b).
\tag{PBR.10u28j}
```

Hence the support of the integrated persistence term is contained in
`B_J^{A,pers}` by `(PBR.10u28c)`, and `(PBR.10u28f)` follows from the uniform
bound `(PBR.10u28e)` multiplied into `(PBR.10u28d)`. This is exactly
`\texttt{CGPersistLoc}_{\mu,p}`. ∎

### Corollary PBR.10u29 (the frozen Cauchy-Green persistence amplitude is a transported-strain-to-gap ratio packet)

Assume `SCN.A` on `I_0`, so that

```math
\sup_{s\in I_0}|W_J^N(s,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\tag{PBR.10u29a}
```

and assume `CGR.A` with entrance gap floor `g_0(a)`, so that

```math
\operatorname{gap}_J^{CG}(s,a)\ge \frac{g_0(a)}{2}
\qquad\text{for every }s\in I_0.
\tag{PBR.10u29b}
```

Then

```math
\mathfrak A_{J,\tau}^{CG,pers}(a)
\le
8|I_0|
\frac{
e^{2K_J^{coc}(a)}\,|B_{J,\tau}^N|_{\mathrm{op}}
}{
g_0(a)
}.
\tag{PBR.10u29c}
```

Consequently, one exact sufficient packet for `\texttt{CGPersAmp}_{\infty}` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{2K_J^{coc}(a)}\,|B_{J,\tau}^N|_{\mathrm{op}}
}{
g_0(a)
}
\le
K_{J,\tau}^{CG,trans}.
\tag{PBR.10u29d}
```

Equivalently,

```math
\texttt{SCN.A}
\;+\;
\texttt{CGR.A}
\;+\;
\texttt{FrozenTransportRatio}_{\infty}
\Longrightarrow
\texttt{CGPersAmp}_{\infty}.
\tag{PBR.10u29e}
```

If in addition `SCN.B` holds, then

```math
\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}}
\le
\bigl|\bigl(W_J^N(\tau,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(\tau,a)\bigr|_{\mathrm{op}}
\|S_J^N(\tau,a)\|_F
\le
e^{2K_J^{coc}(a)}\|S_J^N(\tau,a)\|_F.
\tag{PBR.10u29f}
```

So a sharper sufficient packet is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{4K_J^{coc}(a)}\,\|S_J^N(\tau,a)\|_F
}{
g_0(a)
}
\le
K_{J,\tau}^{CG,str/gap}.
\tag{PBR.10u29g}
```

Equivalently,

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainGapRatio}_{\infty}
\Longrightarrow
\texttt{CGPersAmp}_{\infty}.
\tag{PBR.10u29h}
```

So after the common-strip reduction, the amplitude side is not a new
commutator wall. It is exactly a frozen transported-strain-to-gap ratio
packet.

**Proof.**
Since `\mu_2^{CG}(t,a)\le |\mathcal C_J^N(t,a)|_{\mathrm{op}}
=|W_J^N(t,a)|_{\mathrm{op}}^2`, bounds `(PBR.10u29a)` and `(PBR.10u29b)` imply

```math
\sup_{t\in I_0}
\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
\le
\frac{2e^{2K_J^{coc}(a)}}{g_0(a)}.
\tag{PBR.10u29i}
```

Substituting `(PBR.10u29i)` into `(PBR.10u28b)` gives `(PBR.10u29c)`, hence
`(PBR.10u29e)`. The estimate `(PBR.10u29f)` is just
`B_{J,\tau}^N=(W_J^N(\tau,a))^{-1}S_J^N(\tau,a)W_J^N(\tau,a)` together with
`SCN.A` and `SCN.B`. Substituting `(PBR.10u29f)` into `(PBR.10u29d)` yields
`(PBR.10u29g)`, hence `(PBR.10u29h)`. ∎

### Corollary PBR.10u29j (uniform cocycle control and a uniform entrance gap floor collapse the frozen strain-gap ratio packet)

Assume the sharper sufficient packet `(PBR.10u29g)` and suppose there are
constants `K_\ast^{coc},g_\ast^{ent},S_\ast^{frz}>0` such that

```math
\sup_{a\in\pi_a(\mathcal G_J)} K_J^{coc}(a)\le K_\ast^{coc},
\tag{PBR.10u29j1}
```

```math
\inf_{a\in\pi_a(\mathcal G_J)} g_0(a)\ge g_\ast^{ent},
\tag{PBR.10u29j2}
```

```math
\sup_{a\in\pi_a(\mathcal G_J)} \|S_J^N(\tau,a)\|_F\le S_\ast^{frz}.
\tag{PBR.10u29j3}
```

Then

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{
e^{4K_J^{coc}(a)}\,\|S_J^N(\tau,a)\|_F
}{
g_0(a)
}
\le
\frac{e^{4K_\ast^{coc}}\,S_\ast^{frz}}{g_\ast^{ent}},
\tag{PBR.10u29j4}
```

so `\texttt{FrozenStrainGapRatio}_{\infty}` holds, hence `\texttt{CGPersAmp}_{\infty}`
holds by `(PBR.10u29h)`.

Equivalently,

```math
\sup K_J^{coc}
\;+\;
\inf g_0
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\Longrightarrow
\texttt{FrozenStrainGapRatio}_{\infty}
\Longrightarrow
\texttt{CGPersAmp}_{\infty}.
\tag{PBR.10u29j5}
```

So the residual scalar wall `(PBR.10u30)` disappears on any subfamily with a
uniform entrance gap floor.

### Audit Note PBR.10u30 (the remaining Cauchy-Green persistence scalar wall is a frozen strain-to-gap ratio packet)

The installed frozen amplitude packet
`\texttt{FrozenStrainAmp}_{\infty}` from `(PBR.10u27a)` is still not enough to
close the Cauchy-Green persistence amplitude. The new sufficient packet
`(PBR.10u29g)` couples the frozen strain size to the entrance gap `g_0(a)`,
and that denominator is not controlled by `\texttt{FrozenStrainAmp}_{\infty}`
alone.

So after `(PBR.10u28g)` and `(PBR.10u29h)`, the honest residual scalar wall on
the Cauchy-Green persistence side is exactly
`\texttt{FrozenStrainGapRatio}_{\infty}`, not merely
`\texttt{FrozenStrainAmp}_{\infty}`.

### Proposition PBR.10u31 (the transported-strain persistence packets reduce to raw source localization plus one common amplitude)

Keep the reference time `\tau\in I_0`. Define the raw pair-lifted source
densities

```math
\eta_{J,\tau}^{\partial S,pair}(a,b)
:=
\int_{I_0} |\partial_s S_J^N(s,a)|\,ds,
\tag{PBR.10u31a}
```

and

```math
\eta_{J,\tau}^{rot,pair}(a,b)
:=
\int_{I_0} \bigl|[S_J^N(s,a),K_J^N(s,a)]\bigr|_{\mathrm{op}}\,ds.
\tag{PBR.10u31b}
```

Define the common transported-strain persistence amplitude

```math
\mathfrak A_J^{B,pers}(a)
:=
4|I_0|
\sup_{t\in I_0}
\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
|\mathcal C_J^N(t,a)|_{\mathrm{op}}
\sup_{s\in I_0}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}.
\tag{PBR.10u31c}
```

Then the integrated persistence pieces satisfy

```math
\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,var}(t,a,b)\,dt
\le
\mathfrak A_J^{B,pers}(a)\,\eta_{J,\tau}^{\partial S,pair}(a,b),
\tag{PBR.10u31d}
```

and

```math
\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,rot}(t,a,b)\,dt
\le
\mathfrak A_J^{B,pers}(a)\,\eta_{J,\tau}^{rot,pair}(a,b).
\tag{PBR.10u31e}
```

Assume there are measurable bad sets
`B_J^{\partial S,\tau},B_J^{rot,\tau}\subset\mathcal G_J` such that

```math
\operatorname{supp}\bigl(\eta_{J,\tau}^{\partial S,pair}\bigr)
\subseteq
B_J^{\partial S,\tau},
\qquad
\mu_J^{pair}(B_J^{\partial S,\tau})=o_J(1),
\tag{PBR.10u31f}
```

```math
\operatorname{supp}\bigl(\eta_{J,\tau}^{rot,pair}\bigr)
\subseteq
B_J^{rot,\tau},
\qquad
\mu_J^{pair}(B_J^{rot,\tau})=o_J(1),
\tag{PBR.10u31g}
```

with plain pair-measure `L^p` bounds

```math
\bigl\|\eta_{J,\tau}^{\partial S,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\partial S}^{raw},
\tag{PBR.10u31h}
```

```math
\bigl\|\eta_{J,\tau}^{rot,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,rot}^{raw},
\tag{PBR.10u31i}
```

and suppose finally that

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\mathfrak A_J^{B,pers}(a)
\le
K_J^{B,pers}.
\tag{PBR.10u31j}
```

Then both persistence localization packets hold:

```math
\texttt{StrainVarRawLoc}_{\mu,p}
\;+\;
\texttt{BPersAmp}_{\infty}
\Longrightarrow
\texttt{StrainVarPersistLoc}_{\mu,p},
\tag{PBR.10u31k}
```

```math
\texttt{RotCommRawLoc}_{\mu,p}
\;+\;
\texttt{BPersAmp}_{\infty}
\Longrightarrow
\texttt{RotCommPersistLoc}_{\mu,p}.
\tag{PBR.10u31l}
```

So the transported-strain persistence side is not primitive either. It splits
into two raw source localization packets, one for `|\partial_s S_J^N|` and one
for `|[S_J^N,K_J^N]|`, together with a single cocycle-gap amplitude.

**Proof.**
Since the interval `[\min\{t,\tau\},\max\{t,\tau\}]` is contained in `I_0`,
the integral inside `(PBR.10u14a)` is bounded by

```math
\sup_{s\in I_0}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
\int_{I_0} |\partial_s S_J^N(s,a)|\,ds.
\tag{PBR.10u31m}
```

Substituting `(PBR.10u31m)` into `(PBR.10u14a)` and integrating over `t\in I_0`
gives `(PBR.10u31d)`. The same argument with `|[S_J^N,K_J^N]|_{\mathrm{op}}`
in place of `|\partial_s S_J^N|` gives `(PBR.10u31e)`. The support statements
follow from `(PBR.10u31f)`-`(PBR.10u31g)`, and the `L^p` bounds are just the
uniform amplitude `(PBR.10u31j)` multiplied into `(PBR.10u31h)`-`(PBR.10u31i)`.
This is exactly `\texttt{StrainVarPersistLoc}_{\mu,p}` and
`\texttt{RotCommPersistLoc}_{\mu,p}`. ∎

### Corollary PBR.10u32 (the common transported-strain persistence amplitude is a cocycle-to-gap ratio packet)

Assume `SCN.A` and `SCN.B` on `I_0`, so that

```math
\sup_{s\in I_0}|W_J^N(s,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\qquad
\sup_{s\in I_0}\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\tag{PBR.10u32a}
```

and assume `CGR.A` with entrance gap floor `g_0(a)`, so that

```math
\operatorname{gap}_J^{CG}(s,a)\ge \frac{g_0(a)}{2}
\qquad\text{for every }s\in I_0.
\tag{PBR.10u32b}
```

Then

```math
\mathfrak A_J^{B,pers}(a)
\le
8|I_0|
\frac{e^{6K_J^{coc}(a)}}{g_0(a)}.
\tag{PBR.10u32c}
```

Consequently, one exact sufficient packet for `\texttt{BPersAmp}_{\infty}` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{e^{6K_J^{coc}(a)}}{g_0(a)}
\le
K_J^{B,pers,ratio}.
\tag{PBR.10u32d}
```

Equivalently,

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{CGR.A}
\;+\;
\texttt{BPersRatio}_{\infty}
\Longrightarrow
\texttt{BPersAmp}_{\infty}.
\tag{PBR.10u32e}
```

So the transported-strain persistence side carries no new geometric amplitude
mechanism beyond the same cocycle control and the same entrance gap floor. What
remains is a scalar cocycle-to-gap ratio packet.

**Proof.**
From `SCN.A`,
`\mu_2^{CG}(t,a)\le |\mathcal C_J^N(t,a)|_{\mathrm{op}}
=|W_J^N(t,a)|_{\mathrm{op}}^2\le e^{2K_J^{coc}(a)}` and
`|\mathcal C_J^N(t,a)|_{\mathrm{op}}\le e^{2K_J^{coc}(a)}`. Together with
`SCN.B`, this gives

```math
\sup_{t\in I_0}
\frac{\mu_2^{CG}(t,a)}{\operatorname{gap}_J^{CG}(t,a)}
|\mathcal C_J^N(t,a)|_{\mathrm{op}}
\sup_{s\in I_0}
\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}
\le
\frac{2e^{6K_J^{coc}(a)}}{g_0(a)}.
\tag{PBR.10u32f}
```

Substituting `(PBR.10u32f)` into `(PBR.10u31c)` yields `(PBR.10u32c)`, hence
`(PBR.10u32e)`. ∎

### Corollary PBR.10u32g (uniform cocycle control and a uniform entrance gap floor collapse the transported-strain persistence ratio packet)

Assume there are constants `K_\ast^{coc},g_\ast^{ent}>0` such that

```math
\sup_{a\in\pi_a(\mathcal G_J)} K_J^{coc}(a)\le K_\ast^{coc},
\tag{PBR.10u32g1}
```

```math
\inf_{a\in\pi_a(\mathcal G_J)} g_0(a)\ge g_\ast^{ent}.
\tag{PBR.10u32g2}
```

Then

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\frac{e^{6K_J^{coc}(a)}}{g_0(a)}
\le
\frac{e^{6K_\ast^{coc}}}{g_\ast^{ent}},
\tag{PBR.10u32g3}
```

so `\texttt{BPersRatio}_{\infty}` holds, hence `\texttt{BPersAmp}_{\infty}`
holds by `(PBR.10u32e)`.

Equivalently,

```math
\sup K_J^{coc}
\;+\;
\inf g_0
\Longrightarrow
\texttt{BPersRatio}_{\infty}
\Longrightarrow
\texttt{BPersAmp}_{\infty}.
\tag{PBR.10u32g4}
```

So the scalar wall in `(PBR.10u33)` is purely the absence of a uniform
entrance-gap floor on the present selector-good family.

### Audit Note PBR.10u33 (the transported-strain persistence wall is now two raw source packets plus one scalar ratio packet)

After `(PBR.10u31k)`-`(PBR.10u32e)`, the honest geometric persistence debts are
no longer `\texttt{StrainVarPersistLoc}_{\mu,p}` and
`\texttt{RotCommPersistLoc}_{\mu,p}` themselves. They are exactly the two raw
source localization packets `\texttt{StrainVarRawLoc}_{\mu,p}` and
`\texttt{RotCommRawLoc}_{\mu,p}`. The remaining scalar amplitude wall on this
side is `\texttt{BPersRatio}_{\infty}`.

### Proposition PBR.10u34 (raw strain-variation localization reduces to weighted variation localization plus a strip ratio packet)

Define the weighted variation density

```math
\eta_J^{var,w,pair}(a,b)
:=
\int_{I_0}
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds
=
\frac13\,\eta_{J,\mathrm{var}}^{mb}(a,b).
\tag{PBR.10u34a}
```

Define the strip ratio amplitude

```math
\mathfrak A_J^{var,ratio}(a)
:=
\sup_{s\in I_0}
\frac{g_J^{str}(s,a)}{|\mathcal C_J^N(s,a)|_{\mathrm{op}}}.
\tag{PBR.10u34b}
```

Assume there is a measurable bad set `B_J^{var,w}\subset\mathcal G_J` such
that

```math
\operatorname{supp}\bigl(\eta_J^{var,w,pair}\bigr)
\subseteq
B_J^{var,w},
\qquad
\mu_J^{pair}(B_J^{var,w})=o_J(1),
\tag{PBR.10u34c}
```

and assume the plain pair-measure `L^p` bound

```math
\bigl\|\eta_J^{var,w,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,var}^{w}.
\tag{PBR.10u34d}
```

If moreover

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\mathfrak A_J^{var,ratio}(a)
\le
K_J^{var,ratio},
\tag{PBR.10u34e}
```

then `\texttt{StrainVarRawLoc}_{\mu,p}` holds with the same bad set and with
quantitative bound

```math
\bigl\|\eta_{J,\tau}^{\partial S,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
K_J^{var,ratio}\,C_{p,var}^{w}.
\tag{PBR.10u34f}
```

Equivalently,

```math
\texttt{VarWeightedLoc}_{\mu,p}
\;+\;
\texttt{VarCGRatio}_{\infty}
\Longrightarrow
\texttt{StrainVarRawLoc}_{\mu,p}.
\tag{PBR.10u34g}
```

So the raw variation wall is not completely primitive. It is exactly a weighted
variation localization theorem plus one stripwise comparison theorem between
the strain gap and the Cauchy-Green amplitude.

**Proof.**
By definition,

```math
|\partial_s S_J^N(s,a)|
=
\frac{g_J^{str}(s,a)}{|\mathcal C_J^N(s,a)|_{\mathrm{op}}}
\cdot
\frac{
|\mathcal C_J^N(s,a)|_{\mathrm{op}}\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}.
\tag{PBR.10u34h}
```

Integrating over `I_0` gives

```math
\eta_{J,\tau}^{\partial S,pair}(a,b)
\le
\mathfrak A_J^{var,ratio}(a)\,\eta_J^{var,w,pair}(a,b).
\tag{PBR.10u34i}
```

Hence the support statement follows from `(PBR.10u34c)`, and the `L^p` bound
`(PBR.10u34f)` is just `(PBR.10u34e)` multiplied into `(PBR.10u34d)`. ∎

### Corollary PBR.10u34j (the installed weighted variation supplier gives a direct normalized square bypass to the raw variation source)

Assume the strip ratio packet `(PBR.10u34e)`. Then

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{\bigl(\eta_{J,\tau}^{\partial S,pair}(a,b)\bigr)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b)
\le
\bigl(K_J^{var,ratio}\bigr)^2
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{\bigl(\eta_J^{var,w,pair}(a,b)\bigr)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b).
\tag{PBR.10u34j1}
```

Since

```math
\eta_J^{var,w,pair}(a,b)=\frac13\,\eta_{J,\mathrm{var}}^{mb}(a,b),
\tag{PBR.10u34j2}
```

the installed weighted supplier `(PBR.10p9)` implies

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{\bigl(\eta_{J,\tau}^{\partial S,pair}(a,b)\bigr)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b)
\le
\frac{\bigl(K_J^{var,ratio}\bigr)^2}{9}\,
\varepsilon_{\mathrm{var}}.
\tag{PBR.10u34j3}
```

Equivalently,

```math
(PBR.10p9)
\;+\;
\texttt{VarCGRatio}_{\infty}
\Longrightarrow
\texttt{WeightedStrainVarRawSq}.
\tag{PBR.10u34j4}
```

So on the weighted exact splice, the raw variation source already has a direct
square bypass and does not pass through the bad-set/`L^p` localization
packet `\texttt{VarWeightedLoc}_{\mu,p}`.

### Corollary PBR.10u34k (adding the common persistence amplitude gives a direct normalized square bypass for the transported-strain variation term)

Assume `(PBR.10u31d)`, the uniform amplitude packet
`\sup_{a\in\pi_a(\mathcal G_J)}\mathfrak A_J^{B,pers}(a)\le K_J^{B,pers}`, and
the normalized square bound `(PBR.10u34j1)`. Then

```math
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{
\left(
\int_{t_0}^{t_1}\Theta_{J,\tau}^{B,var}(t,a,b)\,dt
\right)^2
}{
g_0(a)^2
}
\,d\mu_J^{pair}(a,b)
\le
\bigl(K_J^{B,pers}\bigr)^2
\int_{\mathcal G_J}
M_J(a,b)^2
\frac{\bigl(\eta_{J,\tau}^{\partial S,pair}(a,b)\bigr)^2}{g_0(a)^2}
\,d\mu_J^{pair}(a,b).
\tag{PBR.10u34k1}
```

Hence

```math
(PBR.10p9)
\;+\;
\texttt{VarCGRatio}_{\infty}
\;+\;
\texttt{BPersAmp}_{\infty}
\Longrightarrow
\texttt{WeightedStrainVarPersistSq}.
\tag{PBR.10u34k2}
```

So the transported-strain variation side also admits a direct weighted-square
bypass on the exact branch.

### Audit Note PBR.10u35 (the installed variation packet does not by itself close the raw variation wall)

The weighted variation density `\eta_J^{var,w,pair}` in `(PBR.10u34a)` is
already the exact raw source behind `\eta_{J,\mathrm{var}}^{mb}`. But the
installed exact-potential surfaces on disk do **not** currently supply the
strip ratio packet `(PBR.10u34e)`. In particular:

- the supplier packet `(PBR.10p9)` is only a weighted square bound for
  `\eta_{J,\mathrm{var}}^{mb}`;
- the ratio surface `(PBR.10u27b)` controls `\|S_J^N\|_F/g_J^{str}`, not
  `g_J^{str}/|\mathcal C_J^N|`.

So `\eta_{J,\mathrm{var}}^{mb}` alone does **not** honestly imply
`\texttt{StrainVarRawLoc}_{\mu,p}`. The exact residual wall is the additional
comparison theorem `\texttt{VarCGRatio}_{\infty}`.

### Proposition PBR.10u36 (the strip strain-to-Cauchy-Green ratio reduces to inverse cocycle control plus strip transported-strain amplitude)

Define the strip transported-strain amplitude

```math
\mathfrak A_J^{B,str}(a)
:=
\sup_{t\in I_0} \bigl|B_J^N(t,a)\bigr|_{\mathrm{op}}.
\tag{PBR.10u36a}
```

Assume `SCN.B` on `I_0`, so that

```math
\sup_{t\in I_0}\bigl|\bigl(W_J^N(t,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{PBR.10u36b}
```

Then

```math
\mathfrak A_J^{var,ratio}(a)
\le
2e^{2K_J^{coc}(a)}\,\mathfrak A_J^{B,str}(a).
\tag{PBR.10u36c}
```

Consequently, one exact sufficient packet for `\texttt{VarCGRatio}_{\infty}` is

```math
\sup_{a\in\pi_a(\mathcal G_J)}
e^{2K_J^{coc}(a)}\,\mathfrak A_J^{B,str}(a)
\le
K_J^{var,B}.
\tag{PBR.10u36d}
```

Equivalently,

```math
\texttt{SCN.B}
\;+\;
\texttt{StripTransportAmp}_{\infty}
\Longrightarrow
\texttt{VarCGRatio}_{\infty}.
\tag{PBR.10u36e}
```

So the strip comparison `g_J^{str}/|\mathcal C_J^N|` is not primitive either:
it reduces to inverse cocycle control plus a strip transported-strain
amplitude packet.

**Proof.**
Because `S_J^N(t,a)` is symmetric on `N_a`,

```math
g_J^{str}(t,a)\le 2\|S_J^N(t,a)\|_{\mathrm{op}}.
\tag{PBR.10u36f}
```

Using `S_J^N=W_J^N B_J^N (W_J^N)^{-1}` and
`|\mathcal C_J^N|_{\mathrm{op}}=|W_J^N|_{\mathrm{op}}^2`, we obtain

```math
\frac{g_J^{str}(t,a)}{|\mathcal C_J^N(t,a)|_{\mathrm{op}}}
\le
2\frac{|W_J^N(t,a)|_{\mathrm{op}}\,|(W_J^N(t,a))^{-1}|_{\mathrm{op}}\,|B_J^N(t,a)|_{\mathrm{op}}}{|W_J^N(t,a)|_{\mathrm{op}}^2}
=
2\frac{|(W_J^N(t,a))^{-1}|_{\mathrm{op}}}{|W_J^N(t,a)|_{\mathrm{op}}}
|B_J^N(t,a)|_{\mathrm{op}}.
\tag{PBR.10u36g}
```

Since `|W|_{\mathrm{op}}\,|W^{-1}|_{\mathrm{op}}\ge 1`, one has
`|W|_{\mathrm{op}}^{-1}\le |W^{-1}|_{\mathrm{op}}`, and therefore

```math
\frac{g_J^{str}(t,a)}{|\mathcal C_J^N(t,a)|_{\mathrm{op}}}
\le
2|(W_J^N(t,a))^{-1}|_{\mathrm{op}}^2\,|B_J^N(t,a)|_{\mathrm{op}}.
\tag{PBR.10u36h}
```

Taking the strip supremum and applying `(PBR.10u36b)` gives `(PBR.10u36c)`,
hence `(PBR.10u36e)`. ∎

### Corollary PBR.10u37 (one exact sufficient route for the strip transported-strain amplitude)

Keep the reference time `\tau\in I_0`. Define the frozen transported-strain
amplitude and the two raw strip source scalars

```math
\mathfrak A_{J,\tau}^{B,frz}(a)
:=
\bigl|B_{J,\tau}^N\bigr|_{\mathrm{op}},
\tag{PBR.10u37a}
```

```math
\eta_J^{\partial S,sc}(a)
:=
\int_{I_0} |\partial_s S_J^N(s,a)|\,ds,
\qquad
\eta_J^{rot,sc}(a)
:=
\int_{I_0} |[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}\,ds.
\tag{PBR.10u37b}
```

Assume `SCN.A` and `SCN.B` on `I_0`, so that

```math
\sup_{s\in I_0}|W_J^N(s,a)|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\qquad
\sup_{s\in I_0}\bigl|\bigl(W_J^N(s,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{PBR.10u37c}
```

If moreover

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\Bigl(
\mathfrak A_{J,\tau}^{B,frz}(a)
+
e^{2K_J^{coc}(a)}
\bigl(
\eta_J^{\partial S,sc}(a)+\eta_J^{rot,sc}(a)
\bigr)
\Bigr)
\le
B_J^{str,\ast},
\tag{PBR.10u37d}
```

then

```math
\texttt{StripTransportAmp}_{\infty}:
\qquad
\sup_{a\in\pi_a(\mathcal G_J)}\sup_{t\in I_0}|B_J^N(t,a)|_{\mathrm{op}}
\le
B_J^{str,\ast}
\tag{PBR.10u37e}
```

holds. Equivalently,

```math
\texttt{FrozenTransportAmp}_{\infty}
\;+\;
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\Longrightarrow
\texttt{StripTransportAmp}_{\infty}.
\tag{PBR.10u37f}
```

So there is an exact sufficient scalar route beneath
`\texttt{VarCGRatio}_{\infty}`. It uses frozen transported-strain amplitude and
uniform raw strip source control, not pair-measure localization.

**Proof.**
Corollary `D.7mi4` gives, for every `t\in I_0`,

```math
|B_J^N(t,a)-B_{J,\tau}^N|_{\mathrm{op}}
\le
\sup_{s\in I_0}|(W_J^N(s,a))^{-1}|_{\mathrm{op}}\,|W_J^N(s,a)|_{\mathrm{op}}
\bigl(\eta_J^{\partial S,sc}(a)+\eta_J^{rot,sc}(a)\bigr).
\tag{PBR.10u37g}
```

Applying `(PBR.10u37c)` to `(PBR.10u37g)` yields

```math
|B_J^N(t,a)|_{\mathrm{op}}
\le
\mathfrak A_{J,\tau}^{B,frz}(a)
+
e^{2K_J^{coc}(a)}
\bigl(\eta_J^{\partial S,sc}(a)+\eta_J^{rot,sc}(a)\bigr).
\tag{PBR.10u37h}
```

Taking the supremum over `t\in I_0` and then over `a\in\pi_a(\mathcal G_J)`
gives `(PBR.10u37e)`. ∎

### Audit Note PBR.10u37i (the strip transported-strain amplitude is still not discharged by the installed exact surfaces)

Corollary `(PBR.10u37f)` is only a stronger sufficient scalar route. The
current exact-potential surfaces on disk still do **not** supply the uniform
scalar packet `(PBR.10u37d)`. So `\texttt{StripTransportAmp}_{\infty}` remains
the honest residual scalar wall behind `\texttt{VarCGRatio}_{\infty}`.

### Corollary PBR.10u37j (the frozen transported-strain amplitude reduces to cocycle control plus frozen strain amplitude)

Assume `SCN.A` and `SCN.B` on `I_0`, so that at the reference time `\tau`

```math
\bigl|W_J^N(\tau,a)\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)},
\qquad
\bigl|\bigl(W_J^N(\tau,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\le
e^{K_J^{coc}(a)}.
\tag{PBR.10u37j1}
```

If in addition the frozen strain amplitude is uniformly bounded,

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\|S_J^N(\tau,a)\|_F
\le
S_{J,\tau}^{frz},
\tag{PBR.10u37j2}
```

then

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\mathfrak A_{J,\tau}^{B,frz}(a)
\le
e^{2K_J^{coc}(a)}\,S_{J,\tau}^{frz}.
\tag{PBR.10u37j3}
```

Equivalently,

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\Longrightarrow
\texttt{FrozenTransportAmp}_{\infty}.
\tag{PBR.10u37j4}
```

So the frozen anchor inside `\texttt{StripTransportAmp}_{\infty}` is not
primitive either. It is just the frozen strain amplitude transported through
the cocycle and its inverse.

**Proof.**
At time `\tau`,

```math
B_{J,\tau}^N
=
\bigl(W_J^N(\tau,a)\bigr)^{-1}S_J^N(\tau,a)W_J^N(\tau,a),
\tag{PBR.10u37j5}
```

so

```math
\mathfrak A_{J,\tau}^{B,frz}(a)
\le
\bigl|\bigl(W_J^N(\tau,a)\bigr)^{-1}\bigr|_{\mathrm{op}}
\bigl|W_J^N(\tau,a)\bigr|_{\mathrm{op}}
\|S_J^N(\tau,a)\|_F.
\tag{PBR.10u37j6}
```

Applying `(PBR.10u37j1)` and `(PBR.10u37j2)` gives `(PBR.10u37j3)`, hence
`(PBR.10u37j4)`. ∎

### Corollary PBR.10u37k (the strip transported-strain amplitude reduces to cocycle control, frozen strain amplitude, and the two raw strip source scalars)

Assume `SCN.A` and `SCN.B` on `I_0`, together with the scalar packets
`\texttt{FrozenStrainAmp}_{\infty}`,
`\texttt{StrainVarRawScalar}_{\infty}`, and
`\texttt{RotCommRawScalar}_{\infty}`. Then

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\Longrightarrow
\texttt{StripTransportAmp}_{\infty}.
\tag{PBR.10u37k1}
```

So the strip transported-strain amplitude is not an independent scalar wall on
the stronger sufficient branch. It already factors through the frozen strain
amplitude and the two raw strip source scalars.

**Proof.**
Combine `(PBR.10u37j4)` with `(PBR.10u37f)`. ∎

### Corollary PBR.10u37l (the strip strain-to-Cauchy-Green ratio inherits the same stronger scalar reduction)

Under the same assumptions as Corollary `PBR.10u37k`,

```math
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\Longrightarrow
\texttt{VarCGRatio}_{\infty}.
\tag{PBR.10u37l1}
```

So the ratio wall behind the variation packet also descends to the same frozen
strain amplitude plus raw strip source scalars.

**Proof.**
Combine `(PBR.10u37k1)` with `(PBR.10u36e)`. ∎

### Corollary PBR.10u37m (the weighted variation square bypasses inherit the same stronger scalar reduction)

Assume the weighted variation supplier `(PBR.10p9)` and the scalar packet of
Corollary `PBR.10u37l`. Then

```math
(PBR.10p9)
\;+\;
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\Longrightarrow
\texttt{WeightedStrainVarRawSq}.
\tag{PBR.10u37m1}
```

If, in addition, `\texttt{BPersAmp}_{\infty}` holds, then

```math
(PBR.10p9)
\;+\;
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\;+\;
\texttt{BPersAmp}_{\infty}
\Longrightarrow
\texttt{WeightedStrainVarPersistSq}.
\tag{PBR.10u37m2}
```

So on the weighted exact splice, the whole variation side has a stronger scalar
route beneath `\texttt{StripTransportAmp}_{\infty}`.

**Proof.**
Apply `(PBR.10u37l1)` inside `(PBR.10u34j4)` and `(PBR.10u34k2)`. ∎

### Corollary PBR.10u37n (uniform cocycle control and a uniform entrance gap floor remove the remaining common persistence amplitude from the stronger variation square bypass)

Assume `(PBR.10p9)`, `SCN.A`, `SCN.B`, and `CGR.A`, together with the stronger
scalar packet of Corollary `PBR.10u37l`, and assume moreover that

```math
\sup_{a\in\pi_a(\mathcal G_J)} K_J^{coc}(a)\le K_\ast^{coc},
\qquad
\inf_{a\in\pi_a(\mathcal G_J)} g_0(a)\ge g_\ast^{ent}>0.
\tag{PBR.10u37n1}
```

Then

```math
(PBR.10p9)
\;+\;
\texttt{SCN.A}
\;+\;
\texttt{SCN.B}
\;+\;
\texttt{CGR.A}
\;+\;
\texttt{FrozenStrainAmp}_{\infty}
\;+\;
\texttt{StrainVarRawScalar}_{\infty}
\;+\;
\texttt{RotCommRawScalar}_{\infty}
\;+\;
\sup K_J^{coc}
\;+\;
\inf g_0
\Longrightarrow
\texttt{WeightedStrainVarPersistSq}.
\tag{PBR.10u37n2}
```

So on subfamilies carrying both a uniform entrance gap floor and uniform
cocycle control, the transported-strain variation square bypass collapses all
the way down to frozen strain amplitude plus the two raw strip source scalars.

**Proof.**
By `(PBR.10u32g4)` and `(PBR.10u32e)`, the assumptions imply
`\texttt{BPersAmp}_{\infty}`. Then apply `(PBR.10u37m2)`. ∎

### Corollary PBR.10u37o (the raw strain-variation scalar reduces to the strip ratio packet plus a weighted strip scalar)

Define the weighted strip variation scalar

```math
\eta_J^{var,w,sc}(a)
:=
\int_{I_0}
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds.
\tag{PBR.10u37o1}
```

Assume

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\eta_J^{var,w,sc}(a)
\le
V_{J}^{var,w,sc}.
\tag{PBR.10u37o2}
```

If moreover `\texttt{VarCGRatio}_{\infty}` holds, i.e.

```math
\sup_{a\in\pi_a(\mathcal G_J)}\mathfrak A_J^{var,ratio}(a)
\le
K_J^{var,ratio},
\tag{PBR.10u37o3}
```

then

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\eta_J^{\partial S,sc}(a)
\le
K_J^{var,ratio}\,V_J^{var,w,sc}.
\tag{PBR.10u37o4}
```

Equivalently,

```math
\texttt{VarWeightedScalar}_{\infty}
\;+\;
\texttt{VarCGRatio}_{\infty}
\Longrightarrow
\texttt{StrainVarRawScalar}_{\infty}.
\tag{PBR.10u37o5}
```

So the raw strip variation scalar is not primitive either. It is exactly the
strip ratio packet multiplied into the weighted strip variation scalar.

**Proof.**
This is `(PBR.10u34h)` integrated over `I_0`, then bounded by the strip
supremum `(PBR.10u37o3)`. ∎

### Corollary PBR.10u37p (the raw rotational strip scalar reduces to the same strip ratio packet plus a weighted rotational strip scalar)

Define the weighted strip rotational scalar

```math
\eta_J^{rot,w,sc}(a)
:=
\int_{I_0}
\frac{
|\mathcal C_J^N(s,a)|\,|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
}{
g_J^{str}(s,a)
}\,ds.
\tag{PBR.10u37p1}
```

Assume

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\eta_J^{rot,w,sc}(a)
\le
V_J^{rot,w,sc}.
\tag{PBR.10u37p2}
```

If moreover `\texttt{VarCGRatio}_{\infty}` holds in the form `(PBR.10u37o3)`,
then

```math
\sup_{a\in\pi_a(\mathcal G_J)}
\eta_J^{rot,sc}(a)
\le
K_J^{var,ratio}\,V_J^{rot,w,sc}.
\tag{PBR.10u37p3}
```

Equivalently,

```math
\texttt{RotWeightedScalar}_{\infty}
\;+\;
\texttt{VarCGRatio}_{\infty}
\Longrightarrow
\texttt{RotCommRawScalar}_{\infty}.
\tag{PBR.10u37p4}
```

So the raw rotational strip scalar also reduces to the same strip ratio packet,
now multiplied into a weighted rotational strip scalar.

**Proof.**
Pointwise in `s`,

```math
|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
=
\frac{g_J^{str}(s,a)}{|\mathcal C_J^N(s,a)|_{\mathrm{op}}}
\cdot
\frac{
|\mathcal C_J^N(s,a)|_{\mathrm{op}}\,|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
}{
g_J^{str}(s,a)
}.
\tag{PBR.10u37p5}
```

Integrate over `I_0` and bound by the strip supremum `(PBR.10u37o3)`. ∎

### Audit Note PBR.10u37q (the current exact surfaces do not yet discharge the weighted strip scalar packets)

Corollaries `(PBR.10u37o5)` and `(PBR.10u37p4)` are genuine scalar
refinements, but the current exact-potential surfaces on disk still do **not**
provide either

```math
\texttt{VarWeightedScalar}_{\infty}
\quad\text{or}\quad
\texttt{RotWeightedScalar}_{\infty}.
\tag{PBR.10u37q1}
```

The installed supplier `(PBR.10p9)` is only a weighted square bound for the
pair packet `\eta_{J,\mathrm{var}}^{mb}`, not a stripwise scalar supremum, and
there is still no installed scalar or localization theorem below the rotational
commutator source. So the scalar exact wall really has moved, but it has not
disappeared.

### Proposition PBR.10u38 (raw rotational localization reduces to weighted rotational localization plus the strip ratio packet)

Define the weighted rotational density on the pair family by

```math
\eta_J^{rot,w,pair}(a,b)
:=
\int_{I_0}
\frac{
|\mathcal C_J^N(s,a)|_{\mathrm{op}}\,
|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
}{
g_J^{str}(s,a)
}\,ds.
\tag{PBR.10u38a}
```

Assume there is a measurable bad set `B_J^{rot,w}\subset\mathcal G_J` such
that

```math
\operatorname{supp}\bigl(\eta_J^{rot,w,pair}\bigr)
\subseteq
B_J^{rot,w},
\qquad
\mu_J^{pair}(B_J^{rot,w})=o_J(1).
\tag{PBR.10u38b}
```

Assume also the plain pair-measure `L^p` bound

```math
\bigl\|\eta_J^{rot,w,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,rot}^{w}.
\tag{PBR.10u38c}
```

If moreover `\texttt{VarCGRatio}_{\infty}` holds in the form
`(PBR.10u37o3)`, then `\texttt{RotCommRawLoc}_{\mu,p}` holds with the same bad
set and with quantitative bound

```math
\bigl\|\eta_{J,\tau}^{rot,pair}\bigr\|_{L^p(d\mu_J^{pair})}
\le
K_J^{var,ratio}\,C_{p,rot}^{w}.
\tag{PBR.10u38d}
```

Equivalently,

```math
\texttt{RotWeightedLoc}_{\mu,p}
\;+\;
\texttt{VarCGRatio}_{\infty}
\Longrightarrow
\texttt{RotCommRawLoc}_{\mu,p}.
\tag{PBR.10u38e}
```

So the raw rotational localization wall is not primitive either. It is exactly
the same strip ratio packet multiplied into a weighted rotational localization
theorem.

**Proof.**
Pointwise in `s`,

```math
|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
=
\frac{g_J^{str}(s,a)}{|\mathcal C_J^N(s,a)|_{\mathrm{op}}}
\cdot
\frac{
|\mathcal C_J^N(s,a)|_{\mathrm{op}}\,
|[S_J^N(s,a),K_J^N(s,a)]|_{\mathrm{op}}
}{
g_J^{str}(s,a)
}.
\tag{PBR.10u38f}
```

Integrating over `I_0` gives

```math
\eta_{J,\tau}^{rot,pair}(a,b)
\le
\mathfrak A_J^{var,ratio}(a)\,\eta_J^{rot,w,pair}(a,b).
\tag{PBR.10u38g}
```

The support statement follows from `(PBR.10u38b)`, and the `L^p` bound
`(PBR.10u38d)` is `(PBR.10u38c)` multiplied by the strip supremum
`(PBR.10u37o3)`. ∎

### Audit Note PBR.10u38h (the current exact surfaces do not yet discharge the weighted rotational localization packet)

Proposition `(PBR.10u38e)` is a genuine geometric refinement, but the current
exact-potential surfaces on disk still do **not** provide
`\texttt{RotWeightedLoc}_{\mu,p}`.

The identity

```math
[S_J^N,K_J^N]=[S_J^N,A_J^N]
\qquad\text{since }A_J^N=S_J^N+K_J^N
\text{ and }[S_J^N,S_J^N]=0
\tag{PBR.10u38h1}
```

does give the pointwise product bound

```math
\bigl|[S_J^N(s,a),K_J^N(s,a)]\bigr|_{\mathrm{op}}
\le
2\,\|S_J^N(s,a)\|_F\,|A_J^N(s,a)|_{\mathrm{op}},
\tag{PBR.10u38h2}
```

but the current exact surfaces still do not supply a plain pair-measure
bad-set/localization theorem for the resulting mixed product density. So the
rotational geometric wall has moved to `\texttt{RotWeightedLoc}_{\mu,p}`, but
it has not disappeared.

### Proposition PBR.10v (a local weighted reverse-Hölder packet plus weighted bad-set localization implies `BootSquare`)

Let `d\nu_J:=M_J^2\,d\mu_J` on the active projective window `I`, and assume the
weighted metric-measure structure used on that window is doubling with uniform
constants on the relevant parabolic cube family. Let
`\rho_{J,1},\dots,\rho_{J,m}` be the residual densities entering the square
bootstrap packet `BootSquare`, and assume

```math
\operatorname{supp}\rho_{J,k}\subseteq B_J,
\qquad
\nu_J(B_J)=o_J(1).
\tag{PBR.10v1}
```

Assume further that each `\rho_{J,k}` satisfies a uniform local reverse Hölder
estimate

```math
\left(
\fint_Q |\rho_{J,k}|^2\,d\nu_J
\right)^{1/2}
\le
C_{\mathrm{RH}}
\fint_{\Lambda Q} |\rho_{J,k}|\,d\nu_J
\tag{PBR.10v2}
```

for every relevant parabolic cube `Q` in the active window and one fixed
dilation factor `\Lambda>1`. Finally, assume the Gehring self-improvement
globalizes on the active window in the form: there exists `\varepsilon>0` such
that

```math
\|\rho_{J,k}\|_{L^{2+\varepsilon}(d\nu_J;I)}
\le
C_\varepsilon
\qquad
\text{for each }k=1,\dots,m.
\tag{PBR.10v3}
```

Then `BootSquare` follows:

```math
\sum_{k=1}^m \int_I |\rho_{J,k}|^2\,d\nu_J
=
o_J(1).
\tag{PBR.10v4}
```

So the projective square packet admits the exact reduction

```math
\texttt{WeightedBadSet}
+
\texttt{RH}_{\nu}
\Longrightarrow
\texttt{BootSquare},
\tag{PBR.10v5}
```

where `RH_\nu` denotes the local weighted reverse-Hölder packet together with
the corresponding active-window globalization `(PBR.10v3)`.

**Proof.**
By Gehring self-improvement on the doubling weighted space, `(PBR.10v2)`
supplies `(PBR.10v3)` for some `\varepsilon>0`; here we use only the resulting
globalized higher-integrability bound on the active window. Since
`\rho_{J,k}` is supported on `B_J`, Hölder gives

```math
\int_I |\rho_{J,k}|^2\,d\nu_J
=
\int_{B_J} |\rho_{J,k}|^2\,d\nu_J
\le
\|\rho_{J,k}\|_{L^{2+\varepsilon}(d\nu_J;I)}^2\,
\nu_J(B_J)^{\varepsilon/(2+\varepsilon)}.
```

Apply `(PBR.10v3)` and `(PBR.10v1)`, then sum over `k=1,\dots,m`. This yields
`(PBR.10v4)`, which is exactly `BootSquare`. ∎

### Corollary PBR.10w (the measurable-derivative projective cut sits at `PTC-Lin + PTC-Shape + BootSquare`)

The branch primitive remains projector-first:

```math
D.7mq + \text{selector-strain compatibility}\Longrightarrow D.7mr2.
\tag{PBR.10w1}
```

But `(PBR.1)` already fixes `D.7mq` as downstream of the two upstream
pair/reference theorem packets. Therefore the minimal measurable-derivative
descendant carried by this note can be read as

```math
\texttt{PTC-Lin}
+
\texttt{PTC-Shape}
+
\texttt{BootSquare}
\Longrightarrow
\texttt{selector-strain compatibility}
\Longrightarrow
\texttt{D.7mr2}.
\tag{PBR.10w2}
```

At the primitive theorem level this means:

```math
\texttt{PTC-Lin.A}
+
\texttt{PTC-Shape.A}
+
\texttt{BootSquare}
\Longrightarrow
\texttt{D.7mr2},
\tag{PBR.10w3}
```

where `PTC-Lin.A` is the pair-linearization packet and `PTC-Shape.A` is the
selector-shape degree-2 isotropy theorem already isolated in the companion
projector-construction notes.

Under the explicit selector-scale realizations `\xi_{ab}=b-a` or
`\xi_{ab}=(b-a)/\ell_J`, together with the active-pair scale packet
`(PTCL.3aj)`, the pair variable has bounded collar support for `\xi_{ab}`. So
the linearization packet sharpens further to the selector-good
differentiability-exceptional-set theorem isolated in
`PTCL.I`, with `TPS.4u` as one exact sufficient realization of that step, and
the measurable-derivative descendant can be read more sharply as

```math
\texttt{DiffExc}
+
\texttt{PTC-Shape.A}
+
\texttt{BootSquare}
\Longrightarrow
\texttt{D.7mr2},
\tag{PBR.10w3'}
```

where `DiffExc` abbreviates:

```math
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(t,a)\bigr)\to 0
\quad\text{for every fixed }\eta>0
\text{ on the selector-good family.}
\tag{PBR.10w3''}
```

So the current live upstream cut on the measurable-derivative projective
descendant is not a free-standing `D.7mq + BootSquare` package. It is the
three-packet splice

```math
\texttt{PTC-Lin.A}
+
\texttt{PTC-Shape.A}
+
\texttt{BootSquare},
\tag{PBR.10w4}
```

with `StrongBadSet_{p>2}` from `(PBR.10u5)`,
`Weight_{L^q} + BadSet_{\mu,p}` from `(PBR.10u8e)`,
its raw-boot corollary
`Uniform-Klin + Weight_{L^q} + BootBadSet_{\mu,p}` from `(PBR.10u9d)`, and
the `DiffExc`-localized form
`DiffExc + BootLoc_{diff,p} + Weight_{L^q} + Uniform-Klin` from `(PBR.10u10e)`,
the canonical-source split
`Uniform-Klin + Weight_{L^q} + InitLoc_{\mu,p} + CommLoc_{\mu,p}` from
`(PBR.10u11f)`,
with `CommLoc_{\mu,p}` itself split by
`Weight_{L^q} + CommLoc_{\mu,p}^{comm} + CommLoc_{\mu,p}^{var}` from
`(PBR.10u12j)`,
where `CommLoc_{\mu,p}^{comm}` is reduced further by
`RefCommLoc_{\mu,p} + CGPersistLoc_{\mu,p} + BPersistLoc_{\mu,p}` from
`(PBR.10u13l)`,
with `CGPersistLoc_{\mu,p}` itself reduced by
`CGCommonLoc_{\mu,p} + CGPersAmp_{\infty}` from `(PBR.10u28g)`,
with one exact sufficient amplitude realization
`SCN.A + CGR.A + FrozenTransportRatio_{\infty}` from `(PBR.10u29e)`,
and a sharper sufficient realization
`SCN.A + SCN.B + FrozenStrainGapRatio_{\infty}` from `(PBR.10u29h)`,
and with one stronger uniform-floor realization
`\sup K_J^{coc} + \inf g_0 + FrozenStrainAmp_{\infty}` from
`(PBR.10u29j5)`,
with `RefCommLoc_{\mu,p}` itself reduced by
`RefOffAxisLoc_{\mu,p} + RefQCommLoc_{\mu,p}` from `(PBR.10u15o)`,
and in the codimension-one transverse case by
`RefOffAxisLoc_{\mu,p}` alone from `(PBR.10u15q)`,
there further by `RefRotOffAxisLoc_{\mu,p}` from `(PBR.10u16j)`,
then by `RefStrainOffAxisLoc_{\mu,p}` from `(PBR.10u17f)`,
then by `RefAmp_{\infty} + RefFrozenOffAxisLoc_{\mu,p}` from `(PBR.10u18h)`,
with `RefAmp_{\infty}` itself reduced first by
`RefCoc_{\infty} + RefInvCoc_{\infty} + RefGapFloor` from `(PBR.10u18m8)`,
and then more sharply by `SCN.A + SCN.B + CGR` from
`(PBR.10u18n6)`,
and under `RefNormal` by
`RefAmp_{\infty} + RefFrozenCGOffAxisLoc_{\mu,p}` from `(PBR.10u19g)`,
with `RefFrozenCGOffAxisLoc_{\mu,p}` itself reduced further by
`PairFrozenOffAxisLoc_{\mu,p} + FrozenSyncStrainLoc_{\mu,p}` from
`(PBR.10u20i)`,
with `PairFrozenOffAxisLoc_{\mu,p}` itself reduced by
`FrozenPairSurLoc_{\mu,p}` from `(PBR.10u20m7)`,
and on the localized projector-moment realization by
`FrozenPairMomentLoc_{\mu,p}` from `(PBR.10u20n5)`,
where this remains a branch-local frozen surrogate wall rather than a further
descendant of the localized-projector local dynamics packet by `(PBR.10u20o)`,
but with one stronger sufficient pair-side bypass given by the weighted frozen
projector-moment discrepancy theorem `(PBR.10u20p3)`,
itself supplied directly by the transported-strip overstrong route `LPM.C`
through `(PBR.10u20q4)`,
and more weakly already by a spacetime weighted discrepancy theorem through one
good frozen slice `(PBR.10u20r4)`,
with `FrozenSyncStrainLoc_{\mu,p}` itself reduced by
`FrozenStrainAmp_{\infty} + FrozenSyncProjLoc_{\mu,p}` from
`(PBR.10u21f)`,
with `FrozenSyncProjLoc_{\mu,p}` itself reduced by
`FrozenPairCGErrLoc_{\mu,p/2}` from `(PBR.10u22f)`,
with `FrozenPairCGErrLoc_{\mu,p/2}` itself reduced by
`FrozenCGGapFloor + FrozenLinLoc_{\mu,p} + FrozenWShapeLoc_{\mu,p}` from
`(PBR.10u23h)`,
with `FrozenLinLoc_{\mu,p}` itself reduced by
`FrozenDiffPriceLoc_{\mu,p/2}` from `(PBR.10u24h8)`,
with `FrozenDiffPriceLoc_{\mu,p/2}` itself reduced by
`FrozenTolLoc_{\mu,p} + FrozenDiffWeightLoc_{\mu,p/2}` from
`(PBR.10u24i7)`,
and under `(PTCL.3ai)` plus `(PTCL.3aj)` with the uniform frozen collar bound,
`FrozenDiffWeightLoc_{\mu,p/2}` itself reduced by
`PTCL.H + FrozenDiffMeasLoc_{\mu,p/2}` from `(PBR.10u24j8)`,
with one stronger synchronized-modulus realization of
`FrozenDiffMeasLoc_{\mu,p/2}` given by
`SyncDiffQuad_{\tau} + FrozenTolLoc_{\mu,p}` from `(PBR.10u24n6)`,
and one stronger sufficient realization of `SyncDiffQuad_{\tau}` given by
`SyncThreshSq_{\tau}` from `(PBR.10u24q4)`,
with `FrozenWShapeLoc_{\mu,p}` itself reduced by
`FrozenCoc_{\infty} + FrozenShapeLoc_{\mu,p}` from `(PBR.10u24f)`,
with `FrozenShapeLoc_{\mu,p}` itself reduced by
`FrozenShapeDirLoc_{\mu,p}` from `(PBR.10u24g6)`,
with `FrozenCGGapFloor` already reduced by `CGR.A` from `(PBR.10u25c)`,
with `FrozenCoc_{\infty}` already reduced by `SCN.A` from `(PBR.10u26c)`,
and with `FrozenStrainAmp_{\infty}` isolated as the honest residual scalar
packet by `(PBR.10u27)`,
and `BPersistLoc_{\mu,p}` itself is reduced by
`StrainVarPersistLoc_{\mu,p} + RotCommPersistLoc_{\mu,p}` from
`(PBR.10u14i)`,
with `StrainVarPersistLoc_{\mu,p}` itself reduced by
`StrainVarRawLoc_{\mu,p} + BPersAmp_{\infty}` from `(PBR.10u31k)`,
with `StrainVarRawLoc_{\mu,p}` itself reduced by
`VarWeightedLoc_{\mu,p} + VarCGRatio_{\infty}` from `(PBR.10u34g)`,
but with one stronger weighted-square bypass
`(PBR.10p9) + VarCGRatio_{\infty}` from `(PBR.10u34j4)`,
and one transported-strain variation square bypass
`(PBR.10p9) + VarCGRatio_{\infty} + BPersAmp_{\infty}` from
`(PBR.10u34k2)`,
with `VarCGRatio_{\infty}` itself reduced by
`SCN.B + StripTransportAmp_{\infty}` from `(PBR.10u36e)`,
with `FrozenTransportAmp_{\infty}` inside that strip packet reduced by
`SCN.A + SCN.B + FrozenStrainAmp_{\infty}` from `(PBR.10u37j4)`,
with one stronger scalar descendant
`SCN.A + SCN.B + FrozenStrainAmp_{\infty}
+ StrainVarRawScalar_{\infty} + RotCommRawScalar_{\infty}` from
`(PBR.10u37l1)`,
with `StrainVarRawScalar_{\infty}` itself reduced by
`VarWeightedScalar_{\infty} + VarCGRatio_{\infty}` from `(PBR.10u37o5)`,
and `RotCommRawScalar_{\infty}` itself reduced by
`RotWeightedScalar_{\infty} + VarCGRatio_{\infty}` from `(PBR.10u37p4)`,
and with the corresponding stronger weighted-square descendants
`(PBR.10p9)` plus that same scalar packet from `(PBR.10u37m1)` and
`(PBR.10u37m2)`,
with one further uniform-floor descendant of the transported-strain variation
square bypass given by `(PBR.10u37n2)`,
with `RotCommPersistLoc_{\mu,p}` itself reduced by
`RotCommRawLoc_{\mu,p} + BPersAmp_{\infty}` from `(PBR.10u31l)`,
with `RotCommRawLoc_{\mu,p}` itself reduced by
`RotWeightedLoc_{\mu,p} + VarCGRatio_{\infty}` from `(PBR.10u38e)`,
and with the common amplitude reduced by
`SCN.A + SCN.B + CGR.A + BPersRatio_{\infty}` from `(PBR.10u32e)`, and
with one stronger uniform-floor realization of that ratio packet given by
`\sup K_J^{coc} + \inf g_0` from `(PBR.10u32g4)`, and
`WeightedBadSet + RH_\nu` from `(PBR.10v5)` treated only as exact sufficient
realizations of `BootSquare`, not as additional branch primitives. Under the
selector-scale coordinate choice `(PTCL.3ai)` plus the active-pair scale packet
`(PTCL.3aj)`, the real live linearization burden inside this splice splits into
the geometric packet
`FrozenDiffMeasLoc_{\mu,p/2}` and the auxiliary scalar tolerance packet
`FrozenTolLoc_{\mu,p}` by `(PBR.10u24k2)`, with `DiffExc` still the upstream
source of the geometric side. A stronger sufficient realization of the
geometric packet is the synchronized quadratic-threshold theorem
`SyncDiffQuad_{\tau}` from `(PBR.10u24n6)`, itself implied by the
threshold-vs-linearization synchronization law `(PBR.10u24q4)`. On the
Cauchy-Green persistence side, the live common strip packet is now
`CGCommonLoc_{\mu,p}` and the honest residual scalar amplitude wall is
`FrozenStrainGapRatio_{\infty}` by `(PBR.10u30)`, which disappears on any
subfamily carrying both a uniform entrance gap floor and uniform cocycle
control by `(PBR.10u29j5)`. On the transported-strain
persistence side, the live geometric debts are now
`VarWeightedLoc_{\mu,p}` and `RotCommRawLoc_{\mu,p}`, with
`StripTransportAmp_{\infty}` as the scalar wall behind the variation reduction
by `(PBR.10u36e)`, with its frozen anchor already reduced by `(PBR.10u37j4)`,
and with one stronger scalar realization given by `(PBR.10u37l1)`,
where the raw strip scalars are themselves reduced by `(PBR.10u37o5)` and
`(PBR.10u37p4)` to weighted strip scalars plus the same ratio packet,
while on the weighted exact splice the variation source already has the direct
square bypass `(PBR.10u34j4)` and the transported-strain variation term has the
further square bypass `(PBR.10u34k2)`, and both inherit the stronger scalar
descendants `(PBR.10u37m1)`-`(PBR.10u37m2)`, while the transported-strain
variation term also has the further uniform-floor descendant `(PBR.10u37n2)`,
while the rotational geometric wall is now `RotWeightedLoc_{\mu,p}` by
`(PBR.10u38e)`, and the
honest scalar amplitude wall is `BPersRatio_{\infty}` by `(PBR.10u33)`, which
likewise disappears under a uniform entrance gap floor and uniform cocycle
control by `(PBR.10u32g4)`. On the pair side, the honest branch-local frozen
wall is still `FrozenPairMomentLoc_{\mu,p}`, but there is now also the parallel
overstrong weighted-square bypass `(PBR.10u20p3)` coming from frozen
projector-moment discrepancy, and one step above that the transported-strip
overstrong route `LPM.C` feeds the same bypass directly by `(PBR.10u20q4)`,
while a weaker spacetime discrepancy theorem still feeds it through a
J-dependent good frozen slice by `(PBR.10u20r4)`.

**Proof.**
Combine `(PBR.1)` with `(PBR.10t2)`. The primitive theorem formulation
`(PBR.10w3)` is just the sharpened reading of `PTC-Lin` and `PTC-Shape`
already isolated by the companion exact-potential projector notes. The more
refined selector-scale form `(PBR.10w3')` is exactly Corollary
`PTCL.I`. The last sentence is exactly the sufficient-realization hierarchy
recorded in `(PBR.10u5)`, `(PBR.10u8e)`, `(PBR.10u11f)`, `(PBR.10u12j)`,
`(PBR.10u13l)`, `(PBR.10u14i)`, `(PBR.10u15o)`, `(PBR.10u15q)`,
`(PBR.10u16j)`, `(PBR.10u17f)`, `(PBR.10u18h)`, `(PBR.10u18m8)`,
`(PBR.10u18n6)`, `(PBR.10u19g)`, `(PBR.10u20i)`, `(PBR.10u20m7)`,
`(PBR.10u20n5)`, `(PBR.10u21f)`, `(PBR.10u22f)`, `(PBR.10u23h)`,
`(PBR.10u24h8)`, `(PBR.10u24i7)`, `(PBR.10u24j8)`, `(PBR.10u24f)`,
`(PBR.10u24g6)`, `(PBR.10u24k2)`, `(PBR.10u24n6)`, `(PBR.10u24q4)`,
`(PBR.10u25c)`, `(PBR.10u26c)`, `(PBR.10u27)`, `(PBR.10u28g)`,
`(PBR.10u29e)`, `(PBR.10u29h)`, `(PBR.10u30)`, `(PBR.10u31k)`,
`(PBR.10u31l)`, `(PBR.10u32e)`, `(PBR.10u33)`, `(PBR.10u34g)`,
`(PBR.10u35)`, `(PBR.10u36e)`, `(PBR.10u37)`, `(PBR.10u37j4)`,
`(PBR.10u38)`, and
`(PBR.10v5)`. ∎

## Downstream Boundary

This note does **not** make the post-`RPC.3` chain the live simple-top wall:

```math
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.lambda2
\Longrightarrow
\text{continuation}
\tag{PBR.11}
```

remains the correct downstream export read. The live simple-top burden in this
note remains upstream under `PSJ+`: `PTC-Lin + PTC-Shape => D.7mq`, together
with the square-budget selector-strain supplier package
`SSC-D7mb-collapse`.

## Exact Repo-Facing Read

The clean closure state is therefore:

1. the projector-first read is upstream-fixed by
   `PTC-Lin + PTC-Shape \Longrightarrow D.7mq`;
2. the active measurable-derivative descendant under `PSJ+` is the square-budget
   packet `SSC-D7mb-collapse`, with `MixCollapse-Honest` as the hard supplier and
   `InitCollapse` / `DriftCollapse-Honest` as supporting suppliers;
3. `D.7mr2` is the stable branch-facing export;
4. `RPC.3 -> SG.4 -> BR.lambda2 -> continuation` is downstream export, not the
   upstream theorem wall;
5. `EP.11d + V1+V2` remains a stronger sufficient continuation beginning from
   `D.7mr2`, not a replacement for the `PSJ+` square-budget burden.
6. the terminal branch assembly from the projector-first and selector-strain
   inputs is recorded in
   [psj-plus-terminal-assembly.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-terminal-assembly.md).
