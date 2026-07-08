---
theorem_id: forward-gold-c0-nonseparable-pressure-row-correction-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / VPI pressure non-separability / correction
status: correction-note; retypes-endpoint-source-bound; no-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vpi-pressure-non-separability-reading-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-endpoint-handoff-from-fixed-sphere-source-bound-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-long-chain-endpoint-handoff-live-edge-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708.md
completion_truth: >-
  This note records the correction to the endpoint/source-bound framing. The
  previous formulation still separated the pressure source from participation
  by asking for a linear source to be admitted into an odd bill. Under VPI
  pressure non-separability, that is the wrong coordinate. The same Q that
  makes the retained record is its pressure row. The fixed-sphere computation
  is row visibility; the remaining c0 route burdens are no silent row-dropping
  and relay-endpoint material-time Liouville.
---

# Non-separable pressure-row correction

Physical sentence. A retained VPI participant does not carry Vieillefosse
record content and then purchase pressure response from outside itself. The
same current strain-vorticity content \(Q\) that makes it a record is the
source of its pressure row:

```math
-\Delta p=Q.
\tag{NPC.1}
```

So the old cell

```math
\text{record-size participation}
\quad+\quad
\text{transverse pressure channel zeroed at zero bill}
\tag{NPC.2}
```

is not a worst case. It is partial tower membership: the definition retained the
record and dropped one of the rows that makes it a VPI record.

## 1. What was wrong in the prior endpoint note

The prior endpoint note introduced
`LinearPressureCurrentSourceIsOddBill.A`. That was the same separability error
in sharper clothing. It treated the fixed-sphere pressure source as a readout
that later had to enter an external bill.

The corrected reading is:

```math
\texttt{RetainedPressureRowPersists.A:}
\qquad
\text{retained record}+[M']_+>0
\Longrightarrow
\text{own pressure row nondegenerate,}
\tag{NPC.3}
```

up to typed relay or route-out. This is not a price statement. It is a
membership statement inside one record.

## 2. What the fixed-sphere computation now means

At the affine Vieillefosse sphere,

```math
q(\theta)=\theta\cdot S\theta,\qquad S=\operatorname{diag}(1,1,-2),
\tag{NPC.4}
```

the calculation gives

```math
|M'(j)|\le C_S\|L_Sj\|_{L^2(S^2)}.
\tag{NPC.5}
```

This says that, in the fixed-sphere register, positive cubic drop cannot be
hidden while the full linear own pressure row is silent. It is a finite
row-visibility computation.

It does not prove \(c_0>0\). It must still pass through retained scale
compactness and same-field history.

## 3. The corrected trichotomy

For a long same-affine chain, the endpoint now has three readings:

```math
\text{own row persists}
\quad\vee\quad
\text{borrowed harmonic row is the parent's relay}
\quad\vee\quad
\neg\mathrm{Part}.
\tag{NPC.6}
```

The harmonic borrowed piece \(p_K\) has no same-scale interior source, so it is
not a detachable pressure bank. It is the parent's row. Iterating that relay
leaves the infinite marginal tower, which is the route-b material-time Liouville
object.

## 4. Remaining load

The correction does not close \(c_0\). It removes the separable fake worst case
and leaves two real proof obligations:

```math
\texttt{NoSilentPressureRowDropping.A}
\tag{NPC.7}
```

Retained VPI records cannot lose the pressure row through rung passage or
compactness while retaining service.

```math
\texttt{RelayEndpointMaterialTimeLiouville.A}
\tag{NPC.8}
```

The parent-row relay cannot continue forever as a retained marginal tower.

Those are the current live burdens. The fixed-sphere \(B1/K(\theta)\) nullspace
test is the finite computation both burdens point at, not a source-to-payment
conversion.
