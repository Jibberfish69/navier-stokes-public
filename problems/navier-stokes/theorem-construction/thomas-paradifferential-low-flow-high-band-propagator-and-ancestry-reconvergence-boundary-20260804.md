# Thomas's paradifferential low-flow high-band propagator and ancestry-reconvergence boundary

Status: proved noncanonical exact same-history propagator identity and checked
boundary inside Thomas Birnie's one-fluid, fixed-viscosity,
pressure-explicit binomial/VPI reversible-intersection method.

This note tests one concrete continuation of the FIM static floor.  It does
not replace the signed current by a scalar model, introduce a second fluid
history, choose one preferred triad assignment, or assume a common tower
radius.  Every field below is cut from the same Navier--Stokes velocity

\[
 u=u(x,t),\qquad
 \partial_tu+\nu\Lambda^2u+\mathbb P((u\cdot\nabla)u)=0,
 \qquad \nabla\cdot u=0,
 \tag{PLF.1}
\]

with the same datum \(u_0\), viscosity \(\nu>0\), material time, and slaved
pressure.

The exact result has two parts.

1. After fixing a high output frequency \(r\) and the FIM floor
   \(a=c_{\rm st}(\nu/U_0)^{2/5}r^{4/5}\), the pressure-complete low--high
   transport and stretching operator generates an \(L^2\)-contractive
   *projected* high-band propagator with decay

   \[
    \|\mathscr U_{r,a}(t,s)\|_{2\to2}
    \le e^{-(1-\varepsilon)\nu r^2(t-s)}.
   \]

2. The actual high band of the same fluid satisfies the corresponding
   Duhamel formula with the desired two-high nonlinear source **and** one
   exact band-edge commutator.  The latter still has a physical low parent.
   Absorbing it into a full low-flow evolution loses the \(r^2\) spectral
   gap, while retaining the \(r^2\) gap leaves the commutator.  Iterating the
   \(4/5\) floor therefore does not produce a datum-paid contraction: the
   floor is a lower bound on every leg, not an upper descent law; one parent
   remains at least half the output frequency; arbitrarily recent source
   times remove any per-edge heat gain; and the ancestry reconverges.

This is an exact boundary for this proposed turn-down.  It is not a strict
reduction of the remaining signed-current payment, not `(TIR.37a)`, and not
MPP closure.

## 1. One fluid, one static floor, and the full pressure completion

Put

\[
 U_0:=\|u_0\|_2>0,
 \qquad
 a=a(r):=c_{\rm st}
 \left({\nu\over U_0}\right)^{2/5}r^{4/5}.
 \tag{PLF.2}
\]

The zero-datum branch is the zero solution.  For the nonzero branch, take
\(r\) above the fixed finite-frequency collar so that

\[
 2a<r.
 \tag{PLF.3}
\]

Let \(S_{<a}\) be the time-independent Fourier cut below \(a\), and let
\(Q_r\) be the self-adjoint Fourier projection to \(|\xi|\ge r\).  Smooth
Littlewood--Paley collars give the same statements after replacing the
displayed constants by fixed collar constants.  Define, from the same
velocity at the same physical time,

\[
 U_a(t):=S_{<a}u(t),
 \qquad H_a(t):=(I-S_{<a})u(t),
 \qquad v_r(t):=Q_ru(t)=Q_rH_a(t).
 \tag{PLF.4}
\]

There is no independent low solution and no restart in `(PLF.4)`.

For divergence-free \(f,g\), write the ordered pressure-complete interaction

\[
 \mathcal N(f,g)
 :=\mathbb P((f\cdot\nabla)g)
 =(f\cdot\nabla)g+\nabla\pi(f,g),
 \tag{PLF.5}
\]

where

\[
 \nabla\pi(f,g)
 :=-(I-\mathbb P)((f\cdot\nabla)g),
 \qquad
 \mathbb P_k=I-{k\otimes k\over |k|^2}.
 \tag{PLF.6}
\]

Thus pressure is joined to its ordered physical parent pair before any
estimate.  The complete low--high linearization is

\[
 \boxed{
 \mathcal L_a(t)z
 :=\mathcal N(U_a(t),z)+\mathcal N(z,U_a(t)).}
 \tag{PLF.7}
\]

The first term is low-flow transport and the second is low-flow stretching.
They are the two input orders.  Applying the same construction after each of
the three geometric legs is designated as output retains all six
output/input assignments of the fully recombined FIM current.  In every
assignment the output Leray projection is applied only after the ordered
physical parents are joined.  No assignment or helicity is selected.

Because the energy inequality gives \(\|u(t)\|_2\le U_0\), the low-flow
gradient obeys the exact Bernstein consequence

\[
 \|\nabla U_a(t)\|_\infty
 \le C_B U_0a^{5/2}
 =C_Bc_{\rm st}^{5/2}\nu r^2.
 \tag{PLF.8}
\]

Choose the same static constant small enough that

\[
 C_Bc_{\rm st}^{5/2}\le\varepsilon<1.
 \tag{PLF.9}
\]

This is the physical balance carried by the exponent \(4/5\): the maximum
strain available below the FIM floor is a fixed small fraction of the
viscous rate at the high parent.

## 2. Exact projected low-flow propagator

On the divergence-free range of \(Q_r\), define
\(\mathscr U_{r,a}(t,s)\) by

\[
 \partial_tz+\nu\Lambda^2z+Q_r\mathcal L_a(t)z=0,
 \qquad z(s)=z_s\in\operatorname{Ran}Q_r.
 \tag{PLF.10}
\]

The Fourier multipliers \(Q_r\), \(\mathbb P\), and \(\Lambda\) commute, and
both \(Q_r\) and \(\mathbb P\) are self-adjoint.  Therefore

\[
\begin{aligned}
 {1\over2}{d\over dt}\|z\|_2^2+\nu\|\Lambda z\|_2^2
 &=-\langle z,(U_a\cdot\nabla)z\rangle
   -\langle z,(z\cdot\nabla)U_a\rangle\\
 &=-\langle z,(z\cdot\nabla)U_a\rangle.
\end{aligned}
\tag{PLF.11}
\]

The transport term vanishes by \(\nabla\cdot U_a=0\).  Pressure contributes
zero against the divergence-free receiver, but remains present in the
evolution operator.  From `(PLF.8)--(PLF.9)` and the exact spectral gap

\[
 \|\Lambda z\|_2^2\ge r^2\|z\|_2^2,
 \tag{PLF.12}
\]

we obtain

\[
 {1\over2}{d\over dt}\|z\|_2^2
 +(1-\varepsilon)\nu r^2\|z\|_2^2\le0.
 \tag{PLF.13}
\]

Hence, in forward physical time \(s\le t\),

\[
 \boxed{
 \|\mathscr U_{r,a}(t,s)\|_{L^2\to L^2}
 \le
 e^{-(1-\varepsilon)\nu r^2(t-s)}.}
 \tag{PLF.14}
\]

This contraction is exact for the projected generator in `(PLF.10)`.  The
word *projected* cannot be removed when the propagator is applied to the
actual high band.

## 3. The actual high band and the band-edge commutator

Expanding `(PLF.1)` with \(u=U_a+H_a\), the low--low product cannot directly
reach \(Q_r\) by `(PLF.3)`, so

\[
 \partial_tv_r+\nu\Lambda^2v_r+Q_r\mathcal L_a(t)H_a
 =-Q_r\mathcal N(H_a,H_a).
 \tag{PLF.15}
\]

Insert \(H_a=Q_rH_a+(I-Q_r)H_a\).  The exact equation governed by
`(PLF.10)` is

\[
 \boxed{
 \partial_tv_r+\nu\Lambda^2v_r+Q_r\mathcal L_a(t)v_r
 =-Q_r\mathcal N(H_a,H_a)+\mathcal C_{r,a},}
 \tag{PLF.16}
\]

where the sign and the projector commutator are

\[
 \boxed{
 \begin{aligned}
 \mathcal C_{r,a}
 &:=Q_r[\mathcal L_a,Q_r]H_a\\
 &=-Q_r\mathcal L_a(I-Q_r)H_a.
 \end{aligned}}
 \tag{PLF.17}
\]

There is no Leray commutator because \([Q_r,\mathbb P]=0\); the pressure
completion nevertheless occurs inside every term of \(\mathcal L_a\).  The
nonzero commutator in `(PLF.17)` is caused by multiplying by the same
low-frequency velocity \(U_a\).

Consequently the exact one-history Duhamel formula is

\[
\begin{aligned}
 v_r(t)
 &=\mathscr U_{r,a}(t,s)v_r(s)\\
 &\quad+\int_s^t\mathscr U_{r,a}(t,\tau)
 \left[-Q_r\mathcal N(H_a,H_a)+\mathcal C_{r,a}\right](\tau)d\tau,
 \qquad s\le\tau\le t.
\end{aligned}
\tag{PLF.18}
\]

The first forcing in `(PLF.18)` has exactly the desired parent property:
both physical inputs are in \(H_a\), hence both are at frequency at least
\(a\), both orders remain present, and their simultaneous output pressure is
retained.  Repeating this statement for each designated output leg gives the
same property across all six assignments.

The full remaining forcing does **not** have that property, because of
\(\mathcal C_{r,a}\).  Its Fourier support makes the obstruction exact.  If
\(p\) is the low-flow leg, \(q\) is the intermediate high leg, and
\(k=p+q\) is the output, a nonzero sharp-cutoff commutator has

\[
 |p|<a,\qquad a\le|q|<r,
 \qquad |k|\ge r.
 \tag{PLF.19}
\]

The triangle inequality then forces

\[
 r-a<|q|<r,
 \qquad r\le|k|<r+a.
 \tag{PLF.20}
\]

Thus `(PLF.17)` is precisely the leave/re-enter band-edge transfer: a mode
just below the high cut joins the low flow and re-enters just above that cut.
It is pressure-complete and belongs to the same fluid history, but one of its
physical parents is below \(a\).  Calling all of `(PLF.18)` a two-high source
would erase this term.

## 4. The exact propagator trilemma

The band-edge term is not a defect of notation.  The three available energy
organizations are:

1. **Keep the output cut at \(r\).**  The projected generator
   \(Q_r\mathcal L_aQ_r\) has the exact \(r^2\) gap and `(PLF.14)`, but the
   actual equation contains `(PLF.17)`.

2. **Absorb every low-flow crossing.**  Evolve the whole state above \(a\)
   under the unprojected low-flow linearization.  The commutator at \(r\) is
   then internal to the evolution, but its direct energy gap is only
   \(\nu a^2\), not \(\nu r^2\).

3. **Enlarge the state just below \(r\).**  This absorbs the current
   band-edge crossing, but creates the same commutator at the new lower edge.
   Iterating until all low-flow crossings are internal reaches the scale
   \(a\) and therefore the second case.

Equivalently, if \(z\) is evolved by the full low-flow operator rather than
the projected one, the high-band energy contains the uncontrolled inflow

\[
 -\left\langle Q_rz,
 Q_r\mathcal L_a(I-Q_r)z\right\rangle,
 \tag{PLF.21}
\]

which is the same commutator as `(PLF.17)`.  Therefore incompressibility and
the bound \(\|\nabla U_a\|_\infty\le\varepsilon\nu r^2\) alone do not give an
exact closed \(r\)-band evolution whose only forcing has two parents above
\(a\).  Such a statement requires a new band-edge reconvergence theorem.

## 5. What the \(4/5\) ancestry law actually says

For a pressure-complete nonlinear forcing triad with output magnitude at
least \(r\), the FIM floor gives

\[
 \min(|p|,|q|)\ge a(r)
 =c_*r^{4/5},
 \qquad
 c_*:=c_{\rm st}\left({\nu\over U_0}\right)^{2/5}.
 \tag{PLF.22}
\]

If another leg is the maximum-frequency output in the symmetric FIM
incidence, its floor is at least as strong.  But the same triad identity
\(k=p+q\) also gives

\[
 \boxed{\max(|p|,|q|)\ge {|k|\over2}\ge {r\over2}.}
 \tag{PLF.23}
\]

The \(4/5\) scale is therefore a **lower admission floor for both parents**,
not an upper replacement scale for either parent.  One high spine remains at
least half the child scale, and fully local triads with all three legs
comparable to \(r\) satisfy the FIM floor.

If one follows only the smallest parent permitted by `(PLF.22)`, the formal
recursion

\[
 r_{j+1}=c_*r_j^{4/5}
 \tag{PLF.24}
\]

has the exact solution

\[
 r_j=c_*^{\,5(1-(4/5)^j)}r_0^{(4/5)^j}
 \longrightarrow c_*^5.
 \tag{PLF.25}
\]

This reaches the fixed finite scale after \(O(\log\log r_0)\) formal minimal
steps.  It does not describe the other parent in `(PLF.23)`, and it is not a
binary descent rule for the actual ancestry.  Treating both parents as if
they were equal to the lower floor reverses the direction of the FIM
inequality.

## 6. No datum-paid contraction from heat age or tree counting

The projected heat factor on an ancestry edge born at time \(\tau\) and read
at \(t\) is

\[
 e^{-(1-\varepsilon)\nu r^2(t-\tau)}.
 \tag{PLF.26}
\]

The exact physical order is \(s\le\tau\le t\), but the source can be created
with \(t-\tau\downarrow0\).  Hence `(PLF.26)` can approach one.  The canonical
recent-parent localization supplies shrinking recent windows; it supplies no
positive lower heat age on every edge.  The propagator decay therefore gives
no uniform factor \(\theta<1\) per ancestry generation.

The surviving local branch is also critical.  At one band \(r\), if
\(b_r=\|u_r\|_2\), Bernstein and one derivative give the scale

\[
 \|Q_r\mathcal N(u_r,u_r)\|_2
 \lesssim r^{5/2}b_r^2.
 \tag{PLF.27}
\]

Integrating over one viscous time contributes \((\nu r^2)^{-1}\), so the
critical output amplitude obeys only

\[
 r^{1/2}\|B_r(u_r,u_r)\|_2
 \lesssim {1\over\nu}(r^{1/2}b_r)^2.
 \tag{PLF.28}
\]

There is no decaying power of \(r\).  This is exactly covariant under the
fixed-viscosity Navier--Stokes scaling

\[
 u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
 \qquad U_{0,\lambda}=\lambda^{-1/2}U_0,
 \qquad r_\lambda=\lambda r,
 \tag{PLF.29}
\]

because

\[
 a_\lambda=\lambda a,
 \qquad
 r_\lambda^{1/2}\|(u_\lambda)_{r_\lambda}\|_2
 =r^{1/2}\|u_r\|_2,
 \qquad
 \nu r_\lambda^2(t_\lambda-\tau_\lambda)
 =\nu r^2(t-\tau).
 \tag{PLF.30}
\]

Finally, the ancestry is a reconvergent network, not a disjoint tree.  The
same Fourier mode can supply several later incidences; the three output
assignments share the same geometric triad; sidebands created on different
paths can join again; and `(PLF.17)` crosses every artificial high-band edge.
Consequently no \(2^j\) leaf count or independent datum charge is licensed.
The signed VPI current must remain recombined before any charge is taken.

## 7. Exact verdict

What is now proved is

\[
 \boxed{
 \begin{gathered}
 \text{FIM static floor}
 \Longrightarrow
 \text{pressure-complete projected low-flow decay at rate }
 (1-\varepsilon)\nu r^2,\\
 \text{actual one-history high band}
 =\text{that propagator acting on a two-high source}
 +\text{the exact band-edge commutator}.
 \end{gathered}}
 \tag{PLF.31}
\]

The direct \(4/5\)-ancestry iteration is blocked at two named, exact places:

\[
 \boxed{
 \begin{aligned}
 &\text{band-edge reconvergence: }
 Q_r[\mathcal L_a,Q_r]H_a,\\
 &\text{critical recent local ancestry: }
 \max(|p|,|q|)\ge r/2,
 \quad t-\tau\downarrow0.
 \end{aligned}}
 \tag{PLF.32}
\]

Thus this route has produced an exact propagator identity and a checked
obstruction to the proposed automatic contraction.  It has not paid the
`(TIR.37a)` signed-current prefix and therefore has not activated the
already-proved first-prefix-to-complete-intersection implication from the
datum; it has not closed the MPP.  A continuation inside Thomas's method must
control the recombined signed band-edge throughput or prove a genuinely new
positive-age/reconvergence law without splitting the one fluid into
independent ancestry branches.
