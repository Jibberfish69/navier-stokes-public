# Pressure/source supplier verification — FCC.C1, FSCR.C, FPCR.C, FFSRC.A

## Status

This is a local theorem/audit note for the `pressure-source-supplier-line-by-line` frontier item. The current generated live and review surfaces still list this item as open, while local theorem notes contain both a strengthened-route verification and a newer exact-branch claim. This note records the line-by-line supplier status and the authority conflict plainly.

## Source split

The frozen-family source ledger is split as

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}
=
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}.
```

Thus `FCI.5f` follows once the pressure, strain/cascade, and cutoff channels belong to `L^1(I)` on the fixed finite interval.

## Line 1: FCC.C1 cutoff supplier

`FCC.B1` gives the exact single-increment cutoff commutator formula

```math
\mathcal C_N^{cut}(h,t;\psi)
=-4\nu\sum_{k=0}^{N}\lambda_k
\int \phi_t\,\delta_hU_k\,\nabla\phi_t\cdot\nabla\delta_hU_k\,dx.
```

Young absorption gives

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le {1\over2}\mathcal N_{N,h,\psi}^{visc}(t)
+\mathfrak b_\psi^{cut}(t)E_N(h,t;\psi),
\qquad
\mathfrak b_\psi^{cut}=4\nu(\Phi_\psi^{glob,(1)})^2.
```

Summing over the finite frozen net gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}
\le {1\over2}\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
+\mathfrak b_\psi^{cut}\mathcal F_{N,\rho,\psi}^{\varepsilon}.
```

Therefore, under

```math
\mathfrak b_\psi^{cut}\in L^1(I),\qquad
\mathcal N^{src,\varepsilon,press}+\mathcal N^{src,\varepsilon,sc}\in L^1(I),
```

Gronwall yields

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I),\qquad
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

This is the actual use of `FCC.C1`: it consumes pressure and strain/cascade source control plus `\mathfrak b_\psi^{cut}\in L^1(I)`, then absorbs the cutoff channel.

## Line 2: FSCR.C strain/cascade supplier

The strain/cascade sufficient reduction gives for each frozen increment

```math
|\mathcal S_N(\eta,t;\psi)|+|\mathcal R_N(\eta,t;\psi)|
\le C_{N,\lambda}(1+\mathfrak C_{N+1,\rho,\psi}^{\delta}(t))E_N(\eta,t;\psi).
```

Summing over the finite frozen net gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(t;I)
\le C_{N,\lambda}(1+\mathfrak C_{N+1,\rho,\psi}^{\delta}(t))
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I).
```

Hence the post-`LCI.A` source-lane cell is

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}\in L^1(I),\qquad
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

This is `FSCR.C_postLCI`.

## Line 3: FPCR.C pressure supplier

The pressure channel is split on each frozen packet support as

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
\le C(\mathcal N^{LH/HL}+\mathcal N^{RR}+\mathcal T^{far}).
```

The post-`LCI.A` estimates are

```math
\mathcal N^{LH/HL}(t)
\le C\Gamma_{N,m,\rho,\psi}^{low}(t)\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I),
```

```math
\mathcal N^{RR}(t)
\le C\Gamma_{N,m,\rho,\psi}^{low}(t)\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I),
```

and

```math
\mathcal T^{far}(t)
\le C\|u(\cdot,t)\|_{L^2}^2
\le C\|u_0\|_{L^2}^2.
```

Thus

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),\qquad
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

This is `FPCR.C_postLCI`.

The exact same-depth pressure reduction also identifies the frozen-net resonant wall

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t).
```

Finite frozen-net summation gives `FPCR.C` from `FIRP.A0(\eta^\ell)` for each frozen increment. A newer local note claims `FIRP.A0` at fixed finite theorem depth and fixed scheduler threshold via fixed-threshold weighted-shell absorption. Older pressure decision surfaces record `FIRP.A0` as open. The generated live surfaces still retain the source row as an active blocker, so this exact-branch claim needs status reconciliation before route promotion.

## Line 4: stronger FFSRC.A import actually used

The live route authority records two source paths:

```math
FPCR.C+FSCR.C+FCC.C1\Longrightarrow FCI.5f,
```

and the stronger cited import

```math
FFSRC.A\Longrightarrow FCI.5f.
```

The existing line-by-line note `mcp-pressure-source-supplier-line-by-line-aact-kx-5ccc977444.md` uses the stronger path. Its actual supplier chain is

```math
FFPB.A0+FFSC.C1+FCC.C1\Longrightarrow FFSRC.A\Longrightarrow FCI.5f.
```

Here `FFPB.A0` is the packet-local widened-pressure bridge:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}\in L^1(I),\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

The local pressure carrier must be read as packet-local and weighted, including the frozen packet multipliers and finite-difference/tower weights. A centerwise-only reading reopens `FIPCB.A0`.

After `FFPB.A0`, `FFSC.C1` gives the frozen-family differential law

```math
{d\over dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+{1\over2}\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
(\mathfrak b_\psi^{cut}+C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta}))
\mathcal F_{N,\rho,\psi}^{\varepsilon}.
```

Gronwall gives `\mathcal F^\varepsilon\in L^\infty(I)` and `\mathcal N^{visc,\varepsilon}\in L^1(I)`. Then `FSCR.C_postLCI` and `FCC.C1` place the strain/cascade and cutoff channels in `L^1(I)`. The full source split gives `FCI.5f`.

## Verification verdict

1. `FCC.C1` is line-by-line verified as cutoff absorption after pressure and strain/cascade source controls plus `\mathfrak b_\psi^{cut}\in L^1(I)`.
2. `FSCR.C_postLCI` is line-by-line verified from the coefficient-side estimate `(1+\mathfrak C^\delta)\mathcal F^\varepsilon`.
3. `FPCR.C_postLCI` is line-by-line verified from the `LH/HL + RR + far` pressure split under `\Gamma^{low}\in L^1(I)` and bounded `\mathcal F^\varepsilon`.
4. The exact `FIRP.A0 => FPCR.C` branch has a newer fixed-threshold local claim and older open-branch records; current live/review surfaces still list the pressure/source row as open.
5. The stronger `FFSRC.A` import is actually used in the existing line-by-line note, through `FFPB.A0 + FFSC.C1 + FCC.C1 => FFSRC.A => FCI.5f`, with the packet-local pressure-carrier interpretation as a required typing condition.

## Local conclusion

The supplier algebra is verified under the stated route assumptions and under the route-selected stronger import. The repo-wide live status remains conditional because generated live/review surfaces still classify `pressure-source-supplier-line-by-line` as an active blocker and because the exact `FIRP.A0` claim has conflicting local status records.