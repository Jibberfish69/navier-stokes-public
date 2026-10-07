# Actual finite Gram constraints and signed mixed work

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Keep tangencies, full nonlinear work and terminal-input conditions. Named PSD limits do not imply every matrix operation fails. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a read-only mathematical audit of the Navier–Stokes source construction, followed by explicit additional calculations. It uses only the actual velocity, pressure, prescribed force and mixed derivatives of one history. It makes no inference from a free matrix, scalar surrogate, prior obstruction verdict or altered equation.

Fix ν>0, u₀∈H∞σ(R³), f∈C∞([0,∞);Schwartz), g=Pf, and the maximal classical history. Let T be finite, T≤T*, I=(0,T). Every differential identity below first holds on [0,S], S<T. Passing an identity to T requires the stated whole-interval integrability. No constant is required to be uniform in derivative order or matrix dimension; every matrix selection is finite.

## Source identities and coverage

The source directory in this table is the indexed mathematical source witness LF locations mean actual numbered file lines.

| Source | Exact locations used | SHA256 |
|---|---|---|
| forced-native-mixed-matrix-source-completion-20260917.md | Full read; FM1–FM13, LF21–178 | 43af213b4a9c43575b622952f49eae238b22cebd45d3cc76f6cfbd6caf9eeb4b |
| forced-matrix-comparison-20260911.md | Full read; finite convolution LF1–93; complete anti-diagonal LF118–149 | 3a4afc7c188850f8f31a70a648b1319e16805bbf004899000658e2599f68d212 |
| thomas-pressure-complete-invariant-transverse-recruitment-reduction-20260803.md | Full read, 590 LF; tangencies LF77–158; Gram LF185–240; upper faces LF280–329; complete Q row LF421–479 | 2ae56db7a1ba9d77e3e73e850f6d88ea68b534bd44c2dc874f0ec4d9310dd8ba |
| thomas-invariant-transverse-first-binomial-commutator-boundary-20260803.md | Full read, 508 LF; differentiated tangencies ITC8–ITC19; exact transverse evolution ITC20i; occupation ITC21–ITC27 | 5460efa11bf5a7a2026659de41d1571056401e3f583926cfac5d4c91a65644ea |
| forced-rectangle-current-contraction-20260913.md | Bounded coverage, in particular LF697–882, (41)–(52): actual material metric, pressure, diffusion and adjoining spatial rows | e028e4717136dca99f6f6955ed201d90b53246b9a0c54e223cd83879e319ee8b |
| forced-terminal-reciprocal-and-gram-consistency-test-20260917.md | Full read; only actual adjacent Gram LF45–56 used mathematically | 0c86f97c002fb2b24191bdb63c194b7279ba4729884d1db225b324d8e83b2588 |
| forced-native-two-time-gram-and-fractional-terminal-domain-20260917.md | Bounded LF1–294: actual increment Gram G12–G15 and kinetic fractional inputs | c47674a15aa2985b2c55db20c51049bb9a4570c08569386a4a46111cb6e74a81 |

The current manuscript parts/unforced/03-matrix-forms.tex was read in full at . Its finite factorial conjugacy, pressure row, Bessel norm identity and Frobenius identities were checked in the earlier rectangles audit. Its introductory sentence and final matrix proposition explicitly reorganize already completed rows. This audit separately tests the matrix relationships as possible producing operations.

The analytic constants are from the same manuscript parts/unforced/00-analytic-framework.tex, LF102–165: S₃=2^(−1/6)π^(−1/3), S₆=2^(2/3)/(√3 π^(2/3)). Its stated vector/tensor embedding has no component factor. Original files were hashed again before this artifact; the listed hashes match the acquisition baselines.

## 1. Full mixed Gram equation, before scalar estimates

Use Vₙ=∂tⁿu, Fₙ=∂tⁿf. For a=(n,α),

\[
X_a=\partial^\alpha V_n,\qquad
B_a=\sum_{j=0}^n\sum_{\beta\le\alpha}
\binom nj\binom\alpha\beta
(\partial^\beta V_j\cdot\nabla)\partial^{\alpha-\beta}V_{n-j}.
\]

The complete unprojected equation and normalized pressure are

\[
\partial_tX_a-\nu\Delta X_a+B_a+\nabla\Pi_a
=\partial^\alpha F_n,\qquad\operatorname{div}X_a=0,
\tag{G1}
\]
\[
\Pi_a=\partial^\alpha\left[
R_iR_k\sum_{j=0}^n\binom nj(V_j)_i(V_{n-j})_k
-(-\Delta)^{-1}\operatorname{div}F_n\right].
\tag{G2}
\]

For any finite selection define the actual Hilbert Gram K_ab=(X_a,X_b), gradient Gram H_ab=(∇X_a,∇X_b), and signed work

\[
\mathcal R_{ab}=(X_a,B_b)+(B_a,X_b).
\]

Then

\[
K'=-2\nu H-\mathcal R+\mathcal F,\qquad
\mathcal F_{ab}=(X_a,\partial^{\alpha_b}F_{n_b})
+(\partial^{\alpha_a}F_{n_a},X_b).
\tag{G3}
\]

Every pressure pairing in G3 vanishes against the actual solenoidal X; G2 retains the pressure. Both K,H are PSD because their quadratic forms are actual squared norms. This does not assign a sign to the distinct symmetric work matrix R.

The source's complete prescribed finite matrix operation is stronger than a collection of diagonal estimates. For a prescribed symmetric uniformly positive M(t), let E_M=½tr(MK), D_M=tr(MH). FM5 transfers every time derivative of a velocity in the source pairing onto its prescribed force partner. Spatial integration by parts yields the exact residual

\[
L_M^f=\sum_a(-1)^{n_a+|\alpha_a|}
(u,\partial^{\alpha_a}\partial_t^{n_a}\Phi_a),
\quad
\Phi_a=\sum_b M_{ab}\partial^{\alpha_b}PF_{n_b}.
\]

The complete square Z_M=E_M−C_M+Ψ_M* satisfies ½E_M≤Z_M≤3E_M/2+2Ψ_M*. Its exact balance is

\[
Z_M'+\nu D_M=-\tfrac12\operatorname{tr}(M\mathcal R)
+L_M^f+\tfrac12\operatorname{tr}(M'K).
\tag{G4}
\]

The whole-I source primitive has the explicit datum bound FM7. The final term is bounded by 2a_M Z_M, with the prescribed integrable coefficient a_M=||M^(−1/2)M'M^(−1/2)||op. Thus the finite full-matrix completion really removes every prescribed source derivative cost at arbitrary amplitude. The remaining signed work in G4 is exactly the original finite sum, before any absolute nonlinear estimate.

## 2. The simultaneous first temporal/spatial work block

Let A=∇u, S=(A+Aᵀ)/2, D_t=∂t+u·∇, and
Y=(u_t,∂₁u,∂₂u,∂₃u). Each of these actual rows satisfies

\[
D_tY_a+AY_a+\nabla\pi_a=\nu\Delta Y_a+F_a.
\tag{G5}
\]

The complete nonlinear-work matrix of (u,Y) has zero u row and column. Indeed the two base-transport pairings cancel by
(v·∇w,z)=−(v·∇z,w) for div v=0, and the remaining (u,(Y_a·∇)u) is zero by div Y_a=0. In its Y block the transport again cancels and

\[
\mathcal R_{ab}=2\int Y_a^{\mathsf T}S Y_b.
\tag{G6}
\]

This is the full signed strain block, including its temporal/spatial off-diagonals. Incompressibility gives tr S=0; it does not turn every positive contraction of G6 into zero.

There is a genuine local cancellation if the spatial column matrix Y_sp=A is invertible. Then K_sp=AᵀA and R_sp=2AᵀSA pointwise, and

\[
\operatorname{tr}(K_{\rm sp}^{-1}R_{\rm sp})=2\operatorname{tr}S=0.
\tag{G7}
\]

G7 is exact on an invertible patch. To use it dynamically one must use the field-dependent row weight W=(AᵀA)^(−1). For any smooth symmetric W(x,t), direct differentiation and spatial integration give

\[
\begin{aligned}
E_W'+\nu\sum_k\int\operatorname{tr}(W(\partial_kY)^{\mathsf T}\partial_kY)
={}&-\int\operatorname{tr}(S YWY^{\mathsf T})\\
&+\tfrac12\int\operatorname{tr}((D_tW+\nu\Delta W)Y^{\mathsf T}Y)\\
&+\sum_{a,b}\int\pi_b\,\nabla W_{ab}\cdot Y_a
+\sum_{a,b}\int W_{ab}Y_a\cdot F_b.
\end{aligned}
\tag{G8}
\]

Here E_W=½∫tr(WYᵀY). Integrability or cutoffs are required; a bounded-patch localization retains the boundary flux terms. Choosing W=K_sp^(−1) makes the strain term zero, but its spatial energy density is the constant 3/2 on that patch. It also introduces the displayed weight derivatives and weighted pressure; it is singular at rank loss and cannot be assumed uniformly coercive through T. G7 supplies no positive unknown terminal entry by itself.

This is consistent with the source's independently defined component metric D_tM=MA, H=MᵀM, det H=1: its exact (43) cancels stretching but retains ν(v,ΔH v)/2, pressure ∫π div(Hv), and force ∫vᵀHF. Formula (44) recombines force/pressure as (Hv,PF₁)+((I−P)Hv,(I−P)B₁). Formula (45) pays coercivity only from ∫||S||∞. Neither row weighting operation permits the prescribed-matrix source primitive G4 to be reused without its new derivatives.

## 3. Actual adjacent Schur complement and graph kernel

Set U=||u||₂², y=||∇u||₂², W_f=(u,f), b_t=||u_t||₂², a_Δ=||Δu||₂². The actual three-field Gram is

\[
\begin{pmatrix}
U&W_f-\nu y&-y\\
W_f-\nu y&b_t&-y'/2\\
-y&-y'/2&a_\Delta
\end{pmatrix}\succeq0.
\tag{G9}
\]

For U>0, put w_f=W_f−νy, u_t^\perp=u_t−(w_f/U)u, and Δu^\perp=Δu+(y/U)u. Its Schur complement is exactly their two-field Gram:

\[
\begin{pmatrix}
b_t-w_f^2/U&-y'/2+w_fy/U\\
-y'/2+w_fy/U&a_\Delta-y^2/U
\end{pmatrix}\succeq0.
\]

Therefore

\[
[Ub_t-w_f^2][Ua_\Delta-y^2]
\ge[Uy'/2-w_fy]^2.
\tag{G10}
\]

This retains the full cross term −y'/2. It constrains the two unknown diagonal entries jointly; its determinant inequality does not replace either by a datum-paid upper value.

Write Q=−P[(u·∇)u]. The actual projected graph is

\[
u_t-\nu\Delta u=Q+g.
\tag{G11}
\]

The five-field Gram of (u,u_t,Δu,Q,g) has the exact null vector (0,−1,ν,1,1). Its determinant is consequently zero; that vanishing is the graph equality, not another upper estimate. In the unforced case Q⊥u, and

\[
\|Q\|_2^2=\|u_t^\perp-\nu\Delta u^\perp\|_2^2.
\]

Keeping all Schur terms recovers this signed square. No norm entry was introduced independently of the actual equation.

Mixed compatibility also remains exact: ∂tX_(n,α)=X_(n+1,α), ∂iX_(n,α)=X_(n,α+e_i), and the spatial Gram entries obey integration-by-parts identities, for example (∂αu,∂βu)=(−1)^|α|(u,∂^(α+β)u). Its Fourier quadratic forms are the actual nonnegative polynomial-weighted spectral masses. These impose compatibility and positivity on the same jet; no supplied upper terminal mass is created by reindexing them.

The source's anti-diagonal contraction uses every temporal allocation:
Q_n=½Σ_a binom(n,a)(V_a,V_(n−a)), R_n=Σ_a binom(n,a)(∇V_a,∇V_(n−a)).
The full triple transport sum Σ_(i+j+k=n)n!/(i!j!k!) b(V_i,V_j,V_k) vanishes by swapping j,k, so Q_n'+νR_n=∂tⁿ(f,u). This exact cancellation gives derivatives of kinetic storage and action. For n=2 its diagonal ||u_t||² remains joined with (u,u_tt); integrating the latter transfers precisely that diagonal back. This is the algebraic scope of this named contraction, without importing a non-realizable matrix example.

## 4. Energy/helicity Schur complement preserves more cancellation

Q is pressure-complete and obeys (Q,u)=(Q,curl u)=0, including when f≠0. The second identity follows from (u·∇)u=(curl u)×u+∇|u|²/2, not from a freely chosen orthogonal source.

Let Λ=(−Δ)^(1/2), S_h=Λ^(−1)curl, and

\[
a=\Lambda^{1/2}u,\quad h=S_h\Lambda^{3/2}u,\quad
c=\Lambda^{3/2}u,\quad \zeta=\Lambda^{-1/2}Q.
\]

Put R=||a||², Z=||Λu||², D=||c||², J₂=(Λu,S_hΛu), J₃=(c,S_hc), b_Q=||ζ||, P_c=(ζ,c). The full actual four-field Gram is

\[
\begin{pmatrix}
R&J_2&Z&0\\
J_2&D&J_3&0\\
Z&J_3&D&P_c\\
0&0&P_c&b_Q^2
\end{pmatrix}\succeq0.
\tag{G12}
\]

For G=((R,J₂),(J₂,D)) and v=(Z,J₃)ᵀ, the all-rank Schur complement is

\[
\begin{pmatrix}\delta^2&P_c\\P_c&b_Q^2\end{pmatrix}\succeq0,\qquad
\delta^2=D-v^{\mathsf T}G^\dagger v.
\tag{G13}
\]

Indeed d=(I−proj{a,h})c, δ=||d||, ζ⊥a,h, hence P_c=(ζ,d) and P_c²≤b_Q²δ². In full rank,
det(G12)=det G (b_Q²δ²−P_c²). Thus the determinant has exactly the signed transverse constraint, without losing either invariant.

The projection infimum is measurable at rank changes. On R³ a nonzero L² field in fact cannot have h proportional to a: this would make curl u a fixed scalar multiple of u and confine its nonzero Fourier support to one sphere of measure zero. The all-rank formulation still handles zero fields and remains sufficient for the interval inequalities.

Duality, Hölder and the actual vector/tensor H^(1/2)→L³ constant give

\[
|(Q,\phi)|\le\|u\|_3\|\nabla u\|_3\|\phi\|_3,\qquad
b_Q\le S_3^3\sqrt{RD}=\frac{\sqrt{RD}}{\sqrt2\pi}.
\tag{G14}
\]

Projection is self-adjoint and a contraction in the dual Sobolev norm, so no pressure term or component factor has been discarded.

## 5. A verified single-entry continuation criterion

The original critical balance is R'/2+νD=P_c+(g,Λu). Combine G13–G14 and Young, while writing (g,Λu)=(Λg,u). The actual kinetic K=||u₀||₂+∫_I||g||₂ is datum-paid:

\[
R'+\nu D\le\frac{1}{2\pi^2\nu}R\delta^2+2K\|\Lambda g\|_2.
\tag{G15}
\]

Let E_δ(S)=∫₀ˢδ² and F_Λ=2K∫_I||Λg||₂. The nondecreasing integrating factor gives the endpoint-and-action bound

\[
\boxed{R(S)+\nu\int_0^S D
\le[R(0)+F_\Lambda]\exp(E_\delta(S)/(2\pi^2\nu)).}
\tag{G16}
\]

Thus E_δ(T)<∞ supplies one actual critical L² spatial entry uniformly for all strict S<T. No initial critical smallness is required. The source's upper faces give the two further sufficient criteria

\[
\delta^2\le D-Z^2/R,\qquad
\delta^2\le4D_+D_-/D\le4\min(D_+,D_-).
\tag{G17}
\]

Ratios at a zero field are read by projection as zero. Finite accumulated spectral-breadth defect or lesser-helicity critical action therefore implies G16. Conversely δ²≤D. Finiteness of E_δ and of the critical action are equivalent for this actual history, with different quantitative bounds. The invariant-transverse and first-binomial notes do not themselves state G15–G16; this is an additional composed implication, not a claim of bibliographic novelty.

The earlier verified original operations then give all spatial columns, every full temporal/pressure row by the exact recurrence G1–G2, adjacent endpoint traces and the restart using u(T) and the unchanged future force f(T+·). This criterion pays no unknown coordinate from datum alone until one of its stated action inputs is established.

## 6. Exact moving-frame evolution keeps the remaining work

On a nonzero classical portion write L_t=Λ−αI−βcurl for the minimizing frame, d=Λ^(1/2)L_tu. Since d⊥a,h, the complete coefficient derivatives vanish in its storage equation:

\[
\tfrac12(\delta^2)'+\nu\|\Lambda d\|_2^2
=(d,\Lambda^{1/2}L_t(Q+g)).
\tag{G18}
\]

The intrinsic term is (Q,ΛL_t²u), including all five higher/helical productions from expanding L_t². No restoring sign follows just from the two tangent constraints.

The intrinsic first-binomial row is also exact:

\[
Q_t+\nu\Lambda^2Q=DQ(u)[Q]+2\nu C(u)+DQ(u)[g],
\quad
C=\sum_jP[(\partial_ju\cdot\nabla)\partial_ju],
\tag{G19}
\]
\[
DQ(u)[v]=-P[(v\cdot\nabla)u+(u\cdot\nabla)v],
\quad
DQ(u)[\Lambda^2u]=\Lambda^2Q-2C.
\]

Differentiating (Q,u)=0 gives (DQ[v],u)+(Q,v)=0. Consequently the signed critical derivative is exactly

\[
P_c'=\mathfrak K_{1/2}(u;u_t),\quad
\mathfrak K_{1/2}(u;v)=(DQ[v],\Lambda u)-(DQ[\Lambda v],u).
\tag{G20}
\]

The actual u_t=Q−νΛ²u+g remains inside it. The source's occupation identity ITC24 keeps ∫W_(M,S) K_(1/2)(u;u_t) joined and signed. Its bounded-transverse complement is paid by ∫b_Q; its high-transverse signed primitive is an independent possible entry. G18–G20 verify the full dynamic quantities to be controlled, rather than substitute a separate-norm obstruction.

## 7. A further simultaneous source/velocity Schur storage

This additional calculation is unforced unless the source additions stated below are included. Set X=Λ^(−3/2)Q, r=||X||²/2, H=R/2, L=(Q,Λ^(−1)u). The actual three-field Gram of (X,a,c) is

\[
\begin{pmatrix}2r&L&0\\L&R&Z\\0&Z&D\end{pmatrix}\succeq0.
\]

For nonzero whole-space u, d₀=R−Z²/D>0; equality would confine its Fourier support to one radius. Define λ=Z/D, η=L/d₀, ρ=ηλ, w=X−ηa+ρc. Then w⊥a,c and

\[
S_c=\tfrac12\|w\|_2^2+\nu^2R
=r-\frac{L^2}{2d_0}+\nu^2R\ge0.
\]

Put N=DQ[Q]+2νC, J_int=(X,Λ^(−3/2)N), T₄=(DQ[Q],Λ^(−1)u), C₃=(C,Λ^(−1)u), J₁=(Q,Λ²u), J_(3/2)=(Q,Λ³u). Direct differentiation of the three parabolic rows gives

\[
S_c'+\nu\|\Lambda w\|_2^2+2\nu^3D=F_c,
\tag{G21}
\]
\[
\begin{aligned}
F_c={}&J_{\rm int}-\eta T_4-2\eta\nu C_3-\eta b_Q^2
+(\eta^2+2\nu^2)P_c\\
&+(2\nu\rho-2\eta\rho)J_1+\rho^2J_{3/2}.
\end{aligned}
\tag{G22}
\]

There is an additional exact self-source cancellation here. The complete G19 product identity and differentiated kinetic tangency give (C,u)=J₁ and (N,u)=−||Q||₂²+2νJ₁. Expanding the w pairing cancels its −ρ||Q||₂² against +ρ||Q||₂². The coefficient derivative terms vanish because w⊥a,c. Every remaining signed allocation is displayed in G22.

A finite upper prefix of F_c therefore directly yields

\[
\int_I D\le\frac{S_c(0)+\sup_{S<T}\int_0^S F_c}{2\nu^3}<\infty.
\tag{G23}
\]

No uniform bound on η,ρ was used for this conditional entry. In the forced case the exact extra right side is
(w,Λ^(−3/2)DQ[g]−ηΛ^(1/2)g+ρΛ^(3/2)g)+2ν²(g,Λu). It contains the history-dependent optimizing coefficients; it must not be mislabeled a prescribed-matrix primitive.

This storage already has a whole-I datum-paid time mass. For a test φ, integration by parts and Hölder give

\[
\|Q\|_{\dot H^{-3/2}}\le
S_3\|u\otimes u\|_{3/2}
\le S_3S_6K\|\nabla u\|_2,\quad
(S_3S_6)^2=2/(3\pi^2).
\]

Thus

\[
\int_I r\le K^4/(6\pi^2\nu),\quad
\int_I H\le K^2\sqrt{T/(2\nu)}/2,\quad
\int_I|L|\le2\sqrt{\left(\int_Ir\right)\left(\int_IH\right)}.
\tag{G24}
\]

In particular 0≤S_c≤r+2ν²H has finite time mass before a terminal bound. The optimized unconstrained storage r−L²/(4H)+2ν²H has the same paid mass. This is a concrete initialized joined storage. Its signed derivative primitive in G23 is a separate quantity; G24 is not an upper endpoint bound for it.

## Verified scope

The source operations G1–G14 are exact at their stated finite/strict inputs. G16 is a verified conditional whole-terminal continuation criterion preserving energy/helicity cancellation and the prescribed force. G21–G24 initialize another actual joint storage and expose a further complete self-source cancellation, with a direct coercive single-entry consequence if its signed primitive is paid. The tested determinant, anti-diagonal and local whitening operations retain precisely the terms displayed above; no arbitrary-matrix or surrogate counterexample is used to make a theorem-invalidity claim. A datum-only control of E_δ or of the full G22 primitive has not been derived in this bounded lane.
