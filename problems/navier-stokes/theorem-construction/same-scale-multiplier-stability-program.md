# Same-Scale Multiplier Stability Program

## Purpose

This note unifies the two non-far-corona analytic debts on the signed
continuous-scale route:

1. the upper-boundary packet `\mathfrak B_N^{upper}`;
2. the near-corona moving-spill packet `\Pi_N^{mov\text{-}spill,L}`.

The shared support geometry is finite-width near the active scale, but that is
only a localization statement. It does not assert comparable amplitudes, a
linear profile, or cancellation. The moving-spill object has an installed
finite-family reduction. The upper-boundary object still owes the explicit
coefficientwise frozen-family identity before it can spend the same edge-family
estimate. Once those hypotheses are in place, the shared target is one stability
theorem for bounded families of annular order-zero multipliers, rather than two
unrelated large-gap arguments.

## The two packets

The upper-boundary packet is

```math
\mathfrak B_N^{upper}(t)
=
\int (\partial_s\chi_{mid})(s)\,\Psi(s,t)\,ds,
\tag{1}
```

supported in a bounded logarithmic collar near the top scale, with constants
`0<c_\ell\le C_\ell<\infty` satisfying
`c_\ell2^{-N}\le \ell_N\le C_\ell2^{-N}`.

The moving-spill packet is reduced, under the installed fixed-offset reduction,
to a finite family of edge packets plus a collar residual:

```math
\Pi_N^{mov\text{-}spill,L}
=
\sum_{|m|\le M_L}\Pi_{N,m}^{edge}
+
\mathcal E_N^{collar}.
\tag{2}
```

Thus the moving-spill packet carries no genuine long lifted band, and the
upper-boundary packet will carry none after `(UB\text{-}fam)` is written.

## Common structural feature

Both packets are built from fields of the form

```math
M(\ell D)u,
\tag{3}
```

where `M` is a smooth order-zero multiplier supported in an annulus whose width
and relative offset are bounded independently of `N`.

For the moving spill this is already explicit:

```math
b_{\ell,m}=T_m(\ell D)u.
\tag{4}
```

For the upper boundary, the factor `(\partial_s\chi_{mid})(s)` only gives the
scale support restriction
`e^{-C_\chi}\ell_N\le\ell\le e^{C_\chi}\ell_N`. The proof still has to write the
coefficientwise frozen-family identity

```math
\mathfrak B_N^{upper}(t)
=
\sum_{a\in\mathcal A_{ub}}c_a\,\Pi_{N,a}^{edge}(t)
+
\mathcal E_N^{ub,collar}(t),
\tag{UB\text{-}fam}
```

with a finite family `\mathcal A_{ub}` and a collar residual satisfying its
separate admissible bound. Until `(UB\text{-}fam)` is written, the upper-boundary
object is a frozen-scale reduction target, not an installed edge-family packet.

Thus the phrase "same-scale" means the following exact support condition:

```math
\text{a divergence-free annular multiplier family with fixed relative offset }
c\ell_N^{-1}\le |\xi|\le C\ell_N^{-1},
\tag{5}
```

with constants independent of `N`, plus the explicitly displayed finite-family
or collar-residual hypotheses. It carries no proof force by itself.

## Strong target theorem

The right theorem target is therefore a finite-family stability statement.

Let `\{M_a(\ell D)\}_{a\in\mathcal A}` be a finite family of annular order-zero
multiplier operators, uniformly bounded in symbol seminorms and with bounded
relative offsets from the active scale. Assume each induced transport field is
divergence-free.

Define the associated scalarized edge packet by freezing the collar scale and
using the commutator / edge-test pairing

```math
\Pi_{\ell,a}^{edge}(t)
:=
\ell^{-2}
\left\langle
[P_{\le \ell},b_{\ell,a}\!\cdot\nabla]u,\,
Q_{\ell,a}^{edge}u
\right\rangle,
\qquad b_{\ell,a}:=M_a(\ell D)u,
\tag{SS\text{-}packet}
```

then aggregating over the fixed collar
`c_\ell\ell_N\le\ell\le C_\ell\ell_N` to form `\Pi_{N,a}^{edge}`.

The target theorem is:

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N},
\tag{SS}
```

with constants uniform over the finite family.

Once `(SS)` is proved, both local debts close by finite summation.

## Weak same-scale theorem already available

What is already honest on the current theorem surface is weaker than `(SS)` but
stronger than “program only.” The model packet note
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md)
proves the coefficient-bearing model estimate

```math
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon \nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,a,\nu}\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt,
\tag{SS^\sharp}
```

with

```math
\Theta_N^{ss,\sharp}(t)
:=
2^{3N}\sum_{|m-N|\le C_{ss}}\|\Delta_m u(t)\|_{L_x^2}^2.
\tag{SS^\sharp\text{-}coeff}
```

Together with the finite-family lift, this yields `(MS^\sharp)` for the
installed moving-spill family, and it yields `(UB^\sharp)` for the upper boundary
after `(UB\text{-}fam)` and the collar-residual bound are written.
The coefficient term is then included in the installed weighted carrier, and so
is killed only as a separate barrier-scale burden, by
[same-scale-coefficient-kill-into-weighted-carrier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md):

```math
\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
\le
\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{SS-gap}
```

So the exact remaining same-scale debt bifurcates:

1. on the weighted spectral route, the coefficient term is no longer a distinct
   blocker;
2. for a standalone same-scale packet theorem, the remaining strengthening is
   still the upgrade from `(SS^\sharp)` to the coefficient-free theorem `(SS)`.

The exact symbol-level obstruction is now recorded in
[same-scale-edge-fourier-symbol-and-principal-part-test.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-fourier-symbol-and-principal-part-test.md):
for the honest scalarized same-scale packet, incompressibility alone rewrites
the transport factor but does **not** annihilate the principal same-scale
amplitude. So the coefficient-free route must start from the commutator
difference factor and a later flux/time normal form, not from bare same-scale
antisymmetry.

The exact family-lift step is now formalized in
[same-scale-family-lift-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md):
once the upper-boundary collar integral is written as an explicit finite
same-scale edge family and the model packet estimate is available, the lift to
`(UB)` and `(MS)` is a finite summation argument.

## Exact upper-boundary condition for `(SS)`

The upper-boundary packet is not a moving lower-scale accumulation. It lives in
the top collar where the scale has already frozen.

After the global signed balance identity is written explicitly, the exact
missing local algebra is `(UB\text{-}fam)`: decompose the upper-boundary
integrand into a finite family of edge pairings with
`c\ell_N\le \ell\le C\ell_N` for fixed constants `c,C`, plus a collar residual
with its own admissible bound. That is a multiplier-stability input only after
the decomposition and residual estimate are displayed.

The exact theorem target is

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{UB}
```

The conditional claim is that `(UB)` follows from the same finite-family
stability theorem `(SS)` once `(UB\text{-}fam)` and its collar-residual estimate
are written.
That exact reduction target is now recorded separately in
[upper-boundary-frozen-edge-family-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/upper-boundary-frozen-edge-family-reduction-note.md).

The upper-boundary reduction note records the honest stopping point: the route
identifies the upper boundary as a bounded-offset collar problem, but not yet as
an explicit finite edge-family decomposition.

## Exact moving-spill condition for `(SS)`

This side is already explicit. The near-corona packet has been reduced to the
finite family `\Pi_{N,m}^{edge}` in `(2)`.

The exact remaining theorem for this side is the uniform finite-family estimate

```math
\int_0^T |\Pi_{N,m}^{edge}(t)|\,dt
\le
\varepsilon_m\nu\int_0^T D_N(t)\,dt
+
C_{m,*}2^{-2\delta N},
\qquad |m|\le M_L,
\tag{6}
```

together with the displayed collar residual bound for `\mathcal E_N^{collar}`.
That is precisely `(SS)` for the finite family `\{T_m\}_{|m|\le M_L}`.

## Execution order

The dependency order is:

1. write the global signed balance identity and isolate the upper-boundary
   integrand in frozen same-scale form;
2. prove the weak model packet estimate `(SS^\sharp)` and record its weak lift to
   `(UB^\sharp)` and `(MS^\sharp)`;
3. include the same-scale coefficient term in the installed weighted carrier
   `\widetilde\Lambda_N^\sharp E_N`;
4. only if a standalone pure packet theorem is still needed, upgrade to the
   coefficient-free finite-family theorem `(SS)` and derive
   `(UB)` and `(MS)`.

The finite-family lift itself is now written out explicitly in
[same-scale-family-lift-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md):
once the upper boundary is written as a finite edge family and the model
same-scale estimate is available uniformly, `(UB)` and `(MS)` follow by finite
summation.

So the route is

```math
\begin{aligned}
&\text{global signed identity plus explicit }(UB\text{-}fam)
\\
&\Longrightarrow
\text{finite frozen edge family plus admissible collar residual}
\\
&\Longrightarrow
\text{weak model theorem }(SS^\sharp)\text{ plus finite lift}
\\
&\Longrightarrow
\text{coefficient term included in }\widetilde\Lambda_N^\sharp E_N
\\
&\Longrightarrow
\text{optional strong upgrade to coefficient-free }(SS)
\\
&\Longrightarrow
\text{upper boundary plus moving spill}.
\end{aligned}
\tag{7}
```

## Honest boundary

This note does **not** prove `(SS)`.

What it settles is narrower and exact. The moving-spill debt is reduced to a
finite edge family plus collar residual. The upper-boundary debt is reduced to
the explicit algebraic task `(UB\text{-}fam)`, after which the same finite-family
lift and coefficient-bearing model estimate apply. On the weighted spectral
route, the coefficient term is already part of the installed carrier; for a
standalone coefficient-free packet theorem, the remaining stronger target is
still `(SS)`.

The exact one-packet proof shape now has its own program note:
[one-model-packet-ss-proof-program-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/one-model-packet-ss-proof-program-note.md).
Its conclusion is that coefficient-free `(SS)` will require a new signed
same-scale commutator normal form replacing the current shellwise
Bernstein/absolute-value step.
