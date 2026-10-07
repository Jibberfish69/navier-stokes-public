# Critical source-receiver split: full execution and cutoff tails

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Later corner and response continuations refine the remaining source-action branch; the source split and its exact boundary identities stay valid. Interpret terminal-entry statements with the later native-output-to-source transfer, not as prerequisites imposed on the original construction. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This bounded continuation executes the original FIH.39 split inside the critical source-receiver triangle. It carries the complete heat defect through the Gram transport, first-binomial heat bridge, next binomial/cubic row, output and age tails, and the original N90 coercivity. These calculations retain the actual history, pressure, force, and every endpoint.

## Exact source map

The directly governing original source is [FIH](../SOURCES.md#S212): definitions FIH.2–7, LF49–116; transport FIH.11–12, LF166–185; triangle FIH.15–20, LF217–293; cubic and transverse readouts FIH.27–30, LF353–397; complete defect FIH.31–33, LF405–434; signed split FIH.39, LF487–492.

The corresponding source/storage law is [PRM.35–46b](../SOURCES.md#S229). The complete physical first-binomial source is [FCP.1–3, LF18–109](../SOURCES.md#S304), and the coercive mixed coupling is [N89–N90, LF2323–2363](../SOURCES.md#S153).

## 1. Full fields, receiver and heat defect

First take the actual unforced smooth history on \(I=(0,T)\), \(T<\infty\), with \(u_0\in H^\infty_\sigma\). Put
\[
Q(u)=-\mathbb P[(u\cdot\nabla)u],\quad
\mathcal B(a,b)=\mathbb P[(a\cdot\nabla)b],\quad
DQ(v)[a]=-\mathcal B(a,v)-\mathcal B(v,a).
\]
In pressure-explicit form this derivative includes
\(-\nabla R_iR_j(a_i v_j+v_i a_j)\), in addition to both ordered transport terms.
With \(S_s=e^{-\nu s\Lambda^2}\), use the source's actual readouts
\[
v_s=S_su,\quad G_s=Q(v_s),\quad H_s=S_sQ(u),\quad
D_s=H_s-G_s,\quad L=\partial_t-\partial_s,\quad W=\nu^{-1}\Lambda^{-1}.
\]
FIH.39 is exactly
\[
N_s=N_{\rm self,s}+N_{\rm def,s},\qquad
N_{\rm self,s}=DQ(v_s)[G_s],\quad N_{\rm def,s}=DQ(v_s)[D_s].
\]
The complete FIH.33 defect remains
\[
\boxed{D_s=-2\nu\int_0^s S_{s-r}
\sum_j\mathcal B(\partial_jv_r,\partial_jv_r)\,dr.}
\tag{CSX.1}
\]
There are two ordered pressure-complete terms when CSX.1 is inserted into \(DQ(v_s)[D_s]\). The defect's Fourier multiplier
\(e^{-\nu s|k|^2}-e^{-\nu s(|p|^2+|q|^2)}\), \(p+q=k\), retains its signed parent phases.

Define the critical square and full critical receiver
\[
q(t,s)=\langle WG_s,G_s\rangle,\qquad
j(t,s)=2\langle W(N_{\rm self,s}+N_{\rm def,s}),G_s\rangle .
\]
The exact transport is \(Lq=j\). For \(\Delta_\tau=\{t,s\ge0:t+s<\tau\}\),
\[
\boxed{J(\tau):=\iint_{\Delta_\tau}j
=\int_0^\tau A(t)\,dt-\int_0^\tau q(0,s)\,ds,\qquad
A(t)=\nu^{-1}\|\Lambda^{-1/2}Q(u(t))\|_2^2.}
\tag{CSX.2}
\]
The characteristic edge \(t+s=\tau\) has zero flux. The datum age edge is finite, whereas the positive bottom source-square edge is explicit. CSX.2 is derived after joining the signed split, before any absolute estimate.

## 2. Execute the full defect stress inside its critical receiver

FIH.33 also has the exact tensor form
\[
\tau_s=S_s(u\otimes u)-v_s\otimes v_s
=2\nu\int_0^s S_{s-r}\sum_j\partial_jv_r\otimes\partial_jv_r\,dr
\succeq0,\qquad D_s=-\mathbb P\operatorname{div}\tau_s.
\tag{CSX.3}
\]
Heat convolution preserves the pointwise positive tensor. Its total trace is
\[
\int\operatorname{tr}\tau_s=\|u\|_2^2-\|S_su\|_2^2
\le2\nu s\|\nabla u\|_2^2.
\]
For the exact test field \(F_{v,WG}=v\cdot\nabla(WG)-(\nabla v)^T(WG)\), integration by parts gives
\[
\boxed{\langle W DQ(v)[D],G\rangle
=\int\tau:\nabla\mathbb P F_{v,WG}.}
\tag{CSX.4}
\]
The projector on this receiver remains; all inner \(G=Q(v)\) pressure terms also remain. Thus tensor positivity does not itself assign a sign to CSX.4: its receiver is the full symmetrized gradient of \(\mathbb P F_{v,WG}\).

With the verified negative-order velocity endpoint \(u_*\) and kinetic norm limit \(\ell=\lim_{t\uparrow T}\|u(t)\|_2^2\), the same tensor gives the exact uniform kinetic smoothing residue
\[
\lim_{s\downarrow0}\sup_{t<T}
\bigl(\|u(t)\|_2^2-\|S_su(t)\|_2^2\bigr)
=d:=\ell-\|u_*\|_2^2.
\]
The corresponding uniform kinetic output tail has the same limit \(d\). This identifies a kinetic residue; it does not insert a bound for the derivative receiver in CSX.4 or for \(A\).

## 3. The complete heat-age Gram is paid

Let \(K=\|u_0\|_2\), \(D_0=K^2/(2\nu)\), \(a=\mathsf S_3\mathsf S_6=\sqrt{2/3}/\pi\), and \(B_0=K^4/(6\pi^2\nu^3)\).
The previously executed nonlinear-parent storage and the exact intrinsic-source heat integral give
\[
\int_I\int_0^\infty\|G_s\|_W^2\,ds\,dt\le B_0,
\]
\[
\int_I\int_0^\infty\|H_s\|_W^2\,ds\,dt
=\frac1{2\nu^2}\int_I\|\Lambda^{-3/2}Q(u)\|_2^2dt\le B_0.
\]
Here \(\|\Lambda^{-3/2}Q(u)\|_2\le aK\|\nabla u\|_2\), with the complete tensor divergence and Leray multipliers retained. Consequently
\[
\int\!\!\int\|D_s\|_W^2\le4B_0,\qquad
\int\!\!\int|\langle WG_s,D_s\rangle|\le2B_0.
\]
The actual \(3\times3\) Gram of \((G,H,D)\) has paid trace at most \(6B_0\) and exact rank relation \(H=G+D\). All its integrated output tails and near-/far-age tails vanish uniformly over strict terminal prefixes by absolute continuity of these whole-domain integrals.

This is a bulk result in physical time and heat age. Its transport derivatives have bottom traces, which must be calculated rather than inferred from the bulk norm.

## 4. The Gram permits an exact receiver change

Set
\[
M_0=DQ(u)[Q(u)]+2\nu\mathcal C(u),\qquad
\mathcal C(u)=\sum_j\mathcal B(\partial_ju,\partial_ju).
\]
The original first-binomial source law gives
\[
L G=N,\quad L H=S_sM_0,\quad L D=S_sM_0-N.
\]
At \(s=0\), \(G_0=H_0=Q(u)\) and \(D_0=0\), but
\[
\boxed{(LD)_0=2\nu\mathcal C(u),}
\]
so the derivative of the defect cannot be removed with its value.

The Gram transports are
\[
L\|D\|_W^2=2\langle W(S_sM_0-N),D\rangle,\quad
L\langle WG,D\rangle=\langle WN,D\rangle+\langle WG,S_sM_0-N\rangle.
\]
Their bottom faces are zero. In particular
\[
2\iint_{\Delta_\tau}\langle W(S_sM_0-N),D\rangle
=-\int_0^\tau\|D(0,s)\|_W^2ds .
\tag{CSX.5}
\]
This complete signed defect-receiver action is nonpositive, datum bounded, has a finite terminal limit, and has uniform output tails. Combining its cross transport with the \(G\) transport gives the exact critical receiver bridge
\[
\boxed{J_G^\triangle(\tau)-J_H^\triangle(\tau)
=C_H^\tau(0)-C_G^\tau(0),}
\tag{CSX.6}
\]
where \(J_G^\triangle=2\iint\langle WN,G\rangle\),
\(J_H^\triangle=2\iint\langle WS_sM_0,H\rangle\), and
\(C_F^\tau(0)=\int_0^\tau\|F(0,s)\|_W^2ds\).
The bridge includes the full defect square and both cross terms. It changes to the intrinsic source heat receiver \(H\), with a precise datum correction; no velocity-receiver bound is transferred.

The age integral of the changed receiver is exact:
\[
\boxed{J_H^\triangle(\tau)=
\nu^{-2}\int_0^\tau
\left\langle\Lambda^{-3}(1-S_{2(\tau-t)})M_0(t),Q(u(t))\right\rangle dt.}
\tag{CSX.7}
\]
The time-dependent heat multiplier is retained. With
\(\psi=\Lambda^{-3}(1-S_{2(\tau-t)})Q\), the same complete action is
\[
J_H^\triangle(\tau)=\nu^{-2}\int_0^\tau\!dt\int_{\mathbb R^3}\!dx\,\partial_j\psi_i
\left(u_iQ_j+Q_i u_j-2\nu\sum_\ell\partial_\ell u_i\partial_\ell u_j\right).
\]
Both quintic source parents and the full viscous commutator occur in this one scalar. Substitution of the first-binomial storage equation returns the positive bottom action in CSX.2; it does not identify its upper primitive with the paid bulk Gram.

## 5. Carry the next original binomial and cubic row through

The source weighted cubic is \(T_W(v)=\langle WQ(v),v\rangle\). Put
\(M_s=S_sM_0\), \(P_s=LN_s=-2\mathcal B(H_s,H_s)+DQ(v_s)[M_s]\).
Both ordered derivatives give exactly
\[
LT_W=\langle WN,v\rangle+q+\langle WG,D\rangle,
\]
\[
\boxed{j=L^2T_W-\langle WP,v\rangle-\langle WG,M\rangle
-2\langle WN,D\rangle .}
\tag{CSX.8}
\]
At the physical edge,
\(LT_W(t,0)=\langle W DQ(u)[Q],u\rangle+A(t)\).
The quartic edge and the complete next binomial row remain.

Executing FIH.39 separately gives a more detailed check. Write \(A_s^\circ=DQ(v_s)[G_s]\), \(E_s^\circ=DQ(v_s)[D_s]\),
\[
R_s=-2\mathcal B(G_s,G_s)+DQ(v_s)[A_s^\circ],
\]
\[
X_s=-\mathcal B(D_s,G_s)-\mathcal B(G_s,D_s)+DQ(v_s)[E_s^\circ],
\quad U_s=\langle WA_s^\circ,v_s\rangle .
\]
Then \(LA_s^\circ=R_s+X_s\), and
\[
\boxed{\langle WN,G\rangle
=LU-\langle WR,v\rangle-\langle WX,v\rangle
-\langle WA^\circ,D\rangle+\langle WE^\circ,G\rangle .}
\tag{CSX.9}
\]
Inserting the full CSX.1 into \(E^\circ,X\) preserves all nested pressure legs.
On the actual physical edge the exact expression is
\[
U_0=\partial_t T_W(u)+2\langle Q,\Lambda u\rangle
-2\langle\mathcal C(u),\Lambda^{-1}u\rangle-A.
\]
The old heat edge is datum bounded. The actual cubic endpoint, critical action and complete higher work are still displayed. Recombining the differentiated cubic with CSX.9 cancels the \(L^2T_W\) and differentiated-defect allocations exactly and returns \(Lq=j\). This is identity cancellation before estimates; it is not an upper bound obtained by deleting the higher row.

## 6. Heat-age weights and separately controlled split legs

For any \(C^1\) age weight \(a_*(s)\), the complete Green identity is
\[
\iint_{\Delta_\tau}a_*(s)j
=a_*(0)\int_0^\tau A(t)dt
-\int_0^\tau a_*(s)q(0,s)ds
+\iint_{\Delta_\tau}a_*'(s)q .
\tag{CSX.10}
\]
If \(a_*(0)=0\), this critical source-receiver action has a finite signed terminal limit and uniform output tails from the paid datum and bulk norms. For example
\[
\iint_{\Delta_\tau}s\,j
=\iint_{\Delta_\tau}q-\int_0^\tau s\,q(0,s)ds .
\]
The zero coefficient on the bottom source action is a consequence of the displayed age factor. Removing that factor reinstates CSX.2.

There is a stronger absolute result at every fixed output radius \(R\), using
\(W_R=\nu^{-1}\Lambda^{-1}P_{\le R}\). For \(Z=G,H,D\), let \(N_Z=DQ(v)[Z]\), with
\[
C_G=(8\pi)^{-3/4},\quad C_H=a(3/(4e))^{3/4},\quad C_D=C_G+C_H.
\]
The actual heat fields satisfy
\(\|Z_s\|_2\le C_ZK\|\nabla u(t)\|_2(\nu s)^{-3/4}\).
Incompressibility in both ordered parents gives
\[
|\widehat N_Z(k)|\le2c_{\mathcal F}|k|\|Z_s\|_2\|v_s\|_2,\qquad
|\widehat G_s(k)|\le c_{\mathcal F}|k|K^2e^{-\nu s|k|^2/2}.
\]
Thus each split leg has the uniform absolute small-age tail
\[
\boxed{\sup_{\tau<T}\iint_{\Delta_\tau,\ s<\varepsilon}
|2\langle W_RN_Z,G\rangle|
\le16\pi c_{\mathcal F}^2 C_ZR^4K^4\nu^{-7/4}
\varepsilon^{1/4}\sqrt{TD_0}.}
\tag{CSX.11}
\]
Keeping the receiver Gaussian and integrating all ages also gives
\[
\int_I\int_0^\infty|2\langle W_RN_Z,G\rangle|
\le\frac{32\pi\,2^{1/4}\Gamma(1/4)}7
c_{\mathcal F}^2C_ZR^{7/2}K^4\nu^{-2}\sqrt{TD_0}.
\]
The split can therefore be passed separately through all physical times and heat ages at fixed output. These bounds grow with \(R\).

Far-age tails at full output are also paid. The exact Fourier divergence source gives
\(\|\nabla S_sQ(u)\|_2\le C_qK^2(\nu s)^{-7/4}\),
\(C_q=\sqrt{15}/(2^{17/4}\pi^{3/4})\). The complete insertion satisfies
\[
\frac2\nu\int_L^\infty
|\langle\Lambda^{-1}DQ(v_s)[H_s],G_s\rangle|ds
\le\frac{16a^2C_q}{9(2e)^{3/2}\nu^2}K^5(\nu L)^{-9/4},
\]
uniformly in physical time. Age infinity is therefore controlled.

## 7. Exact simultaneous-cutoff corner and terminal faces

For any output projection \(P\), write \(q_P=\nu^{-1}\|\Lambda^{-1/2}PG\|^2\), \(A_P=q_P(t,0)\), and form the complete receiver with \(W_P\).
The small-age triangle has the exact additional age face
\[
\boxed{J_{P,\ s<\varepsilon}(\tau)
=\int_0^\tau A_P(t)dt
-\int_0^{\min(\varepsilon,\tau)}q_P(0,s)ds
-\int_0^{(\tau-\varepsilon)_+}q_P(t,\varepsilon)dt.}
\tag{CSX.12}
\]
The portion above that age face is independently paid and has a finite terminal limit.
At fixed \(R\), the combined low-output signed tail has the sharper uniform \(O(\varepsilon)\) estimate
\[
\sup_{\tau<T}|J_{\le R,\ s<\varepsilon}(\tau)|
\le2\pi c_{\mathcal F}^2K^2R^4\varepsilon
(R^2TK^2+2D_0)
+2\varepsilon\pi c_{\mathcal F}^2K^4R^4/\nu .
\]
This uses the full CSX.3 stress and its signed source-square difference, before taking absolute estimates.

For the remaining high-output corner, CSX.12 preserves \(A_{>R}\). Its positive-age face has the explicit bound
\[
q_{>R}(t,\varepsilon)
\le\frac{K^4}{4\pi^2\nu^3\varepsilon^2}
(1+\nu\varepsilon R^2)e^{-\nu\varepsilon R^2}
\]
in the unitary Fourier convention. The old face tail also tends to zero uniformly in \(\tau\). Therefore, at any fixed \(\varepsilon>0\),
\[
J_{>R,\ s<\varepsilon}(\tau)
=\int_0^\tau A_{>R}(t)dt-\text{explicit paid faces}.
\]
Uniform vanishing of this signed corner as \(R\to\infty\) is precisely uniform vanishing of the positive source-square output tail. The bulk Gram controls its volume tails and age-zero-vanishing weighted transport, but the executed identities do not supply an upper bound for this bottom action. No signed defect or parent term was lost to an estimate in obtaining this statement.

## 8. Quantitative sufficient entry and exact N90 coupling

A single fixed corner is enough if its actual upper primitive is finite. Fix \(\varepsilon>0\) and \(R_0<\infty\). If
\(B_{\rm corner}=\sup_{\tau<T}J^{>R_0,s<\varepsilon}(\tau)<\infty\),
CSX.12 and the kinetic low-output bound give
\[
\int_I A\le B_A:=
B_{\rm corner}+B_{\rm old}
+T M_{\varepsilon,R_0}+T M_{R_0}<\infty ,
\]
where \(M_{\varepsilon,R_0}\) is the displayed Gaussian face bound and
\(M_{R_0}=\pi c_{\mathcal F}^2K^4R_0^4/\nu\).
Conversely \(\int_I A<\infty\) bounds this corner above. This is an exact coordinate for the source-action entry, not a datum payment of \(B_{\rm corner}\).

For the actual response \(w=u-S_tu_0\),
\[
E=\tfrac12\|\Lambda^{1/2}w\|^2,\quad
I_w=\nu\|\Lambda^{3/2}w\|^2,\quad
E'+I_w=\langle\Lambda w,Q\rangle .
\]
The original source pairing obeys
\(\langle\Lambda w,Q\rangle\le(I_w+A)/2\).
Hence \(E(S)+\tfrac12\int_0^SI_w\le\tfrac12B_A\), and addition of the actual datum heat field gives
\[
\boxed{\int_I\|\Lambda^{3/2}u\|^2
\le[2B_A+\|\Lambda^{1/2}u_0\|^2]/\nu .}
\]
This is the sufficient square-time spatial entry, followed by the already verified original mixed bootstrap and endpoint/restart.

The first-binomial heat bridge also gives a complete coercive row without changing receivers by assertion. Put
\(r=\tfrac12\|\Lambda^{-3/2}Q\|^2\),
\(H_c=\tfrac12\|\Lambda^{1/2}u\|^2\),
\(Z=\|\Lambda^{-1/2}u_t\|\), \(D_{\rm crit}=\|\Lambda^{3/2}u\|^2\).
The exact whole-age bridge is
\[
(C_\infty-r/\nu^2)'=J_G-J_{\rm int}/\nu^2,\quad
J_G=\frac2\nu\int_0^\infty\langle\Lambda^{-1}N,G\rangle ds .
\]
Adding original N90 divided by \(\nu^2\) cancels \(J_{\rm int}\) exactly:
\[
\boxed{(C_\infty+2H_c)'+\nu D_{\rm crit}+\nu^{-1}Z^2=J_G .}
\tag{CSX.13}
\]
All strict-prefix endpoints are positive stocks and retained. A finite upper \(J_G\) primitive supplies this single entry. The bridge and next-binomial recycling have not identified that upper primitive with a paid bulk norm.

## 9. Arbitrary admitted forcing

For the actual forced history take \(b=\mathbb Pf\) and
\(K=\|u_0\|_2+\|b\|_{L^1(I;L^2)}\).
Keep the intrinsic fields \(H=S_sQ(u)\), \(D=H-G\) and CSX.1. The full derivatives are
\[
Lv=H+S_sb,\quad LG=N_{\rm self}+N_{\rm def}+N_f,\quad
N_f=DQ(v)[S_sb],
\]
\[
LH=S_s(M_0+DQ(u)[b]).
\]
The two prescribed parent insertions are independently absolutely paid:
\[
B_f:=\frac2\nu\int_I\int_0^\infty
|\langle\Lambda^{-1}N_f,G\rangle|dsdt
\le\frac{2\sqrt2}{3\pi^2\nu^{5/2}}K^3
\|\nabla b\|_{L^2(I;L^2)} .
\]
The same bound pays restricted age/output triangles; it is taken before possible cancellation over age. Thus intrinsic-corner formulas retain their additional force face, bounded by \(B_f\), and the bound for \(B_A\) adds \(B_f\).

At fixed output, the full-age force pairing is also bounded by
\(16\pi c_{\mathcal F}^2R^2K^3\nu^{-2}\|b\|_{L^1L^2}\),
and its small-age tail by
\(4\pi c_{\mathcal F}^2R^4K^3\nu^{-1}\varepsilon\|b\|_{L^1L^2}\).

For the full higher row use \(F_s=S_sb\),
\[
LN_{\rm total}=-2\mathcal B(H+F_s,H+F_s)
+DQ(v)[LH+LF_s],\quad LF_s=S_s(b_t+\nu\Lambda^2b).
\]
All four nonlinear/force pairings and both ordered cross terms remain. The intrinsic defect still has \((LD)_0=2\nu\mathcal C(u)\).

The forced coercive law CSX.13 becomes
\[
(C_\infty+2H_c)'+\nu D_{\rm crit}
+\nu^{-1}\|\Lambda^{-1/2}(u_t-b)\|^2
=J_{G,\rm NL}+J_{G,f}+2\langle b,\Lambda u\rangle .
\]
Both added source terms are paid at arbitrary amplitude. The response work is
\(F_f=\langle w,\Lambda b\rangle\), with
\(B_F=\|F_f\|_{L^1}\le2K\|\Lambda b\|_{L^1L^2}\).
The single-corner entry therefore gives the complete forced bound
\[
\int_I\|\Lambda^{3/2}u\|^2
\le[2B_A+4B_F+\|\Lambda^{1/2}u_0\|^2]/\nu .
\]
This preserves the original absolute-time force for any subsequent restart.

## Exact bounded result and supporting calculations

The full split has been executed, including the next binomial row and its cubic recycling. It supplies a paid complete heat-age Gram, actual uniformly vanishing bulk tails, an exact datum-paid defect-receiver triangle, critical receiver control with vanishing age weights, separate whole-terminal absolute split integrability at every bounded output, and uniformly paid far-age tails. It also permits the exact sourceheat receiver bridge and the coercive N90 coupling.

The simultaneous high-output/small-age corner remains exactly the positive source-square boundary action modulo paid faces. Its needed upper bound was not obtained from these displayed identities or paid bulk norms. This is the result of retaining the actual critical receiver and every source term, rather than a loss introduced by estimating the self and defect legs separately.

Full independent derivations:

- [Complete next binomial/cubic execution](A0322-critical-split-triangle-native-20261006.md).
- [Full Gram transports and age weights](A0317-critical-split-gram-execution-20261006.md).
- [Sourceheat bridge, far-age estimate and N90](A0313-critical-source-heat-bridge-20261006.md).
- [Stress, exact corner and derived single entry](A0321-critical-split-terminal-tail-20261006.md).
- [Separate fixed-output absolute split bounds](A0315-critical-split-fixed-output-absolute-20261006.md).

No essential-source access blocker affected this bounded execution. Original sources and all earlier reports remain unchanged. The [integrity record](../COVERAGE.md#A0320) records source preservation, prior-report preservation, deliverable hashes, and link checks.
