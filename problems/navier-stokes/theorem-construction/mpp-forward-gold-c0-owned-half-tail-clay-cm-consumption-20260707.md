---
theorem_id: forward-gold-c0-owned-half-tail-clay-cm-consumption-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / owned half-tail / Clay CM terminal consumption
status: cm-terminal-branch-routed-not-forward-bill-proof
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - SameEventNoRecountFirstRatioBillCurrency.A
  - TerminalSourceCurveAtom.A
  - ClayTerminalWitnessCMEntry.A
  - CanonicalTerminalPacketCapture.A
  - AnyFiniteFailureWitnessCMExit.A
  - Part_{N,Q}
  - Field_{N,r,Q}
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-owned-half-tail-cm-routeout-bridge-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-owned-positive-channel-half-tail-wall-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-cm-service-certification-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md
  - problems/navier-stokes/theorem-construction/mpp-canonical-terminal-packet-capture-20260522.md
  - problems/navier-stokes/theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md
completion_truth: >-
  This note routes the remaining owned fresh half-tail only in the CM terminal
  use-case. If the owned same-edge half-tail has been lowered to a terminal
  source-curve atom and that atom is the promoted terminal obstruction of a
  Clay-admissible finite breakdown, then same-witness CM admission is already
  supplied by the Clay terminal witness and canonical packet-capture surfaces.
  The terminal atom cannot survive the certified Part/Field service topology, so
  it gives not Part_{N,Q} or forall r>0 not Field_{N,r,Q}. This consumes the
  branch as a CM Part/Field route-out. It does not prove WLF.60, ODP.91,
  ParentOwnedPositiveRecordBillCurrency.A, SameEventNoRecountFirstRatioBillCurrency.A,
  c_0 > 0, or the forward-Gold bill theorem from arbitrary original data.
---

# Owned half-tail: Clay CM terminal consumption

## 1. Same physical object

The object is still one same-fluid Navier-Stokes history. The positive
generated tower-record channel is not a detached positive measure. On a
parent-known raw signed event \(e\),

```math
d\nu_e=h_e\,d\sigma_e,
\qquad
d\mu_e^A=(h_e)_+d\sigma_e,
\qquad
d\mu_e^N=(h_e)_-d\sigma_e,
\qquad
d\mu_e^J=h_e\,d\sigma_e,
\tag{OCC.1}
```

so

```math
d\mu_e^J=d\mu_e^A-d\mu_e^N .
\tag{OCC.2}
```

The same carrier is already owned at the raw-event level. The remaining branch
is the owned same-edge survivor with no selected first-ratio bill:

```math
C_0+C_1+C_2+C_3+C_4+C_5+C_7+\neg C_6 .
\tag{OCC.3}
```

Physically, the fluid owns the positive pulse, the negative partner, and the
signed current. The only missing Gold fact is that this same owned pulse has
been paid as selected positive record work before readout.

## 2. The terminal CM use-case is different from forward bill proof

The previous bridge audit showed that `(OCC.3)' is not automatically
Pack/Part/Field. Missing bill currency is only a bill obstruction until a
same-witness terminal admission bridge is present.

The Clay branch supplies exactly that bridge, but only after terminal promotion.
For a Clay-admissible finite breakdown, the retained terminal pulse recheck gives

```math
\begin{aligned}
&\text{ClayAdmissibleFiniteBreakdown}(W_*)\\
&\quad+\text{retained terminal pulse selected by canonical terminal capture}\\
&\Longrightarrow
\text{same-witness CM admission for that pulse}.
\end{aligned}
\tag{OCC.4}
```

This is not a new anti-atom estimate. It says that once the half-tail is no
longer being used as a support-only Gold supplier, but is the terminal residue of
the alleged same-solution Clay breakdown, it enters the same CM witness tree as
the original pressure, viscosity, incompressibility, and transported packet.

## 3. The terminal atom produced by failed endpoint UI

On the terminalized half-tail subbranch, failed endpoint uniform integrability
has the measure form

```math
\mu_m(ds)=a_m(s)\,ds,
\qquad a_m\ge0,
\qquad
\sup_m\mu_m([-1,0])<\infty,
\tag{OCC.5}
```

and

```math
\lim_{\theta\downarrow0}\limsup_m\mu_m((-\theta,0])>0 .
\tag{OCC.6}
```

The terminal source-curve compactness lemma gives a subsequence and a weak-star
limit with

```math
\mu_m\stackrel{*}{\rightharpoonup}\mu,
\qquad
\mu(\{0\})>0 .
\tag{OCC.7}
```

This is the same physical picture as the fresh half-tail: positive selected work
keeps appearing closer and closer to the terminal time. The mass is real on the
same carrier, but without a uniform endpoint modulus it collapses into a
terminal source-curve atom.

## 4. CM consumption after admission

After same-witness CM admission, the atom is no longer merely a weak readout. It
is being offered as a surviving terminal class-service record.

Uniform service topology for `Part_{N,Q}` and `Field_{N,r,Q}` requires a terminal
source-window modulus: there must be some \(\omega(\theta)\downarrow0\) such that

```math
\limsup_m\mu_m((-\theta,0])\le \omega(\theta).
\tag{OCC.8}
```

But `(OCC.7)' implies

```math
\lim_{\theta\downarrow0}\limsup_m\mu_m((-\theta,0])
\ge \mu(\{0\})>0 .
\tag{OCC.9}
```

Thus the atom cannot pass the certified Part/Field service topology. Because the
owned branch already keeps the same selected carrier and persistent record face,
the active CM failure is not a cheap Pack disposal. The first failed live service
is:

```math
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{OCC.10}
```

That is the lawful CM route-out:

```math
\boxed{
\begin{gathered}
\text{owned same-edge half-tail}\\
+\text{terminal source-curve atom}\\
+\text{Clay-admissible same-witness CM admission}
\Longrightarrow
\neg Part_{N,Q}
\ \text{or}\
\forall r>0\,\neg Field_{N,r,Q}.
\end{gathered}
}
\tag{OCC.11}
```

By the installed CM embedding, this Part/Field failure supports

```math
Exit(Q):=\neg Member(Q).
\tag{OCC.12}
```

## 5. Branch split after this bridge

The owned fresh half-tail now has two different lawful readings, depending on
the proof program in which it appears:

```math
\begin{array}{ll}
\text{support-only forward-Gold bill branch}
  &\Rightarrow
  \text{still needs WLF/ODP, a subcritical matrix,}\\
  &\qquad\text{or terminal full-packet no-residue/critical anti-atom},\\[1mm]
\text{Clay-admissible finite-breakdown terminal branch}
  &\Rightarrow
  \text{same-witness CM admission, hence Part/Field route-out}.
\end{array}
\tag{OCC.13}
```

The same physical atom is being read in two roles. As a forward-Gold supplier,
it still needs same-carrier bill payment. As the terminal residue of an alleged
finite Clay breakdown, it is already the obstruction witness and is consumed by
the CM service tree.

## 6. Findings

1. Same-carrier ownership remains a raw signed-event fact.

2. The owned fresh half-tail is not a Pack/Part/Field failure merely because its
   selected first-ratio bill is missing.

3. Once the half-tail is terminalized and admitted as the same witness of a
   Clay-admissible finite breakdown, the admission bridge is installed.

4. The resulting terminal atom cannot survive the certified Part/Field service
   topology, so it routes to `not Part_{N,Q}` or `forall r>0 not Field_{N,r,Q}`.

5. This completes the CM terminal route-out branch, not the forward-Gold bill
   theorem from arbitrary original data.
