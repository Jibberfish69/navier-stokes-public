# AVG.COVER.A Loop Audit

Status: conditional theorem item confirmed from existing surface.

## Statement

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{every same-fluid terminal approach tail is either averaged-good covered or enters }Jump_{avg}.
```

## Verification

The existing surface `mcp-avg-cover-a-terminal-approach-tail-dichotomy-read-cover-40326e3e96.md` proves the averaged dichotomy.

Finite energy and suitability give

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

In bounded same-fluid coordinates, parabolic Lebesgue differentiation gives small `SCF_base` at material-a.e. spacetime point. Hence away from

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\text{no positive same-fluid cylinder has }SCF_{base}\le\varepsilon_m\},
```

every material point has a positive same-fluid cylinder with

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

`SGC.A_a.e` supplies finite SCF-good subcovers on compact subsets of the good complement. `ATD_m^\varepsilon` upgrades each SCF-good cylinder to the finite-depth averaged affine tower packet needed by the averaged receiver route.

If a same-fluid terminal approach tail meets `\mathcal B_{\varepsilon_m}^{\Phi}`, the grammar row

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}
```

routes the tail into the averaged endpoint face.

The good-route case and the averaged-jump case exhaust the terminal approach tail. Thus `AVG.COVER.A` holds as an averaged dichotomy.

## Boundary

The result supplies averaged coverage. It does not assert

```math
\mathcal B_{\varepsilon_m}^{\Phi}=\varnothing.
```

It keeps the following readout bridges downstream:

```math
DTC.A_{avg}\to DTC.A,
\qquad
CFI.A_{avg}\to CFI.A,
\qquad
End_{NS,avg}\to End_{NS}.
```

Those require `DTC.Read`, `Field.Read`, `READ.COVER`, and `READ.END` in the later steps.

## Next item

The next loop item is

```math
AVG.MAIN.A:
SCF_{base}+ATD_m^\varepsilon+CAVG.J+AVG.RCV.A+AVG.END.A+FFSRC.A
\Longrightarrow
\text{no averaged finite-time class exit}.
```