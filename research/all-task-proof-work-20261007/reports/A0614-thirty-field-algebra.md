# Exact thirty-field common-linearization and Gram algebra

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This independent check executes the original selection \(n=0,1,2\), \(|\alpha|\le2\): 30 actual vector fields, comprising ten spatial multi-indices at each temporal order. All identities below hold on every strict smooth prefix of the original forced history. Whole-terminal norm membership is not an input to, or a conclusion of, this algebra. The velocity, pressure and prescribed force are those of the same original history, with the original viscosity and absolute-time force.

The directly read source is [native assembly §13, J1–J4, LF1451–1488](../SOURCES.md#S152), [J10, LF1579–1605](../SOURCES.md#S152), and [J13a–d, LF1656–1725](../SOURCES.md#S152). The source's pressure completion and all coordinates outside the finite selection needed by differentiation remain in force.

## 1. Full source equation and the precise common linearization

Write \(u=J_{0,0}\), \(V=J_{1,0}\), \(W=J_{2,0}\), \(N(a,b)=(a\cdot\nabla)b\), and \(B=N(u,u)\). The original equations are
\[
J_A'=\nu\Delta J_A-\mathcal B_A-\nabla\Pi_A+F_A,
\qquad \nabla\cdot J_A=0,
\tag{AC1}
\]
\[
\mathcal B_{n,\alpha}
=\sum_{r=0}^n\sum_{\beta\le\alpha}
\binom nr\binom\alpha\beta N(J_{r,\beta},J_{n-r,\alpha-\beta}).
\tag{AC2}
\]
Their normalized scalar pressure is the full original J4:
\[
\Pi_{n,\alpha}
=\sum_{r,\beta}\binom nr\binom\alpha\beta
R_iR_j(J_{r,\beta,i}J_{n-r,\alpha-\beta,j})
-(-\Delta)^{-1}\nabla\cdot F_{n,\alpha}.
\tag{AC3}
\]
The low-frequency force potential is retained under the original decay assumptions.

Define the common *full linearization*, before Leray projection,
\[
L_u h=N(u,h)+N(h,u),\qquad
H_A=\mathcal B_A-L_uJ_A.
\tag{AC4}
\]
Then \(J_A'-\nu\Delta J_A+L_uJ_A+\nabla\Pi_A=F_A-H_A\). This common-linearization remainder is distinct from the source's J13a remainder \(\mathcal L_A=\mathcal B_A-N(u,J_A)\): exactly \(\mathcal L_A=N(J_A,u)+H_A\). No source definition is changed by making this conversion explicit.

## 2. All nine groups and every repeated-index multiplicity

Use \(u_j=\partial_ju\), \(u_{jk}=\partial_j\partial_ku\), and the same convention for \(V,W\). There is one second-derivative column for each \(j\le k\). The following ordered-factor expansions apply also at \(j=k\):
\[
\begin{array}{ll}
H_{0,0}=-B,& H_{0,j}=0,\\[2pt]
H_{0,jk}=N(u_j,u_k)+N(u_k,u_j),&\\[3pt]
H_{1,0}=0,& H_{1,j}=N(V,u_j)+N(u_j,V),\\[2pt]
H_{1,jk}=N(V_j,u_k)+N(V_k,u_j)+N(V,u_{jk})
+N(u_{jk},V)+N(u_j,V_k)+N(u_k,V_j),&\\[3pt]
H_{2,0}=2N(V,V),&\\[2pt]
H_{2,j}=N(W,u_j)+N(u_j,W)+2N(V_j,V)+2N(V,V_j),&\\[2pt]
H_{2,jk}=N(W_j,u_k)+N(W_k,u_j)+N(W,u_{jk})
+N(u_{jk},W)+N(u_j,W_k)+N(u_k,W_j)&\\
\hspace{22mm}{}+2N(V_{jk},V)+2N(V_j,V_k)
+2N(V_k,V_j)+2N(V,V_{jk}).&
\end{array}
\tag{AC5}
\]
Thus \(H_{1,jk}\) has six ordered terms, and \(H_{2,jk}\) has ten, with the four temporal middle-allocation terms each carrying coefficient two. In particular,
\[
\begin{aligned}
H_{0,jj}&=2N(u_j,u_j),\\
H_{1,jj}&=2N(V_j,u_j)+2N(u_j,V_j)+N(V,u_{jj})+N(u_{jj},V),\\
H_{2,jj}&=2N(W_j,u_j)+2N(u_j,W_j)+N(W,u_{jj})+N(u_{jj},W)\\
&\quad+2N(V_{jj},V)+4N(V_j,V_j)+2N(V,V_{jj}).
\end{aligned}
\tag{AC6}
\]
An independent exact-integer enumeration of AC2, followed by subtraction of the two AC4 linearization terms, matched AC5 for all 30 columns, including all nine repeated-index second-derivative columns across the three temporal rows.

## 3. Full matrix identity, local pressure and the base cancellation

For the selected fields set
\[
C_{AB}=\langle J_A,J_B\rangle,
\quad K_{AB}=\sum_\ell\langle\partial_\ell J_A,\partial_\ell J_B\rangle,
\quad E_{AB}=\langle S J_A,J_B\rangle,
\quad S=\tfrac12(\nabla u+(\nabla u)^T).
\tag{AC7}
\]
Both \(C\) and \(K\) are positive semidefinite Gram matrices. \(E\) is a strain pairing and has no asserted sign. The common transport terms cancel only after full-space integration:
\(\langle N(u,J_A),J_B\rangle+\langle J_A,N(u,J_B)\rangle=0\).
Hence original J10 is exactly
\[
C'_{AB}+2\nu K_{AB}+2E_{AB}
=\langle F_A-H_A,J_B\rangle+\langle J_A,F_B-H_B\rangle.
\tag{AC8}
\]
At the local level the full pressure/source equation is
\[
\begin{aligned}
\partial_t(J_A\cdot J_B)
&+\nabla\cdot\{u(J_A\cdot J_B)-\nu\nabla(J_A\cdot J_B)
+\Pi_AJ_B+\Pi_BJ_A\}\\
&=-2\nu\sum_\ell\partial_\ell J_A\cdot\partial_\ell J_B
-2(SJ_A)\cdot J_B-H_A\cdot J_B-J_A\cdot H_B\\
&\quad+F_A\cdot J_B+J_A\cdot F_B.
\end{aligned}
\tag{AC9}
\]
This is original J13a with its complete remainder split, not an omission of the pressure flux. The full-space pressure pairings vanish by the divergence of both actual fields and the stipulated integration/decay domain. A bounded region retains the displayed pressure boundary flux.

For the base column \(0=(0,0)\), solenoidality of \(J_b\) gives
\[
2E_{0b}=\langle B,J_b\rangle+\langle u,N(J_b,u)\rangle
=\langle B,J_b\rangle.
\tag{AC10}
\]
Since \(H_0=-B\), the base remainder cancels this strain term exactly:
\[
C'_{0b}+2\nu K_{0b}
=\langle f,J_b\rangle+\langle u,F_b-H_b\rangle.
\tag{AC11}
\]
This cancellation removes no nonlinear derivative allocated to \(H_b\).

## 4. Three base-cross conversions with their full force terms

For \(b=(0,jk)\), integration by parts gives
\[
C_{0b}=-\langle u_j,u_k\rangle,
\quad K_{0b}=-\sum_\ell\langle\partial_\ell u_j,\partial_\ell u_k\rangle,
\quad\langle u,H_{0,jk}\rangle=-2E_{(0,j),(0,k)}.
\]
The force pair becomes \(-\langle f_j,u_k\rangle-\langle u_j,f_k\rangle\). AC11 therefore returns precisely
\[
(\langle u_j,u_k\rangle)'+2\nu K_{(0,j),(0,k)}+2E_{(0,j),(0,k)}
=\langle f_j,u_k\rangle+\langle u_j,f_k\rangle.
\tag{AC12}
\]
For \(b=(1,j)\), the corresponding identities are
\(C_{0b}=-\langle u_j,V\rangle\), \(K_{0b}=-K_{(0,j),(1,0)}\), and
\(\langle u,H_{1,j}\rangle=-2E_{(0,j),(1,0)}\). The exact result is
\[
(\langle u_j,V\rangle)'+2\nu K_{(0,j),(1,0)}+2E_{(0,j),(1,0)}
=\langle f_j,V\rangle+\langle u_j,f_t\rangle.
\tag{AC13}
\]
For \(b=(2,0)\), write \(e=\|u\|_2^2\), \(Y=\|\nabla u\|_2^2\). Then
\[
C_{0b}=\tfrac12e''-\|V\|_2^2,
\quad K_{0b}=\tfrac12Y''-\|\nabla V\|_2^2,
\quad\langle u,H_{2,0}\rangle=-2E_{(1,0),(1,0)}.
\tag{AC14}
\]
Twice differentiating the original kinetic row \(e'+2\nu Y=2\langle f,u\rangle\) and inserting it into AC11 gives
\[
(\|V\|_2^2)'+2\nu\|\nabla V\|_2^2+2E_{(1,0),(1,0)}
=2\langle f_t,V\rangle.
\tag{AC15}
\]
The product derivative includes all three contributions
\(\langle f_{tt},u\rangle+2\langle f_t,V\rangle+\langle f,W\rangle\); none is suppressed in the conversion.

## 5. A genuine positive temporal-block contraction

The following is a derived contraction of original AC8, not a separately printed source theorem. Select the temporal columns \((u,V,W)\), and let
\[
\mathsf Q=\begin{pmatrix}a&0&b\\0&2b&0\\b&0&c\end{pmatrix},
\qquad b>0,\quad a>0,\quad c>0,\quad ac\ge b^2.
\tag{AC16}
\]
These conditions give \(\mathsf Q\ge0\); the product inequality without the positive diagonal conditions would not suffice. The exact half-energy storage is
\[
\mathcal E_{\mathsf Q}=\tfrac12\operatorname{tr}(\mathsf Q C)
=\tfrac a2\|u\|_2^2+b\|V\|_2^2+b\langle u,W\rangle+\tfrac c2\|W\|_2^2.
\tag{AC17}
\]
The strain sum is \(2bE_{VV}+cE_{WW}+2bE_{uW}\), as \(E_{uu}=0\). The remainder sum is
\[-b\langle B,W\rangle+b\langle u,2N(V,V)\rangle+2c\langle W,N(V,V)\rangle.\]
Here \(2bE_{uW}=b\langle B,W\rangle\) and
\(b\langle u,2N(V,V)\rangle=-2bE_{VV}\). Both cancellations are exact, leaving
\[
\begin{aligned}
\mathcal E_{\mathsf Q}' +\nu\operatorname{tr}(\mathsf QK)
&+c\big[E_{WW}+2\langle W,N(V,V)\rangle\big]\\
&=a\langle f,u\rangle+2b\langle f_t,V\rangle+c\langle f_{tt},W\rangle
+b\langle f,W\rangle+b\langle f_{tt},u\rangle.
\end{aligned}
\tag{AC18}
\]
In particular \(a=c=b=1\) is a valid rank-two weight, with
\(\mathcal E_{\mathsf Q}=\tfrac12\|u+W\|_2^2+\|V\|_2^2\) and
\(\operatorname{tr}(\mathsf QK)=\|\nabla(u+W)\|_2^2+2\|\nabla V\|_2^2\).
Thus this positive contraction genuinely removes the \(V/V\) strain row. It retains the full top-row work \(E_{WW}+2\langle W,N(V,V)\rangle\), with no asserted sign or estimate.

For any symmetric \(C^1\) time-dependent matrix weight the derived family instead reads
\[
\begin{aligned}
\big(\tfrac12\operatorname{tr}(\mathsf Q C)\big)'
+\nu\operatorname{tr}(\mathsf QK)+\operatorname{tr}(\mathsf QE)
+\sum_{A,B}\mathsf Q_{AB}\langle H_A,J_B\rangle
=\sum_{A,B}\mathsf Q_{AB}\langle F_A,J_B\rangle
+\tfrac12\operatorname{tr}(\mathsf Q'C).
\end{aligned}
\tag{AC19}
\]
The \(\mathsf Q'\) term is necessary, including when the coefficients depend on actual stocks. For time-varying AC16, AC18 holds with that additional term. These are time-only weights: spatially varying weights would add transport, diffusion and pressure terms from AC9.

## 6. Extraction of the specified normalized response

This optional calculation is a derived use of the same actual columns and the prescribed projected force. Let \(g=\mathbb P f\), fix \(\delta>0\), and set
\[
\lambda=\frac{\nu Y}{e+\delta},\qquad w=V-g+\lambda u.
\tag{AC20}
\]
The projected base momentum equation and solenoidality give
\[
\langle u,w\rangle=-\delta\lambda,
\qquad\|w\|_2^2=\|V-g\|_2^2-\lambda^2(e+2\delta),
\tag{AC21}
\]
\[
w_t=W-g_t+\lambda V+\lambda'u,
\qquad\lambda'=\frac{\nu Y'}{e+\delta}
-\frac{\nu Y e'}{(e+\delta)^2},
\quad Y'=2\langle\nabla u,\nabla V\rangle,
\quad e'=-2\nu Y+2\langle u,g\rangle.
\tag{AC22}
\]
This is an extraction from the velocity columns plus the known force; \(w\) is not a force-free linear combination of the 30 velocity fields.

Let \(\phi_f=-(-\Delta)^{-1}\nabla\cdot f\), so \(\nabla\phi_f=f-g\). Before any pairing, the complete common-linearization equation is
\[
w_t-\nu\Delta w+L_uw+\nabla\pi_w
=\lambda g+\lambda B+\lambda'u+\nu\Delta g-L_ug,
\quad \pi_w=p_t+\lambda p-\partial_t\phi_f-\lambda\phi_f.
\tag{AC23}
\]
This effective response pressure comes from the original \(p,p_t\) and the known force potential; the original canonical pressure jet AC3 has not been replaced. In particular all \(g_t\), \(\Delta g\), transport/stretching of \(g\), and the time derivative of \(\lambda\) have been tracked. It belongs to the displayed full raw source, including its complementary gradient. To distinguish the projected completion exactly, define
\[
j_{\rm raw}=\nu\Delta g-L_ug,\quad j_g=\mathbb Pj_{\rm raw},
\quad q=-\mathbb PB,\quad
\pi_{uw}=R_iR_j(u_iw_j+w_iu_j).
\]
Then the equivalent projected-source, canonically completed row is
\[
w_t-\nu\Delta w+L_uw+\nabla\pi_{uw}
=j_g+\lambda(g-q)+\lambda'u,
\tag{AC23a}
\]
with the exact pressure-gradient relation
\[
\nabla(\pi_{uw}-\pi_w)=-(I-\mathbb P)(j_{\rm raw}+\lambda B).
\tag{AC23b}
\]
Thus \(\pi_w\) is not paired with an already projected right side. Pair the original raw presentation AC23 with solenoidal \(w\), use AC21, and retain every remaining source term:
\[
\tfrac12\big(\|w\|_2^2+\delta\lambda^2\big)'
+\nu\|\nabla w\|_2^2+\langle Sw,w\rangle
=\lambda\langle g,w\rangle+\lambda\langle B,w\rangle
+\nu\langle\Delta g,w\rangle-\langle L_ug,w\rangle.
\tag{AC24}
\]
No upper estimate or terminal extension has been inferred from this identity.

## 7. Original height, prolongation and corner identities in the read range

The remainder conversion does not alter original J11–J13d. For \(\mathcal T_A=F_A-\mathcal B_A-\nabla\Pi_A\), AC1 gives \(J_A'=\nu\Delta J_A+\mathcal T_A\). Induction, retaining every prescribed force derivative, yields exactly
\[
J_{n+k,\alpha}=\nu^k\Delta^kJ_{n,\alpha}
+\sum_{i=0}^{k-1}\nu^i\Delta^i\mathcal T_{n+k-1-i,\alpha}.
\tag{AC25}
\]
Multiplication of two such finite sums gives original J13d: the leading viscous pairing, the two single-source sums, and the double-source sum. Each double-source pairing contains all nine ordered force/nonlinear/pressure pairings with the signs from \(\mathcal T=F-\mathcal B-\nabla\Pi\). There is no omission of a pressure/source cross-pairing.

For the original heights \(E_{r,s}=\frac12\|\Lambda^sV_r\|_2^2\), put
\(\mathcal G_{r,s}=\langle\Lambda^sV_r,\Lambda^s\mathcal T_{r,0}\rangle\).
The elementary relation \(E_{r,s}'=-2\nu E_{r,s+1}+\mathcal G_{r,s}\), iterated \(k\) times, gives
\[
(-2\nu)^kE_{r,s+k}
=\partial_t^kE_{r,s}
-\sum_{j=0}^{k-1}(-2\nu)^j
\partial_t^{k-1-j}\mathcal G_{r,s+j}.
\tag{AC26}
\]
Leibniz differentiation gives
\(\partial_t^kE_{r,s}=\frac12\sum_{a=0}^k\binom ka
\langle\Lambda^sV_{r+a},\Lambda^sV_{r+k-a}\rangle\)
and
\(\partial_t^q\mathcal G_{r,s}
=\sum_{a=0}^q\binom qa
\langle\Lambda^sV_{r+a},\Lambda^s\mathcal T_{r+q-a,0}\rangle\).
These are precisely J11–12; taking \(k=1,2,3\) returns all three printed J13 rows with their stated signs. Integrated pressure factors vanish in these particular solenoidal pairings, while the original complete field pressure remains AC3.

Finally, differentiation of the local source pair \(F_A\cdot J_B+F_B\cdot J_A\) allocates the time and spatial derivatives with the two binomial coefficients in original J13b. Replacing \(F\) by \(\Pi\) gives the corresponding pressure-flux allocation, still under its exterior divergence. Both AC25 and this prolongation act on coordinates at the same time; they neither advance the fluid in time nor identify a finite closed subsystem.

## Verified mathematical scope

The full common-linearization remainders, repeated-index coefficients, 30-by-30 matrix evolution, local pressure flux, base cancellation and three base-cross conversions pass the independent calculation. The positive temporal-block contraction and specified response extraction are explicit new algebraic consequences of the printed source equations. Source J13c–d retains all force/nonlinear/pressure corner terms, including its final double sum; the present calculation does not turn the selected fields into a closed finite truncation.

The fresh [before snapshot](../COVERAGE.md#A0613) protects three originals and 611 earlier artifacts; [the parent-snapshot capture](../COVERAGE.md#A0612) also protects the parent baseline itself. Only new files inside this check directory were written.
