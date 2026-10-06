# Exact temporal Hankel contraction and its finite boundary

This check concerns the actual temporal rows of the recovered forced Navier–Stokes history. It verifies the finite algebra and the stated positive-form consequences. Every differential identity below is first asserted on a strict smooth interval [a,b] with b<T*. Passing to a terminal interval, an infinite row sum, or a time derivative of an infinite sum requires the corresponding convergence or membership statement.

The source is [forced-native-assembly-20260914.md](../SOURCES.md#src-native-assembly), J1–J4, lines 1453–1485. Setting the spatial multi-index to zero gives exactly the rows used here.

## Actual rows and complete finite law

Write V_n=∂t^n u, f_n=∂t^n f, p_n=∂t^n p, A=−Δ and N(v,w)=(v·∇)w. The actual equation is

\[
 V_{n+1}+\nu A V_n+B_n+\nabla p_n=f_n,
 \qquad
 B_n=\sum_{r=0}^n\binom nr N(V_r,V_{n-r}),
 \qquad \operatorname{div}V_n=0.
 \tag{HB1}
\]

Its complete pressure is

\[
 \nabla p_n=(I-\mathbb P)(f_n-B_n),\qquad
 p_n=\sum_{r=0}^n\binom nr R_iR_j(V_{r,i}V_{n-r,j})
       -(-\Delta)^{-1}\operatorname{div}f_n.
 \tag{HB2}
\]

Let Q_ij(t)=m_{i+j}(t)/(i!j!), for 0≤i,j≤N. Constant moments are included. For the differentiated law assume the finitely many moments are continuously differentiable; absolute continuity also suffices for its integrated version. Define

\[
 E_N=\frac12\sum_{i,j\le N}Q_{ij}\langle V_i,V_j\rangle,
 \quad D_N=\sum_{i,j\le N}Q_{ij}\langle\nabla V_i,\nabla V_j\rangle,
 \quad S_N=\sum_{i,j\le N}Q_{ij}\langle V_i,B_j\rangle.
\]

The exact finite energy identity, before any estimate, is

\[
 E_N'+\nu D_N
 =-S_N+\sum_{i,j\le N}Q_{ij}\langle V_i,f_j\rangle
   +\frac12\sum_{i,j\le N}\frac{m'_{i+j}}{i!j!}\langle V_i,V_j\rangle.
 \tag{HB3}
\]

Pressure work vanishes here because each global receiver is solenoidal. Locally it is the full flux div(ΣQ_ij p_j V_i). For example, with ρ_N=½ΣQ_ij V_i·V_j and

\[
 C_j=B_j-N(u,V_j)=\sum_{r=1}^j\binom jr N(V_r,V_{j-r}),
\]

the local identity retains it explicitly:

\[
 \begin{split}
 \partial_t\rho_N+\nu\sum Q_{ij}\nabla V_i:\nabla V_j
 +\operatorname{div}\!\left(u\rho_N-\nu\nabla\rho_N+\sum Q_{ij}p_jV_i\right)
 ={}&\sum Q_{ij}V_i\cdot f_j-\sum Q_{ij}V_i\cdot C_j\\
 &+\frac12\sum Q'_{ij}V_i\cdot V_j.
 \end{split}
 \tag{HB4}
\]

If Q_N is positive semidefinite, E_N and D_N are nonnegative. Positivity supplies no sign for S_N or the moment-derivative term.

## All total-degree cancellations and the remaining finite boundary

Use the actual integrated trilinear

\[
 T(i,r,s)=\langle V_i,N(V_r,V_s)\rangle.
\]

The only transport identity needed is incompressibility and integration by parts:

\[
 T(i,r,s)=-T(s,r,i).
 \tag{HB5}
\]

Expanding every ordered allocation in HB1, including both endpoints, gives

\[
 S_N=\sum_{\substack{0\le i\le N\\r,s\ge0,\ r+s\le N}}
          \frac{m_{i+r+s}}{i!r!s!}T(i,r,s).
 \tag{HB6}
\]

At fixed total degree d=i+r+s, the original cutoff indicator is

\[
 \mathbf1_{\{i\le N,\ r+s\le N\}}
 =\mathbf1_{\{d-N\le i\le N\}}
\]

on nonnegative triples. The partner obtained by swapping receiver i and final slot s has indicator 1_{d−N≤s≤N}. Thus an equivalent symmetrized coefficient is

\[
 \frac12\frac{m_d}{i!r!s!}
 \left(\mathbf1_{\{i\le N,\ r+s\le N\}}
       -\mathbf1_{\{s\le N,\ r+i\le N\}}\right).
 \tag{HB7}
\]

For 0≤d≤N, every nonnegative triple is present with its swapped partner, so the entire degree-d sum is zero. For N<d≤2N, put L=d−N. All original terms with s≥L still cancel in pairs. The terms with s<L have no partner in the original cutoff. Consequently the exact, one-sided boundary formula is

\[
 \boxed{
 S_N=\sum_{d=N+1}^{2N}m_d
       \sum_{i=d-N}^{N}\sum_{s=0}^{d-N-1}
       \frac{\langle V_i,N(V_{d-i-s},V_s)\rangle}
            {i!(d-i-s)!s!}.}
 \tag{HB8}
\]

For these ranges d−i≥d−N>s, so the middle index r=d−i−s is positive. Thus no transport by V_0 remains in the boundary. There is no omitted factor ½: HB8 lists only the original, unpaired side of HB7. No positivity, moment representation, force restriction or infinite limiting argument is used in HB5–HB8.

At N=0 the boundary is empty. At N=1 it is m_2 S(u,V_1,V_1), where S(u,x,y)=∫x·Sym(∇u)y. At N=2 it is

\[
 S_2=m_3S(u,V_1,V_2)
       +\frac{m_4}{4}\left[S(u,V_2,V_2)
                           +2\langle V_2,N(V_1,V_1)\rangle\right].
 \tag{HB9}
\]

This matches Q_11=2Q_02, Q_12=m_3/2 and Q_22=m_4/4. It cancels the complete first-temporal strain but retains the complete highest-row current.

The cancellation is global. Pointwise the paired transport is instead a flux:

\[
 V_i\cdot N(V_r,V_s)+V_s\cdot N(V_r,V_i)
 =\operatorname{div}\big(V_r(V_i\cdot V_s)\big).
 \tag{HB10}
\]

Hence a local claim must retain these fluxes as well as HB4's pressure flux.

## Complete finite pressure square

The finite differentiated square follows from HB1 and the orthogonal Leray decomposition in HB2. With the same Q_N it is

\[
 \begin{split}
 &\sum Q_{ij}\langle V_{i+1},V_{j+1}\rangle
  +\nu^2\sum Q_{ij}\langle AV_i,AV_j\rangle
  +\nu D_N'-\nu\sum Q'_{ij}\langle\nabla V_i,\nabla V_j\rangle\\
 &\hspace{30mm}+\sum Q_{ij}\langle\nabla p_i,\nabla p_j\rangle
   =\sum Q_{ij}\langle f_i-B_i,f_j-B_j\rangle.
 \end{split}
 \tag{HB11}
\]

All source–source, source–nonlinearity, nonlinearity–source and nonlinearity–nonlinearity pairings are retained on the right. The pressure Gram is positive for a positive Q_N; it has not been removed from the square. HB11 needs actual rows through V_{N+1}, their displayed spatial derivatives and pressure derivatives on the interval where it is applied.

## Positive Hankel form without a moment measure

Suppose H_ij=m_{i+j}, for all i,j≥0, and every finite prefix is positive semidefinite. This defines a positive form on finite sequences; quotienting its null space and completing gives a Hilbert space with vectors e_n satisfying ⟨e_i,e_j⟩=m_{i+j}. This construction assumes no measure representation.

Write a_n=m_{2n}. The 2×2 principal minor on indices n−1,n+1 gives

\[
 a_n^2\le a_{n-1}a_{n+1}\qquad(n\ge1).
 \tag{HB12}
\]

If m_0,m_2>0, induction gives every a_n>0. The ratios a_n/a_{n−1} are nondecreasing, so

\[
 \boxed{m_{2n}\ge m_0\left(\frac{m_2}{m_0}\right)^n.}
 \tag{HB13}
\]

If m_2=0, the zero diagonal entry H_11 forces its entire row to be zero, since |H_1j|²≤H_11H_jj=0. Thus m_k=0 for every k≥1 and e_n=0 in the quotient for every n≥1. This degenerate form controls only V_0. If m_0=0, the same argument on row zero makes the entire form zero.

For fixed moments, set

\[
 Z_N=\sum_{n=0}^N\frac{V_n}{n!}\otimes e_n
 \quad\hbox{in }L^2_x\widehat\otimes\mathcal H,
 \qquad \|Z_N\|^2=2E_N.
\]

The adjacent-prefix difference is a single tensor, irrespective of correlations between the e_n:

\[
 \|Z_n-Z_{n-1}\|
 =\frac{\sqrt{m_{2n}}}{n!}\|V_n\|_2.
 \tag{HB14}
\]

If all adjacent differences have norm at most A, then with R=√(m_2/m_0)>0,

\[
 \|V_n\|_2\le\frac{A}{\sqrt{m_0}}n!R^{-n}.
 \tag{HB15}
\]

A uniform prefix bound ||Z_N||≤C supplies A=2C. If only E_N≤C_E is given, this yields A=2√(2C_E). One cannot replace this subtraction by an assertion that a correlated individual column is bounded by its full sum.

HB15 is pointwise in time if the prefix bound is pointwise. Uniform derivative growth on an interval requires a uniform prefix bound there and a uniform positive lower bound for m_0 and R if the moments vary in time. Derivative bounds at one time alone do not identify the Taylor series with the actual history. With uniform bounds for all derivatives throughout a neighborhood, the usual integral Taylor remainder supplies that further identification for |τ|<R.

## Ordered convergence versus nonlinear summation

If Z_N is Cauchy, its ordered Hilbert series converges to Z. Continuity gives

\[
 \|Z_N\|^2\longrightarrow\|Z\|^2,
 \qquad \langle Z_N,Z_M\rangle\longrightarrow\|Z\|^2
 \quad(N,M\to\infty\hbox{ independently}).
 \tag{HB16}
\]

Thus the corresponding rectangular Gram limits and natural-order iterated limits are justified. Cauchy also gives ||Z_n−Z_{n−1}||→0, hence ||V_n||_2/(n!R^{−n})→0 by HB13–HB14. Uniform boundedness alone already supplies HB15; it does not supply Cauchy convergence.

Cauchy convergence does not by itself give Σ||V_n||_2√m_{2n}/n!<∞, unrestricted rearrangement, passage through an unbounded spatial/time shift, or convergence of the nonlinear trilinear sum. A sufficient absolute Gram condition is

\[
 \sum_{n\ge0}\frac{\sqrt{m_{2n}}}{n!}\|V_n\|_2<\infty,
\]

because |m_{i+j}|≤√(m_{2i}m_{2j}). An explicit sufficient condition for total-degree/Fubini cancellation of the nonlinear series is

\[
 \sum_{i,r,s\ge0}\frac{|m_{i+r+s}|}{i!r!s!}
       |\langle V_i,N(V_r,V_s)\rangle|<\infty,
 \tag{HB17}
\]

or its integrated absolute analogue on the actual time interval. Under HB17, each complete total degree cancels by HB5, and the nonlinear infinite sum is zero. A different valid route would prove directly that the explicit boundary HB8 tends to zero in the required sense. Merely observing that every fixed total degree is eventually interior does not establish that boundary limit.

Likewise, a limit of HB3 requires convergence of its force pairing, gradient action and moment-derivative term, along with sufficient time regularity for the stock. A limit of HB11 additionally needs the shifted, Laplacian and pressure bundles in their displayed norms. Smooth prescribed forcing gives every finite f_j on a strict prefix; it does not establish an infinite weighted force bundle without an order estimate. No such convergence is assumed here.

## A verified positive class with uniform low-row coercivity

The preceding limiting requirements do not imply that all-depth positivity necessarily loses coercivity of V_1. For an arbitrary finite prefix H_N define, without an inverse,

\[
 \kappa_{1,N}=\inf\{z^\top H_Nz:z_1=1\}\qquad(N\ge1).
 \tag{HB18}
\]

These nonnegative quantities decrease as N increases. Scalar completion of this variational inequality, then application to each physical component and integration, gives

\[
 \|Z_N\|^2\ge\kappa_{1,N}\|V_1\|_2^2.
\]

This definition works for singular prefixes. Only for a positive definite prefix may it be rewritten as κ_{1,N}=1/(H_N^{-1})_{11}.

There is an explicit infinite positive form for which κ_{1,N} has a strictly positive limit. Fix q>1 and take

\[
 m_{2n}=q^{n^2},\qquad m_{2n+1}=0.
 \tag{HB19}
\]

To verify positivity for this particular class, let X be centered Gaussian with variance (log q)/2 and let a symmetric independent sign multiply exp X. Direct Gaussian integration gives its even moments q^{n²} and its odd moments zero. Thus every finite Gram is positive, and strictly positive for nonzero polynomials since this law has infinite support. This is an explicit verification for HB19, not a representation assumption for the general algebra.

Even and odd basis vectors are orthogonal. In the odd block, indexed by e_{2j+1}, 0≤j≤K,

\[
 H^{\rm odd}_{jk}=q^{(j+k+1)^2}
       =qD_jV_{jk}D_k,\qquad
 D_j=q^{j^2+2j},\quad V_{jk}=t^{jk},\quad t=q^2.
\]

The Vandermonde matrix V has nodes 1,t,…,t^K. The Lagrange polynomial taking value one at node 1 and zero at the other nodes is

\[
 \ell_0(x)=\prod_{k=1}^K\frac{x-t^k}{1-t^k}.
\]

Its constant coefficient is the inverse entry

\[
 (V^{-1})_{00}=\prod_{k=1}^K(1-t^{-k})^{-1}.
\]

Since D_0=1, the variational coefficient of e_1 is therefore

\[
 \kappa_{1,N}=q\prod_{k=1}^{\lfloor(N-1)/2\rfloor}(1-q^{-2k})
       \longrightarrow qP>0,
 \quad P=\prod_{k=1}^{\infty}(1-q^{-2k}).
 \tag{HB20}
\]

The product is positive because Σq^{−2k}<∞. The even block, indexed by e_{2j}, has the same Vandermonde matrix with D_j=q^{j²} and no prefactor q. Consequently its coefficient of e_0 is

\[
 \kappa_{0,N}=\prod_{k=1}^{\lfloor N/2\rfloor}(1-q^{-2k})\longrightarrow P.
\]

For N≥1 the two independent parity blocks yield simultaneous bounds

\[
 \boxed{\|Z_N\|^2\ge P\|u\|_2^2+qP\|u_t\|_2^2.}
 \tag{HB21}
\]

Thus uniform low-row coercivity is feasible in the positive Hankel class. A bound on the actual prefix stocks, their forcing work, or the nonlinear boundary is a further statement about the actual history. For this class, any uniform ||Z_N||≤C implies the stronger adjacent-prefix consequence

\[
 \|V_n\|_2\le2C\,n!q^{-n^2/2}\qquad(n\ge1).
 \tag{HB22}
\]

Finally, finite Hankel positivity alone need not give a representing measure or an all-depth extension. For m_0,…,m_4=(1,1,1,1,2),

\[
 z^\top H_2z=(z_0+z_1+z_2)^2+z_2^2\ge0.
\]

A representing positive measure would satisfy ∫(x−1)²=0 and hence be concentrated at 1, forcing m_4=1, in contradiction with m_4=2. This is a finite form only; it cannot be extended to an infinite positive Hankel form with those same entries. All finite algebra above uses the Gram form directly.

## Verified coverage

HB1–HB11 verify the actual full finite temporal contraction, its total-degree cancellation, its exact remaining boundary, complete force terms, time-weight terms and pressure square. HB12–HB16 verify the positive-form growth and prefix implications without a moment measure. HB17 distinguishes a sufficient nonlinear summation hypothesis from Cauchy convergence of the energy bundle. HB18–HB22 verify an explicit all-depth positive class with uniform low-row coercivity and its stronger derivative-order consequence. These statements supply the finite algebra, a feasible coercive weight class and precise limiting requirements; they do not assert an unverified terminal or all-depth membership.
