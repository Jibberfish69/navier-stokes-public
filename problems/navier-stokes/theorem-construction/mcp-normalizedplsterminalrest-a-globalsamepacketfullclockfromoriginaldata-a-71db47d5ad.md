# Normalized PLS terminal rest attempt

Status: failed unconditional discharge; exact normalized reserve requirement recorded.

## Target

Prove terminal rest in the normalized participation-law--strain clock:

```math
\int_0^{T^*} d\Omega_N^{PLS}<\infty
```

or equivalently a terminal tail depletion statement

```math
\lim_{J\to\infty}\sum_{j\ge J}\Omega_{N,j}^{PLS}=0.
```

This is stronger than ordinary physical \(L^2\) terminal rest.

## Repo-grounded obstruction

The normalized endpoint-energy trace test records that finite physical energy, finite physical dissipation, and vanishing physical endpoint energy do not imply terminal rest in the normalized carrier.

On heat scale \(r_m\), normalized endpoint charge and physical charge are related schematically by

```math
E_m^{phys}=r_m^\alpha E_m^{ren},\qquad \alpha>0.
```

Thus a terminal Zeno chain can have

```math
E_m^{ren}=1,\qquad r_m=2^{-m},\qquad \sum_m E_m^{phys}<\infty,\qquad \sum_m E_m^{ren}=\infty.
```

So physical rest or finite physical dissipation is only a first-moment statement.  It does not supply endpoint uniform integrability for the normalized PLS carrier.

## Native source-square/no-waste form

The energy-currency source-square / no-waste test identifies the stronger theorem that would close this branch.  With shell quantities

```math
E_j(t)=2^{2j}\|\Delta_j u(t)\|_2^2,\qquad
D_j(t)=2^{4j}\|\Delta_j u(t)\|_2^2,
```

the native balance is

```math
{1\over2}{d\over dt}E_j+c_0\nu D_j\le \Phi_j^+.
```

First-moment control gives only

```math
\int_I D_j(t)dt\le C E_j(a)+C\int_I\Phi_j^+(t)dt.
```

The normalized terminal reserve requires square/unweighted control such as

```math
\int_I 2^{-j}\left(D_j^{res}(t;t_0)\right)^2dt\le \text{small tail}+\text{legal},
```

or

```math
\int_I2^{-j}(\Phi_j^+(t))^2dt\le \text{small tail}+\text{legal},
```

or a strict no-waste Lyapunov inequality

```math
-{d\over dt}L_j(t)\ge c\,2^{-j}(D_j^{res})^2-Legal_j(t).
```

Those are not installed by the current inputs.

## Model obstruction

On a heat interval of length \(h_j=2^{-2j}\), set

```math
D_j(t)=H_j\mathbf 1_{I_j}(t),\qquad H_j=2^{3j/2}.
```

Then

```math
\int_{I_j}D_jdt=2^{-j/2}\to0,
```

but

```math
\int_{I_j}2^{-j}D_j^2dt=1.
```

This is exactly the gap between physical terminal rest and normalized PLS terminal rest.

## Verdict

The theorem

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty
```

is not proved from current repo inputs.  The required missing theorem is a normalized PLS reserve: endpoint uniform integrability/no-free Zeno in the normalized PLS carrier, or an equivalent source-square, selected critical strain Carleson, strict no-waste Lyapunov, or unweighted terminal critical-action reserve.

Finite physical \(L^2\) rest is insufficient because terminal heat-scale packets can have vanishing physical cost and order-one normalized charge.