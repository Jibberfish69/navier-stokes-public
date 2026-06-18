# PCTP.hard Endpoint-Face Audit

## Status

Theorem-facing nonterminal audit for the periodic Clay terminal-promotion
bridge.

This note separates what is now proved in the endpoint/readout layer from the
remaining Clay-level theorem.  It does not claim unconditional Navier-Stokes
regularity.

## Theorem `READ.COVER.noncirc`

The bridge

```math
READ.COVER:
End_{NS,\mathrm{avg}}
\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}
```

is downstream of the averaged endpoint package and is not used to prove
`AVG.MAIN.A`.

### Proof

The averaged route first builds

```math
CFI.A_{\mathrm{avg}}+AVG.END.Cert
\Longrightarrow
End_{NS,\mathrm{avg}}.
```

The averaged cover-or-face dichotomy is separate:

```math
AVG.COVER.A:
SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{every same-fluid approach tail is either good-covered or }Jump_{\mathrm{avg}}.
```

After `End_NS_avg` is available, `END.Field_avg` removes `Jump_avg`.  For a
strict margin threshold, `CAVG.J_{\varepsilon_m/2}` then gives

```math
End_{NS,\mathrm{avg}}
\Longrightarrow
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Every retained material point therefore has some positive
`\varepsilon_m/2`-good same-fluid cylinder.  Local stability upgrades this to
an open `\varepsilon_m`-good neighborhood; compactness of the retained approach
window gives finitely many cylinders, and finiteness gives a positive lower
scale.  That is exactly `READ.COVER`.

No step of this proof is an input to `SCF_base`, `ATD_m^\varepsilon`,
`AACT.KX`, `AVG.RCV.A`, `LCI.A_avg`, `CSP.A_avg`, `OFP.A_avg`, `CFI.A_avg`,
or `End_NS_avg`.  Hence the averaged-to-pointwise cover bridge is noncircular.

## Endpoint-Face Audit

The endpoint matrix is a conditional face-exclusion package.  It becomes a PDE
endpoint impossibility theorem only after the analytic face inputs below are
supplied on the terminal tail.

| Face | Grammar row | Analytic input needed to exclude it |
| --- | --- | --- |
| `Dead` | `neg Part => Dead` | the installed participation/dead row on the same terminal tail |
| `packing-detached` | `neg Pack => packing-detached or tower-blown` | uniform pack gauge `Gamma_pack,Q in L^\infty` |
| `tower-blown` | escape of `mathfrak A_{N,Q}` | `END.TowerAmp`, supplied by finite transported-center cover plus `DTC.Read` pressure/viscous readout |
| `Jump` | `neg Field => Jump` | `Field+OFP.A`, or terminal `Field.Read` from `Field_avg+READ.COVER+ATD_m^epsilon` |

Thus

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound
\Longrightarrow
End_{NS}
```

is not, by itself, a proof that the original PDE dynamics cannot realize one of
the endpoint faces.  It is the formal contradiction engine after the retained
terminal-tail inputs have been supplied.

## Exact Remaining Primitive

The surviving theorem is still

```math
PCTP.hard:
\qquad
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout},
```

equivalently

```math
\text{no first finite classical endpoint realizes }
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump
\vee response\text{-}margin\text{-}collapse.
```

The local pressure component of `DTC.Read` has been isolated in
`mpp-dtc-read-pressure-local-poisson-estimate.md`, and `READ.COVER.noncirc`
above removes the local circularity concern in the readout bridge.  The
remaining burden is the analytic terminal-tail uniformization itself: produce
the retained tail inputs, including strict Part response-margin retention or
closed terminal Part encoding, from the original periodic Navier-Stokes
dynamics, or directly rule out the endpoint faces as first finite classical
endpoints.

## Consequence For Authority

Any generated surface that states `full-mpp-closure-ready`, `PCTP.A` terminal
promotion, or zero Clay-level gaps is stronger than the current theorem-facing
math.  The safe authoritative package is nonterminal until `PCTP.hard` is
proved.
