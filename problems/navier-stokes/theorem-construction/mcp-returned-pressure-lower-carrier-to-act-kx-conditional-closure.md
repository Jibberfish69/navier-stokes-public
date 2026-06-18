# Returned Pressure Lower-Carrier Read To ACT.KX Conditional Closure

## Status

Conditional theorem-route note.

This note continues from the strengthened source closure surface. It handles the remaining receiver target created by the pressure-side collar return:

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]
```

or equivalently

```math
LCI.A[N+2,N+2,\delta+5\Lambda].
```

Here

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo}.
```

The claim level is conditional under the retained-window hypotheses H1--H6 of the `ACT.KX` conditional route packet.

## 1. Returned Receiver Read

The pressure-side FEI return instance is

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]:
\qquad
\sup_{t\in I}\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda}(t)<\infty.
```

By the FEI-return instance note, this is an exact parameter read of the old receiver theorem family. Its thickness-sensitive coefficient slot is

```math
LCI.A[N+2,N+2,\delta+5\Lambda].
```

So no new receiver theorem family is introduced by the pressure-side return.

## 2. Uniform Lower-Carrier Closure

Let

```math
\mathfrak p_{press}:=(N+2,N+2,\delta+5\Lambda).
```

The uniform lower-carrier finite-parameter theorem uses the finite required parameter set

```math
\mathscr P_{req}
=\{(N,m,\delta),(N,m,\delta+\delta_{seg}),(N+4,N+4,\delta+5\Lambda),(N+4,N+4,\delta+\Lambda),(N+2,N+2,\delta+5\Lambda)\}.
```

For every

```math
\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{req},
```

write

```math
\mathcal G_{\mathfrak p}:=\mathcal G_{n,\mu,\rho,\psi}^{low,\Delta},
\qquad
\Gamma_{\mathfrak p}^{low}:=1+\sum_{q=0}^{\mu}\|U_q\|_{L^\infty(\mathcal C_{\rho,\psi}^{\Delta})}.
```

`ULCI.A` says that, once the transported-center ledgers are supplied for every required parameter, the lower-carrier Gronwall step closes uniformly:

```math
\sup_{\mathfrak p\in\mathscr P_{req}}\sup_{t\in I}\mathcal G_{\mathfrak p}(t)<\infty,
\qquad
\sup_{\mathfrak p\in\mathscr P_{req}}\|\Gamma_{\mathfrak p}^{low}\|_{L^1(I)}<\infty.
```

In particular, the pressure-side returned read follows:

```math
ULCI.A\Longrightarrow LCI.A[N+2,N+2,\delta+5\Lambda].
```

## 3. Direct Transported-Center Supplier

The non-smuggling supplier for `ULCI.A` is the direct transported-center package:

```math
DTC.A_{\mathfrak p}
\qquad
(\mathfrak p\in\mathscr P_{req}).
```

For each parameter instance, `DTC.A_{\mathfrak p}` includes the positive packet

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
```

and the direct pressure / far-tail / top-viscous center ledgers needed by `EOC.A`, `AFD.A`, `AFD.B`, and `RCF.A`.

The direct transported-center package gives

```math
DTC.A_{\mathfrak p}
\Longrightarrow
EOC.A_{\mathfrak p}\wedge AFD.A_{\mathfrak p}\wedge AFD.B_{\mathfrak p}\wedge RCF.A_{\mathfrak p}.
```

Therefore

```math
\bigwedge_{\mathfrak p\in\mathscr P_{req}}DTC.A_{\mathfrak p}
\Longrightarrow
ULCI.A
\Longrightarrow
LCI.A[N+2,N+2,\delta+5\Lambda].
```

## 4. ACT.KX Conditional Supply Route

The retained pointwise route supplies the direct transported-center package conditionally by the ordered chain

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

The installed receiver cells are:

```math
NKF.Native+NKF.Ann+NKF.Quad\Longrightarrow ACT.X\text{-}Press,
```

```math
ACT.X\text{-}Cut+ACT.X\text{-}Press+ACT.X\text{-}MidRaw+ACT.X\text{-}TopVisc\Longrightarrow ACT.KX,
```

and

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}\Longrightarrow ACT.X\text{-}Readout\Longrightarrow ACT.A\Longrightarrow RCF.A\Longrightarrow LCI.A.
```

The role of `ACT.X-Scale` is only to supply small-radius restart seeds. The role of `RWS.C_scale` is to transfer those small-radius packets to fixed-radius readout through a finite same-fluid cover. The route does not assert fixed-radius smallness.

## 5. Conditional Closure Of The Remaining Receiver Target

Combining the previous sections gives the conditional closure:

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}+ACT.X\text{-}Readout
\Longrightarrow
\bigwedge_{\mathfrak p\in\mathscr P_{req}}DTC.A_{\mathfrak p}
\Longrightarrow
ULCI.A
\Longrightarrow
LCI.A[N+2,N+2,\delta+5\Lambda].
```

Since

```math
LCI.A[N+2,N+2,\delta+5\Lambda]
```

is the thickness-sensitive receiver slot of

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda],
```

the remaining pressure-side returned receiver target closes at the retained conditional level.

## 6. Downstream Recombination With Strengthened Source Closure

The previously written pressure-side collar-return note established

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]
\Longrightarrow
FPL.C
\Longrightarrow
FPC.H
\Longrightarrow
FFPB.A0
\Longrightarrow
FFSRC.A
\Longrightarrow
FCI.5f.
```

Together with the receiver closure above, this gives the strengthened source route at the retained conditional level:

```math
ACT.KX\Longrightarrow LCI.A[N+2,N+2,\delta+5\Lambda]\Longrightarrow
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes the cutoff-defect interval input `FCC.C1a`.

The class-membership continuation then follows the existing route:

```math
LCI.A+FCI.5f\Longrightarrow CSP.A\Longrightarrow OFP.A\Longrightarrow CFI.A.
```

## Boundary

This note does not prove an unconditional finite-energy result. It is conditional under H1--H6, in particular retained smooth center-ball admission `RSCB.NKF`, bounded pack gauge, the `ACT.KX` scheduler and scale seeds, post-receiver source inputs, and endpoint certificates.

The averaged finite-energy replacement remains separate:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon\Longrightarrow DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow\cdots
```

Pointwise `DTC.A` is recovered from averaged data only through the terminal readout theorem `DTC.Read`, not upstream.
