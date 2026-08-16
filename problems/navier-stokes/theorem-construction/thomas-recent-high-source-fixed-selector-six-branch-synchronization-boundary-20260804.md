# Thomas's recent-high-source fixed-selector six-branch synchronization boundary

Status: proved noncanonical join inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method. This note joins
the recent-source heat-lag theorem `(RHL.27)--(RHL.41)` to the complete
fixed-selector supplier identity `(SFJ.23)--(SFJ.40)` and the signed endpoint
trichotomy `(HES.25)--(HES.26)`.

The same fixed-viscosity Navier--Stokes history is used throughout. The recent
high source, the later recruited velocity parents, the favorable/adverse
strain regions, every finite chord, the pressure heat defect, and both signed
heat-age endpoints are readings of that one continuing field. No source,
selector, endpoint, or record is independently reinitialized.

The exact advance is a source-time pullback of the selected RHL edge/interior
pulse. On the interior branch it remains inside the same record. It forces a
large positive weight on the earlier, fully joined SFJ source port inside the
first-binomial supplier

\[
 \mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}-\mathfrak X
 =\mathcal B_{\rm ha}'+\mathcal Y_\zeta
 ={b^2\over2\nu}.
\]

This yields a weighted signed alternative between the joined residual and the
complete heat-age derivative. It does not yield one of the unweighted HES
endpoint/residual alternatives: the RHL weight is nonconstant and may be
singular at zero heat age, so the derivative does not telescope to
\(\mathcal K_Q(t_n)\) or \(\mathcal B_{\rm ha}(s_n)\). On the RHL edge branch,
the recruited source may also precede the current record.

Consequently the exact record-level result is Cartesian:

\[
 (\text{RHL edge}\ \hbox{or}\ \text{RHL interior})
 \quad\hbox{and}\quad
 (\text{K endpoint}\ \hbox{or}\ \text{B endpoint}\ \hbox{or}\
 \text{joined residual}).
\]

There are six possible co-occurrences. No fraction of the RHL action is
assigned to one HES branch, and no new datum cancellation, strict reduction,
`(TIR.37a)`, or MPP closure is proved.

## 1. The two exact inputs on one canonical record

Assume failure of `(TIR.37a)` and retain the canonical records

\[
 I_n=(s_n,t_n),
 \qquad A_n=4^nA_0,
 \qquad \mathcal F_n\subset I_n.
 \tag{RFS.1}
\]

Write

\[
 Z_w(t):=\|\Lambda w(t)\|_2^2,
 \qquad
 b_R(t):=\|P_{\ge R}\Lambda^{-1/2}Q(u(t))\|_2.
 \tag{RFS.2}
\]

The RHL theorem supplies \(R_n=K_n/4\to\infty\), a lag \(\tau_n\to0\),
and

\[
 \mathfrak A_n(t)
 :=\int_0^{\min\{\tau_n,t\}}
 \kappa_{R_n}(a)b_{R_n}(t-a)\,da,
 \qquad
 \kappa_R(a):=\sup_{\rho\ge R}\rho^{3/2}e^{-\nu a\rho^2},
 \tag{RFS.3}
\]

such that

\[
 \boxed{
 \int_{\mathcal F_n}Z_w(t)\mathfrak A_n(t)^2dt
 \ge c_{\rm age}\nu A_n.}
 \tag{RFS.4}
\]

Split the same pulse at its left-record heat age:

\[
 \begin{aligned}
 \mathcal F_n^{\rm edge}
 &:=\mathcal F_n\cap(s_n,s_n+\tau_n),\\
 \mathcal F_n^{\rm int}
 &:=\mathcal F_n\cap[s_n+\tau_n,t_n).
 \end{aligned}
 \tag{RFS.5}
\]

The integrand in `(RFS.4)` is nonnegative. Hence at least one
\(\sigma_n\in\{\mathrm{edge},\mathrm{int}\}\) obeys

\[
 \boxed{
 \int_{\mathcal F_n^{\sigma_n}}
 Z_w(t)\mathfrak A_n(t)^2dt
 \ge {c_{\rm age}\over2}\nu A_n.}
 \tag{RFS.6}
\]

Independently, define the HES record scale

\[
 L_n:={\nu^2A_n^2\over16(A_n+H_0)}.
 \tag{RFS.7}
\]

The exact joined endpoint identity is

\[
 \boxed{
 \mathcal K_Q(t_n)
 -2\nu^2\mathcal B_{\rm ha}(s_n)
 +2\nu^2\int_{I_n}\mathcal Y_\zeta(t)dt
 \ge L_n,}
 \tag{RFS.8}
\]

where

\[
 \begin{aligned}
 \mathcal K_Q&=R_Q+2\nu^2\mathcal B_{\rm ha},\\
 \mathcal B_{\rm ha}&=\mathcal A_\zeta+\mathcal F_\zeta,\\
 \mathcal Y_\zeta
 &=\mathcal S_\zeta+\mathcal E_\zeta-\mathfrak X.
 \end{aligned}
 \tag{RFS.9}
\]

Thus every record has at least one HES label
\(\chi_n\in\{\mathrm K,\mathrm B,\mathrm Y\}\) satisfying

\[
 \boxed{
 \begin{array}{ll}
 \chi_n=\mathrm K:
 &\displaystyle \mathcal K_Q(t_n)\ge {L_n\over3},\\[2mm]
 \chi_n=\mathrm B:
 &\displaystyle \mathcal B_{\rm ha}(s_n)
 \le-{L_n\over6\nu^2},\\[2mm]
 \chi_n=\mathrm Y:
 &\displaystyle \int_{I_n}\mathcal Y_\zeta(t)dt
 \ge {L_n\over6\nu^2}.
 \end{array}}
 \tag{RFS.10}
\]

Equations `(RFS.6)` and `(RFS.10)` hold on the same record. They do not yet
identify a coupling between their labels.

## 2. Pull the recent high source back to its physical source time

Let

\[
 k_n:=\int_0^{\tau_n}\kappa_{R_n}(a)da
 \le {C_k\over\nu\sqrt{R_n}}.
 \tag{RFS.11}
\]

For either \(\sigma\in\{\mathrm{edge},\mathrm{int}\}\), define the
nonnegative source-time weight

\[
 \boxed{
 \Omega_n^\sigma(r)
 :=\int_{\substack{t\in\mathcal F_n^\sigma\\
                    0<t-r<\tau_n}}
 \kappa_{R_n}(t-r)Z_w(t)\,dt,}
 \qquad 0<r<T_*.
 \tag{RFS.12}
\]

Weighted Cauchy--Schwarz in heat age gives

\[
 \mathfrak A_n(t)^2
 \le k_n\int_0^{\min\{\tau_n,t\}}
 \kappa_{R_n}(a)b_{R_n}(t-a)^2da.
 \tag{RFS.13}
\]

Multiplying by \(Z_w(t)\), integrating on the selected pulse half, and then
using Fubini with \(r=t-a\) proves the exact pullback

\[
 \begin{aligned}
 &\int_{\mathcal F_n^{\sigma_n}}
 Z_w(t)\mathfrak A_n(t)^2dt\\
 &\qquad\le k_n
 \int_0^{T_*}\Omega_n^{\sigma_n}(r)b_{R_n}(r)^2dr.
 \end{aligned}
 \tag{RFS.14}
\]

Equations `(RFS.6)`, `(RFS.11)`, and `(RFS.14)` yield

\[
 \boxed{
 \int_0^{T_*}\Omega_n^{\sigma_n}(r)b_{R_n}(r)^2dr
 \ge {c_{\rm age}\over2C_k}
 \nu^2A_n\sqrt{R_n}.}
 \tag{RFS.15}
\]

This is still one source and one later receiver in the same Duhamel history.
The weight \(\Omega_n^\sigma\) records their actual heat-age incidence; it is
not an independent supplier.

On the interior branch, every contributing source time remains in the same
record:

\[
 \boxed{
 \sigma_n=\mathrm{int}
 \quad\Longrightarrow\quad
 \operatorname{supp}\Omega_n^{\rm int}\subset I_n.}
 \tag{RFS.16}
\]

On the edge branch, source times with \(r<s_n\) are allowed. Thus an edge
pulse does not give a same-record source-time localization.

## 3. The pulled-back source is exactly the joined SFJ source port

The pressure-complete high tail obeys \(b_{R_n}^2\le b^2\). The exact SFJ
identity, before any strain-region or chord is separated, is

\[
 \boxed{
 \begin{aligned}
 \Xi_\zeta
 &:={b^2\over2\nu}\\
 &=\mathfrak R_\zeta^{\rm sh}
  +\mathfrak R_\zeta^{\rm fc}-\mathfrak X\\
 &=\mathcal B_{\rm ha}'+\mathcal Y_\zeta.
 \end{aligned}}
 \tag{RFS.17}
\]

This is the positive source port inside, but not identical to, the complete
first-binomial supplier:

\[
 \Xi_\zeta={J_Q-R_Q'\over2\nu^2},
 \qquad
 J_Q=R_Q'+2\nu^2\Xi_\zeta.
 \tag{RFS.17a}
\]

The RHL pullback below localizes \(\Xi_\zeta\). It does not remove or assign
the signed source-storage derivative \(R_Q'\).

Here

\[
 \begin{aligned}
 \mathfrak R_\zeta^{\rm sh}
 &=D\mathcal A_\zeta(u)[Q(u)],\\
 \mathfrak R_\zeta^{\rm fc}
 &=D\mathcal F_\zeta(u)[Q(u)],\\
 \mathcal B_{\rm ha}'
 &=\mathfrak R_\zeta^{\rm sh}
  +\mathfrak R_\zeta^{\rm fc}
  -\mathcal P_{1/2},\\
 \mathcal P_{1/2}
 &=\mathcal S_\zeta+\mathcal E_\zeta.
 \end{aligned}
 \tag{RFS.18}
\]

Thus favorable and adverse strain regions remain inside the one signed
\(\mathcal S_\zeta\) bracket; every finite chord remains inside
\(\mathcal E_\zeta\) and \(\mathfrak R_\zeta^{\rm fc}\); and the complete
pressure heat defect remains \(-\mathfrak X\). None can be clipped before
`(RFS.17)`.

Since \(\Omega_n^{\sigma_n}\ge0\), `(RFS.15)--(RFS.17)` give the new joined
source-port localization

\[
 \boxed{
 \begin{aligned}
 &\int_0^{T_*}\Omega_n^{\sigma_n}(r)
 \left(
 \mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}-\mathfrak X
 \right)(r)dr\\
 &\qquad=
 \int_0^{T_*}\Omega_n^{\sigma_n}(r)
 \left(\mathcal B_{\rm ha}'+\mathcal Y_\zeta\right)(r)dr\\
 &\qquad\ge c_\Xi\nu A_n\sqrt{R_n},
 \qquad
 c_\Xi:={c_{\rm age}\over4C_k}>0.
 \end{aligned}}
 \tag{RFS.19}
\]

This is a genuine localization of the RHL ancestry inside the complete SFJ
source port used by the supplier identity. It is positive only after every
signed strain, chord, and pressure heat-defect contribution has recombined.

Equation `(RFS.19)` gives the weighted signed alternative

\[
 \boxed{
 \begin{array}{ll}
 \displaystyle
 \int\Omega_n^{\sigma_n}\mathcal Y_\zeta
 \ge {c_\Xi\over2}\nu A_n\sqrt{R_n},
 &\text{or}\\[3mm]
 \displaystyle
 \int\Omega_n^{\sigma_n}\mathcal B_{\rm ha}'
 \ge {c_\Xi\over2}\nu A_n\sqrt{R_n}.
 \end{array}}
 \tag{RFS.20}
\]

The integrals in `(RFS.20)` are over \((0,T_*)\); on the interior branch
they are supported in \(I_n\) by `(RFS.16)`.

## 4. Why the weighted alternative does not select an HES branch

The residual alternative in `(RFS.20)` is weighted by
\(\Omega_n^{\sigma_n}\). Since \(\mathcal Y_\zeta\) has no fixed sign, a
large positive weighted integral gives no lower bound for the unweighted
\(\int_{I_n}\mathcal Y_\zeta\) in `(RFS.10)`.

The derivative alternative does not telescope to the HES endpoints. Even on
the interior branch, a formal integration by parts gives

\[
 \int_{I_n}\Omega_n^{\rm int}\mathcal B_{\rm ha}'
 =[\Omega_n^{\rm int}\mathcal B_{\rm ha}]_{s_n}^{t_n}
 -\int_{I_n}(\Omega_n^{\rm int})'\mathcal B_{\rm ha}.
 \tag{RFS.21}
\]

Neither term on the right is controlled by RHL. The weight contains the
terminal kernel

\[
 \kappa_{R_n}(a)\lesssim
 \nu^{-3/4}a^{-3/4}e^{-\nu R_n^2a/2},
 \tag{RFS.22}
\]

and the characteristic function of the threshold-defined pulse set. It is not
known to be absolutely continuous or uniformly bounded. After regularization,
its derivative contains an \(a^{-7/4}\) terminal singularity plus pulse-set
boundary terms. Formula `(RFS.21)` is therefore only formal at the available
regularity; making it rigorous introduces new uncontrolled terms rather than
the HES endpoints.

This is exactly where the two identities differ:

\[
 \begin{aligned}
 &\text{HES: unweighted physical-time telescope on the whole }I_n,\\
 &\text{RHL--SFJ: heat-incidence-weighted source response on }
   \mathcal F_n^{\sigma_n}.
 \end{aligned}
 \tag{RFS.23}
\]

No lawful cancellation turns the second line into the first without a new
weighted endpoint or commutator estimate.

## 5. The exact six-cell record localization

For every sufficiently large failed record, choose any
\(\sigma_n\) satisfying `(RFS.6)` and any \(\chi_n\) satisfying
`(RFS.10)`. Then

\[
 \boxed{
 (\sigma_n,\chi_n)
 \in
 \{\mathrm{edge},\mathrm{int}\}
 \times\{\mathrm K,\mathrm B,\mathrm Y\},}
 \tag{RFS.24}
\]

with both corresponding quantitative inequalities holding on that same
record. Equivalently, every record lies in at least one of the six cells

\[
 \begin{matrix}
 (\mathrm{edge},\mathrm K)&(\mathrm{edge},\mathrm B)&
 (\mathrm{edge},\mathrm Y)\\
 (\mathrm{int},\mathrm K)&(\mathrm{int},\mathrm B)&
 (\mathrm{int},\mathrm Y).
 \end{matrix}
 \tag{RFS.25}
\]

If infinitely many failed records exist, the finite pigeonhole principle
gives an infinite subsequence with one fixed pair `(RFS.24)`.

This is co-occurrence, not allocation. The entire RHL action remains the
recent-parent synchronization in `(RFS.6)`, while the HES label remains a
signed endpoint or unweighted residual reading of `(RFS.8)`. Calling one a
fixed fraction of the other would invent a common positive currency not
present in either exact identity.

## 6. Exact algebraic sharpness test for branch selection

The failure to select one HES branch is already sharp at the level of the
joined identities. Fix one interval \(I=(s,t)\), a nonnegative function

\[
 f(r):={b(r)^2\over2\nu},
 \qquad
 F:=\int_I f(r)dr,
 \tag{RFS.26}
\]

and retain exactly

\[
 \mathcal Y_\zeta=f-\mathcal B_{\rm ha}'.
 \tag{RFS.27}
\]

Set \(R_Q(t)=0\), so
\(\mathcal K_Q(t)=2\nu^2\mathcal B_{\rm ha}(t)\). The same \(f\), and hence
the same full source-square scalar entering the inspected SFJ/HES identity,
admits all three exact algebraic allocations:

1. **Residual allocation.** Let \(\mathcal B_{\rm ha}\equiv0\). Then
   \(\mathcal Y_\zeta=f\), and the whole value is the joined residual.
2. **K allocation.** Let \(\mathcal B_{\rm ha}(s)=0\) and
   \(\mathcal B_{\rm ha}'=f\). Then \(\mathcal Y_\zeta=0\),
   \(\mathcal B_{\rm ha}(t)=F\), and
   \(\mathcal K_Q(t)=2\nu^2F\).
3. **B allocation.** Let \(\mathcal B_{\rm ha}(s)=-F\) and
   \(\mathcal B_{\rm ha}'=f\). Then \(\mathcal Y_\zeta=0\),
   \(\mathcal B_{\rm ha}(t)=0\), and \(\mathcal K_Q(t)=0\).

In every case,

\[
 \boxed{
 \mathcal K_Q(t)-2\nu^2\mathcal B_{\rm ha}(s)
 +2\nu^2\int_I\mathcal Y_\zeta
 =2\nu^2F.}
 \tag{RFS.28}
\]

Thus the same positive joined source port can appear entirely in any one HES
coordinate without changing the full source-square scalar entering the
inspected identity. This is an algebraic
insufficiency test for the implication from the inspected identities. It is
not asserted to be a Navier--Stokes history. The exact pressure-complete
\(2D3C\) Navier--Stokes family in `(SFJ.38)--(SFJ.42)` separately confirms
that the supplier and joined residual have no universal true-equation sign;
it is not promoted to a recurrent-record counterexample.

## 7. Exact verdict

The new proved identity/localization is `(RFS.12)--(RFS.20)`:

\[
 \boxed{
 \text{recent high-source ancestry}
 \Longrightarrow
 \text{large heat-incidence-weighted complete SFJ source port}.}
 \tag{RFS.29}
\]

The HES trichotomy still holds simultaneously, producing the six-cell
co-occurrence `(RFS.24)--(RFS.25)`. But RHL supplies no new cancellation that
chooses K, B, or the unweighted joined residual. The unresolved bridge would
be a datum-controlled weighted endpoint/commutator law strong enough to turn
`(RFS.20)` into the unweighted HES identity without splitting favorable from
adverse strain, deleting finite chords, or separating the pressure heat
defect.

This note proves a new exact localization and a checked identity-level
nonselection boundary. It does not prove a strict reduction,
`(TIR.37a)`, or the MPP.
