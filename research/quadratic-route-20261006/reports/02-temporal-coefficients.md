# Exact finite-depth temporal cancellation and its full boundary current

6 October 2026. This new derivation contracts the original complete temporal rows at an arbitrary fixed finite depth \(N\). It first combines the signed nonlinear terms by actual incompressibility, before estimating any norm. The resulting cancellation class and boundary formula are exact. They do not assume terminal membership or an upper payment for the remaining signed current.

## 1. Actual source, time domain and complete temporal rows

The primary source is [native assembly J1–J5, LF1450–1501](../SOURCES.md#src-native-assembly). Its [J10, LF1583–1605](../SOURCES.md#src-native-assembly) gives the actual Gram evolution; [J13a–d, LF1656–1725](../SOURCES.md#src-native-assembly) retains local pressure fluxes, source prolongation and complete two-factor corners. The source equations are acquired in those local originals; this note does not make a separate public-version identification.

Let \(L=-\Delta\), \(\mathcal N(a,b)=(a\cdot\nabla)b\). On the same classical history define
\[
 V_r=\partial_t^r u,\qquad F_r=\partial_t^r f,\qquad
 \Pi_r=\partial_t^r p,\qquad 0\le r\le N.
 \tag{FD1}
\]
The actual complete rows are
\[
\begin{aligned}
 V_{s,t}+\nu LV_s+B_s+\nabla\Pi_s&=F_s,\qquad
 \operatorname{div}V_s=0,\\
 B_s&=\sum_{a+b=s}\frac{s!}{a!b!}\mathcal N(V_a,V_b),\\
 \Pi_s&=\sum_{a+b=s}\frac{s!}{a!b!}R_iR_j(V_{a,i}V_{b,j})
                 -L^{-1}\operatorname{div}F_s.
\end{aligned}\tag{FD2}
\]
Both ordered nonlinear parents and the complete canonical force-pressure potential remain. The standing force decay supplies the scalar low-frequency potential. In particular \(B_1=\mathcal N(u,V_1)+\mathcal N(V_1,u)\) and \(B_2=\mathcal N(u,V_2)+2\mathcal N(V_1,V_1)+\mathcal N(V_2,u)\).

Every following integrated identity is on \([0,t]\), \(t<T_*\), or another specified classical strict prefix. The selected top row retains \(V_{N+1}\) in its equation, \(LV_N\) at its viscous boundary and \(F_N,\Pi_N,B_N\) in its source graph. Selection does not impose a truncated fluid equation.

## 2. Exact signed coefficient for an arbitrary symmetric weight

For any real symmetric \((N+1)\times(N+1)\) weight \(Q\), define the actual nonlinear contraction and trilinear fields
\[
 \mathcal W_Q=\sum_{r,s=0}^NQ_{rs}\langle V_r,B_s\rangle,\qquad
 T(r,a,b)=\langle V_r,\mathcal N(V_a,V_b)\rangle.
 \tag{FD3}
\]
Incompressibility of the complete advecting field gives the precise integration-by-parts relation
\[
 T(r,a,b)=-T(b,a,r),\qquad T(r,a,r)=0.
 \tag{FD4}
\]
It is a full-space relation. Local pressure/transport boundary fluxes are accounted for below.

Extend \(Q\) by zero whenever either matrix index lies outside \(0,\ldots,N\), calling the extension \(\widehat Q\). Then
\[
\begin{aligned}
 \mathcal W_Q
 &=\sum_{\substack{0\le r,a,b\le N\\a+b\le N}}
       \binom{a+b}{a}Q_{r,a+b}T(r,a,b)\\
 &=\frac12\sum_{r,a,b=0}^N
 \left[\binom{a+b}{a}\widehat Q_{r,a+b}
       -\binom{a+r}{a}\widehat Q_{b,a+r}\right]T(r,a,b).
\end{aligned}\tag{FD5}
\]
The second equality is exact antisymmetrization in the first and third indices. It includes pairs for which only one of the two source-column sums belongs to the finite matrix. Neither such term is silently treated as an interior cancellation.

Set \(H_{rs}=r!s!Q_{rs}\), with the same zero extension. The half-sum coefficient has the especially simple form
\[
 \binom{a+b}{a}\widehat Q_{r,a+b}
       -\binom{a+r}{a}\widehat Q_{b,a+r}
 =\frac{\widehat H_{r,a+b}-\widehat H_{b,a+r}}{r!a!b!}.
 \tag{FD6}
\]
No pressure, forcing or scalar derivative sign has been used to obtain this coefficient.

## 3. Necessary and sufficient matched-interior cancellation class

Here “matched-interior cancellation” means that every coefficient in FD5 vanishes whenever both \(a+b\le N\) and \(a+r\le N\). It is a statement about the complete paired-triple coefficients, using FD4. It does not assert that these are all possible identities on every special Navier–Stokes history.

For symmetric \(Q\), this coefficient condition is equivalent to
\[
 H_{rs}=m_{r+s},\qquad
 Q_{rs}=\frac{m_{r+s}}{r!s!},\qquad
 0\le r,s\le N,
 \tag{FD7}
\]
for arbitrary real parameters \(m_0,\ldots,m_{2N}\).

Sufficiency follows because the two matched entries of FD6 have the same total index \(r+a+b\). For necessity fix a total \(d\in[0,2N]\); its admissible matrix row indices are
\[
 \ell_d=\max(0,d-N)\le r\le \min(N,d).
\]
For each such \(r\), choose \(b=\ell_d\), \(a=d-r-\ell_d\). Both source columns belong to the matrix. FD6 gives
\[
 H_{r,d-r}=H_{\ell_d,d-\ell_d}.
 \tag{FD8}
\]
If \(r=b\) this is tautological; otherwise it is exactly the prescribed matched coefficient condition. Thus the entire antidiagonal has one value. This proves necessity for every \(d\), including the single-entry antidiagonal at \(d=2N\).

The space has dimension \(2N+1\). Among the \((N+1)(N+2)/2\) independent symmetric matrix entries, its codimension is \(N(N-1)/2\). At \(N=2\) its only independent relation is \(Q_{11}=2Q_{02}\), precisely the previously acquired lower temporal strain cancellation.

## 4. Exact finite boundary remainder, without adding a row

For FD7 the whole contraction becomes
\[
\begin{aligned}
 \mathcal W_Q
 &=\frac12\sum_{\substack{0\le r,a,b\le N\\r+a+b\le2N}}
 \frac{m_{r+a+b}}{r!a!b!}
 \bigl(\mathbf1_{a+b\le N}-\mathbf1_{a+r\le N}\bigr)T(r,a,b)\\
 &=\sum_{\substack{0\le r,a,b\le N\\a+b\le N<a+r}}
       \frac{m_{r+a+b}}{r!a!b!}T(r,a,b).
\end{aligned}\tag{FD9}
\]
The first sum restricts total degree to \(2N\) because every nonzero indicator difference has that bound; moments beyond \(m_{2N}\) are never needed. The last equality uses FD4 on the opposite half of the antisymmetric support. All actual velocity indices still lie in \(0,\ldots,N\). What fails to belong to the matrix is the reciprocal source-column index \(a+r>N\); it is not a missing actual velocity field relabeled as a new row.

Here \(r>b\), \(a\ge1\), and \(N+1\le r+a+b\le2N\). Equivalently the complete boundary can be written with no indicator functions as
\[
 \mathcal W_Q=
 \sum_{j=1}^Nm_{N+j}
 \sum_{r=j}^N\sum_{b=0}^{j-1}
 \frac{T(r,N+j-r-b,b)}
 {r!(N+j-r-b)!b!}.
 \tag{FD10}
\]
At total \(N+j\) there are exactly \(j(N-j+1)\) displayed ordered boundary terms, hence \(\binom{N+2}{3}\) terms in all. Each is the original complete signed nonlinear parent with its exact factorial coefficient.

The highest total \(2N\), for \(N\ge1\), is
\[
 \mathcal W_Q^{[2N]}
 =Q_{NN}\sum_{a=1}^N\binom Na T(N,a,N-a)
 =Q_{NN}\langle V_N,B_N\rangle.
 \tag{FD11}
\]
Write \(S(u,x,x)=\langle x,\mathcal N(x,u)\rangle=\int x_i x_j\partial_ju_i\,dx\). The \(a=0\) term vanishes by transport skewness. The \(a=N\) term is the actual highest-row strain \(S(u,V_N,V_N)\); the intermediate terms are all its lower-parent quadratic curvature allocations. The operation has not paid any of them.

For example \(N=2\) gives
\[
\begin{aligned}
 \mathcal W_Q={}&\frac{m_3}{2}\{T(2,1,0)+T(1,2,0)\}
       +\frac{m_4}{2}T(2,1,1)+\frac{m_4}{4}T(2,2,0)\\
 ={}&2Q_{12}\langle V_1,DV_2\rangle
       +Q_{22}\{S(u,V_2,V_2)+2\langle V_2,\mathcal N(V_1,V_1)\rangle\},
 \qquad D=\operatorname{sym}\nabla u.
\end{aligned}\tag{FD12}
\]
This reproduces the full three-row result, including its highest curvature, rather than retaining only the canceled \(S(u,V_1,V_1)\) coefficient. For \(N=1\), the boundary is \(Q_{11}S(u,V_1,V_1)\). For \(N=0\), the only nonlinear term is kinetic transport and is zero.

At \(N=3\) the remaining three degree layers are explicitly
\[
\begin{aligned}
 \mathcal W_Q^{[4]}&=\frac{m_4}{3}\langle V_1,DV_3\rangle
                       +\frac{m_4}{4}S(u,V_2,V_2),\\
 \mathcal W_Q^{[5]}&=\frac{m_5}{6}\langle V_2,DV_3\rangle
              +\frac{m_5}{4}T(2,2,1)+\frac{m_5}{6}T(3,1,1),\\
 \mathcal W_Q^{[6]}&=\frac{m_6}{36}
 \{S(u,V_3,V_3)+3T(3,1,2)+3T(3,2,1)\}.
\end{aligned}\tag{FD12a}
\]
Thus the complete finite boundary is not invariably just the literal row \(N\): it includes unmatched lower-row pairings such as the degree-four \(V_2\) strain at \(N=3\). FD9/10 keeps all of them.

## 5. Positivity, exact dimension and the highest-row limitation

Let \(D_N=\operatorname{diag}(0!,1!,\ldots,N!)\). The interior-canceling weight satisfies
\[
 H=(m_{r+s})_{r,s=0}^N=D_NQD_N,\qquad
 Q=D_N^{-1}HD_N^{-1}.
 \tag{FD13}
\]
Therefore \(Q\succeq0\) if and only if this finite Hankel matrix \(H\succeq0\). Positivity is an additional restriction on the \(2N+1\) free coefficients; it does not make their boundary contribution vanish or give it a sign.

One concrete positive construction is a finite positive measure \(\mu\) with finite moments through \(2N\):
\[
 m_d=\int x^d\,d\mu(x),\qquad
 Q_{rs}=\int\frac{x^r}{r!}\frac{x^s}{s!}\,d\mu(x).
 \tag{FD14}
\]
Its energy is the positive finite polynomial-jet stock
\[
 E_Q=\frac12\int\left\|\sum_{r=0}^N\frac{x^r}{r!}V_r\right\|_2^2d\mu(x).
 \tag{FD15}
\]
Choosing \(N+1\) distinct real support points with positive masses makes \(Q\) strictly positive definite by the Vandermonde determinant. These are examples; finite Hankel positivity alone is not being asserted to supply every truncated moment representation. FD15 is a finite polynomial, not an assumed Taylor series converging at another physical time.

Within this matched-cancellation class, if \(Q\succeq0\) and \(Q_{NN}=0\), the Gram zero-row principle forces \(H_{Nr}=0\) for every \(r\). Thus \(m_N,\ldots,m_{2N}=0\). Descending through rows \(N-1,\ldots,1\), their diagonal entries \(m_{2k}\) vanish once \(m_{k+1},\ldots,m_{2N}\) do; their zero rows then imply \(m_k=0\). Consequently
\[
 Q\succeq0,\quad Q_{NN}=0
 \quad\Longrightarrow\quad
 m_1=\cdots=m_{2N}=0,\quad Q=m_0e_0e_0^T,\quad m_0\ge0.
 \tag{FD16}
\]
Hence the only PSD member canceling all formal boundary coefficients is the pure kinetic weight. Every nontrivial higher-row PSD member has \(Q_{NN}>0\) and retains FD11. This is a precise finite-family algebraic result, not an impossibility assertion about other vector, spatial or special-history identities.

There is no depth-uniform coercivity implied here. For each strictly positive fixed matrix, \(E_Q\ge\frac12\lambda_{\min}(Q)\sum_{r=0}^N\|V_r\|_2^2\); its smallest eigenvalue, force weights, initial jets and boundary-current coefficients depend on \(N\) and the chosen moments. No uniform bound as \(N\to\infty\) or \(t\uparrow T_*\) follows from FD13.

## 6. Complete force, pressure flux and current/initial stocks

For a constant symmetric \(Q\), put
\[
 E_Q=\frac12\sum_{r,s=0}^NQ_{rs}\langle V_r,V_s\rangle,\qquad
 \mathcal D_Q=\sum_{r,s=0}^NQ_{rs}\langle\nabla V_r,\nabla V_s\rangle,\qquad
 \mathcal F_Q=\sum_{r,s=0}^NQ_{rs}\langle V_r,F_s\rangle.
 \tag{FD17}
\]
The literal complete rows give
\[
\begin{aligned}
 E_Q'+\nu\mathcal D_Q&=-\mathcal W_Q+\mathcal F_Q,\\
 E_Q(t)+\nu\int_0^t\mathcal D_Q\,ds
 &=E_Q(0)-\int_0^t\mathcal W_Q\,ds+\int_0^t\mathcal F_Q\,ds.
\end{aligned}\tag{FD18}
\]
Every \(F_s\), \(s\le N\), remains in the contraction. The unforced case sets all of them to zero. The initial rows \(V_0(0),\ldots,V_N(0)\) are recursively generated from \(u_0\) and \(F_0(0),\ldots,F_{N-1}(0)\) with the complete nonlinear pressure projection; the force/pressure graph of the top equation additionally retains \(F_N\). The unknown current \(E_Q(t)\) has not been replaced by \(E_Q(0)\).

For \(Q\succeq0\) the full prescribed force insertion has the finite-dimensional estimate
\[
 |\mathcal F_Q|\le\sqrt{2E_Q}\,
   \left(\sum_{r,s=0}^NQ_{rs}\langle F_r,F_s\rangle\right)^{1/2}.
 \tag{FD19}
\]
It follows by diagonalizing the same positive \(Q\) in both Hilbert-space lists. Prescribed-force smoothness on each admitted finite horizon pays that weighted force family at fixed \(N,Q\). It is not a payment of FD9's intrinsic signed nonlinear current.

Before spatial integration write \(e_Q(x)=\frac12\sum Q_{rs}V_r(x)\cdot V_s(x)\), \(d_Q(x)=\sum Q_{rs}\nabla V_r:\nabla V_s\), \(\ell_s=B_s-\mathcal N(u,V_s)\). Source J13a gives the full local identity
\[
 \partial_te_Q+
 \operatorname{div}\left(u e_Q-\nu\nabla e_Q+
                         \sum_{r,s=0}^NQ_{rs}\Pi_sV_r\right)
 +\nu d_Q
 =-\sum_{r,s=0}^NQ_{rs}V_r\cdot\ell_s
                    +\sum_{r,s=0}^NQ_{rs}V_r\cdot F_s.
 \tag{FD20}
\]
This retains the canonical pressure flux before its full-space solenoidal cancellation. A spatial selector keeps its pressure, transport and diffusion faces. FD4/9 is therefore not used to delete a selected-region flux.

If the Hankel parameters are \(C^1\) in time while preserving FD7 pointwise, the same interior cancellation remains, but the exact balance adds
\[
 E_{Q(t)}'+\nu\mathcal D_{Q(t)}
 =-\mathcal W_{Q(t)}+\mathcal F_{Q(t)}
     +\frac12\sum_{r,s=0}^NQ'_{rs}(t)\langle V_r,V_s\rangle.
 \tag{FD21}
\]
Its signed moving-weight action is not paid merely by \(Q(t)\succeq0\). The source selection and Gram equations do not prescribe these moment weights; FD7–21 are new exact contractions of their original full fields.

## 7. Integer coefficient validation and bounded result

The new [exact coefficient check](../checks/temporal/validate.py) independently expands every raw binomial term, reduces it by the precise antisymmetry FD4 and compares it with the zero-extended half-sum. It then checks the factorial-Hankel remainder and highest-total row for \(N=0,\ldots,6\), using exact rational arithmetic and separate symbolic matrix or moment coefficients. It also computes the rank of every matched-interior condition on a symmetric matrix and checks codimension \(N(N-1)/2\). No scalar trajectory, simulated flow or model solution is used.

The validation results are recorded in [coefficient-check.json](../checks/temporal/coefficient-check.json). They verify the finite algebraic allocation; FD8 proves the cancellation class for arbitrary \(N\).

The concrete gain is simultaneous cancellation of every matched interior ordered triple by the positive choices FD13–15. The full finite remnant is exactly FD9/10, supported on unmatched source columns and including the complete highest current FD11. Prescribed forces, pressure fluxes, source indices, moving-weight work and both initial/current stocks remain as displayed. No independent upper action for this boundary current has been derived from the factorial cancellation alone. In particular this computation supplies no upper bound for the regularized joint strain primitive \(I_\delta(t)=-\int_0^t S(u,w,w)\,ds\), \(w=u_t-\mathbb Pf+\lambda u\), \(\lambda=\nu\|\nabla u\|_2^2/(\|u\|_2^2+\delta)\), with \(\delta>0\) fixed. No claim is made that the finite-matrix calculation exhausts the source's spatial/fractional relationships or other analytic estimates.

Every terminal extension of an integral here requires its actual convergence, rather than pointwise compatibility or finite-depth positivity alone.
