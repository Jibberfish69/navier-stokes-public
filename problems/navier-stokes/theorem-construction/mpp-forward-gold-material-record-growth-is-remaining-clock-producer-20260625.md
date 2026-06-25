---
theorem_id: forward-gold-material-record-growth-is-remaining-clock-producer-20260625
status: proof-installed-reduction-to-material-record-growth-service-clock; finite-service-clock-still-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Consolidates the live edge after the bounded-record action-cycle proof. The
  original transported material history no longer has a separate bounded-record
  positive-annular-cycling obstruction. The full material clock can fail only
  through positive logarithmic growth of the continuation-depth material record.
  Differentiating the same pressure-viscosity-incompressibility-velocity
  material equations gives the exact BKM-type growth law: positive material
  record growth is controlled by a same-material strain/coefficient/pressure
  service clock. Thus the remaining producer is finite total same-material
  service clock, or an equivalent signed global terminal-tail clock inequality,
  not another endpoint, packet, viscosity-only, pressure-only, or annular
  location problem.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-material-record-excludes-infinite-action-cycles-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
---

# Material Record Growth Is Remaining Clock Producer

Date: 2026-06-25

## 0. Result

After `BoundedMaterialRecordExcludesInfiniteActionCycles.A`, the full material
clock has only one remaining failure mode: positive growth of the same
continuation-depth material record.

Precisely, modulo legal residuals already required to be summable,

```math
\int_0^{T_*}d\Omega_N^{full}=\infty
\quad\Longrightarrow\quad
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+=\infty.
\tag{MRG.1}
```

The reverse implication is immediate because the log-record variation is one
component of the full clock:

```math
d\Omega_N^{full}
\supset
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+.
\tag{MRG.2}
```

So the remaining gold theorem is exactly finite positive material-record
growth:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty.
}
\tag{MRG.3}
```

This is still the original pressure-viscosity-incompressibility-velocity
history.  It is not a finite-frequency replacement, not a detached packet, and
not a component-only reserve.

## 1. Material equation for the record

On the transported material history,

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^T.
\tag{MRG.4}
```

The pulled-back Navier-Stokes packet is

```math
\partial_t v+A^T\nabla_a q
=
\nu\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{MRG.5}
```

The material coefficient equations are

```math
\partial_tF=(\nabla_xu)(X,t)F,
\tag{MRG.6}
```

```math
\partial_tA=-A(\nabla_a v)A,
\qquad
\partial_tG=(\partial_tA)A^T+A(\partial_tA)^T.
\tag{MRG.7}
```

The continuation-depth record is

```math
\mathcal P_N^{mat}
=
1+E_N^v+E_N^q+E_N^{A,G}+E_N^{coll}+E_N^{iface},
\tag{MRG.8}
```

where these are the same velocity, pressure, coefficient, transported-collar,
and interface-current components used by the fixed \(H^s\) readout.

## 2. Exact growth inequality

Differentiate `(MRG.5)` to depth \(|\alpha|\le N\), use the same transported
cutoff, and use the same factorial material weights.  Testing against the same
weighted material rungs gives

```math
{d\over dt}E_N^v
+D_N^{vis}
+D_N^{rad}
\le
\mathcal I_N
+dR_N^{coll}
+dR_N^{press}.
\tag{MRG.9}
```

The pressure term is kept inside the same packet through
\(\operatorname{div}_a(Av)=0\); the pressure tower is the elliptic readout of
that same incompressibility constraint.

The commutator term satisfies the already-installed direct calculation:

```math
|\mathcal I_N|
\le
\varepsilon D_N^{vis}
+C_\varepsilon\Theta_N(t)E_N\,dt
+dR_N^0.
\tag{MRG.10}
```

Here \(\Theta_N\) is not a new object.  It is the same-material service rate
of the pressure-viscosity-incompressibility-velocity packet:

```math
\Theta_N(t)
\sim
\|S(u)(t)\|_{L^\infty(X(A,t))}
+
\text{coefficient service}
+
\text{pressure elliptic service}
+
\text{transported collar/interface service}.
\tag{MRG.11}
```

The coefficient equations `(MRG.6)`--`(MRG.7)` give the same form for
\(E_N^{A,G}\), and the pressure/collar/interface pieces are read through the
same packet.  After absorption, one obtains

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\Theta_N(t)\,dt+dR_N^0.
\tag{MRG.12}
```

This is the exact material-record growth law.

## 3. What this proves

If the same-material service clock is finite,

```math
\int_0^{T_*}\Theta_N(t)\,dt<\infty,
\tag{MRG.13}
```

and the residual is legal/summable, then `(MRG.12)` gives `(MRG.3)`.
Then `BoundedMaterialRecordExcludesInfiniteActionCycles.A` gives finite annular
action, and the full material clock is finite:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty.
\tag{MRG.14}
```

The installed material readout then gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\tag{MRG.15}
```

and classical local theory relaunches the same solution past \(T_*\).

Thus finite same-material service clock proves the MPP through the gold route.

## 4. What remains open

The calculation does not prove `(MRG.13)`.  It identifies it as the remaining
producer.

This is the material-history version of the classical continuation criterion:
record growth is controlled by the deformation/strain and pressure-service
clock, and proving that clock finite from original smooth data is the
regularity theorem.

The remaining open theorem can be written equivalently as either

```math
\boxed{
\int_0^{T_*}\Theta_N(t)\,dt<\infty
}
\tag{MRG.16}
```

or as a signed global terminal-tail inequality

```math
d\mathfrak L_N
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_N
\le
dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int dR_N<\infty.
\tag{MRG.17}
```

The local bounded-cross-storage version of `(MRG.17)` is already ruled out by
the affine-strain normal form.  Any valid proof must therefore use the global
same-material terminal history, including the annular pressure/strain
stress-work and material storage exchange.

## 5. Frontier after this note

The proof state is now exact:

```math
\text{finite service clock }(MRG.13)
\Longrightarrow
\text{finite full material clock}
\Longrightarrow
\text{fixed }H^s\text{ continuation}
\Longrightarrow
\text{no finite-time breakdown.}
\tag{MRG.18}
```

The remaining MPP-facing work is the first arrow.  Every other annular,
endpoint, bounded-cycle, pressure-only, viscosity-only, packet-only, or
component-only obstruction has been reduced back to this same-material service
clock on the original transported history.