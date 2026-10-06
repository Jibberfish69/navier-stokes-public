# Actual two-time difference: full pressure, forcing and positive cancellation

This new calculation subtracts the original equations at two actual times of the same history. It uses neither a temporal Taylor series nor an infinite jet norm. Every pressure, nonlinear parent, source, endpoint and varying-shift term is retained. All new constructions below are derived from the original equations, rather than printed manuscript definitions.

Directly read sources: [admitted pressure-complete history and canonical pressure, LF60–85](../SOURCES.md#src-forced-setting), [full mixed recurrences, LF116–149](../SOURCES.md#src-forced-setting), [kinetic identity/payment, LF13–60](../SOURCES.md#src-compatible-rectangles), [complete pressure square, LF189–251](../SOURCES.md#src-compatible-rectangles), [assembly J1–J5, LF1451–1501](../SOURCES.md#src-native-assembly), and [local pressure/source flux, LF1656–1688](../SOURCES.md#src-native-assembly).

## 1. Actual shift domain and complete difference equation

Write \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(g=\mathbb Pf\), \(\phi_f=-L^{-1}\operatorname{div}f\), and \(p_0=p-\phi_f=R_iR_j(u_iu_j)\). The force is the same prescribed absolute-time \(C^\infty([0,\infty);\mathcal S)\) force and the viscosity is unchanged.

Fix \(0<h<T_*\). The velocity domain is
\[
\mathcal I_h=\{t\ge0:t+h<T_*\}.
\]
Every initial derivation is on \(0\le t\le B\) with \(B+h<T_*\). On a finite force horizon \(T\), also require \(B+h\le T\). For any field \(A\), write \(A^+(t)=A(t+h)\), \(D_hA=(A^+-A)/h\), and \(\bar A=(A^++A)/2\). Define
\[
U=u^+,\quad d=D_hu,\quad m=(U+u)/2=u+\tfrac h2d,\quad
\pi=D_hp,\quad F=D_hf.
\tag{TS1}
\]
Both \(d,m\) are solenoidal. Exact bilinearity gives
\[
D_hN(u,u)=N(m,d)+N(d,m)
=N(u,d)+N(d,u)+hN(d,d).
\tag{TS2}
\]
Therefore the full difference row is
\[
d_t+\nu Ld+N(m,d)+N(d,m)+\nabla\pi=F.
\tag{TS3}
\]
Its canonical scalar and gradient pressure are
\[
\pi=R_iR_j(m_id_j+d_im_j)-L^{-1}\operatorname{div}F,\qquad
\nabla\pi=(I-\mathbb P)\{F-N(m,d)-N(d,m)\}.
\tag{TS4}
\]
Equivalently the scalar product is \(u_id_j+d_iu_j+hd_id_j\). The force potential and the quadratic difference parent are present.

For finite \(n,\alpha\), put \(d_{n,\alpha}=D_hJ_{n,\alpha}\) and \(m_{n,\alpha}=(J_{n,\alpha}^++J_{n,\alpha})/2\). The full differentiated nonlinear difference is exactly
\[
D_h\mathcal B_{n,\alpha}
=\sum_{a=0}^n\sum_{\beta\le\alpha}\binom na\binom\alpha\beta
\{N(m_{a,\beta},d_{n-a,\alpha-\beta})
+N(d_{a,\beta},m_{n-a,\alpha-\beta})\}.
\tag{TS5}
\]
Its scalar pressure has the same allocations with the product
\(m_{a,\beta,i}d_{n-a,\alpha-\beta,j}
+d_{a,\beta,i}m_{n-a,\alpha-\beta,j}\), followed by \(R_iR_j\), and the complete potential \(-L^{-1}\operatorname{div}D_hF_{n,\alpha}\). Fixed \(h\) commutes with every displayed time/spatial derivative. This is a finite operation on actual rows at both times.

## 2. Positive difference energy, local flux and full square

Let \(e_d=|d|^2/2\). The local pressure-complete identity is
\[
\partial_te_d+\operatorname{div}(me_d-\nu\nabla e_d+\pi d)
=-\nu|\nabla d|^2-d\cdot N(d,m)+F\cdot d.
\tag{TS6}
\]
Full-space integration gives
\[
\tfrac12(\|d\|_2^2)'+\nu\|\nabla d\|_2^2+S(m,d,d)=\langle F,d\rangle,
\quad S(a,b,c)=\langle\operatorname{sym}\nabla a\,b,c\rangle.
\tag{TS7}
\]
The transport pairing vanishes, while strain stays signed. Since \(\langle N(d,d),d\rangle=0\),
\[
S(m,d,d)=S(u,d,d)=S(U,d,d).
\tag{TS8}
\]
The one-sided equation TS2 gives the equivalent local identity
\[
\partial_te_d+\operatorname{div}(Ue_d-\nu\nabla e_d+\pi d)
=-\nu|\nabla d|^2-d\cdot N(d,u)+F\cdot d.
\tag{TS9}
\]
This changes the flux as well as the displayed strain. The \(hN(d,d)\) field is not deleted from TS3 or its pressure by its zero full-space energy pairing.

The complete physical difference square is
\[
\|d_t\|_2^2+\nu^2\|Ld\|_2^2+\|\nabla\pi\|_2^2
+\nu(\|\nabla d\|_2^2)'
=\|F-N(m,d)-N(d,m)\|_2^2.
\tag{TS10}
\]
Pressure is orthogonal only to the solenoidal \(d_t,Ld\) in this full-space square. The right side retains both nonlinear squares, their cross-pair, and both force–nonlinear cross-pairs. In the one-sided representation, if \(A=N(u,d)+N(d,u)\), it is explicitly
\[
\|F-A-hN(d,d)\|_2^2
=\|F-A\|_2^2+h^2\|N(d,d)\|_2^2
-2h\langle F,N(d,d)\rangle+2h\langle A,N(d,d)\rangle.
\tag{TS11}
\]
Thus the zero energy pairing in TS8 eliminates none of these terms. Integrating TS7 or TS10 keeps the actual stocks at \(t=0\) and \(t=B\), where \(d(0)=(u(h)-u_0)/h\) and \(d(B)=(u(B+h)-u(B))/h\). Neither endpoint is replaced by an instantaneous derivative at positive \(h\). Spatial localization keeps the TS6/9 pressure flux and all selector derivatives.

## 3. Exact two-time mean/variance cancellation

Let \(\bar f=(f^++f)/2\) and \(\bar p=(p^++p)/2\). The actual mean equation is
\[
m_t+\nu Lm+N(m,m)+\tfrac{h^2}{4}N(d,d)+\nabla\bar p=\bar f,
\quad
\bar p=R_iR_j(m_im_j+\tfrac{h^2}{4}d_id_j)+\bar\phi_f.
\tag{TS12}
\]
The full mean pressure contains the variance stress. Its energy is
\[
\tfrac12(\|m\|_2^2)'+\nu\|\nabla m\|_2^2
=\langle\bar f,m\rangle+\tfrac{h^2}{4}S(m,d,d).
\tag{TS13}
\]
Adding \(h^2/4\) times TS7 cancels strain exactly and gives the averaged kinetic energy of the two actual times:
\[
\tfrac12\|m\|_2^2+\tfrac{h^2}{8}\|d\|_2^2
=\tfrac14(\|u\|_2^2+\|U\|_2^2),
\quad
\langle\bar f,m\rangle+\tfrac{h^2}{4}\langle F,d\rangle
=\tfrac12(\langle f,u\rangle+\langle f^+,U\rangle).
\tag{TS14}
\]
The local mean identity moves \(-m\cdot N(d,d)\) into the additional flux \((h^2/4)d(m\cdot d)\) and the strain in TS13. The combined local pressure flux is
\(\bar p\,m+(h^2/4)\pi d=(p\,u+p^+U)/2\). Thus this cancellation preserves the complete actual pressure and forcing covariance.

The positive variance is \(h^2\|d\|_2^2/8\). Its derivative-row coercivity tends to zero with \(h^2\). Dividing the combined stock by \(h^2\) retains the mean stock and mean source divided by \(h^2\); subtracting the mean equation restores exactly the strain in TS7.

## 4. Exact time-average force compensation and full force parents

The compensation matching the original response \(u_t-g\) is
\[
G_h(t)=\frac1h\int_t^{t+h}g(s)\,ds,\quad
G_h'=D_hg=\mathbb PF,\qquad
H_h=d-G_h=\frac1h\int_t^{t+h}(u_t-g)(s)\,ds.
\tag{TS15}
\]
It is a time average of the prescribed force, not the average of its two endpoint values. Put \(\pi_0=D_hp_0\), so the full physical difference pressure is \(\pi=\pi_0+D_h\phi_f\). Exact subtraction yields
\[
H_h'+\nu LH_h+N(m,H_h)+N(H_h,m)+\nabla\pi_0=R_h,
\quad
R_h=-\nu LG_h-N(m,G_h)-N(G_h,m).
\tag{TS16}
\]
The scalar normalization remains
\[
\pi_0=R_iR_j\{m_i(H_h+G_h)_j+(H_h+G_h)_im_j\},
\quad
\nabla\pi_0=(I-\mathbb P)\{R_h-N(m,H_h)-N(H_h,m)\}.
\tag{TS17}
\]
This raw pressure is not the scalar completion of an already projected \(R_h\).

The one-sided complete row is
\[
H_h'+\nu LH_h+L_uH_h+hN(H_h,H_h)+\nabla\pi_0=R_h^{\,u},
\tag{TS18}
\]
\[
R_h^{\,u}=-\nu LG_h-L_uG_h
-h\{N(H_h,G_h)+N(G_h,H_h)+N(G_h,G_h)\},
\quad L_ua=N(u,a)+N(a,u).
\tag{TS19}
\]
Both cross orders and the force–force parent occur. Its scalar pressure is equivalently
\[
\pi_0=R_iR_j\{u_i(H_h+G_h)_j+(H_h+G_h)_iu_j
+h(H_h+G_h)_i(H_h+G_h)_j\}.
\]
The source TS19 and this pressure are equivalent to TS16–17, not separately truncated rows.

The compensated positive energy, local flux and full square are
\[
\tfrac12(\|H_h\|_2^2)'+\nu\|\nabla H_h\|_2^2+S(m,H_h,H_h)
=\langle R_h,H_h\rangle,
\tag{TS20}
\]
\[
\partial_t(|H_h|^2/2)
+\operatorname{div}\{m|H_h|^2/2-\nu\nabla(|H_h|^2/2)+\pi_0H_h\}
=-\nu|\nabla H_h|^2-H_h\cdot N(H_h,m)+R_h\cdot H_h,
\tag{TS21}
\]
\[
\|H_h'\|_2^2+\nu^2\|LH_h\|_2^2+\|\nabla\pi_0\|_2^2
+\nu(\|\nabla H_h\|_2^2)'
=\|R_h-N(m,H_h)-N(H_h,m)\|_2^2.
\tag{TS22}
\]
All source/nonlinear cross-pairs stay in the last square. The original force potential \(D_h\phi_f\) is restored in TS4; TS22 is the explicitly compensated row, not the original full-force pressure square TS10.

For each finite \(q\),
\[
\partial_t^qG_h=\frac1h\int_t^{t+h}g_q(s)\,ds,\quad
\partial_t^qR_h=-\nu L\partial_t^qG_h
-\sum_{a=0}^q\binom qa
\{N(\partial_t^am,\partial_t^{q-a}G_h)
+N(\partial_t^aG_h,\partial_t^{q-a}m)\}.
\tag{TS23}
\]
The one-sided formula additionally differentiates every force–force and cross term in TS19. Spatial derivatives carry the full original multi-index allocations. Scalar pressure/flux derivatives retain the TS5/17 product allocations and all known derivatives of \(D_h\phi_f\). Prescribed-force orders are finite individually; higher actual \(m\) derivatives are not asserted paid by kinetic action.

## 5. Genuine uniform force payment on the shifted terminal strips

Fix a finite \(T\) and use only times with \(t+h<\min(T,T_*)\). The original kinetic proof gives
\[
\|u(t)\|_2,\|U(t)\|_2,\|m(t)\|_2\le K,\quad
K=\|u_0\|_2+\int_0^T\|g(s)\|_2\,ds,\quad
\int\|\nabla m\|_2^2\le K^2/(2\nu).
\]
The last integral is on the full shifted strip and follows from
\(\|\nabla m\|_2^2\le(\|\nabla u\|_2^2+\|\nabla U\|_2^2)/2\).
Every averaged \(G_h\) norm below is bounded uniformly by the corresponding prescribed force norm on \([0,T]\).

Since both advectors are solenoidal,
\[
\|R_h\|_{\dot H^{-1}}\le\nu\|\nabla G_h\|_2+2K\|G_h\|_\infty=:A_h.
\tag{TS24}
\]
Consequently
\[
|\langle R_h,H_h\rangle|
\le\tfrac\nu2\|\nabla H_h\|_2^2+A_h^2/(2\nu).
\tag{TS25}
\]
This uniform small-\(h\) affine-force payment uses \(g\) and its spatial derivatives, without an \(f_t\) upper input. It leaves the signed strain in TS20.

There is also a complete source-square payment. Write
\(C_0=\sup_{[0,T]}\|g\|_\infty\),
\(C_1=\sup\|\nabla g\|_\infty\),
\(C_L=\sup\|Lg\|_2\). Then
\[
\|R_h\|_2\le\nu C_L+KC_1+C_0\|\nabla m\|_2,\qquad
\int\|R_h\|_2^2
\le2T(\nu C_L+KC_1)^2+C_0^2K^2/\nu.
\tag{TS26}
\]
This holds uniformly on the full shifted strips. It pays the complete \(R_h\) square; TS22 still has its full nonlinear response and cross terms.

## 6. Compensated positive mean/variance cancellation

The positive stock
\[
\mathcal E_c=\tfrac12\|m\|_2^2+\tfrac{h^2}{8}\|H_h\|_2^2
\]
has the exact fixed-\(h\) equation
\[
\begin{aligned}
\mathcal E_c'+\nu\|\nabla m\|_2^2+\tfrac{\nu h^2}{4}\|\nabla H_h\|_2^2
={}&\langle\bar f,m\rangle+\tfrac{h^2}{4}\langle R_h,H_h\rangle\\
&+\tfrac{h^2}{4}\{2S(m,H_h,G_h)+S(m,G_h,G_h)\}.
\end{aligned}
\tag{TS27}
\]
The unknown \(S(m,H_h,H_h)\) cancels exactly. All remaining convection has a known force parent. Its bounds can be paid in the weighted stock/dissipation:
\[
2|S(m,H_h,G_h)|
\le K\|\nabla G_h\|_\infty\|H_h\|_2
+K\|G_h\|_\infty\|\nabla H_h\|_2,\quad
|S(m,G_h,G_h)|\le K\|G_h\|_\infty\|\nabla G_h\|_2.
\tag{TS28}
\]
The first uses integration by parts on each ordered parent, retaining both terms. Together with TS25 these bounds absorb the gradient terms into \(\nu h^2\|\nabla H_h\|_2^2\) and bound the stock term relative to \(\mathcal E_c\), with finite known-force constants uniform for \(0<h\le h_0\). The mean force is exactly \(\langle\bar f,m\rangle=\langle(g^++g)/2,m\rangle\); it is distinct from the time-average \(G_h\).
More explicitly, combine the two gradient costs before Young. For any fixed \(\eta>0\), with \(\bar g=(g^++g)/2\),
\[
\begin{aligned}
\mathcal E_c'+\nu\|\nabla m\|_2^2+\tfrac{\nu h^2}{8}\|\nabla H_h\|_2^2
\le{}&\eta\mathcal E_c+K\|\bar g\|_2
+\frac{h^2}{8\nu}(\nu\|\nabla G_h\|_2+3K\|G_h\|_\infty)^2\\
&+\frac{h^2K^2\|\nabla G_h\|_\infty^2}{8\eta}
+\frac{h^2K\|G_h\|_\infty\|\nabla G_h\|_2}{4}.
\end{aligned}
\tag{TS28a}
\]
Every remaining right-side coefficient is supplied by the prescribed force and kinetic \(K\). This is a quantitative finite-\(h\) positive-energy payment, with the explicit \(h^2\) coercivity retained.

The local version of TS27 retains the TS12 mean pressure, its flux \((h^2/4)d(m\cdot d)\), and \(h^2/4\) times the complete compensated pressure flux in TS21. No pressure flux is discarded in this cancellation.

In fact kinetic control already gives the quantitative uniform positive bound
\[
\mathcal E_c\le K^2/2+(2K+h\|G_h\|_2)^2/8,
\quad
\|d\|_2\le2K/h,\quad
\int\|\nabla d\|_2^2\le2K^2/(\nu h^2).
\tag{TS29}
\]
Thus the cancellation genuinely pays a positive two-time stock, with response coercivity \(h^2/8\). It supplies no unscaled response bound as \(h\downarrow0\). Scaling by \(h^{-2}\) retains the mean stock/source scaled by \(h^{-2}\); subtracting the mean restores precisely the TS20 strain.
For every fixed \(h<\min(T,T_*)\), all source/cross work in TS27 is \(L^1\) on its whole shifted strip: TS25/28, the fixed-\(h\) bound TS29, and the kinetic gradient bound supply that domain. Its weighted diffusion is likewise \(L^1\). Thus \(\mathcal E_c\) has an actual finite one-sided scalar trace at \(t=\min(T,T_*)-h\), even when the later parent approaches a proposed finite \(T_*\). This conclusion is confined to the displayed scalar stock; it constructs no whole-terminal positive Sobolev trace of the original velocity.

## 7. Strict-prefix derivative limit and exact shift-derivative ports

For any fixed \(B+h_0<T_*\), the original history class and the fundamental theorem of calculus give, uniformly on \([0,B]\) in every fixed finite \(C_t^qH_x^m\) topology,
\[
d\longrightarrow u_t,\quad m\longrightarrow u,\quad
F\longrightarrow f_t,\quad \pi\longrightarrow p_t,\quad
G_h\longrightarrow g,\quad H_h\longrightarrow H_1=u_t-g,
\quad R_h\longrightarrow R_1=-\nu Lg-L_ug.
\tag{TS30}
\]
TS7 tends to the actual temporal strain row; TS10 tends to its full physical pressure square; TS20–22 tend to the original compensated response with its full \(R_1\). No analytic tower is needed for any of these finite-order limits. None is a uniform assertion on shrinking terminal strips \(t+h<T_*\).

If \(h=h(t)\) varies, fixed-shift formulas need their actual chain-rule source. Exactly
\[
\partial_hd=\frac{u_t(t+h)-d}{h},\quad
\partial_hG_h=\frac{g(t+h)-G_h}{h},\quad
\partial_hH_h=\frac{H_1(t+h)-H_h}{h},\quad
\partial_hm=u_t(t+h)/2.
\tag{TS31}
\]
The moving-shift TS3 has the extra right side \(h'\partial_hd\); TS16 has \(h'\partial_hH_h\). Their energy equations have the corresponding pair work. A stock coefficient \(h^2/4\) additionally differentiates to \(hh'/2\). These terms involve actual response fields and are not prescribed-force constants.
The moving mean equation TS12 also adds \(h'u_t(t+h)/2\). Source and pressure parameter derivatives are
\(\partial_hF=(f_t(t+h)-F)/h\),
\(\partial_h\pi=(p_t(t+h)-\pi)/h\), and
\(\partial_h\pi_0=(p_{0,t}(t+h)-\pi_0)/h\). Iterating these chain rules, rather than the fixed-\(h\) commutation rule, retains all finite-order moving-shift ports.

At the original initial time the strict limit gives \(d(0)\to u_t(0)\) and \(H_h(0)\to-\nu Lu_0-\mathbb PN(u_0,u_0)\), with the full initial force/pressure recurrence restored. The finite-\(h\) endpoints remain the actual two-time ones stated after TS11.

## 8. Comparison with the existing normalized response, without inventing a finite-shift normalization

Retain the existing current-time \(\lambda=\nu Y/(e+\delta)\), \(\delta>0\), \(e=\|u(t)\|_2^2\), \(Y=\|\nabla u(t)\|_2^2\), and set \(w_h=H_h+\lambda u(t)\). Its finite-\(h\) coefficient pairing is not automatically the derivative-response pairing. The exact kinetic identity gives
\[
\langle u,H_h\rangle=-\nu\bar Y_h+a_h-\tfrac h2\|d\|_2^2,\quad
\bar Y_h=\frac1h\int_t^{t+h}Y(s)\,ds,\quad
a_h=\frac1h\int_t^{t+h}\langle u(s)-u(t),g(s)\rangle ds.
\tag{TS32}
\]
Define \(\zeta_h=\nu(Y-\bar Y_h)+a_h-h\|d\|_2^2/2\). Then
\(\langle u,w_h\rangle=-\delta\lambda+\zeta_h\). Both \(\zeta_h\) and the additional coefficient work \(\lambda'\zeta_h\) tend to zero on strict prefixes, without an assumed whole-terminal rate.

The complete raw normalized row is
\[
(w_h)_t+\nu Lw_h+L_mw_h+\nabla(\pi_0+\lambda p_0)
=R_h+\lambda g+\lambda B+\tfrac{h\lambda}{2}L_ud+\lambda'u.
\tag{TS33}
\]
Its exact energy after the original \(\delta\lambda^2/2\) correction is
\[
\begin{aligned}
\big[\tfrac12(\|w_h\|_2^2+\delta\lambda^2)\big]'
+\nu\|\nabla w_h\|_2^2+S(m,w_h,w_h)
={}&\langle R_h,w_h\rangle+\lambda\langle g,w_h\rangle
+\lambda\langle B,w_h\rangle\\
&+\tfrac{h\lambda}{2}\langle L_ud,w_h\rangle+\lambda'\zeta_h.
\end{aligned}
\tag{TS34}
\]
The \(h\lambda L_ud/2\) insertion comes from applying the mean linearization to the actual base equation. The pressure in TS33 belongs to that full raw source. If it is projected, the canonical completion is instead \(R_iR_j(m_iw_{h,j}+w_{h,i}m_j)\); their gradient difference is the negative complementary projection of \(R_h+\lambda B+(h\lambda/2)L_ud\). Every known force parent and coefficient derivative is retained.

The strict limit of TS34 is the actual normalized derivative-response row. At positive \(h\), neither \(\lambda'\zeta_h\) nor the \(h\lambda\) term has been dropped by identifying a time difference with a derivative.
Explicitly, with \(w=H_1+\lambda u\), its limit is
\[
\big[\tfrac12(\|w\|_2^2+\delta\lambda^2)\big]'
+\nu\|\nabla w\|_2^2+S(u,H_1,H_1)
=\langle R_1,w\rangle+\lambda\langle g,w\rangle.
\tag{TS35}
\]
Here \(S(u,w,w)-\lambda\langle B,w\rangle=S(u,H_1,H_1)\) follows from the exact solenoidal base-cross identity; the signed strain has not been assigned a sign.
For a moving \(h(t)\), TS33 additionally has the \(h'\partial_hH_h\) source, and TS34 its pairing with \(w_h\), as prescribed by TS31.

## Verified mathematical scope

The exact two-time nonlinear relation, canonical scalar pressure/potential, energy/flux/square, positive mean/variance cancellation, complete time-average force compensation and uniform affine-force payments have been derived from the original same-history equations. The \(h\to0\) limit is proved only on fixed strict prefixes. The paid positive cancellation retains \(h^2\) response coercivity; an unscaled terminal response bound has not been inferred.
