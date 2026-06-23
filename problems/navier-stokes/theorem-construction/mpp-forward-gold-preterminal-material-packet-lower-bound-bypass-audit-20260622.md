---
theorem_id: forward-gold-preterminal-material-packet-lower-bound-bypass-audit-20260622
status: superseded-audit-lower-bound-branch-closed-by-retained-gauge-fixed-material-packet-theorem
logical_landing_node: preterminal_material_packet_lower_bound_bypass
edge_effect: >-
  Audits the noncircular bypass around terminal same-packet record survival.
  The bypass is exact once finite-time singularity supplies infinitely many
  preterminal retained material heat-scale packets with a fixed lower bound in
  the same A_4B participation activity. At audit time, CKN and critical-density
  surfaces supplied visibility/readout only. The later retained gauge-fixed
  material lower-bound theorem closes the retained non-gauge branch, while the
  original-data material-history split handles the storage/overlap branch.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-part-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-ckn-heat-scale-summability-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-normalized-ckn-carleson-packing-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mcp-moving-cylinder-ckn-admissibility-lemma-f2a546e26f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-spike-thinning-full-participation-trichotomy-20260623.md
---

# Preterminal Material Packet Lower-Bound Bypass Audit

Date: 2026-06-22

## 0. Question

The terminal same-packet no-exit target asks for endpoint survival of the full
pressure-viscosity-incompressibility-velocity record.  That target is
theorem-sized as a pure gold supplier.

There is one possible noncircular bypass.  Instead of proving the terminal
record survives first, prove that a finite-time singularity already produces
infinitely many preterminal material heat-scale packets carrying a fixed positive
amount of the same four-body participation activity:

```math
\int_{J_j} A_{4B}(\sigma)\,d\sigma\ge \varepsilon_0>0 .
\tag{PML.1}
```

Here \(J_j\) is the log-scale interval of the retained transported material
packet.  The packet is not a CKN proxy, not a scalar endpoint trace, and not a
viscosity-only drain.  It is the same order-locked participation packet already
used by the four-body loop.

## 1. Exact bypass once the lower bound is supplied

Assume there are infinitely many retained preterminal material heat-scale packets
\(P_j\) with log-scale intervals \(J_j\), fixed-atlas bounded multiplicity

```math
\sum_j {\bf 1}_{J_j}(\sigma)\le K,
\tag{PML.2}
```

and fixed same-packet lower bound `(PML.1)`.  The four-body loop gives

```math
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma<\infty .
\tag{PML.3}
```

Then

```math
\sum_j\varepsilon_0
\le
\sum_j\int_{J_j}A_{4B}(\sigma)\,d\sigma
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty .
\tag{PML.4}
```

This is impossible for infinitely many \(j\).  Thus the bypass is exact:

```math
\boxed{
\text{infinitely many retained bad preterminal material packets}
+\text{ fixed same-packet }A_{4B}\text{ lower bound}
\Longrightarrow
\text{contradiction}.
}
\tag{PML.5}
```

This proof uses the four-body loop only after admission into the same material
annular carrier.  It does not use endpoint same-packet record survival to prove
itself.

## 2. What CKN currently supplies

The CKN heat-scale note gives the critical visibility statement.  For a
heat-scale cylinder

```math
Q_r=B_r(x_0)\times(t_0-r^2,t_0],
\tag{PML.6}
```

the normalized CKN charge is

```math
\mathcal C(Q_r)
:=
{1\over r^2}
\int_{Q_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt .
\tag{PML.7}
```

At a singular endpoint, CKN epsilon regularity gives only the lower-bound
readout

```math
\limsup_{r\downarrow0}\mathcal C(Q_r)
\ge
\varepsilon_{CKN}.
\tag{PML.8}
```

This is visibility.  It says a singular endpoint cannot be invisible to the
critical cubic-pressure scale.

It does not by itself identify the same transported material annulus, the same
selected native activity, the same local pressure/viscosity/incompressibility
carrier, or the same \(A_{4B}\) packet.

## 3. The missing bridge

The exact bridge needed for the bypass is:

```math
\boxed{
\mathcal C(Q_{r_j})\ge\varepsilon_{CKN}
\quad\Longrightarrow\quad
\int_{J_j}A_{4B}^{ann}(\sigma)\,d\sigma\ge c_0
}
\tag{PML.9}
```

on a retained transported material packet belonging to the same fluid event,
with the pressure-viscosity-incompressibility-velocity tuple kept together.

This bridge has two inseparable clauses:

```math
\text{endpoint critical visibility}
\Longrightarrow
\text{preterminal retained material heat-scale packet},
\tag{PML.10}
```

and

```math
\text{critical packet visibility}
\Longrightarrow
\text{same-carrier }A_{4B}\text{ participation lower bound}.
\tag{PML.11}
```

Failure of the first clause is loss of the retained same-fluid packet record.
That is the Part face, not a hidden endpoint pulse.  Failure of the second
clause means CKN remains a readout and cannot be promoted to the gold route.

## 4. Why the installed CKN notes do not prove the bridge

The CKN heat-scale summability test proves the exact scaling gap:

```math
\mathcal C(Q_j)\ge c_0
\quad\text{while}\quad
\int_{Q_j}\left(|u|^3+|p|^{3/2}\right)\,dxdt
\simeq
r_j^2\mathcal C(Q_j).
\tag{PML.12}
```

Therefore one dyadic packet per scale can have fixed normalized visibility and
finite physical cubic-pressure mass:

```math
\sum_j r_j^2\mathcal C(Q_j)<\infty,
\qquad
\sum_j\mathcal C(Q_j)=\infty .
\tag{PML.13}
```

The normalized CKN packing note proves the same point in covering language:
bounded overlap and Vitali selection control only the physical cubic-pressure
measure, not the unweighted normalized charge.

The moving-cylinder CKN admissibility lemma is also not the missing bridge.  It
preserves CKN scale-critical quantities under a bounded-distortion moving
frame.  It licenses CKN use on a moving same-fluid cylinder after bounded
distortion is supplied.  It does not convert CKN visibility into four-body
participation activity.

Thus the current installed state is:

```math
\boxed{
\text{CKN detects the bad endpoint, but does not admit it into }A_{4B}.
}
\tag{PML.14}
```

## 5. Consequence for the live route

The gold route now has two exact producer options.

The endpoint-survival option is:

```math
OriginalSmoothData
\Longrightarrow
\text{terminal same-packet participation record survives}.
\tag{PML.15}
```

The preterminal bypass option is:

```math
\text{finite-time singularity}
\Longrightarrow
\text{infinitely many retained preterminal material heat-scale packets satisfying `(PML.1)`.}
\tag{PML.16}
```

At the time of this audit, the second option was narrower than proving terminal
endpoint record survival, but it was not yet installed.  Its exact name in the
route was:

```math
\boxed{
\texttt{PreterminalMaterialPacketA4BLowerBound.A}
}
\tag{PML.17}
```

with content:

```math
\boxed{
\text{singular heat-scale critical visibility}
\Longrightarrow
\text{fixed lower bound in the same material }A_{4B}\text{ packet}.
}
\tag{PML.18}
```

The later note
`mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md`
proves the retained gauge-fixed lower-bound branch.  CKN remains only a
visibility readout by itself; it enters the route only after the retained
non-gauge material packet is admitted to the full coupled participation packet.

## Verdict

The preterminal bypass is mathematically clean:

```math
\boxed{
\text{fixed same-packet }A_{4B}\text{ lower bound on infinitely many preterminal packets}
\Longrightarrow
\text{four-body contradiction}.
}
\tag{PML.19}
```

The proof that was missing at audit time was exactly the lower-bound admission:

```math
\boxed{
\text{CKN/critical visibility}
\Longrightarrow
\text{same material-packet }A_{4B}\text{ lower bound}.
}
\tag{PML.20}
```

That is the only admissible use of CKN in this bypass.  The retained
gauge-fixed lower-bound theorem now supplies this admission for the non-gauge
material critical packet; the storage/overlap alternative is handled by the
same-material annular return theorem.
