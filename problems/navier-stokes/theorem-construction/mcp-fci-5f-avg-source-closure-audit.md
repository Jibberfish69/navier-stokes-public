# FCI.5f Averaged-Branch Source Closure Audit

## Status

Conditional source-closure audit for the averaged `PCTP.hard` route.

The question is whether the source ledger used in

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}
```

is available in the averaged branch without importing retained pointwise data.

## Source decision

The averaged route selects the strengthened source supplier with the
cutoff-defect input included:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The strengthened package is

```math
\operatorname{Hyp}(FFSRC.A):
FFPB.A0+FFSC.C1+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

Here `FCC.C1a` is
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

The stricter same-depth exact branch

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f
```

remains a separate alternate route. It is not silently claimed by this audit.

## Source-channel proof

The source split is

```math
\mathcal N^{src}
=\mathcal N^{press}+\mathcal N^{sc}+\mathcal N^{cut}.
```

The pressure channel is supplied by the packet-local widened pressure bridge:

```math
FFPB.A0\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

The strain/cascade channel is supplied by

```math
FFSC.C1\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

The cutoff channel is supplied by

```math
FCC.C1+FCC.C1a\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

Hence

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I),
```

which is the source part of `FCI.5f`.

The frozen-family energy inequality is

```math
\frac{d}{dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})
\mathcal F_{N,\rho,\psi}^{\varepsilon}
+4\nu\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

The coefficient term is integrable by the source package and the averaged
lower-carrier/collar inputs; the cutoff-defect term is integrable only through
`FCC.C1a`. Gronwall gives

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I),
```

and the combined source ledger gives `FCI.5f`.

## Averaged consumer use

With `AVG.RCV.A` supplying

```math
LCI.A_{avg},
```

the averaged consumer chain uses the source input as

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

The output witness is averaged:

```math
CM_{avg}=Pack\wedge Part\wedge Field_{avg}.
```

## Non-import audit

The source closure does not import the following upstream:

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad old\ Field,
\quad old\ DTC.A,
\quad old\ CFI.A,
\quad End_{NS}.
```

It also does not treat `LCI.A_avg` as old pointwise `LCI.A`. The source ledger is used as a source-side interval control feeding the averaged collar consumer.

## Verdict

The averaged branch may use

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f
```

as its selected source supplier. Then

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}
```

is valid as an averaged consumer chain.

The route must explicitly record that it uses the strengthened sufficient source supplier. Any stricter exact same-depth pressure version remains a separate proof contract.
