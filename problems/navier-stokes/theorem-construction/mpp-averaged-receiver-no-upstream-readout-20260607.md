---
ns_viewer:
  theorem_id: averaged-receiver-no-upstream-readout
  proof_role: support
  logical_landing_node: averaged_terminal_route
  edge_effect: blocks upstream use of READ.COVER, DTC.Read, Field.Read, READ.END, and pointwise DTC/Field objects before End_NS_avg.
  upstream_origin: finite-energy point-pressure derivative obstruction and averaged receiver route audit.
  downstream_consequence: Continue the averaged branch through the no-Jump_avg scheduled cover, or route cover failure as Jump_avg and then to the Field face by AveragedFieldFaceAdmission.A only after the same-tail SCF_base local modulus is supplied or derived.
  status: conditional-on-scfbase-local-modulus
  source_authority: problems/navier-stokes/ns-proof-program-route-table.yaml
---

# Averaged Receiver No-Upstream-Readout Note

## Status

Installed route-separation note for the averaged finite-energy receiver branch.
It does not prove `End_NS_avg`, `End_NS`, the Clay theorem, or the final
Pack/Part/Field terminal witness consumption.

## Result

The averaged branch may not borrow point-center pressure derivatives or
terminal pointwise readout objects before the averaged endpoint package has
been produced.

The legal dependency order is:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
End_{NS,avg}.
```

Only after that endpoint object exists may the readout layer enter:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

This order is forced by the pressure-derivative obstruction from June 6:
finite energy and pressure Poisson recovery do not supply point-center
pressure-derivative bounds. The finite-energy branch therefore has to stay
averaged until the terminal readout cover is produced.

## Proof Check

The installed route table states that `DTC.Read` and `Field.Read` are terminal
readout bridges under `READ.COVER + ATD_m^epsilon`. It also says they are not
upstream inputs to `SCF_base`, `AACT.KX`, `AVG.RCV.A`, `LCI.A_avg`,
`CSP.A_avg`, `OFP.A_avg`, `CFI.A_avg`, or `End_NS_avg`.

The installed `READ.COVER From End_NS_avg` note proves:

```math
AVG.MAIN.A\Longrightarrow End_{NS,avg}\Longrightarrow READ.COVER.
```

The installed `READ.END Equivalence Theorem` also states the forward use in
the final proof as:

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

It explicitly does not authorize using `READ.COVER` upstream of `End_NS_avg`.

## Checked Primitive Resolution

The positive all-branches averaged-route primitive

```math
OriginalSmoothData
\Longrightarrow
\text{uniform positive SCF-good terminal finite cover}
+
\text{common AACT scheduler}.
```

still fails as a standalone theorem from `OriginalSmoothData`. The checked CM
primitive no longer closes by depth alone. Failure of such a uniform cover is
the averaged `Jump_avg` face, and on the same CM-test-admitted averaged terminal
tail `AveragedFieldFaceAdmission.A` gives the Field-face contradiction only with
the same-tail modulus:

```math
Pack_Q+Part_{N,Q}+Jump_{avg}(T)
\quad+\quad SCFBaseLocalModulus_N(T,r)
\Longrightarrow
\neg Field_{N,r,Q}\text{ at that }r.
```

This uses neither pointwise pressure recovery nor terminal readout upstream.

## Effect on the CM Program

This note keeps the averaged route inside the CM contrapositive discipline. It
does not label the averaged cover problem as `Exit(Q)` by itself. The checked
fail branch enters the CM test and, with `Pack_Q` and `Part_{N,Q}` retained,
derives the concrete Field-face failure only after the same-tail modulus is part
of the Field row or has been proved from it:

```math
\forall r>0\,\neg Field_{N,r,Q}.
```

That face failure supports `Exit(Q):=\neg Member(Q)` once the modulus input has
been supplied.
