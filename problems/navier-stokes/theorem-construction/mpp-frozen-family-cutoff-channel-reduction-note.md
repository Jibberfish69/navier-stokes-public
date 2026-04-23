# MPP Frozen-Family Cutoff-Channel Reduction Note

## Status

Candidate theorem-facing reduction note.

Role: isolate the exact next-form target beneath the frozen-net
cutoff-commutator channel in the source-side ledger under `(FCI.5f)`.

## Installed Inputs

1. [mpp-frozen-family-source-ledger-split-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-ledger-split-note.md)
2. [mpp-material-packet-closure-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md)
3. [mpp-quantitative-neighboring-response-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-quantitative-neighboring-response-witness-theorem.md)
4. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Purpose

```math
\boxed{
\text{the cutoff channel is localization-created only, so it can be absorbed into the viscous/coefficient side of the frozen-family law once the packet-factor coefficient }
\mathfrak b_{\psi}^{cut}\text{ is integrable,}
\newline
\text{shrinking the independent source wall beneath }(FCI.5f)\text{ to the pressure and strain/cascade channels.}
}
\tag{FCC.0}
```

This note now proves the exact cutoff absorption beneath the frozen-net source
ledger. What remains conditional is only the interval-integrability of the
packet-factor coefficient `\mathfrak b_{\psi}^{cut}`.

## Exact Frozen-Net Cutoff Channel

Recall from `(FSL.4)` that

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
|\mathcal C_N^{cut}(\eta^\ell,t;\psi)|.
\tag{FCC.1}
```

By `(MP.12)`, for each frozen increment `\eta^\ell`,
`\mathcal C_N^{cut}(\eta^\ell,t;\psi)` is exactly the viscous
cutoff-commutator packet created by localizing with `\phi_t`. So the cutoff
channel is the unique source-side piece produced solely by packet localization;
no pressure redistribution, pressure flux, or cascade algebra remains inside
it.

## Route-Native Packet-Factor Coefficients

Define the global transported packet-factor derivative ledgers from `(CSP.14z)`:

```math
\Phi_{\psi}^{glob,(j)}(t)
:=
\|\nabla^j\phi_t(\cdot,t)\|_{L^\infty(\mathbf R^3)}
\qquad
(j=0,1,2).
\tag{FCC.2}
```

### Proposition `FCC.A` (The cutoff-coefficient side already reduces to transported packet-factor derivatives)

The coefficient side of the cutoff channel is already carried by the exact
transported packet-factor laws

```math
D_t\phi_t=0,
\tag{FCC.A0}
```

```math
D_t\nabla\phi_t
=
-(\nabla u)^\top\nabla\phi_t,
\tag{FCC.A1}
```

```math
D_t\nabla^2\phi_t
=
-(\nabla u)^\top\nabla^2\phi_t
-\nabla^2\phi_t\,\nabla u
-\sum_{\ell=1}^{3}
(\nabla^2 u_\ell)\,\partial_\ell\phi_t,
\tag{FCC.A2}
```

and the corresponding interval bounds

```math
\Phi_{\psi}^{glob,(1)}(t_2)
\le
\Phi_{\psi}^{glob,(1)}(t_1)
+
\int_{t_1}^{t_2}
\|U_1(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\Phi_{\psi}^{glob,(1)}(s)\,ds,
\tag{FCC.A3}
```

```math
\Phi_{\psi}^{glob,(2)}(t_2)
\le
\Phi_{\psi}^{glob,(2)}(t_1)
+
C
\int_{t_1}^{t_2}
\Big(
\|U_1(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\Phi_{\psi}^{glob,(2)}(s)
+
\|U_2(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\Phi_{\psi}^{glob,(1)}(s)
\Big)\,ds.
\tag{FCC.A4}
```

In particular, if the low carrier ledger from `(CSP.25b)` belongs to `L^1(I)`,
then

```math
\Phi_{\psi}^{glob,(1)}+\Phi_{\psi}^{glob,(2)}\in L^\infty(I).
\tag{FCC.A5}
```

### Proof

This is exactly `CSP.B1c`, rewritten as the coefficient-side package beneath
the frozen-net cutoff channel. ∎

## Exact Cutoff Absorption

Define the packet-factor cutoff coefficient

```math
\mathfrak b_{\psi}^{cut}(t)
:=
4\nu\,
\big(\Phi_{\psi}^{glob,(1)}(t)\big)^2.
\tag{FCC.3}
```

### Proposition `FCC.B1` (Exact cutoff-commutator formula and single-increment absorption)

For every fixed increment `h\in\mathbf R^3`, time `t`, and finite depth `N`,

```math
\mathcal C_N^{cut}(h,t;\psi)
=
-4\nu
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}
\phi_t(x)\,\delta_hU_k(x,t)\,
\nabla\phi_t(x,t)\cdot\nabla\delta_hU_k(x,t)\,dx.
\tag{FCC.B1a}
```

Consequently,

```math
\big|\mathcal C_N^{cut}(h,t;\psi)\big|
\le
\frac12\,\mathcal N_{N,h,\psi}^{visc}(t)
+
\mathfrak b_{\psi}^{cut}(t)\,E_N(h,t;\psi).
\tag{FCC.B1b}
```

### Proof

Fix one rung `k`. In `(MP.12)`, the viscous contribution comes from pairing
`-\nu\Delta\delta_hU_k` with `2\lambda_k\phi_t^2\delta_hU_k`. Integrating by
parts gives

```math
2\nu\lambda_k
\int
\phi_t^2 |\nabla\delta_hU_k|^2\,dx
+
4\nu\lambda_k
\int
\phi_t\,\delta_hU_k\,
\nabla\phi_t\cdot\nabla\delta_hU_k\,dx.
\tag{FCC.B1c}
```

The first term is exactly the `k`-rung piece of `\mathcal N_{N,h,\psi}^{visc}`,
and the second is the localization-created source packet. Summing in `k` yields
`(FCC.B1a)` with the sign convention of `(MP.12)`.

For the estimate, use `|\nabla\phi_t|\le \Phi_{\psi}^{glob,(1)}(t)` and

```math
4\,\phi_t\,|\delta_hU_k|\,|\nabla\phi_t|\,|\nabla\delta_hU_k|
\le
\phi_t^2|\nabla\delta_hU_k|^2
+
4\,|\nabla\phi_t|^2\,|\delta_hU_k|^2.
\tag{FCC.B1d}
```

Multiply `(FCC.B1d)` by `\nu\lambda_k`, integrate, sum in `k`, and use
`(NRW.4)` and `(MP.6)`. This gives `(FCC.B1b)`. ∎

### Corollary `FCC.B2` (Frozen-net cutoff absorption)

Define the frozen-family viscous ledger

```math
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\mathcal N_{N,\eta^\ell,\psi}^{visc}(t),
\tag{FCC.B2a}
```

for the same frozen net `\Xi_{\rho,\psi}^{\varepsilon}(I)=\{\eta^\ell\}` as in
`(FCI.1)`--`(FCI.5ea)`. Then

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}(t;I)
\le
\frac12\,\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}(t;I)
+
\mathfrak b_{\psi}^{cut}(t)\,
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I).
\tag{FCC.B2b}
```

### Proof

Apply `(FCC.B1b)` with `h=\eta^\ell` and sum in `\ell=1,\dots,M_\varepsilon`.
The cutoff packets sum to `(FCC.1)`, the viscous pieces sum to `(FCC.B2a)`, and
the energies sum to `\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)`. ∎

### Proposition `FCC.C1` (The frozen-family theorem reduces to pressure plus strain/cascade once the cutoff coefficient is integrable)

Assume on `I` that

```math
\mathfrak b_{\psi}^{cut}\in L^1(I)
\tag{FCC.C1a}
```

and that the genuinely inhomogeneous frozen-net channels satisfy

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
\in L^1(I).
\tag{FCC.C1b}
```

Then

```math
\sup_{t\in I}\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)<\infty,
\tag{FCC.C1c}
```

```math
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}(\cdot;I)\in L^1(I),
\tag{FCC.C1d}
```

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}(\cdot;I)\in L^1(I),
\tag{FCC.C1e}
```

and therefore

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I),
\tag{FCC.C1f}
```

that is, the exact fixed-family source target `(FCI.5f)` closes.

### Proof

For each frozen increment `\eta^\ell`, combine `(NRW.3)` with `(FCC.B1b)`:

```math
\frac{d}{dt}E_N(\eta^\ell,t;\psi)
+
\frac12\,\mathcal N_{N,\eta^\ell,\psi}^{visc}(t)
\le
\mathcal N_{N,\eta^\ell,\psi}^{press}(t)
+
\mathcal N_{N,\eta^\ell,\psi}^{sc}(t)
+
\mathfrak b_{\psi}^{cut}(t)\,E_N(\eta^\ell,t;\psi),
\tag{FCC.C1g}
```

where
`\mathcal N_{N,\eta^\ell,\psi}^{press}:=
|\mathcal P_N^{red}(\eta^\ell,t;\psi)|+
|\mathcal F_N^{press}(\eta^\ell,t;\psi)|`
and
`\mathcal N_{N,\eta^\ell,\psi}^{sc}:=
|\mathcal S_N(\eta^\ell,t;\psi)|+
|\mathcal R_N(\eta^\ell,t;\psi)|`.

Summing `(FCC.C1g)` in `\ell` yields

```math
\frac{d}{dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)
+
\frac12\,\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}(t;I)
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}(t;I)
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(t;I)
+
\mathfrak b_{\psi}^{cut}(t)\,
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I).
\tag{FCC.C1h}
```

Integrate `(FCC.C1h)` on `[t_0,t]\subset I` and apply Gronwall using
`(FCC.C1a)`--`(FCC.C1b)` to obtain `(FCC.C1c)`. The same integrated inequality
then gives `(FCC.C1d)`. Finally, insert `(FCC.C1c)` and `(FCC.C1d)` into
`(FCC.B2b)` and integrate on `I` to obtain `(FCC.C1e)`. Since the full frozen
source ledger is the sum of the pressure, strain/cascade, and cutoff channels
by `(FSL.A0)`, `(FCC.C1f)` follows. ∎

### Corollary `FCC.C2` (Receiver-conditioned closure of the frozen-family source theorem)

Assume the paired low-carrier ledger from `(CSP.25b)` is integrable on `I` and
that

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
\in L^1(I).
\tag{FCC.C2a}
```

Then

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I).
\tag{FCC.C2b}
```

### Proof

By `(FCC.A5)`, the integrability of `(CSP.25b)` yields
`\Phi_{\psi}^{glob,(1)}\in L^\infty(I)`. Since `I` is finite, `(FCC.3)` gives
`\mathfrak b_{\psi}^{cut}\in L^1(I)`. Then `(FCC.C1)` applies with
`(FCC.C2a)` and yields `(FCC.C2b)`. ∎

## Installed Commutator Template

The collar packet note already records the matching viscous commutator control:
`(CSP.14w)` bounds the higher-rung viscous commutator by first and second
spatial derivatives of the moving cutoff, and the source-control summary under
`CSP.B3` states that the collar viscous commutator is controlled by annular
derivatives of the cutoff exactly as the packet cutoff-commutator is controlled
in `(MP.12)`.

So the sharpest exact on-disk reduction for the frozen-net cutoff channel is:

```math
\boxed{
\text{the cutoff packet is absorbed by }
\tfrac12\,\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\text{ plus the explicit coefficient }
\mathfrak b_{\psi}^{cut}\,\mathcal F_{N,\rho,\psi}^{\varepsilon},
\newline
\text{so the independent source wall collapses to the pressure and strain/cascade channels once }
\mathfrak b_{\psi}^{cut}\in L^1(I).
}
\tag{FCC.B}
```

What remains conditional is only the coefficient-side interval closure
`\mathfrak b_{\psi}^{cut}\in L^1(I)`. The current on-disk readout of that
closure is still `(FCC.A5)`, which spends the paired low-carrier ledger
`(CSP.25b)` from the receiver branch.

## Route Position

Among the three source-side channels in `(FSL.A0)`, the cutoff channel is now
no longer an independent same-depth source wall because:

1. it contains no pressure redistribution/flux algebra;
2. it contains no cascade bookkeeping;
3. its coefficient side already has installed route-native propagation through
   `CSP.B1c`, with interval closure `(FCC.A5)` available once the paired
   low-carrier ledger `(CSP.25b)` is granted;
4. its commutator template is already explicitly linked to the collar route by
   `CSP.B3`;
5. the exact source-side absorption statement `(FCC.C1)` is now on disk.

So the honest remaining source-side mathematical move is:

```math
\text{prove the coefficient-side interval closure }
\mathfrak b_{\psi}^{cut}\in L^1(I)
\text{ and then close the irreducible inhomogeneous source pair }
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc},
\newline
\text{since }(FCC.C1)\text{ already turns those two inputs into the full frozen-family source theorem }(FCI.5f).
\tag{FCC.C}
```

## Boundary

This note does **not** prove the coefficient-side interval closure
`\mathfrak b_{\psi}^{cut}\in L^1(I)` as a standalone source theorem.

That closure still uses the route-native packet-factor propagation
`(FCC.A3)`--`(FCC.A5)`, and the current on-disk readout of `(FCC.A5)` spends
the paired low-carrier ledger `(CSP.25b)` from the receiver branch.

What this note now fixes is the sharper theorem-facing reduction beneath the
cutoff channel:

```math
\boxed{
\text{the frozen-net cutoff wall is no longer an independent inhomogeneous source burden;}
\newline
\text{once }\mathfrak b_{\psi}^{cut}\in L^1(I),\text{ the fixed-family theorem reduces to the pressure and strain/cascade channels.}
}
\tag{FCC.D}
```
