# RPT.24: exact coefficient, actual local solutions, and direct consumers

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Canonical actual-family derivation uses the paper's H3 map and its exact constants; prefer it over the earlier WC23a H4-map presentation. This coefficient correction is not an unrestricted-terminal obstruction. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


The literal RPT.24 combined estimate is false with the universal Sobolev/Young constant supplied by RPT.23. The error is the combination of a separate stock supremum and a complete action with only one copy of their common bound. A factor-two correction suffices. Its directly checked consumers use the finiteness equivalence RPT.25, which survives; the adaptive reciprocal-tail payment uses the exact critical identity and is also unchanged.

The contradiction below uses the paper's actual pressure-normalized local fixed point, including its full nonlinear Duhamel term. It does not replace Navier–Stokes by a heat trajectory. This is a bounded mathematical correction and consumer check, not a terminal-proof obstruction.

## 1. Exact source definitions and printed implication

The original [BPF.1–4 LF18–49](../SOURCES.md#S316) fixes the unforced whole-space equation, smooth Sobolev datum and definitions
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\qquad \nabla\cdot u=0,\qquad
E_s(t)=\tfrac12\|\Lambda^su(t)\|_2^2,
\]
\[
\mathcal P_s=-\langle\Lambda^su,\Lambda^s[(u\cdot\nabla)u+\nabla p]\rangle,
\qquad E_s'+2\nu E_{s+1}=\mathcal P_s.
\tag{RD1}
\]
[TIR.7–9 LF208–232](../SOURCES.md#S160) agrees and denotes the critical stock by \(H(t)=E_{1/2}(t)\). This stock is distinct from RPT's calligraphic time-square. [RPT.19 LF240](../SOURCES.md#S219) defines
\[
E=E_{1/2}=\tfrac12\|\Lambda^{1/2}u\|_2^2,\quad
D=\|\Lambda^{3/2}u\|_2^2=2E_{3/2},\quad
Z=\|\nabla u\|_2^2,\qquad
\mathcal H(T)=\int_0^T Z(t)^2dt.
\tag{RD2}
\]
All calculations below are on a strict smooth prefix \(0<T<T_*\), with finite candidate terminal horizon when a terminal supremum is considered. There is no assumed endpoint trace in these inequalities.

[RPT.22–23 LF273–292](../SOURCES.md#S219) gives
\[
E'+\nu D=P,\qquad
|P|\le\|u\|_6\|\nabla u\|_2\|\Lambda u\|_3
\le a_0Z\sqrt D
\le\frac\nu2D+\frac C\nu Z^2,
\tag{RD3}
\]
where \(a_0=S_6S_3\) is the product of the fixed Sobolev constants and an admissible final constant is \(C=a_0^2/2\). The Leray projector is retained in \(Q=-\mathbb P[(u\cdot\nabla)u]\); self-adjointness on the divergence-free receiver gives \(P=\langle Q,\Lambda u\rangle\). The constant at this step comes from Hölder, fixed Sobolev embeddings and Young. No datum factor or amplitude dependence is introduced in the source. As usual the source reuses the letter \(C\) between these inequalities; here \(C\) means the fixed final Young constant.

The literal printed [RPT.24 LF298–302](../SOURCES.md#S219) is
\[
\boxed{\sup_{0<t<T}E(t)+\frac\nu2\int_0^T D(t)dt
\le E(0)+\frac C\nu\mathcal H(T).}
\tag{RD4: printed RPT.24}
\]

## 2. Exact integration and a safe correction with the same constant

Integrating RD3 at one time gives, with precisely the same \(C\),
\[
E(t)+\frac\nu2\int_0^tD
\le B(t),\qquad
B(t):=E(0)+\frac C\nu\mathcal H(t).
\tag{RD5}
\]
Since \(B\) is increasing, \(\sup_{t<T}E(t)\le B(T)\). At the final strict time, \((\nu/2)\int_0^TD\le B(T)-E(T)\). Therefore the correct combination is
\[
\boxed{\sup_{t<T}E(t)+\frac\nu2\int_0^TD
\le2B(T)-E(T)\le2E(0)+\frac{2C}{\nu}\mathcal H(T).}
\tag{RD6}
\]
The separate supremum and final action need not attain their values at the same time. RD5 does not imply RD4. RD6 is a sufficient correction, not a claim that factor two is an optimal initial-stock coefficient.

The converse estimate follows directly from Fourier Cauchy–Schwarz:
\[
Z^2\le\|\Lambda^{1/2}u\|_2^2D=2ED,\qquad
\mathcal H(T)\le2(\sup_{t<T}E(t))\int_0^TD.
\tag{RD7}
\]
Consequently the exact finiteness statement [RPT.25 LF305–313](../SOURCES.md#S219) remains valid:
\[
\sup_{T<T_*}\mathcal H(T)<\infty
\quad\Longleftrightarrow\quad
\sup_{t<T_*}E(t)+\nu\int_0^{T_*}D(t)dt<\infty.
\tag{RD8}
\]
The action coefficient on the right does not change finiteness; \(D=2E_{3/2}\) matches the source exactly.

The direct quantitative prefix consequence, using RD5 at that same time, is
\[
A(t):=\int_0^tP=E(t)-E(0)+\nu\int_0^tD
\le E(0)+\frac{2C}{\nu}\mathcal H(t)-E(t).
\tag{RD8a}
\]
Thus a proved uniform \(\mathcal H_*\) supplies BPF.6 with \(C_*=E(0)+(2C/\nu)\mathcal H_*\), and BPF.8 with \(\mathcal B_*=2E(0)+(2C/\nu)\mathcal H_*\). The independently checked BPF.12–14 LF201–255 then uses \(\Gamma_m=K_m^2\mathcal B_*/\nu^2\) in its spatial row. These constants change quantitatively; the same conditional implication remains. This does not produce \(\mathcal H_*\).

## 3. Actual admitted local NS family, using the paper's own map

Use the original [unforced analytic framework, LF596–621](../SOURCES.md#S136), which defines the pressure-normalized \(H^3\) mild class by
\[
u(t)=S_tu_0+\int_0^tS_{t-q}Q(u(q))dq,\quad
S_t=e^{\nu t\Delta},\quad
p(t)=R_iR_j(u_i(t)u_j(t)).
\tag{RD9}
\]
The source's [LF284–294](../SOURCES.md#S136) explicitly proves
\[
\mathbb P\nabla\cdot(u\otimes u)=(u\cdot\nabla)u+\nabla p,\qquad
-\Delta p=\partial_i\partial_j(u_iu_j).
\]
Thus RD9 retains the complete pressure-normalized nonlinear equation.

Fix any nonzero real divergence-free Schwartz \(v\), \(\nu>0\), and put \(V=\|v\|_{H^3}\). For example \(v=\nabla\times(0,0,e^{-|x|^2})=(-2x_2e^{-|x|^2},2x_1e^{-|x|^2},0)\) is admissible. No cancellation of \(Q(v)\) is assumed. [The paper's local theorem LF662–694](../SOURCES.md#S136) fixes
\[
C_q=\sqrt3C_3^{alg},\quad
L_\nu=4(1+\nu+\nu^{-1})e^{(\nu+\nu^{-1})/2},\quad
c_\nu=(8C_qL_\nu^2)^{-2}.
\]
Choose once
\[
0<T<\min\{1,c_\nu(1+V)^{-2}\},\qquad 0<\alpha\le1,\qquad u_0=\alpha v.
\tag{RD10}
\]
Since \(\|\alpha v\|_{H^3}=\alpha V\le V\), the same interval is admitted for every such \(\alpha\). The source's Banach space is
\[
X_T=C([0,T];H^3_\sigma)\cap L^2(0,T;H^4_\sigma),
\qquad u_t\in L^2(0,T;H^2_\sigma),
\]
with the sum norm. Its [linear estimate LF699–787](../SOURCES.md#S136) gives \(\|z\|_{X_T}\le L_\nu(\|z(0)\|_{H^3}+\|F\|_{L^2H^2})\). The inhomogeneous lower-order term is retained in that energy derivation. Its [product and contraction proof LF790–857](../SOURCES.md#S136) uses
\[
\|Q(u)\|_{H^2}\le C_q\|u\|_{H^3}^2,\qquad
R_\alpha=2L_\nu\alpha V,\qquad
\|u_\alpha\|_{X_T}\le R_\alpha.
\]
Apply that same zero-datum linear estimate to the **actual** remainder \(r_\alpha=u_\alpha-\alpha S_tv\). Its full source is \(Q(u_\alpha)\), not zero:
\[
\|r_\alpha\|_{X_T}
\le L_\nu C_q\sqrt T\,R_\alpha^2
=4C_qL_\nu^3\sqrt T\,V^2\alpha^2.
\tag{RD11}
\]
Hence \(u_\alpha=\alpha S_tv+O(\alpha^2)\) in \(C_tH^3\), uniformly on this fixed interval. The pressure is the actual \(p_\alpha=R_iR_j(u_{\alpha,i}u_{\alpha,j})=O(\alpha^2)\); it is included inside \(Q(u_\alpha)\). The source's \(H^\infty\) bootstrap LF684–688 admits this Schwartz datum as a smooth history with its full time jets on the same local interval. Thus these are actual admitted classical solutions, without an extra \(H^4\) fixed-point construction.

## 4. Contradiction to the literal coefficient and its sharpness scope

Continuity at zero implies \(\sup_{0<t<T}E_\alpha(t)\ge E_\alpha(0)\), even though the supremum interval is open. RD11 controls both \(\Lambda^{3/2}r_\alpha\) and \(\nabla r_\alpha\), so
\[
\frac\nu2\int_0^TD_\alpha(t)dt
=\alpha^2c_T+O(\alpha^3),\qquad
c_T:=\frac\nu2\int_0^T\|\Lambda^{3/2}S_tv\|_2^2dt>0,
\]
\[
\mathcal H_\alpha(T)=O(\alpha^4).
\tag{RD12}
\]
Positivity of \(c_T\) follows from \(v\ne0\) and the heat multiplier; no nonzero finite-energy field is supported solely at Fourier frequency zero. All constants in these error estimates may depend on the fixed \(v,\nu,T\), but are independent of \(\alpha\). The source's \(C\) in RD4 is fixed independently of the datum amplitude.

Thus the left side of printed RD4 minus its right side is at least
\[
\alpha^2c_T-O(\alpha^3)-\frac C\nu O(\alpha^4)>0
\qquad\text{for sufficiently small }\alpha>0.
\tag{RD13}
\]
This disproves RD4 on the actual family generated by RD9–11. The heat path is only its rigorously quantified first-order term; the full nonlinear and pressure response is retained in the error estimate.

For precision about the required coefficient, write \(E_v(t)=\frac12\|\Lambda^{1/2}S_tv\|_2^2\). The exact linear heat energy identity gives \(c_T=\frac12[E_v(0)-E_v(T)]\). A putative universal estimate with initial-stock coefficient \(a\) and fixed finite \(C\), but the same action coefficient \(\nu/2\), must therefore satisfy
\[
a\ \ge\ \frac32-\frac{E_v(T)}{2E_v(0)}
\quad\text{for each such fixed }v,T.
\tag{RD14}
\]
In particular \(a=1\) fails. The necessary factors approach \(3/2\) within the admitted local class: for \(\lambda\ge1\), \(v_\lambda(x)=\lambda^{-3/2}v(\lambda x)\) is still real solenoidal Schwartz, with \(\|v_\lambda\|_{H^3}\le\|v\|_{H^3}\). The same \(T\) in RD10 is therefore admissible. Its heat-stock ratio is
\[
\frac{E_{v_\lambda}(T)}{E_{v_\lambda}(0)}
=\frac{\int|\eta|e^{-2\nu T\lambda^2|\eta|^2}|\widehat v(\eta)|^2d\eta}
{\int|\eta||\widehat v(\eta)|^2d\eta}\longrightarrow0.
\tag{RD15}
\]
For each fixed \(\lambda\), choose the actual NS amplitude \(\alpha\) small enough for RD13's expansion. Thus any universal initial-stock coefficient smaller than \(3/2\) also fails with a fixed finite residual constant. This does not establish attainment at \(3/2\) with the printed \(C\), and does not claim the sufficient factor two in RD6 is sharp.

## 5. Direct consumers and effect of the correction

The following table is based on the original passages themselves. It separates a numerical consumer, a finiteness consumer, and a referenced prerequisite.

| Actual passage | Exact dependency and result after correction |
|---|---|
| RPT.25 LF305–318 | Directly follows RPT.24 in the text. Its conclusion is finiteness equivalence, not the printed coefficient. RD6–8 prove exactly that conclusion. |
| RPT.26–28 LF320–346 | Fixed-\(N\) supremum, parent/output ratio and dilation identities. These do not use RPT.24. |
| RPT.29 LF349–367 | Uses fixed-prefix \(\mathcal H(T)<\infty\) and the surviving RPT.25 equivalence to discuss terminal-supremum order. Its outgoing references to PRM.32j/.37–46 are governing parent-kernel and heat-insertion operations, not consumers of the faulty coefficient. Its fixed-depth warning does not invalidate the separately verified adaptive record-depth payment. |
| RPT.30 LF371–391 | Its \(L_t^1\dot H^{1/2}\) decay is supplied by RPT.13–15 and kinetic energy. The subsequent critical time-square discussion invokes the surviving equivalence. No numerical coefficient from RPT.24 is required. |
| [DCL.12 LF168–175](../SOURCES.md#S206) | Explicitly cites RPT.25 and displays the finiteness equivalence. It remains valid. |
| [RPR discussion LF413–417](../SOURCES.md#S235) | RPR.29's actual \(L^1\) tail budget comes from energy. Its subsequent time-Cauchy discussion cites RPT.25 only as the critical finiteness interface. |
| [TIR summary LF1179–1187](../SOURCES.md#S160) | Summarizes the independently valid energy tail and the surviving time-square equivalence. It does not reproduce RPT.24's numeric bound. |
| [BPF.7–9 LF73–98](../SOURCES.md#S316) | Starts from the exact signed-prefix identity and gives separate stock and action estimates. It does not require RPT.24. The later conditional bootstrap remains subject to its actual paid-prefix antecedent. |

The fresh targeted searches in these sources identify no external literal RPT.24 citation. That is a bounded source-search statement, not a claim that no other note could cite it.

The [supporting adaptive calculation WR4–12](A0703-ww-reciprocal-first-prefix-execution-20261006.md) likewise uses the exact first-hit identity \(E(t)+\nu\int_0^tD=E(0)+\int_0^tP\), not RD4. It yields \(\mathcal H(t_n)\le2(E(0)+A_n)^2/\nu\); with the actual composite-parent bounds this pays the reciprocal tail at \(N_n\asymp A_n^{1+\eta}\). The correction leaves that actual gain and its complete retained source/cap/ramp law unchanged.

## 6. Explicit PRM/FIH prerequisites and legacy SH custody

[RPT's opening LF11–15 and source density LF39–65](../SOURCES.md#S219) refers to PRM/BPF and to legacy SH.218. [PRM LF5/219/287/421](../SOURCES.md#S229) refers to SH.251–258. These are antecedent references, not deductions from RPT.24.

The mathematical operations they require are explicitly present in the recovered sources. PRM.1–17 LF21–215 displays the complete parent law \(\Theta_a'=-\delta_a\Theta_a+N_a\), response \(z'=\gamma(g-z)\), reciprocal kernels and both nonlinear parent insertions. PRM.24 LF325–331 gives the zeroth kernel identity, and PRM.32a–c LF424–453 supplies its response completion. With \(f_a=(\gamma+\delta_a)^{-1}\), \(X=\int f_a\Theta_a\), \(c,\gamma>0\), direct heat representation gives
\[
C_0=\frac{\gamma c}{2}\|X\|^2+
\gamma^2c\int_0^\infty\left\|\int e^{-s\delta_a}f_a\Theta_a\,da\right\|^2ds,
\]
\[
K_2=\frac{c}{2\gamma}\|z+\gamma X\|^2+
\gamma^2c\int_0^\infty\left\|\int e^{-s\delta_a}f_a\Theta_a\,da\right\|^2ds
\ge0,\qquad K_2'=R_{NL,0}-c\|z\|^2.
\tag{RD16}
\]
Here \(R_{NL,0}\) is the explicit signed sum of \(c\langle z,\mathcal N_0\rangle\) and the two-parent covariance in PRM.15–17. This is the cited SH balance rederived from the actual displayed PRM definitions. It does not assume the residual is upper-paid and has no dependency on RPT.24.

RD16 uses PRM's same-source response \(z\). It is not transplanted to the full-current readout \(\nu\Lambda u\) paired with a selected remaining parent: that actual operation retains the full-minus-selected source mismatch displayed in [WR13–18](A0703-ww-reciprocal-first-prefix-execution-20261006.md).

PRM.32e–j LF475–547 joins the finite PSD parent kernels and retains the current weight \((1+d)(1-r^N)\), distinct from the original zeroth current. PRM.35–38 LF616–661 gives
\[
C_\infty=c\int_0^\infty\|G_s\|^2ds,\qquad
C_\infty'=-c\|g\|^2+2c\operatorname{Re}\int_0^\infty\langle\mathcal N_s,G_s\rangle ds.
\tag{RD17}
\]
Neither positivity nor its full signed derivative uses the RPT.24 coefficient. The actual critical raw-source weight is explicitly identified in [FIH.18–19 LF255–269](../SOURCES.md#S212): \(W=\nu^{-1}\Lambda^{-1}\), giving \(\nu^{-1}\|\Lambda^{-1/2}Q\|_2^2\).

Its sufficient-response relation can also be executed directly without assuming a legacy label: RPT.5 gives \(z=\nu\Lambda r\), \(r=u-S_tu_0\), and the actual equation \(r_t+\nu\Lambda^2r=Q(u)\), \(r(0)=0\). The full critical test and Young inequality imply
\[
\|\Lambda^{1/2}r(t)\|_2^2+\nu\int_0^t\|\Lambda^{3/2}r\|_2^2
\le\frac1\nu\int_0^t\|\Lambda^{-1/2}Q(u)\|_2^2.
\tag{RD17a}
\]
The finite datum heat stock/action then recovers those of \(u\). This proves the stated stronger source-square sufficiency with the complete nonlinear pressure source; it does not estimate that source square from the datum, and does not use RPT.24.

[FIH.11–17 LF170–249](../SOURCES.md#S212) directly derives \((\partial_t-\partial_s)G_s=\mathfrak N_s\), retains the far-heat term at a fixed heat edge, and at the moving triangle gives
\[
\int_0^\tau\|W^{1/2}Q(u(t))\|_2^2dt
=\int_0^\tau\|W^{1/2}Q(S_su_0)\|_2^2ds
+2\int_0^\tau\int_0^{\tau-t}\operatorname{Re}\langle W\mathfrak N_s,G_s\rangle dsdt.
\tag{RD18}
\]
Both pressure-complete insertion orders and the original heat defect remain. FIH.14 LF203–215 explicitly identifies its positive heat-age storage with PRM.35–37; FIH.20 LF272–288 distinguishes the source-square upper payment from the defining identity. These operations remain unchanged by RD6.

Targeted defining-label searches in the authorized NS problem/paper/public-source subtrees and the four recovered original NS attachments did not locate a separate original file defining literal SH.218–223/.251–258. Its exact legacy filename provenance is therefore not claimed recovered. The required formulas above are explicitly acquired and verified in RPT/PRM/FIH; this provenance limitation is not used as evidence of a missing mathematical operation or as an access blocker for the present coefficient/consumer check.

## 7. HPF/UAL conditional route and completed coverage

[HPF.39–42 LF496–553](../SOURCES.md#S319) and [UAL.97–98 LF1018–1050](../SOURCES.md#S320) do not consume RPT.24. Their actual sufficient antecedent is a shell contraction for tail-weighted \(b_j=\lambda_j\sum_{p\ge j}m_p\), with a uniform independently paid nonnegative residual, or the specified stronger moment for the actual record-carrying label measure. Their finite telescoping retains \(b_{N+1}\) and the first-moment Abel boundary. The factor-two repair supplies no such antecedent and changes none of these source identities or quantifiers.

Fresh mathematical coverage in this report is: RPT.19/.22–30 and its defining causal-response equation; BPF.1–14 and TIR.7–9 definitions/exact critical balance; the original analytic framework's pressure identity, \(H^3\) local class, linear/product/map constants and \(O(\alpha^2)\) remainder; the three direct finiteness-consumer passages; PRM.1–17/.24/.32a–j/.35–46b and its relation to FIH.11–20/.23–25; the cited HPF/UAL candidate quantifiers. Earlier full mixed/restart and selected-response executions remain in their own reports and are not counted as newly executed here.

The literal combined coefficient is disproved on actual admitted NS histories, and RD6 repairs it with the same fixed \(C\). The checked finiteness consumers and adaptive-depth output survive. No conclusion about the unrestricted terminal producing step follows from this local coefficient correction.
