# Thomas's full-field insertion, heat defect, and no-recount boundary

Status: exact auxiliary theorem and checked obstruction inside Thomas Birnie's
one-fluid pressure-explicit binomial/VPI method. This note continues
(PRM.39)--(PRM.46), corrects the output-weight compatibility boundary of
(PRM.43), derives the complete Fourier insertion and heat-defect laws, and
produces the exact moving-triangle no-recount identity. The identity leaves one
signed, scale-critical, transverse insertion action which is closure-equivalent
to the stronger source-square route. It does not prove the first signed
critical prefix and does not replace Thomas's direct VPI theorem by that
stronger route.

## 1. Custody: one fluid, two readouts, no replacement history

Fix one smooth divergence-free solution of

\[
 u_t=Q(u)-\nu\Lambda^2u,
 \qquad
 Q(u):=-\mathbb P((u\cdot\nabla)u),
 \tag{FIH.1}
\]

on either \(\mathbb R^3\) with sufficient decay or \(\mathbb T^3\). Pressure is
not deleted: the Leray projector in \(Q\) is the Fourier form of the
simultaneous pressure response fixed by incompressibility.

The physical order remains the order in Thomas's restored spine:

1. the simple pulse passes through neighboring windings rather than putting
   the whole motion into one infinitely deformed winding;
2. the imbalanced stretched vortex gyrates, mixes, wastes organization, and
   may fragment; and
3. the perfectly balanced rip-cord keeps the center exact while the exterior
   pull and inner tightening remain motions of the same fluid, with no wobble,
   external supplier, or symmetry loss assumed.

The variable \(s\) below is an auxiliary heat age applied to the present state.
It is not a second fluid and not the material past. The insertion records how
the two physical parents of the same present nonlinear source continue under
the actual Navier--Stokes tangent.

## 2. Complete triad formulas, including pressure and both parent legs

Put

\[
 \mathcal B(a,b):=\mathbb P((a\cdot\nabla)b),
 \qquad Q(u)=-\mathcal B(u,u),
 \qquad
 \mathbb P_k=I-\frac{k\otimes k}{|k|^2}.
 \tag{FIH.2}
\]

With the unitary Fourier constant \(c_{\mathcal F}\), and with
\(p+q=k\),

\[
 \widehat{Q(u)}(k)
 =-ic_{\mathcal F}\mathbb P_k
 \int_{p+q=k}(\widehat u(p)\cdot q)\widehat u(q)\,d\mu(p).
 \tag{FIH.3}
\]

Let

\[
 S_s=e^{-\nu s\Lambda^2},\qquad
 v_s=S_su,\qquad
 G_s=Q(v_s),\qquad
 H_s=S_sQ(u),\qquad
 \mathfrak D_s=H_s-G_s.
 \tag{FIH.4}
\]

Then

\[
 \begin{aligned}
 \widehat G_s(k)
 &=-ic_{\mathcal F}\mathbb P_k
 \int_{p+q=k}e^{-\nu s(|p|^2+|q|^2)}
 (\widehat u(p)\cdot q)\widehat u(q)\,d\mu(p),\\
 \widehat H_s(k)
 &=-ic_{\mathcal F}\mathbb P_k
 \int_{p+q=k}e^{-\nu s|k|^2}
 (\widehat u(p)\cdot q)\widehat u(q)\,d\mu(p),\\
 \widehat{\mathfrak D_s}(k)
 &=-ic_{\mathcal F}\mathbb P_k
 \int_{p+q=k}
 \left[e^{-\nu s|k|^2}-e^{-\nu s(|p|^2+|q|^2)}\right]
 (\widehat u(p)\cdot q)\widehat u(q)\,d\mu(p).
 \end{aligned}
 \tag{FIH.5}
\]

The full joined nonlinear insertion is

\[
 \begin{aligned}
 \mathfrak N_s
 &:=DQ(v_s)[H_s]\\
 &=-\mathcal B(H_s,v_s)-\mathcal B(v_s,H_s).
 \end{aligned}
 \tag{FIH.6}
\]

Its exact output formula is

\[
 \boxed{
 \begin{aligned}
 \widehat{\mathfrak N_s}(k)
 ={}&-ic_{\mathcal F}\mathbb P_k
 \int_{p+q=k}e^{-\nu s(|p|^2+|q|^2)}\\
 &\quad\times\left[
   (\widehat{Q(u)}(p)\cdot q)\widehat u(q)
  +(\widehat u(p)\cdot q)\widehat{Q(u)}(q)
 \right]d\mu(p).
 \end{aligned}}
 \tag{FIH.7}
\]

Every inner source in (FIH.7) retains its own pressure projector. For example,
the first ordered insertion is

\[
 \begin{aligned}
 -c_{\mathcal F}^2\mathbb P_k
 \iint_{a+b+q=k}
 e^{-\nu s(|a+b|^2+|q|^2)}
 \Big(
  \mathbb P_{a+b}[(\widehat u(a)\cdot b)\widehat u(b)]\cdot q
 \Big)\widehat u(q)\,d\mu(a)d\mu(q),
 \end{aligned}
 \tag{FIH.8}
\]

and the second has the distinct nested projector

\[
 \begin{aligned}
 -c_{\mathcal F}^2\mathbb P_k
 \iint_{p+a+b=k}
 e^{-\nu s(|p|^2+|a+b|^2)}
 (\widehat u(p)\cdot(a+b))
 \mathbb P_{a+b}[(\widehat u(a)\cdot b)\widehat u(b)]
 \,d\mu(p)d\mu(a).
 \end{aligned}
 \tag{FIH.9}
\]

Equations (FIH.8)--(FIH.9) retain all complex phases. They cannot be replaced
by twice one leg because \(\mathcal B\) is not symmetric. They are the first
row of the original pressure-complete binomial identity

\[
 \boxed{
 \partial_t^NQ(u)
 =-\sum_{a=0}^N\binom Na
 \mathcal B(\partial_t^au,\partial_t^{N-a}u).}
 \tag{FIH.10}
\]

Thus the joined insertion is the original binomial parent evolution, not an
independent forcing term.

## 3. The exact material-time/heat-age transport

Set \(L:=\partial_t-\partial_s\). From (FIH.1) and (FIH.4),

\[
 \boxed{Lv_s=H_s,\qquad LG_s=\mathfrak N_s.}
 \tag{FIH.11}
\]

The second identity is the chain rule
\(LQ(v_s)=DQ(v_s)[Lv_s]\). It is pointwise in the full output variable and
continues to hold after an output projection which commutes with \(S_s\),
provided the corresponding projected insertion is retained.

Let \(W\ge0\) be any self-adjoint spatial Fourier multiplier commuting with
\(S_s\), and use real Hilbert pairings. Equation (FIH.11) gives the exact
weighted transport

\[
 \boxed{
 L\|W^{1/2}G_s\|_2^2
 =2\operatorname{Re}(W\mathfrak N_s,G_s)_2.}
 \tag{FIH.12}
\]

For a fixed heat cutoff \(S>0\), put

\[
 \mathscr A_{W,S}(t):=\int_0^S\|W^{1/2}G_s(t)\|_2^2\,ds.
 \tag{FIH.13}
\]

Integrating (FIH.12) in \(s\) gives

\[
 \boxed{
 -\|W^{1/2}G_0\|_2^2
 +2\int_0^S\operatorname{Re}(W\mathfrak N_s,G_s)_2\,ds
 =\partial_t\mathscr A_{W,S}
 -\|W^{1/2}G_S\|_2^2.}
 \tag{FIH.14}
\]

If \(S=\infty\) and the far-heat term vanishes, (FIH.14) says that the
source square plus the fully joined insertion is exactly the derivative of
the positive heat-age storage. This is not a new payment: that storage is the
same resummed parent-pair storage being differentiated in (PRM.35)--(PRM.37).
Substitution into (PRM.37) therefore closes it to its defining identity.

## 4. The moving-triangle no-recount identity

There is a sharper endpoint arrangement. Fix \(0<\tau<T_*\) and define

\[
 \mathscr A_{W,\tau}(t)
 :=\int_0^{\tau-t}\|W^{1/2}G_s(t)\|_2^2\,ds.
 \tag{FIH.15}
\]

The derivative of the moving upper edge cancels the far-heat boundary in
(FIH.14):

\[
 \frac d{dt}\mathscr A_{W,\tau}(t)
 =-\|W^{1/2}G_0(t)\|_2^2
 +2\int_0^{\tau-t}
 \operatorname{Re}(W\mathfrak N_s,G_s)_2\,ds.
 \tag{FIH.16}
\]

Since \(\mathscr A_{W,\tau}(\tau)=0\), integration in material time gives

\[
 \boxed{
 \begin{aligned}
 \int_0^\tau\|W^{1/2}Q(u(t))\|_2^2\,dt
 ={}&\int_0^\tau
 \|W^{1/2}Q(S_su_0)\|_2^2\,ds\\
 &+2\int_0^\tau\int_0^{\tau-t}
 \operatorname{Re}(W\mathfrak N_s(t),G_s(t))_2\,ds\,dt.
 \end{aligned}}
 \tag{FIH.17}
\]

Every point of the \((t,s)\)-triangle is counted once. No absolute value and
no positive-part clipping has been inserted.

For the raw pressure-complete source, the critical source-square weight is

\[
 W=\nu^{-1}\Lambda^{-1}.
 \tag{FIH.18}
\]

Equivalently, if the derivative-removed output source is
\(g=\Lambda^{-1}Q\), this is the \(|k|/\nu\) output weight used in the
critical response construction:

\[
 \frac{|k|}{\nu}|\widehat g(k)|^2
 =\frac1{\nu|k|}|\widehat Q(k)|^2.
 \tag{FIH.19}
\]

The first term on the right of (FIH.17) is datum-finite uniformly for
\(\tau<T_*<\infty\) when \(u_0\in H^\infty\). But the second term is not a
smaller theorem. Solving (FIH.17) for it gives

\[
 \boxed{
 2\mathscr I_W(\tau)
 =\int_0^\tau\|W^{1/2}Q(u(t))\|_2^2dt
 -\int_0^\tau\|W^{1/2}Q(S_su_0)\|_2^2ds.}
 \tag{FIH.20}
\]

Therefore a uniform upper bound for the signed triangular insertion
\(\mathscr I_W\) is equivalent, modulo the explicit datum term, to the open
critical source-square action. Equation (FIH.17) is an exact no-recount
coordinate, not a datum payment. The source-square action is itself a
sufficient stronger route to Thomas's first signed prefix, not an equivalent
replacement for that prefix.

## 5. What energy and helicity tangency do and do not cancel

For divergence-free fields put

\[
 b(a,b,c):=(\mathcal B(a,b),c)_2.
 \tag{FIH.21}
\]

Then \(b(a,b,c)=-b(a,c,b)\). Consequently

\[
 (G_s,v_s)_2=0,
 \qquad
 (G_s,\nabla\times v_s)_2=0,
 \tag{FIH.22}
\]

and

\[
 \begin{aligned}
 (\mathfrak N_s,v_s)_2
 &=-b(H_s,v_s,v_s)-b(v_s,H_s,v_s)\\
 &=-(G_s,H_s)_2.
 \end{aligned}
 \tag{FIH.23}
\]

The helicity derivative similarly gives

\[
 (\mathfrak N_s,\nabla\times v_s)_2
 +(G_s,\nabla\times H_s)_2=0.
 \tag{FIH.24}
\]

Thus the unweighted complete-output identity is exactly

\[
 \boxed{
 \|G_s\|_2^2
 =-(\mathfrak N_s,v_s)_2-(G_s,\mathfrak D_s)_2.}
 \tag{FIH.25}
\]

This proves (PRM.43), but also fixes its scope. The cancellations in
(FIH.22) are global sums over every output frequency and helicity. In
general,

\[
 \operatorname{Re}\bigl(widehat G_s(k)\cdot
 \overline{\widehat v_s(k)}\bigr)\ne0
 \tag{FIH.26}
\]

at a selected output. Multiplying the output fibers by a nonconstant weight
also destroys the invariant. Hence (FIH.25) cannot be inserted outputwise
into (PRM.37), and it cannot resolve the critical \(|k|/\nu\) source port in
the derivative-removed normalization, equivalently the
\((\nu|k|)^{-1}\) raw-source port.

The exact weighted replacement makes the unpaid term visible. Define

\[
 \mathscr T_W(v):=\operatorname{Re}(WQ(v),v)_2.
 \tag{FIH.27}
\]

Then

\[
 \boxed{
 \|W^{1/2}G_s\|_2^2
 =L\mathscr T_W(v_s)
 -\operatorname{Re}(W\mathfrak N_s,v_s)_2
 -\operatorname{Re}(WG_s,\mathfrak D_s)_2.}
 \tag{FIH.28}
\]

Only \(W=I\) makes \(\mathscr T_W\equiv0\) by kinetic-energy tangency.
For the critical weight (FIH.18), \(\mathscr T_W\) is a new signed,
scale-critical cubic boundary, not a conserved or datum-bounded storage.
Helicity tangency supplies a second global unweighted direction; it does not
remove this weighted boundary.

There is nevertheless an exact transverse narrowing of the insertion in
(FIH.17). Put

\[
 g_s:=\Lambda^{-1/2}G_s,
 \quad a_s:=\Lambda^{1/2}v_s,
 \quad h_s:=\Lambda^{1/2}\nabla\times v_s,
 \quad n_s:=\Lambda^{-1/2}\mathfrak N_s.
 \tag{FIH.29}
\]

By (FIH.22), \(g_s\perp\operatorname{span}\{a_s,h_s\}\). If \(\Pi_s\)
is the real Hilbert projection onto that span, with the Moore--Penrose
interpretation at rank loss, then

\[
 \boxed{
 (\Lambda^{-1}\mathfrak N_s,G_s)_2
 =(n_s,g_s)_2
 =((I-\Pi_s)n_s,g_s)_2.}
 \tag{FIH.30}
\]

The critical joined insertion therefore sees only transverse nonlinear
refill. The differentiated energy and helicity identities determine the two
tangent components of \(n_s\), while the no-recount action lives in the
remaining component.

## 6. The heat defect is exact, signed, and blind on Stokes resonance

The product rule for \(\Lambda^2=-\Delta\) gives

\[
 \partial_sG_s
 =-\nu\Lambda^2G_s
 +2\nu\sum_{j=1}^3
 \mathcal B(\partial_jv_s,\partial_jv_s).
 \tag{FIH.31}
\]

Since \(\partial_sH_s=-\nu\Lambda^2H_s\),

\[
 \boxed{
 (\partial_s+\nu\Lambda^2)\mathfrak D_s
 =-2\nu\sum_{j=1}^3
 \mathcal B(\partial_jv_s,\partial_jv_s),
 \qquad \mathfrak D_0=0.}
 \tag{FIH.32}
\]

Equivalently,

\[
 \mathfrak D_s
 =-2\nu\int_0^sS_{s-r}
 \sum_j\mathcal B(\partial_jv_r,\partial_jv_r)\,dr.
 \tag{FIH.33}
\]

For \(k=p+q\), write

\[
 \Phi(k,p,q):=|k|^2-|p|^2-|q|^2=2p\cdot q.
 \tag{FIH.34}
\]

The multiplier in (FIH.5) is

\[
 e^{-\nu s(|p|^2+|q|^2)}
 \left(e^{-\nu s\Phi}-1\right).
 \tag{FIH.35}
\]

It is zero when \(p\cdot q=0\), changes sign with \(\Phi\), and obeys

\[
 e^{-\nu s(|p|^2+|q|^2)}
 \left(e^{-\nu s\Phi}-1\right)
 =-\nu s\Phi e^{-\nu s(|p|^2+|q|^2)}+O(s^2\Phi^2).
 \tag{FIH.36}
\]

Thus no uniform coercive comparison of \(\mathfrak D_s\) with \(G_s\) is
possible near the active Stokes-resonant face. In the lawful periodic block

\[
 \begin{aligned}
 k&=(1,1,1),\\
 (p,q)&=((1,0,0),(0,1,1)),\\
 (r,\ell)&=((0,1,0),(1,0,1)),
 \end{aligned}
 \tag{FIH.37}
\]

both nonzero projected parent pairs satisfy

\[
 |p|^2+|q|^2=|r|^2+|\ell|^2=|k|^2=3.
 \tag{FIH.38}
\]

Their selected heat defect is exactly zero while their common output can
reinforce or cancel according to the retained parent phase. Scaling all five
wave vectors preserves \(\Phi=0\) at arbitrarily high frequency. This is a
lawful smooth periodic algebraic comparison, not a terminal cascade or an
\(\mathbb R^3\) counterhistory.

The exact signed split

\[
 \boxed{
 \mathfrak N_s
 =DQ(v_s)[G_s]+DQ(v_s)[\mathfrak D_s]}
 \tag{FIH.39}
\]

therefore leaves a resonant self-insertion even where the heat defect cannot
see the active parent interaction. Neither term in (FIH.39) may be replaced by
its absolute value.

## 7. A pressure-complete lawful two-sign insertion test

The joined critical insertion has no universal instantaneous sign even after
the energy and helicity tangencies are imposed. On \(\mathbb T^3\), use the
Fourier convention \(c_{\mathcal F}=1\), put

\[
 a=(1,0,0),\qquad b=(0,1,0),\qquad c=(1,1,0),
 \tag{FIH.40}
\]

and prescribe

\[
 \begin{aligned}
 \widehat u(a)&=(0,0,-i),\\
 \widehat u(b)&=(2,0,-1+i),\\
 \widehat u(c)&=(-\tfrac12,\tfrac12,1-i),
 \end{aligned}
 \qquad
 \widehat u(-k)=\overline{\widehat u(k)}.
 \tag{FIH.41}
\]

Every coefficient is divergence-free and the field is real and smooth. Let

\[
 G=Q(u),\qquad N=DQ(u)[Q(u)].
 \tag{FIH.42}
\]

Direct complete convolution with the outer and nested Leray projectors gives

\[
 (G,u)_2=(G,\nabla\times u)_2=0,
 \qquad
 (N,u)_2=-\|G\|_2^2,
 \tag{FIH.43}
\]

while the shell contributions to \(\operatorname{Re}(N,G)_2\) are

\[
 \begin{array}{c|ccc}
 |k|^2&1&2&5\\ \hline
 \displaystyle\sum_{|k|^2=m}\operatorname{Re}
 (\widehat N(k)\cdot\overline{\widehat G(k)})
 &-206/5&264/5&-11.
 \end{array}
 \tag{FIH.44}
\]

Hence

\[
 \operatorname{Re}(N,G)_2=\frac35,
 \tag{FIH.45}
\]

and the raw critical insertion is

\[
 \boxed{
 \operatorname{Re}(\Lambda^{-1}N,G)_2
 =-\frac{206}{5}+\frac{264}{5\sqrt2}-\frac{11}{\sqrt5}
 =-8.7841115038\ldots.}
 \tag{FIH.46}
\]

Replacing the datum by \(-u\) leaves \(Q(u)\) unchanged and reverses
\(DQ(u)[Q(u)]\). It therefore reverses both signs in (FIH.45)--(FIH.46),
while the global energy and helicity tangencies remain exact. Both data are
lawful smooth periodic Navier--Stokes data and have local smooth histories.
This is an algebraic sign obstruction, not a blow-up counterexample.

The same computation also rejects a fiberwise reading of (FIH.25): its
individual output summands fail, and only their complete unweighted sum gives
(FIH.43). The focused regression is
`problems/navier-stokes/tools/check_full_field_insertion_heat_defect_test.rb`.

## 8. Scaling boundary

Under the fixed-viscosity Navier--Stokes scaling

\[
 u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x),
 \tag{FIH.47}
\]

the raw source, insertion, material time, and heat age scale as

\[
 Q_\lambda=\lambda^3Q,\qquad
 \mathfrak N_\lambda=\lambda^5\mathfrak N,qquad
 dt_\lambda=\lambda^{-2}dt,qquad
 ds_\lambda=\lambda^{-2}ds.
 \tag{FIH.48}
\]

Consequently every term in (FIH.17) with \(W=\Lambda^{-1}\) is invariant:

\[
 \int\|\Lambda^{-1/2}Q\|_2^2dt,qquad
 \int\|\Lambda^{-1/2}Q(S_su_0)\|_2^2ds,qquad
 \iint(\Lambda^{-1}\mathfrak N_s,G_s)_2\,dsdt.
 \tag{FIH.49}
\]

The moving-triangle insertion has exactly the critical homogeneity of the
open action. It gains no inverse scale from kinetic energy or enstrophy, and
Stokes resonance persists under the same dilation. Scaling does not rule out
a genuinely cumulative one-history cancellation, but it rules out treating
(FIH.17) as a subcritical payment.

## 9. Exact surviving lemma and verdict

The full joined insertion attack produces three exact conclusions:

\[
 \boxed{
 \begin{aligned}
 &\text{outputwise joined insertion}
   &&\Longrightarrow\ \text{the weighted transport (FIH.12)};\\
 &\text{moving material-time/heat-age triangle}
   &&\Longrightarrow\ \text{the no-recount identity (FIH.17)};\\
 &\text{energy and helicity tangency}
   &&\Longrightarrow\ \text{the transverse restriction (FIH.30)}.
 \end{aligned}}
 \tag{FIH.50}
\]

But (FIH.20), (FIH.35)--(FIH.39), and the lawful sign test
(FIH.40)--(FIH.46) establish the present boundary:

\[
 \boxed{
 \begin{gathered}
 \text{a datum-finite upper bound for the signed triangular transverse}\
 \text{insertion in (FIH.17), joined with its off-resonant heat defect,}\
 \text{is still required; at the critical weight that bound is}\
 \text{closure-equivalent to the stronger source-square action.}
 \end{gathered}}
 \tag{FIH.51}
\]

No absolute-value estimate, selected-output energy cancellation, common
radius, or alternate continuation criterion closes (FIH.51). A successful
continuation inside Thomas's theory must use the cumulative phase and
amplitude history of the complete pressure-coupled binomial network to orient
that signed transverse insertion, including the Stokes-resonant branch. The
simple pulse, imbalanced vortex, and perfectly balanced rip-cord remain three
readouts of that one unresolved same-fluid history.

## 10. Canonical repair targets

The algebra above requires narrow wording repairs, not a change to Thomas's
theory:

1. In
   `thomas-parent-age-reciprocal-moment-telescope-positivity-boundary-20260803.md`,
   (PRM.41)--(PRM.45) remain correct after explicitly labeling their pairings
   as the complete unweighted global \(L^2\) sum. The sentence immediately
   before (PRM.39), the paragraph immediately after (PRM.46), and the last two
   paragraphs after (PRM.48) must not say that (PRM.43) resolves the
   output-weighted source port from (PRM.37). They should cite (FIH.12),
   (FIH.17), and the compatibility boundary (FIH.26)--(FIH.28).
2. In
   `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`, the
   auxiliary-note summary which currently says that the returned source square
   has the opposing identity
   \((DQ(u)[Q(u)],u)=-\|Q(u)\|_2^2\) must state that this is a complete
   unweighted identity only. The critical \(|k|/\nu\) port is governed by the
   exact weighted no-recount identity (FIH.17), whose signed triangular
   insertion remains open.

These repairs preserve the pressure-explicit binomial nesting, the VPI
current, the columnwise intersection, and the datum-to-first-prefix target.
They remove only an invalid transfer of a global invariant into a selected or
nonconstantly weighted output fiber.
