# Signed first-binomial source and coupled height/Gram storage

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. New storage is initialized but its full signed receiver remains explicit. Scaling actual initial fields is not a counterexample to a fixed history or the global theorem. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This calculation uses one actual unforced Navier–Stokes history, with (u_0\in H^\infty_\sigma(\mathbb R^3)), fixed (\nu>0), and each strict prefix (0<S<T_*). It first joins the complete signed allocations, before taking any absolute bound. All original sources remain read only. The whole-terminal conclusions below state their precise inputs; no cofinal tower is required.

## Exact full source and signed stress

Put

\[
A=\Lambda^2=-\Delta,\quad
q=-\mathbb P[(u\cdot\nabla)u]=-(u\cdot\nabla)u-\nabla p,
\quad p=R_iR_j(u_i u_j),
\]

\[
Dq(u)[h]=-\mathbb P[(h\cdot\nabla)u+(u\cdot\nabla)h],
\qquad
\mathcal C(u)=\sum_k\mathbb P[(\partial_ku\cdot\nabla)\partial_ku].
\]

The complete product row is

\[
Dq(u)[Au]=Aq-2\mathcal C(u),\qquad
q_t+\nu Aq=Dq(u)[q]+2\nu\mathcal C(u).
\tag{SC1}
\]

This is [N46, physical LF1173–1199](../SOURCES.md#S153) and [FCP1, LF18–49](../SOURCES.md#S304). Every ordered insertion retains the Leray projection and hence the pressure response.

Let (\psi=\Lambda^{-3}q). Incompressibility and integration by parts give the exact signed scalar

\[
\begin{aligned}
J_{\rm int}
&=\langle Dq(u)[q]+2\nu\mathcal C(u),\psi\rangle\\
&=\int\partial_j\psi_i
\left(u_iq_j+q_i u_j-2\nu\sum_k\partial_ku_i\partial_ku_j\right)\,dx.
\end{aligned}
\tag{SC2}
\]

Both parent orderings and the entire viscous commutator occur in this one scalar. This matches [FCP3, LF77–109](../SOURCES.md#S304).

In fact the tensor in (SC2) is exactly

\[
u\otimes q+q\otimes u-2\nu\sum_k\partial_ku\otimes\partial_ku
=(\partial_t-\nu\Delta)(u\otimes u).
\tag{SC3}
\]

This follows from (u_t=q+\nu\Delta u), including both derivative allocations in (\Delta(u\otimes u)). It permits one to join the temporal and spatial source insertions without assigning either an independent sign. Pairing (SC1) with (\psi), or pairing (SC3) with (\nabla\psi), gives the same exact source-storage row

\[
r'+\nu b^2=J_{\rm int},\qquad
r=\tfrac12\|\Lambda^{-3/2}q\|_2^2,\quad
b^2=\|\Lambda^{-1/2}q\|_2^2.
\tag{SC4}
\]

The homogeneous potential (\psi) need not belong to (L^2). These calculations use the weighted pairings in (SC4), or Fourier truncation followed by the limit. On a smooth prefix (q=-\mathbb P\operatorname{div}(u\otimes u)), so its low-frequency divergence factor and (u\otimes u\in L^1\) justify the weights used here. No (L^2) assumption on (\Lambda^{-3}q) or (\Lambda^{-1}u) has been added.

## A joined cross Gram-storage family

Set

\[
H=\tfrac12\|\Lambda^{1/2}u\|_2^2,
\quad D(t)=\|\Lambda^{3/2}u\|_2^2,
\quad J=\langle q,\Lambda u\rangle,
\quad Z^2=\|\Lambda^{-1/2}u_t\|_2^2,
\]

\[
L=\langle\Lambda^{-3/2}q,\Lambda^{1/2}u\rangle
=\langle q,\Lambda^{-1}u\rangle,
\quad T_4=\langle Dq(u)[q],\Lambda^{-1}u\rangle,
\quad C_3=\langle\mathcal C(u),\Lambda^{-1}u\rangle.
\]

The original critical rows are

\[
H'+\nu D=J,
\qquad Z^2=b^2+\nu^2D-2\nu J.
\tag{SC5}
\]

Differentiate the actual (L), use (SC1), and retain every ordered allocation:

\[
\boxed{L'=b^2+T_4-2\nu J+2\nu C_3.}
\tag{SC6}
\]

Here each of the two factors gives the same (-\nu J): one through (\langle Aq,\Lambda^{-1}u\rangle), and the other through (\langle q,\Lambda^{-1}Au\rangle). Thus the coefficient (2\nu) is required.

For fixed real (\alpha,\beta), define

\[
S_{\alpha\beta}=r+\alpha\nu L+\beta\nu^2H.
\]

Joining (SC4)–(SC6) before estimating gives

\[
\boxed{
\begin{aligned}
S_{\alpha\beta}'
&+\nu^3(\beta/2+\alpha)D
+\nu(\beta/2-\alpha)Z^2
+\nu(1-\beta/2)b^2\\
&=J_{\rm int}+\alpha\nu T_4+2\alpha\nu^2C_3.
\end{aligned}}
\tag{SC7}
\]

Storage positivity is exactly (\beta\ge\alpha^2), since it is the Gram quadratic of (\Lambda^{-3/2}q) and (\nu\Lambda^{1/2}u). All three displayed dissipations are nonnegative when (2|\alpha|\le\beta\le2), which also ensures storage positivity. In particular:

- (\alpha=0,\beta=2) recovers the complete original N90 equation, ( (r+2\nu^2H)'+\nu^3D+\nu Z^2=J_{\rm int}).
- (\alpha=1,\beta=2) gives the positive storage (S_+=r+\nu L+2\nu^2H) and the exact coercive row (S_+'+2\nu^3D=J_{\rm int}+\nu T_4+2\nu^2C_3).

The latter is a new explicit coupled readout of the original complete rows. One finite upper prefix of its **joined** right side supplies (\int_I D<\infty), and hence the already established continuation. It is not necessary to bound its terms separately.

The invariant tangencies do recombine (SC6), but they do not delete its ordered insertions. Differentiating (\langle q,u\rangle=0) in a divergence-free direction (v) gives (\langle Dq(u)[v],u\rangle=-\langle q,v\rangle). Therefore, with

\[
\mathfrak K_{-1}(u;v)
=\langle Dq(u)[v],\Lambda^{-1}u\rangle
-\langle Dq(u)[\Lambda^{-1}v],u\rangle,
\]

one has exactly

\[
T_4+b^2=\mathfrak K_{-1}(u;q),\quad
2J-2C_3=\mathfrak K_{-1}(u;Au),\quad
L'=\mathfrak K_{-1}(u;u_t).
\tag{SC8}
\]

This is the multiplier-(\Lambda^{-1}) counterpart of the fully joined first-binomial commutator in [ITC13–ITC20, physical LF140–244](../SOURCES.md#S221). The same tangency cancellations apply to time-dependent energy/helicity frames.

## Optimize the Gram coefficient without losing its derivative

On (H>0), put (\kappa=L/(2H)). The Schur residual produces the storage

\[
\boxed{S_{\rm opt}=r-\frac{L^2}{4H}+2\nu^2H\ge2\nu^2H.}
\tag{SC9}
\]

Indeed (L^2\le4rH). This is the squared component of (\Lambda^{-3/2}q) perpendicular to (\Lambda^{1/2}u), plus the retained height. Its full derivative is (r'-\kappa L'+(\kappa^2+2\nu^2)H'). The optimizing coefficient derivatives cancel exactly:

\[
-\kappa'L+2\kappa\kappa'H=0.
\]

Consequently (SC7) remains valid with (\alpha=-\kappa/\nu), (\beta=\kappa^2/\nu^2+2), without a missing moving-frame term. Rearrangement gives

\[
\boxed{
\begin{aligned}
S_{\rm opt}'
&+\frac\nu2\big((\kappa-\nu)^2+\nu^2\big)D
+\frac1{2\nu}\big((\kappa+\nu)^2+\nu^2\big)Z^2\\
&=F_{\rm opt},\\
F_{\rm opt}
&=J_{\rm int}-\kappa T_4-2\kappa\nu C_3
+\frac{\kappa^2}{2\nu}b^2.
\end{aligned}}
\tag{SC10}
\]

Both dissipation coefficients are uniformly positive, regardless of (\kappa); in particular the (D) coefficient is at least (\nu^3/2). Thus a finite upper prefix (\sup_{S<T_*}\int_0^S F_{\rm opt}<\infty) gives the actual single entry

\[
\int_I D\le\frac2{\nu^3}
\left(S_{\rm opt}(0)+\sup_{S<T_*}\int_0^S F_{\rm opt}\right)<\infty.
\tag{SC11}
\]

This is a second new exact coercive readout. It retains the extra (\kappa^2b^2/(2\nu)) allocation on its joined right side. Moving that term or assigning it a favorable sign would change the identity. A strict-prefix zero of (H) means (u=0); in the unforced case uniqueness then gives the global zero continuation. Hence the nonzero-history test uses (H>0).

## Add the actual kinetic tangency to the joint Schur storage

There is a stronger simultaneous Gram constraint, still on the same fields. Write

\[
X=\Lambda^{-3/2}q,\quad a=\Lambda^{1/2}u,\quad c=\Lambda^{3/2}u,
\quad R=\|a\|_2^2=2H,
\quad Z_k=\langle a,c\rangle=\|\Lambda u\|_2^2.
\]

The full kinetic tangency is (\langle X,c\rangle=\langle q,u\rangle=0). Thus the actual Gram matrix

\[
\begin{pmatrix}
2r&L&0\\L&R&Z_k\\0&Z_k&D
\end{pmatrix}\succeq0
\]

gives

\[
L^2\le2r\left(R-\frac{Z_k^2}{D}\right).
\tag{SC17}
\]

In particular the positive allocation in (SC10) has the refined pointwise bound

\[
\frac{\kappa^2b^2}{2\nu}
\le\frac{C_*^2}{\nu}r\left(D-\frac{Z_k^2}{R}\right),
\tag{SC18}
\]

using the original full product bound (b^2\le C_*^2RD). This estimate is applied only after the joined identity; it does not remove its signed (T_4,C_3,J_{\rm int}) terms.

The corresponding constrained storage can also be differentiated exactly. Define

\[
\lambda=Z_k/D,\quad d=R-Z_k^2/D,\quad
\eta=L/d,\quad \rho=\eta\lambda,\quad
w=X-\eta a+\rho c.
\]

Then (\langle w,a\rangle=\langle w,c\rangle=0), and

\[
e=\tfrac12\|w\|_2^2=r-\frac{L^2}{2d}\ge0,
\qquad S_c=e+2\nu^2H.
\tag{SC19}
\]

For nonzero (u\in L^2(\mathbb R^3)), (d>0): equality in the Cauchy–Schwarz relation would require its Fourier support to lie on one sphere (|\xi|=\lambda^{-1}), a set of Lebesgue measure zero. Thus this two-velocity-field Schur construction has no nonzero rank-loss state in the stated whole-space class. A strict-prefix zero field already yields the zero continuation.

Put (N=Dq(u)[q]+2\nu\mathcal C(u)). The complete three parabolic rows are

\[
X_t+\nu AX=\Lambda^{-3/2}N,\quad
a_t+\nu Aa=\Lambda^{1/2}q,\quad
c_t+\nu Ac=\Lambda^{3/2}q.
\]

The optimizing coefficient derivatives contribute (-\eta'\langle w,a\rangle+\rho'\langle w,c\rangle=0), exactly. Therefore

\[
\boxed{
S_c'+\nu\|\Lambda w\|_2^2+2\nu^3D=F_c,
}
\tag{SC20}
\]

\[
\boxed{
F_c=\left\langle w,
\Lambda^{-3/2}N-\eta\Lambda^{1/2}q+\rho\Lambda^{3/2}q
\right\rangle+2\nu^2J.
}
\tag{SC21}
\]

This is an unconditional coercive-storage identity of the actual complete mixed fields. Its full signed right side expands to

\[
\begin{aligned}
F_c={}&J_{\rm int}-\eta T_4-2\eta\nu C_3-\eta b^2\\
&+(\eta^2+2\nu^2)J
+(2\nu\rho-2\eta\rho)J_1+\rho^2J_{3/2},\\
J_1&=\langle q,\Lambda^2u\rangle,
\qquad J_{3/2}=\langle q,\Lambda^3u\rangle.
\end{aligned}
\tag{SC22}
\]

There is a real self-source cancellation here. The tangency derivative and complete product row give

\[
\langle N,u\rangle=-\|q\|_2^2+2\nu J_1.
\]

Its (-\rho\|q\|_2^2) allocation cancels the (+\rho\|q\|_2^2) from the inserted source in (SC21). Both signed parent orderings and the remaining higher height currents in (SC22) survive. Their pressure completion is contained in every (q,N) occurrence.

Since (S_c\ge0), a finite upper prefix of this complete (F_c) gives

\[
\int_I D\le\frac1{2\nu^3}
\left(S_c(0)+\sup_{S<T_*}\int_0^S F_c\right)<\infty.
\tag{SC23}
\]

No bound on the optimizing coefficients is required to obtain this conditional implication. The full source relationship has not itself paid the upper primitive in (SC23). In particular, the surviving (J_1,J_{3/2}) must remain joined as displayed rather than being replaced by bounds for lower coordinates.

## Which coordinates the datum already pays

Let (E=\|u_0\|_2^2), (T=T_*<\infty). The exact kinetic budget is (\sup_I\|u\|_2^2\le E), (\int_I\|\nabla u\|_2^2\le E/(2\nu)). HLS and Sobolev give

\[
\|\Lambda^{-3/2}q\|_2\le C\|u\otimes u\|_{3/2}
\le C\|u\|_2\|\nabla u\|_2,
\]

so

\[
\int_Ir\le\frac{C^2E^2}{4\nu},\qquad
\int_IH\le\frac E2\sqrt{\frac T{2\nu}},\qquad
\int_I|L|\le2\sqrt{\left(\int_Ir\right)\left(\int_IH\right)}.
\tag{SC12}
\]

Thus every fixed (S_{\alpha\beta}) has a datum-paid (L^1(I)) norm, and

\[
0\le S_{\rm opt}\le r+2\nu^2H
\quad\Longrightarrow\quad S_{\rm opt}\in L^1(I).
\tag{SC13}
\]

The constrained joint storage satisfies the same bound: (0\le S_c\le r+2\nu^2H), hence (S_c\in L^1(I)) from the actual kinetic budget before a signed derivative estimate.

These are genuine whole-terminal **time masses** of the coupled storages. They do not assert an upper terminal value or an upper primitive of their signed work. Integrating the complete (L) equation in (SC6) transforms the right side of (SC7) back into the (r/H/b^2) endpoint account. Substituting the complete first-binomial equation into (F_{\rm opt}) similarly returns (SC10); it does not identify its upper primitive with one of the time masses in (SC12).

## Exact instantaneous primitive classification

The original source contains a stronger exact reduction, independently checked here. Let

\[
J_5=\langle Dq(u)[q],\Lambda^{-3}q\rangle,
\qquad J_4=\langle\mathcal C(u),\Lambda^{-3}q\rangle,
\quad J_{\rm int}=J_5+2\nu J_4.
\]

Its Fréchet derivative is (Dr(u)[h]=\langle Dq(u)[h],\Lambda^{-3}q\rangle). If an instantaneous differentiable functional (\Phi) exactly absorbs the full quintic Euler insertion, (D\Phi(u)[q(u)]=J_5(u)), then

\[
\boxed{\Phi=r+\mathcal I,\qquad D\mathcal I(u)[q(u)]=0.}
\tag{SC14}
\]

Conversely every such Euler first integral produces a primitive. On the actual unforced viscous history the full identity becomes

\[
\boxed{J_{\rm int}=\Phi'+\nu\big(b^2+D\mathcal I(u)[Au]\big).}
\tag{SC15}
\]

These are [FCP8–FCP13, physical LF172–224](../SOURCES.md#S304). They derive from the full source before absolute estimates. Absorbing its quintic primitive therefore leaves exactly its source square and the viscous derivative of an Euler first integral. It does not leave only kinetic loss.

For the known-invariant correction (\mathcal I=G(E_0,K)), with (E_0=\tfrac12\|u\|_2^2), (K=\tfrac12\langle u,\operatorname{curl}u\rangle),

\[
D\mathcal I[Au]=G_{E_0}\|\nabla u\|_2^2
+G_K\langle\operatorname{curl}u,\operatorname{curl}\operatorname{curl}u\rangle.
\tag{SC16}
\]

The source's actual Schwartz-data concentration, [FCP23–FCP29, physical LF398–485](../SOURCES.md#S304), keeps (E_0=e>0), (K=0), and the second viscous pairing zero while making (r\) unbounded and (b^2/\|\nabla u\|_2^2\) unbounded. Its exact scaling is (u_{a,\lambda}=a\lambda v(\lambda x)), (\lambda=a^2E_0(v)/e): (r\sim a^4), (b^2\sim a^8), (\|\nabla u\|_2^2\sim a^4). This rules out an invariant-only upper storage and pointwise energy-row absorption for this correction class. Since the initial fields themselves vary, it does **not** rule out a cumulative bound using the full particular (u_0), a different Euler first integral, or material-history dependence.

## Bounded conclusion and coverage

The executed coupling supplies (SC7), the optimized Schur storage (SC9)–(SC11), the constrained tangent Gram storage (SC17)–(SC23), and the unconditional whole-terminal coupled time masses (SC12)–(SC13). It also verifies the source's instantaneous primitive classification (SC14)–(SC16). No independent absolute production bounds were used to derive these identities.

The exact remaining targets for these readouts are one upper primitive of (J_{\rm int}), of the full (S_+\) residual, of (F_{\rm opt}), or of (F_c). No such primitive was identified here with the paid masses (SC12). This conclusion exhausts the displayed complete source substitution and the named two-field/kinetic-tangent cross Gram storages; it makes no claim to exhaust every nonlinear or history-dependent construction in the complete mixed family.

Source SHA-256 values recorded after reading:

| Source | SHA-256 |
|---|---|
| Native proof custody, unchanged prior baseline | `be26593f79929a37c9d88ce48ea00a0c5b2f9af919717f2bf9c7d5777d5cc311` |
| Compensating primitive | `70d04446656f6e5055c5f1bdf9fd48373c85f1fc81fa935aa1d6e0c86aae6f34` |
| Invariant-transverse first binomial | `5460efa11bf5a7a2026659de41d1571056401e3f583926cfac5d4c91a65644ea` |

No access blocker occurred.
