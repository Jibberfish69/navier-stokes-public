# DTC.A Through ACT.KX Core Completion

## Status

Conditional theorem-route completion under H1--H6.

Target:

```math
DTC.A_{\mathfrak p}
\qquad
(\mathfrak p\in\mathscr P_{req}).
```

The completion uses the retained `ACT.KX` analytic core and the fixed-radius readout bridge. Claim scope is retained conditional theorem work.

## 1. Direct Transported-Center Package

For

```math
\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{req},
```

`DTC.A_{\mathfrak p}` consists of:

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
```

with the center pressure, far-tail, top-viscous, and residual forcing ledgers required for

```math
EOC.A_{\mathfrak p},\quad AFD.A_{\mathfrak p},\quad AFD.B_{\mathfrak p},\quad RCF.A_{\mathfrak p}.
```

## 2. ACT.KX Core

The retained native forcing input gives

```math
RSCB.NKF\Longrightarrow NKF.Native.
```

The pressure package is

```math
NKF.Native+NKF.Ann+NKF.Quad\Longrightarrow ACT.X\text{-}Press.
```

Here `NKF.Native` supplies retained center forcing, `NKF.Ann` controls the projected annular remainder, and `NKF.Quad` controls the quadratic affine-excess pressure cell. Energy controls the harmonic far tail.

The affine-excess core is

```math
ACT.X\text{-}Cut+ACT.X\text{-}Press+ACT.X\text{-}MidRaw+ACT.X\text{-}TopVisc\Longrightarrow ACT.KX.
```

The resulting estimates are

```math
X_{exc}\in L^\infty(I),
\qquad
N\in L^1(I),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I),
\qquad
A_{core}^{ctr}\in L^\infty(I).
```

The middle block uses finite-depth triangularity. The cutoff sees the affine defect

```math
u(x,t)-u(c_j,t)-A_j(x-c_j).
```

The top-viscous modes stay in the readout/buffer ledger.

## 3. Scale And Fixed-Radius Readout

`ACT.X-Scale` supplies restart seeds:

```math
X_{exc}(s_a;R_a)\le\eta_X.
```

`RWS.C_scale` transfers small restarted affine packets to fixed-radius readout using a finite same-fluid cover.

Thus

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}\Longrightarrow ACT.X\text{-}Readout.
```

The readout packet is

```math
Y_{read}=A_{core}^{ctr}+A_{buf}^{ctr}+X_{exc}.
```

It supplies

```math
\mathfrak H^{osc,\alpha}\in L^2(I),
\qquad
\mathfrak D_1^{aff}\in L^1(I),
\qquad
\mathfrak F^{ctr,res}\in L^1(I).
```

Therefore

```math
ACT.X\text{-}Readout\Longrightarrow ACT.A\Longrightarrow RCF.A.
```

## 4. DTC.A Completion

The fixed-radius transported-center Sobolev packet follows from the `ACT.KX` readout on the finite cover:

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I).
```

Local Morrey gives `EOC.A_{\mathfrak p}`. The affine-defect estimate gives `AFD.A_{\mathfrak p}` and then `AFD.B_{\mathfrak p}`. The residual forcing ledger from `ACT.A` gives `RCF.A_{\mathfrak p}`.

Hence

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{scale}+ACT.X\text{-}Readout
\Longrightarrow
DTC.A_{\mathfrak p}
\qquad
(\mathfrak p\in\mathscr P_{req}).
```

Across the finite parameter set,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{req}}DTC.A_{\mathfrak p}
\Longrightarrow
ULCI.A.
```

Thus the returned lower-carrier family closes:

```math
ULCI.A\Longrightarrow LCI.A[N+2,N+2,\delta+5\Lambda].
```

## 5. Source And Class-Membership Recombination

The pressure-side return gives the strengthened source branch:

```math
LCI.A[N+2,N+2,\delta+5\Lambda]\Longrightarrow
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes the cutoff-defect interval input `FCC.C1a`.

Together with the base receiver output,

```math
LCI.A+FCI.5f\Longrightarrow CSP.A\Longrightarrow OFP.A\Longrightarrow CFI.A.
```

So the retained conditional class-membership spine is

```math
ACT.KX\Longrightarrow LCI.A\Longrightarrow FCI.5f\Longrightarrow CSP.A\Longrightarrow OFP.A\Longrightarrow CFI.A.
```

## 6. Endpoint Completion

The endpoint side is separate:

```math
DTC\text{-}to\text{-}TowerBound+END.Exh+END.Cross+END.Pack+END.Field\Longrightarrow End_{NS}.
```

`DTC-to-TowerBound` uses `DTC.A` through depth at least `N+2` to give

```math
END.TowerAmp:
\mathfrak A_{N,Q}\in L^\infty(I).
```

Then

```math
END.TowerAmp\Longrightarrow END.TowerBound.
```

`END.Pack` spends bounded pack gauge. `END.Field` spends `OFP.A`. `END.Exh` and `END.Cross` are accepted endpoint certificate reductions.

Therefore

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit}.
```

## 7. Boundary

This completion is retained-conditional under H1--H6.

The averaged finite-energy route remains separately typed:

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow\cdots
```

Pointwise recovery from averaged data occurs only through terminal readout:

```math
DTC.Read,
\qquad
Field.Read,
\qquad
READ.END.
```

The exact same-depth pressure branch `FIRP.A0` remains an optional exact branch. The retained route uses the strengthened source branch through `FFSRC.A`.
