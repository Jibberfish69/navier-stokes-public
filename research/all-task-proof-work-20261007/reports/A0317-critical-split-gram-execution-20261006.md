# Critical receiver split, complete Gram derivatives, and heat-age tails

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This bounded calculation executes the actual signed split [FIH.39](../SOURCES.md#S212), retaining the full [FIH.33 heat defect](../SOURCES.md#S212). Its sources are FIH.27–39 and [PRM.37–46b](../SOURCES.md#S229). It verifies the critical \(G\)-receiver itself, rather than transferring a bound from the velocity receiver.

The new bounded outcomes are: a paid complete \((G,H,D)\) heat-age Gram; a finite whole-terminal signed critical receiver with one vanishing age weight; and explicit uniform terminal-prefix/output tails of the unweighted critical receiver at every fixed positive age. The unweighted zero-age source-square edge remains explicitly present.

## 1. Actual fields, both nonlinear parents, and viscosity

First take the actual unforced smooth history on \(I=(0,T_*)\), with \(T_*<\infty\), fixed \(\nu>0\), and the admitted \(H^\infty_\sigma\) datum. Put
\[
A=\Lambda^2,\quad E_s=e^{-\nu sA},\quad
\mathcal B(a,b)=\mathbb P((a\cdot\nabla)b),\quad Q(a)=-\mathcal B(a,a).
\]
The actual equation is \(u_t+\nu Au=Q(u)\), including the simultaneous pressure response.

At physical time \(t\) and auxiliary heat age \(s\), use the exact source definitions
\[
v=E_su(t),\qquad G=Q(v),\qquad H=E_sQ(u(t)),\qquad D=H-G.
\]
The heat age is a readout of the present actual velocity. No second fluid is evolved.

The complete Fréchet derivative is
\[
DQ(v)[a]=-\mathcal B(a,v)-\mathcal B(v,a).
\]
Thus the actual FIH split is
\[
N_{\rm self}=DQ(v)[G],\qquad
N_{\rm def}=DQ(v)[D],\qquad N=N_{\rm self}+N_{\rm def}=DQ(v)[H].
\]
The two ordered parent legs and every outer/nested pressure projector remain.

With \(L=\partial_t-\partial_s\),
\[
Lv=H,\qquad LG=N.
\]
The heat defect is exactly
\[
\boxed{
\partial_sD(t,s)+\nu AD(t,s)
=-2\nu\sum_j\mathcal B(\partial_jv,\partial_jv),\quad D(t,0)=0,
\qquad
D(t,s)
=-2\nu\int_0^s E_{s-r}
\sum_j\mathcal B(\partial_jv_r,\partial_jv_r)\,dr.}
\]

For \(k=p+q\), the exact multiplier is
\[
e^{-\nu s|k|^2}-e^{-\nu s(|p|^2+|q|^2)}.
\]
It retains every parent phase and vanishes on the actual \(p\cdot q=0\) face. No sign or absolute value is assigned to it.

## 2. Exact critical receiver and all triangle faces

Use the actual critical weight
\[
W=\nu^{-1}\Lambda^{-1},\qquad
b(t,s)=\|G(t,s)\|_W^2=\nu^{-1}\|\Lambda^{-1/2}G(t,s)\|_2^2.
\]
Set
\[
\Delta_\tau=\{(t,s):t\ge0,\ s\ge0,\ t+s\le\tau\},\qquad
J_\tau=2\int_{\Delta_\tau}\langle W(N_{\rm self}+N_{\rm def}),G\rangle .
\]
The complete Gram derivative is
\[
Lb=2\langle WN,G\rangle.
\]
The vector \(L=(1,-1)\) is tangent to the sloping face \(t+s=\tau\); its flux there vanishes. The two remaining faces give precisely
\[
\boxed{
J_\tau=\int_0^\tau b(t,0)\,dt-\int_0^\tau b(0,s)\,ds
=\nu^{-1}\int_0^\tau\|\Lambda^{-1/2}Q(u(t))\|_2^2dt
-\nu^{-1}\int_0^\tau\|\Lambda^{-1/2}Q(E_su_0)\|_2^2ds.}
\]
No separate sign or bound was imposed on either insertion. The source square is retained with coefficient one. The old face is datum-paid and hence
\[
J_\tau\ge-C_\infty(u_0).
\]
This is an unconditional lower bound, not an upper source-action bound.

The same identities hold with the output weight
\(W_{>R}=\nu^{-1}P_{>R}\Lambda^{-1}\). Consequently the negative part of each high-output receiver is bounded by the corresponding initial heat-age tail, which tends to zero uniformly in \(\tau\) as \(R\to\infty\).

## 3. Complete weighted Gram and higher row identities

Write \(\Gamma_{ab}=\langle Wa,b\rangle\) for \(a,b\in\{G,H,D\}\), initially on strict finite prefixes. The entire matrix is positive and satisfies the exact rank relation \(H=G+D\). Define
\[
M=LH,\qquad P=LN.
\]
Its complete transport equations include
\[
L\Gamma_{GG}=2\langle WN,G\rangle,
\]
\[
L\Gamma_{GH}=\langle WN,H\rangle+\langle WG,M\rangle,
\]
\[
L\Gamma_{GD}=\langle WN,D\rangle+\langle WG,M-N\rangle,
\]
\[
L\Gamma_{HH}=2\langle WM,H\rangle,\qquad
L\Gamma_{DD}=2\langle W(M-N),D\rangle.
\]
They satisfy the derivative of
\(\Gamma_{HH}=\Gamma_{GG}+2\Gamma_{GD}+\Gamma_{DD}\). Thus the zero Schur/rank relation preserves all terms but supplies no independent derivative norm.

The actual first and second binomial rows are
\[
\boxed{
M=E_s\!\left(DQ(u)[Q(u)]
+2\nu\sum_j\mathcal B(\partial_ju,\partial_ju)\right),}
\]
\[
\boxed{
P=-2\mathcal B(H,H)+DQ(v)[M].}
\]
For the first formula use
\[
Q_t=DQ(u)[Q-\nu Au],\qquad
AQ-DQ(u)[Au]=2\sum_j\mathcal B(\partial_ju,\partial_ju).
\]
The second formula differentiates both ordered parent legs; its coefficient two is retained.

The source's weighted cubic is
\[
T_W(v)=\langle WQ(v),v\rangle.
\]
Its exact first derivative is FIH.28:
\[
\boxed{LT_W=\langle WN,v\rangle+b+\langle WG,D\rangle.}
\]
Its complete second derivative gives
\[
\boxed{
2\langle WN,G\rangle
=L^2T_W-\langle WP,v\rangle-\langle WG,M\rangle
-2\langle WN,D\rangle.}
\]
Thus a differentiation that exposes the critical receiver also exposes the full second binomial row, first-row heat current, and defect receiver. None is discarded.

Integrating the last equation over \(\Delta_\tau\) replaces \(L^2T_W\) by
\[
\int_0^\tau LT_W(t,0)\,dt-\int_0^\tau LT_W(0,s)\,ds.
\]
At zero age \(D=0\), so the physical edge is
\[
LT_W(t,0)=\langle W DQ(u)[Q],u\rangle+
\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2.
\]
The critical source square therefore reappears at the physical edge. The old edge is formed from the actual datum and its complete initial binomial jet.

## 4. A datum-paid complete heat-age Gram

Let \(K=\|u_0\|_2\) in the unforced case. The source's explicit constants give
\[
C_b=(\mathsf S_3\mathsf S_6)^2=\frac2{3\pi^2},
\quad
\|\Lambda^{-1/2}Q(v)\|_2
\le C_b^{1/2}\|\nabla v\|_2^2.
\]
The original joined-storage calculation consequently gives
\[
B_G:=\int_I\int_0^\infty\|G\|_W^2ds\,dt
\le B_0:=\frac{K^4}{6\pi^2\nu^3}.
\]

The intrinsic heat source has a matching bound. Tensor dual Sobolev and the unit Fourier divergence/Leray contraction give
\[
\|\Lambda^{-3/2}Q(u)\|_2
\le\mathsf S_3\|u\otimes u\|_{3/2}
\le\mathsf S_3\mathsf S_6 K\|\nabla u\|_2.
\]
Exact heat integration yields
\[
\boxed{
B_H:=\int_I\int_0^\infty\|H\|_W^2ds\,dt
=\frac1{2\nu^2}\int_I\|\Lambda^{-3/2}Q(u)\|_2^2dt
\le B_0.}
\]
Since \(D=H-G\),
\[
B_D\le2B_G+2B_H\le4B_0,\qquad
\int_I\int_0^\infty|\langle WG,D\rangle|
\le\sqrt{B_GB_D}\le2B_0.
\]
All entries of the complete \((G,H,D)\) Gram are therefore \(L^1\) on the whole terminal heat-age domain. Its integrated trace is at most \(6B_0\).

This supplies uniform-in-\(\tau\) bulk output tails and bulk near-/far-age tails by absolute continuity of these actual integrable positive squares. The modulus of a near-zero-age tail is that of the actual field; the gross datum bound alone does not provide a rate for it. No trace norm at age zero is inferred from this bulk statement.

For completeness, the defect's complete age-integrated parent kernel is
\[
\int_0^\infty
(e^{-\gamma s}-e^{-xs})(e^{-\gamma s}-e^{-ys})\,ds
=\frac1{2\gamma}-\frac1{\gamma+x}-\frac1{\gamma+y}+\frac1{x+y}.
\]
It is a Gram kernel with every signed parent cross term. A parent with \(x=\gamma\) has zero defect row. The above physical Gram bound does not replace this actual kernel by a collapse-source estimate.

## 5. Vanishing age weights give a whole-terminal critical receiver

Take a \(C^1\) age weight \(a\) on \([0,T_*]\). Since \(La=-a'\),
\[
a\,Lb=L(ab)+a'b.
\]
The exact critical-receiver identity is therefore
\[
\boxed{
2\int_{\Delta_\tau}a(s)\langle WN,G\rangle
=a(0)\int_0^\tau b(t,0)\,dt
-\int_0^\tau a(s)b(0,s)\,ds
+\int_{\Delta_\tau}a'(s)b(t,s)\,dt\,ds.}
\]
For \(a(0)=0\), the source-square edge vanishes with its actual coefficient. The remaining signed expression is paid:
\[
\left|2\int_{\Delta_\tau}a(s)\langle WN,G\rangle\right|
\le\|a\|_\infty C_\infty(u_0)+\|a'\|_\infty B_0.
\]
Its signed limit exists as \(\tau\uparrow T_*\). In particular,
\[
\boxed{
2\int_{\Delta_\tau}s\langle WN,G\rangle
=\int_{\Delta_\tau}b-\int_0^\tau s\,b(0,s)\,ds.}
\]
This is a directly verified \(G\)-receiver statement, with one explicit heat-age factor, not a transferred velocity-receiver bound.

Its high-output tails are uniform in \(\tau\):
\[
\sup_{\tau<T_*}\left|
2\int_{\Delta_\tau}a(s)\langle W_{>R}N,G\rangle\right|
\le\|a\|_\infty B_{\rm old,>R}
+\|a'\|_\infty B_{G,>R}\longrightarrow0.
\]
Here \(B_{\rm old,>R}\) is the actual initial heat-age norm and
\(B_{G,>R}\) the actual whole-terminal bulk norm; both tend to zero by their verified integrability. This does not remove the source edge for \(a(0)\ne0\).

The paid age weight \(s\) also cannot be silently replaced by the physical terminal-distance weight \(\tau-t\). Their difference
\(\rho=\tau-t-s\) satisfies \(L\rho=0\), and its exact receiver is
\[
2\int_{\Delta_\tau}\rho\langle WN,G\rangle
=\int_0^\tau(\tau-t)b(t,0)\,dt
-\int_0^\tau(\tau-s)b(0,s)\,ds.
\]
Thus that replacement retains a distinct weighted source-square edge. This identifies the actual characteristic contribution rather than assuming an equivalence of age and physical-time weights.

## 6. Unweighted receiver at every positive age

Truncate the triangle at a fixed \(S>0\). There is a new horizontal age face, whose sign must be retained:
\[
\boxed{
J_{\tau,\le S}
=\int_0^\tau b(t,0)\,dt
-\int_0^{\min(S,\tau)}b(0,s)\,ds
-\int_0^{(\tau-S)_+}b(t,S)\,dt.}
\]
Consequently the exact outer-age receiver is
\[
\boxed{
J_{\tau,>S}
=\int_0^{(\tau-S)_+}b(t,S)\,dt
-\int_S^\tau b(0,s)\,ds,\quad \tau>S,}
\]
and is zero when \(\tau\le S\).

Heat smoothing and kinetic energy give
\[
\|\nabla E_Su(t)\|_2^2\le\frac{K^2}{2e\nu S},\qquad
b(t,S)\le\frac{K^4}{6e^2\pi^2\nu^3S^2}.
\]
Thus this signed receiver is datum-bounded uniformly in \(\tau<T_*\) at every fixed positive age. The portion outside the strip \(0\le s\le S\) has a finite limit as \(\tau\uparrow T_*\).

The uniform high-output face estimate is explicit. Incompressibility in the complete convolution gives
\[
|\widehat G_S(k)|
\le c_{\mathcal F}K^2|k|e^{-\nu S|k|^2/2}.
\]
Therefore
\[
\boxed{
b_{>R}(t,S)
\le\frac{K^4}{4\pi^2\nu^3S^2}
(1+\nu SR^2)e^{-\nu SR^2}.}
\]
Together with the initial heat-age tail, this proves uniform high-output tails of \(J_{\tau,>S}\). Any unbounded unweighted critical receiver would have to occur inside every arbitrarily thin age-zero strip. The exact source-square face, rather than a discarded heat-defect term, specifies that localization.

## 7. Weighted cubic and the first binomial velocity receiver

The cubic has an unconditional integrated-time payment without assuming a homogeneous negative norm for \(v\):
\[
|T_W(u)|\le\nu^{-1}\|\Lambda^{-1}Q(u)\|_2\|u\|_2
\le\nu^{-1}\|u\|_4^2K
\le\nu^{-1}\mathsf S_6^{3/2}K^{3/2}\|\nabla u\|_2^{3/2}.
\]
The complete pressure/divergence multiplier in \(\Lambda^{-1}Q\) has \(L^2\) norm at most one. Hence
\[
\int_I|T_W(u)|\,dt
\le\frac{\mathsf S_6^{3/2}K^3T_*^{1/4}}
{2^{3/4}\nu^{7/4}}.
\]
The corresponding initial heat edge has the same bound with \(K\) replaced by \(\|u_0\|_2\).

Integrating the exact FIH.28 over the triangle now gives
\[
\int_{\Delta_\tau}\langle WN,v\rangle
=\int_0^\tau T_W(u(t))\,dt
-\int_0^\tau T_W(E_su_0)\,ds
-\int_{\Delta_\tau}b
-\int_{\Delta_\tau}\langle WG,D\rangle .
\]
All terms on this right side are paid, so this complete first-binomial **velocity-receiver** signed triangle has a finite whole-terminal value. This statement is kept separate from the critical \(G\)-receiver. Differentiating it to expose the latter brings exactly the \(P,M,D\) terms and the source-square edge in section 3.

## 8. Arbitrary admitted forcing and its complete extra insertion

Use the original force class F1–F2, put \(F=\mathbb Pf\), and take
\[
K=\|u_0\|_2+\int_I\|F\|_2,\qquad F_s=E_sF(t).
\]
Keep \(H=E_sQ(u)\) and the same intrinsic defect \(D=H-G\). Its FIH.33 equation is unchanged. The actual forced identities are
\[
Lv=H+F_s,\qquad
LG=N_{\rm self}+N_{\rm def}+N_F,\qquad
N_F=DQ(v)[F_s].
\]
Both source-parent legs are retained. Therefore the previous receiver equations apply to
\(N_{\rm total}=N_{\rm self}+N_{\rm def}+N_F\).
For the intrinsic split alone,
\[
J_\tau^{\rm intrinsic}=J_\tau^{\rm total}
-2\int_{\Delta_\tau}\langle WN_F,G\rangle .
\]

The known extra critical receiver has an actual whole-terminal absolute budget. With
\(M_F=\sup_{t\le T_*}\|\nabla F(t)\|_2\),
\[
\|\Lambda^{-1/2}N_F\|_2
\le2\mathsf S_3\mathsf S_6
\|\nabla v\|_2\|\nabla F_s\|_2,
\]
\[
B_{N_F}:=\int_I\int_0^\infty\|N_F\|_W^2ds\,dt
\le\frac{2C_bT_*K^2M_F^2}{\nu^2}.
\]
Here exact heat integration pays
\(\int_0^\infty\|\nabla v\|_2^2ds=\|u(t)\|_2^2/(2\nu)\).
Consequently
\[
2\int_I\int_0^\infty|\langle WN_F,G\rangle|
\le2\sqrt{B_{N_F}B_0}.
\]
The intrinsic split inherits the finite signed age-weighted receiver and all fixed-positive-age tail conclusions after this prescribed correction. No force smallness is used.

The first cubic law retains the additional direct cross:
\[
LT_W=\langle WN_{\rm total},v\rangle+b+
\langle WG,D\rangle+\langle WG,F_s\rangle.
\]
On the finite triangle the last term is paid by \(B_G\) and
\[
\int_{\Delta_{T_*}}\|F_s\|_W^2
\le\frac{T_*}{\nu}\int_I\|\Lambda^{-1/2}F(t)\|_2^2dt.
\]
This force norm is admitted by spatial decay. No homogeneous
\(\dot H^{-3/2}\) assumption on a force with nonzero mean is introduced.

The full first binomial heat row is
\[
M=E_s\!\left(DQ(u)[Q(u)+F]
+2\nu\sum_j\mathcal B(\partial_ju,\partial_ju)\right).
\]
For higher derivatives of the total insertion, retain
\(LF_s=E_s(F_t+\nu AF)\) as well. The prescribed mixed force jet and all its pressure responses stay in these rows.

In particular the complete second row and second cubic derivative are
\[
P_{\rm total}:=LN_{\rm total}
=-2\mathcal B(H+F_s,H+F_s)+DQ(v)[M+LF_s],
\]
\[
2\langle WN_{\rm total},G\rangle
=L^2T_W-\langle WP_{\rm total},v\rangle
-\langle WG,M+LF_s\rangle
-2\langle WN_{\rm total},D+F_s\rangle.
\]
Expanding the first term in \(P_{\rm total}\) retains all four nonlinear/force pairings, with both ordered cross terms.

## Verified scope of this split

The signed split and complete Gram identities supply genuine whole-terminal heat-age information: the paid three-field Gram, the finite age-weighted critical receiver, and uniformly controlled positive-age/output receiver tails. They also identify a paid first-binomial velocity-receiver triangle, with its distinct receiver explicitly preserved.

The unweighted critical-receiver equation still has the actual zero-age source-square face. The full second derivative/Gram equations retain the corresponding higher binomial and defect terms. This execution does not identify a uniform upper bound for that zero-age face or an unweighted critical square entry. It precisely locates which original signed operations have been verified and which stronger trace has not been produced.
