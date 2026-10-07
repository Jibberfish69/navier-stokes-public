# Absolute payment of the complete critical receiver split at fixed output

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. Independent verification on the actual Navier–Stokes history. The three self, full and heat-defect receiver insertions are each absolutely integrable over the entire finite physical-time horizon and every heat age at each fixed output cutoff R. Their small-age contributions vanish uniformly as O(ε¹ᐟ⁴). Both ordered pressure-complete parents remain throughout. Original sources and previous reports are unchanged.

## 1. Source definitions and original kinetic input

Fix ν>0 and a finite T≤T*. Let u be its actual classical history on strict prefixes, and put

\[
 S_s=e^{-\nu s\Lambda^2},\quad v_s=S_su(t),\quad
 Q(u)=-P((u\cdot\nabla)u),\quad
 G_s=Q(v_s),\quad H_s=S_sQ(u),\quad D_s=H_s-G_s.
\]

These are the original [FIH.2–5, LF43–94](../SOURCES.md#S212). The variable s is auxiliary heat age of the current velocity; it is not a separately prescribed path. Every field v_s,G_s,H_s,D_s is solenoidal. For each Z_s∈{G_s,H_s,D_s}, retain the complete receiver insertion

\[
 N_Z=DQ(v_s)[Z_s]
     =-P((Z_s\cdot\nabla)v_s)-P((v_s\cdot\nabla)Z_s). \tag{1}
\]

Thus N_H=N_G+N_D exactly before absolute values. The two ordered legs are distinct, as in [FIH.6–10, LF97–162](../SOURCES.md#S212).

Let Π_R be the Fourier output projection 1_{|k|≤R}, R>0, and

\[
 W_R=\nu^{-1}\Lambda^{-1}\Pi_R,\qquad
 j_Z(t,s)=2\operatorname{Re}\langle W_RN_Z,G_s\rangle. \tag{2}
\]

Π_R is distinct from the Leray pressure projector P. The bound also holds for a multiplier between zero and one supported in this output ball. The critical weight ν⁻¹Λ⁻¹ is the original [FIH.18–19, LF255–269](../SOURCES.md#S212).

Use the actual kinetic quantities

\[
 \sup_{t<T}\|u(t)\|_2\le K,\quad
 Y(t)=\|\nabla u(t)\|_2^2,\quad
 D_0:=\int_0^TY(t)dt\le\frac{K^2}{2\nu}. \tag{3}
\]

For zero force, K=||u₀||₂. For the admitted arbitrary smooth forcing, K=||u₀||₂+||Pf||L¹(0,T;L²), and (3) is the complete forced kinetic payment. None of the estimates below assumes a terminal high Sobolev norm.

## 2. Calibrate the three heat-age L² bounds

The source's Sobolev constants give

\[
 a=\mathsf S_3\mathsf S_6=\frac1\pi\sqrt{\frac23}.
\]

See [the explicit scalar/vector/tensor lemma, LF102–164](../SOURCES.md#S136).

The exact heat kernel L²→L∞ norm is (8πνs)⁻³ᐟ⁴. Consequently

\[
 \|G_s\|_2\le\|v_s\|_\infty\|\nabla v_s\|_2
 \le C_GK\sqrt{Y(t)}(\nu s)^{-3/4},
 \quad C_G=(8\pi)^{-3/4}. \tag{4}
\]

For H_s use the full divergence-form source. The Fourier operator Λ⁻¹ᐟ²P div from tensors to vectors is contractive relative to the tensor Λ¹ᐟ² norm; equivalently

\[
 \|\Lambda^{-3/2}Q(u)\|_2
 \le\|\Lambda^{-1/2}(u\otimes u)\|_2
 \le\mathsf S_3\|u\otimes u\|_{3/2}
 =\mathsf S_3\|u\|_3^2
 \le a\|u\|_2\|\nabla u\|_2. \tag{5}
\]

In (5), the tensor-to-vector multiplier used after factoring Λ⁻¹ᐟ² is P_k(k/|k|) contracted in the advecting tensor index, with norm at most one. No Lᵖ contractivity of P is assumed. The L³ interpolation ||u||₃²≤||u||₂||u||₆ and the L⁶ Sobolev constant supply the last step.

The exact multiplier maximum is

\[
 \sup_{r\ge0}r^{3/2}e^{-\nu sr^2}
 =\left(\frac3{4e}\right)^{3/4}(\nu s)^{-3/4}.
\]

It occurs at r²=3/(4νs). Therefore

\[
 \|H_s\|_2\le C_HK\sqrt{Y(t)}(\nu s)^{-3/4},
 \quad C_H=a\left(\frac3{4e}\right)^{3/4}. \tag{6}
\]

Since D_s is its actual difference,

\[
 \|D_s\|_2\le C_DK\sqrt{Y(t)}(\nu s)^{-3/4},
 \quad C_D=C_G+C_H. \tag{7}
\]

The full heat-defect field is bounded here, without assigning it an independent force or requiring one separately controlled parent rate. Write C_Z for the corresponding constant in (4),(6),(7).

## 3. Keep both ordered Fourier legs and both pressure parents

With c_F=(2π)⁻³ᐟ² and p+q=k, equation (1) is exactly

\[
 \widehat N_Z(k)=-ic_FP_k\int_{p+q=k}
 \big[(\widehat Z_s(p)\cdot q)\widehat v_s(q)
      +(\widehat v_s(p)\cdot q)\widehat Z_s(q)\big]dp. \tag{8}
\]

Each Z_s retains its inner projected source: G_s carries P_p or P_q with the two heated velocity parents, H_s carries the same inner source projectors with the output heat, and D_s carries their exact difference. Formula (8) also retains the outer P_k. Both legs are estimated separately, then summed.

Solenoidality gives Ẑ_s(p)·q=Ẑ_s(p)·k and v̂_s(p)·q=v̂_s(p)·k. Cauchy–Schwarz in p now gives

\[
 |\widehat N_Z(k)|\le2c_F|k|\|Z_s\|_2\|v_s\|_2,
 \qquad
 |\widehat G_s(k)|\le c_F|k|K^2. \tag{9}
\]

Using (9), ||v_s||₂≤K and ∫_{|k|≤R}|k|dk=πR⁴,

\[
 \begin{aligned}
 |j_Z(t,s)|
 &\le4c_F^2\nu^{-1}K^3\|Z_s\|_2
                      \int_{|k|\le R}|k|dk\\
 &\le\boxed{4\pi c_F^2 C_ZR^4K^4\nu^{-7/4}
                       s^{-3/4}\sqrt{Y(t)}.}
 \end{aligned} \tag{10}
\]

This verifies the candidate coefficient for the self, full and defect insertions separately. The apparent |k|⁻¹ weight at zero is canceled by the two original divergence factors. No output zero-mode hypothesis on the datum is required.

## 4. Actual moving triangle and uniform small-age tail

For each 0<τ≤T, the source's moving triangle is 0<t<τ and 0<s<τ−t. From (10), ∫₀^b s⁻³ᐟ⁴ds=4b¹ᐟ⁴ and ∫₀ᵀ√Y≤√(TD₀), one obtains for every ε>0

\[
 \boxed{
 \int_0^\tau\!\int_0^{\min(\varepsilon,\tau-t)}
 |j_Z(t,s)|dsdt
 \le16\pi c_F^2 C_ZR^4K^4\nu^{-7/4}
       \varepsilon^{1/4}\sqrt{TD_0}.} \tag{11}
\]

The right side is independent of τ, including strict τ approaching a finite T=T*. Thus each separate receiver leg has a datum-controlled small-age tail O(ε¹ᐟ⁴). At ε=T the same formula gives absolute integrability on the entire moving triangle, with right side 16πc_F²C_ZR⁴K⁴ν⁻⁷ᐟ⁴T¹ᐟ⁴√(TD₀). All constants can be evaluated from (3).

## 5. Stronger result: every heat age is also absolutely paid at fixed output

The s⁻³ᐟ⁴ majorant alone is not integrable at infinite age. The exact original G_s supplies the missing output heat factor. Since |p|²+|k−p|²≥|k|²/2, its full convolution gives

\[
 |\widehat G_s(k)|\le c_F|k|K^2e^{-\nu s|k|^2/2}. \tag{12}
\]

Retain (12) in the complete pairing instead of discarding it in (9):

\[
 |j_Z(t,s)|\le4c_F^2C_ZK^4\nu^{-7/4}\sqrt{Y(t)}
 s^{-3/4}\int_{|k|\le R}|k|e^{-\nu s|k|^2/2}dk. \tag{13}
\]

For every nonzero k,

\[
 \int_0^\infty s^{-3/4}e^{-\nu s|k|^2/2}ds
 =2^{1/4}\Gamma(1/4)\nu^{-1/4}|k|^{-1/2},
\]

and ∫_{|k|≤R}|k|¹ᐟ²dk=(8π/7)R⁷ᐟ². Nonnegative Tonelli in (13) therefore yields

\[
 \boxed{\int_0^\infty|j_Z(t,s)|ds
 \le\frac{32\pi}{7}\,2^{1/4}\Gamma(1/4)c_F^2C_Z
       R^{7/2}K^4\nu^{-2}\sqrt{Y(t)}.} \tag{14}
\]

Integrating in the full original physical time gives

\[
 \boxed{\int_0^T\!\int_0^\infty|j_Z(t,s)|dsdt
 \le\frac{32\pi}{7}\,2^{1/4}\Gamma(1/4)c_F^2C_Z
       R^{7/2}K^4\nu^{-2}\sqrt{TD_0}<\infty.} \tag{15}
\]

This proves absolute integrability of **each** self, defect and full insertion on the whole physical-time/heat-age domain at fixed R. It legitimizes their signed splitting, Fubini and actual terminal-time exhaustion separately on this domain. In particular N_H=N_G+N_D passes through the entire finite-T age integral without only conditional cancellation. The output-cutoff dependence remains explicit; these estimates make no assertion uniform as R→∞.

## 6. Optional prescribed-force insertion on the same fixed output

For the admitted forced history, the intrinsic H_s remains S_sQ(u); the additional receiver is H_s^f=S_sg. Let N_f=DQ(v_s)[H_s^f], retaining both force-parent P_p,P_q and the outer P_k as in (8). Since ||H_s^f||₂≤||g(t)||₂, (9),(12) give

\[
 |j_f(t,s)|\le4c_F^2\nu^{-1}K^3\|g(t)\|_2
                    \int_{|k|\le R}|k|e^{-\nu s|k|^2/2}dk.
\]

The full-age integral uses ∫₀∞e⁻⁽νs|k|²/²⁾ds=2/(ν|k|²) and ∫_{|k|≤R}|k|⁻¹dk=2πR². Consequently

\[
 \boxed{\int_0^T\!\int_0^\infty|j_f(t,s)|dsdt
 \le16\pi c_F^2 R^2K^3\nu^{-2}
                  \|g\|_{L^1(0,T;L^2)}.} \tag{16}
\]

The small-age triangle tail is even bounded by

\[
 \boxed{\int_0^\tau\!\int_0^{\min(\varepsilon,\tau-t)}
 |j_f(t,s)|dsdt
 \le4\pi c_F^2R^4K^3\nu^{-1}\varepsilon
                  \|g\|_{L^1(0,T;L^2)}.} \tag{17}
\]

No force smallness, high velocity row, or negative homogeneous force norm is used in these fixed-output force estimates. They supplement the separate full-output prescribed-force payment, without changing the intrinsic source or the original pressure equation.

## Exact verification scope

Equations (4)–(11) confirm every candidate constant and the O(ε¹ᐟ⁴) actual small-age tail. Equations (12)–(15) strengthen the result to the entire heat-age half-line. All three complete intrinsic receiver insertions are separately absolutely integrable at each fixed R using only the source's actual kinetic inputs. Both pressure parents, all ordered legs and the physical-time horizon are preserved. Equations (16)–(17) retain and pay arbitrary prescribed forcing separately. None of these bounds substitutes a model or an unforced trajectory for the actual solution.
