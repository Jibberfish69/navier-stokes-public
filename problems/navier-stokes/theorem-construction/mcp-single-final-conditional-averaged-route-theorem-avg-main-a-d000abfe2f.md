# Single Final Conditional Averaged Route Theorem

Status: conditional theorem file. This is not a release or promotion artifact.

## Theorem

For the periodic zero-force Navier-Stokes problem on `T^3`, assume the following route hypotheses are available on every retained same-fluid terminal approach window for smooth divergence-free zero-mean data:

1. Moving-cylinder CKN admissibility under bounded same-fluid distortion.
2. CKN-compatible affine/pressure normalization for `SCF_base`.
3. `ATD_m^epsilon` at depth sufficient for endpoint tower and pressure readout.
4. `SGC.A_a.e` material almost-everywhere SCF-good coverage.
5. `CAVG.J` matrix integration of the bad material set as `Jump_avg`.
6. `AVG.RCV.A`, giving `DTC.A_avg => LCI.A_avg`.
7. The strengthened source supplier `Hyp(FFSRC.A) => FCI.5f`, with `FCC.C1a`
   included.
8. The averaged consumer chain

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

9. The averaged endpoint theorem

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

10. The readout bridge

```math
End_{NS,avg}
\Longrightarrow
READ.COVER,
```

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field,
```

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
DTC.A,
```

and

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

11. The class-exit/continuation equivalence `ECQ.A` and the bounded-`H^s`
    periodic relaunch criterion `PCTP.cond`: an `H^s(T^3)` bound supplies a
    uniform lifespan, and launch times `t_j\uparrow T_*` carry the same solution
    past a finite endpoint by uniqueness.

Then the maximal classical solution has

```math
T_* = \infty.
```

## Proof

From `SCF_base`, `SGC.A_a.e`, `ATD_m^epsilon`, and `CAVG.J`, the averaged coverage theorem gives

```math
AVG.COVER.A.
```

On the averaged-good branch, `ATD_m^epsilon` gives the finite-depth averaged affine tower packet and hence the averaged `ACT.KX` output. This supplies

```math
DTC.A_{avg}.
```

By `AVG.RCV.A`,

```math
DTC.A_{avg}\Longrightarrow LCI.A_{avg}.
```

The source decision uses the strengthened branch

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

Therefore the averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint theorem gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

Now apply the readout bridge. From `End_NS_avg`, `READ.COVER` gives a finite positive-scale SCF-good cover. On that cover, `Field.Read` gives old pointwise `Field`, and `DTC.Read` gives old pointwise `DTC.A`, including the pressure component of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Thus

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```

The pointwise class-membership route gives `CFI.A`; combining with recovered `End_NS` gives absence of finite-time class exit:

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
```

By `ECQ.A`, absence of finite-time class exit implies the maximal classical lifespan is infinite. Equivalently, the class witness supplies a terminal-tail continuation readout

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2,
```

and `PCTP.cond` extends the solution beyond any finite `T_*`, a contradiction. Hence

```math
T_* = \infty.
```

## Type discipline

The only averaged-to-pointwise transitions used are:

```text
Field_avg  --Field.Read-->  Field
DTC.A_avg  --DTC.Read---->  DTC.A
End_NS_avg --READ.END---->  End_NS
```

`READ.COVER` is downstream of `End_NS_avg` and is not used to construct `AVG.MAIN.A`.

## Boundary

This theorem records the conditional mathematical route. Matrix, audit, review, and release status remain controlled by the project governance surfaces.
