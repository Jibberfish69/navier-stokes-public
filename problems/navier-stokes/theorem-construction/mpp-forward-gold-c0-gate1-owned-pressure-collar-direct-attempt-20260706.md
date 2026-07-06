---
theorem_id: forward-gold-c0-gate1-owned-pressure-collar-direct-attempt-20260706
status: direct-attempt-fails-reduces-to-sublinear-carleson-or-legal-route-out
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 owned pressure collar
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - OwnedPressureCollarSublinearRouteMeasure.A
  - RetainedRelayFluxCutoffClosure.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/spine.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-collar-tightness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-flux-tightness-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-source-law-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-ownership-size-separation-20260706.md
completion_truth: >-
  Direct attempt on OwnedPressureCollarSublinearRouteMeasure.A. The theorem is
  not proved from the allowed sources. The four natural mechanisms all fail at
  a named missing clause: signed cancellation does not control the absolute
  localized flux; critical pressure redistribution gives no extra collar decay;
  B lacks a pressure-collar currency and so gives no absorption; and non-sublinear
  owned collar flux is not automatically legal/collar/Pack-Part route-out under
  the current source statements. The first exact failed gate remains Gate 1.
  The smallest current split is: prove a quantitative owned pressure-collar
  Carleson/sublinear route-measure bound, or prove that every non-sublinear owned
  pressure collar flux is legal/collar/Pack-Part route-out rather than retained
  relay record.
---

# Gate 1 owned pressure collar direct attempt

## 1. Target

The previous notes reduced the pressure part of localized Field compactness to

```math
\texttt{OwnedPressureCollarSublinearRouteMeasure.A}.
\tag{OPC.1}
```

For retained same-fluid relay windows with \(R(W_j)=1\) and \(B(W_j)\to0\), the
owned pressure collar measure

```math
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))
=
\int_{W_j}\int_{\operatorname{collar}(R)}
\sum_{k=0}^{N}\lambda_k|\Pi^{press}_{k,h_j}|\,dx\,dt
\tag{OPC.2}
```

must satisfy

```math
\lim_{R\to\infty}\limsup_j
{1\over R}
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))
=0
\tag{OPC.3}
```

or be absorbed by \(B\), or be classified as legal/collar/Pack-Part route-out.

This note tests the direct proof mechanisms.

## 2. Mechanism 1: signed cancellation

Pressure is redistributive, so a first guess is that collar inflow and outflow
cancel. That does not prove `(OPC.3)' because the localized estimate requires
the absolute flux:

```math
\int_I|\mathrm{Flux}_{N,h,\phi}(t)|\,dt .
\tag{OPC.4}
```

Signed cancellation controls a net current. The Gate 1 estimate needs the total
size of the boundary current before compactness is invoked. Turning signed
pressure exchange into absolute retained payment is the same signed-versus-total
problem that later appears in the four-body record gate; it is not supplied by
the pressure identity alone.

Verdict: cancellation fails unless a same-packet signed-to-total pressure
retention theorem is added.

## 3. Mechanism 2: far-collar decay

The material cutoff gives \(|\nabla\phi_R|\lesssim R^{-1}\). This kills the
pressure collar only when the owned route measure is \(o(R)\). The source law
states that pressure is global incompressible redistribution plus flux. That
operator is scale-critical for the route: it redistributes the source, but it
does not supply an additional positive sign or decay factor beyond the cutoff.

The persistent bad scaling is

```math
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))\sim R,
\qquad
R^{-1}\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))\sim1 .
\tag{OPC.5}
```

Verdict: decay fails unless one proves a quantitative collar route-measure
bound.

## 4. Mechanism 3: absorption into the bill

The current bill is

```math
B=dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}.
\tag{OPC.6}
```

These are, respectively, neighboring-tower decoherence, retained four-body
positive variation, and viscous defect dissipation. The pressure collar term is
a boundary redistribution channel. The allowed source does not identify this
boundary channel with any of the three currencies in `(OPC.6)`.

The needed absorption inequality would be

```math
\limsup_j
{1\over R}
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))
\le
o_R(1)+C\,B(W_j).
\tag{OPC.7}
```

No allowed source supplies `(OPC.7)'.

Verdict: absorption fails unless `(OPC.7)' is proved as a new pressure-collar
bill theorem.

## 5. Mechanism 4: automatic route-out

The last possibility is to declare every non-sublinear owned collar flux a legal
collar route-out. That is also not automatic from the current source surface.
The source says the localized estimate is usable only with a legal
flux/cutoff bound or an explicitly absorbable boundary/cutoff estimate on the
same retained family. It does not define every surviving same-carrier collar
flux as non-retained.

An owned non-sublinear collar flux therefore has two unresolved readings:

```math
\begin{array}{ll}
\text{route-out reading:} &
\text{the record escapes through the collar and is not retained relay record},\\[1mm]
\text{retained-tail reading:} &
\text{the same parent keeps carrying pressure flux at every enlarged collar.}
\end{array}
\tag{OPC.8}
```

The current sources do not choose between these readings.

Verdict: route-out fails unless one proves a legal collar classification theorem.

## 6. Reduced split

The direct attempt leaves exactly two noncircular ways to clear the pressure
part of Gate 1:

```math
\texttt{OwnedPressureCollarCarlesonSublinear.A}
\tag{OPC.9}
```

which proves `(OPC.3)' or `(OPC.7)' for every retained same-fluid relay sequence;
or

```math
\texttt{NonSublinearOwnedPressureCollarIsRouteOut.A}
\tag{OPC.10}
```

which proves that every non-sublinear owned pressure collar flux is legal,
collar loss, or Pack-Part loss rather than retained relay record.

Either one would clear the pressure-collar obstruction after the earlier
material-cutoff and viscous-collar reductions. Neither is installed by the
allowed sources.

## 7. Consequence for the active c_0 goal

This is a failed direct attempt, not a proof of \(c_0>0\) and not a
Navier-Stokes counterexample. It identifies the first exact failed gate of
`NormalizedRelayBillCompactnessRecordPassage.A` more sharply:

```math
\text{Gate 1 fails at owned pressure collar size/classification.}
\tag{OPC.11}
```

The smallest remaining theorem is now the split `(OPC.9)' or `(OPC.10)'. Until
one side is proved, \(B(W_j)\to0\) does not imply the retained compact limit
needed for the zero-bill positive-record contradiction.
