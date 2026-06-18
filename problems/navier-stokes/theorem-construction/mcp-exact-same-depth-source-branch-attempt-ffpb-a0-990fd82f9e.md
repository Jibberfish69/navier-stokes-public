# Exact Same-Depth Source Branch Attempt

Status: failed as an exact same-depth discharge. The branch is reduced to the exact pressure wall `FIRP.A0`.

## Target

The requested exact source branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

## Exact split

The frozen-family source ledger splits as

```math
\mathcal N^{src}
=
\mathcal N^{press}
+\mathcal N^{sc}
+\mathcal N^{cut}.
```

Thus

```math
\mathcal N^{press}\in L^1,
\qquad
\mathcal N^{sc}\in L^1,
\qquad
\mathcal N^{cut}\in L^1
\Longrightarrow
FCI.5f.
```

`FCC.C1` accounts for the cutoff Young-margin channel only with `FCC.C1a`,
the interval input
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`. `FSCR.C`
accounts for the strain/cascade channel.

## Pressure branch

The exact pressure channel is not solved by the split itself. The installed pressure reduction identifies the surviving same-depth pressure object as the frozen-net resonant pressure packet. This reduces the exact branch to

```math
FIRP.A0:
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I)
```

for the single-increment resonant pressure packet, and then to its frozen-net sum over the finite family.

The present exact route does not provide a smaller exact descendant beneath `FIRP.A0`.

## Relation to strengthened route

The strengthened sufficient route

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f
```

is closed through the widened packet-local pressure bridge `FFPB.A0`, strain/cascade closure, and cutoff absorption. That route is the active supplier in the averaged theorem.

The exact same-depth branch is stricter. It cannot be declared solved by replacing `FIRP.A0` with the widened stronger bridge.

## Verdict

The exact same-depth branch remains open at

```math
FIRP.A0.
```

The valid reduced statement is

```math
FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

with `FIRP.A0` still an unsolved exact pressure integrability theorem and
`FCC.C1a` still a separate cutoff-defect interval input.
