---
theorem_id: mpp-four-body-endpoint-donor-closure-branch-solution-20260621
status: branch-solution-endpoint-annular-nojump-and-donor-total-cycle-admission-or-part-exit
logical_landing_node: endpoint_donor_closure_branch_solution
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-discarded-partner-bridge-rework-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-endpoint-nojump-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Endpoint Atom / Donor Closure Branch Solution

Date: 2026-06-21

Update: 2026-06-22

## 0. Target

The discarded-partner bridge leaves exactly two unpaid pieces:

```math
[-\partial_\sigma M_\sigma]_+
\qquad\text{and}\qquad
\mathcal Z_{\rm donor}.
```

The target is the branch theorem

```math
\boxed{
[-\partial_\sigma M_\sigma]_+ + \mathcal Z_{\rm donor}
\leadsto A_{4B}
}
```

unless the same retained witness exits through a CM face:

```math
Pack_Q+\neg Part_{N,Q}
```

or

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
```

This solves the endpoint/donor branch at the level needed by the four-body bridge. It does not assert a no-exit Clay conclusion. It states that the two remaining residues are paid or consumed by the declared CM exits.

The 2026-06-22 transported-annular update strengthens the endpoint half.  A
center/time storage overlap is now restored to the same material outer-annulus
stress/strain carrier and counted inside \(A_{4B}\) on the fixed transported
annular atlas.  The older daughter/Field split remains a fallback description,
but the no-exit four-body branch uses the transported annular no-jump route.

## 1. EndpointAtomDaughterOrFieldExit.A

Let

```math
d\mu_m^M
:=d[-\partial_\sigma M_m]_+ + dR_m^{term}
```

be the endpoint storage defect measure after subtracting retained negative countertrace, visible viscous loss, legal exits, and already-paid four-body channels.

The desired no-jump estimate is

```math
\lim_{\theta\downarrow0}\limsup_m \mu_m^M(( -\theta,0])=0.
```

Assume the contrary. Then there are \(a_0>0\), \(\theta_k\downarrow0\), and \(m_k\) such that

```math
\mu_{m_k}^M(( -\theta_k,0])\ge a_0.
```

Normalize the terminal strip by

```math
s=\theta_k\tau,\qquad \tau\in(-1,0],
```

and define

```math
d\widehat\mu_k(\tau)
=
{1\over \mu_{m_k}^M(( -\theta_k,0])}
\,d\mu_{m_k}^M(\theta_k\tau).
```

Then \(\widehat\mu_k((-1,0])=1\). After passing to a subsequence,

```math
\widehat\mu_k\stackrel{*}{\rightharpoonup}\widehat\mu_*.
```

### Case 1: positive thickness survives

If there is \(\delta>0\) with

```math
\widehat\mu_*((-1,-\delta])>0,
```

then the endpoint residue creates a terminal daughter candidate with positive
time thickness.

The word daughter is used in the parabolic sense.  A realized daughter has
coordinates

```math
\widehat V_k(\tau,z)
=
\sqrt{\theta_k}\,
V_{m_k}(\theta_k\tau,y_k+\sqrt{\theta_k}z),
\qquad
\widehat Q_k(\tau,z)
=
\theta_k\,
Q_{m_k}(\theta_k\tau,y_k+\sqrt{\theta_k}z),
```

on a retained same-carrier subpacket.  This keeps the Navier-Stokes law in
the same normalized form.  If no such same-carrier parabolic daughter can be
selected from the positive-thickness mass, then the residue has no coherent
positive Field scale and already lands in

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
```

Otherwise the realized daughter has positive four-body carried activity:

```math
A_{4B}^{daughter}>0.
```

The closed four-body loop applies to this daughter packet. Hence the daughter
residue is admitted into the daughter four-body package:

```math
A_{4B}^{daughter},
```

or the daughter is a zero-loss full packet. In the zero-loss branch, the installed full-packet rigidity gives a Galilean/affine-pressure gauge packet, and the selected full-packet activity vanishes. This contradicts \(A_{4B}^{daughter}>0\).

Thus positive-thickness endpoint residue is admitted into the four-body
activity package, whose legal/collar/tail channels are internal, unless daughter
realization itself fails and therefore gives the Field exit.

### Case 2: pure endpoint atom

If no positive thickness survives, then

```math
\widehat\mu_* = \delta_0.
```

This is precisely a terminal face, not a field across any positive time thickness. For every \(r>0\), the retained object has no positive coherent Field scale:

```math
\forall r>0\,\neg Field_{N,r,Q}.
```

Since the packet is still on the same Pack/Part witness up to the endpoint face, the CM landing is

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
```

Therefore

```math
\boxed{
[-\partial_\sigma M_\sigma]_+
\leadsto A_{4B}
}
```

unless the endpoint atom is consumed as the Field exit above.

## 2. DonorRankDescentOrPartExit.A

Let \(G_D=(V_D,E_D)\) be the finite retained donor graph after selector/collar stabilization and finite signed-saturation routing. A donor node records an unpaid negative partner required to cancel a native positive channel-first contribution. Let \(m_v(\sigma)\ge0\) be the donor mass at node \(v\).

Assigning a rank is not free.  It means the stabilized donor quotient has been
oriented as a finite acyclic unpaid-transfer graph after retained partners and
legal exits are removed.  If that orientation cannot be made, then the failed
orientation already contains a zero-descent circulation with no retained signed
partner, no rank descent, and no legal exit; that is the Part exit below.

On the oriented branch, assign a rank

```math
\rho:V_D\to\mathbb N
```

so that every unpaid donor transfer either exits legally, enters a retained signed partner, or moves to a strictly lower rank. Define

```math
\mathcal R_D(\sigma)=\sum_{v\in V_D}\rho(v)m_v(\sigma).
```

The local donor balance has the form

```math
\mathcal Z_{\rm donor}(\sigma)
\le
-\partial_\sigma\mathcal R_D(\sigma)
+C A_{4B}(\sigma)
```

as long as every unpaid transfer is rank-decreasing or paid by a retained partner/legal exit. Integrating gives a telescoping payment because \(\mathcal R_D\ge0\):

```math
\int \mathcal Z_{\rm donor}
\le
\mathcal R_D(\sigma_0)+C\int A_{4B}.
```

This pays the finite-rank donor residue.

Here \(A_{4B}\) is the whole oriented four-body package, so retained signed
partners and legal exits are both internal channels of the same object.

The only remaining donor obstruction is an infinite zero-descent chain. Since
the retained donor graph is finite after stabilization, an infinite chain
contains a directed zero-rank cycle.

At this point the net/total distinction matters.  A directed zero-rank cycle can
have zero signed net contribution around the loop while still carrying positive
total exchange.  Let \(J_e(\sigma)\) be the signed donor exchange on an edge of
the stabilized cycle \(\mathcal C\).  Define the same-cycle total exchange by

```math
\mathcal A_{\mathcal C}^{tot}(\sigma)
:=
\sum_{e\in\mathcal C}|J_e(\sigma)|.
```

The donor residue on that cycle is bounded by the positive exchange on the
cycle, hence by the total exchange:

```math
\mathcal Z_{\rm donor}^{\mathcal C}(\sigma)
\le
\sum_{e\in\mathcal C}[J_e(\sigma)]_+
\le
\mathcal A_{\mathcal C}^{tot}(\sigma).
```

So a zero-rank cycle is not automatically a free donor branch.  If the cycle is
realized on the same retained full packet, this total exchange is exactly a
Body-III signed-current relay defect or a retained selector/partner defect.  In
the Body-III notation it is charged through \(K_{C,J}^+\), \(K_{\rm sel}\), or
the corresponding same-packet positive relay term, and therefore belongs to
\(A_{4B}\):

```math
\mathcal Z_{\rm donor}^{\mathcal C}(\sigma)
\le
C\,A_{4B}(\sigma).
```

Thus the zero-rank cycle is consumed by the four-body object whenever the cycle
is actually a same-solution full-packet exchange.  It becomes a CM Part exit
only when that same-packet realization fails: the selected native source keeps
its positive receiver but the corresponding pressure-viscosity-incompressibility
velocity participation record is not retained on the same carrier.

The CM landing is

```math
Pack_Q+\neg Part_{N,Q}.
```

Therefore

```math
\boxed{
\mathcal Z_{\rm donor}
\leadsto A_{4B}
}
```

unless the residue is consumed as the Part exit above.

## 3. Combined closure

Adding the two branch lemmas gives

```math
\boxed{
[-\partial_\sigma M_\sigma]_+ + \mathcal Z_{\rm donor}
\leadsto A_{4B}
}
```

outside the two CM exits:

```math
Pack_Q+\neg Part_{N,Q}
```

and

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
```

Substituting into the discarded-partner bridge gives admission into the same
oriented four-body package:

```math
A_{native}\leadsto A_{4B}.
```

Since the four-body cycle gives

```math
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma<\infty,
```

the no-exit branch gives

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{native}(\sigma)\,d\sigma<\infty.
}
```

Here \(A_{4B}\) means the whole oriented same-carrier four-body solution object,
including legal/collar/tail handling.  The endpoint/donor solution closes the
native bridge in exactly this sense: every surviving unpaid endpoint or donor
residue is either admitted into that four-body object or consumed as a
Pack/Part/Field CM exit.
