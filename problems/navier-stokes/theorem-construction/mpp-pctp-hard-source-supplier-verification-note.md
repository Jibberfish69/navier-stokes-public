# MPP PCTP.hard Source Supplier Verification Note

## Status

Theorem-facing discharge of the `PCTP.5.D` source-supplier cell for the
route-selected strengthened branch.

This note does **not** prove the exact same-depth resonant pressure theorem
`FIRP.A0`. It licenses the source supplier used by the averaged route:

```math
\operatorname{Hyp}(FFSRC.A)
\Longrightarrow FCI.5f.
\tag{PCTP.SRC.0}
```

Here `\operatorname{Hyp}(FFSRC.A)` includes the weighted cutoff-defect
integrability input
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

The exact branch remains:

```math
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow FCI.5f,
\qquad
FPCR.C\text{ exact pressure wall below }FIRP.A0.
\tag{PCTP.SRC.0e}
```

This note verifies the source suppliers at the route ledger level. It does not
promote the stricter exact branch: `FIRP.A0` remains the exact pressure wall
unless separately proved, and exact same-depth `FSCR.C` remains distinct from
the post-`LCI.A` sufficient readout `FSCR.C_postLCI`.

## Source Split

The frozen-family source ledger splits as

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}
=
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}.
\tag{PCTP.SRC.1}
```

Thus `FCI.5f` follows once the pressure, strain/cascade, and cutoff channels
belong to `L^1(I)`.

## Cutoff Supplier `FCC.C1`

The cutoff commutator has the single-increment form

```math
\mathcal C_N^{cut}(h,t;\psi)
=
-4\nu\sum_{k=0}^{N}\lambda_k
\int \phi_t\,\delta_hU_k\,\nabla\phi_t\cdot\nabla\delta_hU_k\,dx.
\tag{PCTP.SRC.2}
```

The Young-margin split gives

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le
\frac12\mathcal N_{N,h,\psi}^{visc}(t)
+
4\nu\,\mathcal E_N^{cut,\nabla}(h,t;\psi),
\qquad
\mathcal E_N^{cut,\nabla}(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int|\nabla\phi_t|^2|\delta_hU_k|^2.
\tag{PCTP.SRC.3}
```

Summing over the finite frozen net,

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}
\le
\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
+
4\nu\,\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
\tag{PCTP.SRC.4}
```

Therefore, after the pressure and strain/cascade source controls are in
`L^1(I)` and
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`, Gronwall gives

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I),
\qquad
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
\tag{PCTP.SRC.5}
```

This is the actual theorem-facing use of the corrected `FCC.C1`: cutoff is a
Young-margin cell with a separate cutoff-defect input, not an independent
replacement for the pressure and strain/cascade channels.

## Strain/Cascade Supplier `FSCR.C`

The strain/cascade reduction gives, for each frozen increment,

```math
|\mathcal S_N(\eta,t;\psi)|+|\mathcal R_N(\eta,t;\psi)|
\le
C_{N,\lambda}
\bigl(1+\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)\bigr)
E_N(\eta,t;\psi).
\tag{PCTP.SRC.6}
```

Summing over the finite frozen net yields

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(t;I)
\le
C_{N,\lambda}
\bigl(1+\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)\bigr)
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I).
\tag{PCTP.SRC.7}
```

Hence the post-`LCI.A` source-lane strain/cascade cell is

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}\in L^1(I),
\qquad
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
\tag{PCTP.SRC.8}
```

This is `FSCR.C_postLCI`.

## Exact Pressure Supplier `FPCR.C`

The exact post-`LCI.A` pressure split is

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
\le
C\bigl(\mathcal N^{LH/HL}+\mathcal N^{RR}+\mathcal T^{far}\bigr).
\tag{PCTP.SRC.9}
```

The low-high/high-low and resonant finite-net pieces are controlled by the
post-`LCI.A` lower-collar coefficient:

```math
\mathcal N^{LH/HL}(t)
\le
C\Gamma_{N,m,\rho,\psi}^{low}(t)
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I),
\tag{PCTP.SRC.10}
```

```math
\mathcal N^{RR}(t)
\le
C\Gamma_{N,m,\rho,\psi}^{low}(t)
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I),
\tag{PCTP.SRC.11}
```

and the far tail obeys the energy bound

```math
\mathcal T^{far}(t)
\le
C\|u(\cdot,t)\|_{L^2}^2
\le
C\|u_0\|_{L^2}^2.
\tag{PCTP.SRC.12}
```

Thus

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),
\qquad
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
\tag{PCTP.SRC.13}
```

This is `FPCR.C_postLCI`.

The exact same-depth pressure reduction also identifies the frozen-net resonant
wall:

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t).
\tag{PCTP.SRC.14}
```

Finite frozen-net summation gives the exact `FPCR.C` branch from
`FIRP.A0(\eta^\ell)` for each frozen increment. That exact branch remains
available only if `FIRP.A0` is proved.

## Strengthened Supplier Actually Used

The averaged route is allowed to import the stronger source branch:

```math
FFPB.A0+FFSC.C1+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow
FFSRC.A
\Longrightarrow
FCI.5f.
\tag{PCTP.SRC.15}
```

The pressure input is the packet-local widened bridge:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
\tag{PCTP.SRC.16}
```

The carrier `\mathfrak H^{press,loc}` must be read packet-locally: it includes
the frozen packet multipliers and finite-difference/tower weights appearing in
the packet pressure channel. A centerwise-only reading would reopen `FIPCB.A0`.
Likewise, the post-`LCI.A` pressure bounds for the `LH/HL` and `RR` pieces are
accepted here as the installed finite Leibniz/local pressure-response estimates
`FFPB.A3`--`FFPB.A4`; a literal term-by-term pressure expansion would be a
separate sharpening of that bridge, not an objection to the selected
`FFSRC.A` import.

After `(PCTP.SRC.16)`, `FFSC.C1` supplies

```math
\frac{d}{dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+
\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
4\nu\,
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}
+
C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})
\mathcal F_{N,\rho,\psi}^{\varepsilon}.
\tag{PCTP.SRC.17}
```

With `\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`,
Gronwall gives `\mathcal F^\varepsilon\in L^\infty(I)` and
`\mathcal N^{visc,\varepsilon}\in L^1(I)`. Then `(PCTP.SRC.8)` and
`(PCTP.SRC.5)` place the strain/cascade and cutoff channels in `L^1(I)`.
Using the split `(PCTP.SRC.1)` gives `FCI.5f`.

## Verdict

For the main averaged route that explicitly imports `FFSRC.A`, the
pressure/source supplier cell is discharged only after the weighted
cutoff-defect input is supplied:

```math
\operatorname{Hyp}(FFSRC.A)
\Longrightarrow FCI.5f.
\tag{PCTP.SRC.18}
```

The exact same-depth route is not discharged unless `FIRP.A0` is proved:

```math
FIRP.A0
\Longrightarrow
FPCR.C
\Longrightarrow
FCI.5f\quad\text{with }FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I).
\tag{PCTP.SRC.19}
```

Thus `PCTP.5.D` is conditional for the selected strengthened source branch:
the pressure and strain/cascade pieces are installed, while the cutoff channel
requires the explicit weighted cutoff-defect integrability input or a separate
domination theorem that proves it from the packet data.
