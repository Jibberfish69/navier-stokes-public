# FIRP.A0 Retry Via Weighted-Shell Response Obstruction

Status: failed as an exact discharge. The retry reduces the target to a sharper weighted-shell response theorem.

## Original failure

The direct attempt asked for

```math
FIRP.A0:
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The earlier failure treated the resonant packet as the final same-depth survivor and stopped there. The missing point was why the fixed-time Calderon--Zygmund/Schauder pressure estimate does not already close the time integral.

The reason is that Calderon-Zygmund/Schauder boundedness transfers spatial regularity at a fixed time. It does not create the needed terminal time integrability of the resonant packet ledger.

## Retry: shellwise source localization

Apply Bony decomposition in the Lagrangian variable. The pressure source splits into

```math
\Delta_j\mathcal Z_\alpha
=
\mathcal Z^{LH}_{\alpha,j}
+\mathcal Z^{HL}_{\alpha,j}
+\mathcal Z^{RR}_{\alpha,j}.
```

The strict low-high and high-low terms land on coefficient-side ledgers. The resonant term is finite-collar in shell:

```math
|k-\ell|\le C_0,
\qquad
|j-k|\le C_0.
```

Thus source localization is valid.

## New obstruction: response through the variable-coefficient projector

The pressure response is not a constant-coefficient shell projection. It uses the weighted exact projector

```math
\Pi_G^{ex}=-G\nabla_aL_G^{-1}\operatorname{div}_a.
```

Therefore

```math
\Delta_j\Pi_G^{ex}\mathcal Z_\alpha
=
\Pi_G^{ex}\Delta_j\mathcal Z_\alpha
+[\Delta_j,\Pi_G^{ex}]\mathcal Z_\alpha.
```

After the source split, the exact response theorem must control four pieces:

1. low-high response;
2. high-low response;
3. resonant response;
4. projector commutator response.

The installed surfaces identify these as `WEP.2'` plus the resonant shell theorem side, preferably through `WERS.3Cap-BO`.

## Reduced obstruction

The exact weighted-shell obstruction is the integrability of the product terms

```math
\int_I\Lambda_N(t)E_N(t)\,dt
+
\int_I\Theta_N^\sharp(t)E_N(t)\,dt.
```

Separate integrability of coefficient ledgers and tail energy is insufficient. A closure requires one of:

```math
\int_I\Lambda_NE_N+\Theta_N^\sharp E_N<\infty,
```

or

```math
\Lambda_N+\Theta_N^\sharp\le c\nu2^{2N},
```

or an absorbable estimate

```math
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_\varepsilon R_N
```

with a summable remainder `R_N`.

## Verdict

The retry improves the diagnosis:

```math
FIRP.A0
\text{ reduces to the weighted-shell response/absorption theorem.}
```

It does not discharge `FIRP.A0`.

The next exact theorem target is

```math
WeightedShell.Absorb:
(\Lambda_N+\Theta_N^\sharp)E_N
\le
\varepsilon\nu D_N+C_\varepsilon R_N,
\qquad
R_N\in L^1(I).
```

## Boundary

The strengthened source route through `FFPB.A0` and `FFSRC.A` remains closed as a sufficient route. This note concerns only the stricter exact same-depth pressure branch.
