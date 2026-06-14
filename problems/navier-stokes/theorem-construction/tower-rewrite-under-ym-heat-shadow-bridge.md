# Tower Rewrite Under YM Heat Shadow Bridge

## Status

This is a theorem-facing synthesis note.

Its job is to answer one narrow question:

```text
if the classical NS tower is rewritten as the commutative shadow of the
heat-governed carrier route, what actually changes?
```

The answer recorded here is:

```text
the visible algebra does not change;
the burden bookkeeping changes a great deal.
```

In the current live lane, this whole comparison is read on the torus-first
internal branch. The derivative tower is being audited as the periodic/operator
shadow of the heat-governed carrier route, and any whole-space Euclidean claim
on `R^3` is downstream discharge/export rather than the internal proving
surface of this note.

The right tower object is the derivative family itself, rung by rung and
matrix-entry by matrix-entry, not a guessed power law for a single scalar
profile.

## 1. Classical tower as an exact derivative-family balance

For pure time order, set

```math
V_n := \partial_t^n u.
\tag{1}
```

Then the exact `L^2` rung identity is

```math
\frac12\frac{d}{dt}\|V_n\|_{L^2}^2
+
\nu\|\nabla V_n\|_{L^2}^2
=
-\sum_{k=1}^{n}\binom{n}{k}\,
\langle (V_k\cdot\nabla)V_{n-k},V_n\rangle.
\tag{2}
```

For full mixed jets, write

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{3}
```

The differentiated equation is

```math
\partial_t J_{m,\alpha}
+
\sum_{a,\beta}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu \Delta J_{m,\alpha}.
\tag{4}
```

Pairing with `J_{m,\alpha}` gives

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L^2}^2
+
\nu\|\nabla J_{m,\alpha}\|_{L^2}^2
=
-\!\!\!\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\neq(0,0)}}
\binom ma\binom{\alpha}{\beta}\,
I_{a,\beta}^{m,\alpha},
\tag{5}
```

where

```math
I_{a,\beta}^{m,\alpha}
:=
\langle (J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta},J_{m,\alpha}\rangle.
\tag{6}
```

At this exact level:

- base transport cancels,
- pressure cancels,
- the only exact local sink is
  ```math
  \nu\|\nabla J_{m,\alpha}\|_{L^2}^2,
  ```
- the live source is the mixed cross-order spread.

So the correct comparison is already:

```text
mixed transfer at rung r
vs
viscous dissipation at rung r.
```

## 2. The rung-by-rung derivative count

At total derivative order `r`, use the model representative

```math
J_r := \partial^r u.
\tag{7}
```

The viscous contribution is

```math
\nu\Delta J_r = \nu\,\partial^{r+2}u.
\tag{8}
```

A mixed term that splits the rung into `a` and `r-a` has the form

```math
(\partial^a u)\,\nabla(\partial^{r-a}u)
=
(\partial^a u)(\partial^{r-a+1}u).
\tag{9}
```

So the raw derivative count is:

```text
mixed term:     r+1 derivatives total,
viscosity:      r+2 derivatives total.
```

Hence the cleanest tower-level power statement is

```math
\boxed{
\text{viscosity gains one full derivative over every mixed tower term.}
}
\tag{10}
```

This is the most important raw structural fact in the tower.

## 3. Where that one-derivative advantage can still be lost

The extraction estimate already recorded in the lane is

```math
|I_{a,\beta}^{m,\alpha}|
\le
\varepsilon \nu \|\nabla J_{m,\alpha}\|_{L^2}^2
+
C_{\varepsilon,\nu}
\|J_{a,\beta}\|_{L^\infty}^2
\|J_{m-a,\alpha-\beta}\|_{L^2}^2.
\tag{11}
```

So viscosity contributes:

```math
\text{dissipation at rung }r
:=
\nu\,\|\partial^{r+1}u\|_{L^2}^2,
\tag{12}
```

while mixed transfer into rung `r` is represented by

```math
\text{mixed transfer into rung }r
:=
\|\partial^a u\|_{L^\infty}\,
\|\partial^{r-a}u\|_{L^2}\,
\|\partial^r u\|_{L^2}.
\tag{13}
```

So the true contest is:

```math
\boxed{
\text{one extra derivative from viscosity}
\quad\text{vs}\quad
\text{growth of the lower-order coefficient family.}
}
\tag{14}
```

That is why the right question is about derivative families, not about `u`
alone.

The danger is not failure of derivative count.
The danger is that the lower-rung coefficient family, especially the
`L^\infty` packet, may grow fast enough to neutralize viscosity's one-derivative
advantage in practice.

## 4. Off-diagonal / cross-rung matrix version

The diagonal energy identity is only the diagonal of a stronger matrix law.

Let

```math
A=(m,\alpha),
\qquad
B=(n,\gamma),
\qquad
K_{A,B}(t):=\langle J_A,J_B\rangle.
\tag{15}
```

Then the exact cross-rung identity is

```math
\frac{d}{dt}K_{A,B}
+
2\nu\langle \nabla J_A,\nabla J_B\rangle
=
-\langle \widetilde T_A,J_B\rangle
-\langle J_A,\widetilde T_B\rangle.
\tag{16}
```

Here:

- pressure cancels in **every** jet-vs-jet pairing,
- base transport is skew in **every** jet-vs-jet pairing,
- viscosity damps the **whole correlation matrix**,
- the live matrix burden is the mixed-source matrix
  ```math
  \mathcal R_{A,B}
  :=
  \langle \widetilde T_A,J_B\rangle
  +
  \langle J_A,\widetilde T_B\rangle.
  \tag{17}
  ```

So the tower is not just a ladder of diagonal energies.
It is a full off-diagonal transfer matrix with one exact dissipative filter.

## 5. What changes under the YM-heat shadow rewrite

Now add the bridge interpretation.

Let `X` be the projected physical-sector carrier state satisfying

```math
\partial_t X + \mathbb P_A N_A(X)=\nu\,\mathbb P_A\Delta_A X.
\tag{18}
```

Let

```math
u=\mathcal C(X),
\qquad
J_{m,\alpha}=\mathcal C(\mathsf X_{m,\alpha}),
\tag{19}
```

where `\mathsf X_{m,\alpha}` are the lifted carrier jets.

Then the classical tower is re-read as

```math
\boxed{
\text{classical visible tower}
=
\text{shadow of the carrier heat tower}
+
\text{bridge-defect packet}.
}
\tag{20}
```

This rewrite does **not** alter the rung-by-rung derivative advantage `(10)`.
It changes the interpretation of the visible terms:

- `\nu\Delta J_{m,\alpha}` is the classical shadow of the carrier heat
  operator,
- `\nabla\Pi_{m,\alpha}` is the incompressible projection / anti-compression
  correction,
- mixed terms are the shadow of carrier interaction routing,
- the new open object is the shadow / commutator defect packet
  ```math
  \mathcal E^{\mathrm{tot}}_{m,\alpha}(X),
  \tag{21}
  ```
  and, at matrix level,
  ```math
  \mathcal R^{\mathrm{bridge}}_{A,B}(X).
  \tag{22}
  ```

So the theorem pressure becomes:

```text
keep the one-derivative viscous advantage visible,
control the lower-order coefficient family,
and kill the bridge-defect packet.
```

## 6. Consequence for the four-body packet

This rewrite does **not** automatically close the four-body packet.

What it does is sharpen Body IV.

Instead of the old provenance reading

```text
curvature-based regularity on a positive-Ricci carrier,
```

the live route now reads

```text
heat-governed carrier regularity
-> torus spectral coercivity
-> classical viscous continuation control.
```

So the rewrite gives the fourth bridge a cleaner live mechanism.

But the full classical four-body packet still requires:

- `S_cl -> Q_cl`,
- `(S_cl,Q_cl) -> C_cl`,
- `C_cl -> G_cl`,
- `G_cl -> S_cl`

on one common theorem surface.

## 7. Short verdict

The right tower summary is now:

1. analyze derivative families rung-by-rung, not guessed scalar laws;
2. viscosity carries one extra derivative over every mixed tower term;
3. the danger sits in lower-rung coefficient growth, especially `L^\infty`
   factors;
4. off-diagonal pairings show the whole tower is a transfer matrix with one
   exact dissipative filter;
5. under the YM-heat bridge, the visible tower becomes the shadow of a
   carrier heat tower plus a bridge-defect packet.

So the rewrite changes the proof architecture substantially, even though the
visible classical tower algebra itself stays the same.

## Source anchors

- [mixed-jet-preweight-viscous-extraction-and-pair-symmetrization.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-preweight-viscous-extraction-and-pair-symmetrization.md)
- [mixed-jet-cross-rung-pairing-matrix.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md)
- [ym-heat-to-torus-heat-to-classical-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md)
- [cross-rung-matrix-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/cross-rung-matrix-under-ym-heat-shadow-bridge.md)
- [four-body-regularity-circuit-and-ontic-extension.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/four-body-regularity-circuit-and-ontic-extension.md)
