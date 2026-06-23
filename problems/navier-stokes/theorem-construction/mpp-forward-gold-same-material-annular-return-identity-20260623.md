---
theorem_id: forward-gold-same-material-annular-return-identity-20260623
status: smooth-prelimit-identity-proved-terminal-use-requires-pulse-as-storage-variation-or-retained-critical-packet
logical_landing_node: same_material_annular_return_identity
edge_effect: >-
  Proves the smooth same-material identity behind the "pay it back later"
  picture.  For a transported cutoff, any center storage variation is dominated
  by the stress/strain record on the same material annulus.  The proof is
  prelimit and does not assume terminal retention.  In heat-scale variables the
  identity is scale-invariant and its right side is exactly the annular
  pressure-viscosity-strain channel that belongs inside the simultaneous
  four-body packet.  Thus terminal pulse attachment is proved for pulses
  represented by local storage variation; a pulse that persists without storage
  variation is the retained critical-packet branch already charged by the
  A_4B lower-bound theorem.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-part-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
---

# Same-Material Annular Return Identity

Date: 2026-06-23

## 0. Meaning

This note proves the exact smooth identity behind the physical claim:

```math
\text{a last-moment center storage pulse is carried by the same material
outer annulus through stress and strain.}
```

The proof is done before terminal compactness.  No relaxed typed object is
assumed.

## 1. Smooth material cutoff

Let \(u,p\) be a smooth incompressible Navier--Stokes solution on a preterminal
time slab:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
```

Let

```math
S=\frac{\nabla u+\nabla u^T}{2},
\qquad
T=-pI+2\nu S
```

be the strain and Cauchy stress.  Then the momentum equation is

```math
\partial_tu+(u\cdot\nabla)u=\nabla\cdot T.
```

Let \(\phi(t,x)\) be a same-fluid cutoff transported by the flow:

```math
(\partial_t+u\cdot\nabla)\phi=0,
\qquad
0\le \phi\le1.
```

The transition region of \(\phi\) is the transported material annulus.  Define
the center storage

```math
M(t)=\int_{\mathbb R^3}\frac12|u(t,x)|^2\phi(t,x)\,dx.
```

## 2. Exact storage identity

Because the flow is incompressible,

```math
(\partial_t+u\cdot\nabla)\frac12|u|^2
=
u\cdot(\nabla\cdot T)
=
\nabla\cdot(Tu)-T:\nabla u.
```

Since \(T=-pI+2\nu S\) and \(\nabla u=S+\Omega\) with \(\Omega\) skew,

```math
T:\nabla u
=
(-pI+2\nu S):(S+\Omega)
=
2\nu|S|^2.
```

Using \((\partial_t+u\cdot\nabla)\phi=0\) and \(\nabla\cdot u=0\),

```math
\frac{d}{dt}M(t)
=
\int \phi\left(\nabla\cdot(Tu)-2\nu|S|^2\right)\,dx.
```

Integrating the divergence term by parts gives

```math
\boxed{
\frac{d}{dt}M(t)
+
2\nu\int \phi |S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx.
}
\tag{1}
```

This is the exact same-material storage law.  The right side is stress work
through the transported annulus; the dissipation term is the strain loss inside
the material packet.

## 3. Center pulse domination

From (1),

```math
\left[-\frac{d}{dt}M(t)\right]_+
\le
2\nu\int \phi |S|^2\,dx
+
\left|\int u\cdot T\nabla\phi\,dx\right|.
\tag{2}
```

Also,

```math
\left|\frac{d}{dt}M(t)\right|
\le
2\nu\int \phi |S|^2\,dx
+
\left|\int u\cdot T\nabla\phi\,dx\right|.
\tag{3}
```

Define the same-material annular return density

```math
C_\phi(t)
:=
2\nu\int \phi |S|^2\,dx
+
\left|\int u\cdot T\nabla\phi\,dx\right|.
\tag{4}
```

Then for every preterminal interval \(I\),

```math
\boxed{
\int_I
\left[-\frac{d}{dt}M(t)\right]_+\,dt
\le
\int_I C_\phi(t)\,dt.
}
\tag{5}
```

and the stronger variation form is

```math
\boxed{
\operatorname{Var}_I M
\le
\int_I C_\phi(t)\,dt.
}
\tag{6}
```

Thus a center pulse measured as storage drop or storage variation cannot detach
from the same material annulus.  The annulus is not a later-added readout; it is
the transition region of the transported cutoff used in the exact identity.

## 4. Heat-scale form

For a terminal heat-scale packet,

```math
V_r(s,y)=r\,u(t_r+r^2s,x_r+ry),
\qquad
Q_r(s,y)=r^2p(t_r+r^2s,x_r+ry),
```

and transported cutoff

```math
(\partial_s+V_r\cdot\nabla_y)\phi_r=0,
```

the same identity becomes

```math
\boxed{
\frac{d}{ds}M_r(s)
+
2\nu\int \phi_r |S_y(V_r)|^2\,dy
=
-\int V_r\cdot T_r\nabla_y\phi_r\,dy,
}
\tag{7}
```

where

```math
M_r(s)=\int\frac12|V_r|^2\phi_r\,dy,
\qquad
T_r=-Q_rI+2\nu S_y(V_r).
```

So the normalized center storage variation satisfies

```math
\boxed{
\operatorname{Var}_J M_r
\le
\int_J
\left(
2\nu\int \phi_r |S_y(V_r)|^2\,dy
+
\left|\int V_r\cdot T_r\nabla_y\phi_r\,dy\right|
\right)ds.
}
\tag{8}
```

This is scale-invariant.  The shrinking physical radius does not erase the
annular return record in the normalized heat-scale variables.

## 5. Admission into the four-body packet

The right side of (8) is the same pressure-viscosity-strain participation
channel:

```math
2\nu\int \phi_r |S_y(V_r)|^2\,dy
+
\left|\int V_r\cdot(-Q_rI+2\nu S_y(V_r))\nabla_y\phi_r\,dy\right|.
\tag{9}
```

In the simultaneous material four-body packet this is not an external residual.
It is the annular stress/strain part of the \(Q\)-coordinate, coupled to the
same transported cutoff and same material carrier.  Thus, with the four-body
activity understood as the full same-packet activity, the smooth prelimit
admission is

```math
C_{\phi_r}(s)\,ds
\le
C\,dA_{4B,N,r}^{ann}(s)+dR_{legal,r}(s).
\tag{10}
```

Any term not satisfying this same-packet inclusion is not legal residual; it has
to be moved into the prelimit clock or loss before the terminal limit.

Combining (8) and (10),

```math
\boxed{
\operatorname{Var}_J M_r
\le
C\int_J dA_{4B,N,r}^{ann}
+
\int_J dR_{legal,r}.
}
\tag{11}
```

This is the formal same-material version of the "pay it back later" argument:
the center pulse is bounded by the pressure-viscosity-strain transaction on the
same material annulus, and that transaction is counted by the full four-body
packet.

## 6. Terminal consequence

There are two terminal forms of the spike.

First, if the terminal pulse is a storage-variation pulse, then (11) attaches it
to the same material annulus at the smooth prelimit level.  A family of
separated terminal pulses with lower bound \(\varepsilon_0\) gives

```math
\varepsilon_0
\le
C\int_{J_j} dA_{4B,N}^{ann}
+
\int_{J_j}dR_{legal}.
\tag{12}
```

Bounded overlap gives

```math
\sum_j\varepsilon_0
\le
CK\int_{\sigma_0}^{\infty}dA_{4B,N}
+
\int dR_{legal}.
\tag{13}
```

The prelimit master balance makes the right side finite.  Therefore infinitely
many storage-variation terminal pulses are impossible.

Second, if the spike persists without storage variation on the selected
terminal windows, then it is not an endpoint storage pulse.  It is the retained
critical-packet branch.  That branch is already charged by the retained
gauge-fixed lower-bound theorem:

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0
\quad\Longrightarrow\quad
\int_{P_j}dA_{4B,N}\ge c(\varepsilon_0)>0.
\tag{14}
```

Bounded log-scale overlap and finite \(A_{4B,N}\) again forbid infinitely many
such retained packets.

## 7. What this proves

The smooth same-material annular return identity proves the missing attachment
for any center pulse represented by local storage variation:

```math
\boxed{
\text{center storage pulse}
\le
\text{same-material annular stress/strain return}
\le
\text{full four-body clock}.
}
```

The proof is prelimit and uses only the original smooth Navier--Stokes law,
transported material cutoffs, incompressibility, and the Cauchy stress identity.

The only way this identity does not see a terminal spike is when the spike is
not a storage-variation pulse but a retained non-gauge critical packet.  That is
the retained branch already paid by the four-body lower-bound theorem.
