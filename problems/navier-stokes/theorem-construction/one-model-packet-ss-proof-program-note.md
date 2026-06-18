# One-Model-Packet SS Proof Program Note

## Purpose

This note records the exact proof shape required to upgrade the currently proved
coefficient-bearing same-scale edge theorem

```math
(SS^\sharp)\qquad
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon \nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,a,\nu}\int_0^T \Theta_N^{ss,\sharp}(t)\,E_N(t)\,dt
\tag{1}
```

to the coefficient-free theorem

```math
(SS)\qquad
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}.
\tag{2}
```

for one fixed divergence-free annular order-zero multiplier packet.

The point is not to claim `(SS)` is proved here. The point is to isolate the
exact step where the current argument loses and the additional mechanism
required by a proof of `(SS)`.

## One edge packet

Fix one annular order-zero multiplier family `M_a(\ell D)` and set, at the
active scale `\ell_N:=2^{-N}`,

```math
b_{\ell,a}:=M_a(\ell D)u.
\tag{3}
```

Assume `\nabla\cdot b_{\ell,a}=0` and `b_{\ell,a}` is supported on a fixed
annulus of width `O_a(1)` around frequency `\ell^{-1}`. Let
`Q_{\ell,a}^{edge}` denote the bounded-offset edge-band test multiplier
produced by the collar-freezing / edge-band replacement on the scalarized
channel.

Then the honest scalarized edge packet is

```math
\Pi_{\ell,a}^{edge}(t)
:=
\ell^{-2}
\Big\langle
[P_{\le \ell},b_{\ell,a}\cdot\nabla]u,\,
Q_{\ell,a}^{edge}u
\Big\rangle.
\tag{4}
```

and `\Pi_{N,a}^{edge}` is its frozen bounded-width aggregate on the collar
`c_\ell\ell_N\le \ell\le C_\ell\ell_N`.

The exact trilinear Fourier symbol and the principal-part test are now written
out in
[same-scale-edge-fourier-symbol-and-principal-part-test.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-fourier-symbol-and-principal-part-test.md).

The key correction is:

```math
\boxed{
\text{the honest same-scale packet is a scalarized commutator / edge-test pairing,}
}
```

not the overly special shell-local pairing
`\langle[\Delta_j,b_a\cdot\nabla]\Delta_j u,\Delta_j u\rangle`, whose raw
structure can suggest spurious cancellation.

## Where the current proof loses

After freezing `(4)` to a bounded shell cluster near `N`, the currently proved
coefficient-bearing estimate replaces the exact scalarized packet by a shellwise commutator
majorant. On each active shell it uses the estimate

```math
\|[\Delta_j,b_{\ell,a}\cdot\nabla]\Delta_j u\|_{L_x^2}
\le C_{\mathrm{comm}}
\|\nabla b_{\ell,a}\|_{L_x^\infty}\,\|\Delta_j u\|_{L_x^2},
\tag{7}
```

and then Bernstein at the same scale:

```math
\|\nabla b_{\ell,a}\|_{L_x^\infty}
\le C_a
\Gamma_N^{ss}(t)
\le C'_a
\Theta_N^{ss,\sharp}(t)^{1/2}.
\tag{8}
```

This yields

```math
|\Pi_{N,a}^{edge}(t)|
\le C_a
\Gamma_N^{ss}(t)\,E_N(t)^{1/2}D_N(t)^{1/2},
\tag{9}
```

which is exactly `(SS^\sharp)`.

So the precise place where coefficient-free `(SS)` fails is:

```math
\boxed{
\text{shellwise absolute values + Bernstein on the same-scale transport field.}
}
\tag{10}
```

That step destroys the sign structure and turns the packet into a coefficient
times `E_N^{1/2}D_N^{1/2}`.

## What a real `(SS)` proof must replace

A coefficient-free proof cannot keep `(7)`--`(8)` as its main step.

It must replace the absolute-value commutator bound by an exact or signed
same-scale identity of the form

```math
\Pi_{N,a}^{edge}
=
\partial_t B_{N,a}
+
\nabla_x\cdot J_{N,a}
+
R_{N,a},
\tag{11}
```

with

```math
\int_0^T |R_{N,a}(t)|\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}.
\tag{12}
```

After time integration, the exact `\partial_t B_{N,a}` and divergence terms
become boundary/readout terms, and only `R_{N,a}` must be absorbed.

So the real task is not a better `L^\infty` bound. It is a same-scale normal
form.

## Exact proof program

### Step 1. Write the packet as a finite signed trilinear symbol

Expand `(4)` in Fourier variables. The honest scalarized packet has an exact
trilinear symbol built from:

1. the annular symbol of `M_a`,
2. the difference
   `p(\ell\xi)-p(\ell\zeta)`,
3. the transport factor `i\zeta`,
4. the Leray/divergence-free constraints.

The exact formula is now written in
[same-scale-edge-fourier-symbol-and-principal-part-test.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-fourier-symbol-and-principal-part-test.md).
The packet is supported on a finite same-scale cluster
`c_\xi\ell_N^{-1}\le|\xi|,|\eta|,|\zeta|\le C_\xi\ell_N^{-1}` modulo
bounded offsets.

### Step 2. Symmetrize and use incompressibility

Because the two active inputs are same-scale and the transport field is
divergence-free, the relevant principal-symbol test is symmetrization in the
active frequencies. The known outcome is that incompressibility rewrites the
transport factor but does not by itself cancel the principal same-scale
amplitude.

The honest outcome of that test is now known:

```math
\text{incompressibility rewrites the transport factor,}
\quad
\text{but does not by itself kill the principal same-scale amplitude.}
\tag{13}
```

So a coefficient-free `(SS)` proof cannot rely on bare same-scale antisymmetry
alone for the honest scalarized packet. If a stronger cancellation exists, it
must use additional structure of the edge test or the later PDE renormalization.

### Step 3. Factor the surviving symbol by a frequency difference

The exact symbol still carries the commutator increment

```math
p(\ell\xi)-p(\ell\zeta),
```

and after symmetrization also the twin increment `p(\ell\xi)-p(\ell\eta)`.
By the mean-value formula, each such increment factors by a frequency
difference. So the exact target is to show the surviving symbol can be written
as

```math
(\xi\!-\!\eta)\cdot q_{a,j}(\xi,\eta)
\quad\text{or}\quad
(\ell\partial_\ell) q_{a,j}(\xi,\eta),
\tag{14}
```

with `q_{a,j}` still bounded on the same-scale cluster.

That is the algebraic place where a flux/time normal form can emerge.

### Step 4. Convert the factor into flux/time structure

Once `(14)` is available, integrate by parts or use the active-shell equation to
rewrite the packet into the form `(11)`:

- spatial difference factors become divergence terms,
- time-renormalized pieces become `\partial_t B_{N,a}`,
- viscosity on the active shell gives the dissipation contribution,
- all leftover bounded-gap terms are routed into `R_{N,a}`.

### Step 5. Prove the residual is short-range

The residual theorem must show that no free same-scale coefficient survives:

```math
R_{N,a}
\neq
\text{new copy of }\Theta_N^{ss,\sharp}E_N.
\tag{15}
```

Instead the only allowed remainder is

```math
\int_0^T |R_{N,a}(t)|\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}.
\tag{16}
```

This is the real coefficient-free `(SS)` step.

## Shortest truthful slogan

To prove coefficient-free `(SS)` on one same-scale edge packet, one must prove

```math
\boxed{
\text{the same-scale commutator packet is a signed normal form, not a positive Bernstein packet.}
}
\tag{17}
```

Equivalently:

```math
\boxed{
\text{replace shellwise }L^\infty\times \sqrt{E_ND_N}
\text{ by a flux/time/short-range decomposition.}
}
\tag{18}
```

## Honest boundary

This note does **not** prove the symbol symmetrization in `(13)` or the
normal-form decomposition `(11)`.

It records the exact gap:

```math
\boxed{
\text{without a new signed same-scale commutator normal form, coefficient-free `(SS)` does not follow from the current packet calculus.}
}
\tag{19}
```
