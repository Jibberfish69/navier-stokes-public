# PCTP.hard Solve Path Progression: FTL.C to DTC.A / ACT.KX

Status: conditional route progression. Terminal discharge remains open.

## Initial target

The proposed first positive estimate was

```math
FTL.C:
\qquad
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I).
```

This implies `FTS.C`, then `FVR.F`, then `FVR.D`, then `FVR.A`, and hence the top-viscous half of the fixed-increment source route.

## Route descent

The `FTL.C` surface identifies the sharper return:

```math
FTL.Bc0
\equiv
CSP.B3a1[N+4,N+4,\delta+\Lambda].
```

The FEI return instance surface identifies this as a returned lower-carrier read:

```math
LCI.A[N+4,N+4,\delta+\Lambda].
```

The pressure-side FEI return similarly gives

```math
LCI.A[N+2,N+2,\delta+5\Lambda].
```

Thus the FTL/FEI/HSP branch returns to the lower-carrier program and supplies zero independent terminal-tail production.

## Receiver-side descent

The lower-carrier surface reduces `LCI.A` to a transported-center coefficient package. The residual-forcing surface compresses the receiver wall to

```math
RCF.A:
\qquad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I)
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I),
```

under the imported transported-center package.

The affine-frame defect note compresses the first-center-rung side to

```math
AFD.A:
\qquad
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I),
```

and the supplier reduction sharpens that to the explicit far-tail / first-rung-viscous pair:

```math
\mathfrak T_{1,\rho,\psi}^{press,far}
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}
\in L^1(I).
```

The halo-shell first-rung return shows that the energy-conditioned halo-shell branch descends through `FEI.C7` back to returned `LCI.A` reads. This branch also returns to the lower-carrier program.

## Non-smuggling repair

The direct transported-center surface gives the actual route-breaking target:

```math
DTC.A_{\mathfrak p}
\qquad
(\mathfrak p\in\mathscr P_{req}).
```

For each required parameter instance, `DTC.A_p` asks for the direct transported-center packet

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
```

plus the native center ledgers

```math
\mathfrak K_0^{ctr},
\quad
\mathfrak T_1^{press,far},
\quad
\mathfrak K_1^{visc,ctr},
\quad
\mathfrak F^{ctr,res}_{\mathfrak p}
\in L^1(I).
```

The excluded inputs for this target are

```math
EOC.A,
\quad AFD.A,
\quad RCF.A,
\quad LCI.A,
\quad CSP.A,
\quad OFP.A,
\quad Field.
```

So `DTC.A_p` is the correct pre-receiver positive theorem. Its affine version is the `ACT.KX` package.

## ACT.KX core

The affine-normalized packet separates the small excess from the center modes:

```math
\mathcal Y^{read}
=
\mathcal A_{core}^{ctr}
+
\mathcal A_{buf}^{ctr}
+
\mathcal X^{exc}.
```

Only `\mathcal X^{exc}` is the small variable. The center modes travel as a live core ledger.

The receiver block is the simultaneous system

```math
\frac{d}{dt}\mathcal X^{exc}
+c_\nu\mathcal N
\le
(L_0+C\mathcal A_{core}^{ctr})\mathcal X^{exc}
+C_X(\mathcal X^{exc})^{1/2}\mathcal N
+F_0,
```

```math
\frac{d}{dt}\mathcal A_{core}^{ctr}
\le
\mathcal K_{\le m}^{ctr}
+\mathcal T_{tri}(\mathcal A_{core}^{ctr}),
```

```math
\mathcal K_{\le m}^{ctr}
\le
C((\mathcal X^{exc})^{1/2}\mathcal N^{1/2}+\mathcal X^{exc})+F_K.
```

with `L_0,F_0,F_K in L^1(I)`. The scale-small coefficient-margin step uses

```math
\eta_X=(c_\nu/(4C_X))^2,
```

restart seeds from `ACT.X-Scale`, and fixed-radius readout recovery from `RWS.C_scale`.

The installed receiver chain is

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-}Press,
```

```math
ACT.X\text{-}Cut+ACT.X\text{-}Press+ACT.X\text{-}MidRaw+ACT.X\text{-}TopVisc
\Longrightarrow
ACT.KX,
```

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

## Consequence

The solve path now has a precise route-breaking theorem:

```math
DTC.A_{\mathfrak p}\quad(\mathfrak p\in\mathscr P_{req}).
```

Equivalently, prove the affine-normalized `ACT.KX` block and its direct pre-receiver coefficient cells for every required parameter instance.

## Boundary for PCTP.hard

This receiver-local closure still consumes retained smooth center-ball regularity through `RSCB.NKF` and restart seeds through `ACT.X-Scale`. Therefore it is a conditional receiver theorem on a retained window.

The terminal theorem still requires the global production statement

```math
TTU:
\qquad
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained Pack/Part/Field/tower data}.
```

After `TTU`, the existing chain gives `PCTP.cond` and the continuation contradiction. Before `TTU`, the result remains a conditional solve-path progression rather than a terminal proof.

## Next exact work item

The next theorem note should attack

```math
DTC.A_{\mathfrak p}
```

through the affine-normalized `ACT.KX` system, with special attention to proving the pre-receiver coefficients

```math
L_0,F_0,F_K\in L^1(I)
```

from `RSCB.NKF`, `NKF.Native`, `NKF.Ann`, `NKF.Quad`, pressure far-tail energy, and moving affine cutoff estimates, while keeping `EOC.A`, `AFD.A`, `RCF.A`, `LCI.A`, `CSP.A`, `OFP.A`, and `Field` outside the proof inputs.
