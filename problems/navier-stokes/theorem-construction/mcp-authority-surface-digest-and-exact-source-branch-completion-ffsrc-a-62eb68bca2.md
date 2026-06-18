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

The post-`LCI.A` source branch is the branch surveyed in this note. Its exact
pressure closure is not promoted here; the selected route uses the strengthened
source import `Hyp(FFSRC.A)=>FCI.5f`, where `Hyp(FFSRC.A)` includes `FCC.C1a`.

## Exact source target

The exact source branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
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

records a proposed fixed-threshold proof of `FIRP.A0`, but that claim is now
classified as an unpromoted local attempt. The installed exact reduction note
still treats `FIRP.A0` as open.

By finite frozen-net summation over

```math
\Xi_{\rho,\psi}^\varepsilon(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon},
```

acceptance of that local attempt would give

```math
FPCR.C:
\mathcal N^{press}\in L^1(I).
```

## Strain/cascade channel

The exact same-depth `FSCR.C` target would supply

```math
\mathcal N^{sc}\in L^1(I).
```

## Cutoff channel

`FCC.C1` supplies cutoff absorption once the pressure and strain/cascade source
controls are present and the separate cutoff-defect input `FCC.C1a`,
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`, is available.
Hence

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

Therefore, if the exact pressure and strain/cascade walls are accepted,

```math
\mathcal N^{src}\in L^1(I),
```

which is exactly

```math
FCI.5f.
```

Thus the stricter exact reconstruction remains the conditional branch

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

## Relation to strengthened source import

The stronger source import

```math
\operatorname{Hyp}(FFSRC.A) => FCI.5f
```

is the route-selected supplier import when cited. The exact branch above does
not close through `FIRP.A0` unless the separate fixed-threshold local attempt is
accepted, so this note cannot outrank the installed `FIRP.A0` open-wall status.

## Remaining live work

The source branch row is discharged for `Hyp(FFSRC.A)=>FCI.5f` only with
`FCC.C1a` included. The stricter exact source reconstruction remains separate.
The remaining live theorem-facing work lies in `FCC.C1a`, `Jump_avg` branch
elimination, and terminal-tail production assembly.
