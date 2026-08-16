# Thomas's three-label tensor-projector eight-block refund and record boundary

**Date:** 2026-08-04

**Status:** noncanonical exact compact-cutoff tensor-partition identity and
checked same-critical no-gain boundary inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method.

This note continues the exact material three-label receiver
`(STK.17)--(STK.19)`.  It does not replace that receiver by a scalar pair
selector.  It asks the next literal question: when the signed co-normal
incidence tensor \(W=\chi P_-\) is inserted into the component spaces of the
actual three receiver legs, what survives after every selected/complementary
tensor block is retained?

At the smooth compact-cutoff level the answer is exact.  The three component
identities produce eight tensor blocks.  Their sum is the original
reality-completed six-assignment receiver.  Their material derivatives
contain the moving incidence/projector responses with their signs, but those
responses cancel label by label when the eight blocks are recombined.  On
any nonzero signed compact-cutoff record, one **fixed** block carries at least
one eighth with the record's sign.  No switching selector is needed.

For the canonical sharp/singular receiver, the later preterminal compact-roof
theorem `(PSL.15)--(PSL.23)` proves that all eight undifferentiated blocks
have compatible \(L_t^1\) limits and that the ownership statement survives.
That value-limit theorem does not pass the separated differentiated responses
or create a sign or coercive comparison between the record-carrying tensor
contraction and the co-normal response quantum.

The physical object remains one continuing fixed-viscosity fluid from one
datum.  The three material labels, six receiver assignments, contracting-line
projector, and pressure-complete leg responses are simultaneous coordinates
of that same history.

## 1. The actual compact-cutoff three-label receiver

Let \(\mathcal A_6\) be the three choices of current receiver slot times the
two orders of the recent parents.  Group each member with the exact
reality-conjugate completion already present in the multiplier
\(\mathfrak M_n^{\rm rr}\).  Then the full real compact-cutoff receiver is

\[
 \boxed{
 J(t)=\sum_{\rho\in\mathcal A_6}\iiint
 K^\rho_{ijk}(R_{ab},R_{ac};t)
 F^\rho_{a,i}G^\rho_{b,j}H^\rho_{c,k}\,da\,db\,dc
 \in\mathbb R.}
 \tag{TPR.1}
\]

For each \(\rho\), exactly one of \(F^\rho,G^\rho,H^\rho\) is the current
receiver and the other two are the ordered recent parents.  The kernels
retain the dynamic gate, static FIM and high-output gate, Leray tensor,
helical multiplicity, and the exact signs of the corresponding receiver and
conjugate terms.  No assignment is made positive.  The leg fields carry
their current or recent histories; in particular, a recent heat history is
not inserted into \(K^\rho\) a second time.

Smooth compact Fourier cutoffs and smooth \(\chi\) are imposed for the
termwise identities below.  The canonical sharp/singular kernel is known
from `(STK.14)--(STK.19)` only after the complete six-assignment
recombination.  A sharp BV selector additionally needs one-sided traces and
lawful products with each leg.  Thus an individual sharp tensor block is not
defined here merely from convergence of the recombined receiver.

At each label use the same-history strain projector and incidence selector

\[
 P_{-,a}=e_-(X(a,t),t)\otimes e_-(X(a,t),t),
 \qquad W_a:=\chi_aP_{-,a},
 \qquad \overline W_a:=I-W_a,
 \tag{TPR.2}
\]

and analogously at \(b,c\).  Here \(0\le\chi\le1\); for a sharp episode it
is read in the BV/distributional sense of `(CIF.4)--(CIF.13)`.  The bar in
`(TPR.2)` means algebraic complement, not another independently evolving
projector.  Even when \(0<\chi<1\), the only identity used below is

\[
 W_\ell+\overline W_\ell=I,
 \qquad \ell\in\{a,b,c\}.
 \tag{TPR.3}
\]

## 2. Exact eight-block recombination

For \(\sigma=(\sigma_a,\sigma_b,\sigma_c)\in\{s,c\}^3\), put

\[
 W_\ell^s:=W_\ell,
 \qquad
 W_\ell^c:=\overline W_\ell
 \tag{TPR.4}
\]

and define the full reality-completed six-assignment block

\[
 \boxed{
 J_\sigma(t):=\sum_{\rho\in\mathcal A_6}\iiint K^\rho_{ijk}
 (W_a^{\sigma_a}F_a^\rho)_i
 (W_b^{\sigma_b}G_b^\rho)_j
 (W_c^{\sigma_c}H_c^\rho)_k\,da\,db\,dc\in\mathbb R.}
 \tag{TPR.5}
\]

Expanding the three factors in `(TPR.3)` gives, pointwise in time,

\[
 \boxed{
 J(t)=\sum_{\sigma\in\{s,c\}^3}J_\sigma(t).}
 \tag{TPR.6}
\]

The eight component blocks do not replace or split the six Fourier receiver
assignments: every \(J_\sigma\) retains all six assignments and their
reality-conjugate completion and only resolves the three vector component
spaces.  The fact that each integrated block is real is what makes the signed
pigeonhole step below lawful; it would not be lawful on a single unpaired
complex Fourier contribution.

## 3. The full derivative and exact projector refund

Put

\[
 V_{ab}:=u(X(a,t),t)-u(X(b,t),t),
 \qquad
 V_{ac}:=u(X(a,t),t)-u(X(c,t),t),
\]

and at fixed labels define, for every one of the six assignments,

\[
 \mathcal T_{abc}K^\rho
 :=\partial_tK^\rho+\nabla_RK^\rho\cdot V_{ab}
                 +\nabla_SK^\rho\cdot V_{ac}.
 \tag{TPR.7}
\]

Thus both independent separation transports in `(STK.19)` remain present.
Let \(\eta_s=1\), \(\eta_c=-1\), set

\[
 (Z_a^\rho,Z_b^\rho,Z_c^\rho)
 :=(F_a^\rho,G_b^\rho,H_c^\rho),
 \qquad
 U_{\ell,\rho}^\sigma:=W_\ell^\sigma Z_\ell^\rho,
\]

and let \(D_\ell\) denote the material derivative on the corresponding
pulled-back leg.  The exact smooth product rule is

\[
 \boxed{
 D_\ell U_{\ell,\rho}^\sigma
 =W_\ell^\sigma D_\ell Z_\ell^\rho
  +\eta_\sigma(D_\ell W_\ell)Z_\ell^\rho.}
 \tag{TPR.8}
\]

Therefore

\[
 \boxed{
 \begin{aligned}
 {d\over dt}J_\sigma
 =\sum_{\rho\in\mathcal A_6}\iiint
 &(\mathcal T_{abc}K^\rho)_{ijk}
 U_{a,\rho,i}^{\sigma_a}U_{b,\rho,j}^{\sigma_b}
 U_{c,\rho,k}^{\sigma_c}\,da\,db\,dc\\
 +\sum_{\rho\in\mathcal A_6}\iiint
 &K^\rho_{ijk}\Bigl[
 (D_aU_{a,\rho}^{\sigma_a})_iU_{b,\rho,j}^{\sigma_b}
 U_{c,\rho,k}^{\sigma_c}\\
 &\hspace{18mm}
 +U_{a,\rho,i}^{\sigma_a}(D_bU_{b,\rho}^{\sigma_b})_j
 U_{c,\rho,k}^{\sigma_c}\\
 &\hspace{18mm}
 +U_{a,\rho,i}^{\sigma_a}U_{b,\rho,j}^{\sigma_b}
 (D_cU_{c,\rho}^{\sigma_c})_k\Bigr]\,da\,db\,dc.
 \end{aligned}}
 \tag{TPR.9}
\]

The complementary derivatives satisfy

\[
 D_\ell W_\ell^s+D_\ell W_\ell^c=0.
 \tag{TPR.10}
\]

Summing `(TPR.9)` over all eight blocks and using `(TPR.3)` and
`(TPR.10)` cancels every moving incidence/projector term at the label where
it occurs.  The remaining terms are exactly

\[
 \boxed{
 \begin{aligned}
 {d\over dt}J
 =\sum_{\rho\in\mathcal A_6}\iiint
 &(\mathcal T_{abc}K^\rho)_{ijk}
 F_{a,i}^\rho G_{b,j}^\rho H_{c,k}^\rho\,da\,db\,dc\\
 +\sum_{\rho\in\mathcal A_6}\iiint
 &K^\rho_{ijk}\bigl[(D_aF_a^\rho)_iG_{b,j}^\rho H_{c,k}^\rho
 +F_{a,i}^\rho(D_bG_b^\rho)_jH_{c,k}^\rho\\
 &\hspace{40mm}
 +F_{a,i}^\rho G_{b,j}^\rho(D_cH_c^\rho)_k\bigr]
 \,da\,db\,dc.
 \end{aligned}}
 \tag{TPR.11}
\]

Equation `(TPR.11)` is exactly `(STK.19)`: both separation transports, the
moving dynamic gate, all three material leg responses, both recent-window
source endpoints, and all six receiver assignments remain.  In particular,
the current leg has the pressure-complete response

\[
 \boxed{D_\ell F^{\rm cur}=-\nabla p+\nu\Delta u,}
 \tag{TPR.11a}
\]

while each recent leg has

\[
 \boxed{
 \begin{aligned}
 D_\ell F_n^{\rm rec}
 ={}&P_{\ge r_n}Q(u(t))-\nu A F_n^{\rm rec}
 +u\cdot\nabla F_n^{\rm rec}\\
 &-\mathbf 1_{\{t>\tau_n\}}e^{-\nu\tau_nA}
 P_{\ge r_n}Q(u(t-\tau_n)),\\
 Q(u)&:=-(u\cdot\nabla)u-\nabla p.
 \end{aligned}}
 \tag{TPR.11b}
\]

Thus pressure is not removed from either role, and the present-time and
delayed endpoints of the recent window are both visible.  The first-binomial
response appears only after differentiating the source endpoint as in
`(DCT.8)`; a recent-leg material derivative is not itself identified with the
next row.  The tensor projector partition therefore has the same exact refund
law as the scalar selector/complement identity without flattening the
receiver to two labels.

For the selected tensor,

\[
 \begin{aligned}
 \mathring D_\ell W_\ell
 &:=(D_\ell W_\ell)-[\Omega_\ell,W_\ell]\\
 &=(D_\ell\chi_\ell)P_{-,\ell}
 +\chi_\ell(\mathcal R_{-,\ell}\otimes e_{-,\ell}
             +e_{-,\ell}\otimes\mathcal R_{-,\ell}),\\
 D_\ell W_\ell
 &=[\Omega_\ell,W_\ell]+\mathring D_\ell W_\ell,
 \qquad
 \mathring D_\ell P_{-,\ell}
 =\mathcal R_{-,\ell}\otimes e_{-,\ell}
  +e_{-,\ell}\otimes\mathcal R_{-,\ell}.
 \end{aligned}
 \tag{TPR.12}
\]

This is exactly `(CIF.4)`, including membership motion, rigid-frame rotation,
and contracting-line motion.  The complementary response is its negative,
as used in `(TPR.10)`.

There is also an exact objective version, but it requires the connection on
all three tensor slots.  Define

\[
 \mathring D_\ell Z:=D_\ell Z-\Omega_\ell Z,
 \qquad
 \mathring{\mathcal T}_{abc}K
 :=\mathcal T_{abc}K-\Omega_a\mathbin{\cdot_1}K
 -\Omega_b\mathbin{\cdot_2}K-\Omega_c\mathbin{\cdot_3}K,
 \tag{TPR.12a}
\]

where, for example,
\((\Omega_a\mathbin{\cdot_1}K)_{ijk}
=(\Omega_a)_{im}K_{mjk}\).  Then

\[
 \boxed{
 \mathring D_\ell(W_\ell^\sigma Z)
 =W_\ell^\sigma\mathring D_\ell Z
 +\eta_\sigma(\mathring D_\ell W_\ell)Z.}
 \tag{TPR.12b}
\]

Using `(TPR.12a)--(TPR.12b)` in every slot reproduces `(TPR.9)` exactly.
Dropping the three kernel connection terms would not be an objective rewrite
of the ordinary derivative.  Equation `(TPR.12)` retains the relative-frame
response; `(TPR.10)` shows why it cannot be counted again after selected and
complementary blocks are rejoined.

## 4. A fixed tensor block carries a compact-cutoff signed record

Let \(I\) be one record interval for the smooth compact-cutoff receiver and
suppose

\[
 A:=\int_I J(t)\,dt\ne0.
 \tag{TPR.13}
\]

Integrating `(TPR.6)` gives

\[
 A=\sum_{\sigma\in\{s,c\}^3}\int_IJ_\sigma(t)\,dt.
 \tag{TPR.14}
\]

Hence at least one fixed \(\sigma_*\), chosen once for the whole interval,
satisfies the signed estimate

\[
 \boxed{
 \operatorname{sgn}(A)\int_IJ_{\sigma_*}(t)\,dt
 \ge {|A|\over8}.}
 \tag{TPR.15}
\]

No pointwise maximum, time-dependent branch choice, or switching variation is
used.  The factor \(1/8\) is sharp for an eight-term identity: all eight
integrated blocks may equal \(A/8\).  The block is existential for this
record; the algebra does not designate one component pattern in advance.

For every canonical sharp/singular failed record, the preterminal compact
roof and bounded selector theorem `(PSL.15)--(PSL.20)` now proves that all
eight full-receiver blocks have lawful \(L_t^1\) limits and that `(TPR.6)`
survives the blockwise passage.  Therefore the canonical normalization
\(\int_IJ_n^{\rm rr}\ge A_n/16\) gives one full-six-assignment block with
integrated signed current at least \(A_n/128\), as stated in `(PSL.22)`.

There are only eight component patterns.  Therefore, for every infinite
failed-record sequence, infinite pigeonhole gives one pattern \(\sigma_*\)
and an infinite subsequence \(\mathcal N_*\) such that

\[
 \boxed{
 \int_{I_n}J_{n,\sigma_*}^{\rm rr}(t)\,dt
 \ge {A_n\over128},
 \qquad n\in\mathcal N_*.}
 \tag{TPR.15a}
\]

The component pattern is fixed on this subsequence, although the lawful
same-history projectors, incidence functions, kernels, and record scales still
belong to their corresponding records.

This is a genuine finite branch selection, but not positive ownership.  The
chosen block's integrand may change sign, and its component pattern need not
single out a contracting-line factor.  Moreover, a fixed pattern on
\(\mathcal N_*\) is not a fixed physical subspace: its same-history
projectors and incidence functions still move with the corresponding fluid
record.

## 5. Why the co-normal quantum is not yet a tensor-current bound

The co-normal does extract the signed line-motion component from
`(TPR.12)` exactly.  Put

\[
 C_{n,e}:={1\over2}(n\otimes e_-+e_-\otimes n),
 \qquad \mu=n\cdot e_-.
 \tag{TPR.16}
\]

Because \(e_-\cdot\mathcal R_-=0\), Frobenius contraction gives

\[
 \boxed{
 C_{n,e}:\mathring D_tW
 =\mu D_t\chi+\chi n\cdot\mathcal R_-.}
 \tag{TPR.16a}
\]

On the active interior \(\chi=1\), \(D_t\chi=0\), this reads precisely
\(n\cdot\mathcal R_-\), whose signed first-loss integral is `(CIF.9)`.
Across a sharp episode, `(TPR.16a)` also retains the membership atoms
\(\mu D_t\chi\); they cannot be discarded.

What fails is the next link from that exact response contraction to the
actual trilinear receiver.  After the other two legs and their kernel slots
are contracted, let \(z\) be the covector seen by one leg.  The line-motion
part of that slot is

\[
 \boxed{
 z\cdot\bigl[(\mathcal R_-\otimes e_-
              +e_-\otimes\mathcal R_-)F\bigr]
 =(e_-\cdot F)(z\cdot\mathcal R_-)
  +(\mathcal R_-\cdot F)(z\cdot e_-).}
 \tag{TPR.16b}
\]

There is no \(n\cdot\mathcal R_-\) on the right without an additional
receiver-angle relation.  For an exact operator-level calibration in three
components, take

\[
 e_-=e_1,
 \qquad \mathcal R_-=-e_2,
 \qquad n={3\over5}e_1+{4\over5}e_2.
 \tag{TPR.16c}
\]

Then \(-n\cdot\mathcal R_-=4/5>0\).  Yet choosing \(F=e_3\) makes
`(TPR.16b)` zero for every \(z\).  Choosing instead \(F=e_1\) and
\(z=e_2\) or \(z=-e_2\) gives respectively \(-1\) or \(+1\), while the
co-normal quantum is unchanged.  Hence neither a magnitude lower bound nor
a sign is forced by the tensor incidence alone.  This is a contraction
calibration, not a separately prescribed Navier--Stokes history; its role is
only to show what the algebra cannot prove without information about the
**actual** receiver orientation.

Nor is one component pattern predetermined.  At the same algebraic level,
take \(W=P_{e_1}\).  Given any \(\sigma\in\{s,c\}^3\), choose the leg in
the \(e_1\) direction when its symbol is \(s\), in the \(e_2\) direction
when it is \(c\), and choose the rank-one kernel aligned with those three
legs.  Then that chosen block is the sole nonzero block.  Thus `(TPR.15)` is
existential per record and cannot be promoted to a universal block label.

The complete eight-block sum has an even stronger exact limitation: all
three moving-projector responses cancel by `(TPR.10)`.  Therefore neither the
signed co-normal quantum nor its absolute variation can be assigned to the
full receiver in addition to the complementary block.  A useful next theorem
would have to prove, on the record-carrying fixed block itself, a receiver-
generated signed angle/coercivity estimate which also pays its complement and
all terms in `(TPR.9)`.  No such estimate follows from tensor decomposition.

Finally, \(W\) and \(I-W\) are pointwise component insertions with no
smoothing gain.  Their spatial derivatives would themselves require
control; the identity does not lower the trilinear current's critical order,
create a positive quadratic stock, or control any term in `(TPR.9)` from the
datum.  The one-eighth record statement is therefore not a datum endpoint
and supplies no new \(H^{1/2}\) or higher-row coercivity.

## 6. Exact verdict

The actual receiver has now been carried through the co-normal component
partition without a scalar-pair substitution:

\[
 \boxed{
 \begin{gathered}
 J^{(m)}=\sum_{\sigma\in\{s,c\}^3}J_\sigma^{(m)}
 \text{ for every smooth compact-cutoff receiver},\\
 \text{one fixed block carries at least one eighth with the record sign},\\
 \sum_\sigma D_tJ_\sigma^{(m)}=D_tJ^{(m)}
 \text{ with both transports, all six assignments, all leg responses,}\\
 \text{and exact moving-projector refund},\\
 \text{the preterminal compact roof proves every undifferentiated sharp block}
 \text{ in }L_t^1,\\
 \text{hence the canonical one-eighth and infinite-subsequence conclusions},\\
 \text{no receiver-angle sign or datum endpoint is created}.
 \end{gathered}}
 \tag{TPR.17}
\]

This advances the actual-receiver join and preserves Thomas's signed physical
incidence.  The undifferentiated sharp block limits are proved separately in
`thomas-preterminal-compact-roof-sharp-three-label-block-limit-and-diagonal-selection-20260804.md`.
The result does not pass the separated derivative responses, bound a
record-carrying fixed block by the co-normal quantum, prove a datum-finite
complement, establish `(TIR.37a)`, or close the MPP.
