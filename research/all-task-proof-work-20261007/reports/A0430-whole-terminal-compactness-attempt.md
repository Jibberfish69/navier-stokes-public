# Simultaneous Fourier construction and the first positive rectangle

**Reviewed scope and currentness.** [Coupled reciprocal-stock and weighted-rectangle compactness](A0429-reciprocal-stock-weighted-compactness.md) adds weighted positive topology and fullpressure-defect square; CP companionparagraph already incorporates that extension. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This is new mathematics on the original coupled Navier–Stokes system. It does not assume global regularity or a whole-terminal rectangle and does not use earlier audit conclusions. The construction, compactness, exact nonlinear cancellations, and remaining quantitative input are derived below.

Fix a finite horizon `I=(0,T)` and the original unitary Fourier convention on `ℝ³`. First take `f=0`, `ν>0`, and `u₀∈H∞σ`. The desired output is

\[
R_{01}(u;I)=\|u\|_{L^2(I;H^2)}^2+
\|u_t\|_{L^2(I;L^2)}^2<\infty.
\tag{CP1}
\]

The time `T` can subsequently be a proposed finite maximal time. Nothing below presumes a trace or a classical continuation there.

## 1. Construct all cutoff histories on the whole fixed horizon

Let `S_N` be the orthogonal Fourier projection onto `|ξ|≤N`, and let `P` be the Leray projection. Both commute with spatial derivatives and heat evolution; both are contractive on every `H^s`. We use only those Hilbert-space projection facts, not an unproved `L^p` bound for a sharp sphere multiplier.

On the closed band-limited solenoidal Hilbert space, solve

\[
\partial_tu_N=\nu\Delta u_N-S_N\mathcal Q_N,
\quad u_N(0)=S_Nu_0,
\quad
\mathcal Q_N=\mathbb P\nabla\cdot(u_N\otimes u_N).
\tag{CP2}
\]

The vector field is locally Lipschitz in `L²`: Bernstein bounds the full quadratic difference on bounded balls, and `Δ` is bounded by `N²`. This is a Hilbert-space ODE on `ℝ³`, not a periodic-domain substitution or a finite-dimensional fluid. Its kinetic identity prevents norm blowup at fixed `N`, so the solution exists on every finite horizon. Every fixed spatial order and time derivative is then finite for this cutoff history.

Retain both pressure representatives:

\[
p_N=R_iR_j((u_N)_i(u_N)_j),\qquad \pi_N=S_Np_N.
\tag{CP3}
\]

The full canonical pressure is `p_N`. The pressure in the truncated equation is `π_N`, with its complete product sum and exterior output projection. With `B_N=(u_N·∇)u_N`, the exact equations are

\[
u_{N,t}+S_NB_N+\nabla\pi_N=\nu\Delta u_N,
\]

\[
u_{N,t}+B_N+\nabla p_N
=\nu\Delta u_N+(I-S_N)\mathcal Q_N.
\tag{CP4}
\]

Thus the original pressure-complete equation has a displayed cutoff defect. Its defect tends to zero against any fixed smooth spacetime test: move the exterior projection to the test and bound `u_N⊗u_N` in `L∞_tL¹_x`. No pressure face is deleted.

Write `V_n^N=∂t^nu_N`, `J_(n,α)^N=∂x^αV_n^N`. Every mixed truncated row retains the original allocations:

\[
\begin{aligned}
J_{n+1,\alpha}^N
&+S_N\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}^N\cdot\nabla)J_{n-a,\alpha-\beta}^N
+\nabla\Pi_{n,\alpha}^N=\nu\Delta J_{n,\alpha}^N,\\
\Pi_{n,\alpha}^N
&=S_NR_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
J_{a,\beta,i}^NJ_{n-a,\alpha-\beta,j}^N,\qquad
\nabla\cdot J_{n,\alpha}^N=0.
\end{aligned}
\tag{CP5}
\]

All rows are actual derivatives of this one cutoff history. Smooth datum truncations and these full recurrences make every fixed initial jet converge to the original initial jet. This includes pressure and both ordered transport parents.

## 2. Exact kinetic and first positive-row controls

Set

\[
M=\|u_0\|_2,\quad
Z_N=\|\nabla u_N\|_2^2,\quad
D_N=\|\Delta u_N\|_2^2,\quad E=M^2/(2\nu).
\]

Since `S_Nu_N=u_N`, its energy pairing removes the output projection. Actual incompressibility gives

\[
\|u_N(t)\|_2^2+2\nu\int_0^tZ_N=\|S_Nu_0\|_2^2,
\quad
\sup_I\|u_N\|_2\le M,\quad\int_I Z_N\le E.
\tag{CP6}
\]

Now use the **entire joined projected momentum source**, rather than an isolated parent. From `u_Nt+νΛ²u_N=−S_NQ_N`, squaring yields

\[
\nu Z_N'+\nu^2D_N+\|u_{N,t}\|_2^2
=\|S_N\mathcal Q_N\|_2^2.
\tag{CP7}
\]

With the complete Leray-complement pressure square in the spectrally truncated equation, this is equivalently

\[
\nu Z_N'+\nu^2D_N+\|u_{N,t}\|_2^2
+\|\nabla\pi_N\|_2^2=\|S_NB_N\|_2^2.
\tag{CP8}
\]

Indeed `∇p_N=−(I−P)B_N`, so the pressure contribution subtracts exactly the complementary source norm:

\[
\|S_N\mathcal Q_N\|_2^2
=\|S_NB_N\|_2^2-\|\nabla\pi_N\|_2^2.
\tag{CP9}
\]

The exact integrated positive-row identity is

\[
\nu Z_N(T)+\nu^2\int_I D_N+\int_I\|u_{N,t}\|_2^2
=\nu Z_N(0)+\int_I\|S_N\mathcal Q_N\|_2^2.
\tag{CP10}
\]

This retains both endpoint terms. The low-frequency part of the target is already paid:

\[
\int_I\|u_N\|_{H^2}^2
=\int_I(\|u_N\|_2^2+2Z_N+D_N)
\le TM^2+M^2/\nu+\int_I D_N.
\tag{CP11}
\]

Thus CP10 precisely identifies the full source action that would supply a uniform first positive rectangle. This is the original momentum equation's own coercive calculation, not a different regularity criterion.

## 3. Execute the full simultaneous nonlinear cancellation

All temporal rows in CP5 have to be joined before interpreting their signs. For any finite integer `j≥0`, the complete derivative of the nonlinear kinetic pairing is

\[
\sum_{a+b+c=j}\frac{j!}{a!b!c!}
\left\langle V_c^N,(V_a^N\cdot\nabla)V_b^N\right\rangle=0.
\tag{CP12}
\]

For fixed `a`, exchanging `b,c` preserves the coefficient and reverses the pairing by `div V_a^N=0`; the diagonal `b=c` vanishes itself. The output projection is removed in each pairing because `V_c^N` is band-limited. Every differentiated pressure pairing vanishes against its actual solenoidal receiver. This is an exact cancellation of **all** triple allocations, with no omitted nonlinear or pressure parent.

The resulting identity is

\[
\partial_t^{j+1}\tfrac12\|u_N\|_2^2
=-\nu\partial_t^j Z_N.
\tag{CP13}
\]

It gives signed anti-diagonal sums of jet cross-pairings. It does not supply an extra positive source-action estimate in CP10. For example the `j=1` row gives

\[
\tfrac{d^2}{dt^2}\tfrac12\|u_N\|_2^2
=\|u_{N,t}\|_2^2+\langle u_N,u_{N,tt}\rangle
=-\nu Z_N',
\]

where the differentiated nonlinear term cancels the first nonlinear pairing as specified in CP12. Keeping this complete cancellation is essential; treating the second energy derivative as `||u_Nt||²` would be incorrect.

There is also an exact finite simultaneous Gram identity. For rows `0≤n,m≤r`, let `Q_n^N=PΣ_(a≤n)binom(n,a)(V_a^N·∇)V_(n−a)^N` and define the actual Gram matrices of `∇V_n^N`, `V_(n+1)^N`, `Λ²V_n^N`, and `S_NQ_n^N`. The complete equations imply

\[
\nu\frac d{dt}G_{\nabla V}
+G_{V^+}+\nu^2G_{\Lambda^2V}=G_{S_NQ}.
\tag{CP14}
\]

All four matrices are positive semidefinite at each time; the first derivative need not be. Its `(0,0)` equation is CP7. The kinetic roof controls the base velocity entry and its first spatial action, whereas CP14's right-hand Gram contains the complete nonlinear source entries. Positivity and index compatibility alone do not evaluate their time integrals. No infinite Gram sum or uniform-in-order constant has been introduced.

## 4. Two actual source estimates and their exact strengths

The sharp band support gives the explicit Bernstein inequality

\[
\|u_N\|_\infty\le(2\pi)^{-3/2}
\sqrt{4\pi N^3/3}\,\|u_N\|_2
=\frac{N^{3/2}}{\sqrt6\,\pi}\|u_N\|_2.
\tag{CP15}
\]

Hence the full projected source has the actual datum-controlled bound

\[
\int_I\|S_N\mathcal Q_N\|_2^2
\le\frac{N^3M^2}{6\pi^2}\int_I Z_N
\le\frac{N^3M^4}{12\pi^2\nu}.
\tag{CP16}
\]

Projection can improve this value by CP9; CP16 is a valid upper estimate retaining the complete source. It supplies a finite whole-horizon first rectangle for every `N`, but grows with the approximation cutoff.

A second estimate removes explicit cutoff constants. Let `S₃,S₆` be the original Sobolev constants and `a₀=S₃S₆=√(2/3)/π`. Full Leray contraction, Hölder, and interpolation give

\[
\begin{aligned}
\|S_N\mathcal Q_N\|_2
&\le\|u_N\|_6\|\nabla u_N\|_3\\
&\le S_6\sqrt{Z_N}\,S_3\|\Lambda^{3/2}u_N\|_2
\le a_0 Z_N^{3/4}D_N^{1/4}.
\end{aligned}
\tag{CP17}
\]

The complete projected symbol is retained: for `q=k−p` and `c=(2π)^(-3/2)`,

\[
\widehat{S_N\mathcal Q_N}(k)
=\frac{ic}{2}\mathbf1_{|k|\le N}\mathbb P_k
\int[(q\cdot\widehat u_N(p))\widehat u_N(q)
+(p\cdot\widehat u_N(q))\widehat u_N(p)]\,dp.
\tag{CP18}
\]

Both parent supports are `≤N`; their solenoidal constraints and the output pressure projection are explicit. CP17 is an estimate of this joined symbol, not an assertion that its ordered parents are independent.

Squaring CP17 and using Young **in CP7 itself** gives the strengthened positive-row differential estimate

\[
\nu Z_N'+\tfrac{\nu^2}{2}D_N+\|u_{N,t}\|_2^2
\le\frac{a_0^4}{2\nu^2}Z_N^3.
\tag{CP19}
\]

Thus an actual remaining RHS is `∫_I Z_N³`. CP6 supplies only `∫_I Z_N`. The construction and estimates derived here do not give a cutoff-uniform cubic action. This is the precise new quantitative limitation of this attempt, not a toy example or a proof that no stronger coupled cancellation can exist.

## 5. Compactness genuinely obtained from the paid controls

The same full source has uniform negative-space bounds:

\[
\|\mathcal Q_N\|_{H^{-1}}
\le\|u_N\|_4^2
\le S_6^{3/2}M^{1/2}Z_N^{3/4},
\]

\[
\|\mathcal Q_N\|_{H^{-3/2}}
\le S_3\|u_N\|_3^2
\le a_0M\sqrt{Z_N}.
\tag{CP20}
\]

For example, dual homogeneous Sobolev bounds the tensor in `dotH^(-1/2)` and `div:H^(-1/2)→H^(-3/2)` has the required unit multiplier estimate. Pressure is included by the Leray operator. Therefore

\[
\|u_{N,t}\|_{L^{4/3}(I;H^{-1})}
\le\nu T^{1/4}\sqrt E+S_6^{3/2}M^{1/2}E^{3/4}=:A_T,
\]

\[
\|u_{N,t}\|_{L^2(I;H^{-3/2})}
\le(\nu+a_0M)\sqrt E.
\tag{CP21}
\]

Here `||Δu_N||H^(-1)` and `||Δu_N||H^(-3/2)` are each at most `||∇u_N||₂`. These are positive time-integrability bounds for the first response in negative spatial spaces, not CP1.

Local strong `L²` compactness can be proved directly, without assuming a stronger row. Spatial translations obey

\[
\|u_N(\cdot,\cdot+y)-u_N\|_{L^2(I;L^2)}
\le |y|\sqrt E.
\]

Time translations obey `||δ_hu_N||L^(4/3)H^(-1)≤hA_T` and `||δ_hu_N||L∞H^(-1)≤2M`. Interpolating time integrability and then the Hilbert pair `H^(-1),H¹` gives, on the overlapping interval,

\[
\|\delta_hu_N\|_{L^2L^2}^2
\le2\sqrt{TM^2+E}\,(2M)^{1/3}(hA_T)^{2/3}.
\tag{CP22}
\]

End time strips have uniformly small mass `≤M²h`. On any bounded spatial region, finite cell averages and these translation bounds give a uniformly finite-dimensional approximation in `L²`; extracting its coordinates and reducing cell size produces a strongly convergent local `L²` subsequence. Globally it converges weakly in `L²H¹` and weakly-* in `L∞L²`. This statement makes no unsupported global spatial-tail compactness claim.

The local strong limit identifies `u_N⊗u_N→u⊗u` in local `L¹`. The uniform global `L¹` tensor roof handles the tails when a Riesz-transformed compact test is used, so the canonical pressure is retained. The full pressures also have uniform `L^(4/3)_tL²_x` and `L²_tH^(-1/2)_x` bounds from the same tensor estimates. Cutoff pressure and cutoff equation defects disappear distributionally. The limit is a pressure-normalized energy-class distributional solution with the original initial datum.

## 6. Simultaneous projective jets: what survives the limit

Differentiation is continuous in the distribution topology. CP21 therefore simultaneously supplies, for every fixed `n≥1`,

\[
V_n^N\in W_t^{1-n,4/3}(I;H^{-1})
\cap W_t^{1-n,2}(I;H^{-3/2})
\tag{CP23}
\]

with cutoff-uniform bounds at each finite order. The complete nonlinear row is

\[
S_N\mathcal Q_n^N
=S_N\mathbb P\sum_{a=0}^n\binom na
(V_a^N\cdot\nabla)V_{n-a}^N
=\partial_t^n(S_N\mathcal Q_N),
\tag{CP24}
\]

uniformly in `W_t^(-n,4/3)H^(-1)∩W_t^(-n,2)H^(-3/2)`. Its pressure parents are the full derivatives of CP3/CP5. On the limit, the joined object is `∂t^nP div(u⊗u)`. We do not multiply negative-time distributional parents separately after taking the limit; the full smooth finite-N sum is joined before passage.

Every finite index restriction within one cutoff history is compatible. A single base-field subsequence determines all its distributional derivatives and joined source derivatives at once, so a simultaneous projective limit really exists in these paid weaker domains.

Cutoff histories are not themselves a consistent inverse system under changing cutoff: generally `S_Mu_N` solves a low-output equation containing `u_N⊗u_N`, rather than the equation containing `u_M⊗u_M`. The difference retains precisely the higher-parent contributions. Finite **derivative-index** compatibility on one history is distinct from falsely asserting this **cutoff-index** consistency.

To obtain a projective limit in the positive CP1 coordinates, each of those positive coordinate norms must have its corresponding cutoff-uniform boundedness. The simultaneous negative-row limit does not change the topology of those coordinates.

## 7. Identify the limit with the original history on every strict window

Let `U` be the original maximal classical history, and fix `S<T*`. This step uses its actual strict-window smoothness, not terminal regularity. Put `U_N=S_NU`, `w_N=u_N−U_N`, and

\[
r_N=S_N\mathbb P\nabla\cdot(U_N\otimes U_N-U\otimes U).
\]

Its exact difference equation is

\[
w_{N,t}-\nu\Delta w_N
=-S_N\mathbb P[(u_N\cdot\nabla)w_N
+(w_N\cdot\nabla)U_N]-r_N.
\tag{CP25}
\]

The first transport pairing vanishes. Strict-window `CH³` compactness of the curve `U`, projection convergence, and Sobolev multiplication imply `r_N→0` in `L²(0,S;L²)` and a uniform `||∇U_N||∞` bound. The energy pairing of CP25 and Gronwall, with `w_N(0)=0`, yield

\[
w_N\longrightarrow0\quad\text{in }C([0,S];L^2)
\cap L^2(0,S;H^1).
\tag{CP26}
\]

Thus the whole-horizon energy-class compactness limit is the actual original velocity on every strict window. Its complete joined rows consequently identify the actual preterminal derivatives as distributions. This does not assume or obtain a terminal positive-row norm.

If CP1's two approximation norms were uniformly bounded on `(0,T*)`, weak compactness in those Hilbert spaces plus CP26 and lower semicontinuity would indeed supply CP1 for the original history. CP10 gives the exact full nonlinear action at which the current calculation needs that uniformity. No global classical solution has been presumed to obtain it.

## 8. Retain the smooth prescribed force

For `f∈C∞([0,∞);S)`, set `g=Pf` and replace CP2 by

\[
u_{N,t}=\nu\Delta u_N+S_N(g-\mathcal Q_N).
\tag{CP27}
\]

The full canonical and truncated pressures are

\[
p_N=R_iR_j((u_N)_i(u_N)_j)
-(-\Delta)^{-1}\nabla\cdot f,\qquad \pi_N=S_Np_N.
\tag{CP28}
\]

The full original equation has defect `(I−S_N)(Q_N−g)`. Every temporal/spatial row in CP5 gains its corresponding `S_NF_(n,α)` and the pressure potential `−S_N(−Δ)^(-1)div F_(n,α)`. All velocity Leibniz allocations remain. The fixed finite-N ODE remains global on each compact horizon.

With

\[
K_T=\|u_0\|_2+\int_0^T\|g\|_2,
\]

the kinetic work calculation gives the joint bound

\[
\|u_N(t)\|_2^2+2\nu\int_0^tZ_N\le K_t^2\le K_T^2.
\tag{CP29}
\]

The positive-row square is the **full source square**

\[
\nu Z_N'+\nu^2D_N+\|u_{N,t}\|_2^2
=\|S_N(g-\mathcal Q_N)\|_2^2
\]

\[
=\|S_Ng\|_2^2+\|S_N\mathcal Q_N\|_2^2
-2\operatorname{Re}\langle S_Ng,S_N\mathcal Q_N\rangle.
\tag{CP30}
\]

Equivalently its unprojected version adds `||∇π_N||²` on the left and has `||S_N(f−B_N)||²` on the right. The complementary forcing-pressure term is thereby retained exactly. The cross term is not discarded before stating the identity.

Young subsequently gives, for example,

\[
\nu^2\int_I D_N+\int_I\|u_{N,t}\|_2^2
\le\nu\|\nabla u_0\|_2^2+
\frac{N^3K_T^4}{6\pi^2\nu}+2\|g\|_{L^2(I;L^2)}^2.
\tag{CP31}
\]

More generally an arbitrary positive Young parameter retains `(1+η)` times the nonlinear action and `(1+η^(-1))` times the known force action. Smooth prescribed force pays the latter and its pressure-potential norms; it does not turn the nonlinear term into a force-only action.

Negative-row compactness has the same form, with the known `g` norms added to CP21. Strict-window difference identification retains the same force on both sides, so it cancels in CP25. Differentiated kinetic cancellations CP12 retain their full velocity–force work pairings in CP13; forcing is not omitted at higher order.

## 9. Actual output and remaining limit step

This attempt constructs every finite-cutoff history on a whole fixed horizon, with all its initial/mixed/pressure coordinates. It proves exact complete cancellations, a finite matrix identity, cutoff-dependent first positive rectangles, and cutoff-uniform energy/negative-row controls. Compactness then supplies a simultaneous compatible distributional tower and identifies it with the original history on every strict classical window.

The remaining positive-topology step is quantitatively explicit: CP10 needs a cutoff-uniform action of the actual joined source `S_NP div(u_N⊗u_N)`. CP16 pays it with an `N³` bound; CP19 trades explicit cutoff growth for `∫Z_N³`, whose uniform upper payment is not derived from the available kinetic action. The full pressure subtraction, all simultaneous triple cancellations, and all finite Gram entries have been retained in reaching this point.

No toy or unrelated criterion replaces the original coupled system. No impossibility claim or global regularity verdict follows from the unsuccessful uniform estimate. A stronger original or new same-history cancellation that pays the displayed source action would supply the missing positive compactness step; the present calculation neither assumes it nor invents its value.

The source definitions used are the original Fourier/Sobolev convention and constants in `00-analytic-framework.tex` LF9–160, and the pressure/mixed-jet operations in `01-setting-mixed-jet.tex` LF3–188. The original projection construction is recorded in the quantitative source. No MR handoff was reread as part of this attempt. This report's CP formulas are new derived calculations with their own stated domains.

The companion `reciprocal-stock-weighted-compactness.md` continues this same construction. It proves a cutoff-uniform weighted first rectangle with full canonical pressure and the positive cutoff-defect square, a BV reciprocal gradient stock positive almost everywhere in the simultaneous limit, and strong local compactness of the actual weighted velocities up to every spatial order below two. Those are additional positive-topology gains. Its WC25–WC26 state the precise remaining unweighted action, without assuming a positive terminal stock.
