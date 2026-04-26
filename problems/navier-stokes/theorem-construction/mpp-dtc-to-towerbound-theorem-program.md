# MPP DTC-to-TowerBound Theorem Program

## Status

Theorem-facing endpoint analytic promotion note.

Role: promote the tower-amplitude part of hypothesis `H6` in the installed
`ACT.KX` conditional completion packet.

This note is the endpoint-side companion to
`mpp-retained-window-native-forcing-theorem-program.md`. It isolates the
analytic content behind

```math
DTC\text{-to-TowerBound}
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound.
```

## Target

The theorem target is:

```math
DTC.A\text{ on a finite transported-center cover of }Q_t
+
K_k\text{ pressure/viscous readout}
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty(I).
```

The key point is that raw `U_k` control is insufficient. The tower amplitude
readout also needs

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

Thus the DTC depth must be at least `N+2`, and the same finite cover must supply
the local pressure response for `\nabla^{k+1}p`.

## Averaged-Route Boundary

This endpoint packet consumes pointwise `DTC.A`. It cannot consume
`DTC.A_avg` under the same name.

The averaged receiver route now has the intermediate target

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

To feed this endpoint theorem, a separate readout bridge is required:

```math
DTC.Read^\varepsilon:
\qquad
DTC.A_{\mathrm{avg}}+\text{uniform fixed-scale finite cover}
\Longrightarrow DTC.A.
```

Until `DTC.Read^epsilon` is proved, `DTC.A_avg` is only an averaged
transported-center packet and does not supply the Morrey/sup pressure-center
readout used below.

## Theorem Statement

**Theorem 1 (`DTC-to-TowerBound`).** Let

```math
Q_t
\subset
\bigcup_{\mathfrak p\in\mathscr P_Q}
B(c_{\mathfrak p}(t),R_{\mathfrak p})
```

be a finite transported-center cover on `I`, with bounded overlap and bounded
pack gauge. Assume that each packet `\mathfrak p\in\mathscr P_Q` satisfies
`DTC.A_{\mathfrak p}` through depth at least `N+2`, and that the local pressure
readout on the same transported ball gives, for `0\le k\le N`,

```math
\sup_{B(c_{\mathfrak p}(t),R_{\mathfrak p})}
|\nabla^{k+1}p|
\le
C_{\mathfrak p}
\left(
1+\mathcal Z_{\mathfrak p}^{TC}(t)+\|u_0\|_{L^2}^2
\right),
```

with

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I).
```

Then

```math
\mathfrak A_{N,Q}\in L^\infty(I).
```

Consequently

```math
DTC\text{-to-TowerBound}
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound.
```

## Proof

For `U_k`, `DTC.A_{\mathfrak p}` gives the transported-center local packet at
depth `N+2`. Morrey on the fixed transported ball gives, for `0\le k\le N`,

```math
\sup_{B(c_{\mathfrak p}(t),R_{\mathfrak p}/2)}
|U_k|
\le
C_{\mathfrak p}
(\mathcal Z_{\mathfrak p}^{TC})^{1/2}.
```

Because the cover is finite and each `\mathcal Z_{\mathfrak p}^{TC}` lies in
`L^\infty(I)`,

```math
\sup_{t\in I}
\sup_{x\in Q_t}
\sum_{k=0}^{N}|U_k(x,t)|
<\infty.
```

For `K_k`, use the identity

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The viscous term is a contraction of `U_{k+2}`. Since the DTC depth is at least
`N+2`, Morrey gives

```math
\sup_{B(c_{\mathfrak p}(t),R_{\mathfrak p}/2)}
|\Delta U_k|
\le
C_{\mathfrak p}
(\mathcal Z_{\mathfrak p}^{TC})^{1/2}.
```

The pressure term is controlled by the local pressure response on the same
transported ball plus the finite-energy far tail:

```math
\sup_{B(c_{\mathfrak p}(t),R_{\mathfrak p}/2)}
|\nabla^{k+1}p|
\le
C_{\mathfrak p}
\left(
1+\mathcal Z_{\mathfrak p}^{TC}(t)+\|u_0\|_{L^2}^2
\right).
```

Thus

```math
\sup_{B(c_{\mathfrak p}(t),R_{\mathfrak p}/2)}
|K_k|
\le
C_{\mathfrak p}
\left(
1+\mathcal Z_{\mathfrak p}^{TC}(t)+\|u_0\|_{L^2}^2
\right),
```

and the right side is uniformly bounded on `I`. Summing over the finite cover
and over `0\le k\le N` gives

```math
\sup_{t\in I}
\sup_{x\in Q_t}
\sum_{k=0}^{N}
\left(
|U_k(x,t)|+|K_k(x,t)|
\right)
<\infty.
```

This is exactly the tower-amplitude ledger

```math
\mathfrak A_{N,Q}\in L^\infty(I),
```

hence `END.TowerAmp`. The endpoint definition-level cell
`END.TowerBound` then rules out the `tower-blown` face.

## Non-Spending Guardrail

`DTC-to-TowerBound` is an endpoint analytic input. It must not use endpoint
closure to prove itself. It also must not smuggle in `Field`, `OFP.A`, `CSP.A`,
or the final `End_NS` conclusion.

Allowed inputs are:

- finite transported-center cover of `Q_t`,
- `DTC.A_{\mathfrak p}` on each cover element through depth at least `N+2`,
- local pressure response on the same cover,
- finite-energy far-tail pressure control,
- bounded pack geometry for the finite cover.

The theorem may feed `END.TowerBound`; it does not prove `END.Exh`,
`END.Cross`, `END.Pack`, or `END.Field`.

## Handoff

After `DTC-to-TowerBound` is installed, the endpoint side reduces to the formal
certificate theorem:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound
\Longrightarrow
End_{NS}.
```

This keeps the endpoint theorem inside the repo witness-certificate vocabulary
and does not phrase it as an independent classical blowup classification.
