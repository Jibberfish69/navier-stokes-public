# FIRP.A0 Exact Resonant Pressure Integrability Attempt

Status: failed as an exact same-depth discharge.

## Target

For one fixed frozen increment `eta`, the exact target is

```math
FIRP.A0:
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The resonant packet ledger is

```math
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\left(
\|\Xi_{j,k,\eta}^{RR}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}^{RR}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\right)^2.
```

## Exact reduction status

The frozen-net pressure wall is

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t).
```

Thus the finite frozen-net wall reduces to `FIRP.A0` for each frozen increment.

The installed exact pressure route reaches this resonant packet after strict low-high and strict high-low terms have been assigned to coefficient-side companions. The resonant packet is the same-depth survivor.

## Attempt result

No installed exact theorem gives

```math
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The available stronger route exports the resonant packet to widened local/collar carriers through the sufficient pressure branch. That route supports `FFSRC.A`, but it is a stronger sufficient replacement, not an exact same-depth proof of `FIRP.A0`.

## Verdict

`FIRP.A0` remains open. The exact same-depth pressure branch bottoms out here.

The valid exact reduction is

```math
\big(\forall \eta^\ell,\ FIRP.A0(\eta^\ell)\big)
\Longrightarrow
FPCR.C.
```

The active averaged route continues through the strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The source hypothesis includes `FCC.C1a`.
