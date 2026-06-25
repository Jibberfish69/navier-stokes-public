---
theorem_id: forward-gold-weighted-energy-antipump-storage-sign-test-20260625
status: exact-sign-test-installed; weighted-energy-alone-cannot-be-the-bounded-below-one-way-storage
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests whether the weighted material energy E_w from the moving-pump identity
  can itself be the one-way anti-pump storage. The answer is no. Since
  dE_w/dt+nu D_w=M_w and the pump is [M_w]_+, positive pump events are
  precisely positive weighted-energy growth plus weighted viscous/interface
  service. A bounded-below inequality with +dE_w has the wrong sign during
  growth; using -dE_w cancels growth but is not bounded below unless E_w is
  already bounded, which is the continuation conclusion. Thus the missing
  gold producer cannot be "use E_w as Lyapunov." It must be a different
  bounded-below same-material storage or a direct all-scale no-free-upward-
  transfer theorem that pays pump work from a finite physical reservoir.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-all-scale-pressure-stress-transfer-pump-split-20260625.md
---

# Weighted Energy Anti-Pump Storage Sign Test

Date: 2026-06-25

## 0. Object

The exact moving-pump identity is

```math
{d\over dt}E_w(t)+\nu D_w(t)=\mathcal M_w(t),
\tag{WAS.1}
```

where \(E_w\) is the continuation-depth weighted material energy,
\(D_w\) is the weighted viscous tower, and \(\mathcal M_w\) is the
pressure/incompressibility/coefficient interface plus viscous coefficient
commutator of the same transported packet.

The pump is

```math
\mathcal P_w^{pump}(t)=[\mathcal M_w(t)]_+ .
\tag{WAS.2}
```

The question is whether \(E_w\) itself can be the bounded-below one-way
storage paying \(\mathcal P_w^{pump}\).

## 1. The sign obstruction

On times where \(\mathcal M_w>0\),

```math
\mathcal P_w^{pump}
=
{d\over dt}E_w+\nu D_w .
\tag{WAS.3}
```

So positive pump is exactly weighted energy growth plus weighted viscous loss.

If one tries a one-way inequality with \(E_w\) as the storage,

```math
dE_w+c\,\mathcal P_w^{pump}\,dt\le dR_w,
\tag{WAS.4}
```

then on positive-pump times `(WAS.3)` gives

```math
(1+c)\,dE_w+c\nu D_w\,dt\le dR_w.
\tag{WAS.5}
```

This requires the residual to pay the positive weighted-energy growth.  It is
not a producer from the original energy ledger.

If instead one tries to use \(-E_w\) as the storage,

```math
-dE_w+c\,\mathcal P_w^{pump}\,dt\le dR_w,
\tag{WAS.6}
```

then `(WAS.3)` gives, on positive-pump times,

```math
(c-1)dE_w+c\nu D_w\,dt\le dR_w.
\tag{WAS.7}
```

Choosing \(c\le1\) can remove the positive \(dE_w\) part, but the storage
\(-E_w\) is bounded below only if \(E_w\) is already bounded above:

```math
-E_w(t)\ge -C
\quad\Longleftrightarrow\quad
E_w(t)\le C .
\tag{WAS.8}
```

That is exactly the continuation-depth conclusion.  Therefore \(-E_w\) would
make the argument circular.

## 2. Consequence

The weighted material energy identity proves attachment and exact accounting:
the annular pump is not free.  It does not by itself provide the finite pump
clock.

The missing producer must be one of the following:

```math
\text{a different bounded-below same-material storage that drops when }E_w
\text{ is pumped,}
\tag{WAS.9}
```

or

```math
\text{a direct all-scale no-free-upward-transfer inequality for }
\mathcal P_w^{pump}.
\tag{WAS.10}
```

Both must stay on the same pressure-viscosity-incompressibility-velocity
material packet.  A proof that only rewrites \(\mathcal P_w^{pump}\) as
weighted \(H^N\)-energy growth has not closed the MPP; it has identified the
continuation clock exactly.
