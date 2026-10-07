# Coupled reciprocal-stock and weighted-rectangle compactness

**Reviewed scope and currentness.** Strengthens [Simultaneous Fourier construction and the first positive rectangle](A0430-whole-terminal-compactness-attempt.md) distributional construction; later zero-terminal [Actual zero-stock terminal branch: coupled action and concentration](A0737-actual-zero-stock-terminal-action.md) tests actual zero branch, no unweighted supersession. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. These are new calculations for the actual whole-horizon cutoff histories in `whole-terminal-compactness-attempt.md`, not an interpretation of an earlier proof claim. The calculation retains the full canonical pressure, both nonlinear parents, the entire force, and the exterior cutoff defect. The simultaneous limit gains a weighted positive rectangle and higher spatial compactness. The requested unweighted whole-terminal rectangle is not assumed.

Fix `I=(0,T)`, `ν>0`, `u₀∈H∞σ(ℝ³)`, and a prescribed force `f∈C∞([0,T];S(ℝ³))`; put `f=0` for the unforced argument. All Fourier transforms are unitary. Let `S_N=1_{|ξ|≤N}` be the orthogonal Fourier projection and `P` the Leray projection. The original system and its full mixed recurrence are used as in CP2–CP5 and CP27–CP28. No periodic-domain replacement or `L^p` boundedness of a sharp sphere multiplier is used.

## 1. Complete pressure and cutoff square

Write

\[
B_N=(u_N\cdot\nabla)u_N,\quad a_N=f-B_N,
\quad r_N=(I-S_N)\mathbb P a_N,
\]

\[
u_{N,t}+\nu\Lambda^2u_N=S_N\mathbb Pa_N,
\qquad
\nabla p_N=(I-\mathbb P)a_N.
\tag{WC1}
\]

Here `p_N=R_iR_j((u_N)_i(u_N)_j)−(−Δ)⁻¹div f` is the **full** canonical pressure. It is not `S_Np_N`. Thus

\[
u_{N,t}+B_N+\nabla p_N=\nu\Delta u_N+f-r_N.
\tag{WC2}
\]

The three source pieces `S_NPa_N`, `(I−P)a_N`, and `r_N` are mutually orthogonal in `L²`. Set

\[
Y_N=\|\nabla u_N\|_2^2,\quad Z_N=\|\Delta u_N\|_2^2,
\quad
q_N=\|u_{N,t}\|_2^2+\nu^2Z_N+\|\nabla p_N\|_2^2.
\]

Squaring WC1 and retaining all three pieces gives

\[
q_N+\nu Y_N'+\|r_N\|_2^2=\|f-B_N\|_2^2.
\tag{WC3}
\]

The sign of the cutoff-defect square is positive on the left. The force–nonlinear cross is present on the right before any estimate. WC3 differs from CP8's truncated-pressure square; they are consistent after the complementary output terms are allocated explicitly.

For the kinetic controls let

\[
K=\|u_0\|_2+\int_0^T\|\mathbb Pf\|_2,
\qquad E=K^2/(2\nu).
\]

The complete forced kinetic work gives

\[
\sup_I\|u_N\|_2\le K,\qquad \int_I Y_N\le E.
\tag{WC4}
\]

For `f=0`, `K=||u₀||₂`. These constants are uniform in `N` and do not presume any positive rectangle.

## 2. Sharp full-field estimate and weighted action

The following Agmon constant follows directly from the actual Fourier field. For `α>0`, Cauchy–Schwarz gives

\[
\|u_N\|_\infty^2
\le(2\pi)^{-3}
\left(\int_{\mathbb R^3}\frac{d\xi}{\alpha|\xi|^2+|\xi|^4}\right)
\bigl(\alpha Y_N+Z_N\bigr)
=\frac{\alpha Y_N+Z_N}{4\pi\sqrt\alpha}.
\]

Optimizing `α=Z_N/Y_N` yields

\[
\|u_N\|_\infty^2\le\frac{\sqrt{Y_NZ_N}}{2\pi},
\qquad
\|B_N\|_2^2\le\frac{Y_N^{3/2}\sqrt{Z_N}}{2\pi}.
\tag{WC5}
\]

The zero-norm case follows by continuity. Vector-valued Cauchy–Schwarz gives the same constant; no transport allocation or pressure projector is suppressed in WC3.

Fix a positive number `A`, and define the actual reciprocal stock and positive action

\[
z_N=(A+Y_N)^{-1},\qquad
q_{-,N}=\|u_{N,t}\|_2^2+\tfrac12\nu^2Z_N+\|\nabla p_N\|_2^2.
\tag{WC6}
\]

Unforced Young absorption, applied after the exact identity, gives

\[
q_{-,N}+\nu Y_N'+\|r_N\|_2^2
\le \frac{Y_N^3}{8\pi^2\nu^2}.
\tag{WC7}
\]

Indeed the coefficient of `√Z_N` in WC5 is `Y_N^(3/2)/(2π)` and maximizing its product with `√Z_N` minus `.5ν²Z_N` gives exactly `Y_N³/(8π²ν²)`.

With force, first retain WC3 and then use `||f−B_N||²≤2||f||²+2||B_N||²`. The same half-viscous absorption gives

\[
q_{-,N}+\nu Y_N'+\|r_N\|_2^2
\le \frac{Y_N^3}{2\pi^2\nu^2}+2\|f\|_2^2.
\tag{WC8}
\]

Multiply by `z_N²`. Since `z_N′=−z_N²Y_N′`, the integrated **exact endpoints** in these estimates are

\[
\begin{aligned}
\int_I z_N^2(q_{-,N}+\|r_N\|_2^2)
&\le \nu\,[z_N(T)-z_N(0)]
+c_\nu\int_I\frac{Y_N^3}{(A+Y_N)^2}
+2\int_I z_N^2\|f\|_2^2\\
&\le\frac\nu A+c_\nu E+2A^{-2}\|f\|_{L^2(I;L^2)}^2=:C_W,
\end{aligned}
\tag{WC9}
\]

where `c_ν=1/(8π²ν²)` and the force term is zero in the unforced case; for the forced estimate `c_ν=1/(2π²ν²)`. The only nonlinear action used in the last line is the paid kinetic quantity: `Y_N³/(A+Y_N)²≤Y_N`. Both pressure and cutoff-defect actions are included. The first line keeps the actual initial and terminal reciprocal endpoints, rather than replacing them before stating the formula.

## 3. A simultaneous reciprocal limit, with positivity almost everywhere

The actual derivative of enstrophy obeys

\[
\nu|Y_N'|
=2\nu|\langle u_{N,t},\Lambda^2u_N\rangle|
\le\sqrt2\bigl(\|u_{N,t}\|_2^2+\tfrac12\nu^2Z_N\bigr)
\le\sqrt2\,q_{-,N}.
\]

Consequently

\[
0<z_N\le A^{-1},\qquad
\operatorname{Var}_{[0,T]}z_N\le\frac{\sqrt2}{\nu}C_W.
\tag{WC10}
\]

These are bounds on the physical gradient stocks of the constructed fluids. BV compactness supplies, on one subsequence shared with CP22,

\[
z_N\longrightarrow z\quad\text{in }L^p(0,T),\ 1\le p<\infty,
\quad\text{and almost everywhere},\quad 0\le z\le A^{-1}.
\tag{WC11}
\]

The passage from `L¹` to every finite `p` uses the uniform scalar bound, not extra temporal regularity. Initial datum convergence gives `z_N(0)→(A+||∇u₀||²)⁻¹`; BV endpoint traces require their own passage and are not inferred solely from L¹ convergence.

Now use the same subsequence and the actual kinetic bound WC4. Fatou applied to `Y_N=1/z_N−A` gives

\[
\int_0^T(1/z-A)\,dt\le E,
\qquad z>0\quad\text{almost everywhere on }(0,T).
\tag{WC12}
\]

The convention is `1/0=+∞`. This is genuine additional information: a zero-stock set of positive time measure is excluded. The calculation does not exclude a zero one-sided terminal stock or prove `inf_I z>0`.

For a general weak limiting history, `1/z−A` is the limit of the **approximating gradient norms**, and need not be declared equal to `||∇u||²` without identification. Local strong velocity convergence, almost-everywhere-in-time extraction, and lower semicontinuity yield

\[
\|\nabla u(t)\|_2^2\le 1/z(t)-A\quad\text{for almost every }t.
\tag{WC13}
\]

On the original classical history's every strict interval, CP25–CP26 prove strong global `L²_tH¹_x` convergence. There `Y_N→||∇u||²` in `L¹_t`, so the two stocks agree. Taking the countable union of strict intervals up to a proposed finite `T*` gives

\[
z(t)=(A+\|\nabla u(t)\|_2^2)^{-1}
\quad\text{almost everywhere on }(0,T^*).
\tag{WC14}
\]

This uses the actual preterminal history and does not presume a terminal trace.

## 4. Weighted velocities gain a positive spatial topology

Set `v_N=z_Nu_N`. The scalar stock depends only on time. Thus

\[
\int_I\|v_N\|_{H^2}^2
\le A^{-2}(TK^2+2E)+\frac{2C_W}{\nu^2},
\qquad \sup_I\|v_N\|_2\le K/A.
\tag{WC15}
\]

Every finite cutoff is differentiable, and its full derivative is

\[
\partial_tv_N=z_Nu_{N,t}+z_N'u_N.
\]

WC9 and WC10 retain both terms and give

\[
\int_I\|\partial_tv_N\|_2
\le\sqrt{TC_W}+K\frac{\sqrt2}{\nu}C_W=:B_W.
\tag{WC16}
\]

For example, the actual temporal translation satisfies

\[
\|v_N(\cdot+h)-v_N\|_{L^2(0,T-h;L^2)}^2
\le\frac{2K}{A}|h|B_W.
\tag{WC17}
\]

Spatial translations are controlled by WC15. On a bounded spatial set, finite space–time cell approximations and these translation bounds give strong `L²_tL²_x` compactness. Interpolating the local `H²` bound gives

\[
v_N\to v\quad\text{strongly in }L^2(I;H^s_{\mathrm{loc}}),\quad 0\le s<2,
\qquad v_N\rightharpoonup v\quad\text{in }L^2(I;H^2).
\tag{WC18}
\]

There is no assertion of strong compactness on all of `ℝ³` without spatial-tail control. To identify the limit, CP22 gives `u_N→u` locally in `L²`, while

\[
\|(z_N-z)u_N\|_{L^2(I;L^2)}^2
\le K^2\|z_N-z\|_{L^2(I)}^2\to0.
\]

Therefore

\[
v=zu\in L^2(I;H^2).
\tag{WC19}
\]

The gain is a positive weighted topology, not just a distributional all-row limit.

For almost every positive `ε` the level set `{z=ε}` has zero time measure. For such an `ε`, the bounded scalar factors `1_{z_N≥ε}/z_N` converge almost everywhere to `1_{z≥ε}/z`. Multiplying WC18 therefore proves

\[
\mathbf1_{\{z_N\ge\varepsilon\}}u_N
\to\mathbf1_{\{z\ge\varepsilon\}}u
\quad\text{strongly in }L^2(I;H^s_{\mathrm{loc}}),\quad s<2.
\tag{WC20}
\]

These are actual moving good-time caps of the cutoff stocks. Their derivatives, crossing terms, and any higher temporal rows have not been declared controlled merely by WC20.

## 5. Identify the full weighted first rectangle and its action measures

The original full-source estimate from CP20 gives `P B_N` and `(I−P)B_N` uniformly in `L²_tH⁻³ᐟ²_x`: its constant is `a₀K√Y_N`, with `a₀=√(2/3)/π`. Thus `u_Nt`, `∇p_N`, and `r_N` are uniformly bounded in a negative spatial Hilbert space; `Δu_N` is uniformly `L²_tH⁻¹_x`. Their unweighted weak limits are respectively `u_t`, `∇p`, `0`, and `Δu`, where `p=R_iR_j(u_iu_j)−(−Δ)⁻¹div f`.

For any smooth spacetime Hilbert test, multiplication by `z_N−z` has vanishing `L²_t` norm. Pair it with the negative-space bound just stated. The remaining term uses the unweighted weak convergence with the fixed bounded multiplier `z`. The positive `L²_tL²_x` bounds in WC9 consequently identify their weighted weak limits as

\[
z_Nu_{N,t}\rightharpoonup zu_t,\quad
z_N\Delta u_N\rightharpoonup z\Delta u,\quad
z_N\nabla p_N\rightharpoonup z\nabla p,\quad
z_Nr_N\rightharpoonup0
\quad\text{in }L^2(I;L^2).
\tag{WC21}
\]

The multiplication `zu_t` is well-defined first in the available Bochner negative space. It is then identified with an `L²_x` vector almost everywhere by the displayed limit; no undefined product of temporal distributions is taken. Lower semicontinuity gives the full positive weighted rectangle

\[
\int_I z^2\left(\|u_t\|_2^2+\tfrac12\nu^2\|\Delta u\|_2^2
+\|\nabla p\|_2^2\right)\,dt\le C_W.
\tag{WC22}
\]

Since WC12 makes `z>0` almost everywhere, `u(t)∈H²`, `u_t(t)∈L²`, and `∇p(t)∈L²` for almost every time. On `{z≥ε}` their unweighted actions are at most `C_W/ε²`. Neither statement is the whole-interval unweighted `R01` norm.

To retain possible concentration, define the actual finite measures

\[
\mu_N=z_N^2q_{-,N}\,dt,\qquad
\gamma_N=z_N^2\|r_N\|_2^2\,dt.
\tag{WC23}
\]

They have a common total-mass roof `C_W`; a subsequence converges weakly as finite measures on `[0,T]`. Their limits satisfy

\[
\mu\ge z^2q_-(u,p)\,dt,\qquad \gamma\ge0,
\qquad \nu|Dz|\le\sqrt2\,\mu.
\tag{WC24}
\]

Here `Dz` is the distributional BV derivative on the open interval `(0,T)`. The limiting action measures may also have mass at the boundary times; such mass is not added to `Dz` by an unstated zero extension. The weak vector limit `z_Nr_N→0` in WC21 does not imply that its squared action measure `γ` vanishes. The measure formulation keeps that distinction and all boundary time mass.

## 6. Precise remaining unweighted action

For the actual cutoff histories, the two paid observations are

\[
\int_{\{Y_N\le L\}}q_{-,N}\,dt\le(A+L)^2C_W,
\qquad |\{Y_N>L\}|\le E/L.
\tag{WC25}
\]

The remaining action is the original physical first-row cost on the same exceptional times, not an external criterion:

\[
\int_Iq_{-,N}\,dt
=\int_{[0,T]}z_N^{-2}\,d\mu_N.
\tag{WC26}
\]

WC9 bounds the measure mass, and WC12 bounds the reciprocal stock in `L¹`; neither calculation bounds the displayed reciprocal-weighted action uniformly or derives uniform integrability of its large-gradient tail. The actual all-row construction and the limit measures remain joined in WC26. No arbitrary scalar history is used as evidence.

The explicit variation roof in WC10 cannot by itself force a positive stock: `√2 C_W/ν≥√2/A`, whereas the initial stock is at most `1/A`. This comparison states the strength of the bound, not the behavior of an actual terminal fluid. Almost-everywhere positivity in WC12 and a positive terminal lower bound are different conclusions.

On a finite maximal classical history, WC14 identifies the stock with its actual gradient norm. WC22 then gives a datum-controlled **weighted whole-terminal first rectangle**, its full pressure action, and a BV reciprocal stock. The unweighted `R01` conclusion still requires an actual upper payment of WC26 or an independently derived positive stock. No impossibility claim or global regularity verdict is made.

## 7. Temporal-index compatibility and spectral compatibility

The mixed rows are actual derivatives of one history, so their derivative-index restrictions are exact. Writing their parabolic equations as a finite simultaneous mild map does not create independent unknowns at arbitrary temporal levels. Its row `j` contains

\[
Q_j=\mathbb P[(u\cdot\nabla)V_j+(V_j\cdot\nabla)u]
+\mathbb P\sum_{a=1}^{j-1}\binom ja(V_a\cdot\nabla)V_{j-a}.
\tag{WC27}
\]

The Fréchet derivative on the highest temporal row has the repeated diagonal Volterra operator

\[
K_uh(t)=\int_0^t e^{-\nu(t-s)\Lambda^2}
\mathbb P[(u\cdot\nabla)h+(h\cdot\nabla)u](s)\,ds.
\tag{WC28}
\]

For a finite product of identical row spaces with any positive scalar row weights, choose a perturbation supported in the highest row. All lower rows are unchanged, and the highest-row output is `−K_uh`; the same scalar weight occurs in the input and output. Consequently the full linearized operator norm is at least `||K_u||`. This norm statement concerns the product-space mild realization; it does not assert that arbitrary product-space perturbations are admissible jets of one velocity. Prescribed force rows are fixed under this variation. Scalar temporal weights may change off-diagonal estimates; they do not reduce this repeated diagonal norm. This observation does not preclude a different simultaneous coercive mechanism.

In contrast, spectral cutoffs are only approximately compatible. For nested projections `S_L≤S_{L′}`, decompose the actual larger-cutoff history as `v=S_Lu_{L′}`, `w=(S_{L′}−S_L)u_{L′}`. Its lower equation contains the exact complete defect

\[
v_t-\nu\Delta v
=-S_L\mathbb P\nabla\cdot(v\otimes v)+S_L\mathbb Pf
-S_L\mathbb P\nabla\cdot(v\otimes w+w\otimes v+w\otimes w).
\tag{WC29}
\]

All three parent allocations are retained. The pressure complement of this same decomposition is explicitly

\[
p_{\mathrm{cross}}=R_iR_j(v_iw_j+w_iv_j+w_iw_j),
\qquad
\pi_L=S_L\left[R_iR_j(v_iv_j)+p_{\mathrm{cross}}
-(-\Delta)^{-1}\nabla\cdot f\right].
\]

The unprojected low equation is `v_t+S_L div(v⊗v+v⊗w+w⊗v+w⊗w)+∇π_L=νΔv+S_L f`. Thus its pressure uses precisely the same three extra tensor allocations. The joint kinetic bound supplies

\[
\|w\|_{L^2(I;L^2)}\le\sqrt E/L,
\]

\[
\|v\otimes w+w\otimes v+w\otimes w\|_{L^1(I\times\mathbb R^3)}
\le\frac{2K\sqrt{TE}}{L}+\frac E{L^2}.
\tag{WC30}
\]

Thus the full spectral defect vanishes distributionally as `L→∞`, with canonical complementary pressure recovered from the same products. This proves approximate compatibility in the weak topology. It does not identify two finite-cutoff histories exactly or pay their positive `R01` norms. WC18–WC22 give the additional weighted positive topology that the kinetic defect estimate alone lacks.

The original source inputs and older protected outputs are exactly those recorded in `before-integrity.json`. The source definitions are `00-analytic-framework.tex` LF9–160 and `01-setting-mixed-jet.tex` LF3–188, together with the original spectral construction in `03-quantitative-consequences.tex`. Every WC formula here is a newly derived equation or explicitly bounded conclusion on the stated domains. No source or older report was edited.
