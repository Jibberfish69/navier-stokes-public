# Actual adaptive compensated shifts: complete coefficient and clock test

This is a new bounded calculation on the actual pressure-complete Navier–Stokes history. It executes the positive mean/difference cancellation with a moving separation, a positive scalar weight, and the full cancelling two-by-two coefficient class. It distinguishes a single curve approaching the terminal time from a family of differences shrinking at fixed physical times. All statements below are strict-prefix identities or expressly stated conditional consequences.

## Sources and domain

**AT1.** The mathematical starting equations are:

* [forced setting](../SOURCES.md#src-forced-setting), LF60–104: actual history, all finite Sobolev orders on every \([0,T]\), \(T<T_*\), complete prescribed \(f\in C^\infty([0,\infty);\mathcal S)\), and canonical physical pressure;
* the same file LF116–164: both ordered nonlinear parents, all force derivatives and pressure recurrences;
* [native assembly J1–J5](../SOURCES.md#src-native-assembly), LF1454–1504: complete nonlinear and pressure coordinates;
* [J10 and J13a](../SOURCES.md#src-native-assembly), LF1581–1605 and 1660–1680: actual Gram evolution and local pressure flux.

No supplied rectangle or order-uniform estimate from the compatible-rectangle or analytic-framework sources is used to establish a new budget. The shift calculations are derived from the displayed actual momentum, not attributed to an additional original theorem.

Write
\[
 A=-\Delta,\quad N(v,w)=(v\cdot\nabla)w,\quad g=\mathbb P f,\qquad
 p=p_0-A^{-1}\operatorname{div}f,\quad p_0=R_iR_j(u_i u_j).
 \tag{AT1}
\]
Thus \(u_t+\nu Au+N(u,u)+\nabla p=f\), and \(u_t+\nu Au+\mathbb P N(u,u)=g\). The gradient force potential is part of the physical pressure.

Take \(h(t)>0\), \(a(t)>0\), \(C^1\) on the examined interval, and
\[
 \theta(t)=t+h(t)<T_*,\qquad \theta'=1+h'.
 \tag{AT2}
\]
Initially work on a compact interval on which both physical times are strictly preterminal. No positivity of \(\theta'\) is needed for an identity; positivity of its diffusion action requires \(\theta'\ge0\). Let \(u_-=u(t)\), \(u_+=u(\theta)\), with corresponding \(f_\pm,g_\pm,p_\pm\).

## Actual force-compensated fields and moving rows

**AT2.** Define
\[
 \begin{gathered}
 m=(u_++u_-)/2,\quad d=(u_+-u_-)/h,\quad
 I=\int_t^\theta g(r)\,dr,\quad G=I/h,\quad H=d-G,\\
 X=u_+-u_-,\quad W=X-I=hH,\quad
 k=u_t-g.
 \end{gathered}
 \tag{AT3}
\]
All these velocity and force-lift fields are solenoidal. \(k\) is the intrinsic first temporal receiver; it is distinct from the positive shift separation \(h\).

For fixed separation, the exact rows are
\[
 \begin{aligned}
 m_t+\nu Am+N(m,m)+\frac{h^2}{4}N(d,d)+\nabla\bar p&=\bar f,\\
 H_t+\nu AH+N(m,H)+N(H,m)+\nabla\pi_d&=R,\\
 R&=-\nu AG-N(m,G)-N(G,m),\\
 \pi_d&=\delta_h p_0
 =R_iR_j(m_i d_j+d_i m_j),\qquad
 \bar p=(p_++p_-)/2,\quad \bar f=(f_++f_-)/2 .
 \end{aligned}
 \tag{AT4}
\]
Here \(\delta_h p=\pi_d-A^{-1}\operatorname{div}(\delta_h f)\); subtracting \(\delta_h g\) cancels exactly that same known gradient-force potential. The pressure \(\pi_d\) still contains both \(H\) and \(G\), since \(d=H+G\). It cannot be replaced by the pressure of \(H\) alone while leaving \(R\) unchanged.

**AT3.** Moving the separation gives every additional row term explicitly:
\[
 \begin{aligned}
 I'&=\theta'g_+-g_-,\\
 G'&=\delta_h g+\frac{h'}h(g_+-G),\\
 m'&=(m_t)_{\rm fixed\ h}+\frac{h'}2u_t(\theta),\\
 H'&=(H_t)_{\rm fixed\ h}+\frac{h'}h(k(\theta)-H).
 \end{aligned}
 \tag{AT5}
\]
Thus both temporal response insertions, the full upper-end force, and the changing denominator occur. In particular, treating \(G'\) as merely \(\delta_h g\) would lose a source term.

## Positive cancellation and every adaptive port

**AT4.** Use the actual positive stock and action
\[
 E_c=\frac12\|m\|_2^2+\frac{h^2}{8}\|H\|_2^2,\qquad
 D_c=\nu\left(\|\nabla m\|_2^2+\frac{h^2}{4}\|\nabla H\|_2^2\right).
 \tag{AT6}
\]
Let \(S(m,b,c)=\int b^\top\operatorname{Sym}(\nabla m)c\). For fixed \(h\), mean work \(+(h^2/4)S(m,d,d)\) and difference work \(-(h^2/4)S(m,H,H)\) cancel their entire intrinsic \(H,H\) strain. Their surviving full known-force work is
\[
 \begin{aligned}
 F_H&=2S(m,H,G)+S(m,G,G)+\langle H,R\rangle\\
 &=-\nu\langle\nabla H,\nabla G\rangle
   -\langle m,N(H,G)+N(G,G)\rangle-\langle H,N(m,G)\rangle .
 \end{aligned}
 \tag{AT7}
\]
The second equality is whole-space integration by parts. In particular, it keeps both ordered known-force parents before estimates.

**AT5.** The full moving law is
\[
 E_c'+D_c=\langle m,\bar g\rangle+\frac{h^2}{4}F_H+M_h,\qquad
 M_h=\frac{h'}2\langle m,u_t(\theta)\rangle+
       \frac{hh'}4\langle H,k(\theta)\rangle .
 \tag{AT8}
\]
The derivative of the coefficient \(h^2/8\) cancels the \(-H\) in the moving row; it does not cancel either displayed endpoint-response pairing.

For \(E_a=aE_c\), the exact weighted identity, including its initial and strict-terminal stocks, is
\[
 \begin{aligned}
 E_a'+aD_c
 &=a\langle m,\bar g\rangle+\frac{ah^2}{4}F_H+aM_h+a'E_c,\\
 E_a(b)+\int_\alpha^b aD_c
 &=E_a(\alpha)+
 \int_\alpha^b\left[a\langle m,\bar g\rangle+\frac{ah^2}{4}F_H+aM_h+a'E_c\right],
 \qquad b<T_* .
 \end{aligned}
 \tag{AT9}
\]
Every term in the signed primitive on the right is an actual term; no small-cost assertion is inferred from finite kinetic energy.

**AT6.** The moving response port can be recombined before norms:
\[
 M_h=\frac{h'}4e'_+
       -\frac{h'}4\langle I,u_t(\theta)\rangle
       -\frac{h'}4\langle W,g_+\rangle,\qquad e(t)=\|u(t)\|_2^2.
 \tag{AT10}
\]
Here \(e'_+\) means the physical derivative \(e'(\theta)\), rather than \((e(\theta))'=\theta'e'(\theta)\). The complete momentum paired with the actual solenoidal \(I\) yields
\[
 \langle I,u_t(\theta)\rangle
 =-\nu\langle\nabla I,\nabla u_+\rangle
   +\langle u_+,N(u_+,I)\rangle+\langle I,g_+\rangle.
 \tag{AT11}
\]
Consequently
\[
 M_h=h'\left[
 -\frac{\nu}{2}Y_+
 +\frac{\nu}{4}\langle\nabla I,\nabla u_+\rangle
 -\frac14\langle u_+,N(u_+,I)\rangle
 +\frac14\langle u_++u_-,g_+\rangle\right],
 \quad Y=\|\nabla u\|_2^2 .
 \tag{AT12}
\]
The pressure pairing vanishes here by \(\operatorname{div}I=0\) in the full space. Its local flux does not vanish.

**AT7.** There is a stronger full regrouping which removes both temporal-response ports:
\[
 \begin{aligned}
 E_c'+\frac{\nu}{2}(Y_-+\theta'Y_+)
 ={}&\frac{\nu}{4}
   [\theta'\langle\nabla I,\nabla u_+\rangle-\langle\nabla I,\nabla u_-\rangle]\\
 &-\frac14[
 \theta'\langle u_+,N(u_+,I)\rangle-\langle u_-,N(u_-,I)\rangle]\\
 &+\frac14\langle u_++u_-,g_-+\theta'g_+\rangle .
 \end{aligned}
 \tag{AT13}
\]
This follows by differentiating the affine square identity (AT21), using \(I'=\theta'g_+-g_-\), and applying (AT11) at both physical times. Multiplication by \(a\) adds exactly \(a'E_c\). If \(g=0\), it becomes the diagonal physical kinetic identity
\[
 E_a'+\frac{\nu a}{2}(Y_-+\theta'Y_+)=a'E_c,\qquad
 E_c=\frac14(e_-+e_+).
 \tag{AT14}
\]
Thus an unknown \(u_t\) port is not required to remain unknown: it converts to the physical upper-clock kinetic action and known-force contractions. If \(\theta'<0\), the upper-clock action is signed, not a positive dissipation.

## Complete cancelling two-by-two class and cross stock

**AT8.** Consider the coefficient matrix on the actual pair \((m,H)\):
\[
 P=\begin{pmatrix}a&c\\c&ah^2/4\end{pmatrix},\qquad
 E_P=aE_c+c\,C,\quad C=\langle m,H\rangle.
 \tag{AT15}
\]
Within this mean/difference family, coefficientwise cancellation of the intrinsic \(S(m,H,H)\) sets the lower diagonal entry to \(ah^2/4\). The cross entry does not reintroduce that intrinsic work. Direct substitution gives
\[
 \begin{aligned}
 C'+2\nu\langle\nabla m,\nabla H\rangle
 ={}&\langle\bar g,H\rangle-\nu\langle\nabla m,\nabla G\rangle
 -\langle m,N(m,G)\rangle\\
 &-\frac{h^2}{4}
 [\langle H,N(H,G)\rangle+\langle H,N(G,G)\rangle]+M_C,\\
 M_C={}&\frac{h'}2\langle u_t(\theta),H\rangle+
 \frac{h'}h\langle m,k(\theta)-H\rangle .
 \end{aligned}
 \tag{AT16}
\]
Indeed \(\langle H,N(m,m)\rangle+\langle m,N(m,H)\rangle=0\), \(\langle m,N(H,m)\rangle=0\), \(\langle H,N(H,H)\rangle=0\), and \(\langle H,N(G,H)\rangle=0\). The remaining terms all retain a known \(G\). This is a genuine cancellation before separate norms.

Set
\[
 Z_0=u_-+I/2=m-hH/2,\quad Z_1=u_+-I/2=m+hH/2,\quad
 q_0=a/2-c/h,\quad q_1=a/2+c/h .
 \tag{AT17}
\]
Then
\[
 E_P=\frac12[q_0\|Z_0\|_2^2+q_1\|Z_1\|_2^2],\quad
 P\succeq0\ \Longleftrightarrow\ q_0,q_1\ge0 .
 \tag{AT18}
\]
For \(a>0\), the sharp coefficient for extracting \(H\) from \(2E_P\) is
\[
 \kappa_H=\frac{ah^2}{4}-\frac{c^2}{a}
 =\frac{h^2q_0q_1}{q_0+q_1},\qquad
 2E_P\ge\kappa_H\|H\|_2^2,\qquad
 \kappa_H\le\frac{ah^2}{4}.
 \tag{AT19}
\]
At a degenerate endpoint \(q_i=0\), \(\kappa_H=0\). Positivity alone does not furnish a strictly positive extraction constant.

**AT9.** Every changing cross coefficient and step coefficient is visible in the affine representation:
\[
 q_0'=a'/2-c'/h+ch'/h^2,\qquad
 q_1'=a'/2+c'/h-ch'/h^2.
 \tag{AT20}
\]
The global weighted affine law is
\[
 \begin{aligned}
 E_P'+\nu(q_0Y_-+q_1\theta'Y_+)
 &=\frac12q_0'\|Z_0\|_2^2+\frac12q_1'\|Z_1\|_2^2+q_0T_0+q_1T_1,\\
 T_0&=-\frac\nu2\langle\nabla I,\nabla u_-\rangle
       +\frac12\langle u_-,N(u_-,I)\rangle
       +\langle Z_0,g_-\rangle+\frac12\langle Z_0,I'\rangle,\\
 T_1&=\frac{\nu\theta'}2\langle\nabla I,\nabla u_+\rangle
       -\frac{\theta'}2\langle u_+,N(u_+,I)\rangle
       +\theta'\langle Z_1,g_+\rangle-\frac12\langle Z_1,I'\rangle .
 \end{aligned}
 \tag{AT20a}
\]
No \(c'\), \(h'\), force-edge or cross-stock derivative is lost. This form also retains the exact initial and final stocks by integration. All nonlinear contractions which survive involve the prescribed force lift \(I\); the singular weight problem has transferred into \(q_i'\), the endpoint clock and weighted known-source work.

For any initial strict time \(\alpha\), the kinetic and known-lift bounds give the explicit initial stock
\[
 E_P(\alpha)\le\frac{a(\alpha)}2
 [K+h(\alpha)F_0/2]^2 .
 \tag{AT20b}
\]
Uniformity in a family therefore includes its initial coefficients; it is not supplied by positivity alone.

## Actual terminal alternatives and coefficient cost

**AT10.** On a finite prospective \(T_*\), the source admission and kinetic identity give
\[
 \sup_{t<T_*}\|u(t)\|_2\le K,\quad 2\nu\int_0^{T_*}Y\le K^2,\quad
 K=\|u_0\|_2+\int_0^{T_*}\|g\|_2\,dt .
 \tag{AT21a}
\]
Moreover \(e'=-2\nu Y+2\langle u,g\rangle\in L^1(0,T_*)\), so the scalar limit \(e_*=\lim_{t\uparrow T_*}e(t)\ge0\) exists. This establishes no strong velocity trace. For the known force lift \(\|I\|_2\le hF_0\), \(F_0=\sup_{[0,T_*]}\|g\|_2<\infty\).

The exact affine sum is
\[
 E_c=\frac14[\|u_-+I/2\|_2^2+\|u_+-I/2\|_2^2]
 =\frac14(e_-+e_+)-\frac14\langle X,I\rangle+\frac18\|I\|_2^2.
 \tag{AT21}
\]
For a single terminal curve \(t\uparrow T_*\), \(h\to0\), \(\theta<T_*\), it follows that \(E_c\to e_*/2\). No assumption about \(\|m\|\) or convergence of \(\langle u_-,u_+\rangle\) is used.

**AT11: precise single-curve theorem.** Suppose \(E_a=aE_c\le B\) and \(ah^2\ge c_0>0\) on that curve. Then
\[
 \|u_\pm\|_2\le h\left[2\sqrt{B/c_0}+F_0/2\right].
 \tag{AT22}
\]
Thus \(e_*=0\), and \(e_\pm=O(h^2)\); since \(h<T_*-t\), also \(e(t)=O((T_*-t)^2)\). If \(e_*>0\), bounded \(E_a\) instead forces bounded \(a\), whence \(ah^2\to0\). Consequently positive terminal kinetic stock excludes this paid coercive singular scalar class.

For \(e_*=0\), the displayed \(O(h^2)\) rate is a necessary condition, not a contradiction and not a consequence of \(e_*=0\). Algebraically, if \(e_-+e_+\le C h^2\), the force lift is bounded, and \(ah^2\) is bounded above, then \(aE_c\) is bounded. This supplies no upper bound for the full adaptive action or work primitive.

The same conditional conclusion holds for the full matrix class: if \(E_P\le B\) and \(\kappa_H\ge\kappa_0>0\), then \(q_i\ge\kappa_0/h^2\) and
\[
 \|u_\pm\|_2\le h[\sqrt{2B/\kappa_0}+F_0/2].
 \tag{AT23}
\]
The lower bound for each \(q_i\) follows from \(q_0q_1/(q_0+q_1)\le q_i\). This proof handles a vanishing mean and a changing cross coefficient without assuming a lower bound for either.

**AT12.** For the unforced single curve and constant \(\Gamma=ah^2>0\),
\[
 a'E_c+aM_h=-ah'\left[\frac{2E_c}{h}+\frac{\nu}{2}Y_+\right].
 \tag{AT24}
\]
On decreasing pieces \(h'\le0\), both summands are nonnegative. Their integrability cannot be asserted from finite \(\int Y\) alone. It is also not automatically false on the zero-stock branch: the actual stock and gradients may enter those integrals with decaying sizes.

A concrete limitation of paying the second summand by only the original kinetic measure is the following. Assume \(\theta'>0\), \(ah^2\ge c_0\), and try the sufficient absolute-density estimate
\[
 \frac{a|h'|}{\theta'}\le C.
 \tag{AT25}
\]
On every decreasing piece, \(\theta'\le1\), so \((1/h)'=-h'/h^2\le C/c_0\); on increasing pieces \((1/h)'\le0\). Hence \(1/h\) cannot diverge over a finite physical interval. Thus this particular datum-only absolute-density estimate cannot simultaneously retain a positive coefficient and extinguish \(h\) in finite time. This is an estimate limitation, not a proof that the actual weighted kinetic integral diverges or that a signed alternative cannot pay it.

Likewise, pricing \(a'E_c\) solely by \((a'/a)_+E_a\) requires the positive variation of \(\log a\); it is unbounded when \(a\to\infty\). The actual signed product may still be integrable if \(E_a\) decays. None of these statements introduces a sign hypothesis for the physical strain.

**AT13: distinct fixed-time family theorem.** Let \(h_\epsilon(t)\to0\) at each fixed strict physical time on an interval \(J\), and retain \(\kappa_{H,\epsilon}\ge\kappa_0>0\). Strict-prefix continuity gives \(Z_{0,\epsilon},Z_{1,\epsilon}\to u(t)\), whereas \(a_\epsilon\ge4\kappa_0/h_\epsilon^2\). Consequently
\[
 \liminf_{\epsilon\to0}h_\epsilon(t)^2E_{P,\epsilon}(t)
 \ge2\kappa_0 e(t).
 \tag{AT26}
\]
If \(J\) contains a strict time where the actual history is nonzero, it contains an open strict subinterval with \(e>0\). On that subinterval \(E_{P,\epsilon}\to\infty\) pointwise, and Fatou gives \(\liminf_\epsilon\int_J E_{P,\epsilon}=\infty\). Thus no uniform time-integrated budget exists in this declared intrinsically cancelling positive family with uniformly positive difference extraction on such a \(J\). This uses the actual history, applies also when its terminal scalar stock is zero, and does not assert an impossibility for a single terminal curve or for a different kernel class.

The actual receiver itself still satisfies \(H_\epsilon(t)\to u_t(t)-g(t)\) by the fundamental theorem of calculus on every fixed strict time. No analyticity assumption is needed for that limit. The family conclusion concerns its proposed cancelling positive budget, not the legitimacy of the actual differences.

## Normalization, known-force prices and integration measures

**AT14.** Writing \(E_a/a=E_c\) removes \(a'\) exactly and restores the coefficient \(h^2/4\) for \(H\) in \(2E_c\). The literal alternative normalization has the law
\[
 (E_c/a)'+D_c/a=
 [\langle m,\bar g\rangle+h^2F_H/4+M_h]/a-(a'/a^2)E_c .
 \tag{AT27}
\]
Its extraction coefficient is \(h^2/(4a)\); choosing \(a\) of order \(h^2\) relocates the singular mass into \(1/a\) and retains the displayed derivative port. The normalization \(E_a/(ah^2)=E_c/h^2\) satisfies
\[
 (E_c/h^2)'+D_c/h^2
 =\langle m,\bar g\rangle/h^2+F_H/4+M_h/h^2-2h'E_c/h^3 .
 \tag{AT28}
\]
No normalization erases its changing denominator. For the matrix class \(E_P/a=E_c+(c/a)C\), so differentiating additionally retains \((c/a)'C\).

**AT15.** The fixed-\(h\) force work is genuinely paid at arbitrary source amplitude. With \(K\) as above and \(A_G=\|\nabla G\|_\infty\),
\[
 \begin{aligned}
 E_c'+\nu\|\nabla m\|_2^2+\frac{\nu h^2}{8}\|\nabla H\|_2^2
 \le{}&E_c+K\|\bar g\|_2+
 \frac{\nu h^2}{8}\|\nabla G\|_2^2\\
 &+\frac{h^2K^2A_G^2}{2}+\frac{h^2K A_G\|G\|_2}{4}.
 \end{aligned}
 \tag{AT29}
\]
For moving \(h\), add exactly \(M_h\); after multiplying by \(a\), add \(a'E_c\). Thus the known-force terms become \(aK\|\bar g\|_2\) and \(ah^2\) times the three displayed force prices. When \(ah^2\) is bounded, the latter are finite on a finite horizon; the former is not made integrable by the admission of \(g\) alone when \(a\) is singular. Its actual signed work can be smaller when the actual mean decays. There is no assertion that that coarse upper price equals the actual work.

The alternative (AT13) pays the nonlinear known-force contraction by
\[
 |\langle u_\pm,N(u_\pm,I)\rangle|
 \le e_\pm\|\nabla I\|_\infty,\quad
 \|\nabla I\|_\infty\le h\sup\|\nabla g\|_\infty,
 \tag{AT30}
\]
and leaves only the two physical gradient cross terms, the two known force endpoints and the complete coefficient work. This can exploit actual decay, but supplies no datum-only decay rate by itself.

**AT15a: a genuinely paid adaptive class.** Suppose \(\theta'\ge0\), \(h\le h_0\), \(0\le q_i\le Q\), and \(\sum_i\operatorname{Var}q_i\le V\) on the examined interval. Set
\[
 L=K+h_0F_0/2,\quad F_1=\sup\|\nabla g\|_2,\quad
 F_\infty=\sup\|\nabla g\|_\infty,\quad
 B_0=\nu h_0^2F_1^2/4+K^2h_0F_\infty/2+2LF_0 .
 \tag{AT30a}
\]
Using the full source terms \(T_0,T_1\) in (AT20a) gives
\[
 \begin{aligned}
 E_P(b)+\frac{3\nu}{4}
 \int_\alpha^b[q_0Y_-+q_1\theta'Y_+]\,dt
 \le E_P(\alpha)+\frac{L^2}{2}V+
 QB_0[(b-\alpha)+(\theta(b)-\theta(\alpha))].
 \end{aligned}
 \tag{AT30b}
\]
Indeed each gradient-lift cross term spends only one quarter of its corresponding physical action; each nonlinear term spends \(K^2\|\nabla I\|_\infty/2\); and \(I'=\theta'g_+-g_-\) prices the remaining source pairings. All prescribed-force quantities are finite on a finite horizon. This gives actual positive moving-shift payment at arbitrary force amplitude, with no \(u_t\) estimate assumed. However \(\kappa_H\le(q_0+q_1)h^2/4\le Qh^2/2\), so this paid class loses unweighted difference extraction as \(h\to0\). The hypotheses on coefficient variation are explicit choices of this class, not a hidden assertion about an arbitrary singular adaptive weight.

**AT16.** If \(\theta\) is strictly increasing, the exact upper-clock measure is
\[
 \int_\alpha^b \theta' Y(\theta)\,dt
 =\int_{\theta(\alpha)}^{\theta(b)}Y(r)\,dr,\qquad
 \int_\alpha^b a|h'|Y(\theta)\,dt
 =\int_{\theta(\alpha)}^{\theta(b)}
 \frac{a|h'|}{\theta'}(\theta^{-1}(r))Y(r)\,dr .
 \tag{AT31}
\]
Without that monotonicity, the exact expression is the pushforward of \(a|h'|dt\) by \(\theta\). Regular-value coarea introduces the sum of \(a|h'|/|\theta'|\) over all branches; a constant-clock segment can produce an atom. No multiplicity bound or cutoff-derivative bound is assumed. The fixed clock action \(Y(\theta)\,dt\) and the transported action \(\theta'Y(\theta)\,dt\) are therefore different objects.

The same issue applies to force work and all time-dependent weights. A moving integration interval carries its endpoint stocks: for a differentiable family \(F(r,\epsilon)\),
\[
 \frac{d}{d\epsilon}\int_{\alpha(\epsilon)}^{\beta(\epsilon)}F(r,\epsilon)\,dr
 =\beta'F(\beta,\epsilon)-\alpha'F(\alpha,\epsilon)
  +\int_\alpha^\beta\partial_\epsilon F.
 \tag{AT32}
\]
Neither endpoint is silently placed at \(T_*\). The force window endpoints were already included in \(I'=\theta'g_+-g_-\).

## Local pressure, selectors and moving probability measures

**AT17.** All local face terms can be stated without any global projection. Define
\[
 \begin{aligned}
 L_0&=f_-+\tfrac12[I'+\nu AI+N(u_-,I)],\\
 L_1&=\theta'f_+-\tfrac12[I'+\theta'\nu AI+\theta'N(u_+,I)] .
 \end{aligned}
 \tag{AT33}
\]
The actual affine rows are
\[
 \begin{aligned}
 Z_0'+\nu AZ_0+N(u_-,Z_0)+\nabla p_-&=L_0,\\
 Z_1'+\theta'[\nu AZ_1+N(u_+,Z_1)+\nabla p_+]&=L_1 .
 \end{aligned}
 \tag{AT34}
\]
For \(K_i=|Z_i|^2/2\), let
\[
 \mathcal F_0=u_-K_0-\nu\nabla K_0+p_-Z_0,\qquad
 \mathcal F_1=\theta'[u_+K_1-\nu\nabla K_1+p_+Z_1].
 \tag{AT35}
\]
Then the full local matrix contraction is
\[
 \begin{aligned}
 \partial_t(q_0K_0+q_1K_1)
 +\operatorname{div}(q_0\mathcal F_0+q_1\mathcal F_1)
 +\nu[q_0|\nabla Z_0|^2+q_1\theta'|\nabla Z_1|^2]\\
 =q_0Z_0\cdot L_0+q_1Z_1\cdot L_1+q_0'K_0+q_1'K_1 .
 \end{aligned}
 \tag{AT36}
\]
The full physical pressures \(p_\pm=p_{0,\pm}-A^{-1}\operatorname{div}f_\pm\) occur in the faces; both source endpoints, \(I'\), the two known-force transport terms, and all \(q_i'\) are present. For a time-dependent spatial selector \(\zeta\), its integrated law adds \(\int\zeta_t(q_0K_0+q_1K_1)\) and \(\int\nabla\zeta\cdot(q_0\mathcal F_0+q_1\mathcal F_1)\). A moving spatial region has the additional Reynolds boundary stock. These pressure/source/collar terms cannot be discarded using the whole-space pressure pairing.

In the mean/difference description, before the whole-space integration in (AT7), the local extra known-force divergence is
\[
 F_H=\operatorname{div}\left[
 \nu\sum_iH_i\nabla G_i+d(m\cdot G)\right]
 -\nu\nabla H:\nabla G
 -m\cdot[N(H,G)+N(G,G)]-H\cdot N(m,G).
 \tag{AT37}
\]
It is an additional face when that recombination is localized. The mean pressure \(\bar p\) and difference pressure \(\pi_d\) are equivalently retained by (AT34)–(AT36).

**AT18.** To make the measure ports explicit, let \(\eta_t\) be a probability measure on fixed \(r\in[0,1]\), with a differentiable finite-signed-measure derivative \(\dot\eta_t\) of total mass zero. Put \(U_r=u(t+h(t)r)\), \(v=\int U_r\,d\eta_t\), \(\delta_r=U_r-v\), and \(R_\eta=\int N(\delta_r,\delta_r)d\eta_t\). The mean row includes \(R_\eta\), the full averaged physical pressure, the averaged force and
\[
 b_v=\int r h'u_t(t+hr)\,d\eta_t+\int U_r\,d\dot\eta_t.
 \tag{AT38}
\]
The deviation row has pressure \(p(t+hr)-\bar p_\eta\), both cross parents \(N(v,\delta_r)+N(\delta_r,v)\), \(N(\delta_r,\delta_r)-R_\eta\), force \(f_r-\bar f_\eta\), and extra source \(rh'u_t(t+hr)-b_v\). Therefore
\[
 \begin{aligned}
 E_{\rm mean}'+\nu\|\nabla v\|^2
 &=+\int S(v,\delta_r,\delta_r)d\eta_t+\langle v,\bar g_\eta\rangle+\langle v,b_v\rangle,\\
 E_{\rm var}'+\nu\int\|\nabla\delta_r\|^2d\eta_t
 &=-\int S(v,\delta_r,\delta_r)d\eta_t
 +\int\langle\delta_r,g_r-\bar g_\eta\rangle d\eta_t\\
 &\quad+\int\langle\delta_r,rh'u_t(t+hr)\rangle d\eta_t
 +\frac12\int\|\delta_r\|^2d\dot\eta_t ,
 \end{aligned}
 \tag{AT39}
\]
where \(E_{\rm mean}=\|v\|^2/2\) and \(E_{\rm var}=\int\|\delta_r\|^2d\eta_t/2\). Their sum is the averaged actual kinetic stock, not an unweighted temporal derivative stock.

The total moving port is exactly
\[
 \int r h'\langle U_r,u_t(t+hr)\rangle d\eta_t+
 \frac12\int\|U_r\|^2d\dot\eta_t .
 \tag{AT40}
\]
Recombining the physical kinetic law gives instead
\[
 \begin{aligned}
 E_\eta'+\nu\int(1+rh')Y(t+hr)d\eta_t
 =\int(1+rh')\langle U_r,g_r\rangle d\eta_t
  +\frac12\int\|U_r\|^2d\dot\eta_t .
 \end{aligned}
 \tag{AT41}
\]
Locally, the averaged physical flux is multiplied by \(1+rh'\), so it retains \(p(t+hr)U_r\). A common scalar multiplier adds \(a'E_\eta\). Unequal mean and variance multipliers retain their difference times the full strain in (AT39), their separate coefficient derivatives, and both respective moving ports. For moving atoms \(r_i(t)\), the additional shift is \(h r_i'u_t(t+h r_i)\); it is not represented by a finite-measure derivative of fixed atoms. No variation bound for \(\eta_t\) or derivative extraction for a regular kernel is presumed.

## Bounded outcome

**AT19.** The intrinsic nonlinear strain is fully cancelled in the positive compensated two-shift family, including its cross coefficient; the force and physical pressure are handled up front as (AT4), (AT7), and (AT34)–(AT36). The remaining adaptive work is exactly the coefficient and physical-clock/source work in (AT9), (AT13), or (AT20a), with every initial, strict-terminal, local and moving-domain stock retained.

The bounded-coefficient, bounded-variation moving class in (AT30b) has a complete datum/known-force budget. It is therefore a feasible positive cancellation construction; its difference extraction coefficient tends to zero with the separation.

This yields two concrete conclusions rather than an unconditional terminal verdict. Positive terminal kinetic stock excludes a bounded singular coercive budget in this family. A zero terminal stock on one terminal curve instead requires the actual \(O(h^2)\) endpoint decay and payment of the displayed adaptive action/work; neither is inferred solely from kinetic finiteness. Independently, for shrinking differences at fixed physical times of any nonzero actual history, the full cancelling positive family with uniform difference extraction has no uniform time-integrated stock budget, by (AT26). No conclusion beyond this declared family, no blowup claim, and no counterexample to the source regularity theorem is asserted.
