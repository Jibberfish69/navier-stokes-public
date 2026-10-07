# Actual zero-stock clock, normalized field and terminal cone

**Reviewed scope and currentness.** The weaker Agmon cone remains valid. [Necessary terminal profiles on the actual zero-reciprocal-stock branch](A0743-zero-stock-terminal-profiles.md)/[The actual zero reciprocal-stock branch: coupled terminal constraints](A0748-zero-stock-coupled-terminal-results.md) strengthen the kinetic-excess product beyond the e*=0 subcase discussed here. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


New mathematical analysis, 6 October 2026. This executes the actual Navier–Stokes history on the zero reciprocal-stock branch. It preserves fixed physical viscosity, full pressure, prescribed force and the compatibility of the physical mixed jet. No alternate scalar trajectory or fluid is introduced. 

The finite clock supplies a genuine additional verified chain: the normalized field and pressure have zero terminal traces; the normalized velocity lies in clock \(W^{1,1}L^2\); and its complete enstrophy production, viscosity, force and scalar-drift terms are integrable through that endpoint. The optimized temporal Gram/alignment cone strengthens the actual terminal profile. These statements do not give a boundary contradiction: the exact scalar drift has divergent negative integrated strength, although its actual vector source is integrable. The inverse chart's costs in the original rectangle remain explicit below.

The primary source is [native forced equation and mixed rows](../SOURCES.md#S152), and the separately identified [new weighted-action derivation](A0452-weighted-native-first-rectangle.md). The latter is new analysis, not an original-paper theorem. The first-action calculation is independently reconstructed below. The independent calculation checks the [field/action identities](A0717-normalized-field-and-action.md) and the [complete first clock jet](A0713-first-clock-jet-and-drift.md). 

For the stronger full enstrophy coefficient, the additional [Sobolev source](../COVERAGE.md#A0724) is [analytic-framework LF102–164](../SOURCES.md#S136), . Its explicit scalar/vector/tensor constants are \(S_3=2^{-1/6}\pi^{-1/3}\), \(S_6=2^{2/3}/(\sqrt3\pi^{2/3})\), so \(b=(S_3S_6)^2=2/(3\pi^2)\). The component Minkowski calculation retains this same constant.

## 1. Actual equation and the paid first action

**ZC1.** On each strict interval of the same classical history,

\[
u_t+N(u,u)+\nabla p=\nu\Delta u+f,\quad
N(a,b)=(a\cdot\nabla)b,\quad \operatorname{div}u=0,
\]

with canonical pressure
\(p=R_iR_j(u_iu_j)-(-\Delta)^{-1}\operatorname{div}f\).
Put

\[
Y=\|\nabla u\|_2^2,\quad Z=\|\Delta u\|_2^2,\quad
A_x=-\Delta,\quad
q_-=\|u_t\|_2^2+\tfrac12\nu^2Z+\|\nabla p\|_2^2.
\]

The full momentum square is

\[
Q+\nu Y'=\|f-N(u,u)\|_2^2,
\quad Q=\|u_t\|_2^2+\nu^2Z+\|\nabla p\|_2^2.
\tag{ZC1}
\]

The source–nonlinear cross term is inside this square. Pressure is orthogonal to both solenoidal velocity terms; the \(u_t,A_xu\) cross term remains and equals \(\nu Y'\). With the unitary Fourier transform, direct radial Cauchy–Schwarz optimized in its two positive weights gives
\(\|u\|_\infty\le(2\pi)^{-1/2}Y^{1/4}Z^{1/4}\).
Hence

\[
q_-+\nu Y'\le2\|f\|_2^2+c_\nu Y^3,
\qquad c_\nu=(2\pi^2\nu^2)^{-1}.
\]

The kinetic identity pays \(\sup\|u\|_2\le K\), \(\int_0^{T_*}Y\le D=K^2/(2\nu)\), where
\(K=\|u_0\|_2+\|\mathbb Pf\|_{L^1(0,T_*;L^2)}\).
Choose a fixed offset \(A>0\), in the units of \(Y\), and set

\[
z=(A+Y)^{-1},\qquad d\mu=z^2q_-dt.
\]

Multiplying the complete inequality by \(z^2\) retains its signed endpoint \(\nu[z(t)-z(0)]\), while \(z^2Y^3\le Y\). Therefore

\[
\mu(I)\le C_W=\frac\nu A+c_\nu D
+\frac2{A^2}\|f\|_{L^2(I;L^2)}^2,
\qquad I=(0,T_*).
\tag{ZC2}
\]

This is a datum-paid whole-terminal weighted action, derived without positive higher terminal memberships. At zero physical force, the sharper constant \(c_\nu^0=(8\pi^2\nu^2)^{-1}\) is available. Since
\(z'=2z^2\operatorname{Re}\langle\Delta u,u_t\rangle\), the joint positive action gives
\(\operatorname{Var}_I z\le\sqrt2C_W/\nu\).
Thus \(z\) has a terminal limit. This report investigates precisely its zero-limit branch.

## 2. Finite clock and complete normalized equation

**ZC2.** Define

\[
s(t)=\int_0^t\frac{dr}{z(r)}=At+\int_0^tY(r)dr,
\quad S=s(T_*)<\infty,
\quad t_s=z.
\tag{ZC3}
\]

All transformations are smooth and invertible on strict prefixes. Let

\[
v(s,x)=z(t(s))u(t(s),x),\quad
\pi(s,x)=z(t(s))^2p(t(s),x),\quad
\lambda=\frac{z_s}{z}=z_t.
\]

The exact original equation becomes

\[
v_s+N(v,v)+\nabla\pi
=\nu z\Delta v+z^2f(t(s))+\lambda v,
\quad\operatorname{div}v=0.
\tag{ZC4}
\]

The viscosity is \(\nu z\), and the scalar drift \(\lambda v\) is mandatory. The clock is a coordinate change of the same physical history, not a new unforced solution with constant viscosity. Its pressure is exactly

\[
\pi=R_iR_j(v_iv_j)-z^2(-\Delta)^{-1}\operatorname{div}f,
\quad
-\Delta\pi=\partial_i\partial_j(v_iv_j)-z^2\operatorname{div}f.
\tag{ZC5}
\]

The added drift is solenoidal, so it adds no pressure source. Both physical force components remain in ZC4–5.

## 3. Action, zero traces and scalar/vector drift distinction

**ZC3.** The covariant physical temporal response in clock coordinates is
\(w=v_s-\lambda v=z^2u_t\). The pushed-forward action is exact:

\[
\frac{d\mu}{ds}
=\frac{\|w\|_2^2}{z}
+\frac{\nu^2}{2}z\|\Delta v\|_2^2
+\frac{\|\nabla\pi\|_2^2}{z},
\qquad z_s=2\operatorname{Re}\langle\Delta v,w\rangle.
\tag{ZC6}
\]

Consequently \(|z_s|\le(\sqrt2/\nu)d\mu/ds\), and \(z\) is clock-BV with the same variation. Normalization fixes the spatial stock:

\[
\|v\|_2\le Kz,\qquad
\|\nabla v\|_2^2=z^2Y=z-Az^2.
\tag{ZC7}
\]

On the zero-limit branch, \(v(s)\to0\) strongly in \(H^1\). The canonical pressure also tends to zero in \(L^2\):
\(\|\pi\|_2\le C K^{1/2}z^2Y^{3/4}+z^2\|(-\Delta)^{-1}\operatorname{div}f\|_2\to0\).
The known source potential is uniformly finite under the admitted spatial decay. This is a normalized zero trace, not an unscaled original endpoint jet.

There is useful clock temporal regularity:

\[
\int_0^S\|w\|_2ds\le\sqrt{C_WT_*},\qquad
\int_0^S\|\lambda v\|_2ds
\le K\int_0^S|z_s|ds
\le\frac{\sqrt2K}{\nu}C_W.
\tag{ZC8}
\]

Thus \(v\in W^{1,1}(0,S;L^2)\) with the same zero terminal trace. Here \(\int z\,ds=T_*\) was used in the first bound. The viscosity, pressure and prescribed source are also fully paid in \(L^1_sL^2_x\):

\[
\|\nu z\Delta v\|_{L^1_sL^2}\le\sqrt{2C_WT_*},\quad
\|\nabla\pi\|_{L^1_sL^2}\le\sqrt{C_WT_*},\quad
\|z^2f\|_{L^1_sL^2}\le A^{-1}\|f\|_{L^1_tL^2}.
\]

The **entire** convective term is therefore \(L^1_sL^2\) by ZC4 written as
\(w+N(v,v)+\nabla\pi=\nu z\Delta v+z^2f\). No term is discarded to obtain this payment.

The scalar coefficient has a different domain:

\[
\int_0^{s(t)}\lambda\,ds=\log z(t)-\log z(0)\longrightarrow-\infty,
\qquad\int_0^S|\lambda|ds=\infty.
\tag{ZC9}
\]

Thus its actual vector source is integrable even though the scalar clock drift has divergent negative integrated strength. The normalization itself supplies this damping. A zero normalized trace does not contradict its governing equation by an argument requiring an integrable scalar coefficient.

## 4. Exact energy balances through the clock endpoint

**ZC4.** Global divergence freedom cancels the kinetic convection and pressure pairings, giving

\[
\tfrac12(\|v\|_2^2)_s+\nu z\|\nabla v\|_2^2
=z^2\langle f,v\rangle+\lambda\|v\|_2^2.
\tag{ZC10}
\]

All its terms are integrable: for example
\(\int|\lambda|\|v\|_2^2ds\le K^2A^{-1}\operatorname{Var}z\).
Its zero terminal balance is the physical kinetic identity multiplied by \(z^2\), with its exact derivative term \(z z_t\|u\|^2\) retained. It produces no additional kinetic sign.

For the spatial row set
\(P_v=\operatorname{Re}\langle N(v,v),\Delta v\rangle\).
The complete enstrophy identity is

\[
\tfrac12(\|\nabla v\|_2^2)_s+\nu z\|\Delta v\|_2^2
=P_v-z^2\operatorname{Re}\langle f,\Delta v\rangle
+\lambda\|\nabla v\|_2^2.
\tag{ZC11}
\]

Pressure pairs to zero against the solenoidal \(-\Delta v\) here, while its full equation remains ZC5. Substituting the exact stock \(z-Az^2\) retains and then combines the scalar drift to give

\[
-\tfrac12z_s+\nu z\|\Delta v\|_2^2
=P_v-z^2\operatorname{Re}\langle f,\Delta v\rangle.
\tag{ZC12}
\]

**ZC5 (complete nonlinear payment).** The directly read scalar/vector/tensor Sobolev constants give the stronger complete receiver estimate
\[
|P_u|\le\|u\|_6\|\nabla u\|_3\|\Delta u\|_2
\le S_6S_3\sqrt Y\,\|\Lambda^{3/2}u\|_2\sqrt Z
\le\sqrt b\,Y^{3/4}Z^{3/4}.
\]
The last step is Fourier Cauchy–Schwarz between the first and second spatial derivatives. Every convective component is retained. Since \(P_v=z^3P_u\) and \(zY\le1\),

\[
\int_0^S|P_v|ds
\le\sqrt b
\left(\int_0^{T_*}z^2Zdt\right)^{3/4}
\left(\int_0^{T_*}Ydt\right)^{1/4}
\le\sqrt b
\left(\frac{2C_W}{\nu^2}\right)^{3/4}D^{1/4}.
\tag{ZC13}
\]

Also
\(\int|z^2\langle f,\Delta v\rangle|ds\le A^{-1}\|f\|_{L^2_tL^2}\sqrt{2C_W}/\nu\),
\(\nu\int z\|\Delta v\|^2ds\le2C_W/\nu\), and
\(\int|\lambda|\|\nabla v\|^2ds\le\operatorname{Var}z\).
This pays every term in the complete normalized first-height identity. Passing its actual zero trace to \(S\) is therefore justified, yielding

\[
\boxed{\frac{z(s)}2+\nu\int_s^S z\|\Delta v\|_2^2d\sigma
=\int_s^S\left(P_v-z^2\operatorname{Re}\langle f,\Delta v\rangle\right)d\sigma.}
\tag{ZC14}
\]

The right side is the full signed nonlinear/force current. Its net positivity follows from this identity; its nonlinear part has not been assigned a pointwise favorable sign.

## 5. Cubic cone and optimized full temporal alignment

**ZC6.** Retain a parameter \(0<a<1\) in the complete positive action
\(q_a=\|u_t\|^2+a\nu^2Z+\|\nabla p\|^2\).
For any \(\eta>0\), ZC1 and the same optimized Agmon estimate give

\[
q_a+\nu Y'
\le c_a(1+\eta)^2Y^3+(1+\eta^{-1})\|f\|_2^2,
\quad c_a=\frac1{16\pi^2\nu^2(1-a)}.
\tag{ZC15}
\]

The temporal Gram pairing supplies an exact positive remainder:

\[
q_a-\nu\sqrt a\,Y'
=\|u_t-\nu\sqrt a\,A_xu\|_2^2+\|\nabla p\|_2^2=:R_a\ge0.
\tag{ZC16}
\]

This retains alignment and pressure; no pointwise monotonicity of \(Y\) is assumed. Set \(\eta=\sqrt{Az}\) on late strict prefixes. Since \(z\to0\) and the prescribed force has finite \(L^\infty_tL^2_x\) norm, multiplying ZC15 by \(z^3\) makes its full upper bound \(c_a+o(1)\): \((zY)^3=(1-Az)^3\to1\), while \((1+\eta^{-1})z^3\|f\|^2\to0\). The derivative is exact: \(z^3Y'=-\tfrac12(z^2)'\).

Combining and integrating to the actual zero terminal stock gives

\[
\boxed{\frac{\nu(1+\sqrt a)}2z(t)^2
+\int_t^{T_*}z^3R_a\,dr
\le[c_a+o(1)](T_*-t).}
\tag{ZC17}
\]

Its terms are integrable by ZC2 and the equivalence of fixed positive \(q_a\) weights. For \(a=1/2\) without using alignment, the original requested cone is
\(\nu z^2/2+\int_t^{T_*}z\,d\mu\le[(8\pi^2\nu^2)^{-1}+o(1)](T_*-t)\).
ZC17 is the additional lawful full-Gram strengthening.

Optimizing \((1-a)(1+\sqrt a)\) gives \(\sqrt a=1/3\), \(a=1/9\). Therefore

\[
\limsup_{t\uparrow T_*}\frac{z(t)^2}{T_*-t}
\le C_{\rm Gram}:=\frac{27}{256\pi^2\nu^3},
\quad
\liminf_{t\uparrow T_*}\sqrt{T_*-t}\,Y(t)
\ge\frac{16\pi\nu^{3/2}}{3\sqrt3}.
\tag{ZC18}
\]

The forcing contributes only the displayed asymptotically lower-order terms; its full terms were kept before taking that limit.

**ZC6a (actual kinetic-tail bridge).** The exact boundary ZC14 and the stronger coefficient now yield a further datum-linked relation. Define actual tails
\[
U(t)=\int_t^{T_*}z^2Z\,dr,\qquad
D(t)=\int_t^{T_*}Y\,dr,\qquad
F(t)^2=\int_t^{T_*}z^2\|f\|_2^2dr.
\]
Using the full nonlinear and source terms, before maximizing anything, gives
\[
\frac z2+\nu U\le\sqrt b\,U^{3/4}D^{1/4}+F\sqrt U.
\tag{ZC18a}
\]
At zero physical force, maximizing the right side minus \(\nu U\) gives
\[
z\le\kappa D,\qquad
\kappa=\frac{27b^2}{128\nu^3}=\frac3{32\pi^4\nu^3}.
\]
Indeed the maximum is attained at \(U=[3\sqrt bD^{1/4}/(4\nu)]^4\), and its value is \(27b^2D/(256\nu^3)\). For arbitrary admitted smooth force, absorb \(F\sqrt U\le\varepsilon\nu U+F^2/(4\varepsilon\nu)\). The actual zero-stock branch gives \(Y\to\infty\), hence \(D(t)/(T_*-t)\to\infty\); bounded force and \(z\le A^{-1}\) imply \(F^2=o(D)\). For fixed \(\varepsilon>0\), then \(\varepsilon\downarrow0\), this proves
\[
\limsup_{t\uparrow T_*}\frac{z(t)}{D(t)}\le\kappa.
\tag{ZC18b}
\]
No forcing smallness or monotone enstrophy is assumed.

The scalar kinetic trace \(e_* =\lim\|u(t)\|_2^2\) exists from its exact integrable energy balance. **If \(e_*=0\)**, that balance gives \(e(t)=2\nu D(t)-2\int_t^{T_*}\langle u,f\rangle dr\), with source work \(o(D)\). Thus the actual joint stocks obey
\[
\liminf_{t\uparrow T_*}e(t)Y(t)\ge\frac{2\nu}{\kappa}
=\frac{64\pi^4\nu^4}{3}.
\]
This is a conditional subcase calculation, not a proof that \(e_*=0\). If \(e_*>0\), the product tends to infinity already on the zero-stock branch.

**ZC6b (stronger actual profile).** The same complete enstrophy equation gives
\(Y'/2+\nu Z=P_u-\langle f,\Delta u\rangle\). Maximizing \(\sqrt bY^{3/4}Z^{3/4}-\nu Z\) yields \(Y'\le\kappa Y^3\) in the unforced case. With force, absorb \(|\langle f,\Delta u\rangle|\le\varepsilon\nu Z+\|f\|^2/(4\varepsilon\nu)\), and obtain
\[
Y'\le\frac{\kappa}{(1-\varepsilon)^3}Y^3
+\frac{\|f\|_2^2}{2\varepsilon\nu}.
\]
Since \((z^2)'=-2z^3Y'\), integration to its actual zero endpoint, followed by \(\varepsilon\downarrow0\), proves the stronger profile
\[
\limsup_{t\uparrow T_*}\frac{z(t)^2}{T_*-t}
\le C_*:=2\kappa=\frac3{16\pi^4\nu^3},\qquad
\liminf_{t\uparrow T_*}\sqrt{T_*-t}\,Y(t)
\ge\frac{4\pi^2\nu^{3/2}}{\sqrt3}.
\tag{ZC18c}
\]
This strengthening follows from the actual full signed normalized height row and its known coefficient. ZC17's additional nonnegative temporal-alignment/pressure remainder remains available; it has not been removed by taking the stronger profile estimate.

**ZC7 (clock form).** The entire alignment remainder becomes

\[
\int_t^{T_*}z^3R_a\,dr
=\int_s^S\left(
\|v_s-\lambda v+\nu\sqrt a\,z\Delta v\|_2^2
+\|\nabla\pi\|_2^2\right)d\sigma.
\tag{ZC19}
\]

Thus the optimized clock cone retains this full nonnegative remainder and the boundary \(2\nu z(s)^2/3\), with coefficient \(9/(128\pi^2\nu^2)+o(1)\) times \(T_*-t(s)\). Integrating the actual profile bound over the clock's definition gives

\[
T_*-t(s)\le[C_*/4+o(1)](S-s)^2,
\qquad z(s)\le[C_*/2+o(1)](S-s).
\tag{ZC20}
\]

Indeed \(S-s=\int_t^{T_*}dr/z(r)\ge[2/\sqrt{C_*}+o(1)]\sqrt{T_*-t}\). The normalized velocity therefore vanishes at least linearly in clock \(L^2\), and its squared spatial-gradient stock vanishes at least linearly. These are strengthened actual normalized boundary rates, not original unscaled endpoint regularity.

## 6. Full clock jets and the exact original-domain cost

**ZC8.** The natural first clock time jet \(b=v_s\) is different from \(w=z^2u_t\). Its complete equation is

\[
b_s+N(v,b)+N(b,v)+\nabla\pi_s
=\nu z\Delta b+\nu z_s\Delta v
+\lambda b+\lambda_s v+2zz_s f+z^3f_t.
\tag{ZC21}
\]

Here \(\pi_s=2zz_sp+z^3p_t\) and \(\lambda_s=z_{ss}/z-z_s^2/z^2\). None of these derivative terms is removed. The covariant response instead satisfies

\[
w_s+N(v,w)+N(w,v)+\nabla(\pi_s-2\lambda\pi)
=\nu z\Delta w+2\lambda w+z^3f_t,
\quad\pi_s-2\lambda\pi=z^3p_t.
\tag{ZC22}
\]

The first spatial jet keeps the full \(N(v,\partial_jv)+N(\partial_jv,v)\), source \(z^2\partial_jf\), pressure \(\partial_j\nabla\pi\) and drift \(\lambda\partial_jv\). Higher finite clock derivatives carry further derivatives of \(z\); the weighted first action supplies no bounds for those additional terms. All these coordinates remain compatible on strict prefixes by the exact chart. That compatibility alone is not higher-order terminal membership.

The original native rectangle, with its original physical derivative, is exactly

\[
\boxed{\mathfrak R_{0,1}(I)
=\int_0^S\left(
\frac{\|v\|_{H^2}^2}{z}
+\frac{\|v_s-\lambda v\|_2^2}{z^3}\right)ds.}
\tag{ZC23}
\]

Compare this with the genuinely paid measure ZC6: the temporal term has weight \(z^{-1}\), not \(z^{-3}\), and its second spatial derivative has weight \(z\), not \(z^{-1}\). The normalized zero traces and the integrability in ZC8/ZC13 do not cancel these inverse-chart costs. The viscosity \(\nu z\) vanishes at the finite clock endpoint, and the scalar coefficient in ZC9 is nonintegrable. Thus the original constant-viscosity smooth-force endpoint/restart operation is not licensed by this normalized zero trace. Even at zero physical force, the mandatory intrinsic clock drift remains.

## 7. Bounded mathematical outcome

The complete normalized equation, pressure reconstruction, action transformation, \(W^{1,1}L^2\) zero trace, full integrable enstrophy balance, optimized temporal-alignment cone, stronger clock boundary rates and complete first clock jets have been derived on the actual zero-stock branch. They retain every source, derivative of the clock and nonnegative alignment/pressure remainder.

The additional kinetic-tail bridge ZC18a–b and stronger profile ZC18c are bounded new gains from those exact rows. The lower joint-stock bound expressly keeps its \(e_*=0\) subcase; no small-product continuation theorem is invoked.

These operations give the displayed signed boundary relation and stronger profile, without a boundary contradiction. They exhibit exact finite-clock zero traces with their own singular scalar damping and degenerate viscosity, while retaining the original inverse-chart domain cost ZC23. No hypothetical scalar profile is used, and no original endpoint membership or unrelated continuation criterion is assumed. The useful new verified content is the complete normalized boundary chain through ZC14 and the optimized full alignment/profile chain ZC15–20; lifting those statements to the original unweighted rectangle remains unpaid by these particular operations.
