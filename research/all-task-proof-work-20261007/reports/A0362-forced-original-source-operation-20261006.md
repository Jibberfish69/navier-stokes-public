# Original forced source operations, executed at their actual domains

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Q storage is admissible; Q+g need not belong to homogeneous H(-3/2) at nonzero force mean. Linear whole-T inverse does not itself prove a nonlinear fixed point there. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This is mathematical verification of the original source operations, not a manuscript revision. Original sources are unchanged. The 13-source manuscript hash baseline still has zero changes. Exact identities for the 11 principal sources read in this pass are in `forced-original-source-operation-identities-20261006.json`.

The strongest original force operation acquired in this pass is the positive compensation of an entire finite spatial ladder. It removes every explicit force-work term from each retained interior row, replaces it by a bounded nonpositive defect, preserves the complete signed nonlinear production, and works for arbitrary force amplitude on the original prescribed horizon. Its exact finite Volterra elimination is verified below. The source also contains a genuine whole-horizon linear graph producer with all temporal rows, which is verified separately from its nonlinear fixed-point application. These are substantive operations in the original construction; neither is replaced here by a conventional energy route or a new criterion.

## 1. One complete forced history and its finite graph

Fix ν>0, u₀∈H∞σ(R³), f∈C∞([0,∞);S(R³;R³)), and a finite force horizon T. Let u be its actual classical history on [0,S], S<T≤T*. Put Vₙ=∂ₜⁿu, Fₙ=∂ₜⁿf, Gₙ=PFₙ. The full rows are

\[
 V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
 \quad B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},
\]

\[
 Q_n=R_iR_j\sum_{a=0}^n\binom naV_{a,i}V_{n-a,j}
       -(-\Delta)^{-1}\operatorname{div}F_n.
\]

Spatial differentiation retains every binom(α,β) allocation. The initial face is

\[
 A_0=u_0,\qquad A_{n+1}=\nu\Delta A_n
 -P\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}+G_n(0).
\]

All finite initial rows are in H∞. Restrictions delete coordinates of these same derivatives; no selected finite graph is an autonomous truncated evolution. Pressure is kept in the field equations. Its global energy pairings vanish by solenoidality.

Sources: [native assembly LF45–99](../SOURCES.md#S152), [direct construction (3)–(7), LF38–102](../SOURCES.md#S012), [original force attachment LF85–167](../SOURCES.md#S292).

The pressure potential has its correct low-frequency domain. In three dimensions,

\[
 \|(-\Delta)^{-1}\operatorname{div}F_n\|_{H^m}
 \le C_m(\|F_n\|_1+\|F_n\|_{H^{\max(m-1,0)}}).
\]

Indeed the squared low-frequency multiplier is O(|ξ|⁻²), integrable on the unit ball; the L¹ norm bounds the Fourier amplitude. Each force seminorm is continuous and bounded on [0,T]. Consequently the potential and its gradient are finite at each requested order through T, including T=T*. No smallness or uniform constant across all derivative orders is used.

## 2. Positive compensation of every retained spatial coordinate

Use a=2ν and

\[
 E_{r,h}=\tfrac12\|\Lambda^hV_r\|_2^2,\quad
 P_{r,h}=-\operatorname{Re}\langle\Lambda^{2h}V_r,B_r\rangle,
 \quad W_{r,h}=\operatorname{Re}\langle V_r,\Lambda^{2h}G_r\rangle.
\]

The full row is E′+aE_next=P+W. Define M=∂ₜ+aΛ² **on prescribed force fields** and

\[
 \widetilde C_{r,h}=\sum_{j=0}^{r-1}(-1)^j
 \operatorname{Re}\langle V_{r-1-j},\Lambda^{2h}M^jG_r\rangle,
 \qquad\widetilde C_{0,h}=0.
\]

Its finite expansion is

\[
 M^jG_r=\sum_{\ell=0}^j\binom j\ell a^\ell
                  \Lambda^{2\ell}G_{r+j-\ell}.
\]

For any prescribed H,

\[
 (\langle V_k,\Lambda^{2h}H\rangle)'
 +a\langle V_k,\Lambda^{2h+2}H\rangle
 =\langle V_{k+1},\Lambda^{2h}H\rangle
  +\langle V_k,\Lambda^{2h}MH\rangle.
\]

The consecutive terms telescope, giving exactly

\[
 (E_{r,h}-\widetilde C_{r,h})'
 +a(E_{r,h+1}-\widetilde C_{r,h+1})
 =P_{r,h}+(-1)^r\operatorname{Re}
                 \langle u,\Lambda^{2h}M^rG_r\rangle. \tag{1}
\]

At finite R choose τ>0, wᵣ=τ²ʳ, and set Ē_h=ΣwᵣEᵣ,h, C̄_h=ΣwᵣC̃ᵣ,h and P̄_h=ΣwᵣPᵣ,h. Grouping C̄ by velocity index gives

\[
 H_{k,h}=\sum_{r=k+1}^R(-1)^{r-1-k}\tau^{2r-k}
                         \Lambda^hM^{r-1-k}G_r,
 \quad\Psi_h=\sup_{[0,T]}\sum_{k<R}\|H_{k,h}\|_2^2.
\]

For Xₖ=τᵏΛʰVₖ, the exact square completion is

\[
 \bar E_h-\bar C_h+\Psi_h=
 \tfrac12\|X_R\|^2+\tfrac14\sum_{k<R}\|X_k\|^2
 +\tfrac14\sum_{k<R}\|X_k-2H_{k,h}\|^2
 +\Psi_h-\sum_{k<R}\|H_{k,h}\|^2.
\]

Hence

\[
 \tfrac12\bar E_h\le\bar E_h-\bar C_h+\Psi_h
                  \le\tfrac32\bar E_h+2\Psi_h. \tag{2}
\]

Kinetic control supplies K_T=||u₀||₂+||G₀||L¹L². The residual L_h in the weighted (1) satisfies

\[
 L_h=\sum_{r=0}^R(-1)^rw_r\operatorname{Re}
                    \langle u,\Lambda^{2h}M^rG_r\rangle,
 \quad |L_h(t)|\le\beta_h:=K_T\sum_{r=0}^Rw_r
              \sup_{[0,T]}\|\Lambda^{2h}M^rG_r\|_2. \tag{3}
\]

At fixed finite heights hⱼ=s+j, j≤K, define **backward prescribed budgets**

\[
 a_K=\Psi_{h_K},\qquad
 a_j(t)=\Psi_{h_j}+\int_t^T(\beta_{h_j}+a\,a_{j+1}(q))dq.
\]

Write Yⱼ=Ē_hj−C̄_hj+aⱼ and dⱼ=β_hj−L_hj. Since aⱼ′=−β_hj−aaⱼ+1, substitution in (1) yields

\[
 Y_j'+aY_{j+1}=\bar P_{h_j}-d_j,\qquad
 0\le d_j\le2\beta_{h_j},\qquad
 \tfrac12\bar E_{h_j}\le Y_j
 \le\tfrac32\bar E_{h_j}+\Psi_{h_j}+a_j. \tag{4}
\]

This is the actual finite positive ladder operation. It preserves the full nonlinear signed P̄, every physical velocity coordinate, and the original pressure. It uses only prescribed force fields and kinetic control. It is valid for arbitrary force amplitude and uses [0,T] rather than a shortened source interval. Every selected budget and initial Yⱼ(0) is finite; its size may depend on R,s,K,T,τ and the force. No infinite common positive budget is assumed.

Source: [native assembly C1–C9, LF214–390](../SOURCES.md#S152). All displayed identities (1)–(4) are independently derived here.

## 3. Execute the entire finite backward operation before absolute bounds

Repeated substitution and finite Fubini in (4) give, for k≤K,

\[
 Y_0(t)=A_k(t)+J_k(t)-D_k(t)+(-a)^k I^kY_k(t), \tag{5}
\]

\[
 A_k(t)=\sum_{j<k}\frac{(-at)^j}{j!}Y_j(0),\quad
 J_k(t)=\sum_{j<k}(-a)^jI^{j+1}\bar P_{s+j}(t),\quad
 D_k(t)=\sum_{j<k}(-a)^jI^{j+1}d_j(t).
\]

Here I^ℓF(t)=∫₀ᵗ(t−z)^{ℓ−1}F(z)dz/(ℓ−1)! for ℓ≥1. More explicitly, the complete nonlinear term is

\[
 J_k(t)=-\sum_{r=0}^Rw_r\int_0^t
 \operatorname{Re}\langle
 \Lambda^{2s}p_{k-1}(a(t-q)\Lambda^2)V_r(q),B_r(q)\rangle dq,
 \quad p_{k-1}(z)=\sum_{j<k}\frac{(-z)^j}{j!}. \tag{6}
\]

Only after assembling this entire signed current do we bound the explicit force defect:

\[
 |D_k(t)|\le2\sum_{j<k}\frac{a^jT^{j+1}}{(j+1)!}\beta_{s+j}. \tag{7}
\]

For odd k, (5) becomes the positive relationship

\[
 Y_0(t)+a^kI^kY_k(t)=A_k(t)+J_k(t)-D_k(t). \tag{8}
\]

Thus an upper bound on this **actual signed finite current**, when supplied by an original branch, immediately bounds both positive quantities. At k=1 the next height has its unweighted whole-I L¹ norm. At k≥3 the top coordinate has the kernel (T−q)^{k−1}; a finite weighted integral cannot be relabeled an unweighted terminal norm. Equation (6) preserves all spatial heights, temporal binomial factors and receiving fields together.

This agrees with [native ladder VC9–VC12, LF131–173](../SOURCES.md#S306). Verification of (5) is finite induction: substitute the next integrated row into its remainder and integrate the resulting kernel once, dividing by the next integer. No all-order summation is used.

There is a concrete datum-only output of this ladder. At R=0,s=0,K=1, P₀,₀=0, C̄=Ψ=0, a₁=0 and a₀=β₀(T−t). Therefore

\[
 Y_0=\tfrac12\|u\|_2^2+\beta_0(T-t),\quad
 Y_1=\tfrac12\|\nabla u\|_2^2,\quad
 Y_0'+2\nu Y_1=-d_0\le0.
\]

This produces the whole-horizon kinetic spatial row from the data. At the next critical height (8) retains its actual P̄ current. The derivative prolongation also keeps all dⱼ derivatives:

\[
 \partial_t^qL_h=\sum_{r=0}^R\sum_{b=0}^q(-1)^rw_r\binom qb
 \operatorname{Re}\langle V_b,
             \Lambda^{2h}\partial_t^{q-b}M^rG_r\rangle.
\]

A nonnegative dⱼ supplies no sign for these derivatives. These terms are part of the prolonged row, not a second force-only norm or a discarded boundary.

## 4. Complete mixed momentum squares have another unrestricted force operation

The [original mixed force-pairing calculation C5–C18, LF57–244](../SOURCES.md#S312) moves all derivatives off the nonlinear parent in the force cross term. For spatial α,

\[
 \int_0^S\langle\partial_x^\alpha F_n,\partial_x^\alpha B_n\rangle
 =R_{n,\alpha}(S)-R_{n,\alpha}(0)
   +(-1)^{n+|\alpha|+1}W_{n,\alpha}(S),
\]

\[
 R_{n,\alpha}=\sum_{r<n}(-1)^{|\alpha|+r}
 \langle\partial_x^{2\alpha}F_{n+r},B_{n-1-r}\rangle,
 \quad W_{n,\alpha}=\int_0^S\!\!\int
 \operatorname{sym}\nabla\partial_x^{2\alpha}F_{2n}:u\otimes u.
\]

W is kinetic-paid. Boundary R involves only lower temporal rows. The exact integration-by-parts signs check out. The source chooses finite backward temporal weights w_N=1, w_j=1+4Σ_{n>j}w_nd_n, with d_n prescribed, so the corrected boundary C satisfies ½E≤C≤3E/2. The assembled exact square is

\[
 C(S)+\int_0^S\mathcal D
 =C(0)+\int_0^S\mathcal B
 +\sum_{n,\alpha}w_n\int_0^S\|\partial_x^\alpha F_n\|_2^2
 +2\sum_{n,\alpha}w_n(-1)^{n+|\alpha|}W_{n,\alpha}(S).
\]

D contains **all** adjacent-time, Laplacian and pressure-gradient squares. B contains the complete differentiated convection squares. Consequently

\[
 \tfrac12E(S)+\int_0^S\mathcal D
 \le\tfrac32E(0)+\mathcal F_{N,M}(T)+\int_0^S\mathcal B.
\]

The force jet uses orders ≤2N in the interior and ≤2N−1 in the weights; spatial force derivatives use ≤2M+1. All weights remain fixed as S approaches T=T*. This operation completely pays arbitrary-amplitude mixed force cross terms without assuming higher velocity rows at the endpoint; it keeps their positive energy in the corrected boundary.

## 5. First-binomial source storage preserves the actual pressure/source domain

Native N46 and FCP.1 retain

\[
 Q=-P((u\cdot\nabla)u),\quad
 DQ(u)[h]=-P((h\cdot\nabla)u+(u\cdot\nabla)h),\quad
 \mathcal C=\sum_jP((\partial_ju\cdot\nabla)\partial_ju),
\]

\[
 Q_t+\nu\Lambda^2Q=DQ(u)[Q]+2\nu\mathcal C+DQ(u)[g].
\]

The product identity DQ(u)[Λ²u]=Λ²Q−2C is exact. For ψ=Λ⁻³Q,

\[
 J_{int}+J_g=\int\partial_j\psi_i
 [u_i(Q_j+g_j)+(Q_i+g_i)u_j
          -2\nu\sum_\ell(\partial_\ell u_i)(\partial_\ell u_j)]dx,
\]

\[
 (\tfrac12\|\Lambda^{-3/2}Q\|_2^2)'
       +\nu\|\Lambda^{-1/2}Q\|_2^2=J_{int}+J_g. \tag{9}
\]

This is the complete paired stress before absolute bounds. Leray projections retain pressure in Q, DQ and C; ψ is solenoidal in this pairing. Source N47 then proves

\[
 \int_0^T|J_g|\le C\nu^{-1/2}\mathcal E_T^{3/2}
                 \|g\|_{L^2(0,T;L^6)},\quad
 \mathcal E_T=\|u_0\|_2^2+\nu^{-1}\|\Lambda^{-1}g\|_{L^2L^2}^2.
\]

This force budget has arbitrary amplitude and terminal domain. The stronger direct kinetic payment of W=⟨g,Λu⟩ also permits the source's **actual combined row N90** to retain its full dissipation coefficient:

\[
 (R_Q+2\nu^2H)' +\nu^3\|\Lambda^{3/2}u\|_2^2
   +\nu\|\Lambda^{-1/2}(u_t-g)\|_2^2
 =J_{int}+J_g+2\nu^2\langle g,\Lambda u\rangle,
\]

\[
 \int_0^T|\langle g,\Lambda u\rangle|
 \le K_T\int_0^T\|\Lambda g\|_2.
\]

The exact source compensation is therefore a bounded primitive of J_g+2ν²W, with the entire J_int remaining signed. This is an execution of the native source row rather than a new terminal criterion.

The choice to store Q rather than Q+g is essential for the admitted arbitrary-force class. Q=−P div(u⊗u) has Q̂(ξ)=O(|ξ|) at zero by kinetic L¹ control of u⊗u, so its Λ⁻³ᐟ² low-frequency norm is finite. With the unitary Fourier convention, define m=f̂(0)=(2π)⁻³ᐟ²∫f(x)dx. If a prescribed Schwartz force has m≠0, ĝ(rθ)→Pθm and

\[
 \int_{S^2}|P_\theta m|^2d\theta=\tfrac{8\pi}3|m|^2.
\]

Then the Λ⁻³ᐟ² norm of Q+g has the divergent radial integral ∫₀¹dr/r. A complete-source storage with that homogeneous exponent would change the original admissible domain. The native Q-storage plus paid J_g avoids this problem while retaining the full source in momentum and pressure.

Sources: [native N44–N48, LF1090–1267](../SOURCES.md#S153), [FCP.1–FCP.9, LF17–184](../SOURCES.md#S304), [native N89–N94, LF2323–2439](../SOURCES.md#S153).

## 6. The original linear graph really does produce whole-horizon rectangles

For the prescribed Stokes z, set K_zv=P((z·∇)v+(v·∇)z) and L_zv=v_t−νΔv+K_zv. The source NG4–NG12 constructs a continuous linear isomorphism

\[
 v\mapsto(v(0),L_zv):X_T\longrightarrow H^\infty_\sigma\times X_T,
 \quad X_T=\bigcap_{r,m}H^r(0,T;H^m_\sigma).
\]

This construction is verified, not merely a mapping assertion. At finite spatial m, define Y=||v||Hm², D=||∇v||Hm², b_m=Σ|α|≤m||∂αz||∞, H=||h||H(m−1). Full tensor divergence and Fourier duality give

\[
 Y'+\nu D\le(1+2c_m^2b_m^2/\nu)Y+(1+2/\nu)H^2.
\]

Gronwall produces a finite Q_m determined by a,h,z,ν,T, yielding ||v||L²H(m+1)²≤(T+ν⁻¹)Q_m and the full adjacent v_t norm through its equation. Heat-integral contraction on a finite partition gives existence at each m. Uniqueness identifies all orders as one v. Differentiation then gives

\[
 L_zv_n=h_n-\sum_{a=1}^n\binom naK_{\partial_t^az}v_{n-a}.
\]

Each new source uses previously produced rows. Its initial values have the complete binomial background allocation. Induction produces **every temporal row on this same T**, with finite constants separately at each n,m. This is an independent, arbitrary-amplitude whole-horizon producer for the stated linear equation.

For the actual nonlinear forced history, w=u−z obeys instead

\[
 L_zw=-P((z\cdot\nabla)z)-P((w\cdot\nabla)w),\quad w(0)=u_0,
\]

with p=R_iR_j((w_i+z_i)(w_j+z_j))−(−Δ)⁻¹div f. Its entire differentiated equation retains w-w, z-w, w-z and z-z allocations. Thus the linear inverse implements the exact map

\[
 \mathcal T_z(w)=\mathfrak G_z^{-1}
   (u_0,-P((z\cdot\nabla)z)-P((w\cdot\nabla)w)).
\]

Its fixed points in X_T are exactly the nonlinear whole-terminal solutions; continuity of the map has been checked by the full finite products. The **linear** whole-horizon producer uses prescribed h; the **nonlinear** use evaluates h on its unknown fixed point. This distinction occurs in the actual source order, not as a replacement producer or an extra prerequisite placed before an independently established rectangle theorem.

Sources: [NG4–NG18, LF76–260](../SOURCES.md#S308), [published linear-domain proof LF21–82](../SOURCES.md#S297).

## 7. Coverage and composition with the original producer

The acquired native theorem §6 claims finite whole-terminal rows from the forced graph and its source payments (N11a). The original e73 passage places the datum finite-rectangle theorem first, then its projective intersection, critical readouts, endpoint and restart ([LF1319–1455](../SOURCES.md#S290)). This verification preserves that intended order. Equations (1)–(9) demonstrate exactly what force integration contributes to that graph, with no substitution of an unforced velocity or nonlinear value.

The completed finite source compensation is now available to any acquired original producing step that accepts the positive ladder (4), its complete signed P̄, and the full prolonged defect derivatives. The pressure-complete square operation pays every explicit force pairing on the same terminal horizon. The first-binomial operation pays the inserted force stress in its actual negative-order domain. The linear graph operation supplies whole-horizon rows for its prescribed linear image. These are verified mathematical inputs and outputs; no claim that they exhaust every original producing dependency is made here.

The final forced publication v3 corrects the historical inhomogeneous source-payment remainder: ||V||H(M+1)²=||∇V||HM²+||V||HM². Viscosity absorbs the gradient term and the lower energy term remains. This repaired wording is not a v3 theorem blocker. All original conclusions here are qualified by the exact operations and source ranges acquired, and neither the all-order current nor the independent datum producer is replaced by a late selected consumer.
