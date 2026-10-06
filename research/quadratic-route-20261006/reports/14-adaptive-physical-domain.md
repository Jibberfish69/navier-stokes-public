# Adaptive actual-time shifts: domains, complete balances and receiving action

This calculation extends actual evaluations of the one prescribed forced history to locally Lipschitz time curves inside its physical domain. It establishes a datum-paid signed primitive of a complete adaptive relative current. It also identifies exactly what a single adaptive quotient action would need to imply the original whole-terminal first-row action. Shrinking increments alone and compressed parameter speeds do not supply that implication. A history-tracking adaptive choice does give a precise conditional implication, without requiring a uniform parameter family.

All formulas below hold first on strict intervals. No value of the classical history at or beyond its unproved terminal time is used. The calculation makes no sign assumption on nonlinear work and uses the full prescribed force, including its canonical pressure potential.

## 1. Source quantifiers and the actual receiving row

The mathematical source witnesses and their exact equation/line locations are identified in [the source index](../SOURCES.md).

| Original | Mathematical coverage in this calculation |
|---|---|
| [Forced setting](../SOURCES.md#src-forced-setting) | LF59–107: one classical history and actual derivatives. LF432–489: strict-horizon construction. LF491–675: fixed finite orders, whole-terminal memberships, force payment and norm restriction. LF700–764: mixed exhaustion and finite-rectangle definition. |
| [Compatible rectangles](../SOURCES.md#src-compatible-rectangles) | LF13–59: original kinetic budgets. LF309–386: complete-row estimates after adjacent membership. LF393–438: exact equivalence between whole-terminal adjacent membership and a strict-cutoff-uniform finite norm. |
| [Native assembly](../SOURCES.md#src-native-assembly) | J1–J9, LF1450–1577: full jet, both nonlinear parents, prescribed force and instantaneous compatibility. J10–J13d, LF1579–1725: actual Gram, heights, pressure flux and all nine corner pairings. J14–J15, LF1727–1765: finite norm extraction conditional on membership on the specified interval. |

Write \(T=T_*<\infty\), \(L=-\Delta\), \(V=u_t\), \(N(a,b)=(a\cdot\nabla)b\), \(B=N(u,u)\), and \(g=\mathbb Pf\). The original pressure-complete row is
\[
 V+\nu Lu+B+\nabla p=f,\qquad
 \nabla\cdot u=0,\qquad
 p=R_iR_j(u_i u_j)-L^{-1}\nabla\cdot f .
 \tag{AT1}
\]
The full source is never replaced by its projection in a scalar-pressure or pressure-square statement.

For \(N=0,M=1\), the original finite norm on a strict prefix is
\[
 \mathfrak R_{0,1}(u;b)
 =\int_0^b\bigl(\|u(t)\|_{H^2}^2+\|V(t)\|_2^2\bigr)\,dt,
 \qquad 0<b<T.
 \tag{AT2}
\]
Its whole-terminal requirement is the same physical-time integral on \((0,T)\), or equivalently its supremum over all strict cutoffs. The forced setting LF642–650 states adjacent memberships on this interval before its cutoff supremum is obtained at LF655–674. Neither that fixed-order quantifier nor J10–J13d is a theorem about adaptive sampling curves: J13c explicitly substitutes derivatives evaluated at one time. J14 extracts norms only where the specified interval membership has been supplied.

The original kinetic identity gives the unconditional finite-horizon budgets
\[
 K=\|u_0\|_2+\int_0^T\|g(s)\|_2\,ds,\qquad
 \sup_{s<T}\|u(s)\|_2\le K,\qquad
 \mathcal D=\int_0^T\|\nabla u(s)\|_2^2\,ds
 \le\frac{K^2}{2\nu}.
 \tag{AT3}
\]
These hold for arbitrary amplitude of the admitted smooth Schwartz force. If \(K=0\), the velocity and all its temporal derivatives vanish by this identity; the physical scalar pressure can still be the prescribed force potential.

## 2. Admissible actual-time curves and their complete Gram

Let \(s_i(r)\) be finitely many locally Lipschitz curves, with
\[
 0\le s_i(r)<T,\qquad U_i(r)=u(s_i(r)),\quad
 p_i(r)=p(s_i(r)),\quad f_i(r)=f(s_i(r)),\quad c_i(r)=s_i'(r).
 \tag{AT4}
\]
On every compact parameter interval whose images lie strictly inside \([0,T)\), the chain rule holds almost everywhere. These are evaluations of one history, not new solution histories. Curves need not be monotone for this local chain rule. Monotonicity, and any positive lower speed needed to compare time actions, are additional hypotheses.

For \(C_{ij}=\langle U_i,U_j\rangle\), \(K_{ij}=\langle\nabla U_i,\nabla U_j\rangle\), and \(B_i=N(U_i,U_i)\), direct use of both complete rows gives
\[
 C_{ij}'=-\nu(c_i+c_j)K_{ij}
 -c_i\langle B_i,U_j\rangle-c_j\langle U_i,B_j\rangle
 +c_i\langle f_i,U_j\rangle+c_j\langle U_i,f_j\rangle .
 \tag{AT5}
\]
The integrated pressure pairings vanish by incompressibility; the pressures are still the actual normalized \(p_i\). In a bounded spatial domain their exact local flux is retained:
\[
 \begin{aligned}
 \partial_r(U_i\cdot U_j)+\nabla\cdot\mathcal F_{ij}
 ={}&-\nu(c_i+c_j)\nabla U_i:\nabla U_j\\
 &-c_i B_i\cdot U_j-c_j U_i\cdot B_j
   +c_i f_i\cdot U_j+c_j U_i\cdot f_j,\\
 \mathcal F_{ij}={}&-\nu\{c_i(\nabla U_i)^TU_j
                  +c_j(\nabla U_j)^TU_i\}
                  +c_i p_iU_j+c_j p_jU_i .
 \end{aligned}
 \tag{AT6}
\]
Here \((\nabla U_i)_{ab}=\partial_b(U_i)_a\). No local pressure flux has been set to zero.

For a symmetric locally absolutely continuous physical shift weight \(Q(r)\), set \(E_Q=\frac12 Q:C\). The exact strict-interval ledger is
\[
 \begin{aligned}
 E_Q(b)+\nu\int_a^b\sum_{ij}Q_{ij}\frac{c_i+c_j}{2}K_{ij}\,dr
 ={}&E_Q(a)-\int_a^b\sum_{ij}Q_{ij}c_j
                              \langle U_i,B_j\rangle\,dr\\
 &+\int_a^b\sum_{ij}Q_{ij}c_j\langle U_i,f_j\rangle\,dr
 +\frac12\int_a^b Q':C\,dr .
 \end{aligned}
 \tag{AT7}
\]
Thus adaptive coefficients retain both speed allocations and the full moving-weight work. For \(Q\) diagonal, each nonlinear pairing cancels, and each \(c_i\ge0\) yields positive kinetic diffusion. Positivity of \(Q\) alone does not guarantee positive diffusion at unequal speeds. For the actual relative stock \(Q=\begin{pmatrix}1&-1\\-1&1\end{pmatrix}\), the diffusion coefficient matrix is
\[
 \begin{pmatrix}c_0&-(c_0+c_1)/2\\-(c_0+c_1)/2&c_1\end{pmatrix},
 \qquad
 \det=-\frac{(c_1-c_0)^2}{4}.
 \tag{AT8}
\]
This is a coefficient identity for the actual Gram, not an example history.

## 3. Forward adaptive quotient: exact added temporal row

Use physical base time \(t\), and let \(h\) be positive and locally Lipschitz with
\[
 \sigma(t)=t+h(t)<T,\qquad
 U_0=u(t),\quad U_1=u(\sigma(t)),\quad
 D=\frac{U_1-U_0}{h},\quad M=\frac{U_0+U_1}{2}.
 \tag{AT9}
\]
Set \(\delta_h f=(f(\sigma)-f(t))/h\), \(\pi=(p(\sigma)-p(t))/h\), and \(\overline f=(f(\sigma)+f(t))/2\). Subtracting and adding the full rows, including the derivative of the sampling time and denominator, gives
\[
 \begin{aligned}
 D'+\nu LD+N(U_1,D)+N(D,U_0)+\nabla\pi
    &=\delta_h f+\frac{h'}h\{V(\sigma)-D\},\\
 M'+\nu LM+N(M,M)+\frac{h^2}{4}N(D,D)+\nabla\overline p
    &=\overline f+\frac{h'}2 V(\sigma).
 \end{aligned}
 \tag{AT10}
\]
The additional \(V(\sigma)\) is a genuine adjacent temporal coordinate of the same history. It has not been paid by the kinetic budget. The nonlinear difference contains both ordered parents, and
\[
 \pi=R_iR_j\{(U_0)_iD_j+D_i(U_0)_j+hD_iD_j\}
          -L^{-1}\nabla\cdot\delta_h f .
 \tag{AT11}
\]
The mean pressure is \(R_iR_j(M_iM_j+h^2D_iD_j/4)-L^{-1}\nabla\cdot\overline f\). These remain actual pressure differences and means; \(D'\) is a parameter derivative, not \(u_t(t)\).

At the initial base face, \(D(0)=(u(h(0))-u_0)/h(0)\); it is not the initial jet coordinate \(V(0)\). The prescribed force is evaluated at the original absolute times \(t\) and \(\sigma(t)\), without a force restart. Its difference is known and satisfies \(\|\delta_h f(t)\|_{H^m}\le\sup_{0\le s\le T}\|f_t(s)\|_{H^m}\) for every finite \(m\).

For \(S(v,d,d)=\langle d,N(d,v)\rangle\), incompressibility gives \(S(M,D,D)=S(U_0,D,D)\). For a positive locally absolutely continuous scalar weight \(\omega\), the complete integrated relative ledger on \(0\le a<b<T\) is
\[
 \begin{aligned}
 \frac12[\omega\|D\|_2^2]_a^b
 +\nu\int_a^b\omega\|\nabla D\|_2^2
 +\int_a^b\omega S(M,D,D)
 ={}&\int_a^b\omega\langle\delta_h g,D\rangle\\
 &+\int_a^b\omega\frac{h'}h
             \langle V(\sigma)-D,D\rangle
 +\frac12\int_a^b\omega'\|D\|_2^2 .
 \end{aligned}
 \tag{AT12}
\]
The two endpoint stocks are evaluated at \(u(a),u(\sigma(a)),u(b),u(\sigma(b))\), all strictly in the original domain. There is no terminal endpoint deletion.

The unprojected orthogonal square of AT10 is also exact:
\[
 \|D'\|_2^2+\nu^2\|LD\|_2^2+\|\nabla\pi\|_2^2
 +\nu\frac{d}{dt}\|\nabla D\|_2^2
 =
 \left\|\delta_h f-N(U_1,D)-N(D,U_0)
              +\frac{h'}h(V(\sigma)-D)\right\|_2^2 .
 \tag{AT13}
\]
The scalar pressure potential in AT11 contributes to this pressure square. Strict integration retains \(\nu\|\nabla D(a)\|^2\) and \(\nu\|\nabla D(b)\|^2\); expansion of the right side retains every nonlinear, forcing and moving-coordinate cross term.

For a backward choice \(\ell(t)=t-h(t)\ge0\), \(D^-=(u(t)-u(\ell))/h\), subtraction instead yields
\[
 (D^-)'+\nu LD^-+N(u(t),D^-)+N(D^-,u(\ell))+\nabla\pi^-
 =\delta_h^-f+\frac{h'}h\{V(\ell)-D^-\}.
 \tag{AT14}
\]
The past speed is \(1-h'\); its Jacobians, pressure potential, weight derivative and both endpoint stocks must likewise be retained. Forward formulas cannot be reused for the backward domain without these substitutions.

## 4. A genuinely paid adaptive signed current

Assume from here that \(|h'|\le L_0<1\); denote \(c=1+h'\). Then \(\sigma\) is strictly increasing with \(1-L_0\le c\le1+L_0\), and \(\sigma(t)\uparrow T\). Let
\[
 \Delta=U_1-U_0,\quad
 Y_i=\|\nabla U_i\|_2^2,\quad
 K_{01}=\langle\nabla U_0,\nabla U_1\rangle,\quad
 A_{01}=\langle U_0,B_1\rangle,\quad A_{10}=\langle U_1,B_0\rangle .
\]
Setting \(\omega=h^2\) in AT12 cancels the denominator derivative, but retains \(h'\langle V(\sigma),\Delta\rangle\). Substitution of the full future momentum row gives the exact equivalent balance
\[
 \frac12(\|\Delta\|_2^2)'
 +\nu\{Y_0+cY_1-(1+c)K_{01}\}
 =cA_{01}+A_{10}+\langle cg(\sigma)-g(t),\Delta\rangle .
 \tag{AT15}
\]
The pointwise full nonlinear relation is
\[
 cA_{01}+A_{10}=-h^2 S(M,D,D)+h'A_{01}.
 \tag{AT16}
\]
Thus the joined moving current is different from the fixed-speed relative strain. The gradient form in AT15 has no claimed sign.

The Jacobian \(ds=c(t)\,dt\) gives \(\int_0^T Y_1(t)\,dt\le\mathcal D/(1-L_0)\). Since
\[
 |Y_0+cY_1-(1+c)K_{01}|
 \le(2+L_0/2)Y_0+(2+3L_0/2)Y_1,
\]
put \(C_{L_0}=2+L_0/2+(2+3L_0/2)/(1-L_0)\). Also \(\|\Delta\|\le2K\) and
\(\int c\|g(\sigma)\|\,dt\le\int_0^T\|g(s)\|\,ds\). Therefore every strict prefix has the explicit signed primitive payment
\[
 \left|\int_a^b(cA_{01}+A_{10})\,dt\right|
 \le2K^2+\nu C_{L_0}\mathcal D
                +4K\int_0^T\|g(s)\|_2\,ds
 \le(2+C_{L_0}/2)K^2+4K\|g\|_{L^1L^2}.
 \tag{AT17}
\]
No absolute-integrability assertion about this current is inferred from its bounded signed primitive. AT17 pays the full current in AT16, including the moving term, at arbitrary force amplitude.

The same direct kinetic data pay positive weighted quotient quantities:
\[
 \int_0^T h^2\|D\|_2^2\,dt\le4K^2T,\qquad
 \int_0^T h^2\|\nabla D\|_2^2\,dt
 \le2\left(1+\frac1{1-L_0}\right)\mathcal D .
 \tag{AT18}
\]
They do not pay the first temporal receiving action after division by \(h^2\). Indeed the raw kinetic estimate is
\[
 \int_0^T\|D\|_2^2\,dt\le4K^2\int_0^T h(t)^{-2}\,dt,
 \qquad h(t)<T-t,
 \tag{AT19}
\]
whose displayed upper price is infinite for \(K>0\). This identifies the limit of this particular kinetic price, not a proof that the actual quotient action is infinite.

## 5. Actual terminal stocks when both times approach the same boundary

The full projected equation, tested against a fixed smooth solenoidal \(\varphi\), gives
\[
 |\langle V,\varphi\rangle|
 \le\nu\|\nabla u\|_2\|\nabla\varphi\|_2
       +K^2\|\nabla\varphi\|_\infty+\|g\|_2\|\varphi\|_2 .
 \tag{AT20}
\]
Its right side is integrable. Density and AT3 produce one weak \(L^2\) trace \(u_{\rm w}\). Moreover \(e'=-2\nu Y+2\langle u,g\rangle\in L^1\), so \(e_*=\lim_{t\uparrow T}\|u(t)\|_2^2\) exists and \(\Delta_*=e_*-\|u_{\rm w}\|_2^2\ge0\).

Both \(U_0\) and \(U_1\) tend weakly to \(u_{\rm w}\), and both diagonal Gram entries tend to \(e_*\). The off-diagonal entry has not been shown to converge by these facts. On any sequence where it tends to \(c_*\), the exact weak Gram defect has the form
\[
 C_*=\|u_{\rm w}\|_2^2
       \begin{pmatrix}1&1\\1&1\end{pmatrix}
       +\begin{pmatrix}\Delta_*&d_*\\d_*&\Delta_*\end{pmatrix},
 \qquad d_*=c_*-\|u_{\rm w}\|_2^2,\quad |d_*|\le\Delta_* .
 \tag{AT21}
\]
The inequality follows from weak lower semicontinuity for every fixed linear combination of the two actual fields. In particular \(\limsup\|\Delta\|^2\le4\Delta_*\). This is distinct from the fixed-separated-shift defect, where only one column reaches the terminal boundary and the other has a strict strong endpoint.

All strict endpoint stocks in AT7 and AT12 consequently remain until their limits are proved. A weight \(\omega=o(h^2)\) forces \(\omega\|D\|^2\to0\) by AT3, but vanishes on the receiving action. Even if \(\Delta_*=0\), the resulting strong velocity trace provides no rate after division by \(h^2\).

## 6. One adaptive sampler and the missing or supplied velocity variance

The fundamental theorem on each actual finite increment gives
\[
 D(t)=\frac1{h(t)}\int_t^{\sigma(t)}V(s)\,ds,\qquad
 \mathcal V_h(t)=\frac1{h(t)}\int_t^{\sigma(t)}
                                  \|V(s)-D(t)\|_2^2\,ds\ge0 .
 \tag{AT22}
\]
There is an exact positive identity, including arbitrary positive physical-time weights:
\[
 \int_0^T\omega(t)\{\|D(t)\|_2^2+\mathcal V_h(t)\}\,dt
 =\int_0^T m_{\omega,h}(s)\|V(s)\|_2^2\,ds,\qquad
 m_{\omega,h}(s)=\int_{\{t\le s\le\sigma(t)\}}\frac{\omega(t)}{h(t)}\,dt .
 \tag{AT23}
\]
This is an equality of nonnegative extended integrals, proved by Tonelli. It never subtracts infinity from infinity. It retains the variance of the actual full temporal row \(V\), not the prescribed force alone.

For \(\omega=1\), \(|h'|\le L_0<1\) and \(s\ge h(0)\), the exact domain is \([\sigma^{-1}(s),s]\). If \(a_s=\sigma^{-1}(s)\), then \(s-a_s=h(a_s)\) and
\[
 h(a_s)-L_0(t-a_s)\le h(t)\le h(a_s)+L_0(t-a_s).
\]
Integration yields
\[
 \frac{\log(1+L_0)}{L_0}\le m_{1,h}(s)
 \le\frac{-\log(1-L_0)}{L_0}.
 \tag{AT24}
\]
The upper bound also holds on the initial truncated domain \(0<s<h(0)\); for \(L_0=0\) the constants have limit one. Thus whole-terminal \(V\in L^2\) suffices for finite adaptive quotient action, and finite quotient action together with \(\int\mathcal V_h<\infty\) suffices for \(V\in L^2\), since the omitted initial interval is strict and already smooth. A finite quotient action alone has not paid the second positive term in AT23.

Near the terminal boundary, \(h(t)\to0\) does not generate a parameter sequence converging to \(V(t)\) at every fixed \(t<T\). The usual fixed-point Fatou operation from a uniform shrinking-parameter family therefore cannot be applied to this single curve merely from that terminal shrinking.

There is nevertheless a legitimate stronger single-curve operation. Suppose a curve is selected so that
\[
 \|D(t)-V(t)\|_2\le\varepsilon\|V(t)\|_2+k(t),
 \qquad 0\le\varepsilon<1,\quad k\in L^2(0,T).
 \tag{AT25}
\]
Then the actual receiving action obeys
\[
 \|V\|_{L^2(0,T;L^2)}
 \le\frac{\|D\|_{L^2(0,T;L^2)}+\|k\|_{L^2(0,T)}}{1-\varepsilon}.
 \tag{AT26}
\]
This uses one curve, not a uniform family. Actual strict-history continuity of \(V\) permits such a local tracking choice with, for example, a constant positive \(k\). To see that the curve can also satisfy the required speed bound, choose a positive continuous minorant \(d(t)\) of the local allowable increment radii and of \((T-t)/2\). Local uniform continuity and a locally finite interval cover supply that minorant. For any fixed \(0<L_0<1\), define
\[
 h(t)=\inf_{s\in[0,T)}\{d(s)+L_0|t-s|\}.
 \tag{AT27}
\]
It is \(L_0\)-Lipschitz, at most \(d(t)\), and strictly positive for \(t<T\): on a compact interior region \(d\) has a positive minimum, and near the terminal boundary the distance term is bounded below at a fixed interior \(t\). It tends to zero at \(T\) and makes \(\sigma\) strictly increasing. Chain rules and balances above require only this Lipschitz regularity.

This selection is explicitly in the wider Lipschitz class; the infimum is not claimed smooth. For a smooth adaptive curve, AT25 remains an explicit sufficient tracking hypothesis, and all of the preceding complete balances apply.

The selection depends on the actual local continuity modulus of the full \(u_t\). It does not assume a terminal derivative or its norm. Its output is a curve satisfying the error condition; it does not output a finite curve action. The kinetic price AT19 remains divergent for this admissible choice as well. If a different exact source operation pays that action, AT26 is a valid consumer, and the previously proved original momentum/enstrophy conversion can then recover the spatial \(u\in L^2H^2\) face of AT2. That conditional conversion is not used here as a producer.

## 7. Reparametrization, compression and endpoint Jacobians

For any increasing locally absolutely continuous map \(s=\phi(r)\) with \(c(r)=\phi'(r)>0\) almost everywhere, the actual derivative is \(\partial_r u(\phi(r))=c(r)V(\phi(r))\). The exact two action conversions are
\[
 \begin{aligned}
 \int\|\partial_r u(\phi(r))\|_2^2\,dr
      &=\int c(\phi^{-1}(s))\|V(s)\|_2^2\,ds,\\
 \int c(r)^{-1}\|\partial_r u(\phi(r))\|_2^2\,dr
      &=\int\|V(s)\|_2^2\,ds .
 \end{aligned}
 \tag{AT28}
\]
These changes of variables are meant for invertible absolutely continuous maps with valid inverse/change-of-variables formula, such as every admissible forward \(\sigma\) above. A positive lower speed \(c\ge c_{\min}>0\) gives the bound of the physical action by \(c_{\min}^{-1}\) times the parameter derivative action; an upper speed bound gives the reverse comparison. Compression \(c\to0\) can suppress the first action's terminal weight; it does not suppress the reciprocal Jacobian needed by the original physical receiving row.

For a physical quotient \(D\) composed with \(t=\phi(r)\),
\[
 \int \widetilde\omega(r)\|D(\phi(r))\|_2^2\,dr
 =\int\frac{\widetilde\omega(\phi^{-1}(t))}
                    {c(\phi^{-1}(t))}\|D(t)\|_2^2\,dt .
 \tag{AT29}
\]
The physical unweighted action corresponds to \(\widetilde\omega=c\), not to an arbitrary parameter weight. If a quotient is instead normalized by a parameter increment, its normalization gains the average physical speed of that increment. The physical normalization must be restored before it can represent AT2.

Kinetic integration transforms without losing its actual endpoints:
\[
 \frac12[\|u(\phi(r))\|_2^2]_{r_0}^{r_1}
 +\nu\int_{r_0}^{r_1}c(r)Y(\phi(r))\,dr
 =\int_{r_0}^{r_1}c(r)\langle u(\phi(r)),g(\phi(r))\rangle\,dr .
 \tag{AT30}
\]
The action and work are precisely the physical integrals on \((\phi(r_0),\phi(r_1))\). Dropping \(c\) changes them; extending an endpoint past \(T\) changes the physical history.

For completeness, an average of adaptive curves \(s_z(t)=t+zh(t)\), \(0\le z\le1\), against a fixed probability \(\eta\), has the exact diagonal ledger
\[
 \begin{aligned}
 \frac12\left[\int e(t+zh(t))\,\eta(dz)\right]_a^b
 +\nu\int\!\int_{a+zh(a)}^{b+zh(b)}Y(s)\,ds\,\eta(dz)
 =\int\!\int_{a+zh(a)}^{b+zh(b)}
                                  \langle u(s),g(s)\rangle\,ds\,\eta(dz).
 \end{aligned}
 \tag{AT31}
\]
The Jacobian is \(1+zh'\). For \(a=0\) and \(b\uparrow T\), the terminal diagonal stock is \(e_*/2\), the initial stock is \(\frac12\int e(zh(0))\,\eta(dz)\), and the initial action/work strips \((0,zh(0))\) are subtracted from their whole-terminal integrals. Every endpoint in the strict formula is inside the original physical domain. A positive variance normalized by \(h(t)^2\) still needs its actual action payment; this diagonal ledger does not supply that normalization.

## 8. Verified output and bounded scope

The source's first-row target uses physical \(dt\) and a genuine distributional derivative. Exact adaptive evaluation is admissible inside the one classical history. Its new adjacent temporal row, both nonlinear parents, physical pressure potential, both sampling speeds, positive-weight derivative, and all strict endpoint stocks are AT5–AT14.

The independently derived actual gain is AT17: kinetic/source data pay a uniform signed primitive of the complete adaptive current \(-h^2S+h'A_{01}\). AT18 also pays its positive weighted quotient faces. A single tracking curve plus a paid unweighted curve action does imply the full physical temporal action by AT25–AT26. These are useful complete operations.

The tested diagonal kinetic and positive-weight operations have not produced that unweighted curve action, the actual temporal variance in AT23, or the reciprocal compression factor in AT28. This is the precise remaining payment in this bounded calculation. It is not an exclusion of another signed, history-dependent or higher-rectangle source operation. No toy trajectory or assumed global theorem was used.
