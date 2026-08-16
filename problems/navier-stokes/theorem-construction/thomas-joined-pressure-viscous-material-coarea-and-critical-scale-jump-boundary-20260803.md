# Thomas's joined pressure--viscous material coarea and critical scale-jump boundary

**Date:** 2026-08-03

**Status:** exact same-field selector identity, exact core--complement
cancellation, and exact material scale-coarea reduction proved below. No
datum-finite bound for the surviving signed scale-jump residual is proved.
This note does not prove `(TIR.37a)` or close the MPP.

This note continues only the perfectly balanced rip-cord branch in Thomas
Birnie's one-fluid, pressure-explicit VPI/binomial method. It starts from
(BRP.19)--(BRP.38) and asks whether the extra inverse-scale quantity

\[
{m_r\over r^3}
\tag{JPC.1}
\]

can be paid by rejoining the core and complement before localization, or by a
material coarea/Hardy estimate. Pressure and viscosity remain simultaneous
parts of the same Navier--Stokes history. No positive regional ownership, no
fixed positive-volume core, and no independently prescribed scale history is
used.

The answer is sharp but not a datum payment. Equal scale weights cancel the
shared pressure--viscous collar exactly. A nonconstant inverse-scale valuation
leaves only its adjacent weight increments. Material transport then writes
those increments as one signed combination of endpoint strain,
compression-weighted entry/exit, and the strain-square term. On the exact
coasting branch, the positive strain-square occupation is refunded by the
ordered endpoint and entry/exit terms. Taking absolute values destroys that
identity.

## 1. The complete VPI curvature and its zero global moments

Let the same smooth, decaying, divergence-free history solve

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\tag{JPC.2}
\]

and use the index convention

\[
M_{ij}:=\partial_j u_i,
\qquad
\mathsf C_{ij}:=\partial_jD_tu_i
=-\partial_i\partial_jp+\nu\Delta M_{ij}.
\tag{JPC.3}
\]

Differentiating the material equation gives the exact VPI first-jet law

\[
\boxed{D_tM+M^2=\mathsf C.}
\tag{JPC.4}
\]

For a decaying whole-space field, or on the torus with the corresponding
periodic integrations, one has componentwise

\[
\int M\,dx=0,
\qquad
\int \mathsf C\,dx=0.
\tag{JPC.5}
\]

There is also the exact cancellation

\[
\boxed{
\int (M^2)_{ij}\,dx
=\int \partial_k u_i\,\partial_j u_k\,dx
=-\int u_i\,\partial_j\partial_k u_k\,dx
=0.}
\tag{JPC.6}
\]

Consequently, for every **constant** tensor \(P\),

\[
\int P:M\,dx
=\int P:M^2\,dx
=\int P:\mathsf C\,dx
=0.
\tag{JPC.7}
\]

The constancy qualification is essential. A moving or spatially varying
transverse projector produces its own frame and spatial-commutator terms; it
cannot be inserted into (JPC.7).

## 2. Exact selector identity with pressure and viscosity still joined

Let \(A(t,x)\) be a smooth tensor selector for which the following integrations
are justified. Pairing (JPC.3) with \(A\) and integrating by parts twice gives

\[
\boxed{
\int A:\mathsf C\,dx
=-\int p\,\operatorname{div}\operatorname{div}A\,dx
+\nu\int M:\Delta A\,dx.}
\tag{JPC.8}
\]

Here

\[
\operatorname{div}\operatorname{div}A
:=\partial_i\partial_jA_{ij}.
\tag{JPC.9}
\]

Equation (JPC.8) is the signed pressure--viscous collar form. The same
quantity has an exact material form. Since \(\nabla\cdot u=0\), integration of
a material derivative over the whole space introduces no Jacobian term.
Using (JPC.4),

\[
\begin{aligned}
{d\over dt}\int A:M\,dx
&=\int (D_tA):M\,dx+\int A:D_tM\,dx\\
&=\int (D_tA):M\,dx+\int A:\mathsf C\,dx
-\int A:M^2\,dx.
\end{aligned}
\tag{JPC.10}
\]

Therefore

\[
\boxed{
\int A:\mathsf C\,dx
={d\over dt}\int A:M\,dx
-\int(D_tA):M\,dx
+\int A:M^2\,dx.}
\tag{JPC.11}
\]

For a scalar selector \(\chi\) and a constant tensor \(P\), this is

\[
\boxed{
\int \chi P:\mathsf C\,dx
={d\over dt}\int\chi P:M\,dx
-\int(D_t\chi)P:M\,dx
+\int\chi P:M^2\,dx.}
\tag{JPC.12}
\]

The complementary selector \(1-\chi\) has the opposite membership term.
Adding its copy of (JPC.8) or (JPC.12) to the core copy gives zero term by
term, by (JPC.7):

\[
\boxed{
\int \chi P:\mathsf C\,dx
+\int(1-\chi)P:\mathsf C\,dx=0.}
\tag{JPC.13}
\]

Thus the shared collar cancels when core and complement carry the same
constant orientation and the same scale value. Separate absolute pressure or
viscous services would count the two sides of this one interface twice.

## 3. Discrete material coarea: only scale jumps survive

Fix a finite increasing scale list

\[
0<K_J<K_{J+1}<\cdots<K_N
\tag{JPC.14}
\]

and smooth scalar scale-state selectors satisfying

\[
\chi_j\geq0,
\qquad
\sum_{j=J}^N\chi_j=1.
\tag{JPC.15}
\]

Define the cumulative fine-scale selectors

\[
\Theta_j:=\sum_{p=j}^N\chi_p,
\qquad J<j\leq N,
\tag{JPC.16}
\]

and the adjacent scale increments

\[
\Delta K_j:=K_j-K_{j-1}>0.
\tag{JPC.17}
\]

Finite Abel summation gives the pointwise identity

\[
\boxed{
\sum_{j=J}^NK_j\chi_j
=K_J+\sum_{j=J+1}^N\Delta K_j\Theta_j.}
\tag{JPC.18}
\]

Let \(P\) be one constant transverse tensor. Pairing (JPC.18) with
\(P:\mathsf C\), and using the constant-tensor cancellation (JPC.7), gives
the exact signed scale-coarea law

\[
\boxed{
\sum_{j=J}^NK_j\int\chi_jP:\mathsf C\,dx
=\sum_{j=J+1}^N\Delta K_j
\int\Theta_jP:\mathsf C\,dx.}
\tag{JPC.19}
\]

No regional positive part occurs in (JPC.19). A flat valuation has
\(\Delta K_j=0\) and cancels. A valuation capable of reading inverse scale
retains exactly the adjacent increments.

Integrating (JPC.19) in the one physical time and using (JPC.11) gives

\[
\boxed{
\begin{aligned}
\mathfrak V_{J,N}(T)
:={}&\sum_{j=J}^NK_j
\int_0^T\!\int\chi_jP:\mathsf C\,dx\,dt\\
={}&\sum_{j=J+1}^N\Delta K_j
\Bigg\{
\left[\int\Theta_jP:M\,dx\right]_{0}^{T}
-\int_0^T\!\int(D_t\Theta_j)P:M\,dx\,dt\\
&\hspace{4.2cm}
+\int_0^T\!\int\Theta_jP:M^2\,dx\,dt
\Bigg\}.
\end{aligned}}
\tag{JPC.20}
\]

The same residual, with pressure and viscosity visibly joined, is

\[
\boxed{
\begin{aligned}
\mathfrak V_{J,N}(T)
=\sum_{j=J+1}^N\Delta K_j
\int_0^T\!\int
\left[
-p\,\operatorname{div}\operatorname{div}(\Theta_jP)
+\nu M:\Delta(\Theta_jP)
\right]dx\,dt.
\end{aligned}}
\tag{JPC.21}
\]

For the q-adic choice \(K_j=q^j\),

\[
\boxed{\Delta K_j=(1-q^{-1})K_j.}
\tag{JPC.22}
\]

Equations (JPC.20)--(JPC.22), rather than a sum of absolute regional pressure
masses, are the exact smaller residual produced by rejoining the balanced
core and complement.

### 3.1 Variable orientation is an additional residual

If \(P=P(t,x)\) varies, Abel summation gives

\[
\sum_jK_j\int\chi_jP:\mathsf C
=K_J\int P:\mathsf C
+\sum_{j>J}\Delta K_j\int\Theta_jP:\mathsf C.
\tag{JPC.23}
\]

The baseline term in (JPC.23) does not vanish in general. Moreover,

\[
D_t(\Theta_jP)
=(D_t\Theta_j)P+\Theta_jD_tP,
\tag{JPC.24}
\]

and the derivatives in (JPC.21) also hit \(P\). Even if \(D_tP=0\) along a
no-wobble material frame, spatial frame derivatives remain. The fixed-\(P\)
law (JPC.20) is therefore the best-case fixed-axis balanced branch, not a
license to delete a moving-frame commutator.

## 4. Exact coasting refund of positive strain occupation

Let \(n\) be one fixed unit transverse direction and put

\[
P=n\otimes n,
\qquad
\alpha:=P:M.
\tag{JPC.25}
\]

On the exact no-wobble eigenline \(Mn=\alpha n\),

\[
P:M^2=\alpha^2,
\qquad
P:\mathsf C=\dot\alpha+\alpha^2.
\tag{JPC.26}
\]

The transverse coasting branch has \(P:\mathsf C=0\), hence

\[
\dot\alpha=-\alpha^2.
\tag{JPC.27}
\]

For any \(C^1\) material membership weight \(\vartheta\) on a label interval
\([s,e]\), integration by parts gives the exact identity

\[
\boxed{
\int_s^e\vartheta\alpha^2\,dt
=-[\vartheta\alpha]_{s}^{e}
+\int_s^e\dot\vartheta\,\alpha\,dt.}
\tag{JPC.28}
\]

If the label is outside the selected core at both endpoints, the endpoint
term vanishes. For a sharp visit with entry \(t_{\rm in}\) and exit
\(t_{\rm out}\), (JPC.28) becomes

\[
\boxed{
\int_{t_{\rm in}}^{t_{\rm out}}\alpha^2\,dt
=\alpha(t_{\rm in})-\alpha(t_{\rm out}).}
\tag{JPC.29}
\]

When \(\alpha<0\), the right side is the increase in compression magnitude
between entry and exit. Thus the positive strain-square occupation is not a
new independent bill on the coasting branch. It is exactly refunded by the
ordered endpoint and membership terms in (JPC.20). Replacing
\(\dot\vartheta\alpha\) by \(|\dot\vartheta\alpha|\), or summing entry and exit
as separate positive services, destroys this no-recount identity.

### 4.1 Continuous compression coarea

The same cancellation has an exact continuous-scale form. Retain the
fixed-direction no-wobble eigenline and put

\[
y:=(-\alpha)_+,
\qquad
\kappa:=\sqrt{y/\nu}.
\tag{JPC.29a}
\]

On the set \(y>0\), (JPC.26) gives

\[
\begin{aligned}
\kappa\,P:\mathsf C
&={1\over\sqrt\nu}y^{1/2}(-D_ty+y^2)\\
&=-{2\over3\sqrt\nu}D_t(y^{3/2})
+{1\over\sqrt\nu}y^{5/2}.
\end{aligned}
\tag{JPC.29b}
\]

The positive-part chain rule makes (JPC.29b) valid almost everywhere through
crossings of \(\alpha=0\). Incompressibility then gives

\[
\boxed{
\begin{aligned}
\int_0^T\!\int \kappa\,P:\mathsf C\,dx\,dt
=-{2\over3\sqrt\nu}
\left[\int y^{3/2}\,dx\right]_0^T
+{1\over\sqrt\nu}\int_0^T\!\int y^{5/2}\,dx\,dt.
\end{aligned}}
\tag{JPC.29c}
\]

The last term is precisely critical: when \(y\sim\nu K^2\), the event has
volume \(m\), and its duration is \((\nu K^2)^{-1}\), it has size
\(\nu K^3m\). On exact coasting the left side of (JPC.29c) is zero, and the
critical \(L^{5/2}_{t,x}\) compression action is exactly the terminal
\(L^{3/2}_x\) compression stock increment.

Thus continuous material coarea does not turn (JPC.1) into an energy-level
payment. It turns it into a critical stock--action identity with the same
coasting cancellation. Moreover, \(\kappa\) is only the inverse heat scale
inferred from this one compression eigenvalue. Identifying it with the actual
record or mixed-tower scale still requires the missing record-to-material
bridge.

## 5. Critical scaling and the normalized recruited-label moment

Let \(K_j=r_j^{-1}\) and suppose, only for the purpose of reading the exact
size of one matched event, that on a material cohort \(A_j\) of volume \(m_j\)
and a time interval \(I_j\),

\[
|I_j|\geq{\theta_0\over\nu K_j^2},
\qquad
-\alpha\geq c_0\nu K_j^2,
\qquad
Mn=\alpha n,
\tag{JPC.30}
\]

with \(c_0,\theta_0>0\). Then (JPC.22) and (JPC.30) give

\[
\boxed{
\begin{aligned}
\Delta K_j
\int_{I_j}\!\int_{X(A_j,t)}P:M^2\,dx\,dt
&\geq
(1-q^{-1})c_0^2\theta_0\nu K_j^3m_j\\
&=(1-q^{-1})c_0^2\theta_0\nu\,{m_j\over r_j^3}.
\end{aligned}}
\tag{JPC.31}
\]

This proves exactly where the normalized recruited-label moment appears in
the signed coarea law. It does **not** lower-bound the complete residual
\(\mathfrak V_{J,N}\), because (JPC.28) puts endpoint and membership terms of
the same size and opposite bookkeeping role beside (JPC.31).

Every term in (JPC.20)--(JPC.21) is critical. Under

\[
u_r(t,x)=r^{-1}U(t/r^2,x/r),
\tag{JPC.32}
\]

one has

\[
K\sim r^{-1},\quad
M\sim r^{-2},\quad
\mathsf C\sim r^{-4},\quad
D_t\Theta\sim r^{-2},\quad
dx\,dt\sim r^5.
\tag{JPC.33}
\]

Hence

\[
K\int A:\mathsf C,
\quad
K\left[\int A:M\right],
\quad
K\int(D_tA):M,
\quad
K\int A:M^2
\tag{JPC.34}
\]

all have scale \(r^0\). In the collar form, \(p\sim r^{-2}\),
\(\nabla^2\Theta\sim r^{-2}\), and \(\Delta K\sim r^{-1}\), so both terms in
(JPC.21) also have scale \(r^0\).

The arithmetic boundary is sharp. Take the implication-test schedule

\[
K_j=q^j,
\qquad
m_j=K_j^{-3},
\qquad
|I_j|=(\nu K_j^2)^{-1},
\qquad
|\alpha_j|=\nu K_j^2.
\tag{JPC.35}
\]

Then the unweighted strain action is summable,

\[
\sum_j\int_{I_j}\!\int_{A_j}\alpha_j^2
=\nu\sum_jK_j^{-1}<\infty,
\tag{JPC.36}
\]

whereas its adjacent-scale valuation is constant per event,

\[
\boxed{
\Delta K_j
\int_{I_j}\!\int_{A_j}\alpha_j^2
=(1-q^{-1})\nu.}
\tag{JPC.37}
\]

The schedule (JPC.35) is a scaling and implication test, not a Navier--Stokes
history. It proves that the already paid unweighted material action cannot
bound the right side of (JPC.20).

## 6. Why the div--curl Hardy estimate stops at the same jump

Put

\[
\pi:=-\Delta p=\operatorname{tr}(M^2).
\tag{JPC.38}
\]

The div--curl Hardy theorem and the Riesz-transform characterization give

\[
\|\pi(t)\|_{\mathcal H^1}
+\|\nabla^2p(t)\|_{\mathcal H^1}
\leq C_{\rm dc}\|M(t)\|_2^2.
\tag{JPC.39}
\]

For a fixed-shape cumulative selector with
\(\|\Theta_jP\|_{\mathrm{BMO}}\leq C_\Theta|P|\), Hardy--BMO duality gives

\[
\boxed{
\left|\int\Theta_jP:\nabla^2p\,dx\right|
\leq C_{\rm HB}C_\Theta|P|\,\|M(t)\|_2^2.}
\tag{JPC.40}
\]

The constants in (JPC.39)--(JPC.40) do not depend on \(K_j\). But the exact
coarea coefficient does:

\[
\Delta K_j
\left|\int\Theta_jP:\nabla^2p\,dx\right|
\leq
C_{\rm HB}C_\Theta|P|\,
\Delta K_j\|M(t)\|_2^2.
\tag{JPC.41}
\]

Energy pays \(\int\|M\|_2^2dt\), not its \(\Delta K_j\)-weighted version. On
one matched event, \(\int_{I_j}\|M\|_2^2dt\sim K_j^{-1}\) and
\(\Delta K_j\sim K_j\), so (JPC.41) is order one. Hardy cancellation pays the
flat core--complement pressure read, but it does not erase the critical scale
jump.

The viscosity term in (JPC.21) has the same boundary:

\[
\nu\Delta K_j
\int (P:M)\Delta\Theta_j\,dx.
\tag{JPC.42}
\]

At matched scale, \(\Delta\Theta_j\sim K_j^2\), and (JPC.42) is again
principal order. It cancels with the complementary selector at equal scale
weight; after the inverse-scale valuation, the factor \(\Delta K_j\) remains.

## 7. Exact verdict

The signed core--complement attack proves

\[
\boxed{
\begin{aligned}
&\text{equal core/complement scale value}
&&\Longrightarrow\text{ exact pressure--viscous collar cancellation},\\
&\text{inverse-scale valuation}
&&\Longrightarrow\text{ only adjacent signed jumps }\Delta K_j,\\
&\text{material coarea}
&&\Longrightarrow\text{ endpoint }-\text{ membership }+\text{ strain square},\\
&\text{exact transverse coasting}
&&\Longrightarrow\text{ the strain square is refunded by entry/exit and endpoint}.
\end{aligned}}
\tag{JPC.43}
\]

Accordingly, \(m_r/r^3\) is not a separate positive pressure bill that must be
proved after rejoining the one fluid. It is the size of one term in the
critically valued material coarea identity. The exact surviving branch object
is the signed finite-prefix quantity on the right of (JPC.20), with all three
terms retained.

A datum-finite uniform upper bound for that signed scale-jump residual is not
proved here. Nor is the bridge proved which identifies an actual
record-carrying mixed-tower history with selectors \(\chi_j\), a constant
transverse tensor \(P\), and a bound on (JPC.20) sufficient for `(TIR.37a)`.
Those two arrows may not be inferred from (JPC.31), and (JPC.20) may not be
identified with the global first prefix without that bridge.

The mathematical advance is therefore an exact smaller boundary, not MPP
closure: positive pressure localization is removed, shared collar recount is
removed, and the only remaining balanced fixed-axis material term is the
signed adjacent-scale entry/exit--endpoint combination in (JPC.20). Energy,
Hardy pressure control, and unweighted ancestry do not bound it at critical
scaling.
