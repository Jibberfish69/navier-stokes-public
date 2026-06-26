# EndpointTraceTemporalTowerRegularityReduction.A

Status: conditional reduction.  The endpoint temporal regularity theorem is discharged once the first-time-rung endpoint product estimate is installed on the same retained packet.  Current installed inputs do not yet supply that product estimate.

## Statement to prove

The desired theorem is

```math
\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}
\le C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right)
```

for some \(\beta>0\), uniformly over retained terminal heat-scale packets.

## Step 1. Endpoint trace formula

For the retained endpoint selector,

```math
H_m(s)=\int \left[{1\over2}|V_m|^2V_m\cdot\nabla(\eta_m^2)+Q_mV_m\cdot\nabla(\eta_m^2)\right]dy
+R_m^{trace/legal}(s).
```

Differentiate in time.  Ignoring already typed cutoff-time legal terms,

```math
\partial_sH_m
=\int \left[{3\over2}|V_m|^2\partial_sV_m\cdot\nabla(\eta_m^2)
+\partial_sQ_m\,V_m\cdot\nabla(\eta_m^2)
+Q_m\partial_sV_m\cdot\nabla(\eta_m^2)\right]dy
+\partial_sR_m^{trace/legal}.
```

Thus the only nonlegal endpoint product density is

```math
\mathcal T_m^{(1)}(s)
:=\int_{collar(\eta_m)}
\left(|V_m|^2|\partial_sV_m|+|\partial_sQ_m||V_m|+|Q_m||\partial_sV_m|\right)dy.
```

## Step 2. Exact sufficient estimate

If the first-time-rung endpoint product estimate holds,

```math
\int_{-1}^{0}\mathcal T_m^{(1)}(s)ds
+\operatorname{Var}_s R_m^{trace/legal}
\le C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right),
```

then

```math
\operatorname{Var}_sH_m
\le C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right).
```

Since the positive-part map is 1-Lipschitz,

```math
\operatorname{Var}_s[H_m]_+\le \operatorname{Var}_sH_m.
```

Together with the already paid \(L_s^1\) endpoint trace bound, this gives

```math
\|[H_m]_+\|_{BV_s(-1,0)}
\le C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right).
```

On a bounded time interval,

```math
BV(-1,0)\hookrightarrow W^{\beta,1}(-1,0)
\qquad 0<\beta<1.
```

Therefore

```math
\|[H_m]_+\|_{W_s^{\beta,1}(-1,0)}
\le C_\beta\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right).
```

Finally,

```math
W^{\beta,1}(-1,0)\hookrightarrow L^p(-1,0),\qquad 1<p<{1\over1-\beta},
```

which supplies the endpoint \(L_s^p\) reserve and kills terminal strip pulses.

## Step 3. Why the product estimate is not yet automatic

The mixed tower gives formal access to \(\partial_sV_m\) and \(\partial_sQ_m\), and factorial weights cancel the mixed Leibniz coefficients.  But the installed tower normal form does not yet imply

```math
\int_{-1}^{0}\int_{collar(\eta_m)}
\left(|V_m|^2|\partial_sV_m|+|\partial_sQ_m||V_m|+|Q_m||\partial_sV_m|\right)dyds
\le C\left(D_S^{rad}+D_Q^w+D_G+R_{legal}\right).
```

This is a same-carrier product estimate.  It requires both first-time-rung control and the correct collar \(V,Q\) integrability on the retained endpoint carrier.

## Result

`EndpointTraceTemporalTowerRegularity.A` is reduced to the exact smaller theorem

```math
\boxed{\text{FirstTimeRungEndpointProductControl.A}.}
```

Once that estimate is proved, endpoint temporal regularity, \(L_s^p\) reserve, endpoint Hardy control, and terminal strip exclusion follow immediately.