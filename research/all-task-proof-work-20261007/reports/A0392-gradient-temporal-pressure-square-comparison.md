# The original gradient and first-temporal pressure squares on one history

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This calculation compares the actual matrix-gradient row, the first temporal row, their full mixed prolongation, and their pressure-complete Gram corner. It preserves every source and nonlinear allocation. All identities first hold on a strict interval \([0,t]\), \(t<T_*\), of one classical history. No higher terminal trace or uniform terminal norm is an input.

## 1. Primary rows and the actual differentiated fields

The sources read for this calculation are:

- [forced-native-assembly-20260914.md](../SOURCES.md#S152), LF18–70 and LF1450–1536, for the pressure-complete mixed graph; J10, LF1583–1605, for its actual velocity Gram evolution; J13a–d, LF1656–1725, for pressure flux and the full finite corner.
- [01-setting-mixed-jet.tex](../SOURCES.md#S117), LF59–88 and LF116–163, for the history, normalized pressure and all mixed recurrences; LF214–265 for its datum-generated initial jet.
- [02-compatible-rectangles.tex](../SOURCES.md#S118), LF189–251, for the complete pressure square and its strict-time integrated stock; LF13–59 for the kinetic bound.

Their respective SHA256 hashes are
`15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5`,
`9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9`,
and `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46`.
The accompanying excerpts retain the literal source formulas, including the nine corner pairings.

Fix \(\nu>0\), \(u_0\in H^\infty_\sigma\), and the original prescribed force, smooth with all spatially rapidly decreasing mixed derivatives uniformly on each finite force horizon. It may have arbitrary amplitude and need not be solenoidal. Use
\[
 L=-\Delta,\quad T=u\cdot\nabla,\quad
 B=(u\cdot\nabla)u,\quad V=u_t,\quad
 A_{ij}=\partial_j u_i,\quad C=A_t=\nabla V.
 \tag{GT1}
\]
Here \(A,C\) are physical matrix gradients; \(L\) is the positive Laplacian. Each column \(A_j=\partial_j u\) and \(C_j=\partial_jV\) is solenoidal. Matrix norms and pairings below are Frobenius \(L^2\) norms and pairings, summed over all columns. The actual pressure is
\[
 p=R_iR_j(u_i u_j)-L^{-1}\operatorname{div}f,
 \qquad
 p_t=R_iR_j(u_iV_j+V_i u_j)-L^{-1}\operatorname{div}f_t.
 \tag{GT2}
\]
The latter is the genuine time derivative of the former, with both velocity parents and the prescribed force derivative retained.

Spatial differentiation of the base row and time differentiation of that same row give, respectively,
\[
 A_t+\nu LA+TA+A^2+\nabla^2p=\nabla f,
 \tag{GT3}
\]
\[
 V_t+\nu LV+TV+AV+\nabla p_t=f_t.
 \tag{GT4}
\]
Thus the four actual fields \(X=(A_1,A_2,A_3,V)\) solve one common linearized-transport row,
\[
 X_{a,t}+\nu LX_a+\mathcal B_uX_a+\nabla\pi_a=F_a,
 \quad
 \mathcal B_u z=(u\cdot\nabla)z+(z\cdot\nabla)u,
 \tag{GT5}
\]
with \(\pi=(\partial_1p,\partial_2p,\partial_3p,p_t)\) and
\(F=(\partial_1f,\partial_2f,\partial_3f,f_t)\).
The fields are derivatives of this actual history, not four independently chosen solutions or truncations.

## 2. The commuting mixed row contains four nonlinear allocations

Differentiating (GT3) in time uses
\(\partial_t(TA)=TC+(V\cdot\nabla)A\) and
\(\partial_t(A^2)=CA+AC\). Differentiating (GT4) in space uses
\[
 \nabla(TV)=TC+CA,
 \qquad
 \nabla(AV)=(V\cdot\nabla)A+AC.
\]
For example \(\partial_j(AV)_i=(\partial_jA_{ik})V_k+A_{ik}C_{kj}\), and
\(\partial_jA_{ik}=\partial_kA_{ij}\). Both orders therefore give the identical complete mixed row
\[
 C_t+\nu LC+TC+CA+AC+(V\cdot\nabla)A
              +\nabla^2p_t=\nabla f_t.
 \tag{GT6}
\]
In original mixed-index notation this is the \((n,\alpha)=(1,e_j)\) row summed over \(j\). Its four products have weights one, exactly as the two temporal and two spatial allocations in the primary mixed formula require. The Eulerian commutators \([\partial_t,T]A=(V\cdot\nabla)A\) and \(\nabla(TV)-T\nabla V=CA\) have been retained. No material time derivative is substituted for \(\partial_t\).

Set
\[
 D_0=f-B,\qquad D_1=f_t-B_1,
 \quad B_1=TV+AV,
 \qquad D_{0,t}=D_1.
\]
The surviving full mixed nonlinear operator is precisely
\[
 \mathfrak M_u(V):=\nabla B_1
       =TC+CA+AC+(V\cdot\nabla)A,
 \qquad \nabla D_1=\nabla f_t-\mathfrak M_u(V).
 \tag{GT7}
\]
The pressure derivative obeys the matching source relation
\[
 Lp=\operatorname{tr}(A^2)-\operatorname{div}f,
 \qquad Lp_t=2\operatorname{tr}(AC)-\operatorname{div}f_t.
 \tag{GT8}
\]
These equations verify derivative compatibility, including the pressure and forcing. Compatibility has not supplied a norm bound for the operator in (GT7).

## 3. Complete pressure squares and their actual boundary stocks

Squaring (GT3) column by column gives the original \(n=0,s=1\) rectangle square,
\[
 \|C\|^2+\nu^2\|LA\|^2+\|\nabla^2p\|^2
       +\nu(\|\nabla A\|^2)'=\|\nabla D_0\|^2.
 \tag{GT9}
\]
Indeed \(C,LA\) have solenoidal columns and each pressure column is \(\nabla\partial_jp\), so their pressure cross-pairings vanish. Also
\(2\langle C,LA\rangle=(\|\nabla A\|^2)'\),
\(\|\nabla A\|^2=\|Lu\|^2\), and
\(\|C\|^2=\|\nabla V\|^2\).

Squaring (GT4) gives the original \(n=1,s=0\) square,
\[
 \|V_t\|^2+\nu^2\|LV\|^2+\|\nabla p_t\|^2
       +\nu(\|C\|^2)'=\|D_1\|^2.
 \tag{GT10}
\]
Squaring the common mixed row (GT6) gives \(n=1,s=1\),
\[
 \|C_t\|^2+\nu^2\|LC\|^2+\|\nabla^2p_t\|^2
       +\nu(\|\nabla C\|^2)'=\|\nabla D_1\|^2.
 \tag{GT11}
\]
The three strict-time integrated identities are
\[
 \begin{aligned}
 \nu\|\nabla A(t)\|^2
   +\int_0^t(\|C\|^2+\nu^2\|LA\|^2+\|\nabla^2p\|^2)
   &=\nu\|\nabla A_0\|^2+\int_0^t\|\nabla D_0\|^2,\\
 \nu\|C(t)\|^2
   +\int_0^t(\|V_t\|^2+\nu^2\|LV\|^2+\|\nabla p_t\|^2)
   &=\nu\|C_0\|^2+\int_0^t\|D_1\|^2,\\
 \nu\|\nabla C(t)\|^2
   +\int_0^t(\|C_t\|^2+\nu^2\|LC\|^2+\|\nabla^2p_t\|^2)
   &=\nu\|\nabla C_0\|^2+\int_0^t\|\nabla D_1\|^2.
 \end{aligned}\tag{GT12}
\]
All integral measures are \(ds\). The initial fields are fixed by the original complete jet:
\[
 A_0=\nabla u_0,\quad
 V_0=-\nu Lu_0-B(u_0)-\nabla p(0)+f(0),\quad C_0=\nabla V_0,
\]
and (GT2) at zero fixes the full \(p_t(0)\). There is no deleted current or initial stock. A whole-interval upper bound of these left sides requires the corresponding actual source square on the right; only its force component alone is already prescribed.

The temporal diagonal (GT10) contains additional nonnegative quadratic information relative to (GT9): it controls \(V_t,LV,\nabla p_t\) through its own source \(D_1\). It is not merely the time derivative of (GT9). In contrast, differentiating the gradient cell and taking its cross-pairing with its derivative is exactly the derivative of the gradient square:
\[
 \begin{aligned}
 &\langle C+\nu LA,C_t+\nu LC\rangle
       +\langle\nabla^2p,\nabla^2p_t\rangle
        =\langle\nabla D_0,\nabla D_1\rangle,\\
 &\tfrac12(\|C\|^2+\nu^2\|LA\|^2+\|\nabla^2p\|^2)'
       +\tfrac\nu2(\|\nabla A\|^2)''
        =\tfrac12(\|\nabla D_0\|^2)' .
 \end{aligned}\tag{GT13}
\]
That matched derivative cross contains no second independent cell equation.

## 4. The full first-corner Gram and all nine pressure/source pairings

For the actual four columns (GT5), define symmetric Gram matrices
\[
 \begin{aligned}
 G_{ab}&=\langle X_a,X_b\rangle,&
 Z_{ab}&=\langle\nabla X_a,\nabla X_b\rangle,\\
 K_{ab}&=\langle X_{a,t},X_{b,t}\rangle,&
 Q_{ab}&=\langle LX_a,LX_b\rangle,\\
 P_{ab}&=\langle\nabla\pi_a,\nabla\pi_b\rangle,&
 R_{ab}&=\langle F_a-\mathcal B_uX_a,F_b-\mathcal B_uX_b\rangle .
 \end{aligned}
\]
Each is the Gram matrix of the indicated real fields and is positive semidefinite. Squaring the complete cell in both factors gives
\[
 K+\nu^2Q+P+\nu Z'=R,
 \qquad
 \nu Z(t)+\int_0^t(K+\nu^2Q+P)
      =\nu Z(0)+\int_0^tR.
 \tag{GT14}
\]
The integrated relation holds entrywise and after every fixed real coefficient-vector contraction. Positivity of the matrix \(Z\) does not assign a sign to \(Z'\).

This is exactly assembly J13d with \(k=\ell=1\), not an extra identity omitted from that source. To show all allocations explicitly, write
\(N_a=\mathcal B_uX_a\), \(H_a=\nabla\pi_a\), and
\(T_a=F_a-N_a-H_a=X_{a,t}+\nu LX_a\). The source's full last corner is
\[
 \begin{aligned}
 \langle T_a,T_b\rangle={}&
  \langle F_a,F_b\rangle-\langle F_a,N_b\rangle-\langle F_a,H_b\rangle\\
 &-\langle N_a,F_b\rangle+\langle N_a,N_b\rangle+\langle N_a,H_b\rangle\\
 &-\langle H_a,F_b\rangle+\langle H_a,N_b\rangle+\langle H_a,H_b\rangle .
 \end{aligned}\tag{GT15}
\]
Complementary projection gives
\(H_a=(I-\mathbb P)(F_a-N_a)\), so the complete nine-term sum is
\(\langle T_a,T_b\rangle=R_{ab}-P_{ab}\). The other corner terms are
\[
 K_{ab}=\nu^2Q_{ab}
      -\nu\langle LX_a,T_b\rangle
      -\nu\langle T_a,LX_b\rangle+\langle T_a,T_b\rangle.
\]
Here \(\langle LX_a,T_b\rangle+\langle T_a,LX_b\rangle
=Z_{ab}'+2\nu Q_{ab}\), which proves (GT14) with its exact sign and coefficient. Every force/nonlinear/pressure pair is included before this projection collapse.

In particular, the genuinely mixed spatial/temporal corner is
\[
 \langle C_j+\nu LA_j,V_t+\nu LV\rangle
   +\langle\nabla\partial_jp,\nabla p_t\rangle
       =\langle\partial_jD_0,D_1\rangle .
 \tag{GT16}
\]
The pressure Gram here generally remains. It is distinct from the vanished pressure pairing against a solenoidal velocity coordinate. Since
\(\langle\partial_jV,LV\rangle=\langle L\partial_jV,V\rangle=0\), its exact integrated boundary form is
\[
 \nu[\langle LA_j,V\rangle]_0^t
 +\int_0^t\bigl(
       \langle C_j,V_t\rangle+\nu^2\langle LA_j,LV\rangle
       +\langle\nabla\partial_jp,\nabla p_t\rangle\bigr)
     =\int_0^t\langle\partial_jD_0,D_1\rangle .
 \tag{GT17}
\]
This cross-boundary stock can be signed; it has not been replaced by a positive diagonal. Cauchy–Schwarz of the Gram bounds the cross by its actual diagonals, including their nonlinear source norms, rather than by the prescribed force norms alone.

The corresponding original velocity Gram J10 is
\[
 \tfrac12G_{ab}'+\nu Z_{ab}
   =-\tfrac12(S_{ab}+S_{ba})
     +\tfrac12\bigl(\langle F_a,X_b\rangle+\langle X_a,F_b\rangle\bigr),
 \quad S_{ab}=\langle X_a,(X_b\cdot\nabla)u\rangle.
 \tag{GT18}
\]
The two transport pairings cancel only after full-space integration. For example
\((\langle A_j,V\rangle)'=-2\nu\langle\nabla A_j,\nabla V\rangle
-2\int A_j^T\operatorname{sym}(A)V
+\langle\partial_j f,V\rangle+\langle A_j,f_t\rangle\).
Before integration, the source's J13a retains the pressure flux
\(\pi_aX_b+\pi_bX_a\), along with the transport and viscous fluxes. Any integration on a bounded spatial region must retain that full boundary flux. It is not used as a zero boundary condition here.

## 5. Exact pressure correlations and their force components

The normalized pressure identities (GT8) give
\[
 \begin{aligned}
 \langle\nabla p,\nabla p_t\rangle
       &=\langle p,2\operatorname{tr}(AC)-\operatorname{div}f_t\rangle,\\
 \langle\nabla\partial_jp,\nabla p_t\rangle
       &=\langle\partial_jp,2\operatorname{tr}(AC)-\operatorname{div}f_t\rangle,\\
 \langle\nabla^2p,\nabla^2p_t\rangle
       &=\langle\operatorname{tr}(A^2)-\operatorname{div}f,
                   2\operatorname{tr}(AC)-\operatorname{div}f_t\rangle .
 \end{aligned}\tag{GT19}
\]
The last equality uses \(\langle\nabla^2p,\nabla^2p_t\rangle
=\langle Lp,Lp_t\rangle\). Its full expansion consists of
\(2\langle\operatorname{tr}(A^2),\operatorname{tr}(AC)\rangle\),
\(-\langle\operatorname{tr}(A^2),\operatorname{div}f_t\rangle\),
\(-2\langle\operatorname{div}f,\operatorname{tr}(AC)\rangle\), and
\(\langle\operatorname{div}f,\operatorname{div}f_t\rangle\).
There is no assigned sign for these intrinsic or mixed cross terms. The last prescribed-force pairing alone is a known source correlation; the two force/nonlinear pairings still contain the actual gradient fields.

Thus pressure joining supplies real positive diagonal norms and real mixed correlations. It does not erase \(\mathcal B_uX\), \(\mathfrak M_u(V)\), or their pairings with the actual temporal receiver. The full spatial/time pressure relation is compatible with all the squares, not an additional upper payment for their nonlinear source Gram.

## 6. Relation to the intrinsic receiver and its signed strain primitive

To test the requested signed primitive on the same history, set
\[
 g=\mathbb Pf,\quad q=-\mathbb PB,\quad
 h=V-g=q-\nu Lu,\quad e=\|u\|^2,\quad Y=\|\nabla u\|^2,
 \quad b=e+\delta,\quad\lambda=\nu Y/b,\quad w=h+\lambda u,
\]
with fixed \(\delta>0\). Subtracting the prescribed gradient-force derivative in (GT4) keeps both ordered force parents. Canonical pressure completion gives
\[
 h_t+\nu Lh+\mathcal B_uh+\nabla\pi_{uh}=j_g,
 \quad
 \pi_{uh}=R_iR_j(u_i h_j+h_i u_j),\quad
 j_g=-\mathbb P\nabla\cdot(u\otimes g+g\otimes u)-\nu Lg.
 \tag{GT20}
\]
Here the actual intrinsic pressure derivative is
\(p_{0,t}=\pi_{uh}+\pi_{ug}\), and the complementary component of
\(-\mathcal B_ug-\nu Lg\) is \(\nabla\pi_{ug}\); this pressure/source cancellation is exact. No force parent is discarded. Adding \(\lambda u\) gives
\[
 w_t+\nu Lw+\mathcal B_uw+\nabla\pi_{uw}
       =j_g-\lambda q+\lambda g+\lambda'u,
 \qquad \pi_{uw}=R_iR_j(u_iw_j+w_i u_j).
 \tag{GT21}
\]
Its source still contains the intrinsic \(-\lambda q\) and coefficient-history \(\lambda'u\); it is not just prescribed forcing. Differentiating it reproduces the corresponding complete higher row with both pressure parents and coefficient derivatives. This calculation does not delete those higher couplings through the compatibility (GT6).

The same pressure-square operation on this extracted actual row gives
\[
 \|w_t\|^2+\nu^2\|Lw\|^2+\|\nabla\pi_{uw}\|^2
       +\nu(\|\nabla w\|^2)'
    =\|j_g-\lambda q+\lambda g+\lambda'u-\mathcal B_uw\|^2.
 \tag{GT21a}
\]
It retains an additional positive pressure diagonal, but its complete right side retains the intrinsic response and the actual coefficient derivative. Projection has not converted that side into the separately prescribed force budget. Its integrated stock is exactly \(\nu\|\nabla w(t)\|^2-\nu\|\nabla w_0\|^2\), with the displayed positive actions and complete source-square integral on the respective sides.

For completeness, the exact pairing of (GT21) uses
\[
 \langle u,w\rangle=-\delta\lambda,\quad
 e'=-2\nu Y+2\langle u,g\rangle,\quad
 b\lambda'=2\nu\langle Lu,w+g\rangle
                        -2\lambda\langle u,g\rangle.
\]
With \(S_\delta=\langle w,(w\cdot\nabla)u\rangle\) and
\(\Phi_\delta=\tfrac12\|h\|^2-\nu^2Y^2/(4b)\), it yields
\[
 \begin{aligned}
 \Phi_\delta'+\nu\|\nabla w\|^2+\lambda\|w\|^2
            +\tfrac12(e+3\delta)\lambda^3
   =-S_\delta+\langle w,j_g\rangle
       +\lambda\langle q,g\rangle
       +\tfrac12\lambda^2\langle u,g\rangle .
 \end{aligned}\tag{GT22}
\]
Consequently, at each strict time,
\[
 \begin{aligned}
 -\int_0^tS_\delta={}&\Phi_\delta(t)-\Phi_\delta(0)
   +\int_0^t\bigl[\nu\|\nabla w\|^2+\lambda\|w\|^2
                       +\tfrac12(e+3\delta)\lambda^3\bigr]\\
 &-\int_0^t\bigl[\langle w,j_g\rangle
           +\lambda\langle q,g\rangle
           +\tfrac12\lambda^2\langle u,g\rangle\bigr].
 \end{aligned}\tag{GT23}
\]
This preserves the datum-generated \(h_0,\lambda_0,w_0\) and both \(\Phi_\delta\) boundary stocks. The first-binomial force compensation has removed \(f_t-g_t\) together with its prescribed pressure potential. It has not removed the intrinsic receiver strain or its nonlinear response.

The complete force insertion is paid in the earlier balance using
\(\|j_g\|_{\dot H^{-1}}\le2K\|g\|_\infty+\nu\|\nabla g\|_2\),
where \(K=\|u_0\|_2+\int_0^T\|g\|_2\); the other source pairings in (GT22) have their kinetic/cubic payment. Those payments are finite for arbitrary admitted force on a finite horizon. They supply a lower necessity from (GT23), not an upper bound for the current positive stock and all its actions.

Explicitly, writing \(d=e+3\delta\) and using the same complete two-parent insertion,
\[
 \begin{aligned}
 |\langle w,j_g\rangle|
    &\le\tfrac\nu2\|\nabla w\|^2
        +\frac{(2K\|g\|_\infty+\nu\|\nabla g\|_2)^2}{2\nu},\\
 \lambda|\langle q,g\rangle|
    &\le\nu Y\|\nabla g\|_\infty,\\
 \tfrac12\lambda^2|\langle u,g\rangle|
    &\le\tfrac14d\lambda^3+\frac{\|g\|_2^3}{18\sqrt\delta}.
 \end{aligned}\tag{GT24}
\]
For the last bound, maximizing
\(\tfrac12\lambda^2\sqrt e\|g\|_2-\tfrac14d\lambda^3\)
first in \(\lambda\ge0\) gives \(8e^{3/2}\|g\|_2^3/(27d^2)\); its maximum over \(e\ge0\) is \(\|g\|_2^3/(18\sqrt\delta)\), attained in the scalar maximization at \(e=9\delta\). The original kinetic bound \(\int_0^TY\le K^2/(2\nu)\) pays the middle source term by \(K^2\sup_{[0,T]}\|\nabla g\|_\infty/2\). Thus every explicit prescribed-source work in (GT23) has a finite known cost without restricting its amplitude. Its sign-complete subtraction still leaves a lower estimate for the intrinsic primitive, rather than the requested upper one.

## 7. Bounded mathematical outcome

The two differentiation orders in (GT6) are exactly compatible, with the full mixed nonlinear operator (GT7), canonical pressure derivative (GT8), and prescribed source (GT2) preserved. The first-temporal diagonal supplies additional quadratic information relative to the spatial-gradient diagonal, but its right side is its complete source square. The differentiated gradient-cell cross (GT13) is an exact derivative of its existing square. The actual mixed spatial/time Gram (GT16) is nontrivial and keeps its full pressure cross term; its strict-time boundary form is (GT17).

The original first-corner J13d, including all nine allocations, produces exactly the four-column pressure square (GT14). The original J10 produces its velocity Gram (GT18). Their shared full nonlinear response \(\mathcal B_uX\), and its prolonged operator \(\mathfrak M_u(V)\), are the precise terms still requiring a combined upper-payment operation. The pressure correlations (GT19) identify these fields more finely without assigning them a sign or a datum-only norm.

For the regularized intrinsic receiver, the matched equations restore exactly (GT22)–(GT23); no new datum-paid upper bound for \(-\int S_\delta\) has followed from the particular pressure joining and first-corner operations executed here. This conclusion covers these displayed operations only. It does not assert that the untested higher corners or a different signed operation cannot give an upper primitive.

All statements concern the original history and the original absolute-time force on strict classical intervals. A claimed whole-interval bound requires its actual convergence or uniform estimate; no terminal membership or derivative trace has been inserted into this calculation.
