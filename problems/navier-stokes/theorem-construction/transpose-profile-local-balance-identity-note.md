# Transpose-Profile Local Balance Identity Note

## Purpose

This note sharpens the identity-first program in
[transpose-weight-to-flux-time-rewrite-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-weight-to-flux-time-rewrite-program.md)
into the exact local theorem target that should drive the next discharge step.

The target is not an inequality on `\mathfrak c_\ell^{transpose}`. It is the
local balance rewrite

```math
\mathfrak c_\ell^{transpose}
+
\mathfrak w_\ell
\rightsquigarrow
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal E_\ell,
\tag{1}
```

with the residual constrained to named admissible surfaces and forbidden from
reintroducing a free far-scale packet.

## Starting point

Let

```math
C_\ell
:=
\ell^{-2}[P_{\le \ell},\,b_\ell^{meso}\!\cdot\nabla]u,
\qquad
R_\ell^{raw}
:=
C_\ell\cdot u_{\le \ell}.
\tag{2}
```

The fixed global LP-family identity is

```math
\ell\partial_\ell \Psi_\ell^{raw}
=
\mathfrak c_\ell
+
\mathfrak c_\ell^{transpose}
+
\mathfrak s_\ell^{edge}
+
\mathfrak w_\ell.
\tag{3}
```

The spill piece `\mathfrak s_\ell^{edge}` is already separated. So the only
unresolved Step 1 channel is

```math
\mathfrak c_\ell^{transpose}+\mathfrak w_\ell.
\tag{4}
```

## Local theorem target

The exact theorem target should be stated as follows.

### Local balance target `(TP-LBI)`

After one scale renormalization

```math
\Psi_\ell=\Psi_\ell^{raw}+\Psi_\ell^{corr},
\tag{5}
```

there exist explicit density fields `J_\ell`, `R_\ell`, and an admissible
residual `\mathcal E_\ell` such that

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathfrak s_\ell^{edge}
+
\mathcal E_\ell,
\tag{6}
```

and every term in `\mathcal E_\ell` belongs to one of the already named
residual classes:

- bounded-gap commutator leftovers,
- spill or moving-spill leftovers,
- middle-band/far-corona terms already routed through `\Pi_N^{mid}` or
  `\mathcal A_{\ell,r}`,
- profile corrections and viscosity leftovers that remain same-scale.

The theorem fails if any leftover produces a new free far scale `r \gg \ell`
that is not already one of those named packets.

## Proof architecture

The proof should be organized as a local balance calculation, not as an estimate
by absolute values.

### Step A: scale renormalization

Choose `\Psi_\ell^{corr}` so that

```math
\mathfrak c_\ell^{transpose}
+
\mathfrak w_\ell
=
(\ell\partial_\ell)\Psi_\ell^{corr}
+
\mathcal W_\ell^{dyn}.
\tag{7}
```

This removes the pure scale-primitive part of the transpose/profile channel and
leaves only the dynamic remainder `\mathcal W_\ell^{dyn}`.

### Step B: low-pass dynamics insertion

Use the low-pass Navier-Stokes equation

```math
\partial_t u_{\le \ell}
+
P_{\le \ell}\big((u\cdot\nabla)u\big)
+
\nabla p_{\le \ell}
=
\nu\Delta u_{\le \ell}.
\tag{8}
```

Differentiate the raw time pairing:

```math
\partial_t R_\ell^{raw}
=
(\partial_t C_\ell)\cdot u_{\le \ell}
+
C_\ell\cdot \partial_t u_{\le \ell}.
\tag{9}
```

The second term is where transport, pressure, and viscosity enter. The first
term must be combined with the Stage A correction terms and rewritten as either
exact time-potential, exact flux, or admissible residual.

### Step C: transport, pressure, and viscosity decomposition

Insert `(8)` into `(9)` and decompose the resulting terms.

#### Transport channel

Using `\nabla\cdot u = 0`,

```math
-C_\ell\cdot P_{\le \ell}\big((u\cdot\nabla)u\big)
=
-C_\ell\cdot P_{\le \ell}\nabla\cdot(u\otimes u).
\tag{10}
```

Integrating by parts in `x` gives

```math
-C_\ell\cdot P_{\le \ell}\nabla\cdot(u\otimes u)
=
-\nabla_x\cdot\big(C_\ell : P_{\le \ell}(u\otimes u)\big)
+
\nabla C_\ell : P_{\le \ell}(u\otimes u).
\tag{11}
```

The first term is exact flux. The second term is acceptable only if it reduces
to bounded-gap or already named middle-band structure. It must not create a new
free far scale.

#### Pressure channel

```math
-C_\ell\cdot \nabla p_{\le \ell}
=
-\nabla_x\cdot(p_{\le \ell}C_\ell)
+
p_{\le \ell}\,\nabla\cdot C_\ell.
\tag{12}
```

Again, the first term is exact flux. The second is admissible only if
`\nabla\cdot C_\ell` reduces to same-scale commutator structure. Since
`P_{\le \ell}` commutes with derivatives and `u` is divergence-free, the only
honest leftovers should come from derivatives on `b_\ell^{meso}` or other
explicit bounded-gap/profile corrections.

This point can be made exact. Since `b_\ell^{meso}` is divergence-free,

```math
\nabla\cdot(b_\ell^{meso}\cdot\nabla v)
=
(\partial_i b_{\ell,j}^{meso})\,\partial_j v_i
\qquad
\text{for divergence-free }v.
\tag{12a}
```

Therefore

```math
\nabla\cdot C_\ell
=
\ell^{-2}\,[P_{\le \ell},\,\partial_i b_{\ell,j}^{meso}]\,\partial_j u_i.
\tag{12b}
```

So the pressure remainder is not a new transport packet. It is an explicit
same-scale commutator generated only by differentiation of the mesoscopic
coefficient `b_\ell^{meso}`.

#### Viscous channel

Because `\Delta` commutes with `P_{\le \ell}`,

```math
\nu C_\ell\cdot \Delta u_{\le \ell}
=
\nu\nabla_x\cdot\big(C_\ell\cdot\nabla u_{\le \ell}\big)
-
\nu\nabla C_\ell:\nabla u_{\le \ell}.
\tag{13}
```

The first term is exact flux. The second is same-scale and may be treated as
either further flux after one more integration by parts or as an admissible
short-range residual. It is not allowed to carry a new long lifted interaction.

Again the structure can be written explicitly:

```math
\nabla C_\ell
=
\ell^{-2}[P_{\le \ell},\,(\nabla b_\ell^{meso})\!\cdot\nabla]u
+
\ell^{-2}[P_{\le \ell},\,b_\ell^{meso}\!\cdot\nabla]\nabla u.
\tag{13a}
```

Hence the viscous leftover
`\nabla C_\ell:\nabla u_{\le \ell}` is built from:

- the active same-scale factor `\nabla u_{\le \ell}`,
- the same edge-local commutator kernel coming from `P_{\le \ell}`,
- the mesoscopic coefficient `b_\ell^{meso}` or its derivative `\nabla b_\ell^{meso}`.

So it is genuinely short-range / same-scale. It does not introduce a second
independent transport scale.

### Step C.1: transport remainder classification

The transport remainder in `(11)` should not be treated as a fresh source. Its
theorem-language classification is already installed on the lane.

After bounded-gap profile perturbations are discarded into the collar class, the
remaining kernel geometry is the same scalarized commutator geometry isolated in
[lifted-band-mesoscopic-residual-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-band-mesoscopic-residual-reduction-lemma.md#L106).
So the honest decomposition is

```math
\nabla C_\ell : P_{\le \ell}(u\otimes u)
\rightsquigarrow
\mathcal E_{\ell}^{tr,collar}
+
\mathcal R_{\ell}^{tr,mid},
\tag{13b}
```

where `\mathcal E_{\ell}^{tr,collar}` is bounded-gap / collar-class and
`\mathcal R_{\ell}^{tr,mid}` is not a new packet but the already named
middle-band flux channel:

```math
\left|
\int \mathcal R_{\ell}^{tr,mid}(s,t)\,ds
\right|
C_{tr,mid}
\Pi_N^{mid}(t).
\tag{13c}
```

This is exactly the reduction recorded in
[lifted-band-mesoscopic-residual-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-band-mesoscopic-residual-reduction-lemma.md#L106)
and pushed into the signed continuous-scale packet chain in
[lifted-packet-signed-continuous-scale-translation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-signed-continuous-scale-translation.md#L244).

So the transport remainder is allowed to do only two things:

- collapse into bounded-gap/collar structure;
- or become the already named middle-band flux packet `\Pi_N^{mid}`.

It is not allowed to create a new unnamed bulk defect.

### Step C.2: no-free-far-scale consequence

Once `(13b)` and `(13c)` are enforced, the only place a genuine scale gap can
survive is through the already named far-corona split of `\Pi_N^{mid}`:

```math
\Pi_N^{mid}
\rightsquigarrow
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L}
\rightsquigarrow
\mathcal A_{\ell,r}
\text{ with kernel }\ell/r.
\tag{13d}
```

That route is already the installed far-corona route in
[lifted-packet-signed-continuous-scale-translation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-signed-continuous-scale-translation.md#L297)
and
[far-corona-cts-lpas-execution-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md#L12).

So if a free far scale `r\gg\ell` appears anywhere else in `\mathcal E_\ell`,
that is not an admissible remainder. It means the rewrite failed.

### Step D: residual test

After the scale renormalization and low-pass PDE insertion, every leftover term
must satisfy one of:

```math
\text{exact divergence form},
\qquad
\text{exact time-derivative form},
\qquad
\text{already named admissible residual class.}
\tag{14}
```

The forbidden failure mode is:

```math
\text{a new two-scale free kernel with independent }r\gg \ell
\text{ surviving inside }\mathcal E_\ell.
\tag{15}
```

That would mean the transpose/profile channel is still hiding a genuine long
lifted packet.

## Residual taxonomy

For this rewrite, the admissible residual classes should be read narrowly.

Allowed:

- bounded-gap commutator corrections generated when derivatives fall on
  `b_\ell^{meso}` or the fixed LP profile,
- spill and moving-spill remnants already covered by the signed continuous-scale
  spill route,
- middle-band or far-corona terms only if they are explicitly identified with
  the existing `\Pi_N^{mid}` or `\mathcal A_{\ell,r}` surfaces,
- same-scale pressure leftovers coming from the explicit coefficient-differentiation
  identity `(12b)`,
- same-scale viscosity leftovers coming from the short-range commutator identity
  `(13a)`.

Not allowed:

- a remainder that requires a new shellwise positive theorem,
- a remainder with a new free far scale not already present in
  `\mathcal A_{\ell,r}`,
- a black-box `\mathcal E_\ell` that silently contains the whole lifted packet.

The next exact sharpening of this residual taxonomy is now built directly into
Step C of this note: the pressure and viscous operator identities are written
explicitly, and the transport remainder is reduced to bounded-gap / collar
terms plus the already named middle-band packet.

## Why this is the right next theorem

This theorem is the exact algebraic bridge between:

- the global LP identity already installed, and
- the later signed upper-boundary / moving-spill / far-corona closure chain.

The explicit residual classification for the transport, pressure, and viscous
response channels is now built directly into this note at Step C through
`(12b)`, `(13a)`, `(13b)`, and `(13d)`: transport reduces to
bounded-gap/collar plus the existing middle-band packet, pressure is pure
mesoscopic coefficient differentiation, and viscosity is same-scale
short-range.

If `(TP-LBI)` lands, then the transpose/profile channel stops being a vague
imported obstruction and becomes a classical local balance object on the same
Navier-Stokes surface.

## Honest boundary

This note does not prove `(TP-LBI)`.

It isolates the exact identity that must be proved next and the exact failure
mode that would falsify the route.
