# Authority-surface digest and exact post-LCI.A source branch completion

## Authority digest

The supplied authority table is used as route discipline.

The following families are retained as context, downstream consumers, supplier support, or export surfaces:

```text
TPS / SG.4 selector wall
TPS strong/defect bridge route
TPS internal branch surface
strong-entry transfer
conditional Leray / suitable-weak endpoint
lambda_2^+ / BR.lambda2
exact-potential / PSJ+
PSJ+.1 overlap branch
D.7mq + SSC-EP.A => D.7mr2 => RPC.3
RPC.3 => SG.4B => SG.4 => BR.lambda2
Hodge / normal-covector
YM-heat / deformation shadow carrier
Euclidean strict-shadow
classical-euclidean-shadow-export
R^3 whole-space export
WERS.3Cap-BO
```

These surfaces preserve downstream/export meaning and carry no upstream dependency into `CFI.A`, `OFP.A`, or `LCI.A`.

The live theorem-facing conditional spine remains:

```math
RSCB.NKF => NKF.Native => ACT.KX => ACT.X\text{-}Readout => ACT.A => RCF.A => LCI.A,
```

and the averaged finite-energy branch remains the terminal-production route:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
=> \cdots => CFI.A_{avg} => AVG.MAIN.A.
```

The post-`LCI.A` source branch is the branch solved in this note.

## Exact source target

The exact source branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
```

The frozen-family source ledger splits as

```math
\mathcal N^{src}
=
\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

## Pressure channel

The exact pressure channel reduced to the single-increment resonant theorem

```math
FIRP.A0:
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The new write

```text
problems/navier-stokes/theorem-construction/mcp-firp-a0-ffsrc-a-17084be8a3.md
```

claims and records `FIRP.A0` at fixed finite theorem depth and fixed scheduler threshold.

By finite frozen-net summation over

```math
\Xi_{\rho,\psi}^\varepsilon(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon},
```

this gives

```math
FPCR.C:
\mathcal N^{press}\in L^1(I).
```

## Strain/cascade channel

`FSCR.C` supplies

```math
\mathcal N^{sc}\in L^1(I).
```

## Cutoff channel

`FCC.C1` supplies cutoff absorption once the pressure and strain/cascade source controls are present. Hence

```math
\mathcal N^{cut}\in L^1(I).
```

## Full source conclusion

Insert the three source-channel estimates into the frozen-family source split:

```math
\mathcal N^{src}
=
\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

Therefore

```math
\mathcal N^{src}\in L^1(I),
```

which is exactly

```math
FCI.5f.
```

Thus

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
```

## Relation to strengthened source import

The stronger source import

```math
FFSRC.A => FCI.5f
```

remains a valid conditional import when cited. The exact branch above now closes through `FIRP.A0`, so this note does not spend `FFSRC.A` as a replacement for the exact pressure wall.

## Remaining live work

The source branch row is discharged. The remaining live theorem-facing work lies in `Jump_avg` branch elimination and terminal-tail production assembly.