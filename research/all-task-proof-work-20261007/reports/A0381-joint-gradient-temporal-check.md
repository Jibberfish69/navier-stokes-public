# Joint gradient and temporal pressure squares

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This new independent calculation uses the actual gradient and first temporal rows on one strict classical interval. It preserves their mixed compatibility, pressure, forcing and every nonlinear allocation. Earlier sources and supporting artifacts are not edited.

## 1. Primary source custody and coverage

Their hashes matched the supplied identities:

| Source | SHA-256 | Read coverage |
|---|---|---|
| [forced-native-assembly-20260914.md](../SOURCES.md#S152) | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` | Lines 16–100 and 1583–1725 |
| [01-setting-mixed-jet.tex](../SOURCES.md#S117) | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` | Lines 1–164 |
| [02-compatible-rectangles.tex](../SOURCES.md#S118) | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` | Lines 13–163 |

The directly executed assembly operations are J10 (actual Gram evolution), J11–J12 (completed heights and complete work allocations), J13a (local pressure flux), and J13c–J13d (both-factor corner substitution with all nine force/nonlinear/pressure pairings). No finite-rectangle estimate that consumes a supplied norm rectangle is used to produce a new norm bound in this check.

All formulas below hold on the same actual strict interval \([a,b]\subset[0,T_*)\). All spatial inner products are real \(L^2(\mathbb R^3)\) pairings. Fields have the stipulated classical Sobolev regularity permitting the integrations by parts.

## 2. Exact common operator and mixed compatibility

Set

\[
A=-\Delta,\quad V=u_t,\quad M_{ij}=\partial_ju_i,
\quad a_j=\partial_ju,\quad g=\mathbb Pf,
\]
\[
N(u,h)=(u\cdot\nabla)h,
\quad \mathcal N_uh=N(u,h)+N(h,u),
\quad L_uh=\mathbb P\mathcal N_uh.
\]

The full temporal and spatial rows are

\[
V_t+\nu AV+\mathcal N_uV+\nabla p_t=f_t,
\]
\[
(a_j)_t+\nu Aa_j+\mathcal N_ua_j+\partial_j\nabla p=\partial_jf.
\tag{GT1}
\]

Thus the bundle \(H=(H_0,H_1,H_2,H_3)=(V,a_1,a_2,a_3)\) has the actual common projected operator

\[
(H_\alpha)_t+(\nu A+L_u)H_\alpha=G_\alpha,
\quad G_0=g_t,\quad G_j=\partial_jg.
\tag{GT2}
\]

Its unprojected force and pressure columns are

\[
F_0=f_t,\quad F_j=\partial_jf,
\qquad\pi_0=p_t,\quad\pi_j=\partial_jp.
\]

The spatial term \((a_j\cdot\nabla)u\), equivalently the \(j\)-th column of \(M^2\), remains. In tensor form the spatial row is

\[
M_t+u\cdot\nabla M+M^2+\operatorname{Hess}p
=\nu\Delta M+\nabla f,
\qquad M_t=\nabla V.
\tag{GT3}
\]

The exact spatial Leray commutator, on a solenoidal vector field \(h\), is

\[
\boxed{[\partial_j,L_u]h
=\mathbb P[(a_j\cdot\nabla)h+(h\cdot\nabla)a_j].}
\tag{GT4}
\]

Here \([\partial_j,\mathbb P]=[\partial_j,A]=0\). Differentiating the temporal row in space gives

\[
(\partial_jV)_t+\nu A\partial_jV+L_u\partial_jV
=\partial_jg_t
-\mathbb P[(a_j\cdot\nabla)V+(V\cdot\nabla)a_j].
\tag{GT5}
\]

Differentiating the spatial row in time gives the same equation, since \([\partial_t,L_u]h=\mathbb P[(V\cdot\nabla)h+(h\cdot\nabla)V]\). Before projection, the mixed pressure is \(\partial_jp_t\), the mixed force is \(\partial_jf_t\), and the nonlinear row has all four terms

\[
(u\cdot\nabla)\partial_jV
+(a_j\cdot\nabla)V
+(V\cdot\nabla)a_j
+(\partial_jV\cdot\nabla)u.
\]

The equality of the two mixed derivatives is an exact compatibility identity. Removing either middle allocation would change it.

## 3. Full cross Gram and a positive block

Define finite actual matrices

\[
\mathsf G_{\alpha\beta}=\langle H_\alpha,H_\beta\rangle,
\quad\mathsf D_{\alpha\beta}=\langle\nabla H_\alpha,\nabla H_\beta\rangle,
\quad\mathsf C_{\alpha\beta}=\langle H_\alpha,T H_\beta\rangle,
\quad T=\operatorname{Sym}\nabla u.
\]

Both \(\mathsf G\) and \(\mathsf D\) are positive semidefinite Gram matrices. Skew-adjoint transport and the full stretching pair give

\[
\boxed{\mathsf G'_{\alpha\beta}+2\nu\mathsf D_{\alpha\beta}
=-2\mathsf C_{\alpha\beta}
+\langle F_\alpha,H_\beta\rangle
+\langle H_\alpha,F_\beta\rangle.}
\tag{GT6}
\]

This is the direct execution of J10 for the selected columns. Pressure vanishes in this whole-space Gram test because each receiving column is solenoidal. It remains a field coordinate, and the local identity retains its flux:

\[
\begin{aligned}
\partial_t(H_\alpha\cdot H_\beta)
+\nabla\cdot\big(u(H_\alpha\cdot H_\beta)
-\nu\nabla(H_\alpha\cdot H_\beta)
+\pi_\alpha H_\beta+\pi_\beta H_\alpha\big)
={}&-2\nu\nabla H_\alpha:\nabla H_\beta
-2H_\alpha^TT H_\beta\\
&+F_\alpha\cdot H_\beta+H_\alpha\cdot F_\beta.
\end{aligned}
\tag{GT7}
\]

For any fixed real symmetric positive semidefinite matrix \(Q\), multiplying (GT6) gives the full positive-block energy

\[
E_Q=\tfrac12\sum_{\alpha,\beta}Q_{\alpha\beta}
\langle H_\alpha,H_\beta\rangle,
\]
\[
E_Q'+\nu\sum Q_{\alpha\beta}\mathsf D_{\alpha\beta}
=-\sum Q_{\alpha\beta}\mathsf C_{\alpha\beta}
+\sum Q_{\alpha\beta}\langle H_\alpha,F_\beta\rangle.
\tag{GT8}
\]

The signed strain contraction and complete source Gram remain; positivity of \(Q\) alone has not supplied a sign for their actual contraction.

For a fixed spatial ray \(a\in\mathbb R^3\), put \(D_a=a\cdot\nabla\), \(U_a=D_au\), and choose fixed \(\kappa\in\mathbb R\), \(\eta\ge0\). The positive block

\[
Q=\begin{pmatrix}1&\kappa\\\kappa&\kappa^2+\eta\end{pmatrix}
\]

has

\[
E_{\kappa,\eta}=\tfrac12\|W_\kappa\|_2^2
+\tfrac\eta2\|U_a\|_2^2,
\qquad W_\kappa=V+\kappa U_a.
\]

Its exact evolution is

\[
\begin{aligned}
E_{\kappa,\eta}'
+\nu(\|\nabla W_\kappa\|_2^2+\eta\|\nabla U_a\|_2^2)
={}&-\langle W_\kappa,TW_\kappa\rangle
-\eta\langle U_a,TU_a\rangle\\
&+\langle W_\kappa,f_t+\kappa D_af\rangle
+\eta\langle U_a,D_af\rangle.
\end{aligned}
\tag{GT9}
\]

The off-diagonal current \(J_a=\langle V,U_a\rangle\) separately obeys

\[
J_a'+2\nu\langle\nabla V,\nabla U_a\rangle
=-2\langle V,TU_a\rangle
+\langle g_t,U_a\rangle+\langle V,D_ag\rangle.
\tag{GT10}
\]

## 4. Complete pressure-square block and the actual J13d corner

Define the unprojected lower source columns

\[
\mathcal U_\alpha=F_\alpha-\mathcal N_uH_\alpha,
\quad\mathcal T_\alpha=\mathcal U_\alpha-\nabla\pi_\alpha.
\]

The actual field equations imply

\[
\mathcal T_\alpha=(H_\alpha)_t+\nu AH_\alpha,
\quad\mathcal T_\alpha=\mathbb P\mathcal U_\alpha,
\quad\nabla\pi_\alpha=(I-\mathbb P)\mathcal U_\alpha.
\tag{GT11}
\]

Thus all nine force/nonlinear/pressure pairings in the last sum of J13d recombine exactly as

\[
\begin{aligned}
\langle\mathcal T_\alpha,\mathcal T_\beta\rangle
={}&\langle F_\alpha,F_\beta\rangle
-\langle F_\alpha,\mathcal N_uH_\beta\rangle
-\langle\mathcal N_uH_\alpha,F_\beta\rangle
+\langle\mathcal N_uH_\alpha,\mathcal N_uH_\beta\rangle\\
&-\langle F_\alpha,\nabla\pi_\beta\rangle
-\langle\nabla\pi_\alpha,F_\beta\rangle
+\langle\mathcal N_uH_\alpha,\nabla\pi_\beta\rangle\\
&+\langle\nabla\pi_\alpha,\mathcal N_uH_\beta\rangle
+\langle\nabla\pi_\alpha,\nabla\pi_\beta\rangle.
\end{aligned}
\]

No individual force/pressure pairing is assumed zero. Equation (GT11) combines the five displayed pressure pairings with the actual full force and convection into

\[
\langle\mathcal T_\alpha,\mathcal T_\beta\rangle
=\langle\mathcal U_\alpha,\mathcal U_\beta\rangle
-\langle\nabla\pi_\alpha,\nabla\pi_\beta\rangle.
\]

Substituting both factors with \(k=\ell=1\), including the cross diffusion/source terms, gives the complete matrix relationship

\[
\boxed{\operatorname{Gram}(H_t)
+\nu^2\operatorname{Gram}(AH)
+\nu\,\partial_t\operatorname{Gram}(\nabla H)
+\operatorname{Gram}(\nabla\pi)
=\operatorname{Gram}(F-\mathcal N_uH).}
\tag{GT12}
\]

For \(\alpha=(0,e_j)\), \(\beta=(1,0)\), this is the actual off-diagonal corner

\[
\begin{aligned}
\langle\partial_jV,V_t\rangle
+\nu^2\langle\partial_jAu,AV\rangle
+\nu\partial_t\langle\nabla\partial_ju,\nabla V\rangle
+\langle\partial_j\nabla p,\nabla p_t\rangle
={}&\langle\partial_jf-(u\cdot\nabla)\partial_ju
-(\partial_ju\cdot\nabla)u,\\
&f_t-(u\cdot\nabla)V-(V\cdot\nabla)u\rangle.
\end{aligned}
\tag{GT13}
\]

The temporal and summed spatial diagonal identities are, respectively,

\[
\|V_t\|_2^2+\nu^2\|AV\|_2^2
+\nu\partial_t\|\nabla V\|_2^2+\|\nabla p_t\|_2^2
=\|f_t-(u\cdot\nabla)V-MV\|_2^2,
\]
\[
\|M_t\|_2^2+\nu^2\|AM\|_2^2
+\nu\partial_t\|\nabla M\|_2^2+\|\operatorname{Hess}p\|_2^2
=\|\nabla f-u\cdot\nabla M-M^2\|_2^2.
\tag{GT14}
\]

Tensor norms here are Frobenius \(L^2\) norms, and \(M_t=\nabla V\) is kept as the actual common coordinate. Fixed positive-block contraction of (GT12) preserves the full squares on both sides and the exact derivative stock, with every source and pressure cross entry.

Another equivalent positive decomposition retains the full momentum residual columns

\[
\mathcal R_\alpha=(H_\alpha)_t+\mathcal N_uH_\alpha-F_\alpha
=-\nu AH_\alpha-\nabla\pi_\alpha.
\]

Solenoidality makes the cross diffusion/pressure pairings zero, yielding

\[
\boxed{\operatorname{Gram}(\mathcal R)
=\nu^2\operatorname{Gram}(AH)+\operatorname{Gram}(\nabla\pi).}
\tag{GT15}
\]

For example the ray combination has complete pressure \(p_t+\kappa D_ap\) and force \(f_t+\kappa D_af\):

\[
\|W_{\kappa,t}+\mathcal N_uW_\kappa-(f_t+\kappa D_af)\|_2^2
=\nu^2\|AW_\kappa\|_2^2
+\|\nabla(p_t+\kappa D_ap)\|_2^2.
\tag{GT16}
\]

No pressure norm is dropped by using the projected equation: its gradient part is precisely (GT11), and its force dependence remains in that part and in the full right side of (GT12).

## 5. Independence, scalar stocks and scope of the verified operation

Let the original momentum residual be

\[
\mathcal E=u_t+(u\cdot\nabla)u+\nabla p-\nu\Delta u-f.
\]

The actual \(W_\kappa\) row is exactly \((\partial_t+\kappa D_a)\mathcal E=0\). The positive joint block therefore contracts those actual differentiated equations and their Gram coordinates; it is not an additional field equation independent of them.

The cross current itself is a genuine additional coordinate rather than the derivative of a vanishing scalar stock. Indeed \(\langle u,D_au\rangle=0\), and differentiating it gives \(\langle V,D_au\rangle+\langle u,D_aV\rangle=J_a-J_a=0\). Its actual native value is

\[
\boxed{J_a=-\langle(u\cdot\nabla)u,D_au\rangle
+\langle g,D_au\rangle,}
\tag{GT17}
\]

because \(\langle\Delta u,D_au\rangle=0\) by skew-adjointness and \(D_au\) is solenoidal. Thus retaining this coordinate also retains its nonlinear/forcing content. Neither replacing it with zero nor replacing the full joint Gram by only its diagonal is warranted.

The gradient completed-height \(k=2,s=1\) entry in J11 has an exact stock check as well. Write \(Y=\|\nabla u\|_2^2\), \(Z=\|Au\|_2^2\) and \(W=\|\nabla Au\|_2^2\). With the actual complete source \(F-B-\nabla p=u_t+\nu Au\),

\[
\mathcal G_{0,1}=\tfrac12Y'+\nu Z,
\qquad\mathcal G_{0,2}=\tfrac12Z'+\nu W.
\]

Consequently its complete expression is

\[
\tfrac12Y''+2\nu\mathcal G_{0,2}-\mathcal G_{0,1}'
=2\nu^2W=4\nu^2E_{0,3}.
\tag{GT18}
\]

This verifies the actual height relationship after all work terms are substituted. It provides no independent estimate by setting a remaining nonlinear or force face to zero.

The initial columns are datum-generated: \(V(0)=\nu\Delta u_0-\mathbb P[(u_0\cdot\nabla)u_0]+g(0)\) and \(a_j(0)=\partial_ju_0\). Every finite block and derivative stock is finite on each strict classical interval. All integrated versions of (GT6), (GT9) and (GT12) retain the corresponding terminal Gram/derivative stocks. No constant uniform in a possibly finite maximal endpoint, or in an exhaustion of increasing derivative orders, is asserted here.

The verified new content is the complete joint cross-Gram and pressure-square execution, including the exact spatial commutator and its matching mixed sources. Its contraction is richer than a single scalar diagonal stock and remains an exact operation on the same original mixed jet. No datum-only whole-terminal norm bound has been supplied by the contraction alone in this bounded independent check.
