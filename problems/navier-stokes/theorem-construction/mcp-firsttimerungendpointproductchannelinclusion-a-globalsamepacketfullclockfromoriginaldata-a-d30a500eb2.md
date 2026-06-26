# FirstTimeRungEndpointProductChannelInclusion.A

Status: conditional architectural reduction.  The first-time-rung endpoint product is not controlled by lower-order local-energy inputs.  It must be included as an explicit endpoint-time-rung channel in the enlarged full tower action.  Once included, endpoint trace temporal regularity is a corollary of finite full-tower action.

## 0. Product to control

For the endpoint trace

```math
H_m(s)=\int \left[{1\over2}|V_m|^2V_m\cdot\nabla(\eta_m^2)+Q_mV_m\cdot\nabla(\eta_m^2)\right]dy+R_m^{trace/legal}(s),
```

time differentiation gives the nonlegal product density

```math
\mathcal T_m^{(1)}(s):=\int_{collar(\eta_m)}
\left(|V_m|^2|\partial_sV_m|+|\partial_sQ_m||V_m|+|Q_m||\partial_sV_m|\right)dy.
```

A lower-order \(L_s^1\) local-energy bound does not control this term.  The terminal strip model has finite \(L_s^1\) mass and unbounded time variation.

## 1. Failed lower-order route

Substituting

```math
\partial_sV_m=-(V_m\cdot\nabla)V_m-\nabla Q_m+\nu\Delta V_m
```

turns \(\mathcal T_m^{(1)}\) into collar terms such as

```math
|V_m|^3|\nabla V_m|,
\quad |V_m|^2|\nabla Q_m|,
\quad |Q_m||V_m||\nabla V_m|,
\quad |Q_m||\nabla Q_m|,
```

plus viscous integration-by-parts terms.  These are critical or supercritical endpoint-collar densities.  They are not controlled by the base \(L_s^1\) four-body payment.

Thus the theorem cannot be proved as a lower-order consequence without adding a reverse-Holder/critical-density theorem.

## 2. Correct noncircular inclusion

Define the endpoint first-time-rung channel

```math
dA_N^{end,1}
:=\sum_{m\in\mathcal F_N}\mathcal T_m^{(1)}(s)ds
+dVar_sR_m^{trace/legal}.
```

Add \(dA_N^{end,1}\) to the enlarged tower action \(dA_{4B,N}^{tower}\).  It is same-carrier and first-time-rung: it uses the same retained endpoint selector, the same collar, and the same velocity-pressure packet.

Then finite full-tower action gives

```math
\sum_m\operatorname{Var}_sH_m
\le C\int dA_N^{end,1}+R_{legal}
\le C\int dA_{4B,N}^{tower}+R_{legal}<\infty.
```

For each retained packet,

```math
\|[H_m]_+\|_{BV_s}\le C\left(\|H_m\|_{L_s^1}+\operatorname{Var}_sH_m\right).
```

Since \(BV(-1,0)\hookrightarrow W^{\beta,1}(-1,0)\) for \(0<\beta<1\), and \(W^{\beta,1}\hookrightarrow L^p\) for \(1<p<1/(1-\beta)\), this supplies

```math
\sup_m\|[H_m]_+\|_{L_s^p}<\infty
```

once the same-family endpoint channel reserve is finite.

## 3. Consequence

`FirstTimeRungEndpointProductControl.A` should not be a standalone lower-order lemma.  It is a channel-inclusion requirement for `FullTowerChannelOrientation.A`.

The remaining theorem becomes:

```math
\boxed{\text{FullTowerChannelOrientation.A includes }dA_N^{end,1}\text{ and orients it in the four-body cancellation.}}
```

If that orientation is proved, then `EndpointTraceTemporalTowerRegularity.A` and the endpoint \(L_s^p\) reserve follow.

## Verdict

The first-time-rung endpoint product is solved as a required channel of the full tower action, not as a lower-order estimate.  The entire burden now sits in the channel-orientation theorem for the enlarged full tower action.