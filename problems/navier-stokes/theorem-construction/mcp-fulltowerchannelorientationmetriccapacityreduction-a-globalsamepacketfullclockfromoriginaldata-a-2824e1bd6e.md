# FullTowerChannelOrientationMetricCapacityReduction.A

Status: failed as a complete theorem-grade proof.  The endpoint-time-rung channel can be inserted noncircularly, but the full enlarged tower orientation still reduces to a metric/coefficient exchange-capacity theorem.

## 0. Target

Orient every channel in the enlarged tower action

```math
A_{4B,N}^{tower}
```

into four body inequalities whose exchanges cancel and whose total capacity is bounded below.

The channel list includes

```math
dA_N^{rad},\quad dA_N^{end,1},\quad dA_N^{press/Helmholtz--Leray},\quad dA_N^{visc/collar},\quad dA_N^{comm},\quad dA_N^{geom},\quad dA_N^{metric/coeff}.
```

## 1. Channels that orient locally

The radius-spend channel is Body-I eligible by the mixed factorial tower identity:

```math
{1\over2}d\mathfrak E_s+\nu\mathfrak D_s+\mu_t\mathfrak M_t+\mu_x\mathfrak M_x=\mathfrak N_s.
```

The endpoint first-time-rung channel

```math
dA_N^{end,1}:=\sum_m\mathcal T_m^{(1)}(s)ds+dVar_sR_m^{trace/legal}
```

is Body-II/endpoint eligible because it is the exact time derivative channel for the retained endpoint local-energy trace.

The pressure/Helmholtz--Leray channel is eligible only in projected form: graph-parallel pressure motion is a Helmholtz--Leray/projector driver, and normal pressure/collar defect is Schur-normal.  Thus it must be entered as projected Helmholtz--Leray service plus relative defect, not raw pressure/collar variation.

The viscous/collar and legal selector terms are Body-II/Body-III eligible through the endpoint local-energy identity and collar/legal ledgers.

## 2. The remaining obstruction

The material metric/coefficient tower satisfies

```math
\partial_tA=-A(\nabla u)\circ X,
\qquad
\partial_tG=-2ASA^\top.
```

Higher material derivatives generate transported velocity-gradient derivatives plus lower coefficient products.  Their positive growth is the material record growth channel:

```math
d[\log(1+\mathfrak P_N^{mat})]_+.
```

The known channel identity has the form

```math
d[\log(1+\mathfrak P_N^{mat})]_+\le C\,dA_{4B,N}^{tower}.
```

This is a consumer of finite tower action.  It cannot be used to prove finite tower action without circularity.

To orient metric/coefficient growth, one needs a bounded-below exchange capacity \(\Phi_{metric}\) such that

```math
dA_N^{metric/coeff}+E_{41}\le E_{34}-\partial_\sigma\Phi_{metric}
```

with

```math
\Phi_{metric}\ge -C_N(u_0).
```

The naive choice \(\Phi_{metric}=-\log(1+\mathfrak P_N^{mat})\) has the correct derivative sign but is bounded below exactly when the material record is already bounded.  That is circular.

The choice \(\Phi_{metric}=+\log(1+\mathfrak P_N^{mat})\) is bounded below but has the wrong sign for paying positive record growth.

Thus no noncircular metric/coefficient capacity is currently installed.

## 3. Reduced theorem

The exact remaining theorem is

```math
\boxed{\text{MetricCoefficientExchangeCapacity.A}}
```

or equivalently

```math
\boxed{\text{ProjectedStrainMetricCarleson.A}}
```

with statement: positive material metric/coefficient tower growth is paid by a same-carrier bounded-below strain/Helmholtz--Leray/geometry capacity, not by the material record itself.

## Verdict

`FullTowerChannelOrientation.A` is not discharged.  The endpoint-time channel and projected pressure/Helmholtz--Leray split repair two previous gaps, but the full tower still fails at noncircular orientation of material metric/coefficient growth.

The current Gold live edge is therefore:

```math
\boxed{\text{MetricCoefficientExchangeCapacity.A}.}
```

Proving that theorem would complete the channel orientation step and allow the four-body cancellation algebra to produce finite full tower action.