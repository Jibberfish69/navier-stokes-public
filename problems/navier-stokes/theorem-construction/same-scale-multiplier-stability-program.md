# Same-Scale Multiplier Stability Program

## Purpose

This note unifies the two non-far-corona analytic debts on the signed
continuous-scale route:

1. the upper-boundary packet `\mathfrak B_N^{upper}`;
2. the near-corona moving-spill packet `\Pi_N^{mov\text{-}spill,L}`.

The point is that both objects are now same-scale finite-width packets. They
should be attacked by one common stability theorem for bounded families of
annular order-zero multipliers, not by two unrelated large-gap arguments.

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

The moving-spill packet is already reduced to a finite family of fixed-offset
same-scale edge packets:

```math
\Pi_N^{mov\text{-}spill,L}
=
\sum_{|m|\le M_L}\Pi_{N,m}^{edge}
+
\mathcal E_N^{collar}.
\tag{2}
```

So neither packet now carries a genuine long lifted band.

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

For the upper boundary, once the global signed balance identity is written
explicitly, the factor `(\partial_s\chi_{mid})(s)` freezes the scale to an
bounded collar near `\ell_N`, so the remaining multiplier structure is again a
finite-width annular family at the active scale.

So the correct abstraction is:

```math
\text{same-scale divergence-free annular multiplier family at bounded relative offset.}
\tag{5}
```

## Strong target theorem

The right theorem target is therefore a finite-family stability statement.

Let `\{M_a(\ell D)\}_{a\in\mathcal A}` be a finite family of annular order-zero
multiplier operators, uniformly bounded in symbol seminorms and with bounded
relative offsets from the active scale. Assume each induced transport field is
divergence-free.

Define the associated scalarized same-scale edge packet by the corresponding
commutator / stress-strain pairing against the active `H^1` stress.

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
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md)
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

Together with the upper-boundary family reduction and the finite-family lift,
this already yields weak same-scale bounds `(UB^\sharp)` and `(MS^\sharp)`.
The coefficient term itself is then killed as a separate barrier-scale burden by
[same-scale-coefficient-kill-into-weighted-carrier-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md):

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
[same-scale-edge-fourier-symbol-and-principal-part-test.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-fourier-symbol-and-principal-part-test.md):
for the honest scalarized same-scale packet, incompressibility alone rewrites
the transport factor but does **not** annihilate the principal same-scale
amplitude. So the coefficient-free route must start from the commutator
difference factor and a later flux/time normal form, not from bare same-scale
antisymmetry.

The exact family-lift step is now formalized in
[same-scale-family-lift-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md):
once the upper-boundary collar integral is written as an explicit finite
same-scale edge family and the model packet estimate is available, the lift to
`(UB)` and `(MS)` is a finite summation argument.

## Why the upper boundary should reduce to `(SS)`

The upper-boundary packet is not a moving lower-scale accumulation. It lives in
the top collar where the scale has already frozen.

So after writing the global signed balance identity explicitly, the remaining
upper-boundary integrand should be decomposed into a finite family of same-scale
edge pairings with `c\ell_N\le \ell\le C\ell_N` for fixed constants `c,C`.
That is a multiplier-stability problem, not a new large-gap theorem.

The exact theorem target is

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{UB}
```

The program claim is that `(UB)` should be derived from the same finite-family
stability theorem `(SS)` once the boundary integrand is written in the frozen
same-scale normal form.
That exact reduction target is now recorded separately in
[upper-boundary-frozen-edge-family-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/upper-boundary-frozen-edge-family-reduction-note.md).

The upper-boundary reduction note records the honest stopping point: the route
already identifies the upper boundary as a bounded-offset same-scale collar
family, but not yet as an explicit finite edge-family decomposition.

## Why the moving spill should reduce to `(SS)`

This side is already explicit. The near-corona packet has been reduced to the
finite family `\Pi_{N,m}^{edge}` in `(2)`.

So the exact remaining theorem is just:

```math
\text{same-scale spill technology is stable under the finite family }T_m(\ell D).
\tag{6}
```

That is precisely `(SS)` for the family `\{T_m\}`.

## Execution order

The sane order is:

1. write the global signed balance identity and isolate the upper-boundary
   integrand in frozen same-scale form;
2. prove the weak model packet estimate `(SS^\sharp)` and record its weak lift to
   `(UB^\sharp)` and `(MS^\sharp)`;
3. kill the same-scale coefficient term into the installed weighted carrier
   `\widetilde\Lambda_N^\sharp E_N`;
4. only if a standalone pure packet theorem is still needed, upgrade to the
   coefficient-free finite-family theorem `(SS)` and derive
   `(UB)` and `(MS)`.

The finite-family lift itself is now written out explicitly in
[same-scale-family-lift-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-family-lift-lemma.md):
once the upper boundary is written as a finite edge family and the model
same-scale estimate is available uniformly, `(UB)` and `(MS)` follow by finite
summation.

So the route is

```math
\text{global signed identity}
\Longrightarrow
\text{frozen same-scale normal form}
\Longrightarrow
\text{weak model theorem `(SS^\sharp)` + finite lift}
\Longrightarrow
\text{kill into } \widetilde\Lambda_N^\sharp E_N
\Longrightarrow
\text{optional strong upgrade to `(SS)`}
\Longrightarrow
\text{upper boundary + moving spill}.
\tag{7}
```

## Honest boundary

This note does **not** prove `(SS)`.

What it does settle is that the upper-boundary and near-corona debts should not
be treated as separate theorem worlds anymore. They are the same kind of local
analytic problem: finite-width same-scale multiplier stability, already reduced
to a model packet estimate, a finite lift, and an exact carrier kill; the only
remaining stronger target is a standalone coefficient-free same-scale theorem.

The exact one-packet proof shape now has its own program note:
[one-model-packet-ss-proof-program-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/one-model-packet-ss-proof-program-note.md).
Its conclusion is that coefficient-free `(SS)` will require a new signed
same-scale commutator normal form replacing the current shellwise
Bernstein/absolute-value step.
