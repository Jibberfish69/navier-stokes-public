# Euler shared strain clock: diagonal scale–shape reduction

## Target
Starting from the diagonal mixed-jet participation law
\[
V_j=\partial_t^j u,\qquad V_j\in H^{L-j},\qquad 0\le j\le n,\qquad L=M+n,
\]
with one common Euler spatial scaling weight, derive the strongest whole-terminal estimate for
\[
A(T)=\int_0^T\|\nabla u(t)\|_\infty\,dt
\]
using the same physical Euler history, pressure-complete dynamics, and the full two-parameter Euler scaling.

## 1. Two scaling coordinates: conserved amplitude and spatial scale
Let
\[
N:=\|u_0\|_2=\|u(t)\|_2,
\qquad
X_L(t):=\|\Lambda^L u(t)\|_2,
\qquad
K_L(t):=\left(\frac{X_L(t)}{N}\right)^{1/L}.
\]
Under
\[
u^{a,\lambda}(x,t)=a\,u(\lambda x,a\lambda t),
\]
one has
\[
N^{a,\lambda}=a\lambda^{-3/2}N,
\qquad
X_L^{a,\lambda}=a\lambda^{L-3/2}X_L,
\qquad
K_L^{a,\lambda}=\lambda K_L.
\]
Thus the two Euler scaling degrees separate exactly into amplitude \(N\) and spatial inverse length \(K_L\).

## 2. Scale-sharp diagonal mixed-jet estimate
For
\[
N_{j,L}(t):=\|\Lambda^{L-j}V_j(t)\|_2,
\]
the common diagonal scaling law is
\[
N_{j,L}^{a,\lambda}=a^{j+1}\lambda^{L-3/2}N_{j,L}.
\]
Hence the dimensionless diagonal ratios are
\[
\boxed{
D_{j,L}(t):=
\frac{N_{j,L}(t)}{N^{j+1}K_L(t)^{L+\frac32j}}.
}
\]
They are invariant under the full two-parameter Euler scaling.

At each smooth time scale the field by
\[
\lambda=K_L^{-1},\qquad a=N^{-1}K_L^{-3/2}.
\]
The scaled field \(U\) obeys
\[
\|U\|_2=1,\qquad \|\Lambda^L U\|_2=1.
\]
The differentiated Euler recursion
\[
V_{j+1}=-\mathbb P\sum_{k=0}^j\binom jk(V_k\cdot\nabla)V_{j-k}
\]
and the diagonal allocation \(L-j\ge M>5/2\) yield by Sobolev algebra/product estimates
\[
\boxed{D_{j,L}(t)\le C_{j,L}}
\]
for every finite \(j\le n\). Scaling back gives the sharp finite diagonal estimate
\[
\boxed{
\|\Lambda^{L-j}V_j(t)\|_2
\le C_{j,L}N^{j+1}K_L(t)^{L+\frac32j}.
}
\tag{D1}
\]
The gradient estimate is the \(L^2\)–\(\dot H^L\) Gagliardo–Nirenberg inequality written in the same coordinates:
\[
\boxed{
\|\nabla u(t)\|_\infty
\le C_L N K_L(t)^{5/2}.
}
\tag{D2}
\]

## 3. Exact normalized time and shared clock
Define
\[
\frac{d\tau_L}{dt}=N K_L^{5/2}.
\]
With
\[
U(y,\tau_L)=N^{-1}K_L^{-3/2}u(K_L^{-1}y,t),
\qquad
D=y\cdot\nabla+\frac32,
\qquad
b_L=(\log K_L)_{\tau_L},
\]
the normalized Euler equation is
\[
\boxed{
U_{\tau_L}+\mathbb P(U\cdot\nabla U)+b_LDU=0,
\qquad
\|U\|_2=\|\Lambda^L U\|_2=1.
}
\tag{D3}
\]
The fixed \(\dot H^L\) constraint gives
\[
\boxed{
b_L
=-\frac1L\langle\Lambda^L\mathbb P(U\cdot\nabla U),\Lambda^L U\rangle.}
\tag{D4}
\]
Put
\[
g_L(\tau):=\|\nabla U(\tau)\|_\infty.
\]
Then the original shared continuation clock is exactly
\[
\boxed{
A(t(\tau))=\int_0^\tau g_L(s)\,ds.
}
\tag{D5}
\]
Moreover the commutator estimate on the normalized row gives
\[
|b_L|\le C_L g_L.
\tag{D6}
\]
Thus any unbounded positive cumulative dilation forces divergence of the same shared strain clock.

## 4. Physical clock and scale-sharp finite-time law
Let
\[
B_L(\tau)=\int_0^\tau b_L(s)\,ds
=\log\frac{K_L(\tau)}{K_L(0)}.
\]
Then
\[
\boxed{
dt=\frac{1}{N K_L(0)^{5/2}}e^{-\frac52B_L(\tau)}d\tau.}
\tag{D7}
\]
Equivalently,
\[
|\dot K_L|\le C_L N K_L^{7/2}.
\tag{D8}
\]
A finite-time divergence of \(K_L\) therefore obeys the universal lower rate
\[
\boxed{
K_L(t)\gtrsim (T_*-t)^{-2/5}.
}
\tag{D9}
\]
The energy-preserving self-similar rate \(K\sim(T_*-t)^{-2/5}\) saturates the scale exponent in every diagonal estimate (D1). Consequently the complete finite diagonal mixed-jet allocation is scale-compatible with a finite physical clock.

## 5. Pressure-complete shape forcing
Differentiating (D4) along (D3) gives the exact Riccati–shape law already present in the Euler horizontal dilation notes,
\[
\boxed{
(b_L)_{\tau}+\frac52b_L^2=\mathcal Q_L[U],
}
\tag{D10}
\]
where \(\mathcal Q_L\) is the pressure-complete dimensionless shape forcing. With
\[
Y_L=e^{\frac52B_L},
\]
this becomes
\[
\boxed{
Y_L''=\frac52\mathcal Q_L[U]Y_L,
\qquad
 t(\tau)-t(0)=C_L^0\int_0^\tau\frac{ds}{Y_L(s)}.
}
\tag{D11}
\]
A sufficient whole-terminal estimate is
\[
\boxed{
\int_0^\infty(1+\tau)[\mathcal Q_L(U(\tau))]_+\,d\tau<\infty,
}
\tag{D12}
\]
which yields \(Y_L(\tau)\lesssim1+\tau\), divergence of the physical clock integral, finiteness of \(A(T)\) on every finite physical interval, and the Sobolev-intersection restart.

## 6. Exact status of the attempted discharge
The diagonal participation law improves the local Riccati bookkeeping to the scale-sharp hierarchy (D1)–(D9) and identifies one common dimensionless shape dynamics for the whole finite diagonal. It also proves that the candidate finite-time collapse exponent \(2/5\) is compatible with every finite diagonal mixed-jet estimate simultaneously.

The remaining coercive content is therefore entirely in the sign/history of the pressure-complete shape forcing \(\mathcal Q_L\). Scaling covariance, energy conservation, the diagonal product recursion, and pressure slaving supply bounded normalized finite-order jets; those identities alone supply no first-moment bound of the form (D12). A scalar test such as \(b(\tau)=(1+\tau)^{-1/2}\) has bounded derivatives and bounded forcing while producing a finite physical clock, so finite-order diagonal regularity of the normalized orbit does not force clock divergence.

## Result
The shared-clock problem is reduced exactly to a pressure-complete history estimate on the dimensionless shape forcing. The new proved contribution is the full scale-sharp diagonal mixed-jet estimate (D1) and its common normalized clock (D5)–(D11). Unconditional whole-terminal finiteness of \(A\) requires a new pressure/shape no-recount or finite-work identity beyond scaling covariance and the finite diagonal Sobolev algebra.