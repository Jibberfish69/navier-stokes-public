---
theorem_id: forward-gold-shell-transfer-reservoir-identity-and-rectified-recirculation-test-20260625
status: exact-signed-shell-reservoir-installed; rectified-recirculation-still-requires-one-way-same-material-law
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining moving same-material pressure-strain pump against the
  natural shell-transfer reservoir. The exact orthogonal shell identity gives a
  signed donor partner for every upward transfer: a higher shell can gain
  weighted energy only through a paired lower/same-packet loss or through the
  pressure-viscosity-coefficient interface of the material packet. This proves
  that the pump is not detached from the original fluid history. It does not by
  itself prove finite rectified pump action, because signed donor exchange can
  recirculate; net payback and total force-action are different. The remaining
  producer is therefore sharpened to a same-material no-recirculation/no-free-
  upward-transfer law for the pressure-strain pump, not a new endpoint pulse,
  arbitrary annular-stack, or component-only estimate.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-energy-antipump-storage-sign-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-net-payback-vs-total-annular-action-closure-20260625.md
---

# Shell Transfer Reservoir Identity And Rectified Recirculation Test

Date: 2026-06-25

## 0. Object

The object is still the original smooth solution and its transported material
history.  This note tests a single question: whether shell-to-shell transfer
already supplies the finite reservoir for the moving annular pump.

The answer is exact:

1. shell transfer gives a signed donor identity;
2. the identity keeps the pump attached to the same fluid history;
3. the identity does not control rectified recirculation by itself.

Thus the shell reservoir is a real part of the physical picture, but it is not
yet the one-way full-clock producer.

## 1. Exact Eulerian shell transfer identity

Work first on the periodic surface with orthogonal spectral shell projections
\(P_j\), so

```math
u_j=P_j u,
\qquad
u=\sum_j u_j,
\qquad
\operatorname{div}u_j=0.
\tag{STR.1}
```

For the incompressible transport part, define the triadic transfer

```math
T_{j\leftarrow \ell}^{(k)}
:=
-\int_{T^3}
u_j\cdot (u_k\cdot\nabla)u_\ell\,dx .
\tag{STR.2}
```

Because \(u_k\) is divergence-free,

```math
\int_{T^3}u_k\cdot\nabla(u_j\cdot u_\ell)\,dx=0.
\tag{STR.3}
```

Therefore

```math
T_{j\leftarrow \ell}^{(k)}
+
T_{\ell\leftarrow j}^{(k)}
=0.
\tag{STR.4}
```

This is the exact signed donor law: what enters shell \(j\) from shell
\(\ell\) is the negative of what leaves shell \(\ell\) toward shell \(j\), for
the same advecting shell \(k\).

For the unweighted kinetic energy, summing `(STR.4)` gives cancellation of the
nonlinear transfer:

```math
\sum_{j,k,\ell}T_{j\leftarrow \ell}^{(k)}=0.
\tag{STR.5}
```

Pressure also does not create Eulerian shell energy, since each shell is
divergence-free:

```math
-\int P_j\nabla p\cdot u_j\,dx
=
\int p\,\operatorname{div}u_j\,dx
=0.
\tag{STR.6}
```

Thus the unweighted global shell ledger is exactly the usual kinetic-energy
ledger.

## 2. Weighted shell energy exposes the pump

Let \(w_j>0\) be an increasing continuation-depth shell weight and set

```math
E_w(t)
:=
{1\over2}\sum_j w_j\|u_j(t)\|_2^2 .
\tag{STR.7}
```

Ignoring only the already explicit viscous loss for the moment, the nonlinear
weighted transfer is

```math
\mathcal T_w(t)
=
\sum_{j,k,\ell}w_j T_{j\leftarrow \ell}^{(k)}.
\tag{STR.8}
```

Using `(STR.4)` in paired form,

```math
\mathcal T_w(t)
=
{1\over2}
\sum_{j,k,\ell}
(w_j-w_\ell)T_{j\leftarrow \ell}^{(k)} .
\tag{STR.9}
```

So an upward transfer into a higher weighted shell has a visible donor partner.
If \(w_j>w_\ell\) and \(T_{j\leftarrow \ell}^{(k)}>0\), then shell \(j\) is
gaining weighted energy from shell \(\ell\), and shell \(\ell\) carries the
opposite signed transfer in `(STR.4)`.

This is the shell version of the annular pay-it-back-later picture.  The spike
cannot be fed by an unattached source; the source is a same-fluid transfer
partner.

## 3. Material packet version

Pull the same calculation back to material coordinates

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{STR.10}
```

The material equation is

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{STR.11}
```

In this chart the advective nonlinearity is carried by the material
coefficients and the pressure constraint.  Applying fixed material shell
projections gives the exact identity already installed in the moving-pump note:

```math
{d\over dt}E_w^{mat}(t)
+\nu D_w^{mat}(t)
=
\mathcal M_w^{mat}(t),
\tag{STR.12}
```

where \(\mathcal M_w^{mat}\) is not a free source.  It is exactly the
pressure/incompressibility/coefficient interface plus the viscous coefficient
commutator:

```math
\begin{aligned}
\mathcal M_w^{mat}
={}&
-\sum_j w_j\langle \Delta_j^a(A^\top\nabla_aq),v_j\rangle \\
&+
\nu\sum_j w_j
\left\langle
\Delta_j^a\operatorname{div}_a(G\nabla_av)
-
\operatorname{div}_a(G\nabla_av_j),
v_j
\right\rangle .
\end{aligned}
\tag{STR.13}
```

The principal pressure term is tied to incompressibility by

```math
-\langle A^\top\nabla_aq_j,v_j\rangle
=
\langle q_j,\operatorname{div}_a(Av_j)\rangle
=
\langle q_j,\operatorname{div}_a([A,\Delta_j^a]v)\rangle .
\tag{STR.14}
```

Thus the material pump is the same signed reservoir as the Eulerian shell
transfer, written in the moving annular coordinates.  It is generated by the
same pressure-viscosity-incompressibility-velocity packet.

## 4. Why signed donor identity is not rectified finite action

The donor identity controls signed exchange.  The gold route needs rectified
action:

```math
\int_0^{T_*}[\mathcal M_w^{mat}(t)]_+\,dt
\quad
\text{or an equivalent full material clock.}
\tag{STR.15}
```

Signed donor exchange does not imply `(STR.15)`.  A two-shell model already
shows the distinction.  Let a signed transfer \(b(t)\) move energy between a
lower shell \(L\) and a higher shell \(H\):

```math
E_H'(t)=b(t),
\qquad
E_L'(t)=-b(t),
\qquad
E_H(t)+E_L(t)=E_0 .
\tag{STR.16}
```

The net reservoir is finite for every time:

```math
0\le E_H(t)+E_L(t)=E_0.
\tag{STR.17}
```

But the rectified transfer is

```math
\int |b(t)|\,dt,
\tag{STR.18}
```

and `(STR.17)` alone does not bound `(STR.18)`.  Energy can move back and
forth many times while the net storage remains bounded.  Therefore the shell
reservoir proves attachment, but not finite total action.

This is not a detached failure scenario.  It is the same physical distinction
already present in the annular return picture:

```math
\text{net payback}
\ne
\text{total same-fluid force-action history}.
\tag{STR.19}
```

## 5. Exact consequence for the live producer

The shell-transfer calculation removes a fake obstruction: the moving annular
pump is not an arbitrary signal and not a center-only pulse.  Every upward
frequency feed has a same-fluid transfer partner, and in material coordinates
that partner is exactly pressure, incompressibility, viscosity, coefficient
motion, and collar motion inside the same transported packet.

The calculation also prevents a fake closure: the signed donor partner does not
by itself give finite rectified pump action.

The remaining gold producer is now precisely:

```math
\boxed{
\int_0^{T_*}[\mathcal M_w^{mat}(t)]_+\,dt<\infty
}
\tag{STR.20}
```

from a same-material no-recirculation or no-free-upward-transfer law.  Such a
law must say that repeated upward pumping cannot keep reusing the same finite
energy reservoir without either:

```math
\text{viscous high-shell loss,}
\tag{STR.21}
```

or

```math
\text{a pressure-strain/coefficient variation clock already counted in the
full material record.}
\tag{STR.22}
```

In plain terms: the annular layers do carry the later return, and the shell
calculation shows the frequency donor for that return.  To finish the gold
route, the proof must turn that signed donor history into finite rectified
same-fluid action by ruling out unbounded recirculation of the moving
pressure-strain pump.
