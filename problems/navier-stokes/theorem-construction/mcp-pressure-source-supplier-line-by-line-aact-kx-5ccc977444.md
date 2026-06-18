# Pressure/source supplier line-by-line discharge under strengthened `FFSRC.A` authority

## Target

Discharge the `pressure-source-supplier-line-by-line` row by expanding the pressure/source suppliers into direct estimates on the live Navier-Stokes class-membership route.

## Route authority decision

The source row uses the strengthened source branch

```math
FFSRC.A \Longrightarrow FCI.5f
```

as the route-selected authority for the pressure/source supplier cell.

The exact same-depth branch remains recorded separately as

```math
(\forall \eta^\ell,\ FIRP.A0(\eta^\ell)) \Longrightarrow FPCR.C,
\qquad
FIRP.A0:\ \mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

`FIRP.A0` keeps open status on the exact branch. This note discharges the route-selected supplier row through `FFSRC.A`.

## Line 1: annular pressure-flux supplier

The annular pressure product estimate supplies, for each annulus `A_k`,

```math
\|p-c_k\|_{L^2(A_k)}
\le C\|u\otimes u\|_{L^2(A_k^*)}+F_k.
```

Multiplication by `2^{(2a-1)k}\|u\|_{L^2(A_k)}` and summation gives

```math
\sum_k2^{(2a-1)k}\int\|p-c_k\|_{L^2(A_k)}\|u\|_{L^2(A_k)}
\le C S_{near}+C S_{far},
```

with

```math
S_{near}:=\sum_k2^{(2a-1)k}\int\|u\otimes u\|_{L^2(A_k^*)}\|u\|_{L^2(A_k)},
```

```math
S_{far}:=\sum_k2^{(2a-1)k}\int F_k\|u\|_{L^2(A_k)}.
```

The near term follows from weighted annular `L^4` smoothing and weighted moment control by Cauchy-Schwarz:

```math
\sum_k2^{(2a-1)k}\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}
\le
\left(\sum_k2^{2ak}\|u\|_{L^4(A_k^*)}^4\right)^{1/2}
\left(\sum_k2^{(2a-2)k}\|u\|_{L^2(A_k)}^2\right)^{1/2}.
```

The far term is exactly the far summability input in the installed `PFlux.Supplier.Close` packet. Hence `PFlux.Supplier` closes on the annular supplier surface.

## Line 2: exact frozen-family pressure reduction and boundary

The exact frozen-family pressure channel is

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}
\Big(|\mathcal P_N^{red}(\eta^\ell,t;\psi)|+|\mathcal F_N^{press}(\eta^\ell,t;\psi)|\Big).
```

The installed exact pressure-channel reduction confines the same-depth survivor to

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t).
```

Thus exact `FPCR.C` follows from the finite family of single-increment statements `FIRP.A0(eta^ell)`. The current installed exact branch leaves `FIRP.A0` open, so the live route uses the strengthened source authority in the next line.

## Line 3: strengthened pressure bridge used by the source row

Under the ordinary interval energy ledger and the finite frozen reference net, `FFPR.B0` supplies

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
\le
C\big(1+\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)\big)
\big(M_\varepsilon+
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}(t;I)
\big).
```

Consequently the sufficient pressure inputs are

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,loc,4\Lambda,\varepsilon,\alpha}\in L^1(I).
```

The packet-local widened pressure bridge `FFPB.A0` reads these inputs as the pressure-channel supplier for the route and gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
```

## Line 4: frozen-family source energy inequality and Gronwall closure

The strengthened source package starts with finite packet aggregate at one time,

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_0;I)<\infty,
```

and applies the frozen-family inequality

```math
\frac{d}{dt}\mathcal F_{N,\rho,\psi}^{\varepsilon}
+\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
\le
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\left(\mathfrak b_\psi^{cut}+C(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})\right)
\mathcal F_{N,\rho,\psi}^{\varepsilon}.
```

The coefficient belongs to `L^1(I)` because

```math
\mathfrak b_\psi^{cut}\in L^1(I),
\qquad
\mathfrak C_{N+1,\rho,\psi}^{\delta}\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}
\in L^1(I).
```

With the pressure term already in `L^1(I)`, Gronwall gives

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I).
```

## Line 5: strain/cascade source channel

The strain/cascade source theorem applies to the bounded packet aggregate and collar coefficient:

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I),
\qquad
\mathfrak C_{N+1,\rho,\psi}^{\delta}\in L^1(I)
\Longrightarrow
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
```

Thus the nonpressure source channel has a direct estimate on the selected route.

## Line 6: cutoff source channel

The cutoff coefficient satisfies

```math
\mathfrak b_\psi^{cut}\in L^1(I).
```

With the pressure and strain/cascade channels in `L^1(I)`, `FCC.C1` absorbs the cutoff commutator into the viscous ledger plus the packet-factor coefficient times `\mathcal F_{N,\rho,\psi}^{\varepsilon}` and yields

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
```

## Line 7: full source split

The frozen-family source split is

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}
=
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}.
```

Lines 3, 5, and 6 place each summand in `L^1(I)`. Therefore

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I),
```

which is `FCI.5f`.

## Discharge verdict

The `pressure-source-supplier-line-by-line` row is discharged for the live route under the route-selected strengthened authority

```math
FFSRC.A \Longrightarrow FCI.5f.
```

The exact same-depth `FIRP.A0` branch remains open as a recorded alternative branch boundary. The remaining live Navier-Stokes blockers are `PCTP.hard` terminal-tail production, local `AACT.KX` coefficient-margin repair, and `Jump_avg` branch elimination.
