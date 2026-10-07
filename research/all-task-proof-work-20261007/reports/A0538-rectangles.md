# Finite rectangles, critical heights and matrix identities: source audit

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Its current-parts search is version-specific. The recovered original forward transfer must accompany it; a selected stronger adjacent-row reference can be met with a larger finite rectangle. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Audit date: 2026-10-06. This is an mathematical verification, not replacement manuscript text. The governing source root is the indexed mathematical source witness.

The audited identities and their downstream implications are mathematically valid at their stated scope, conditional where they consume the whole-terminal finite-rectangle theorem. This audit does **not** establish that upstream theorem. No independent sign, factorial, weighted-norm or pressure-completion error was found in the examined chain. The scope distinction is decisive: identities on strict classical intervals do not by themselves establish finite norms on the entire proposed maximal interval.

## Source identities and proof map

All line locations below are physical LF line numbers in the files, not PDF page numbers. The current combined paper's relationship with public PDFs is outside this sub-audit.

| Source, relative to the root | Lines / label | Verified role |
|---|---|---|
| `parts/unforced/01-setting-mixed-jet.tex` | 411–579, `u:thm:datum-finite-blocks` | Upstream claimed supplier: whole-terminal finite memberships. Statement and dependence recovered; its production proof is being audited separately and is not certified here. |
| `parts/unforced/02-compatible-rectangles.tex` | 54–169, `u:prop:completed-height-recurrence` | Full nonlinear/pressure height identity on strict intervals. |
| Same | 173–313, `u:thm:datum-rectangles`, `u:prop:datum-terminal-realization` | Finite norm and monotone exhaustion, conditional on supplier. |
| Same | 315–379, `u:cor:datum-critical-height-completion` | Completed heights and spatial Sobolev recovery, conditional on supplier. |
| Same | 394–456, `u:prop:rectangle-pressure-completion` | Whole-terminal pressure and momentum identities, conditional on velocity memberships. |
| `parts/unforced/03-matrix-forms.tex` | 10–153 | Transport matrix, factorial conjugacy, pressure completion. |
| Same | 155–291 | Norm matrix, exact weighted spatial derivative identity, adjacent trace and full-interval norm realization. |
| `parts/unforced/01-setting-mixed-jet.tex` | 624–714, `u:prop:spatial-column-reconstruction` | All-spatial whole-terminal column implies all temporal and pressure rows. |
| `parts/unforced/03-quantitative-consequences.tex` | 698–826 | Finite reconstruction from a finite collection of completed-height masses, with height ceiling at most `M+2N+4`. |
| `parts/forced/02-compatible-rectangles.tex` | 68–187 | Forced height recurrence, including every force-work term. |
| Same | 189–252, `f:prop:complete-forced-rectangle-cell` | Positive viscous cell, square, pressure orthogonality and integrated identity on strict intervals. |
| Same | 255–382 | Complete-equation estimates; consume already finite velocity rectangles. |
| Same | 392–506 | Monotone realization and completed-height recovery, conditional on supplier. |
| Same | 508–570 | Forced all-spatial-to-mixed reconstruction. |
| Same | 588–702 | Pressure completion and restriction compatibility. |
| `parts/forced/03-matrix-forms.tex` | 13–341 | Forced transport and norm matrices, with full force and force-pressure coordinate retained. |
| `parts/forced/01-setting-mixed-jet.tex` | 729–810 | Definition of forced rectangle norms and their dependence on the forced upstream supplier. |
| `parts/forced/03-quantitative-consequences.tex` | 807–946 | Forced finite completed-height reconstruction, including prescribed-force budgets. |

`parts/unforced/00-how-proof-works.tex` (entire file) and `parts/forced/00-how-proof-works.tex` through line 240 were read to check the guide's description against these producing statements. The guide explicitly evaluates the height identities on the earlier supplied rectangles; it does not supply an additional independent norm-production argument.

## Checked equations and consequences

Write `V_n = ∂_t^n u`, `Q_n = ∂_t^n p`, and, in the forced problem, `F_n = ∂_t^n f`. Set

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The exact forced row is

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\quad \nabla\cdot V_n=0,
\]

with normalized pressure

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j
-(-\Delta)^{-1}\nabla\cdot F_n.
\]

For the unforced problem, set every `F_n` to zero. The source's force-pressure sign is correct: divergence gives `−ΔQ_n = ∂_i∂_j Σ binom V_{a,i}V_{n−a,j} − div F_n`; consequently `∇Q_n = (I−P)(F_n−B_n)`.

### Height recurrence

Define

\[
E_{r,s}=\tfrac12\|\Lambda^s V_r\|_2^2,
\quad
\mathcal P_{r,s}=-\Re\langle\Lambda^sV_r,\Lambda^s(B_r+\nabla Q_r)\rangle,
\quad
\mathcal W_{r,s}=\Re\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Pairing the complete row with `Λ^{2s}V_r` yields

\[
\partial_t E_{r,s}=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\]

Inductively,

\[
\partial_t^kE_{r,s}=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}(\mathcal P_{r,s+j}+\mathcal W_{r,s+j}).
\]

The induction differentiates this formula and replaces the final `∂_tE_{r,s+k}` by the same complete balance. Thus the coefficient and alternating signs are exact. No assumption that the higher transfer is zero or controlled by viscosity enters this identity.

For `H=E_{0,1/2}`, the completed quotient `R_k` is exactly `E_{0,k+1/2}`, so it is nonnegative. The derivative `H^{(k)}` alone need not be nonnegative. All differentiated nonlinear/work terms remain in the quotient. Explicitly, the ordinary product rule gives

\[
\partial_t^q\mathcal P_{r,s}
=-\Re\sum_{b=0}^{q}\binom qb
\langle\Lambda^sV_{r+b},\Lambda^s(B_{r+q-b}+\nabla Q_{r+q-b})\rangle,
\]

and the analogous force-work sum replaces the second argument by `Λ^s F_{r+q−b}`. Here `∂_t^ℓ B_r=B_{r+ℓ}` follows from the full binomial Leibniz formula. These identities are valid on strict classical intervals. Whole-terminal integrability of `R_k` below uses the supplier, not merely these identities.

### Positive viscous square with pressure

Projecting the complete forced row and using `−Δ=Λ²` gives

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n=\Lambda^sP(F_n-B_n).
\]

Its cross term is

\[
2\nu\Re\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\]

The pressure gradient is orthogonal to the two solenoidal faces. Therefore the source's unprojected identity is exact:

\[
\|\Lambda^sV_{n+1}\|_2^2+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2
+\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2
=\|\Lambda^s(F_n-B_n)\|_2^2.
\]

Integration on `[0,S]`, `S<T_*`, gives exactly forced02 lines 219–230. This is a valid full-equation identity. To take its supremum up to `T_*`, forced02 lines 283–302 first obtain `B_n∈L²(I;dot H^s)` from higher finite rectangles and adjacent traces. That is a legitimate consequence if the supplier holds; it does not independently establish those rectangles.

The same distinction applies to the explicit finite estimate in forced02 lines 309–382. With the source's `R_v` and `I_{N,M}`, `M≥2`, the Hilbert-scale trace yields

\[
\sum_{n=0}^N\sup_t\|V_n(t)\|_{H^M}^2\le I_{N,M}+R_v.
\]

Sobolev multiplication and the finite binomial sums give

\[
\sum_{n=0}^N\|B_n\|_{L^2H^{M-1}}^2
\le C_{N,M}(I_{N,M}+R_v)R_v.
\]

Substitution in the complete integrated rows proves the displayed bound

\[
\mathcal D_{N,M}(S)\le\nu I_{N,M}
+2\sum_{n=0}^N\|F_n\|_{L^2H^{M-1}}^2
+2C_{N,M}(I_{N,M}+R_v)R_v.
\]

This implication is valid. Its right side contains the already supplied `R_v`; the displayed estimate alone is not an upper bound solving for `R_v` from initial data and force.

### Norm realization, pressure and height exhaustion

The rectangle norm is a finite sum of nonnegative time integrals. Hence

\[
\sup_{T<T_*}\mathfrak R_{N,M}(T)
=\lim_{T\uparrow T_*}\mathfrak R_{N,M}(T)
=\sum_{n=0}^N\big(\|V_n\|_{L^2(I;H^{M+1})}^2
+\|V_{n+1}\|_{L^2(I;H^{M-1})}^2\big).
\]

A finite supremum is equivalent to finite whole-terminal memberships. The norm may depend on `N,M`; no uniform bound over derivative order is needed. Finiteness on each strict interval alone does not assert a finite supremum.

Pressure completion follows from `H^{M+1}·H^{M+1}→H^M`, temporal Cauchy–Schwarz and the Riesz multiplier. At `M=0`, `H¹·H¹→L²` is sufficient, while the transport is treated as `div(V_{n−a}⊗V_a)∈L¹H^{-1}`. The binomial estimate

\[
\sum_{a=0}^n\binom nax_ax_{n-a}
\le\sum_{a=0}^n\binom nax_a^2\le2^n\sum_{a=0}^nx_a^2
\]

and summation over `n` give `(2^{N+1}−1)C_M^p` times the velocity rectangle norm. The forced pressure budget adds the force-potential norms. The prescribed force class here is `C∞([0,∞);S(R³;R³))`; Schwartz spatial decay supplies the low-frequency potential estimate. General smooth forces without this spatial hypothesis were not established by this audit.

For heights, the pointwise Fourier inequalities

\[
|\xi|^{2k+1}\le\langle\xi\rangle^{2k+2},
\qquad
(1+|\xi|^2)^m\le2^m(1+|\xi|^{2m+1})
\]

prove

\[
2\|R_k\|_{L^1(I)}\le\mathfrak R_{0,k}^*,
\quad
\|u\|_{L^2(I;H^m)}^2
\le2^m\big(T_*\|u_0\|_2^2+2\|R_m\|_{L^1(I)}\big).
\]

In the forced statement the energy term becomes `T_* K_f(T_*)²`. Exhausting finite heights is valid conditionally on their finite masses. Compatibility identifies common derivatives, but does not itself assert finite time integrals.

### Reconstruction and matrices

The spatial-column premise in unforced01 lines 624–714 is **all** `u∈L²(I;H^m)` for finite `m`, on the same finite interval `I=(0,T_*)`. Its proof is valid: the projected equation gives `u_t∈L¹(I;H^m)` with bound `ν√T_* S_{m+2}+C_m S_{m+2}²`; hence `u∈W^{1,1}(I;H^m)⊂C([0,T_*];H^m)`. Induction through the complete recurrence makes every `V_n,Q_n` continuous in every finite spatial order, and finite `T_*` gives their mixed Sobolev memberships. Forced02 lines 508–570 add `P F_n` and the normalized force-pressure potential in exactly those rows.

The quantitative finite reconstruction in unforced03 lines 698–826 and forced03 lines 807–946 uses height masses through order at most `M+2N+4`, rather than a displayed theorem `R(0,M+2N)⇒R(N,M)`. Indeed the recursive velocity majorant at `(n,m)` reaches the base spatial majorant at at most `m+2n`, whose definition reaches height `m+2n+2`. The first rectangle column stops at `M+2N+3`; the second stops at `M+2N+3` for `M≥1`, and at `M+2N+4` for `M=0` because the source uses `H⁰⊂H^{-1}`. The stated ceiling is sufficient. Forced reconstruction retains its listed velocity-force and pressure-potential budgets.

For `κ=(n,α)` and `λ≼κ`, factorial conjugacy is valid because

\[
\frac1{\kappa!}\binom\kappa\lambda(\kappa-\lambda)!\lambda!=1.
\]

The normalized temporal row retains the factor `(n+1)V-hat_{n+1,α}`; its pressure formula and affine force coordinate are also retained. Each supported row sum is finite. Lower triangularity follows because a distinct `λ≼κ` has smaller `a+|β|` than `n+|α|`.

The exact Sobolev matrix identity is valid by Plancherel and the multinomial expansion

\[
G_{n,m}(T)^2=\sum_{|\alpha|\le m}
\frac{m!}{(m-|\alpha|)!\alpha!}\|J_{n,\alpha}\|_{L^2((0,T)\times\mathbb R^3)}^2.
\]

The velocity-column Frobenius norm is precisely the rectangle norm by definition. The entrywise full-interval matrix bound is a reorganization of restriction and monotone convergence. The matrices in the current source are not stated to furnish a new coercive Gram estimate. No literal Gram/coercivity or `R(0,M+2N)` transfer theorem was found in the current combined source's `parts/`; therefore no claim about a different version of such a theorem is made here. The binomial contraction for `H^{(r)}` is an exact quadratic product-rule identity, not a positivity assertion for each energy derivative.

## Small source-reference qualification

Unforced02 lines 239–243 invoke the supplier at fixed `N,M` and display the stronger `V_{n+1}∈L²H^{M+1}`, whereas that exact selected rectangle's statement supplies `H^{M−1}`. This is not an independent mathematical obstruction: the actual required lower membership is supplied directly; alternatively the theorem at height `M+2` gives the stronger displayed membership. The proof can use the stated `H^{M−1}` without altering its finite-sum argument.

## Hash baseline

SHA-256 hashes captured before this audit's artifact was written:

| Relative source | SHA-256 |
|---|---|
| `parts/unforced/02-compatible-rectangles.tex` | `2e1c8e40a0e9fa1b2d50ac6db5680a7259404344d83258e7ff2968386fda8e66` |
| `parts/unforced/03-matrix-forms.tex` | `5270790de1fdea2b26e8029c5d4a3ca2a78030c4961bf489478e069ab973a3ed` |
| `parts/unforced/00-how-proof-works.tex` | `75c4aa43d28b2d8f74ee969e1be677c129b955b6801a907a1d10e6638f2dd059` |
| `parts/unforced/01-setting-mixed-jet.tex` | `dbd0c274c40b2ab9737ccc6faf7bd2ce29f1ac0d69085266cfafd89db9b1f914` |
| `parts/unforced/00-analytic-framework.tex` | `fe61c1940e5124a63eb953ea71538359675a05d0c40987b468481835c66738e1` |
| `parts/unforced/03-quantitative-consequences.tex` | `64deb94a314d6c73416dc2f7e805e38537f0ffbe789f04c48b9008d41dda09e8` |
| `parts/forced/02-compatible-rectangles.tex` | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` |
| `parts/forced/03-matrix-forms.tex` | `966a4f8f76d0b7ff863ebbc8732822d44ae618b98f5823da79e34a23d76b7950` |
| `parts/forced/01-setting-mixed-jet.tex` | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` |
| `parts/forced/00-how-proof-works.tex` | `f75f1c7c33b0a4e237506ebbb7a13e6ec3f3a00d1bdaf0cb3d8dea511b1dacc9` |
| `parts/forced/03-quantitative-consequences.tex` | `331840d5590740054afb5f630f9f9849725b1b7caa5289cc2eaf960f1ae1a00b` |

Remaining verification dependency: the whole-terminal supplier, including its complete columnwise construction, must be established before these valid downstream chains can certify the global regularity conclusion. This audit neither substitutes strict-horizon persistence for that supplier nor treats absence of an all-order uniform constant as an error.
