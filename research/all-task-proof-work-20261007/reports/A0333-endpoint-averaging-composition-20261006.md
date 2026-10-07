# Original local intervals and the roof-free primitive: endpoint composition

**Reviewed scope and currentness.** Valid early averaging derivation; strengthened by endpoint-composition-averaging and joint-verification. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This pass checks the original datum-side interval choices and composes them with the actual current/recent/recent primitive. It preserves one Navier–Stokes history, the original force, record-dependent floor and lag, full tensor, pressure projectors, moving gate and delayed source. Canonical record-level freedom is a separate verification lane; no freedom to change a height record is inferred from the local existence theorem.

## 1. Source freedom and its exact constraints

The canonical forced analytic framework gives the following explicit choices:

- **Starting time and datum:** any s≥0 and a∈H³σ. The prescribed future source is f(s+·), not a reset or modified force. Its pressure remains q(t)=R_iR_j(w_iw_j)−(−Δ)^(−1)div f(t). Source: [LF608–632](../SOURCES.md#S114).
- **Length:** every 0<δ≤min{1,cν(1+||a||H³+Γ_s)^(−2)}, Γ_s=||Pf||_(L²(s,s+1;H²)). The choice is arbitrary within this data-dependent range. Source: [LF680–710](../SOURCES.md#S114).
- **Restriction/stopping within a known history:** if (w,q) exists on [s,b], every s≤r<c≤b yields the same pair in the shifted class with initial value w(r). Source: [LF648–677](../SOURCES.md#S114).
- **Compatibility:** uniqueness identifies every overlapping choice of interval and actual initial trace. The Fourier realization then gives every finite mixed row on the same common interval. Source: [LF894–927, 930–1071](../SOURCES.md#S114).

These choices permit endpoint selection inside any already known strict classical interval. A long restriction of an already existing history need not fit the sufficient quantitative δ above; it is admitted by the restriction lemma itself. Producing an extension beyond the known interval does require a new application of local existence from its actual H³ datum.

The length guarantee depends on ||u(s)||H³. The primitive's L^(4/3) time mass supplies no replacement for that datum norm. Changing a local stopping time also supplies no new record-current lower bound, and does not grant permission to change the original frequency floor, source lag or material threshold while retaining their prior conclusions.

The original HES averaging lemma is more limited: it selects an interior r with |f(r)|≤(μ/Δ)^(1/p), then controls the ORIGINAL endpoint by that value plus ∫|f'|. It does not erase or freely reselect its endpoint. Source: [HES.29–31, LF412–440](../SOURCES.md#S199).

## 2. The precise primitive input

Use the supporting calculations [RR.1–16](A0563-response-remainder-storage-continuations-20261006.md) / [RV.2–19](A0556-response-remainder-original-verification-20261006.md) at their stated scope. Let Q(u)=−P[(u·∇)u], S_a=e^(−νaΛ²), and fix one original floor r_n and lag τ_n. Define the actual recent parent on the global incoming history:

\[
V_n(t)=\int_{\max(0,t-\tau_n)}^t
S_{t-r}P_{\ge r_n}Q(u(r))\,dr.
\tag{EA1}
\]

For the complete six-assignment tensor M_n(t), including all reality partners and the moving original gate,

\[
B_n=\mathcal T_{M_n/d}(u,V_n,V_n),\qquad
d=\nu(|k|^2+|p|^2+|q|^2).
\tag{EA2}
\]

The exact full smooth-gate heat law is

\[
J_n^{rr}=-B_n'+R_n,\quad
R_n=\mathcal T_{M_{n,t}/d}(u,V_n,V_n)
+\sum_{\text{all three slots}}\mathcal T_{M_n/d}(\ldots,R_\ell,\ldots),
\tag{EA3}
\]
\[
R_{\rm cur}=Q(u),\quad
R_{\rm rec}=P_{\ge r_n}Q(u(t))-
\mathbf1_{\{t>\tau_n\}}S_{\tau_n}P_{\ge r_n}Q(u(t-\tau_n)).
\]

Both ordered recent source insertions and both negative delayed sources remain, with their actual inner pressure projectors and unconstrained source children. In the forced case R_cur=Q+Pf and the original gate response contains the full force contribution. None of these terms is replaced by a next temporal derivative of V_n.

For K=||u₀||₂, Y=||∇u||₂² and Y_(V_n)=||∇V_n||₂², RR supplies

\[
\sup_t\|V_n(t)\|_2\le2K,\qquad
\int_IY_{V_n}\le3K^2/\nu,\qquad
\int_IY\le K^2/(2\nu).
\]

With C=C_M/(√2π), the complete Fourier-majorant primitive satisfies, for every measurable E⊂I,

\[
\beta_n(E):=\int_E|B_n|^{4/3}
\le(2C/\nu)^{4/3}K^2
\left(\int_EY\right)^{1/3}
\left(\int_EY_{V_n}\right)^{2/3}.
\tag{EA4}
\]

In particular its stated global norm is
sup_n||B_n||_(L^(4/3)(I))≤2^(1/4)√3 C_M K³/(πν^(7/4)).
This is a norm of the completely recombined actual u,V_n,V_n receiver, not of separate sharp material legs.

## 3. A stronger consequence: uniform absolute continuity for the family

EA4 implies

\[
\sup_n\beta_n(E)\le C_\beta\left(\int_EY\right)^{1/3},\qquad
C_\beta=(2C/\nu)^{4/3}K^2(3K^2/\nu)^{2/3}.
\tag{EA5}
\]

Since the SAME Y belongs to L¹(I), its integral is absolutely continuous in the time-set measure. Thus the B_n family is uniformly integrable to exponent 4/3: β_n(E_n)→0 for any sequence |E_n|→0, even if floor, lag and admissible gate vary with n. This follows from the common kinetic control; a uniform L^(4/3) bound alone would not imply it.

The forced version is the same statement with K_f and the prescribed-data bound D_V^f from RR.15 in place of K and 3K²/ν. The same actual Y remains integrable and the future force remains unchanged.

EA5 is a time-mass statement. It supplies no values at prescribed endpoints and no lower bound on the length of a late local restart.

## 4. Select good endpoints without changing fields

For any window L⊂I of positive length h and θ>1, Markov gives

\[
\left|\left\{a\in L:
|B_n(a)|\le(\theta\beta_n(L)/h)^{3/4}\right\}\right|
\ge(1-\theta^{-1})h.
\tag{EA6}
\]

Hence good endpoints can be selected from positive-measure subsets, intersected with all required full-measure Lebesgue/value-convergence sets. For two ordered disjoint windows L,R inside a strict original interval, choose a∈L and b∈R. Local restriction and uniqueness preserve the same u,p on [a,b]; keeping M_n,r_n,τ_n fixed preserves the same receiver.

For smooth masks, integration of EA3 on [a,b] yields

\[
\int_a^bJ_n^{rr}=B_n(a)-B_n(b)+\int_a^bR_n.
\tag{EA7}
\]

The same selection does not prove that the truncated interval still carries the original record's positive net current. Its exact relation to the original I_n=(s,t) is
∫_I J=∫_s^aJ+∫_a^bJ+∫_b^tJ. Both edge contributions retain their sign and full receiver. They are not discarded as endpoint errors.

For sharp masks, a.e. value convergence alone is not a pointwise terminal trace theorem. The original [PSL.12–18, LF172–275](../SOURCES.md#S231) gives a.e. fixed-record values and L¹ current convergence, not uniform-time convergence. Good endpoints can be selected in those a.e. sets, but an unweighted sharp residual primitive must retain its original compatible passage. The following averaged formulation avoids that extra endpoint requirement entirely.

## 5. Exact soft endpoint composition, with the edge refund

Fix a strict original I_n=(s,t). Choose h_L,h_R>0, h_L+h_R≤t−s, and L=(s,s+h_L), R=(t−h_R,t). Average EA7 over independent uniform a∈L,b∈R. The occupation weight is

\[
w(r)=
\begin{cases}
(r-s)/h_L,&r\in L,\\
1,&s+h_L\le r\le t-h_R,\\
(t-r)/h_R,&r\in R,\\
0,&r\notin I_n.
\end{cases}
\]

It is continuous, lies in [0,1], vanishes at the original endpoints, and belongs to W^(1,4). Fubini or integration by parts gives exactly

\[
\int_IwJ_n^{rr}
=\frac1{h_L}\int_LB_n-\frac1{h_R}\int_RB_n
+\langle R_n,w\rangle
=\int_Iw'B_n+\langle R_n,w\rangle.
\tag{EA8}
\]

Hölder gives the roof-free datum-controlled time-mass cost

\[
\left|\int_Iw'B_n\right|
\le\beta_n(L)^{3/4}h_L^{-3/4}
+\beta_n(R)^{3/4}h_R^{-3/4}.
\tag{EA9}
\]

No value of B_n at s or t is estimated by its L^(4/3) norm.

The FULL record current is

\[
\int_IJ_n^{rr}
=\int_Iw'B_n+\langle R_n,w\rangle
+\int_I(1-w)J_n^{rr}.
\tag{EA10}
\]

Thus if the original record carries A_n/16, the directly proved upper relation is

\[
\frac{A_n}{16}\le
\beta_n(L)^{3/4}h_L^{-3/4}
+\beta_n(R)^{3/4}h_R^{-3/4}
+\langle R_n,w\rangle+\int_I(1-w)J_n^{rr}.
\tag{EA11}
\]

Both ordered parents, gate responses and original edge current survive. This is a lawful averaging operation on the same original record, not a replacement of its record theorem.

### Sharp passage of this COMPLETE weighted identity

On a fixed strict record, use original compatible smooth masks and tensor approximations preserving the order-zero M_n/d bound. The finite roof yields domination and a.e. trilinear value convergence. Consequently B_(n,j)→B_n in L^(4/3)(I_n) and J_(n,j)→J_n in L¹(I_n). The exact joined identity R_(n,j)=J_(n,j)+B_(n,j)' therefore converges against the fixed W^(1,4) weight:

\[
\langle R_n,w\rangle
:=\lim_j\int_IwR_{n,j}
=\int_IwJ_n-\int_Iw'B_n.
\tag{EA12}
\]

This is the full distributional gate-plus-source response. It neither requires nor proves separate convergence of individual sharp material or gate derivatives, absolute crossing variation, or BV of B_n. If symbol smoothing is constructed directly, smoothing the bounded primitive symbol M_n/d in the same fixed collar and using d times that symbol for the current preserves the original a.e. value limit, finite assignment/reality symmetries and both bounds. No ultraviolet expansion or new fluid is introduced.

EA12 makes EA8–EA11 available without sharp pointwise endpoint traces. It does not independently pay the weighted joined response; defining its limit from the exact identity preserves its value rather than creates an upper estimate.

## 6. What shrinking windows do and do not pay

For fixed-fraction endpoint windows h_L,h_R≥cΔ_n,

\[
\frac{\text{EA9 cost}}{A_n}
\le2c^{-3/4}
\left(\frac{\beta_n(I_n)}{A_n^{4/3}\Delta_n}\right)^{3/4}.
\tag{EA13}
\]

Thus the averaged endpoint cost is o(A_n) whenever the displayed ratio tends to zero. The original HES width/variation alternative is precisely sensitive to the opposite thin-window case. Although EA5 gives β_n(I_n)→0, it does not by itself compare it to A_n^(4/3)Δ_n. No positive lower width is assumed from local existence.

The explicit source freedom is therefore useful and limited: any endpoint windows inside an existing strict history are lawful; averaging removes the need for terminal pointwise values; source compatibility and cutoffs survive. To recover the original full record lower bound, the signed edge current in EA10 must remain or be paid by its original stopping/record argument. A late restart still uses its actual H³ datum.

## 7. Reinitializing the history does not reinitialize its recent parent

For a selected new start a, restriction gives the same Navier–Stokes history and datum u(a). Its original V_n(t) still contains source times before a whenever t<a+τ_n.

If one instead defines a reset recent parent V_(n,a) by changing the lower limit in EA1 to max(a,t−τ_n), then

\[
V_n(t)=V_{n,a}(t)+H_{n,a}(t),\quad
H_{n,a}(t)=\int_{\max(0,t-\tau_n)}^{\max(a,t-\tau_n)}
S_{t-r}P_{\ge r_n}Q(u(r))\,dr,\quad t\ge a.
\tag{EA14}
\]

For the forced history, put b=max(0,t−τ_n), c=max(a,t−τ_n). The exact inherited field is

\[
H_{n,a}=P_{\ge r_n}\left[
S_{t-c}u(c)-S_{t-b}u(b)
-\int_b^cS_{t-r}Pf(r)\,dr\right].
\tag{EA15}
\]

It vanishes only once the entire lag window lies after a, or for a particular actual cancellation. It is not the initial datum u₀.

The original cubic primitive then has all four ordered terms

\[
\mathcal T_{M_n/d}(u,V_{n,a},V_{n,a})
+\mathcal T_{M_n/d}(u,H_{n,a},V_{n,a})
+\mathcal T_{M_n/d}(u,V_{n,a},H_{n,a})
+\mathcal T_{M_n/d}(u,H_{n,a},H_{n,a}).
\tag{EA16}
\]

Changing a local interval therefore does not license replacing B_n(a) by zero. The inherited parent and both cross orderings must be retained. In the lawful EA8 route no parent is reset, so these extra bookkeeping terms are unnecessary.

## Verified outcome

The original datum-side rules explicitly allow shorter local intervals, arbitrary restrictions of existing strict histories, and compatible restarts from actual traces with unchanged absolute-time force. HES allows an interior averaging point while preserving its fixed endpoint and derivative cost. These permissions support EA6–EA12: good endpoints and an exact sharp-compatible soft endpoint identity, with roof-free time-mass cost and the full signed edge refund. EA5 additionally strengthens the supporting bound to uniform absolute continuity across the record family.

This pass does not change a canonical height threshold, assert a signed lower bound on a shortened record, deduce a terminal pointwise roof from L^(4/3), or reset a delayed parent to datum. Paying the remaining weighted response/edge current is precisely the original stopping-selection composition still to be checked.
