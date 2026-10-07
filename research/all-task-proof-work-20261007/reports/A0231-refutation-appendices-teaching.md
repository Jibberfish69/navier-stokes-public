# The actual localized force and its terminal jets

**Reviewed scope and currentness.** Complementary independent AppendixJ/L derivation; candidate finite-stage inputs remain explicit. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This note reconstructs Appendix J and Appendix L of the deposited 64-page response paper. It follows the printed curl-potential localization, the separate swirl, the complete momentum residual, and the compact time extension. The conclusions about the candidate's source retain the exact local-field hypotheses supplied by the cited manuscript [5]. They do not assume an endpoint velocity or pressure extension.

## 1. Primary-source identity and inputs

The deposited response PDF [33511468 v4](../SOURCES.md#S014) is 626,654 bytes, 64 pages, MD5 `fed4b334662f093d280d6b4ce8ecbb75`. The publication-build PDF has these same bytes. Its [mechanical text](../COVERAGE.md#A0259) contains Appendix J at LF3286–3348, printed pp55–56, and Appendix L at LF3546–3737, printed pp60–63.

The original [main source](../SOURCES.md#S006) is separately identified in the source and report indices. Appendix J is LF2493–2627; Appendix L's Borel construction is LF2630–2690. The included [localization source](../SOURCES.md#S008) is 190 LF.

Reference [5] is the manuscript named *Finite Time Blowup for Navier–Stokes*. Its recovered local [PDF](../SOURCES.md#S037) is 2,959,204 bytes, ; its [text](../SOURCES.md#S038) is separately identified in the source and report indices. This is an explicit local source witness; official remote byte identity has not been established by this verification.

The local inputs, read in [5, Theorem 3.1], text LF794–814, are precisely:

1. On \(\Omega_* =\{\tau>0,q<q_*\}\), \(v=\operatorname{curl}\mathcal A+B e_\theta\), with \(\mathcal A\) and \(B e_\theta\) smooth in Cartesian coordinates, including the axis, and \(B\) independent of angle.
2. Every fixed Cartesian space-time derivative of \(\mathcal A,B e_\theta,\pi\) is bounded on compact spatial sets with \(0<c\le q\le c'<q_*\), up to the one-sided boundary \(\tau=0\), with compatible limits.
3. On every fixed bounded \(X\)-range the local residual satisfies \(|\partial_x^\alpha\partial_t^j\mathcal R(v,\pi)|\le C_{\alpha,j,N,X_1}q^N\) for every fixed \(\alpha,j,N\).
4. For \(X\ge X_{\rm ext}\), \(\mathcal A=0\), \(B=K\), \(\pi=-\int_r^\infty K(\rho,\tau)^2\,d\rho/\rho\), and the residual is exactly zero. The pure swirl \(K e_\theta\) solves the stated radial heat equation with its centrifugal pressure.

Proposition 9.9, Steps 2–4, gives the actual summed representatives and explains the one-sided input. Its locally finite sums are \(\mathcal A=\mathcal A_0+\sum\chi(a_jq)\mathcal A_j\), \(B e_\theta=B_0e_\theta+\sum\chi(a_jq)B_j\), \(\pi=\pi_0+\sum\chi(a_jq)\pi_j\). For a fixed positive lower scale there are finitely many active terms; labels, rounded frequencies and representatives are fixed on the closed \(\tau\ge0\) parameter range; the coordinate conversion denominator is at least \(1-2h>0\). At the axis the potential has the Cartesian form \(a(r^2,z,t)(-x_2,x_1,0)\). These are the actual inputs of the localization argument. Direct source coverage is [5] text LF5949–6050, printed pp114–116; the earlier construction of those representatives and the summation lemma are not independently re-proved here.

## 2. Curl localization keeps the printed field

Let \(c=\chi_x\chi_t\) be the prescribed axisymmetric cutoff. The printed localization is
\[
u=\operatorname{curl}(c\mathcal A)+cB e_\theta=cv+w,
\qquad w=\nabla c\times\mathcal A,
\qquad p=c\pi.
\tag{RL1}
\]
The swirl is multiplied directly. The curl is taken after cutting off the printed potential; no additional swirl potential is introduced. Since \(cB\) is angle-independent,
\[
\nabla\cdot u=\nabla\cdot\operatorname{curl}(c\mathcal A)
+r^{-1}\partial_\theta(cB)=0.
\tag{RL2}
\]
The cutoff margin inside \(q<q_*\), Cartesian regularity and the compact support give smooth zero extension outside the spatial support for every \(t<1\).

Define \(\mathcal R_\nu(v,\pi)=v_t+(v\cdot\nabla)v-\nu\Delta v+\nabla\pi\) and the actual source \(f=\mathcal R_\nu(u,p)\). Expanding RL1 gives the **entire** additional residual:
\[
\begin{aligned}
f-c\mathcal R_\nu(v,\pi)={}&(c_t-\nu\Delta c)v
-2\nu\sum_{i=1}^3(\partial_i c)\partial_i v+\pi\nabla c\\
&+(c^2-c)(v\cdot\nabla)v+c(v\cdot\nabla c)v\\
&+w_t-\nu\Delta w+c(v\cdot\nabla)w\\
&+c(w\cdot\nabla)v+(w\cdot\nabla)w.
\end{aligned}
\tag{RL3}
\]
For example, the self-advection of \(cv\) is \(c^2(v\cdot\nabla)v+c(v\cdot\nabla c)v\). The other apparent product \((w\cdot\nabla c)v\) is zero because \((\nabla c\times\mathcal A)\cdot\nabla c=0\). Every remaining term belongs to \(f\). On a neighborhood where both cutoffs are one, RL3 vanishes; on a neighborhood where they are zero, the localized fields vanish. The extra source is on the cutoff transitions.

Taking divergence of the full forced equation gives
\[
-\Delta p=\partial_i\partial_j(u_i u_j)-\nabla\cdot f.
\tag{RL4}
\]
The force-divergence contribution is therefore retained. This source need not be divergence free. The localized pressure is not being replaced by a pressure computed from the unforced Poisson equation.

Sources: response localization LF1–37; [5] Proposition 10.1 and (10.4)–(10.5), text LF6109–6144, printed p118.

## 3. All three exterior source components are present

Near terminal time in the heat exterior, \(\mathcal A=0\), \(v=K e_\theta\), and \(\chi_t=1\). The uncut swirl has \((v\cdot\nabla)v=-K^2e_r/r\), \(\partial_r\pi=K^2/r\), and its azimuthal heat equation cancels diffusion. Therefore RL3 reduces to
\[
\begin{aligned}
f={}&\left[\chi_x(1-\chi_x)\frac{K^2}{r}
+\pi\partial_r\chi_x\right]e_r
+\pi\partial_z\chi_x\,e_z\\
&-\nu\left[2(\partial_r\chi_x)K_r
+K(\partial_{rr}\chi_x+r^{-1}\partial_r\chi_x
+\partial_{zz}\chi_x)\right]e_\theta.
\end{aligned}
\tag{RL5}
\]
The radial component includes both centrifugal mismatch and the pressure cutoff; the axial component is the pressure cutoff; the azimuthal component is the diffusion of the tapered swirl. None is discarded in the force-jet estimates.

Source: response localization LF39–56, deposited equation (193), printed p60.

## 4. The finite-order estimate and actual transition geometry

For \(\gamma\in\mathbb N_0^4\), counting three spatial and one temporal coordinate, put
\[
\mathcal J_m(F;\Sigma)=\sum_{|\gamma|\le m}
\frac{\|\partial^\gamma F\|_{L^\infty(\Sigma)}}{\gamma!}.
\tag{RL6}
\]
The multinomial product rule gives \(\mathcal J_m(FG)\le\mathcal J_m(F)\mathcal J_m(G)\), and \(\mathcal J_m(\partial_iF)\le(m+1)\mathcal J_{m+1}(F)\). These are finite sums at each order.

Set \(C_m=\mathcal J_m(c)\), \(V_m=\mathcal J_m(v)\), \(A_m=\mathcal J_m(\mathcal A)\), \(P_m=\mathcal J_m(\pi)\) and
\[
U_m=C_mV_m+3(m+1)C_{m+1}A_m.
\tag{RL7}
\]
Then \(\mathcal J_m(u)\le U_m\), \(\mathcal J_m(p)\le C_mP_m\). Applying RL6 to the actual full momentum residual gives
\[
\begin{aligned}
\mathcal J_m(f)\le{}&(m+1)U_{m+1}
+3(m+1)U_mU_{m+1}\\
&+3\nu(m+1)(m+2)U_{m+2}
+3(m+1)C_{m+1}P_{m+1}.
\end{aligned}
\tag{RL8}
\]
The factors three pay the spatial component sums. This supplies all finite source derivatives once the transition field jets are bounded; it does not demand a common constant over all orders.

The actual support and coordinate relations provide those bounds:
\[
\chi_x=1\text{ for }r\le r_0/2,\ |z|\le z_0/2;
\quad\tau=q(1-\eta^2),\quad z=q^D\eta,
\quad X=\frac{r^2}{2q},\quad |\eta|\le1,\quad D=\tfrac12-h>0.
\tag{RL9}
\]
Each spatial transition has either \(|z|\ge z_0/2\), giving \(q\ge(z_0/2)^{1/D}\), or \(r\ge r_0/2\). In the latter case an interior correction with \(X\le X_{\rm ext}\) has \(q\ge r_0^2/(8X_{\rm ext})\). Those regions thus lie in a fixed positive-scale range, with \(q<q_*/2\), where input 2 bounds every fixed jet of the actual representatives.

If instead \(q\downarrow0\) on the remaining radial transition, then \(r\ge r_0/2\) and \(X\ge X_{\rm ext}\). It is the exact heat exterior. The integral formula supplies
\[
|\partial_\tau^jK|\le C_jr^{-1-2h-2j},\qquad
|\partial_\tau^j\pi|\le\frac{C_j}{2+4h+2j}r^{-2-4h-2j}.
\tag{RL10}
\]
The pressure estimate integrates its \(\rho^{-3-4h-2j}\) majorant to infinity. Further spatial derivatives are bounded at positive radius. Temporal-cutoff derivatives occur only for \(\tau_0/2\le\tau\le\tau_0\), hence \(q\ge\tau_0/2\), and are again in the positive-scale region.

Finally near the proposed singular point the cutoffs equal one, so \(f\) is the local residual. Input 3 gives all-orders flatness on \(X\le X_{\rm ext}\); input 4 gives exact zero outside. This covers the remaining region without a bound on singular velocity derivatives there.

Sources: response localization LF58–157; [5] Theorem 3.1(ii)–(iii), Proposition 9.9 Steps 3–4, Lemma 10.2, text LF6005–6050 and LF6152–6229; the heat derivative integral is [5, (A.32)–(A.35)], text LF7173–7197, printed p138.

## 5. Compatible force limits and finite mixed Sobolev coordinates

Combining these regions with RL8 gives, for every **fixed finite** \(\alpha,j\),
\[
\sup_{x,\ 0\le t<1}|\partial_x^\alpha\partial_t^j f(x,t)|<\infty.
\tag{RL11}
\]
One additional time derivative makes the preceding jet uniformly Lipschitz in time and hence uniformly Cauchy as \(t\uparrow1\). Spatial derivative limits are identified by passing to the limit in the fundamental theorem along coordinate segments. There are therefore compatible \(F_j\in C_c^\infty(K;\mathbb R^3)\), all with the same fixed compact support, such that
\[
\partial_x^\alpha\partial_t^jf(\cdot,t)\longrightarrow\partial_x^\alpha F_j
\quad\text{uniformly on }\mathbb R^3.
\tag{RL12}
\]
In the cited source, all these limits are flat at the spatial origin. Flatness at that point does not assert that the whole terminal force field is zero.

Let \(M_{N,M}=\max_{j\le N,|\alpha|\le M}\sup_{x,t<1}|\partial_x^\alpha\partial_t^j f|\). The coefficients of the integer Fourier weight \((1+\xi_1^2+\xi_2^2+\xi_3^2)^M\) are nonnegative and sum to \(4^M\). Fixed support then gives the actual finite source-coordinate estimate
\[
\sum_{j=0}^N\|\partial_t^jf\|_{L^2(0,1;H^M)}^2
\le(N+1)4^M|K|M_{N,M}^2<\infty.
\tag{RL13}
\]
This is about source coordinates, not velocity or pressure endpoint membership. Its inputs are the local residual and one-sided representative assertions itemized in §1.

Sources: response localization LF154–188, deposited (195)–(196), printed pp62–63; [5] Lemma 10.2, (10.6), (10.9)–(10.10), text LF6152–6229.

## 6. The compact Borel extension realizes those very jets

Choose \(\chi_0\in C_c^\infty(\mathbb R)\), equal to one near zero and zero for arguments at least one. For \(\sigma=t-1\ge0\), define
\[
f(x,1+\sigma)=\sum_{j\ge0}\chi_0(b_j\sigma)\frac{\sigma^j}{j!}F_j(x),
\qquad b_0=1.
\tag{RL14}
\]
The complete derivative, before estimating, is
\[
\partial_\sigma^m\left[\chi_0(b_j\sigma)\frac{\sigma^j}{j!}\right]
=\sum_{\ell=\max(0,m-j)}^m
\binom m\ell b_j^\ell\chi_0^{(\ell)}(b_j\sigma)
\frac{\sigma^{j-m+\ell}}{(j-m+\ell)!}.
\tag{RL15}
\]
On its support \(\sigma\le b_j^{-1}\), so the factor \(b_j^\ell\sigma^{j-m+\ell}\) is at most \(b_j^{m-j}\). Thus the mixed derivative is bounded by
\[
C_{j,m}b_j^{m-j}\|F_j\|_{C^{|\alpha|}},\quad
C_{j,m}=\sum_{\ell=\max(0,m-j)}^m
\binom m\ell\frac{\|\chi_0^{(\ell)}\|_\infty}{(j-m+\ell)!}.
\tag{RL16}
\]
For each \(j\ge1\), choose \(b_j>b_{j-1}\) so RL16 is at most \(2^{-j}\) for all \(|\alpha|+m\le\lfloor j/2\rfloor\). There are finitely many such constraints, and each has exponent \(m-j<0\); therefore such a choice exists whatever the growth of the finite norms \(\|F_j\|_{C^{|\alpha|}}\).

For a fixed mixed derivative, the tail starting at \(j\ge\max\{1,2(|\alpha|+m)\}\) converges uniformly. At \(\sigma=0\), only \(j=m\) contributes to the \(m\)-th temporal derivative, giving \(F_m\). This matches RL12, including every spatial derivative. All terms have spatial support in \(K\) and vanish for \(\sigma\ge1\); uniform differentiated convergence proves smoothness at both support boundaries. Together with the initial interval of rest, this gives
\[
f\in C_c^\infty(\mathbb R^3\times(0,\infty);\mathbb R^3),
\qquad\operatorname{supp}f\subset K\times[0,2],
\tag{RL17}
\]
whose restriction to \(t<1\) is the complete actual localized momentum residual. This extends the force; it does not continue the candidate velocity by prescribing arbitrary velocity jets.

Sources: response main LF2630–2690, deposited (197)–(198), printed p63; exact parallel operation [5] Lemma 10.3, (10.11)–(10.12), text LF6236–6284, printed p120.

## 7. The exterior has nonzero projected terminal force jets

Appendix J works first at viscosity one. Its exact heat field is
\[
K(r,t)=2^A\kappa r^{-2A}H(4(1-t)/r^2),
\quad A=\tfrac12+h,\quad 0<h<1/100,\quad\kappa>0.
\tag{RJ1}
\]
The heat integral is \(H(Z)=\Gamma(1+h)^{-1}\int_0^\infty e^{-v}v^h(1+Zv)^{-h}\,dv\). Differentiating under its integrable majorant gives \(H^{(j)}(0)=(-1)^j(h)_j(1+h)_j\), hence
\[
K_j(r):=\partial_t^jK(r,1)
=2^A\kappa4^j(h)_j(1+h)_j r^{-1-2h-2j}>0.
\tag{RJ2}
\]
These are finite-order derivatives on the one-sided heat domain; no convergent Taylor series is needed.

There is a connected fixed rectangle \(\Omega=(r_0/4,2r_0)\times(-\varepsilon,\varepsilon)\) in the heat exterior for all sufficiently late times. Indeed \(q\le C_0(1-t+|z|^{1/D})\). Choose
\(q_b=\min\{q_*/2,r_0^2/(64X_{\rm ext})\}\) and \(C_0(\eta+\varepsilon^{1/D})<q_b\), \(\varepsilon<z_0/2\). Then \(X>2X_{\rm ext}\) on \(\Omega\) for \(1-\eta<t<1\).

Pressure has no azimuthal component there and pure-swirl advection is radial. RL5's azimuthal component at \(\nu=1\) is
\[
f_\theta=-K(\chi_{rr}+r^{-1}\chi_r+\chi_{zz})-2K_r\chi_r.
\tag{RJ3}
\]
Since \(K_j'/K_j=-(1+2h+2j)/r\), the actual terminal force row obeys
\[
(F_j)_\theta=-K_j\left(\chi_{rr}+\chi_{zz}
-\frac{1+4h+4j}{r}\chi_r\right).
\tag{RJ4}
\]
If this vanished on all of \(\Omega\), \(\chi\) would solve a uniformly elliptic equation with bounded drift there. The cutoff has \(0\le\chi\le1\), attains its maximum one at the interior point \((3r_0/8,0)\), and is zero at the interior point \((3r_0/2,0)\). The strong maximum principle on connected \(\Omega\) excludes these two values for such a solution. Thus \((F_j)_\theta\) is nonzero somewhere.

Choose \(\psi\in C_c^\infty(\Omega)\) supported where it has a strict sign. The Cartesian field \(w=\psi(r,z)e_\theta\) is smooth, supported away from the axis, and divergence free. Choose its sign so that
\[
(\mathbb PF_j,w)=(F_j,w)
=2\pi\int(F_j)_\theta\psi\,r\,dr\,dz>0.
\tag{RJ5}
\]
Consequently \(\mathbb PF_j\not\equiv0\) for every finite \(j\). Viscosity rescaling \(f_\nu(x,t)=\sqrt\nu f(x/\sqrt\nu,t)\) commutes with the Leray projection and preserves the conclusion. The result concerns the surrounding cutoff region and is compatible with RL12's source flatness at the spatial origin.

At \(j=0\), let the positive pairing in RJ5 be \(d\). Exterior continuity on the fixed test support gives \((f(t),w)\ge d/2\) on a late interval. Every pressure gradient pairs to zero with \(w\). Hence, for every admissible pressure adjustment and integer \(m\ge0\), the corresponding unforced momentum residual has
\[
\|\mathcal R_q(t)\|_{H^m}\ge\frac{d}{2\|w\|_{H^{-m}}}>0.
\tag{RJ6}
\]
This is the actual Appendix J conservative-force obstruction. It neither states a sign for total source work nor replaces the complete force by its azimuthal component when estimating the source class.

Sources: response main LF2493–2627; deposited (179)–(184), printed pp55–56; [5] heat (A.32)–(A.35), text LF7173–7197, and localization (10.3)–(10.5), LF6115–6144.

## 8. What has been established in this bounded reading

The full localization algebra RL1–5, finite-jet inequalities RL6–8, actual transition geometry and heat bounds RL9–10, compatible source traces RL11–13, compact jet realization RL14–17, and exterior projected nonvanishing RJ1–6 have been executed. The local summation/flatness assertions of [5, Theorem 3.1] remain the stated upstream inputs. Their exact local source and the producing explanation in Proposition 9.9 have been read; the earlier finite-stage construction is outside this appendix reconstruction. The distinction matters: the response derives smooth force admission under those inputs, while a terminal velocity extension is a separate consumer of the Navier–Stokes papers' whole-terminal velocity rectangles.

No source, earlier report, checker or existing baseline was edited.
