# Independent verification of the simultaneous second-row compensation

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Intrinsic quadratic feedback improves; the new forcing polynomial is not uniformly smaller for every prescribed force. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This reviews equations (8)–(13) of [source-proof-composition.md](A0609-source-proof-composition.md) against the actual full forced equation and the manuscript's [first rectangle calculation](../SOURCES.md#S129). All calculations are on strict classical intervals of the same forced history.

## 1. Equations (8)–(13) are correct

Put g=Pf, b=(u·∇)u, B=Pb, K(u)=νΔu−B and A_uh=νΔh−B(u,h)−B(h,u). Then

\[
V_1=K(u)+g,\qquad V_2=A_uK(u)+S_2,\qquad
S_2=\nu\Delta g-B(u,g)-B(g,u)+g_t.
\]

This is the complete chain rule: differentiating K gives A_uV₁, with both transport allocations, then differentiating g gives g_t.

For divergence-free u,h,

\[
\langle u,B(u,h)\rangle=-\langle B(u,u),h\rangle,
\qquad\langle u,B(h,u)\rangle=\int h\cdot\nabla(|u|^2/2)=0.
\]

Self-adjointness of P accounts for all pressure projections in these integrated pairings. Consequently

\[
\langle u,A_uK\rangle=\langle\nu\Delta u+B,K\rangle
=\nu^2\|\Delta u\|_2^2-\|B\|_2^2.
\]

The source contraction is

\[
\langle u,S_2\rangle
=\nu\langle\Delta u,g\rangle+\langle B,g\rangle+\langle u,g_t\rangle.
\]

Since d⟨u,g⟩/dt=ν⟨Δu,g⟩−⟨B,g⟩+||g||₂²+⟨u,g_t⟩, this proves exactly

\[
\langle u,S_2\rangle=(\langle u,g\rangle)'
+2\langle B,g\rangle-\|g\|_2^2. \tag{A}
\]

The force budget in equation (9) is valid, taking the pointwise gradient norm to dominate the matrix operator norm (the Frobenius norm also suffices): ||B(u,g)||₂≤||u||₂||∇g||∞,op and ||B(g,u)||₂≤||g||∞||∇u||₂. The admitted force gives every required compact-time bound for Pf; rapid decrease of Pf itself is not assumed.

The full momentum is V₁−νΔu+∇p=f−b, with ∇p=(I−P)(f−b). Solenoidal-gradient orthogonality gives the exact full square

\[
X(S)+\int_0^S\|\nabla p\|_2^2dt+\nu\|\nabla u(S)\|_2^2
=\nu\|\nabla u_0\|_2^2+\int_0^S\|f-b\|_2^2dt,
\]

where X(S)=∫₀ˢ(||u_t||₂²+ν²||Δu||₂²). Splitting f−b by P and I−P cancels the same pressure-gradient square on both sides and proves equation (13):

\[
X(S)+\nu y(S)=\nu y_0+\int_0^S\|g-B\|_2^2dt,
\qquad y=\|\nabla u\|_2^2. \tag{B}
\]

Thus all reviewed identities are verified with their displayed signs and complete allocations. No correction to equations (8)–(13) is required.

## 2. A newly derived combined source compensation

Insert (A) into the expanded square in (B). The Φ=∫||g||₂² term cancels algebraically, leaving

\[
X(S)+\nu y(S)=\nu y_0+\int_0^S\|B\|_2^2dt+R_g(S), \tag{C}
\]
\[
R_g(S)=\langle u(S),g(S)\rangle-\langle u_0,g(0)\rangle
-\int_0^S\langle u,S_2\rangle dt.
\]

This is a genuine use of the hidden second row and explicit source work simultaneously. It keeps the intrinsic nonlinear square with coefficient one.

All bounds can be computed from prescribed data before existence through the chosen finite T is known. Define

\[
K=\|u_0\|_2+\int_0^T\|g\|_2dt,\quad
\Phi=\int_0^T\|g\|_2^2dt,
\]
\[
F_T=\nu\|\Delta g\|_{L^2(0,T;L^2)}+\|g_t\|_{L^2(0,T;L^2)}
+K\sqrt T\sup_{[0,T]}\|\nabla g\|_{\infty,op}
+\frac K{\sqrt{2\nu}}\sup_{[0,T]}\|g\|_\infty.
\]

The actual kinetic estimate gives sup||u||₂≤K and ∫||∇u||₂²≤K²/(2ν) on all S<min(T,T*). Hence ||S₂||L²(0,S;L²)≤F_T. By Cauchy–Schwarz, (C) gives the uniform source-only upper budget

\[
R_g(S)\le A_g^{(2)}
:=K\sup_{[0,T]}\|g\|_2-\langle u_0,g(0)\rangle+K\sqrt T F_T.
\]

The first two terms have a nonnegative sum by Cauchy–Schwarz, since K≥||u₀||₂ and sup||g||₂≥||g(0)||₂. Another independently verified bound follows directly from the source cross term: ⟨B,g⟩=−∫u_i u_j∂jg_i=−∫uu:Sym∇g, so

\[
R_g(S)=\int_0^S(\|g\|_2^2-2\langle B,g\rangle)dt
\le A_g^{(1)}:=\Phi+2K^2\int_0^T
\|\operatorname{Sym}\nabla g\|_{\infty,op}dt.
\]

Therefore set A_g=min(A_g^(1),A_g^(2)), a finite nonnegative datum/force quantity at arbitrary amplitude. Equations (A)–(C) pay the *whole* explicit force contribution without assuming a positive terminal velocity norm. The estimate concerns actual S₂ only on existing strict intervals; F_T is its prescribed source upper bound and requires no history beyond T*.

## 3. Refined datum-to-terminal first-rectangle criterion

The embedding constant can be checked directly under the paper's unitary Fourier convention:

\[
\|u\|_\infty^2\le(2\pi)^{-3}
\left(\int_{\mathbb R^3}(1+|\xi|^2)^{-2}d\xi\right)\|u\|_{H^2}^2
=\frac1{8\pi}\|u\|_{H^2}^2.
\]

The integral is π². Vector-valued Cauchy–Schwarz uses the Euclidean Fourier norm and introduces no component factor. The exact Bessel identity is ||u||H²²=||u||₂²+2||∇u||₂²+||Δu||₂².

The trace identity y(t)−y₀=−2∫₀ᵗ⟨u_t,Δu⟩ gives

\[
\sup_{t\le S}y(t)\le y_0+X(S)/\nu,
\qquad\int_0^S\|u\|_{H^2}^2dt\le L+X(S)/\nu^2,
\quad L=TK^2+K^2/\nu.
\]

The first inequality uses 2|⟨u_t,Δu⟩|≤ν⁻¹||u_t||₂²+ν||Δu||₂² and monotonicity of X. The second uses the exact Bessel identity and the kinetic dissipation budget. Since P is L² contractive,

\[
\int_0^S\|B\|_2^2dt
\le\int_0^S\|u\|_\infty^2y(t)dt
\le\frac1{8\pi}(y_0+X(S)/\nu)(L+X(S)/\nu^2).
\]

Drop the nonnegative νy(S) in (C) to obtain the refined polynomial

\[
X(S)\le\nu y_0+A_g+
\frac{(y_0+X(S)/\nu)(L+X(S)/\nu^2)}{8\pi}. \tag{D}
\]

Equivalently aX²+(b−1)X+c≥0, with the explicit prescribed coefficients

\[
a=\frac1{8\pi\nu^3},\quad
b=\frac{y_0/\nu^2+L/\nu}{8\pi},\quad
c=\nu y_0+A_g+\frac{y_0L}{8\pi}.
\]

If

\[
b<1,\qquad\mathfrak d=(1-b)^2-4ac>0,
\]

then a>0, c≥0 and both roots x_±=(1−b±√d)/(2a) are nonnegative. X is continuous on every strict classical horizon, nonnegative, and X(0)=0. Its permitted values lie in [0,x_−]∪[x_+,∞). It cannot cross the nonempty forbidden open interval (x_−,x_+), so

\[
\sup_{S<\min(T,T_*)}X(S)\le
\frac{1-b-\sqrt{(1-b)^2-4ac}}{2a}<\infty. \tag{E}
\]

The c=0 case is included: x_−=0 and continuity forces X=0. Strict root separation is required; a double root has no forbidden interval. The condition b<1 is required for the stated nonnegative-root branch.

Bound (E) supplies the positive entry Q=∫||u_t||₂² and the first spatial rectangle using the displayed H² integral. The actual source W16/W17 composition, or the already bounded H² column, then gives every spatial order; the complete forced recurrence and pressure formula produce all mixed rows, a compatible H∞ endpoint, and restart with f(T*+s). Thus, if the prescribed coefficients for a chosen horizon T satisfy this criterion, no maximal endpoint T*≤T can occur. The history extends smoothly through T. This is an independently derived datum-to-terminal sufficient criterion from the simultaneous source compensation.

Relative to the manuscript's inequality using ||g−B||²≤2||g||²+2||B||², the nonlinear coefficients a and b are halved when the same K,L are used. Its source constant 2Φ is replaced by A_g. For some forces A_g can exceed 2Φ; this is an additional refined criterion, not a claim of uniform dominance over the older criterion for every force. When g=0, A_g=0 and the nonlinear coefficients and mixed constant are reduced without such a tradeoff. Mere finiteness of the admitted force seminorms does not imply root separation.

## 4. What the actual Gram positivity contributes

The force-shifted columns u and V₁−g=K(u) form an actual positive semidefinite Gram matrix. Since ⟨u,B⟩=0,

\[
\langle u,K(u)\rangle=-\nu y,
\qquad\nu^2y^2\le\|u\|_2^2\|K(u)\|_2^2.
\]

This is a useful exact coercive *lower* constraint on the unknown generator norm. It yields a whole-terminal enstrophy-square integral once a whole-terminal generator/temporal square is bounded, as in W16. It supplies no datum-only upper bound for that unknown diagonal in the calculation reviewed here.

The second force-shifted column V₂−S₂=A_uK similarly has contraction ν²||Δu||₂²−||B||₂². Its Gram minor bounds the absolute contraction by ||u||₂||A_uK||₂; the latter diagonal is not paid by the S₂ budget. In the full kinetic anti-diagonal, ||V₁||₂²+⟨u,V₂⟩ is exactly E₀'', and the calculation returns (B)/(C) with the same intrinsic nonlinear square. The nonnegative pressure square cancels its identical orthogonal component on the right of the full equation; retaining it does not generate an extra estimate.

Thus the new positive terminal entry proved by this simultaneous operation is (E) under its explicit refined root condition. The reviewed equations and PSD constraints alone do not establish an unrestricted bound on ∫||B||₂² or X for arbitrary admitted datum and force. This conclusion records the gain and exact scope of these operations, without imposing them as prerequisites on the source's independent direct intersection construction.
