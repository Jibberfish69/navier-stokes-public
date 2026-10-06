# Actual time shifts: cancellation, extraction and averaging

This is a bounded verification of actual shifted rows, rather than a Taylor or all-order jet construction. The underlying source equation and pressure normalization are [forced-native-assembly-20260914.md](../SOURCES.md#src-native-assembly), J3–J4 with temporal and spatial order zero.

All differential identities are asserted first on a compact strict interval on which every displayed shifted time lies in the actual smooth history. A forward shift h>0 on a history with endpoint T* requires t+h<T*. These identities do not extend that domain or supply uniform terminal estimates.

## Complete shifted rows and weight ports

Let N(a,b)=(a·∇)b be the raw convection, A=−Δ, and r_i(t)=t+s_i(t). Set

\[
 U_i=u(r_i(t)),\quad p_i=p(r_i(t)),\quad f_i=f(r_i(t)),
 \quad T_i=u_t(r_i(t)),\quad F_i=f_i+\dot s_iT_i.
\]

Then the complete common-diffusion equation is

\[
 (U_i)_t+\nu AU_i+N(U_i,U_i)+\nabla p_i=F_i,
 \qquad\operatorname{div}U_i=0.
 \tag{AS1}
\]

The moving-node source is not optional. Equivalently the original row has all its non-time terms multiplied by 1+dot s_i. Keeping AS1 preserves a positive common diffusion action and retains the moving-node source explicitly. Since T_i is solenoidal,

\[
 \nabla p_i=(I-\mathbb P)(F_i-N(U_i,U_i)),\quad
 p_i=R_aR_b(U_{i,a}U_{i,b})-A^{-1}\operatorname{div}f_i.
 \tag{AS2}
\]

Let Q(t) be a finite real symmetric positive semidefinite matrix, with continuously differentiable entries. Define

\[
 E_Q=\frac12\sum Q_{ij}\langle U_i,U_j\rangle,
 \quad D_Q=\sum Q_{ij}\langle\nabla U_i,\nabla U_j\rangle,
 \quad P_Q=\sum Q_{ij}\langle U_i,N(U_j,U_j)\rangle.
\]

The exact energy identity is

\[
 E_Q'+\nu D_Q=-P_Q+\sum Q_{ij}\langle U_i,F_j\rangle
                 +\frac12\sum Q'_{ij}\langle U_i,U_j\rangle.
 \tag{AS3}
\]

Pressure work vanishes globally because each receiver is solenoidal. Its local flux and its square are retained below. If Q_ij=K(t,s_i(t),s_j(t)) for a differentiable prescribed kernel, its derivative is the full chain rule

\[
 Q'_{ij}=K_t+\dot s_iK_1+\dot s_jK_2.
 \tag{AS4}
\]

For a differentiable factorization Q=L^T L, the actual receiver Z=L U has the additional source L' U. Its square therefore retains every cross-source and ||L'U||² term. Positivity alone does not provide a differentiable factorization at rank loss.

## Exact cross strain and local flux

For two solenoidal fields A_0,B_0 put D=A_0−B_0 and C=(A_0+B_0)/2. Direct expansion and incompressibility give the pointwise identity

\[
 A_0\cdot N(B_0,B_0)+B_0\cdot N(A_0,A_0)
 =-D^\top\operatorname{Sym}(\nabla C)D
  +\operatorname{div}\left[C(A_0\cdot B_0)+\frac12D(C\cdot D)\right].
 \tag{AS5}
\]

After integrating the full flux, write S(C,D,D)=∫D·Sym(∇C)D. All diagonal currents vanish, and the exact finite current is

\[
 \boxed{P_Q=-\sum_{i<j}Q_{ij}S(C_{ij},D_{ij},D_{ij}),
 \quad C_{ij}=\frac{U_i+U_j}{2},\quad D_{ij}=U_i-U_j.}
 \tag{AS6}
\]

No sign is assigned to the crossed strain. In particular, positivity of Q does not cancel AS6.

For completeness set ρ_Q=½ΣQ_ij U_i·U_j and

\[
 \mathcal L_Q=\frac12\sum_iQ_{ii}U_i|U_i|^2
 +\sum_{i<j}Q_{ij}\left[C_{ij}(U_i\cdot U_j)
                   +\frac12D_{ij}(C_{ij}\cdot D_{ij})\right].
\]

The complete local energy is

\[
 \begin{split}
 \partial_t\rho_Q+\operatorname{div}\left(\mathcal L_Q-\nu\nabla\rho_Q
                         +\sum Q_{ij}p_jU_i\right)
 ={}&-\nu\sum Q_{ij}\nabla U_i:\nabla U_j
     +\sum_{i<j}Q_{ij}D_{ij}^\top\operatorname{Sym}(\nabla C_{ij})D_{ij}\\
 &+\sum Q_{ij}U_i\cdot F_j+\frac12\sum Q'_{ij}U_i\cdot U_j.
 \end{split}
 \tag{AS7}
\]

A space-time selector also retains its time derivative, the νΔ-selector stock port, and its gradient paired with both nonlinear and pressure fluxes.

Squaring AS1 with its full Leray pressure decomposition gives

\[
 \begin{split}
 &\sum Q_{ij}\langle(U_i)_t,(U_j)_t\rangle
  +\nu^2\sum Q_{ij}\langle AU_i,AU_j\rangle
  +\nu D_Q'-\nu\sum Q'_{ij}\langle\nabla U_i,\nabla U_j\rangle\\
 &\hspace{18mm}+\sum Q_{ij}\langle\nabla p_i,\nabla p_j\rangle
 =\sum Q_{ij}\langle F_i-N(U_i,U_i),F_j-N(U_j,U_j)\rangle.
 \end{split}
 \tag{AS8}
\]

Every forcing, moving-node, nonlinear and pressure pairing remains in this equation.

## Universal cancellation inside the actual forced class

Fix a history-independent matrix Q at an interior base time and distinct sampled times r_i>0. The following exact classification applies to cancellation for every admitted smooth forced history at those sampled times:

\[
 P_Q\equiv0\text{ for every such history}\quad\Longleftrightarrow\quad Q\text{ is diagonal}.
 \tag{AS9}
\]

The sufficient direction is the separate kinetic identity ⟨U_i,N(U_i,U_i)⟩=0. For necessity it is essential to realize a nonzero crossed current in the actual forced class.

Let ψ=e^{−|x|²} and

\[
 V=\operatorname{curl}(0,0,\psi)=2\psi(-y,x,0),\qquad
 N(V,V)=-4\psi^2(x,y,0),
\]
\[
 \operatorname{curl}N(V,V)=16\psi^2(-yz,xz,0)\ne0,
 \qquad W=\operatorname{curl}\operatorname{curl}N(V,V).
 \tag{AS10}
\]

Both V and W are real, solenoidal and Schwartz, and

\[
 A_*=\langle W,N(V,V)\rangle
     =\|\operatorname{curl}N(V,V)\|_2^2>0.
\]

Choose one pair of sampled values U_i=εW,U_j=V and every other value zero. Its current is

\[
 P_Q=Q_{ij}\left[\varepsilon A_*+
                 \varepsilon^2\langle V,N(W,W)\rangle\right].
 \tag{AS11}
\]

This is nonzero for sufficiently small positive ε whenever Q_ij≠0. To realize these values, choose disjoint smooth temporal bumps φ_i, each equal to one at its assigned sampled time and supported away from zero, and put u(t)=Σφ_i(t)U_i. Then

\[
 p=0,\qquad f=u_t+\nu Au+N(u,u)
 \tag{AS12}
\]

is a fixed explicit smooth Schwartz forcing, with datum u_0=0, and u is a globally smooth actual solution. Its complete canonical pressure is zero because A^{-1}div f=A^{-1}div N(u,u)=R_aR_b(u_au_b). Thus AS11 isolates every off-diagonal coefficient using actual admitted histories and complete source terms.

If some sampled times coincide, first group identical times. If C is their incidence matrix, the exact condition is that the collapsed matrix C^T Q C be diagonal on the distinct times. The uncollapsed Q need not be diagonal. AS9 is a universal identity for a fixed matrix; it does not classify adaptive matrices chosen from each individual history, nor rule out additional cancellation for a particular history or unforced family.

## Exact positive-form extraction

For any finite PSD Q and nonzero real coefficient vector d, define

\[
 \kappa_d=\inf\{z^\top Qz:d^\top z=1\}.
\]

The exact nullspace-sensitive formula is

\[
 \boxed{\kappa_d=
 \begin{cases}
  0,&d\notin\operatorname{Ran}Q,\\
  (d^\top Q^+d)^{-1},&d\in\operatorname{Ran}Q.
 \end{cases}}
 \tag{AS13}
\]

If d has a component in ker Q, a feasible scaled kernel vector gives zero. Otherwise weighted Cauchy–Schwarz gives (d^Tz)²≤(d^TQ^+d)(z^TQz), attained at z=Q^+d/(d^TQ^+d). Hence AS13 is exactly the sharp constant in

\[
 \boxed{2E_Q\ge\kappa_d\left\|\sum_i d_iU_i\right\|_2^2,}
 \quad\text{equivalently }Q\succeq\kappa_d dd^\top.
 \tag{AS14}
\]

For a forward difference d=(−1/h,1/h), h>0, and diagonal Q=diag(a,b), a,b>0,

\[
 \boxed{\kappa_d=h^2\frac{ab}{a+b}\le\frac{Mh^2}{4},\quad M=a+b,}
 \tag{AS15}
\]

with equality exactly when a=b. If either diagonal coefficient is zero, the sharp constant is zero. For arbitrary 2×2 PSD Q, tracing AS14 gives the different sharp bound

\[
 \kappa_d\le\frac{Mh^2}{2},\quad M=\operatorname{tr}Q.
 \tag{AS16}
\]

For M>0, equality holds exactly for Q=(M/2)[[1,−1],[−1,1]]. Thus uniform positive κ requires M≥4κ/h² in the universally cancelling diagonal class, or M≥2κ/h² in the unrestricted PSD class. This is a necessary at-least h^{−2} normalization cost. Exact h^{−2} scaling can attain it; trace normalization alone provides no upper bound on the inverse extraction constant, since directional coercivity can vanish.

For example, the balanced diagonal choice a=b=2κ/h² has 2E_Q=(2κ/h²)(||u(t)||²+||u(t+h)||²). At any strict time where u(t)≠0, this stock diverges as h→0. Exact separate kinetic cancellation therefore does not give a uniformly bounded normalized derivative stock from a bounded unnormalized kinetic stock. The off-diagonal difference matrix below removes that common velocity stock and retains its complete strain.

## The actual difference row and its surviving strain

For fixed h let U_0=u(t), U_1=u(t+h), D_h=(U_1−U_0)/h, C_h=(U_1+U_0)/2, and use δ_h for the same difference on pressure and forcing. Subtracting the two actual equations gives

\[
 (D_h)_t+\nu AD_h+N(C_h,D_h)+N(D_h,C_h)+\nabla\delta_hp=\delta_hf.
 \tag{AS17}
\]

The nonlinear identity is exact; no Taylor remainder or missing quadratic term is used. Its complete kinetic identity is

\[
 \frac12(\|D_h\|_2^2)'+\nu\|\nabla D_h\|_2^2
 =-S(C_h,D_h,D_h)+\langle D_h,\delta_hf\rangle.
 \tag{AS18}
\]

The optimal unrestricted matrix Q=(κ/h²)[[1,−1],[−1,1]] gives 2E_Q=κ||D_h||² and precisely κ times AS18. Its pressure flux is κ(δ_hp)D_h. Its off-diagonal current is κS(C_h,D_h,D_h); the positive difference stock does not cancel that current.

On a fixed strict interval D_h→u_t and C_h→u strongly in every displayed finite Sobolev norm, with δ_hf→f_t and δ_hp→p_t. AS18 therefore tends to the complete first-temporal row. This uses actual local smoothness; it asserts no terminal uniformity. If h or extraction coefficients move with t, their additional ports follow from AS1–AS4 and, for X=Σd_i(t)U_i, the receiver source Σd_i' U_i.

## Actual averaging, covariance and variance extraction

Let η be a fixed probability measure on a compact set of shift parameters r, with mean μ and positive variance σ². For h≠0 small enough to remain in the actual strict interval, write U_r=u(t+hr), f_r=f(t+hr), p_r=p(t+hr), and

\[
 v=\mathbb E_\eta U_r,\quad\delta_r=U_r-v,\quad
 C=\mathbb E_\eta(\delta_r\otimes\delta_r),\quad
 R=\operatorname{div}C=\mathbb E_\eta N(\delta_r,\delta_r).
\]

All differentiation and averaging here is justified by compact shift support and actual strict-prefix smoothness. With bars denoting η averages, the complete mean and variance rows are

\[
 v_t+\nu Av+N(v,v)+R+\nabla\bar p=\bar f,
 \quad \bar p=R_aR_b(v_av_b+C_{ab})-A^{-1}\operatorname{div}\bar f,
 \tag{AS19}
\]
\[
 (\delta_r)_t+\nu A\delta_r+N(v,\delta_r)+N(\delta_r,v)
 +N(\delta_r,\delta_r)-R+\nabla(p_r-\bar p)=f_r-\bar f.
 \tag{AS20}
\]

Put S_av=E_η S(v,δ_r,δ_r). Their global energies are

\[
 \frac12(\|v\|_2^2)'+\nu\|\nabla v\|_2^2
 =+S_{\rm av}+\langle v,\bar f\rangle,
\]
\[
 \frac12(\mathbb E_\eta\|\delta_r\|_2^2)'
 +\nu\mathbb E_\eta\|\nabla\delta_r\|_2^2
 =-S_{\rm av}+\mathbb E_\eta\langle\delta_r,f_r-\bar f\rangle.
 \tag{AS21}
\]

They add to the exact averaged shifted kinetic law. Locally the mean flux is

\[
 v\frac{|v|^2}{2}-\nu\nabla\frac{|v|^2}{2}+\bar p\,v
       +\mathbb E_\eta[\delta_r(v\cdot\delta_r)],
\]

and the variance flux, with e_var=½E_η|δ_r|², is

\[
 v e_{\rm var}-\nu\nabla e_{\rm var}
 +\frac12\mathbb E_\eta[\delta_r|\delta_r|^2]
 +\mathbb E_\eta[(p_r-\bar p)\delta_r].
 \tag{AS22}
\]

The local mean receives +C:∇v and the local variance receives −C:∇v. Their forcing densities are v·bar f and E_ηδ_r·(f_r−bar f), respectively. These fluxes, including both covariance flux and full pressure covariance, add to the actual averaged shifted flux.

Define the actual averaged slope

\[
 \ell_h=\frac{\mathbb E_\eta[(r-\mu)U_r]}{h\sigma^2}.
\]

Cauchy–Schwarz on the mean-zero fluctuation gives the sharp extraction

\[
 \boxed{\mathbb E_\eta\|\delta_r\|_2^2
        \ge h^2\sigma^2\|\ell_h\|_2^2.}
 \tag{AS23}
\]

In fact the orthogonal remainder is exact:

\[
 \mathbb E_\eta\|\delta_r\|_2^2
 =h^2\sigma^2\|\ell_h\|_2^2
  +\mathbb E_\eta\|\delta_r-h(r-\mu)\ell_h\|_2^2.
\]

Equality occurs precisely for δ_r=h(r−μ)ℓ_h almost surely. Thus the variance norm has κ=h²σ²; normalizing by h² creates a finite first-temporal stock, rather than a cancellation of its strain. On every fixed strict prefix,

\[
 \delta_r/h\to(r-\mu)u_t,\quad \ell_h\to u_t,\quad
 \frac{\mathbb E_\eta\|\delta_r\|_2^2}{2h^2}\to\frac{\sigma^2}{2}\|u_t\|_2^2,
\]
\[
 \frac{S_{\rm av}}{h^2}\to\sigma^2S(u,u_t,u_t),\qquad
 \frac{\mathbb E_\eta\langle\delta_r,f_r-\bar f\rangle}{h^2}
        \to\sigma^2\langle u_t,f_t\rangle.
 \tag{AS24}
\]

The corresponding gradient action and pressure covariance converge to σ²||∇u_t||² and σ²p_tu_t. The normalized cubic fluctuation flux tends to zero. These are finite-order actual-history limits; no analyticity, all-order moment membership or terminal bound is assumed.

If the shift nodes or probability weights also move in time, the sources in AS1 and the weight derivative in AS3 remain. In the averaging notation, the mean receives E(dot s_r u_t)+∫U_r dotη; the variance energy additionally receives E⟨δ_r,dot s_r u_t⟩+½∫||δ_r||² dotη. A time-dependent normalization h^{−2} also contributes its own derivative. These ports vanish only for the fixed family used in AS19–AS24.

## Regular integral kernels and the distinct RKHS norm

An ordinary bounded integral kernel energy on a nonatomic shift measure,

\[
 \mathcal E_K(U)=\iint K(s,r)\langle U_s,U_r\rangle\,d\eta(s)d\eta(r),
 \tag{AS25}
\]

does not control a literal point difference at two distinct shifts for all smooth actual forced histories. Choose smooth temporal bumps equal to one at the first point, zero at the second, supported in neighborhoods whose η mass tends to zero, and multiply a fixed nonzero solenoidal Schwartz field by those bumps. Then the point difference stays fixed while |E_K|≤||K||_∞||U||²η(support)²→0. Each bump is realized by the complete actual forcing AS12. Atoms or singular kernels require their own analysis; they are excluded from this bounded nonatomic statement.

The reproducing-kernel Hilbert-space norm associated with K is a different norm; where its integral-operator description applies, it uses the inverse-kernel quadratic form on its actual domain, with the nullspace treated explicitly. If K has a continuous mixed derivative, its difference representer is (K(·,c+h)−K(·,c))/h. Its squared norm is

\[
 \frac{K(c+h,c+h)+K(c,c)-2K(c+h,c)}{h^2}
 \longrightarrow\partial_1\partial_2K(c,c).
 \tag{AS26}
\]

The mixed derivative also makes these representers Cauchy, by the corresponding rectangular difference quotient. Hence derivative evaluation is bounded in that RKHS, provided the actual shift function belongs to it. This bounded functional does not provide an upper payment for the RKHS norm from the ordinary averaged kinetic stock. Neither that membership nor a terminal bound is inferred from kernel positivity.

## Verified scope

AS1–AS8 keep the full finite pressure, forcing, moving-node and weight ports. AS9–AS12 prove the universal fixed-matrix cancellation classification using actual admitted forced trajectories. AS13–AS18 give sharp extraction costs and the actual finite-difference row. AS19–AS24 verify the mean/covariance family and its complete strict-prefix limit. AS25–AS26 distinguish a regular integral energy from an RKHS norm. Every claimed cancellation and inequality is scoped to its declared family; no adaptive-history or whole-terminal producer is assumed.
