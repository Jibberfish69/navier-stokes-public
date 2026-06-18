# Signed Continuous-Scale Closure Program

## Purpose

This note records the exact closure program now visible after translating the
lifted weighted packet into the signed continuous-scale language.

It is not a proof. It is the theorem program that matches the current lane
state without reverting to shellwise absolute-value bookkeeping.

The starting point is the exact weighted reduction

```math
\mathrm{Leakage}_1
\le
C\,\widetilde\Lambda_N^\sharp\,T_1
+
\eta\nu Q_1
+
\mathfrak H_N^{\mathrm{grad,lift}}
+
C_*2^{-2\delta N},
\tag{1}
```

so the entire remaining weighted analytic burden is to prove the integrated
lifted estimate

```math
\int_0^T \mathfrak H_N^{\mathrm{grad,lift}}[u](t)\,dt
\le
\varepsilon\nu\int_0^T Q_1(t)\,dt
+
C_*2^{-2\delta N}.
\tag{2}
```

The route below states exactly how `(2)` is supposed to be proved on the
current surface.

## Closure chain

The theorem program is:

```math
\mathfrak H_N^{\mathrm{grad,lift}}
\rightsquigarrow
\mathfrak c_\ell
\rightsquigarrow
\mathfrak B_N^{upper}+\Pi_N^{mid}
\rightsquigarrow
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L}
\rightsquigarrow
\text{CTS / LPAS closure}
\rightsquigarrow
(2).
\tag{3}
```

Each arrow in `(3)` is already recorded somewhere on the lane. The remaining
job is to close the exact theorem debts on that chain.

## Step 1: make the signed route global

The first executable move is algebraic, not analytic:

```math
\text{replace local overlap language by one fixed global continuous LP family.}
\tag{4}
```

This step is now recorded explicitly in
[global-signed-lp-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/global-signed-lp-balance-identity-note.md):
the signed balance identity is written from one fixed global LP family, and the
older cocycle language is demoted from an existence mechanism to a comparison
language for alternate local presentations of one already global identity.

Use one canonical smooth family

```math
P_{\le \ell}=\varphi(\ell D),
\qquad
Q_\ell=-\,\ell\partial_\ell P_{\le \ell},
\tag{5}
```

and define the cumulative commutator potential and signed density globally:

```math
\mathcal A_\ell
:=
\ell^{-2}
\big([P_{\le \ell},b_\ell^{meso}\cdot\nabla]u\big)\,
\big(P_{\le \ell}u\big),
\tag{6}
```

```math
\mathfrak c_\ell
:=
\ell^{-2}u_\ell[Q_\ell,b_\ell^{meso}\cdot\nabla]u.
\tag{7}
```

Then differentiate `(6)` directly and insert the Navier--Stokes evolution on
`P_{\le \ell}u` to produce one global identity of the form

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal S_\ell^{spill}
+
\mathcal E_\ell.
\tag{8}
```

So the first theorem move is not “prove cocycle triviality” abstractly. It is:

```math
\text{write the global signed balance identity explicitly and eliminate gluing as a separate issue.}
\tag{9}
```

If `(8)` is obtained globally, then the signed route reduces to
boundary and residual estimates.

This Step 1 surface is already recorded concretely in
`global-signed-lp-balance-identity-note.md` and
`global-signed-lp-balance-reduction-note.md`:
the signed balance identity is global from the start on one fixed LP family,
and the remaining algebra at this step is the explicit rewrite of the
transpose/weight channel into `J_\ell`, `R_\ell`, and `\mathcal E_\ell`.
That theorem-facing rewrite target is now sharpened in
[transpose-profile-local-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transpose-profile-local-balance-identity-note.md),
which records the exact transport/pressure/viscous flux-time decomposition and
the admissibility test forbidding a hidden free far scale `r \gg \ell`.
The same canonical local-balance note now also identifies the only large-gap
survivor as the already named middle-band packet, rather than a new residual
source created by the Step 1 rewrite.

## Step 2: top boundary is a finite-width same-scale theorem

Once the global signed identity is in hand, the first new analytic term is the
upper-boundary packet

```math
\mathfrak B_N^{upper}(t)
=
\int (\partial_s\chi_{mid})(s)\,\Psi(s,t)\,ds.
\tag{10}
```

This packet is supported only in a fixed logarithmic collar
`c_{col}\ell_N\le \ell\le C_{col}\ell_N` near the top scale
`\ell_N:=2^{-N}`. So the correct strategy is:

1. rewrite `\Psi` on that collar using the explicit global formula from Step 1;
2. identify the contributing operators as a finite family of annular order-zero
   multipliers at scale `\ell_N^{-1}`;
3. prove a finite-width same-scale bound of the form

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{11}
```

So the upper-boundary theorem should be attacked as a narrow same-scale packet,
not as a new large-gap transport theorem.

The upper-boundary and near-corona sides are now unified in
[same-scale-multiplier-stability-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-multiplier-stability-program.md):
both debts should be reduced to one finite-family multiplier-stability theorem
for bounded annular order-zero operators at the active scale.

## Step 3: near corona closes by finite-offset stability

The near-corona part of the middle band is already reduced to a finite family
of fixed relative offsets:

```math
\Pi_N^{mov\text{-}spill,L}
=
\sum_{|m|\le M_L}\Pi_{N,m}^{edge}
+
\mathcal E_N^{collar}.
\tag{12}
```

So the exact remaining near-corona theorem is:

```math
\text{same-scale spill technology is stable under finitely many annular order-zero multipliers }T_m(\ell D).
\tag{13}
```

Concretely, prove for each fixed offset `m`

```math
\int_0^T \Pi_{N,m}^{edge}(t)\,dt
\le
\frac{\eta\nu}{32(2M_L+1)}\int_0^T D_N(t)\,dt
+
C_{m,*}2^{-2\delta N},
\tag{14}
```

then sum over the finite family. This is a finite-offset stability theorem, not
a new transport mechanism.

The common Step 2 / Step 3 surface is already recorded in
`same-scale-multiplier-stability-program.md`:
the upper boundary and the near corona should be attacked together through one
finite-family stability theorem for annular order-zero multiplier families.
That shared same-scale side, together with the far-corona route below, is now
packaged explicitly as the three-piece lifted-packet closure criterion in
[lifted-packet-three-piece-closure-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-three-piece-closure-program.md).

## Step 4: far corona must stay on the coupled two-scale object

The far-corona theorem is where the actual large-gap burden lives.

The exact coupled density is

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell,
\tag{15}
```

and the far-corona flux carries the explicit kernel

```math
\Pi_N^{mid,far,L}(t)
\le
C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell}.
\tag{16}
```

So the exact rule here is:

```math
\text{do not collapse }(16)\text{ to a one-scale upper-tail shadow too early.}
\tag{17}
```

In the current lane language, this means the lifted packet closes only through

```math
\mathfrak B_N^{upper}
+
\Pi_N^{mov\text{-}spill,L}
+
\Pi_N^{mid,far,L},
\tag{17a}
```

with the same-scale side reduced to `(SS)` and the genuine large-gap side left
on `LPAS -> CTS -> FCTS -> Car`.

The honest sufficient route is

```math
\Pi_N^{mid,far,L}
\Longleftarrow
\text{Car}
\Longleftarrow
\text{FCTS}
\Longleftarrow
\text{CTS}
\Longleftarrow
\text{LPAS}.
\tag{18}
```

The current working route on the lane is the `(CTS)` / Hardy-Volterra surface.
So the far-corona attack should be:

1. keep the coupled density `\mathcal A_{\ell,r}` visible;
2. use the `\ell/r` kernel only to expose the exact cumulative-tail theorem;
3. attack `(CTS)` via its dyadic shadow `(LPAS)` with the scale-memory /
   Hardy-Volterra machinery already installed on the lane.

So the far-corona theorem is not “prove UTKD sharper.” It is:

```math
\text{close CTS, or equivalently LPAS, on the coupled far-corona route.}
\tag{19}
```

This execution discipline is now recorded separately in
[far-corona-cts-lpas-execution-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md):
the exact continuum debt is `CTS`, `LPAS` is the dyadic Hardy/Volterra surface
selected by the inherited reduction, and premature collapse to one-scale
upper-tail shadows is the main sanity failure to avoid.

## Step 5: feed the results back without changing the carrier surface

If Steps 2 through 4 close, then one gets the integrated lifted estimate `(2)`.
Substituting `(2)` into `(1)` gives the weighted leakage coefficient-margin
theorem on the already-honest carrier

```math
\widetilde\Lambda_N^\sharp
=
\Lambda_N+\Theta_N^\sharp.
\tag{20}
```

So the route is not trying to improve the carrier anymore. The carrier is
frozen. The remaining task is to prove the lifted packet inequality on that
surface.

## Exact next work items

The program above reduces to four concrete theorem tasks:

1. write the global explicit signed balance identity `(8)` from one fixed LP
   family;
2. prove the finite-width upper-boundary estimate `(11)`;
3. prove finite-offset same-scale stability `(14)` for the moving spill;
4. push the far-corona route on `(CTS)` / `(LPAS)` rather than on one-scale
   upper-tail shadows.

That is the sane closure program now.

## Honest boundary

This note does **not** prove any of the four tasks above.

What it does settle is the execution order. The classical route is now narrow
enough that “how do we do that?” has a concrete answer:

```math
\text{globalize the signed identity,}
\quad
\text{treat the top and near pieces as same-scale finite-width theorems,}
\quad
\text{and reserve the real large-gap work for CTS / LPAS.}
\tag{21}
```
