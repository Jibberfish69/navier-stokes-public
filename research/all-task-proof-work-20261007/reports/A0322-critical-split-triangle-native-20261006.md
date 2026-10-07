# Native critical source-receiver split on the moving triangle

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This calculation executes the original signed split (FIH.39) in the critical source-receiver action of (FIH.17), including the full (FIH.33) heat defect. It gives a higher-row triangle identity with a quartic material boundary and complete ordered pressure terms. Its intrinsic tangency cancellations are exact. Reusing all of those weighted current derivatives returns (FIH.12); the split supplies no additional datum upper bound or vanishing upper cutoff tail for this critical action. This statement concerns the directly linked PRM/FIH operations inspected here.

The history throughout is the actual unforced solution on strict prefixes of a finite candidate terminal interval, with \(\nu>0\), \(u_0\in H^\infty_\sigma(\mathbb R^3)\), and sufficient decay for the displayed Fourier and homogeneous pairings. Every identity is first on \(0<\tau<T_*\), where the history is smooth. No forced extension is used.

## Exact original inputs

The original files are in the indexed mathematical source witness:

- `thomas-parent-age-reciprocal-moment-telescope-positivity-boundary-20260803.md` (PRM), LF667–794, (PRM.39)–(PRM.46b), and LF836–842: the full unweighted tangencies, the critical weighted triangle, and its named FIH continuation.
- `thomas-full-field-insertion-heat-defect-no-recount-boundary-20260803.md` (FIH), LF45–174, (FIH.2)–(FIH.11): both ordered insertions, their nested pressure projectors, and \(L\); LF182–190, (FIH.12): the quadratic transport; LF217–289, (FIH.15)–(FIH.20): the triangle, critical multiplier, and exact source action; LF291–397, (FIH.21)–(FIH.30): tangencies, weighted cubic, and transverse restriction; LF405–497, (FIH.31)–(FIH.39): the exact heat defect and signed split; LF579–611, (FIH.47)–(FIH.49): scaling.

Use the real \(L^2\) pairing, with real parts understood in Fourier representation. Put

\[
\mathcal B(a,b)=\mathbb P[(a\cdot\nabla)b],\quad
Q(v)=-\mathcal B(v,v),\quad S_s=e^{-\nu s\Lambda^2},
\]
\[
v_s(t)=S_su(t),\quad G_s=Q(v_s),\quad
H_s=S_sQ(u(t)),\quad D_s=H_s-G_s,
\]
\[
N_s=DQ(v_s)[H_s],\quad L=\partial_t-\partial_s,
\quad W=\nu^{-1}\Lambda^{-1}.
\tag{CS.1}
\]

The original identities are \(Lv_s=H_s\), \(LG_s=N_s\), and

\[
DQ(v)[h]=-\mathcal B(h,v)-\mathcal B(v,h),\qquad
D^2Q(v)[h,j]=-\mathcal B(h,j)-\mathcal B(j,h).
\tag{CS.2}
\]

Here \(\mathbb P\) is retained at every occurrence of \(\mathcal B\). For divergence-free inputs its pressure-explicit form is

\[
\mathcal B(a,b)=(a\cdot\nabla)b+
\nabla R_iR_j(a_i b_j).
\]

Thus, for example, the full ordered insertion is

\[
N_s=-(H_s\cdot\nabla)v_s-(v_s\cdot\nabla)H_s
-\nabla R_iR_j(H_{s,i}v_{s,j}+v_{s,i}H_{s,j}).
\]

The two tensors and both nested pressure responses remain distinct.

## Execute FIH.39, including the next ordered row

Define the self and defect insertions in the original split by

\[
A_s:=DQ(v_s)[G_s],\qquad E_s:=DQ(v_s)[D_s],\qquad N_s=A_s+E_s.
\tag{CS.3}
\]

Suppress \((t,s)\) in the next display. The exact chain rule gives

\[
\begin{aligned}
LA
&=D^2Q(v)[H,G]+DQ(v)[N]\\
&=R+X,\\
R&:=D^2Q(v)[G,G]+DQ(v)[A]
=-2\mathcal B(G,G)-\mathcal B(A,v)-\mathcal B(v,A),\\
X&:=D^2Q(v)[D,G]+DQ(v)[E]\\
&=-\mathcal B(D,G)-\mathcal B(G,D)-\mathcal B(E,v)-\mathcal B(v,E).
\end{aligned}
\tag{CS.4}
\]

In particular the complete pressure responses in these rows are

\[
\begin{aligned}
R={}&-2(G\cdot\nabla)G-(A\cdot\nabla)v-(v\cdot\nabla)A\\
&-\nabla R_iR_j(2G_iG_j+A_i v_j+v_iA_j),\\
X={}&-(D\cdot\nabla)G-(G\cdot\nabla)D
-(E\cdot\nabla)v-(v\cdot\nabla)E\\
&-\nabla R_iR_j(D_iG_j+G_iD_j+E_i v_j+v_iE_j).
\end{aligned}
\]

The nested form, displaying all ordered parents, is

\[
\begin{aligned}
R={}&-2\mathcal B(G,G)
+\mathcal B(\mathcal B(G,v),v)+\mathcal B(\mathcal B(v,G),v)\\
&+\mathcal B(v,\mathcal B(G,v))+\mathcal B(v,\mathcal B(v,G)),\\
X={}&-\mathcal B(D,G)-\mathcal B(G,D)
+\mathcal B(\mathcal B(D,v),v)+\mathcal B(\mathcal B(v,D),v)\\
&+\mathcal B(v,\mathcal B(D,v))+\mathcal B(v,\mathcal B(v,D)).
\end{aligned}
\tag{CS.5}
\]

Every inner and outer \(\mathcal B\) includes its Leray projector. The coefficient two in the coincident \((G,G)\) pair is the second derivative of the quadratic source. It does not permit replacing the mixed \((D,G)\) and \((G,D)\) pairs by twice one leg. \(R\) is the intrinsic nonlinear next row; it is not obtained by discarding diffusion from an actual material-time derivative.

Put

\[
U_s(t):=(WA_s,v_s)_2.
\]

Since \(Lv=G+D\), equation (CS.4) gives

\[
LU=(W(R+X),v)_2+(WA,G)_2+(WA,D)_2.
\]

Therefore the desired critical source-receiver pairing is exactly

\[
\boxed{
(WN,G)_2
=LU-(WR,v)_2-(WX,v)_2-(WA,D)_2+(WE,G)_2.}
\tag{CS.6}
\]

Neither an absolute value nor a positive-part restriction has entered.

## Keep the full FIH.33 defect inside every term

For each actual \(t\), let

\[
\mathcal C_r(t):=\sum_{j=1}^3
\mathcal B(\partial_jv_r(t),\partial_jv_r(t)),\qquad
F_{s,r}:=S_{s-r}\mathcal C_r,
\quad 0\le r\le s,
\]
\[
K_{s,r}:=\mathcal B(F_{s,r},v_s)+\mathcal B(v_s,F_{s,r}).
\]

The original (FIH.33), with its sign, now supplies

\[
\begin{aligned}
D_s&=-2\nu\int_0^sF_{s,r}\,dr,\\
E_s&=2\nu\int_0^sK_{s,r}\,dr,\\
X_s&=2\nu\int_0^s
\left[\mathcal B(F_{s,r},G_s)+\mathcal B(G_s,F_{s,r})
-\mathcal B(K_{s,r},v_s)-\mathcal B(v_s,K_{s,r})\right]dr.
\end{aligned}
\tag{CS.7}
\]

Thus all defect terms on the right of (CS.6), joined before any estimate, have the exact representation

\[
\begin{aligned}
&-(WX_s,v_s)_2-(WA_s,D_s)_2+(WE_s,G_s)_2\\
={}&2\int_0^s\Big[
-(\Lambda^{-1}[\mathcal B(F_{s,r},G_s)+\mathcal B(G_s,F_{s,r})
-\mathcal B(K_{s,r},v_s)-\mathcal B(v_s,K_{s,r})],v_s)_2\\
&\hspace{38mm}+(\Lambda^{-1}A_s,F_{s,r})_2
+(\Lambda^{-1}K_{s,r},G_s)_2\Big]dr.
\end{aligned}
\tag{CS.8}
\]

The factors \(\nu\) cancel the critical \(\nu^{-1}\) weight in this expression; all inverse spatial multipliers remain. The full pressure-containing \(\mathcal C_r\), both ordered legs of \(K_{s,r}\), and all nested projectors are retained. Equation (CS.8) is an exact signed triple-integral contribution when integrated over the triangle, not a bound for that contribution.

## Triangle endpoints and transverse restriction

Let

\[
\Delta_\tau=\{(t,s):0<t<\tau,\ 0<s<\tau-t\},\qquad
\mathscr I_W(\tau)=\iint_{\Delta_\tau}(WN_s,G_s)_2\,ds\,dt.
\]

For a smooth scalar \(F\), integration of \(\partial_tF-\partial_sF\) gives

\[
\iint_{\Delta_\tau}LF\,ds\,dt
=\int_0^\tau F(t,0)dt-\int_0^\tau F(0,s)ds.
\]

The two contributions on \(t+s=\tau\) cancel because that edge is characteristic for \(L\). Consequently (CS.6) becomes

\[
\boxed{
\begin{aligned}
\mathscr I_W(\tau)
={}&\int_0^\tau U_0(t)dt-\int_0^\tau U_s(0)ds\\
&-\iint_{\Delta_\tau}
\left[(WR_s,v_s)_2+(WX_s,v_s)_2
+(WA_s,D_s)_2-(WE_s,G_s)_2\right]dsdt.
\end{aligned}}
\tag{CS.9}
\]

At the actual material edge \(s=0\), \(D_0=E_0=0\) and

\[
U_0(t)=\nu^{-1}(\Lambda^{-1}DQ(u(t))[Q(u(t))],u(t))_2.
\tag{CS.10}
\]

The datum edge is the same quartic functional evaluated at \(S_su_0\). It is datum-finite. More explicitly, \(\Lambda^{-1}\mathbb P\operatorname{div}\) has norm at most one on tensor-valued \(L^2\), so

\[
|U_s(0)|
\le\frac2\nu\|S_su_0\|_\infty\|Q(S_su_0)\|_2\|S_su_0\|_2
\le\frac2\nu\|u_0\|_\infty^2\|\nabla u_0\|_2\|u_0\|_2.
\tag{CS.11}
\]

Heat contractivity and \(\|Q(v)\|_2\le\|v\|_\infty\|\nabla v\|_2\) justify the second inequality. This bounds the datum edge uniformly on \([0,T_*]\) and makes its cutoff tail vanish. The same displayed expression at the material edge contains the actual \(\|u(t)\|_\infty\); no whole-terminal time bound for (CS.10) follows from the already paid lower readout.

The critical source receiver can also be written exactly as the original transverse action. Set

\[
g_s=\Lambda^{-1/2}G_s,\quad n_s=\Lambda^{-1/2}N_s,\quad
a_s=\Lambda^{1/2}v_s,\quad h_s=\Lambda^{1/2}\operatorname{curl}v_s.
\]

The complete global kinetic/helicity tangencies give \(g_s\perp\operatorname{span}\{a_s,h_s\}\). Hence

\[
\mathscr I_W(\tau)
=\nu^{-1}\iint_{\Delta_\tau}((I-\Pi_s)n_s,g_s)_2\,dsdt,
\tag{CS.12}
\]

with the real Hilbert projection and its Moore–Penrose interpretation at rank loss, as in (FIH.29)–(FIH.30). This restriction does not differentiate \(\Pi_s\) or introduce a new frame derivative. It holds for both summands of \(n_s=\Lambda^{-1/2}(A_s+E_s)\) by linearity. Tangent-component removal therefore leaves exactly the action in (CS.9).

## Actual intrinsic tangency cancellations

For the nonconstant critical \(W\), define scalar functionals of the same field

\[
T(v):=(WQ(v),v)_2,\quad
c(v):=(WQ(v),Q(v))_2,\quad
J(v):=DT(v)[Q(v)].
\]

The product rule gives

\[
J(v)=U(v)+c(v),\qquad U(v)=(WDQ(v)[Q(v)],v)_2.
\tag{CS.13}
\]

The exact kinetic tangency differentiated in direction \(WQ(v)\) gives

\[
(DQ(v)[WQ(v)],v)_2=-c(v).
\]

Thus the complete intrinsic cancellation is

\[
U(v)+c(v)
=(DQ(v)[Q(v)],Wv)_2-(DQ(v)[WQ(v)],v)_2=J(v).
\tag{CS.14}
\]

The right side is the weighted first-binomial commutator. It remains in the critical equation. The unweighted identity \(U=-\|Q\|_2^2\) cannot be imported into (CS.9).

Differentiating the same weighted functional one row further, with \(G=Q(v)\), gives all coefficients explicitly:

\[
\begin{aligned}
(WR,v)_2
&=D^2T(v)[G,G]+DT(v)[A]-3(WA,G)_2,\\
(WX,v)_2
&=D^2T(v)[D,G]+DT(v)[E]-2(WE,G)_2-(WA,D)_2.
\end{aligned}
\tag{CS.15}
\]

Indeed

\[
D^2T(v)[h,j]
=(WD^2Q(v)[h,j],v)_2+(WDQ(v)[h],j)_2+(WDQ(v)[j],h)_2.
\]

There are three coincident self-insertion pairings in the first row and two \((WE,G)\) pairings in the mixed row. Since \(Lv=G+D\) and \(LG=N\), (CS.15) implies

\[
\boxed{
(WR,v)_2+(WX,v)_2+(WA,D)_2-(WE,G)_2
=LJ(v)-3(WN,G)_2.}
\tag{CS.16}
\]

Substitution of (CS.13) and (CS.16) into (CS.6) is now completely explicit:

\[
(WN,G)=L(J-c)-(LJ-3(WN,G))
\quad\Longleftrightarrow\quad
Lc=2(WN,G).
\tag{CS.17}
\]

This is precisely (FIH.12), including the defect and the self-insertion. The cubic and next-row derivatives cancel when recycled, but no independent estimate survives that recycling. For comparison within the actual algebra, \(W=I\) makes \(T\equiv0\), \(U=-\|G\|_2^2\), \((R,v)=-3(A,G)\), and \((X,v)=-2(E,G)-(A,D)\); the same substitution again gives (CS.17). These are intrinsic complete-output identities, not a selected-mode sign test.

The full weighted-cubic derivative includes the defect direction, rather than only its self direction:

\[
\boxed{
LT(v_s)=U_s+c(v_s)+(WE_s,v_s)_2+(WG_s,D_s)_2.}
\tag{CS.17a}
\]

In particular put \(V_s:=DT(v_s)[D_s]=(WE_s,v_s)_2+(WG_s,D_s)_2\). To differentiate this contribution completely, the original equation and (FIH.31) give

\[
\begin{aligned}
LH_s&=S_sDQ(u)[Q(u)]+2\nu S_s\mathcal C(u),\\
Y_s:=LD_s&=S_sDQ(u)[Q(u)]+2\nu S_s\mathcal C(u)-N_s,\\
LE_s&=D^2Q(v_s)[H_s,D_s]+DQ(v_s)[Y_s]\\
&=-\mathcal B(H_s,D_s)-\mathcal B(D_s,H_s)
-\mathcal B(Y_s,v_s)-\mathcal B(v_s,Y_s).
\end{aligned}
\tag{CS.17b}
\]

Both ordered legs of each insertion and every pressure response remain. In particular \(LD_0=2\nu\mathcal C(u)\), even though \(D_0=0\); the defect derivative must not be set to zero at the material edge. Its full cubic derivative is

\[
\begin{aligned}
LV_s
&=D^2T(v_s)[H_s,D_s]+DT(v_s)[Y_s]\\
&=(WLE_s,v_s)_2+(WE_s,H_s)_2+(WN_s,D_s)_2+(WG_s,Y_s)_2.
\end{aligned}
\tag{CS.17c}
\]

Now \(J=LT-V\), so (CS.16) and (CS.17a) give

\[
\begin{aligned}
(WR,v)+(WX,v)+(WA,D)-(WE,G)&=L^2T-LV-3(WN,G),\\
LU&=L^2T-Lc-LV.
\end{aligned}
\]

Their substitution into the new critical pairing cancels the full \(L^2T\) and \(LV\) terms and again leaves \(Lc=2(WN,G)\). This explicitly carries the higher-binomial identity through the actual weighted cubic derivative; dropping the defect cubic or its nonzero material-edge derivative would change the equation.

There is also an exact material-edge check against the previous cubic-row calculation. From (FIH.31),

\[
DQ(u)[\Lambda^2u]=\Lambda^2Q(u)-2\mathcal C(u),\qquad
\mathcal C(u)=\sum_j\mathcal B(\partial_ju,\partial_ju).
\]

Because \(u_t=Q(u)-\nu\Lambda^2u\), (CS.13) becomes at \(s=0\)

\[
\boxed{
U_0(t)=\frac d{dt}T(u(t))
+2(Q(u),\Lambda u)_2
-2(\mathcal C(u),\Lambda^{-1}u)_2
-\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2.}
\tag{CS.18}
\]

This agrees with the complete coefficient-two diffusion and defect terms in (SC6) of `signed-source-coupling.md`. Integrating it introduces the actual cubic endpoint \(T(u(\tau))\) and the same source-square action. The prior \(L^1\)-time payment for \(T(u)\) supplies neither that endpoint nor an independent time payment for \(U_0\).

The explicit endpoint and action equation is

\[
\boxed{
\begin{aligned}
\int_0^\tau U_0(t)dt
={}&T(u(\tau))-T(u_0)
+2\int_0^\tau(Q(u),\Lambda u)_2dt\\
&-2\int_0^\tau(\mathcal C(u),\Lambda^{-1}u)_2dt
-\int_0^\tau c(u(t))dt.
\end{aligned}}
\tag{CS.18a}
\]

Consequently, replacing that boundary in (CS.9) and using the original source-action identity gives the same information in the form

\[
\begin{aligned}
3\mathscr I_W(\tau)
={}&T(u(\tau))-T(u_0)
+2\int_0^\tau(Q(u),\Lambda u)_2dt
-2\int_0^\tau(\mathcal C(u),\Lambda^{-1}u)_2dt\\
&-A_{\rm heat}(\tau)-\int_0^\tau U_s(0)ds\\
&-\iint_{\Delta_\tau}
[(WR_s,v_s)_2+(WX_s,v_s)_2+(WA_s,D_s)_2-(WE_s,G_s)_2]dsdt.
\end{aligned}
\tag{CS.18b}
\]

Here \(A_{\rm heat}\) is defined in (CS.19). Its datum payment and the datum quartic-edge payment (CS.11) are actual independent bounds. The actual cubic endpoint and the complete joined higher-binomial work in (CS.18b) remain in the equation. Formula (CS.18b) therefore does not remove the critical \(c(u)\) action by an estimate; it relocates it using its exact defining identity.

## Exact critical cutoff tails

The original (FIH.17) still gives, after the executed split,

\[
2\mathscr I_W(\tau)=A_{\rm crit}(\tau)-A_{\rm heat}(\tau),
\]
\[
A_{\rm crit}(\tau)=\int_0^\tau\nu^{-1}\|\Lambda^{-1/2}Q(u(t))\|_2^2dt,
\quad
A_{\rm heat}(\tau)=\int_0^\tau\nu^{-1}\|\Lambda^{-1/2}Q(S_su_0)\|_2^2ds.
\tag{CS.19}
\]

The proved full-product bound gives

\[
0\le A_{\rm heat}(\tau)\le C_\infty(u_0)
\le\frac{\|u_0\|_2^2\|\nabla u_0\|_2^2}{3\pi^2\nu^2}.
\]

For \(0<\sigma<\tau<T_*\), the actual shell between the two increasing triangles therefore satisfies

\[
\boxed{
2[\mathscr I_W(\tau)-\mathscr I_W(\sigma)]
=\int_\sigma^\tau\nu^{-1}\|\Lambda^{-1/2}Q(u(t))\|_2^2dt
-\int_\sigma^\tau\nu^{-1}\|\Lambda^{-1/2}Q(S_su_0)\|_2^2ds.}
\tag{CS.20}
\]

The datum tail vanishes. The material source-square tail is the remaining term in this exact formula. The signed action consequently has an extended terminal limit in \(\mathbb R\cup\{+\infty\}\), and its negative shell increment is bounded by the vanishing datum tail. A finite upper cutoff bound or a finite signed terminal limit requires an additional upper payment for the original critical action. Equation (CS.9) reproduces (CS.20) as a difference of quartic material-edge tails and the complete higher-row and defect shell integrals; it does not independently bound that joined difference.

The local defect does satisfy \(D_0=0\). Its exact Fourier factor is

\[
e^{-\nu s(|p|^2+|q|^2)}(e^{-\nu s\Phi}-1),
\qquad \Phi=2p\cdot q,
\]

as in (FIH.34)–(FIH.36). For fixed strict time, (CS.7) gives the expected \(O(s)\) factor. A bound on that factor uses the actual \(\mathcal C_r(t)\) and its inserted derivatives; the source provides no uniform terminal bound for them. The factor vanishes on Stokes resonance and does not remove \(A\) or \(R\). Thus it does not by itself yield a uniform terminal tail gain for the full critical joined expression. No toy sign test is used for this conclusion.

Under the original NS scaling, \(v\), \(G,D\), \(A,E\), and \(R,X\) have respective field degrees \(1,3,5,7\). The quartic \(U\) has pairing degree two, so \(\int U\,dt\) is invariant. Each bulk pairing in (CS.9) has degree four, canceled by \(dsdt\). Every term in the executed critical identity therefore retains exactly the original critical homogeneity.

## Relation to the already paid lower receiver

`next-original-joined-operation-20261006.md` proves a finite actual terminal limit of the distinct joined quantity

\[
\mathscr J_v(\tau)=\iint_{\Delta_\tau}
[(WN_s,v_s)_2+(WG_s,D_s)_2]dsdt
\]

from its two cubic-edge \(L^1\) budgets and the finite positive triangle mass. In particular, for the same unforced history,

\[
\int_0^{T_*}C_\infty(t)dt\le\frac{\|u_0\|_2^4}{6\pi^2\nu^3},\qquad
C_\infty(t)=\int_0^\infty(WG_s,G_s)_2ds.
\]

The new operation retains a source receiver and places \(U\) on the material boundary of the triangle. A finite time mass of \(C_\infty\) or of the prior cubic edges does not bound this boundary derivative or the source action at \(s=0\). The critical split and its next-row cancellations have now been executed in (CS.3)–(CS.20); their directly linked remaining term is the complete signed critical shell in (CS.20), equivalently the joined higher-row expression in (CS.9). No additional inequality for it is proved by the inspected PRM/FIH continuation.

## Preservation and verification

The signs, binomial coefficients, ordered nested projectors, and triangle edge signs were checked independently against the original FIH source. The independent calculation also verified (CS.16)–(CS.17). No source or previous report was modified.

SHA256 before and after this calculation:

- PRM original: `213ec6b89d107a46f7d2d5fc31ba188c45e056abfa8508136de080d7e2057065`.
- FIH original: `9cd8d83b22f202272b7425e35fdd7ed127498d4cb58f9ffd7c9a70caf2bf179b`.
- Previous NJO artifact: `68efd038bf0688d03e0bd0ba03a09b69426caa768293e292e6bbd48c9f189bb0`.

Only this new local audit artifact was written.
