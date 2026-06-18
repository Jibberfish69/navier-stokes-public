# MPP Receiver Escape Endpoint Reduction

## Status

Theorem-facing closure attempt after
`mpp-retained-field-exit-source-receiver-reduction-20260515.md`.

Purpose: test whether the remaining receiver-escape alternative can be pushed
out of the Field branch, or whether it is exactly the Field endpoint.

## Setup

Let `I=[t_0,T_*)` be a retained terminal interval and let
`\mathcal R_{\rho,\psi}^{pre}(t)` be the receiver set used in the Field packet:

```math
\mathcal R_{\rho,\psi}^{pre}(t)
=
\mathcal H_{\rho}^{ctr}(t)
\cup
\operatorname{supp}\chi_{\rho,\psi,t}^{\delta+\delta_{seg}}
\cup
\operatorname{supp}\vartheta_{\rho,\psi,t}^{\delta_{ret}}.
\tag{REE.1}
```

The still-live receiver-admission theorem says that if
`\mathcal R_{\rho,\psi}^{pre}(t)` remains inside one compact still-live collar
with a finite smooth tower bound, then the oscillation receiver closes.

So the unresolved receiver alternative is:

```math
\text{there is no compact still-live collar }Q^{rec,+}
\text{ carrying }\mathcal R_{\rho,\psi}^{pre}(t)
\text{ with finite tower bound up to }T_*.
\tag{REE.2}
```

## What Receiver Escape Means

Unpack `(REE.2)`.

For every candidate retained collar and every finite bound `M`, there are
times `t_j\uparrow T_*` and points
`x_j\in\mathcal R_{\rho,\psi}^{pre}(t_j)` such that either:

```math
x_j\text{ is not carried by the retained same-fluid packet geometry,}
\tag{REE.3}
```

or, for some finite depth `M_*`,

```math
\sum_{\ell\le M_*}|\nabla^\ell u(x_j,t_j)|\to\infty.
\tag{REE.4}
```

On `T^3`, there is no spatial infinity alternative.  On `R^3`, spatial escape
does not create a separate analytic branch: if the receiver packet is not
carried by a retained finite same-fluid carrier, the selected branch has already
lost `Pack_Q`.

Thus receiver escape is not a new analytic species.  It is carrier loss or
finite-depth tower loss along the receiver packet.

## Lemma `REE.A` (Receiver escape under retained Pack is tower escape)

Assume `Pack_Q` holds on the retained terminal packet, with bounded deformation
gauge on the label halo generating `(REE.1)`, and assume the receiver supports
have finite transported volume.  Then receiver escape `(REE.2)` implies that
for some finite depth `M_*` there are
`t_j\uparrow T_*` and
`x_j\in\mathcal R_{\rho,\psi}^{pre}(t_j)` such that `(REE.4)` holds.

### Proof

`Pack_Q` keeps the relevant label halo on one bounded same-fluid deformation
carrier.  The supports in `(REE.1)` are generated from finitely many packet,
halo, bridge-segment, and collar operations on that carrier.  Therefore the
geometric part of still-live admission cannot fail by losing the carrier or by
uncontrolled support volume without contradicting `Pack_Q`.

If no finite tower quantity becomes unbounded on the receiver set as
`t\uparrow T_*`, then for every finite depth required by the receiver theorem
one can choose a smooth collar around the receiver set with finite tower bound.
That is exactly the still-live receiver-admission hypothesis.  This contradicts
`(REE.2)`.  Hence some finite-depth tower bound fails, proving `(REE.4)`.
`\square`

## Lemma `REE.B` (Tower escape under retained Part lands in Field)

Assume `Part_{N,Q}` persists at a depth high enough to include the receiver
depth `M_*`.  If `(REE.4)` occurs on the retained receiver packet, then the
Field slot fails:

```math
\forall r>0:\neg Field_{N,r,Q}.
\tag{REE.5}
```

### Proof

`Part_{N,Q}` says the differentiated tower remains attached to the same
pressure-viscosity Navier-Stokes law.  Thus the blowup in `(REE.4)` is not a
dropped or external forcing event; it is a tower event of the same field.

`Field_{N,r,Q}` supplies positive-scale one-field coherence and finite local
tower readout on the retained packet at the chosen depth.  A sequence of
receiver points with unbounded finite-depth tower size inside every terminal
tail contradicts every positive-scale finite Field readout.  Therefore no
`r>0` can witness `Field_{N,r,Q}` on that terminal packet. `\square`

## Theorem `REE.C` (Receiver escape is not an independent fourth branch)

On the selected retained terminal branch,

```math
Pack_Q
\wedge
Part_{N,Q}
\wedge
\text{receiver escape}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}.
\tag{REE.6}
```

If `Pack_Q` is absent, receiver escape is a Pack exit.  If `Part_{N,Q}` is
absent at the needed depth, receiver escape is a Part exit.  If both survive,
receiver escape is exactly a Field endpoint.

Here "both survive" is branch-local.  `Pack_Q` and `Part_{N,Q}` are retained as
licenses that keep receiver escape from being classified earlier as carrier loss
or dropped-law participation loss.  This does not assert that the terminal
ontology row `Pack, Part, not-Field` survives.  Read as terminal ontology, a
realized same-fluid `Jump` also defeats terminal participation and collapses to
`Pack, not-Part, not-Field`.

### Proof

With `Pack_Q`, Lemma `REE.A` reduces receiver escape to finite-depth tower
escape on the retained receiver packet.  With `Part_{N,Q}` at that depth,
Lemma `REE.B` places that tower escape inside the same differentiated
pressure-viscosity field, so it breaks `Field`.  The two missing-hypothesis
cases are precisely `Pack` and `Part` exits. `\square`

## Consequence For The Retained Field Branch

The retained Field branch after Carleson/Zeno is now:

```math
\neg_{sel}\mathrm{SCTC}
\text{ or selected Zeno atom}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}.
\tag{REE.7}
```

The receiver analysis does not add a fourth exit.  It sharpens the third exit:

```math
\neg Field
\Longleftrightarrow_{\text{route}}
\text{source/receiver endpoint inside the one-field row}.
\tag{REE.8}
```

So the receiver-escape alternative is not a missing bureaucratic surface and
not an independent theorem target.  It is the local endpoint manifestation of
the Field failure once Pack and Part are retained.

## Honest Boundary

`REE.C` does not prove that Field failure is impossible.  It proves that the
last receiver alternative cannot be moved outside the CM witness split.  The
next endpoint refinement is installed in
`mpp-retained-field-endpoint-tower-reduction-20260515.md`: under retained
`Pack+Part` and bounded pack gauge, a retained Field exit forces
`tower-blown`, equivalently failure of the same-family DTC/tower analytic
package.  To finish smoothness from this route, one still needs a noncircular
proof of that terminal DTC/tower package, or a noncircular source/receiver
estimate that forces `FCI.5f + LCI.A` on every retained terminal tail.
