# Actual time shifts: whole domains, kinetic strips and the first rectangle

6 October 2026. This calculation uses real translations of the original Navier–Stokes history. It keeps their actual domains and all initial/current stocks, without continuing the velocity beyond its maximal interval. It establishes the precise uniform-quotient membership statement and its conditional first-rectangle consumer. The separately paid kinetic diagonal budgets are tracked after their required division by \(h^2\).

## 1. Actual source, force and finite-rectangle scope

The primary history is [01-setting-mixed-jet.tex, LF59–106](../SOURCES.md#src-forced-setting), with the exact finite rectangle at LF729–764. The actual complete mixed graph is also [native assembly, LF18–70 and LF1450–1522](../SOURCES.md#src-native-assembly). The kinetic identity and full-pressure square are [02-compatible-rectangles.tex, LF13–59 and LF189–251](../SOURCES.md#src-compatible-rectangles).

An additional mathematical source is [00-analytic-framework.tex](../SOURCES.md#src-analytic-framework). Read LF18–163 supplies the componentwise Sobolev conventions, bounded-derivative embedding, and the exact \(\mathsf S(3),\mathsf S(6)\) used in the conditional conversion below; LF256–323 supplies both projections and the retained low-frequency force potential; LF342–386 proves the exact adjacent Hilbert-scale trace with its two finite-membership hypotheses.

Fix the original prescribed-force history, with \(\nu>0\), \(u_0\in H^\infty_\sigma\), and arbitrary \(f\in C^\infty([0,\infty);\mathcal S)\). Its maximal time is \(T_*\). Choose a finite target \(0<T\le T_*\); the proposed whole-terminal case is \(T=T_*<\infty\). Every velocity or pressure evaluation below has time strictly below \(T_*\). The force is the same absolute-time prescribed function at both shifted times.

Write
\[
 L=-\Delta,\quad N(a,b)=(a\cdot\nabla)b,\quad B=N(u,u),\quad
 g=\mathbb Pf,\quad V=u_t,\quad
 e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,\quad Z=\|Lu\|_2^2.
\]
The original first rectangle is exactly
\[
 \mathfrak R_{0,1}(u;b)
     =\|u\|_{L^2(0,b;H^2)}^2
        +\|V\|_{L^2(0,b;L^2)}^2,\qquad b<T_*.
 \tag{TS1}
\]
Both terms matter. The definition at LF729–750 is a strict-horizon definition; it has not itself supplied their supremum at a finite \(T_*\).

## 2. Scalar kinetic endpoint and the weaker velocity trace

The complete kinetic identity gives
\[
 e'=-2\nu Y+2F,\qquad F=\langle u,g\rangle,
 \quad K=\|u_0\|_2+\int_0^T\|g(s)\|_2ds,
 \quad \sup_{s<T}\|u(s)\|_2\le K,
 \quad D:=\int_0^TY\le\frac{K^2}{2\nu}.
 \tag{TS2}
\]
All these bounds also hold when \(T=T_*<\infty\), by monotone passage from strict times. The force horizon \([0,T]\) is allowed by its given class. Since \(\int|F|\le K\int\|g\|\), \(e\) has a scalar endpoint limit \(e_*\), with
\[
 e(t)-e_*=2\nu\int_t^TY(s)ds-2\int_t^TF(s)ds.
 \tag{TS3}
\]
This scalar endpoint is not identified with the norm of an unproved strong velocity trace.

There is, nevertheless, a genuine weak \(L^2\) velocity endpoint. The full projected momentum is \(V=-\nu Lu-\mathbb P\operatorname{div}(u\otimes u)+g\). Testing its nonlinear part against \(\phi\in H^3\), and retaining the projection on the test, gives
\[
 |\langle\mathbb P\operatorname{div}(u\otimes u),\phi\rangle|
 \le K^2\|\nabla\mathbb P\phi\|_\infty
 \le C_HK^2\|\phi\|_{H^3}.
\]
Here one admissible finite constant is
\(C_H=(2\pi)^{-3/2}(\int|\xi|^2\langle\xi\rangle^{-6}d\xi)^{1/2}\).
Also \(\|Lu\|_{H^{-3}}\le K\). Consequently
\[
 \|V(t)\|_{H^{-3}}\le\nu K+C_HK^2+\|g(t)\|_2,
 \qquad V\in L^1(0,T;H^{-3}).
 \tag{TS4}
\]
Thus \(u\) has a strong \(H^{-3}\) endpoint. Approximation of arbitrary \(L^2\) tests by \(H^3\) tests and the uniform \(L^2\) bound yield a unique actual weak \(L^2\) trace \(u_-\). In particular
\[
 u(t)\rightharpoonup u_-\text{ in }L^2,\qquad
 \Delta_*=e_*-\|u_-\|_2^2\ge0.
 \tag{TS5}
\]
No velocity value past \(T_*\) has been introduced. If \(T<T_*\), the ordinary classical value \(u(T)\) gives \(u_-\) and \(\Delta_*=0\).

## 3. Actual forward/backward equations and pressure

For \(0<h<T\), define only on their genuine domains
\[
 d_h^+(t)=\frac{u(t+h)-u(t)}h,\quad 0<t<T-h,
 \qquad
 d_h^-(t)=\frac{u(t)-u(t-h)}h,\quad h<t<T.
 \tag{TS6}
\]
They satisfy \(d_h^-(t)=d_h^+(t-h)\). Write \(U_h(t)=u(t+h)\), \(d=d_h^+\), \(f_h^\Delta=(f(t+h)-f(t))/h\) and \(\pi_h=(p(t+h)-p(t))/h\). Subtracting the two original equations gives exactly
\[
 d_t+\nu Ld+N(U_h,d)+N(d,u)+\nabla\pi_h=f_h^\Delta.
 \tag{TS7}
\]
Its complete nonlinear difference can equivalently be written
\(N(u,d)+N(d,u)+hN(d,d)\). Both ordered parents and the extra finite-shift parent remain in the equation. Canonical pressure is
\[
 \pi_h=R_iR_j(u_id_j+d_iu_j+hd_id_j)
                    -L^{-1}\operatorname{div}f_h^\Delta.
 \tag{TS8}
\]
It is the real pressure difference from the same original history. It is not an independently assigned linearized pressure. In particular \(\nabla\pi_h=(I-\mathbb P)(f_h^\Delta-N(U_h,d)-N(d,u))\). The backward row is exactly (TS7) translated by \(h\), with its base time \(t-h\).

On a strict prefix \(0\le b<T-h\), incompressibility gives the complete difference-energy equality
\[
 \frac12\|d(b)\|_2^2+\nu\int_0^b\|\nabla d\|_2^2
 =\frac12\|d(0)\|_2^2-\int_0^bS_h
             +\int_0^b\langle g_h^\Delta,d\rangle,
 \quad S_h=\langle d,N(d,u)\rangle,
 \tag{TS9}
\]
where \(g_h^\Delta=\mathbb Pf_h^\Delta\). The transport parent is skew only in this complete full-space pairing. Replacing \(u\) in \(S_h\) by \((u+U_h)/2\) gives the same integrated contraction because the added \(hN(d,d)/2\) has zero pairing with \(d\). This replacement does not delete that term from the field equation or its pressure.

If the full pressure square is used, its exact strict-prefix content is
\[
 \|d_t\|_2^2+\nu^2\|Ld\|_2^2+\|\nabla\pi_h\|_2^2
     +\nu(\|\nabla d\|_2^2)'
 =\|f_h^\Delta-N(U_h,d)-N(d,u)\|_2^2.
 \tag{TS10}
\]
Its integrated form retains \(\nu\|\nabla d(b)\|^2\) and \(\nu\|\nabla d(0)\|^2\), in addition to every displayed source and pressure term. None of these higher square actions is declared finite on the terminal domain from the kinetic bound alone.

The prescribed force differences have a genuine uniform derivative price:
\[
 \int_0^{T-h}\|g_h^\Delta(t)\|_2^2dt
      \le\int_0^T\|g_t(s)\|_2^2ds,
 \quad
 \int_0^{T-h}\|f_h^\Delta(t)\|_2^2dt
      \le\int_0^T\|f_t(s)\|_2^2ds.
 \tag{TS11}
\]
This follows by averaging the actual prescribed derivatives over \([t,t+h]\). It pays the prescribed term, rather than the nonlinear difference or the complete right side of (TS10).

## 4. Exact diagonal kinetic strips and their normalized price

Introduce the actual strips
\[
 \begin{aligned}
 E&=\int_0^Te(s)ds,& E_i(h)&=\int_0^he(s)ds,&
 E_\tau(h)&=\int_{T-h}^Te(s)ds,\\
 D&=\int_0^TY(s)ds,& D_i(h)&=\int_0^hY(s)ds,&
 D_\tau(h)&=\int_{T-h}^TY(s)ds,\\
 W&=\int_0^TF(s)ds,& W_i(h)&=\int_0^hF(s)ds,&
 W_\tau(h)&=\int_{T-h}^TF(s)ds.
 \end{aligned}
\]
Adding the two actual kinetic identities over \([0,b]\) and \([h,b+h]\) gives
\[
 \frac{e(b)+e(b+h)}2
  +\nu\int_0^b[Y(s)+Y(s+h)]ds
 =\frac{e(0)+e(h)}2+\int_0^b[F(s)+F(s+h)]ds.
 \tag{TS12}
\]
Passing \(b\uparrow T-h\) uses only scalar kinetic traces and integrable known kinetic/source work, giving the exact whole-shift balance
\[
 \frac{e(T-h)+e_*}2
        +\nu[2D-D_i(h)-D_\tau(h)]
  =\frac{e(0)+e(h)}2+[2W-W_i(h)-W_\tau(h)].
 \tag{TS13}
\]
Both strips appear. This does not evaluate \(u\) at \(T_*\) as a classical field.

The corresponding diagonal upper bounds for the normalized difference are
\[
 \begin{aligned}
 M_h:=\int_0^{T-h}\|d_h^+\|_2^2
   &\le\frac2{h^2}[2E-E_i(h)-E_\tau(h)]
     \le\frac{4K^2(T-h)}{h^2},\\
 D_h:=\int_0^{T-h}\|\nabla d_h^+\|_2^2
   &\le\frac2{h^2}[2D-D_i(h)-D_\tau(h)]
     \le\frac{4D}{h^2}\le\frac{2K^2}{\nu h^2}.
 \end{aligned}\tag{TS14}
\]
They also hold for the backward quotient on \((h,T)\), with equal left sides. Every fixed \(h\) has finite whole-domain quotient and first-spatial-derivative action from these actual kinetic budgets. The budgets are of order \(h^{-2}\); they do not supply a finite supremum as \(h\downarrow0\).

The exact normalized norm contains the actual cross Gram:
\[
 M_h=\frac1{h^2}\int_0^{T-h}
       [e(t+h)+e(t)-2\langle U_h(t),u(t)\rangle]dt.
 \tag{TS15}
\]
The cross entry is not licensed to equal its diagonal bounds. Its full nonlinear derivative is
\[
 \begin{aligned}
 (\langle U_h,u\rangle)'={}&-2\nu\langle\nabla U_h,\nabla u\rangle
                       +h^2S_h\\
   &+\langle f(t+h),u(t)\rangle+\langle U_h(t),f(t)\rangle.
 \end{aligned}\tag{TS16}
\]
Indeed the exact convection combination is
\[
 h^2S_h=-[\langle u,B(U_h)\rangle+\langle U_h,B(u)\rangle].
 \tag{TS17}
\]
Thus combining the diagonal energies with the actual cross reproduces the signed current in (TS9); it does not remove it by kinetic skewness. The full pressure pairings against the solenoidal shifted velocities vanish in (TS16); their actual canonical difference remains (TS8), and their gradient square remains (TS10).

## 5. Fixed-shift terminal stocks and a legitimate finite current

For each fixed \(h>0\), (TS17) also proves absolute whole-shift integrability of the signed current. Integration by parts moves the derivative in \(\langle u,B(U_h)\rangle\) onto the strictly lagged base \(u(t)\), so
\[
 h^2|S_h(t)|
       \le K^2\|\nabla u(t)\|_\infty
                     +K\|B(u(t))\|_2,
        \qquad 0<t<T-h.
 \tag{TS18}
\]
The base history extends smoothly through the entire strict prefix \([0,T-h]\), so its two right-side norms are bounded there. Their bound can depend on \(h\). This establishes the actual fixed-\(h\) terminal current, without an assumption of absolute integrability of \(V\)'s terminal strain.

The scalar terminal quotient stock is likewise determined exactly from (TS5):
\[
 Q_h^*:=\lim_{b\uparrow T-h}\|d_h^+(b)\|_2^2
  =\frac{e_*+e(T-h)-2\langle u_-,u(T-h)\rangle}{h^2}.
 \tag{TS19}
\]
The weak quotient trace is \((u_--u(T-h))/h\); its squared norm differs from \(Q_h^*\) by precisely \(\Delta_*/h^2\). In particular \(0\le Q_h^*\le4K^2/h^2\). A scalar norm limit has not been confused with a strong terminal velocity.

Every term of the full fixed-shift energy equality now has its justified terminal limit:
\[
 \frac12Q_h^*+\nu D_h
 =\frac12\|d_h^+(0)\|_2^2
     -\int_0^{T-h}S_h(t)dt
     +\int_0^{T-h}\langle g_h^\Delta,d_h^+\rangle dt.
 \tag{TS20}
\]
The backward quotient has the same initial/current stocks under translation. Also \(d_h^+(0)\to V(0)\) in every fixed Sobolev space as \(h\downarrow0\), by the genuine initial mixed jet and strict local history. The given initial force and pressure are included in \(V(0)\).

The shifted signed primitive has a real finite kinetic/source-only upper price at each fixed shift:
\[
 -\int_0^{T-h}S_h
 \le\frac{4K^2}{h^2}
       +\frac{2K\sqrt T}{h}\|g_t\|_{L^2(0,T;L^2)}.
 \tag{TS21}
\]
This follows from (TS20), (TS14), (TS19), (TS11), and the nonpositive subtraction of its initial stock. It is a concrete fixed-shift gain. Its price is not uniform in the small-shift limit, and no divergence of the actual solution or impossibility of a further signed operation is inferred from this upper bound.

## 6. Whole-domain temporal membership: exact quotient equivalence

At every fixed \(t<T\), strict classical regularity gives
\(d_h^+(t)\to V(t)\) in \(L^2\) as \(h\downarrow0\). For a varying-domain Fatou argument, extend only \(d_h^+\) by zero on \((T-h,T)\). This is a measurable comparison function, not an extension of \(u\) or of its equation beyond \(T_*\). Fatou gives
\[
 \int_0^T\|V\|_2^2\le\liminf_{h\downarrow0}M_h.
 \tag{TS22}
\]
Consequently a uniform whole-domain quotient bound, or just a sequence \(h_k\downarrow0\) with bounded \(M_{h_k}\), suffices for \(V\in L^2(0,T;L^2)\).

Conversely, the actual fundamental theorem of calculus on \([t,t+h]\) and Jensen give
\[
 \begin{aligned}
 \|d_h^+(t)\|_2^2
     &\le\frac1h\int_t^{t+h}\|V(s)\|_2^2ds,\\
 M_h&\le\int_0^T\omega_h(s)\|V(s)\|_2^2ds,
 \qquad
 \omega_h(s)=\frac{|(0,T-h)\cap(s-h,s)|}{h}\le1.
 \end{aligned}\tag{TS23}
\]
For \(h\le T/2\), this weight is \(s/h\) on the initial strip, one on \([h,T-h]\), and \((T-s)/h\) on the terminal strip. Thus the converse retains both endpoint losses instead of silently extending a quotient to a larger domain.

Combining (TS22)–(TS23) proves the exact extended-value identity
\[
 \lim_{h\downarrow0}M_h
       =\sup_{0<h<T}M_h
       =\int_0^T\|V\|_2^2\ \in[0,\infty].
 \tag{TS24}
\]
If the right side is infinite, Fatou makes the limit infinite; if finite, Jensen and Fatou make it equal to that finite value. The same assertion holds for backward quotients. This identity is a precise equivalence, not a production of a finite right side from the kinetic diagonal estimate (TS14).

With finite action, the zero-extended quotients converge strongly to \(V\) in whole-domain \(L^2\): the actual quotient is the Steklov average of \(V\), translations of the \(L^2\) function \(V\) are continuous, and the terminal strip of \(V\)'s squared norm tends to zero. Extending \(V\) by zero for that functional-analytic estimate does not continue the velocity history or force.

Finite action also constructs a strong \(L^2\) velocity trace by
\[
 \|u(t)-u(s)\|_2
       \le\sqrt{t-s}\left(\int_s^t\|V(r)\|_2^2dr\right)^{1/2}.
 \tag{TS25}
\]
It equals \(u_-\), hence \(\Delta_*=0\) in (TS19). This stronger trace is a consequence of the proven temporal membership; it was not an input to the varying-domain proof.

## 7. Positive continuum variance gives the same whole-domain target

Let \(\eta\) be a fixed probability measure on \([0,1]\), with nonzero variance \(\sigma^2\). Define using only actual times on \((0,T-h)\)
\[
 v_h(t)=\int u(t+hz)\eta(dz),\qquad
 E_{\mathrm{var},h}(t)
   =\frac14\iint\|u(t+hz)-u(t+hw)\|_2^2\eta(dz)\eta(dw).
 \tag{TS26}
\]
This equals half the mean squared deviation from \(v_h\). Strict actual differentiability gives
\(h^{-2}E_{\mathrm{var},h}(t)\to\sigma^2\|V(t)\|_2^2/2\). For the converse, each actual increment satisfies
\[
 \|u(t+hz)-u(t+hw)\|_2^2
 \le h|z-w|\int_{t+h\min(z,w)}^{t+h\max(z,w)}\|V(s)\|_2^2ds.
\]
Integration in \(t\) keeps the window-intersection length and yields
\[
 \begin{aligned}
 \int_0^{T-h}\frac{E_{\mathrm{var},h}}{h^2}dt
     &\le\frac{\sigma^2}{2}\int_0^T\|V\|_2^2dt,\\
 \lim_{h\downarrow0}\int_0^{T-h}\frac{E_{\mathrm{var},h}}{h^2}dt
     &=\frac{\sigma^2}{2}\int_0^T\|V\|_2^2dt\quad\text{in }[0,\infty].
 \end{aligned}\tag{TS27}
\]
The window multiplier before the first bound is
\(\frac14\iint\frac{|z-w|}{h}|(0,T-h)\cap(s-h\max(z,w),s-h\min(z,w))|\eta(dz)\eta(dw)\).
It is at most \(\frac14\iint|z-w|^2\eta(dz)\eta(dw)=\sigma^2/2\), with its actual endpoint strips retained. The second equality follows from this bound and the same varying-domain Fatou argument. A zero-variance measure gives no derivative criterion.

The integrated kinetic diagonal underlying this average is exactly
\[
 \int_0^{T-h}\int Y(t+hz)\eta(dz)dt
  =D-\int\left[\int_0^{hz}Y+\int_{T-h+hz}^TY\right]\eta(dz).
 \tag{TS28}
\]
Its force work has the analogous signed strip formula with \(Y\) replaced by \(F\). Each shifted initial energy is \(e(hz)\); each shifted terminal scalar energy is \(e(T-h+hz)\), with \(e_*\) used only for an atom at \(z=1\). Thus no averaged endpoint is silently moved past \(T_*\).

Dropping the nonnegative mean square in the variance gives only
\(\int_0^{T-h}E_{\mathrm{var},h}/h^2\le K^2(T-h)/(2h^2)\).
This known diagonal price has the same nonuniform small-shift scaling. The positive continuum contraction needs a genuinely uniform normalized variance action to produce the temporal membership in (TS27).

## 8. Conditional actual-momentum conversion to the full first rectangle

The uniform-quotient hypothesis pays the temporal part of (TS1). On the actual NS history it also has an exact conditional consumer that pays the spatial part. This is a conversion of a supplied finite action, not an independent producer of that hypothesis.

Let \(M=\int_0^T\|V\|_2^2<\infty\), \(G_2=\int_0^T\|g\|_2^2\). Pairing the complete original momentum with \(u\), including its kinetic pressure/transport cancellation, gives the radial Gram identity
\[
 \nu Y=-\langle u,V-g\rangle,
 \qquad P_2:=\int_0^TY^2
      \le\frac{2K^2}{\nu^2}(M+G_2).
 \tag{TS29}
\]
The original homogeneous Sobolev constants give
\(a=\mathsf S(3)\mathsf S(6)=\sqrt{2/3}/\pi\).
Applying them to the full velocity and physical gradient, with Fourier interpolation, yields
\[
 \|B\|_2\le\|u\|_6\|\nabla u\|_3
       \le aY^{3/4}Z^{1/4}.
 \tag{TS30}
\]
The exact enstrophy row is
\(Y'/2+\nu Z=-\langle B,Lu\rangle+\langle g,Lu\rangle\); its pressure pairing against \(Lu\) vanishes by solenoidality. All nonlinear and force terms are present before their bounds. Absorbing each term into \(\nu Z/4\) gives
\[
 Y'+\nu Z\le\frac{6}{\pi^4\nu^3}Y^3+\frac2\nu\|g\|_2^2.
 \tag{TS31}
\]
Indeed \(aY^{3/4}Z^{3/4}\le\nu Z/4+27a^4Y^3/(4\nu^3)\) and
\(\|g\|\sqrt Z\le\nu Z/4+\|g\|^2/\nu\); multiplying the enstrophy inequality by two gives the displayed coefficient.

Now \(Y^3=Y^2(t)Y(t)\), and (TS29) supplies the actual integrable coefficient. Multiplying (TS31) by its integrating factor gives the uniform strict-prefix estimate
\[
 Y(t)+\nu\int_0^tZ(s)ds\le
 L_T:=\left[Y(0)+\frac2\nu G_2\right]
        \exp\left(\frac{6P_2}{\pi^4\nu^3}\right),\qquad t<T.
 \tag{TS32}
\]
The datum term \(Y(0)\) is retained. The original inhomogeneous Sobolev convention implies
\[
 \|u\|_{L^2(0,T;H^2)}^2
   =\int_0^T(e+2Y+Z)
   \le TK^2+\frac{K^2}{\nu}+\frac{L_T}{\nu}.
 \tag{TS33}
\]
Thus the finite actual difference-quotient action, equivalently finite nondegenerate normalized variance action, supplies \(\sup_{0<b<T}\mathfrak R_{0,1}(u;b)<\infty\) by this complete conditional momentum/Gram/enstrophy chain. This uses precisely the original strict-prefix rectangle norms of (TS1); it does not evaluate a classical history at \(T_*\).

Pressure remains fully compatible in the conversion. From (TS30),
\(\int\|B\|^2\le a^2L_T(\int Y)^{1/2}(\int Z)^{1/2}<\infty\).
The genuine gradient \(\nabla p=(I-\mathbb P)(f-B)\) consequently lies in whole-domain \(L^2_tL^2_x\), with the original force potential \(-L^{-1}\operatorname{div}f\) retained. No pressure sign or solenoidal restriction on \(f\) is used.

Conversely a uniform first-rectangle bound \(\sup_{0<b<T}\mathfrak R_{0,1}(u;b)<\infty\) contains \(V\in L^2(0,T;L^2)\), hence gives the uniform quotient/variance actions through (TS23)/(TS27). Within this actual-history class, these are equivalent finite-entry statements. One finite strict-prefix rectangle is not a uniform bound. The kinetic diagonal estimate (TS14) has not produced that uniform finiteness.

## 9. Endpoint regularity and exact scope

With the full first rectangle now supplied, the original [adjacent Hilbert-scale trace, LF342–386](../SOURCES.md#src-analytic-framework), at \(m=1\), gives
\[
 \|u(t)\|_{H^1}^2-\|u(s)\|_{H^1}^2
       =2\int_s^t\langle(1+L)u,V\rangle,
 \quad
 \sup_{t<T}\|u(t)\|_{H^1}^2
       \le\|u_0\|_{H^1}^2
              +2\|u\|_{L^2H^2}\|V\|_{L^2L^2}.
 \tag{TS34}
\]
It yields a strong \(H^1\) velocity trace on \([0,T]\). One direct proof truncates high Fourier frequencies in (TS34): their initial \(H^1\) tail and the product of the two high-frequency \(L^2\) tails tend uniformly to zero; low frequencies converge by the strong \(L^2\) trace (TS25). Strong \(H^1\) convergence also yields the canonical scalar pressure trace in \(L^2\), since \(u\to u_-\) in \(L^4\), both velocity pressure parents converge in \(L^2\), and the prescribed force potential is continuous there. No higher temporal pressure trace is asserted by this argument.

Pointwise quotient convergence and convergence on each fixed strict prefix are already furnished by the given classical history. They do not furnish the uniform whole-terminal action: that additional action is exactly the finite norm in (TS24) or (TS27), with the uniformity quantified over the shrinking terminal-domain strips. The actual kinetic-only bounds of those actions retain their \(h^{-2}\) price.

What is verified here is the exact fixed-shift full-pressure equation, absolutely integrable fixed-shift nonlinear current, initial/current kinetic stocks and both strips, uniform prescribed derivative-force budget, forward/backward norm equivalence, positive continuum variance equivalence, and the conditional actual-equation conversion to the full first rectangle and its proven endpoint traces. No continuation beyond \(T_*\), datum-only uniform quotient production, or unproved terminal membership is inserted. A later passage of other nonlinear, pressure or differentiated signed currents requires its own convergence; this report does not relabel those currents as paid merely because the quotient norms have been identified.
