# Actual gradient and first-temporal pressure-square block

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a new bounded derivation from the original mixed rows and their complete relationship rectangles. It tests the spatial-gradient row together with the first temporal pressure square on the same history, before separating nonlinear norms. All statements first hold on an arbitrary strict interval \([0,t]\), \(t<T_*\). The fixed regularization is \(\delta>0\). No whole-terminal membership, derivative positivity, pressure-Hessian sign, or cutoff-independent positive norm is assumed.

## 1. Source inputs and exact selected fields

The exact source ranges used are:

| Original | Operation | SHA256 |
|---|---|---|
| [Forced mixed jet](../SOURCES.md#S117) | Full temporal/spatial velocity and canonical pressure recurrences, LF116–163; strict classical scope, LF59–87; initial recursion, LF214–265. | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` |
| [Forced rectangle cells](../SOURCES.md#S118) | Full projected/unprojected square and integrated initial/boundary stocks, LF189–251. The gradient trace is its \(n=0,s=1\) case; the temporal square is \(n=1,s=0\). | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` |
| [Actual native relationship rectangle](../SOURCES.md#S152) | Mixed graph J1–J6, LF1450–1536; compatibility and instantaneous recursion, LF1515–1577; actual Gram evolution J10, LF1583–1605; local pressure flux J13a, LF1656–1673; two-corner substitution J13c–d, LF1692–1725. | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` |

Set \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(v=u_t\), \(B=N(u,u)\), \(g=\mathbb P f\), and \(q=-\mathbb P B\). The source's \(Q_n\) is scalar pressure and is not the vector \(q\). Select four actual mixed fields:
\[
 X_j=\partial_ju\quad(1\le j\le3),\qquad X_4=v,
 \qquad F_j=\partial_jf,\quad F_4=f_t,
 \qquad p_j=\partial_jp,\quad p_4=p_t.
 \tag{GB1}
\]
The common complete nonlinear operator is
\[
 \mathcal B_u z=N(u,z)+N(z,u).
 \tag{GB2}
\]
It is linear in its receiver \(z\), with coefficients from the same full velocity \(u\). It is not an autonomous equation for a truncated fluid. Both original nonlinear parents give, for every selected column,
\[
 X_{a,t}+\nu LX_a+\mathcal B_uX_a+\nabla p_a=F_a,
 \qquad\operatorname{div}X_a=0,
 \quad 1\le a\le4.
 \tag{GB3}
\]
The full normalized scalar pressure and complementary gradient are
\[
 p_a=R_iR_j(u_iX_{a,j}+X_{a,i}u_j)-L^{-1}\operatorname{div}F_a,
 \qquad\nabla p_a=(I-\mathbb P)(F_a-\mathcal B_uX_a).
 \tag{GB4}
\]
Thus all two-parent pressure terms and the force potential are present before projection.

## 2. Actual mixed compatibility and all four differentiated nonlinear allocations

Write \(U_{ij}=\partial_j u_i\) and \(C_{ij}=\partial_jv_i\). These are matrices of actual fields, not the positive spatial operator \(L\). The complete gradient row is
\[
 U_t+\nu LU+(u\cdot\nabla)U+U^2+\nabla^2p=\nabla f.
 \tag{GB5}
\]
Commutation of the original mixed derivatives gives \(C=U_t\), \(\partial_iX_j=\partial_jX_i\), \(\partial_jv=X_{j,t}\), \(\partial_tp_j=\partial_jp_t\), and the same force compatibility. Differentiating either GB5 in time or the first temporal row in space yields exactly
\[
 C_t+\nu LC+(u\cdot\nabla)C+(v\cdot\nabla)U
                  +CU+UC+\nabla^2p_t=\nabla f_t.
 \tag{GB6}
\]
All four allocations in \(\nabla\mathcal B_uv\) appear: the transport of \(C\), the transport of \(U\) by \(v\), and both matrix products \(CU,UC\). The next temporal/spatial derivatives needed by GB3–6 are retained as boundary coordinates of the original jet. They are not presumed to lie in a terminal norm space.

In vector-column form, with \(C_\ell=\partial_\ell v\), the same mixed row and its operator commutator are
\[
\begin{aligned}
 (C_\ell)_t+\nu LC_\ell+\mathcal B_uC_\ell+\nabla\partial_\ell p_t
 &=\partial_\ell f_t-N(X_\ell,v)-N(v,X_\ell),\\
 [\partial_\ell,\mathbb P\mathcal B_u]z
 &=\mathbb P\{N(X_\ell,z)+N(z,X_\ell)\}.
\end{aligned}\tag{GB6a}
\]
Its actual normalized pressure is
\[
 \partial_\ell p_t
 =R_iR_k\{C_{\ell,i}u_k+v_iX_{\ell,k}+X_{\ell,i}v_k+u_iC_{\ell,k}\}
    -L^{-1}\operatorname{div}\partial_\ell f_t.
 \tag{GB6b}
\]
This retains all four mixed pressure parents, as well as both nonlinear commutator parents. Its effective mixed source after projection is \(\partial_\ell g_t-[\partial_\ell,\mathbb P\mathcal B_u]v\), rather than a prescribed-force derivative alone.

## 3. The source's Gram evolution, with its full local pressure flux

For these actual fields define
\[
 G_{ab}=\langle X_a,X_b\rangle,\quad
 Z_{ab}=\langle\nabla X_a,\nabla X_b\rangle,\quad
 S_{ab}=\langle X_a,N(X_b,u)\rangle,
 \quad
 W_{ab}=\langle X_a,F_b\rangle.
 \tag{GB7}
\]
The matrices \(G,Z\) are actual Hilbert-space Grams and are positive semidefinite. Their derivatives need not be. Substitution of GB3 in both slots is precisely the selected part of native J10:
\[
 \frac12G'+\nu Z=-S_{\rm sym}+W_{\rm sym},
 \qquad S_{\rm sym}=\frac{S+S^T}{2},\quad
 W_{\rm sym}=\frac{W+W^T}{2}.
 \tag{GB8}
\]
Both common transport slots cancel after the complete skew pairing; the two pressure pairings vanish only after testing against the actual solenoidal columns. Their local flux is not omitted. Before spatial integration, with \(g_{ab}=X_a\cdot X_b\), native J13a specializes to
\[
\begin{aligned}
 \partial_tg_{ab}+\nabla\cdot\{ug_{ab}-\nu\nabla g_{ab}
                             +p_aX_b+p_bX_a\}
 ={}&-2\nu\sum_k\partial_kX_a\cdot\partial_kX_b\\
 &-N(X_a,u)\cdot X_b-X_a\cdot N(X_b,u)\\
 &+F_a\cdot X_b+X_a\cdot F_b.
\end{aligned}\tag{GB9}
\]
Consequently a bounded spatial domain retains the displayed transport, diffusion, and pressure boundary fluxes. Full-space integration under the strict-history regularity gives GB8.

For a fixed coefficient vector \(c\in\mathbb R^4\), \(X_c=\sum_ac_aX_a\) and its complete source are the corresponding combinations. More generally, for a constant positive semidefinite matrix \(H\), the trace contraction of GB8 is a sum of these actual combined-field pairings. Its remaining signed nonlinear term is
\[
 \operatorname{tr}(HS_{\rm sym})
 =\sum_{a,b}H_{ab}\int X_a^T\mathsf D_uX_b\,dx,
 \qquad\mathsf D_u=\frac{\nabla u+\nabla u^T}{2}.
 \tag{GB10}
\]
This is a concrete retained operator, not a scalar source replaced by a schematic bound. Incompressibility gives \(\operatorname{tr}\mathsf D_u=0\); it does not remove this contraction on the actual four-column receiver tensor.

## 4. Full pressure-square block, including off-diagonal cross sources

Let the following be Grams of the selected columns:
\[
\begin{gathered}
 A_{ab}=\langle X_{a,t},X_{b,t}\rangle,\qquad
 D_{ab}=\langle LX_a,LX_b\rangle,\qquad
 P_{ab}=\langle\nabla p_a,\nabla p_b\rangle,\\
 R_{ab}=\langle F_a-\mathcal B_uX_a,F_b-\mathcal B_uX_b\rangle.
\end{gathered}\tag{GB11}
\]
Every one of \(A,D,P,R\) is positive semidefinite. Pair the full GB3 cell for index \(a\) against the cell for \(b\). Each gradient pressure face is orthogonal to each temporal/viscous solenoidal face. Both temporal–viscous crossed pairings remain as the derivative of the gradient Gram. This gives the full matrix equality
\[
 A+\nu^2D+P+\nu Z'=R.
 \tag{GB12}
\]
Its integrated version retains the actual terminal stock and the generated initial stock:
\[
 \nu Z(t)+\int_0^t(A+\nu^2D+P)ds
 =\nu Z(0)+\int_0^tR\,ds.
 \tag{GB13}
\]
This is a polarized complete pressure square, with all off-diagonal terms. Explicitly,
\[
\begin{aligned}
 R_{ab}={}&\langle F_a,F_b\rangle
 -\langle F_a,N(u,X_b)\rangle-\langle F_a,N(X_b,u)\rangle\\
 &-\langle N(u,X_a),F_b\rangle-\langle N(X_a,u),F_b\rangle\\
 &+\langle N(u,X_a),N(u,X_b)\rangle
  +\langle N(u,X_a),N(X_b,u)\rangle\\
 &+\langle N(X_a,u),N(u,X_b)\rangle
  +\langle N(X_a,u),N(X_b,u)\rangle.
\end{aligned}\tag{GB14}
\]
No nonlinear cross source or pressure Gram has been discarded. At \(t=0\), \(X_j(0)=\partial_ju_0\) and
\[
 v(0)=-\nu Lu_0-\mathbb PN(u_0,u_0)+g(0).
 \tag{GB15}
\]
Thus \(Z(0)\), including its mixed \(\partial_ju_0/v_0\) entries, is supplied by the finite initial jet and prescribed force. The positive current \(Z(t)\) is an actual history stock, not an initial datum.

Fixed-vector or constant-PSD congruence of GB13 yields a positive action on its left. It is bounded by the complete actual source action on its right. Gram positivity alone gives no value for that right-hand action. In particular \(Z'\) is not a positive matrix merely because \(Z\) is a Gram.

## 5. Executing native J13c–d at the actual one-by-one corner

For each selected mixed index, the source's \(\mathcal T_{n,\alpha}\) becomes
\[
 T_a=F_a-\mathcal B_uX_a-\nabla p_a
    =\mathbb P(F_a-\mathcal B_uX_a),\qquad
 X_{a,t}=-\nu LX_a+T_a.
 \tag{GB16}
\]
The actual native J13d substitution with \(k=\ell=1\), on both factors of every selected Gram entry, is
\[
 A_{ab}=\nu^2D_{ab}
 -\nu\{\langle LX_a,T_b\rangle+\langle T_a,LX_b\rangle\}
 +\langle T_a,T_b\rangle.
 \tag{GB17}
\]
Its last product contains the literal nine pairings named in the source. Write \(B_a=\mathcal B_uX_a\) and \(K_a=\nabla p_a\). Then
\[
\begin{aligned}
 \langle T_a,T_b\rangle={}&\langle F_a,F_b\rangle
 -\langle F_a,B_b\rangle-\langle F_a,K_b\rangle\\
 &-\langle B_a,F_b\rangle+\langle B_a,B_b\rangle+\langle B_a,K_b\rangle\\
 &-\langle K_a,F_b\rangle+\langle K_a,B_b\rangle+\langle K_a,K_b\rangle.
\end{aligned}\tag{GB18}
\]
The pressure terms in GB18 are not individually zero. Complementary projection gives \(K_a=(I-\mathbb P)(F_a-B_a)\), whence
\[
 \operatorname{Gram}(T)=R-P.
 \tag{GB19}
\]
This is the sum of all nine terms, using \(\langle F_a-B_a,K_b\rangle=P_{ab}\) and its transposed counterpart. The pressure face has not disappeared from the pressure square.

Put \(J_{ab}=\langle LX_a,T_b\rangle+\langle T_a,LX_b\rangle\). The same actual row implies
\[
 Z'=-2\nu D+J.
 \tag{GB20}
\]
Insert GB19–20 into GB17. The result is exactly GB12. Therefore the full native one-by-one corner and the polarized pressure square are the same equality after their legitimate pressure cancellations. This is an executed source relationship with all nine pairings retained, not a missing-citation diagnosis and not an extra independent positive action estimate.

## 6. What the spatial and temporal traces genuinely add

The exact mixed compatibility \(X_{j,t}=\partial_jv\) gives
\[
\begin{aligned}
 \sum_{j=1}^3A_{jj}&=\|\nabla v\|^2,&
 \sum_{j=1}^3D_{jj}&=\|\nabla Lu\|^2,\\
 \sum_{j=1}^3P_{jj}&=\|\nabla^2p\|^2,&
 \sum_{j=1}^3Z_{jj}&=\|Lu\|^2.
\end{aligned}\tag{GB21}
\]
Thus the gradient trace and temporal diagonal of GB12 are precisely
\[
\begin{aligned}
 \|\nabla v\|^2+\nu^2\|\nabla Lu\|^2+\|\nabla^2p\|^2
       +\nu(\|Lu\|^2)'&=\|\nabla(f-B)\|^2,\\
 \|v_t\|^2+\nu^2\|Lv\|^2+\|\nabla p_t\|^2
       +\nu(\|\nabla v\|^2)'&=\|f_t-\mathcal B_uv\|^2.
\end{aligned}\tag{GB22}
\]
They have genuinely additional vector/quadratic information beyond the scalar compensated energy. For any fixed \(\alpha,\beta\ge0\), their exact simultaneous integrated action is
\[
\begin{aligned}
 &\nu\{\alpha\|Lu(t)\|^2+\beta\|\nabla v(t)\|^2\}\\
 &+\int_0^t\!\bigl[\alpha\{\|\nabla v\|^2+\nu^2\|\nabla Lu\|^2+\|\nabla^2p\|^2\}
             +\beta\{\|v_t\|^2+\nu^2\|Lv\|^2+\|\nabla p_t\|^2\}\bigr]ds\\
 &=\nu\{\alpha\|Lu_0\|^2+\beta\|\nabla v_0\|^2\}
   +\int_0^t\!\{\alpha\|\nabla(f-B)\|^2+\beta\|f_t-\mathcal B_uv\|^2\}ds.
\end{aligned}\tag{GB23}
\]
The simultaneous gradient/time compatibility is explicit, and all pressure/source and initial/current stocks remain. No bound for the full nonlinear squares on the right is supplied by this equality alone. An indefinite trace weight could cancel selected positive terms but would also lose the stated positive action; no such cancellation is being used as coercivity.

## 7. Correct extraction of the actual compensated receiver from the block

The four fields in GB1 do not by themselves give \(w=v-g+\lambda u\). Augment them by the actual base velocity and the prescribed lift. For the uniform projected linearized operator
\[
 \mathscr T_u z=z_t+\nu Lz+\mathbb P\mathcal B_uz,
 \qquad Dq[z]=-\mathbb P\mathcal B_uz,
\]
the six actual fields \((u,X_1,X_2,X_3,v,g)\) have respectively the sources
\[
 (g-q,\ \partial_1g,\ \partial_2g,\ \partial_3g,\ g_t,\ g_t-j_g),
 \qquad j_g=Dq[g]-\nu Lg.
 \tag{GB24}
\]
In particular the base velocity has the acquired nonlinear source \(g-q\), not merely \(g\). Its unprojected original-pressure presentation is
\[
 u_t+\nu Lu+\mathcal B_uu+\nabla p=f+B.
 \tag{GB25}
\]
Equivalently the solenoidal effective source is \(g-q\) and the complete intrinsic linearized pressure is \(2p_0\), where \(p_0=R_iR_j(u_iu_j)\). The \(g\) column likewise has \(g_t-j_g\), which retains both velocity–source parents. These acquired sources are not being relabeled as prescribed forces.

For completeness, the intrinsic pressure of the other augmented columns is \(\partial_jp_0,p_{0,t},\pi_g\), with \(\pi_g=R_iR_j(u_ig_j+g_iu_j)\). Conversion from the original \(p_j,p_t\) to these intrinsic representatives cancels exactly the gradient forces \(f-g=-\nabla L^{-1}\operatorname{div}f\); no physical force pressure is omitted.

Let \(e=\|u\|^2\), \(Y=\|\nabla u\|^2\), \(b=e+\delta\), \(d=e+3\delta\), \(\lambda=\nu Y/b\), \(h=v-g\), and \(w=h+\lambda u\). Time-dependent congruence introduces the coefficient derivative \(\lambda'u\). Combining the actual GB24 sources gives exactly
\[
 w_t+\nu Lw-Dq[w]=j_g+\lambda(g-q)+\lambda'u.
 \tag{GB26}
\]
The \(g_t\) terms cancel in the full graph. The complete intrinsic physical pressure in this equation is \(\pi_w=R_iR_j(u_iw_j+w_iu_j)\), and both nonlinear parents remain. Replacing \(q=w-\lambda u+\nu Lu\) yields
\[
 w_t+\nu Lw+\mathcal B_uw+\lambda w+\nabla\pi_w
 =j_g-\lambda\nu Lu+(\lambda'+\lambda^2)u+\lambda g.
 \tag{GB27}
\]
No uniform terminal assumption entered this extraction.

For a general time-varying coefficient vector \(c(t)\), an actual Gram contraction has the extra term \(c'^TGc\) in its energy derivative. Here \(\langle u,w\rangle=-\delta\lambda\), so the \(\lambda'\) contribution is precisely \(-\delta\lambda\lambda'\). Pairing GB26, followed by the exact kinetic identity \(e'=-2b\lambda+2\langle u,g\rangle\), gives
\[
\begin{aligned}
 I_\delta(t)={}&\Phi_\delta(t)-\Phi_\delta(0)
 +\int_0^t\left(\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac{d\lambda^3}{2}\right)ds\\
 &-\int_0^t\left(\langle w,j_g\rangle+\lambda\langle q,g\rangle
                      +\frac{\lambda^2}{2}\langle u,g\rangle\right)ds,\\
 \Phi_\delta={}&\frac12\|w\|^2+\frac{d\lambda^2}{4}
 =\frac12\|h\|^2-\frac{\nu^2Y^2}{4b},\qquad
 I_\delta=-\int_0^t\int_{\mathbb R^3}w_iw_j\partial_ju_i\,dx\,ds.
\end{aligned}\tag{GB28}
\]
This is precisely the complete compensated storage law, including both stocks, both source parents and all regularization derivatives. It is independently derived in the immutable [complete pairing note, WS13–17](A0597-signed-strain-complete-pairing.md). Adding the four-column Gram rows does not make the unknown positive boundary/action terms in GB28 prescribed data.

## 8. Additional actual Gram constraints and the surviving operator

The original gradient columns give the exact orthogonality \(\langle u,X_j\rangle=0\). Their other mixed entries are retained. In particular there is no assertion \(\langle q,X_j\rangle=0\). Differentiating the genuine orthogonality using the correctly acquired source \(g-q\) in GB24 gives an identity: \(\langle X_j,q\rangle\) from the stretch cancels the negative \(q\) source, while \(\langle u,\partial_jg\rangle=-\langle X_j,g\rangle\). Omitting that acquired source would manufacture an additional orthogonality not proved by the actual graph.

There is nevertheless a real extra quadratic constraint. Let \(K_{ij}=\langle X_i,X_j\rangle\), \(a_j=\langle X_j,h\rangle\). On \(e>0\), the actual Gram of \((u,X_1,X_2,X_3,h)\) is
\[
 \begin{pmatrix}
 e&0&-\nu Y\\
 0&K&a\\
 -\nu Y&a^T&\|h\|^2
 \end{pmatrix}\succeq0.
 \tag{GB29}
\]
With the Moore–Penrose inverse at rank loss, positivity gives \(a\in\operatorname{Ran}K\) and
\[
 \|h\|^2\ge\frac{\nu^2Y^2}{e}+a^TK^\dagger a,
 \qquad
 \Phi_\delta\ge\frac12a^TK^\dagger a
              +\frac{\nu^2Y^2(e+2\delta)}{4e(e+\delta)}.
 \tag{GB30}
\]
This is additional true same-history Gram information. It is a lower coercive constraint on the storage, rather than an upper action payment. No division by \(e\) is used in the universally defined positive-\(\delta\) law GB28; GB29–30 are stated only where \(e>0\).

On the solenoidal Hilbert space the remaining linearized nonlinear operator has exact adjoint and symmetric part
\[
 (\mathbb P\mathcal B_u)^*z
 =\mathbb P\{-N(u,z)+U^Tz\},\qquad
 \frac{\mathbb P\mathcal B_u+(\mathbb P\mathcal B_u)^*}{2}
 =\mathbb P\mathsf D_u.
 \tag{GB31}
\]
Thus its energy form is the actual signed strain in GB10. Its quadratic source action contains \(\mathcal B_u^*\mathcal B_u\); after projection it contains \(\mathcal B_u^*\mathbb P\mathcal B_u\). That middle projection cannot be dropped: it is the same pressure face whose Gram is retained in GB12/18–19. In particular the concrete surviving block action is the full GB14 numerator, and the concrete surviving scalar receiver work is GB28's signed \(I_\delta\).

These operators and matrix constraints contain genuinely more vector information than the scalar joint law. The executed compatibility, one-by-one corner substitution, pressure orthogonality, constant Gram congruence and compensated time-dependent extraction do not supply an independent upper bound for that signed scalar primitive. This is the bounded result of these operations, not an assertion that no further estimate can be derived from the original graph.

One neighboring original height relationship can also be tested explicitly. Native J11 at \((r,s,k)=(0,1,2)\), with \(Y=\|\nabla u\|^2\), \(Z_0=\|Lu\|^2\), \(H_3=\|\nabla Lu\|^2\), and complete work \(\mathcal G_{0,s}=\langle\Lambda^su,\Lambda^s(f-B-\nabla p)\rangle\), gives
\[
 2\nu^2H_3=\frac12Y''+2\nu\mathcal G_{0,2}-\mathcal G_{0,1}',
 \qquad
 \mathcal G_{0,1}=\frac12Y'+\nu Z_0,\quad
 \mathcal G_{0,2}=\frac12Z_0'+\nu H_3.
 \tag{GB32}
\]
Substitution cancels precisely \(Y''/2\) and \(\nu Z_0'\), retaining \(2\nu^2H_3\) on both sides. This executes that selected anti-diagonal with its complete work terms; it does not pay those terms or assign a sign to the differentiated work. Other contractions of the higher relationships are outside this calculation.

## 9. Scope of the relationship test

The current calculation explicitly tests:

- all ten independent entries of the four-column Gram evolution J10;
- all sixteen ordered entries of its full \(k=\ell=1\) corner J13d, with all nine force/nonlinear/pressure allocations;
- the complete spatial-gradient trace \((n,s)=(0,1)\) and first-temporal pressure square \((1,0)\), including their mixed compatibility and initial/current stocks;
- the correctly acquired base/source columns needed for the actual \(w\) extraction and its coefficient derivative;
- the actual gradient-frame Schur lower constraint GB30 and the complete symmetric nonlinear operator GB31.
- the neighboring J11 anti-diagonal \((r,s,k)=(0,1,2)\), with both complete work pairings in GB32.

It does not evaluate every entry of the source's larger 30-field selection, arbitrary higher corners \(k,\ell\), or every higher completed-height anti-diagonal J11–12. Those are remaining original relationships outside this particular test, not identified mathematical gaps and not claims that they were never examined elsewhere. Their finite-order validity and any potential estimates are distinct questions from the executed four-column block. No terminal membership is inferred by replacing strict-prefix finite entries with uniform limits.
