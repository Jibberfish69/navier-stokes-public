# The literal thirty-field selection and its required corners

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This targeted read uses only `forced-native-assembly-20260914.md` LF1455–1725. The section defines a finite selection of actual mixed derivatives of one forced Navier–Stokes history. It does not prescribe a particular scalar combination of those thirty fields. This report records the selection, its actual generating equations, and the additional coordinates required by its pairings. No whole-terminal norm or new strain upper bound is inferred.

## Literal index set

The decisive source sentence is:

> “Taking \(n=0,1,2\) and \(|\alpha|\le2\) selects 30 vector fields and their \(30\times30\) Gram matrix. Equation (J10) retains all cross-pairings and the additional derivative coordinates appearing along its boundary.”

[Assembly LF1602–1605](../SOURCES.md#S152).

With the source mixed coordinates `J_(n,α)=∂tⁿ∂x^αu`, the literal set is

\[
\mathcal I=\{0,1,2\}\times\mathcal A_2,
\qquad \mathcal A_2=\{\alpha\in\mathbb N_0^3:|\alpha|\le2\}.
\tag{TD1}
\]

Here are all ten spatial indices; their displayed order is merely an enumeration and is not a source-prescribed weighting:

| Spatial order | Multi-indices | Fields in each temporal row |
|---|---|---|
| 0 | `(0,0,0)` | `V_n` |
| 1 | `(1,0,0)`, `(0,1,0)`, `(0,0,1)` | `∂₁V_n`, `∂₂V_n`, `∂₃V_n` |
| 2 | `(2,0,0)`, `(0,2,0)`, `(0,0,2)`, `(1,1,0)`, `(1,0,1)`, `(0,1,1)` | the six distinct second derivatives |

Thus `|A₂|=1+3+6=10` and `|I|=3×10=30`. These are thirty **vector** fields, not thirty scalar velocity components, thirty independent fluids, or thirty successive times. Each is a coordinate of the same history evaluated at the same time. Source LF1703–1704 explicitly says that increasing derivative order does not move the fluid to a later time.

The temporal entries are the partial derivatives `V_n=∂tⁿu`, rather than material powers. The source explicitly distinguishes `D_fu=V₁+(u·∇)u` and `D_f²u=V₂+2(u·∇)V₁+(V₁·∇)u+(u·∇)²u` at LF1524–1536. Its material force derivative is `D_ff=f_t+(u·∇)f`. Those conversions retain generated velocity factors but do not change the literal index set TD1.

The Gram object is

\[
C_{(n,\alpha),(r,\beta)}(c)
=\langle J_{n,\alpha}(c),J_{r,\beta}(c)\rangle_{L^2}.
\tag{TD2}
\]

It has `30×30` entries and contains every temporal/spatial cross-pairing. [Source LF1581–1587](../SOURCES.md#S152) gives

\[
z^{\mathsf T}Cz=\left\|\sum_{A\in\mathcal I}z_AJ_A\right\|_2^2\ge0.
\tag{TD3}
\]

The `z_A` here are arbitrary coefficients demonstrating Gram positivity. No particular values, normalization, distinguished vector `z`, or time-dependent selector are specified in this section. The fields are not asserted to be linearly independent; the Gram may be degenerate. Pressure and prescribed-force coordinates belong to the complete generating jet; they are not counted as extra velocity fields in TD1.

## Full generating equations and the first two temporal corners

The source's exact complete mixed equation is

\[
\begin{aligned}
J_{n+1,\alpha}
&=\nu\sum_{i=1}^3J_{n,\alpha+2e_i}
-\mathcal B_{n,\alpha}-\nabla\Pi_{n,\alpha}+F_{n,\alpha},\\
\mathcal B_{n,\alpha}
&=\sum_{a=0}^n\sum_{\gamma\le\alpha}
\binom na\binom\alpha\gamma
(J_{a,\gamma}\cdot\nabla)J_{n-a,\alpha-\gamma},\\
\nabla\Pi_{n,\alpha}
&=(I-\mathbb P)(F_{n,\alpha}-\mathcal B_{n,\alpha}),
\qquad \nabla\cdot J_{n,\alpha}=0,
\quad F_{n,\alpha}=\partial_t^n\partial_x^\alpha f.
\end{aligned}
\tag{TD4}
\]

This is [J1–J3, LF1455–1476](../SOURCES.md#S152). The scalar pressure is also specified, with all allocations and the force potential:

\[
\Pi_{n,\alpha}
=\sum_{a=0}^n\sum_{\gamma\le\alpha}
\binom na\binom\alpha\gamma
R_iR_j(J_{a,\gamma,i}J_{n-a,\alpha-\gamma,j})
-(-\Delta)^{-1}\operatorname{div}F_{n,\alpha}.
\tag{TD5}
\]

[J4, LF1478–1488](../SOURCES.md#S152) retains the standing decay assumptions for this scalar low-frequency potential. Projecting the velocity equation does not remove the pressure coordinate.

Put `T_(n,α)=F_(n,α)−B_(n,α)−∇Π_(n,α)`. Specializing [J13c, LF1692–1704](../SOURCES.md#S152) to the base row gives exactly

\[
\begin{aligned}
J_{1,\alpha}&=\nu\Delta J_{0,\alpha}+\mathcal T_{0,\alpha},\\
J_{2,\alpha}&=\nu^2\Delta^2J_{0,\alpha}
+\nu\Delta\mathcal T_{0,\alpha}+\mathcal T_{1,\alpha}.
\end{aligned}
\tag{TD6}
\]

The viscous second corner expands as `Δ²J_(0,α)=Σ_iJ_(0,α+4e_i)+2Σ_(i<j)J_(0,α+2e_i+2e_j)`. Thus its repeated and crossed directions retain their actual multiplicities.

In particular

\[
\mathcal B_{1,\alpha}
=\sum_{\gamma\le\alpha}\binom\alpha\gamma
\bigl[(J_{0,\gamma}\cdot\nabla)J_{1,\alpha-\gamma}
+(J_{1,\gamma}\cdot\nabla)J_{0,\alpha-\gamma}\bigr].
\tag{TD7}
\]

Both ordered temporal parents and every spatial allocation are present. When a second derivative is repeated, the corresponding spatial binomial coefficient is two; J6 at LF1504–1513 makes this explicit.

The directly required generating corners are:

| Operation for `|α|≤2` | Actual coordinates reached |
|---|---|
| `νΔJ_(0,α)` | `J_(0,α+2e_i)`, spatial order at most 4 |
| `ν²Δ²J_(0,α)` | `J_(0,α+2e_i+2e_j)`, spatial order at most 6 |
| `νΔT_(0,α)` | `T_(0,α+2e_i)`, source spatial order at most 4 |
| `T_(1,α)` | both `n=0,1` transport parents through spatial order 3, full `Π_(1,α)`, and `F_(1,α)` through spatial order 2 |
| Construction of the intermediate `J_(1,γ)`, `|γ|≤4` | base velocity through spatial order 6; base convection/pressure-gradient factors through order 5; prescribed `F_(0,γ)` through order 4 |

For the nonlinear entries, “through order” is a finite rectangular envelope: the exact directional coordinates in the viscous terms are the displayed `α+2e_i` and `α+2e_i+2e_j`. The transport source of spatial order `γ` has factors indexed `δ` and `γ−δ+e_j`; its pressure gradient may be computed from the same complete source or by differentiating TD5. No pressure or ordered-parent child is truncated at spatial order two.

The source itself verifies the finite instantaneous Sobolev budget. In [J8, LF1548–1563](../SOURCES.md#S152), take `N=M=2` and any integer `s≥2`:

\[
u(c)\in H^{s+6},\qquad
F_0(c)\in H^{s+4},\qquad F_1(c)\in H^{s+2}.
\tag{TD8}
\]

The induction retains `V₀∈H^{s+6}`, `V₁∈H^{s+4}`, and `V₂∈H^{s+2}`, so every selected `J_(n,α)` is in `H^s`. Source LF1573–1577 expressly distinguishes compatible instantaneous rows from a space-time Sobolev intersection and uses the common local realization to identify these coordinates with one history. TD8 is an instantaneous generating budget, not a new whole-terminal norm estimate.

## Every temporal block of the selected Gram

Define the displayed parent families

\[
P_{0,\alpha}=J_{0,\alpha},\qquad
P_{1,\alpha}=\nu\Delta J_{0,\alpha}+\mathcal T_{0,\alpha},\qquad
P_{2,\alpha}=\nu^2\Delta^2J_{0,\alpha}
+\nu\Delta\mathcal T_{0,\alpha}+\mathcal T_{1,\alpha}.
\tag{TD9}
\]

All nine temporal blocks, each containing `10×10` spatial pairings, are exactly

\[
C_{(k,\alpha),(\ell,\beta)}
=\langle P_{k,\alpha},P_{\ell,\beta}\rangle,
\qquad 0\le k,\ell\le2,\quad\alpha,\beta\in\mathcal A_2.
\tag{TD10}
\]

This is the direct `n=r=0` specialization of [J13d, LF1705–1725](../SOURCES.md#S152). It includes both factors' source terms; it does not apply substitution only to the diagonal or only to one factor. The numbers of grouped parent pairings in each block are

\[
\begin{pmatrix}1&2&3\\2&4&6\\3&6&9\end{pmatrix}_{k,\ell}.
\tag{TD11}
\]

For example the largest block is the following full nine-term sum:

\[
\begin{aligned}
C_{(2,\alpha),(2,\beta)}={}&
\nu^4\langle\Delta^2J_{0,\alpha},\Delta^2J_{0,\beta}\rangle\\
&+\nu^3\langle\Delta\mathcal T_{0,\alpha},\Delta^2J_{0,\beta}\rangle
+\nu^2\langle\mathcal T_{1,\alpha},\Delta^2J_{0,\beta}\rangle\\
&+\nu^3\langle\Delta^2J_{0,\alpha},\Delta\mathcal T_{0,\beta}\rangle
+\nu^2\langle\Delta^2J_{0,\alpha},\mathcal T_{1,\beta}\rangle\\
&+\nu^2\langle\Delta\mathcal T_{0,\alpha},\Delta\mathcal T_{0,\beta}\rangle
+\nu\langle\Delta\mathcal T_{0,\alpha},\mathcal T_{1,\beta}\rangle\\
&+\nu\langle\mathcal T_{1,\alpha},\Delta\mathcal T_{0,\beta}\rangle
+\langle\mathcal T_{1,\alpha},\mathcal T_{1,\beta}\rangle.
\end{aligned}
\tag{TD12}
\]

Each pairing of two `T` entries contains all nine combinations of `F`, `−B`, and `−∇Π`, with their actual signs. The `(2,2)` block has four such source–source pairings. Expanded before any simplification, `P₂` has seven parents, so its paired expression has 49 force/nonlinear/pressure/viscous parent terms, before further expanding the binomial nonlinear products. Source LF1723–1725 explicitly retains those physical classes even when another representation permits a combined simplification.

## Evolution boundary and the signed nonlinear contraction

Generating TD1 at one time and evolving its Gram are different operations. Direct differentiation reaches `J_(3,α)` when a selected factor has `n=2`. Its momentum substitution involves `J_(2,α+2e_i)`, the full `B_(2,α)`, `Π_(2,α)` and the prescribed `F_(2,α)`.

The full boundary convection, not just its end parents, is

\[
\mathcal B_{2,\alpha}
=\sum_{\gamma\le\alpha}\binom\alpha\gamma
\bigl[(J_{0,\gamma}\cdot\nabla)J_{2,\alpha-\gamma}
+2(J_{1,\gamma}\cdot\nabla)J_{1,\alpha-\gamma}
+(J_{2,\gamma}\cdot\nabla)J_{0,\alpha-\gamma}\bigr].
\]

After that substitution, full-space integration by parts produces precisely source J10:

\[
\begin{aligned}
C_{A,B}'={}&-2\nu\sum_i\langle J_{n,\alpha+e_i},J_{r,\beta+e_i}\rangle\\
&-\langle\mathcal B_{n,\alpha},J_{r,\beta}\rangle
-\langle J_{n,\alpha},\mathcal B_{r,\beta}\rangle\\
&+\langle F_{n,\alpha},J_{r,\beta}\rangle
+\langle J_{n,\alpha},F_{r,\beta}\rangle.
\end{aligned}
\tag{TD13}
\]

[LF1588–1605](../SOURCES.md#S152). Its gradient factors reach spatial order three, while the source's momentum implementation uses two additional spatial orders. The nonlinear factors have `0≤n≤2`, all temporal allocations, and spatial order up to three. The force here has temporal order through two and spatial order through two. If all corresponding next-row momentum coordinates are generated with the same J8 instantaneous budget, use `N=3,M=2`: `u(c)∈H^{s+8}`, `F₀(c)∈H^{s+6}`, `F₁(c)∈H^{s+4}`, `F₂(c)∈H^{s+2}`. These are evolution-boundary inputs; they are not needed merely to evaluate TD2 at one time.

Integrated pressure pairings vanish against actual solenoidal velocity receivers. Localized pairings retain the explicit pressure flux. In [J13a, LF1656–1673](../SOURCES.md#S152), put `L_A=B_A−(u·∇)J_A`; the full flux is `u(J_A·J_B)−ν∇(J_A·J_B)+Π_AJ_B+Π_BJ_A`. Its nonlinear right side is `−L_A·J_B−J_A·L_B`, along with the complete viscosity and force terms.

As a directly derived interpretation, any **fixed** coefficient vector `z` yields `W=Σz_AJ_A`, `L_z=Σz_AL_A`, `F_z=Σz_AF_A`, and the exact full-space contraction

\[
\tfrac12\frac d{dt}\|W\|_2^2+\nu\|\nabla W\|_2^2
=-\langle L_z,W\rangle+\langle F_z,W\rangle.
\tag{TD14}
\]

This is a consequence of J13a/J10, not a source-prescribed selector. For a time-dependent coefficient vector, the extra term `〈Σz_A′J_A,W〉` must also be retained. Generally `L_z` contains the full higher mixed commutators and is not simply `(W·∇)u`. The single selected field `J_(1,0)=V₁` has `L_(1,0)=(V₁·∇)u`, so its nonlinear contraction is the actual signed tangent strain `−∫(V₁)_i(V₁)_j∂_ju_i`. This special row is already one member of TD1; it does not specify a combination using all thirty fields.

J11–J13 at LF1607–1654 do prescribe binomial temporal anti-diagonal identities for scalar spatial heights, including their complete force, nonlinear and pressure work derivatives. They are additional relationships of the same jet. Within the inspected section, none specifies numerical coefficients selecting one thirty-field contraction whose nonlinear signed remainder has an independent upper payment.

The literal source output is therefore a thirty-field selection, its full Gram, and exact compatible relationships with the retained higher corners. A requested particular scalar combination requires an actual coefficient/selector definition in addition to that selection; this targeted section supplies the arbitrary Gram test vector but does not choose it.
