# Actual zero-stock terminal branch: coupled action and concentration

**Reviewed scope and currentness.** Strengthens [Coupled reciprocal-stock and weighted-rectangle compactness](A0429-reciprocal-stock-weighted-compactness.md)/[Simultaneous Fourier construction and the first positive rectangle](A0430-whole-terminal-compactness-attempt.md) at the zero endpoint; [The actual zero reciprocal-stock branch: coupled terminal constraints](A0748-zero-stock-coupled-terminal-results.md) quotes the core atom identities, while this report retains the proof and positive slack details. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New mathematics on the actual unforced Navier–Stokes history on `(0,T)×ℝ³`, followed by its smooth-force extension and the associated whole-horizon cutoff approximations. The branch hypothesis is the actual one-sided reciprocal-stock limit `z(T−)=0`. It is not asserted to occur. No unweighted terminal rectangle, continuation, or independent scalar profile is assumed. Earlier supporting files and original sources are preserved.

Use `ν>0`, the unitary Fourier transform, canonical Leray pressure, and a datum `u₀∈H∞σ`. When present, `f∈C∞([0,T];S(ℝ³))` is prescribed. On every strict interval the velocity is the original smooth history and all derivatives below are actual derivatives of that same velocity. The previously derived kinetic action and weighted first rectangle are

\[
\int_0^T Y\,dt\le E<\infty,\qquad
\int_0^Tz^2q_-\,dt\le C_W<\infty,
\]

\[
Y=\|\nabla u\|_2^2,\quad Z=\|\Delta u\|_2^2,\quad
z=(A+Y)^{-1},\ A>0,
\quad q_-=\|u_t\|_2^2+\tfrac12\nu^2Z+\|\nabla p\|_2^2.
\tag{ZT1}
\]

The full pressure is `p=R_iR_j(u_iu_j)−(−Δ)⁻¹div f`. The actual density `dμ_hist=z²q_-dt` is distinguished throughout from a weak limit of cutoff action measures.

## 1. Cubic multiplier and the actual endpoint

Let `B=(u·∇)u`. The full momentum equation is

\[
u_t+\nu\Lambda^2u+\nabla p=f-B.
\]

Solenoidal/gradient orthogonality gives its exact complete square

\[
q+\nu Y'=\|f-B\|_2^2,
\qquad q=\|u_t\|_2^2+\nu^2Z+\|\nabla p\|_2^2.
\tag{ZT2}
\]

The cross `νY′=2ν〈u_t,Λ²u〉` and every pressure/force component are retained. Since `z³Y′=−zz′`, integrating first to a strict endpoint `S<T` yields

\[
\frac\nu2[z(t)^2-z(S)^2]+\int_t^S z^3q
=\int_t^S z^3\|f-B\|_2^2.
\tag{ZT3}
\]

The endpoint passage is justified on this actual history. `q≤2q_-`, `z≤A⁻¹`, and ZT1 make the left action integrable. The full-field Agmon estimate gives `||B||²≤d Y^{3/2}√Z`, with `d=1/(2π)`, so

\[
z^3\|B\|_2^2
\le d(1-Az)^{3/2}z^{3/2}\sqrt Z
\le d A^{-1/2}(z\sqrt Z)\in L^2(0,T).
\tag{ZT4}
\]

The force cube is integrable, too. The actual hypothesis `z(S)→0` therefore gives

\[
\boxed{\ \frac\nu2z(t)^2+\int_t^T z^3q
=\int_t^T z^3\|f-B\|_2^2.\ }
\tag{ZT5}
\]

There is no deleted terminal momentum term: its reciprocal endpoint is exactly zero under this branch hypothesis.

For a fixed force Young parameter `η>0`, `||f−B||²≤(1+η)||B||²+(1+η⁻¹)||f||²`. Absorbing half of `ν²Z` gives the proposed cone, now justified at the endpoint:

\[
\frac\nu2z(t)^2+\int_t^Tz\,d\mu_{\mathrm{hist}}
\le\frac{(1+\eta)^2}{8\pi^2\nu^2}
\int_t^T(1-Az)^3\,ds
+(1+\eta^{-1})\int_t^Tz^3\|f\|_2^2\,ds.
\tag{ZT6}
\]

In the unforced case take the coefficient `1/(8π²ν²)` directly, with no force term. For smooth force, its norm is bounded near `T`, while `sup_(t,T)z→0`; hence the final term is `o(T−t)` for every fixed `η`. One may then send `η↓0` after taking the terminal limsup. No force cancellation or positivity is presumed.

## 2. Complete temporal pairing sharpens the cone

More generally suppose the full unprojected nonlinear field has the proved bound

\[
\|B\|_2^2\le b_{\mathrm{nonlin}}Y^{3/2}\sqrt Z.
\tag{ZT7}
\]

There are three verified available coefficients: the starting Agmon value `1/(2π)`; the solenoidal Agmon value `1/(3π)` (apply Fourier Cauchy–Schwarz to `P_ξa`, whose angular squared average is `2/3`); and the stronger original full-field Sobolev coefficient

\[
\|B\|_2\le\|u\|_6\|\nabla u\|_3
\le S_6\sqrt Y\,S_3\|\Lambda^{3/2}u\|_2
\le a_0Y^{3/4}Z^{1/4},
\quad a_0=\frac{\sqrt{2/3}}\pi,
\quad b_{\mathrm{nonlin}}=a_0^2=\frac2{3\pi^2}.
\tag{ZT8}
\]

ZT8 bounds **B itself**, before Leray projection, and therefore pays the complete source used in ZT2. The spatial interpolation is `||Λ^{3/2}u||≤Y^{1/4}Z^{1/4}`. No pressure parent is removed to obtain the coefficient. The original constants `S₃,S₆` and this product operation were already executed in CP17; this is their new endpoint use.

Let `0<θ<1`, `β=√(1−θ)`, and

\[
q_\theta=\|u_t\|_2^2+\beta^2\nu^2Z+\|\nabla p\|_2^2.
\]

The decisive **exact same-history** completion is

\[
q_\theta-\nu\beta Y'
=\|u_t-\nu\beta\Lambda^2u\|_2^2+\|\nabla p\|_2^2.
\tag{ZT9}
\]

Thus the integrated cubic action contains an additional endpoint, irrespective of the sign changes of `Y′`:

\[
\int_t^Tz^3q_\theta
=\frac{\nu\beta}{2}z(t)^2
+\int_t^Tz^3\left(\|u_t-\nu\beta\Lambda^2u\|_2^2+\|\nabla p\|_2^2\right).
\tag{ZT10}
\]

This retains the temporal receiver, full spatial viscous receiver, and canonical pressure together. It requires no monotone enstrophy or independently varied temporal row.

For unforced flow, write out the complete nonnegative nonlinear remainder:

\[
\begin{aligned}
\mathcal S_\theta={}&
\left(\sqrt\theta\nu\sqrt Z-
\frac{b_{\mathrm{nonlin}}}{2\sqrt\theta\nu}Y^{3/2}\right)^2\\
&+\left(b_{\mathrm{nonlin}}Y^{3/2}\sqrt Z-\|B\|_2^2\right)\ge0.
\end{aligned}
\tag{ZT11}
\]

Substituting ZT9–ZT11 into the full square gives the **exact** unforced terminal identity

\[
\begin{aligned}
\frac{\nu(1+\beta)}2z(t)^2
&+\int_t^Tz^3\left[
\|u_t-\nu\beta\Lambda^2u\|_2^2+\|\nabla p\|_2^2+\mathcal S_\theta\right]\\
&=\frac{b_{\mathrm{nonlin}}^2}{4\theta\nu^2}
\int_t^T(1-Az)^3\,ds.
\end{aligned}
\tag{ZT12}
\]

Every term in the remainder is displayed rather than replaced with a fresh unsigned placeholder. In particular the transport remains `B=(u·∇)u`, and its true full-field norm is present in the second line of ZT11.

For force put `λ=1+η`, replace `b_nonlin` by `λ b_nonlin` in the first square of ZT11 and multiply its second parenthesis by `λ`. In addition retain the exact force cross remainder

\[
\mathcal G_\eta=\|\sqrt\eta\,B+\eta^{-1/2}f\|_2^2
=\lambda\|B\|_2^2+(1+\eta^{-1})\|f\|_2^2-\|f-B\|_2^2.
\tag{ZT13}
\]

ZT12 then has the additional positive `∫z³G_η` on the left, coefficient `λ²b_nonlin²/(4θν²)` on the right, and additional `(1+η⁻¹)∫z³||f||²` on the right. This is an exact forced identity; it retains both signs of the nonlinear–force cross before assigning its positive remainder.

## 3. New actual rate and profile consequences

Since `z→0`, the average of `(1−Az)³` tends to one. Dropping only the nonnegative displayed remainder, taking the terminal limsup, and then `η↓0` in the forced case gives

\[
\limsup_{t\uparrow T}\frac{z(t)^2}{T-t}
\le\frac{b_{\mathrm{nonlin}}^2}
{2\nu^3\theta(1+\sqrt{1-\theta})}.
\tag{ZT14}
\]

The denominator is largest at `θ=8/9`, `β=1/3`, because `(1−β)(1+β)²` has its maximum `32/27` there. With the strongest coefficient ZT8 this yields

\[
\boxed{\ \limsup_{t\uparrow T}\frac{z(t)^2}{T-t}
\le L_*:=\frac3{16\pi^4\nu^3},\qquad
\liminf_{t\uparrow T}\sqrt{T-t}\,Y(t)
\ge\frac{4\pi^2\nu^{3/2}}{\sqrt3}.\ }
\tag{ZT15}
\]

Using the starting Agmon coefficient alone would give `27/(256π²ν³)` for the first constant; using its solenoidal refinement gives `3/(64π²ν³)`. ZT15 is stronger because it uses the available full Sobolev source estimate. The constant `A` disappears from the leading rate because `√(T−t)A→0`.

A separate check from the actual signed enstrophy equation agrees: `Y′≤2√b_nonlin Y^{3/4}Z^{3/4}−2νZ`; optimizing this expression in the **actual** `Z` gives `Y′≤27b_nonlin²Y³/(128ν³)`. Multiplication by `z³` and integration gives the same optimized leading constant. This is not an assumed scalar evolution or an independently constructed trajectory.

For bounded smooth force, ZT15 also makes its cubic endpoint term `O((T−t)^{5/2})`. The leading force contribution therefore vanishes in the cone; it is still explicitly present in ZT13.

With `θ=8/9`, the exact unforced formula is particularly simple:

\[
\begin{aligned}
\frac{2\nu}{3}z(t)^2
&+\int_t^Tz^3\left[
\|u_t-\tfrac\nu3\Lambda^2u\|_2^2+\|\nabla p\|_2^2+\mathcal S_{8/9}\right]\\
&=\frac1{8\pi^4\nu^2}\int_t^T(1-Az)^3\,ds.
\end{aligned}
\tag{ZT16}
\]

If an actual unforced subsequence of times saturates the coefficient `L_*` in ZT15, ZT16 forces its entire displayed remainder to be `o(T−t)` on those terminal intervals. In particular the weighted temporal alignment, pressure action, viscous magnitude square and the actual full nonlinear estimate slack must all vanish at that normalized scale. This is a necessary integrated consequence, not pointwise equality or a proof that saturation is attainable.

The same-history derivative bound yields an unweighted measure-tail constraint

\[
d\mu_{\mathrm{hist}}\ge\frac\nu{\sqrt2}|z'|\,dt,
\qquad
\mu_{\mathrm{hist}}((t,T))\ge\frac\nu{\sqrt2}z(t).
\tag{ZT17}
\]

For the optimized `μ_θ=z²q_θdt`, the corresponding constant is `νβ=ν/3`. The cone also controls its first stock moment: `∫_t^Tz dμ_θ≤(1/(8π⁴ν²)+o(1))(T−t)`.

The actual history is smooth on strict intervals and ZT17 puts its derivative `z′` in `L¹(0,T)`. Its zero-terminal extension is therefore absolutely continuous; `μ_hist` is a finite density measure and has no endpoint atom. This assertion concerns the actual history, not a possibly concentrated weak limit of the cutoff measures.

If the **actual** stock has a two-sided power profile `c₁(T−t)^α≤z(t)≤c₂(T−t)^α` near the terminal time, with positive constants, kinetic integrability and ZT15 require

\[
\tfrac12\le\alpha<1.
\tag{ZT18}
\]

The endpoint `α=1` is excluded here only for such a constant-factor power profile; no assertion is made about logarithmically modified profiles. At `α=1/2`, an actual asymptotic coefficient `z(t)∼c√(T−t)` must have `c≤√L_*`.

On dyadic terminal intervals the lower profile and the moment bound give `μ_θ((t,T))=O((T−t)^{1−α})`: each interval `[T−2⁻ʲh,T−2⁻ʲ⁻¹h]` has stock at least `c₁(2⁻ʲ⁻¹h)^α` and moment at most `(c_*+o(1))2⁻ʲh`. The resulting geometric series converges because `α<1`. Since `q_-≤(9/2)q_θ`, this proves

\[
\frac{\nu c_1}{\sqrt2}(T-t)^\alpha
\le\mu_{\mathrm{hist}}((t,T))
\le C(T-t)^{1-\alpha}.
\tag{ZT19}
\]

For the actual square-root profile its weighted action tail is thus of order `√(T−t)`. These are restrictions on a profile only if the original history has it; no sample profile is constructed or admitted as fluid evidence.

In this conditional zero-stock branch `Y(t)→∞`. Consequently even `∫_t^T(||u_t||²+.5ν²Z)dt=∞`, since this sum alone is at least `(ν/√2)|Y′|` and the actual variation from `Y(t)` to `Y(S)→∞` diverges. Thus this branch would not supply the unweighted first rectangle, while its weighted rectangle remains finite. None of these deductions establishes that the branch occurs.

## 4. Actual cutoff concentration: source payment and paired cancellation

Return only to the actual cutoff histories already constructed on `[0,T]`:

\[
u_{N,t}+\nu\Lambda^2u_N=S_N\mathbb P(f-B_N),\quad
\nabla p_N=(I-\mathbb P)(f-B_N),\quad
r_N=(I-S_N)\mathbb P(f-B_N).
\]

Their full square, including the positive defect, is

\[
q_N+\nu Y_N'+\|r_N\|_2^2=\|f-B_N\|_2^2,
\qquad z_N=(A+Y_N)^{-1}.
\tag{ZT20}
\]

The shared bounds `∫z_N²q_-,N≤C_W` and `z_N≤A⁻¹`, together with ZT7, give the **new cubic source payment**

\[
\|z_N^3\|B_N\|_2^2\|_{L^2(0,T)}
\le\frac{b_{\mathrm{nonlin}}}{\sqrt A}
\left(\frac{2C_W}{\nu^2}\right)^{1/2}.
\tag{ZT21}
\]

Thus `z_N³||f−B_N||²` is uniformly `L²_t` as well. These are the full nonlinear and force sources on the actual approximating history, not a selected parent or a source deletion. They are uniformly integrable and cannot produce an endpoint atom. The pointwise Hilbert projection inequalities also give uniform integrability of

\[
z_N^3\|\nabla p_N\|_2^2,\qquad
z_N^3\|r_N\|_2^2,\qquad
z_N^3\|S_N\mathbb P(f-B_N)\|_2^2.
\tag{ZT22}
\]

In particular **cubic** pressure and cutoff-defect actions have no terminal atom. The twice-weighted actions from WC23 are different measures.

On one subsequence take the weak finite-measure limits of

\[
\begin{aligned}
d\mathcal T_N&=z_N^3\|u_{N,t}\|_2^2dt,\\
d\mathcal V_N&=\nu^2z_N^3Z_Ndt,\\
d\mathcal C_N&=\nu z_N^3\langle u_{N,t},\Lambda^2u_N\rangle dt.
\end{aligned}
\tag{ZT23}
\]

The cross measure is signed; its total variation is uniformly bounded by the two positive actions. Write the cutoff endpoint stock as

\[
b_{\mathrm{stock}}=\lim_Nz_N(T)\in[0,A^{-1}].
\tag{ZT24}
\]

It is not automatically the zero one-sided stock of the identified preterminal history. The previous BV convergence was in `L¹` and almost everywhere and did not identify this endpoint value.

Integrating ZT20 with `z_N³` gives

\[
\frac\nu2[z_N(t)^2-z_N(T)^2]
+\int_t^Tz_N^3(q_N+\|r_N\|_2^2)
=\int_t^Tz_N^3\|f-B_N\|_2^2.
\tag{ZT25}
\]

Choose strict times where the stock converges and the limiting measures have no atom, pass `N→∞`, and then take `t↑T`. The actual limiting stock has trace zero, while the right side has no terminal atom by ZT21. ZT22 removes cubic pressure and defect atoms. It follows that

\[
\mathcal T(\{T\})+\mathcal V(\{T\})
=\frac\nu2b_{\mathrm{stock}}^2.
\tag{ZT26}
\]

The two actual momentum parents have further joint information. Their sum `z_N^{3/2}(u_Nt+νΛ²u_N)` has squared action equal to the uniformly integrable projected source in ZT22. On a short terminal interval, Cauchy–Schwarz applied to this sum and the difference gives

\[
\left|\int z_N^3(\|u_{N,t}\|_2^2-\nu^2Z_N)\right|
\le\left(\int z_N^3\|u_{N,t}+\nu\Lambda^2u_N\|_2^2\right)^{1/2}
\left(\int z_N^3\|u_{N,t}-\nu\Lambda^2u_N\|_2^2\right)^{1/2}.
\tag{ZT27}
\]

The first factor vanishes uniformly with the interval length and the second is bounded. Thus the two concentration atoms are equal. Their sum has zero atom, including its cross, so the complete terminal concentration Gram is

\[
\boxed{\
\mathcal T(\{T\})=\mathcal V(\{T\})=\frac\nu4b_{\mathrm{stock}}^2,
\qquad
\mathcal C(\{T\})=-\frac\nu4b_{\mathrm{stock}}^2.\ }
\tag{ZT28}
\]

Its matrix is `(νb_stock²/4)[[1,−1],[−1,1]]`, a positive semidefinite Gram whose joined source direction has zero action. This identifies the actual approximation boundary concentration as a cancelling temporal–viscous pair; it is not a prescribed heat toy. Complete pressure, forcing, and cutoff terms were used to establish the source uniform integrability that forces the cancellation.

For the previously defined measures `dμ_N=z_N²q_-,Ndt`, the actual joint first stock moment therefore has

\[
\left[\lim_N(z_N\,d\mu_N)\right](\{T\})
=\frac{3\nu}{8}b_{\mathrm{stock}}^2.
\tag{ZT29}
\]

At `β=1/3`, the temporal alignment square in ZT12 has terminal atom `4νb_stock²/9`. Its nonlinear Young remainder has atom `2νb_stock²/9`: only its viscous square term survives, since the source cube and bounded density `(1−Az_N)³` have none. Their total is `2νb_stock²/3`, exactly the cutoff endpoint coefficient in the complete optimized refund. The force cross remainder has no atom, also by the source UI and the known bounded force.

If `b_stock=0`, all cubic momentum-action terminal atoms and this full cubic refund atom vanish. If `b_stock>0`, ZT28–ZT29 specify their exact signed structure. Neither alternative identifies a terminal atom of `μ_N` with the density `μ_hist`, or proves that twice-weighted action concentration is absent: multiplying by a stock tending to zero can remove it. Replacing the limit of `z_Ndμ_N` by `z dμ_limit` would require an additional joint-product justification at the endpoint and is not done here.

## 5. Bounded conclusion and preservation

The actual zero-stock branch has a fully justified cubic terminal identity, a sharper native nonlinear cone, explicit temporal/pressure/nonlinear positive remainders, the necessary rate ZT15, and conditional profile/action restrictions ZT18–ZT19. In the simultaneous cutoff construction the cubic full source is newly paid uniformly in `L²_t`; its pressure and cutoff faces have no terminal atom, and the remaining cubic temporal/viscous atom has the exact cancelling Gram ZT28.

These results strengthen the coupled zero-limit analysis. They do not exclude the actual zero-stock branch, prove a positive terminal stock, or control the unweighted `∫z_N⁻²dμ_N` action. No downstream rectangle theorem was assumed or reopened.
