# MPP Retained Positive Affine Endpoint-Mass Direct Attempt

## Status

`RetainedPositiveAffineEndpointMassKill.A` is not proved by the current theorem
stack.

This pass attacks the positive affine survivor after the signed
potential-average route reduced to the endpoint mass

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma.
```

## Target

The positive carrier gives the pointwise contraction

```math
0\le c_F(t,x)\le \frac{|J|}{|I|}M_0(t,x),
```

so the affine quotient kill follows from the weighted endpoint theorem

```math
\int_0^T H_w(t)\|M_0(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{EP}
```

This is the smallest positive-source target currently exposed by the retained
far-corona route.

## Direct endpoint-square reduction

The installed far-corona execution note gives

```math
H_w(t)\le \int_I w(s,t)\,ds
```

and

```math
\|M_0(t)\|_{L_x^2}^2
\le
|J|\int_J\|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma.
```

On the fixed logarithmic windows this reduces `(EP)` to the finite-band
endpoint-square theorem

```math
\int_0^T
\Big(\sum_{m\in\mathcal B_I(N)}E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)}2^{-j}D_j(t)^2\Big)\,dt
\le
\frac{\eta\nu}{C}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{FBE}
```

The windows have bounded cardinality, so the raw theorem reduces further to a
finite shell-pair family

```math
\int_0^T E_m(t)\,2^{-j}D_j(t)^2\,dt
\le
\frac{\eta\nu}{C_{I,J}}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{FBE}_{m,j}
```

This is a real narrowing from the moving lower-prefix object. It is now a
fixed-width active-band problem.

## Why the crude square route still does not prove `(EP)`

The finite shell-pair square still asks for a theorem-grade gain on

```math
E_m(t)\,2^{-j}D_j(t)^2.
```

The classical energy inequality controls `E_m` and the integral of dissipation
separately. It does not make the coefficient small enough to absorb a square of
the active dissipation on every retained fixed pair. Treating
`E_m` as only bounded returns a superlinear dissipation demand rather than the
linear `D_N` budget needed by `(EP)`.

So the direct square estimate is a sufficient route, but not an installed
route.

## Sharper shell-pair route

The installed direct far-corona attack gives a sharper fixed shell-pair
estimate:

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
\left|
2^{2j}
\langle[\Delta_j,\Delta_m u\cdot\nabla]\Delta_j u,\Delta_j u\rangle
\right|
\le
\varepsilon\nu D_N
+
C_{\varepsilon,\nu,I,J}\widetilde\Lambda_N^\sharp E_N.
\tag{SP}
```

Thus the coefficient-bearing shell-pair packet already lands on the upgraded
gradient interface measure

```math
d\mu_N(t):=\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt.
```

This is better than `(FBE)_{m,j}`. It removes the raw fixed-collar coefficient
as an independent obstruction and leaves a threading problem:

```math
\text{shell-pair absorption / }\mu_N\text{ control}
\Longrightarrow
\text{weighted endpoint theorem }(EP).
```

## Measure route

The upgraded fourth bridge supplies the interval inequality

```math
E_N(t_1)+(1-\eta)\nu\int_I D_N(t)\,dt
\le
E_N(t_0)+C\mu_N(I)+C_*|I|2^{-2\delta N}.
```

So a Carleson/tent-space theorem of the form

```math
\mu_N(I)
\le
\frac{\varepsilon_\mu\nu}{C}\int_ID_N(t)\,dt+C_{\mu,*}2^{-2\delta N}
```

would feed the gradient bridge directly. A shrinking-window theorem for

```math
\nu_N(I):=\int_I\widetilde\Lambda_N^\sharp(t)\,dt
```

would also be useful when paired with small entrance tail.

No installed theorem gives either measure estimate in the needed retained
endpoint setting.

## Verdict

`RetainedPositiveAffineEndpointMassKill.A` is reduced, not proved.

The endpoint target has been narrowed to the exact finite-band / measure
threading obstruction:

```math
\textbf{RetainedMuNCarlesonEndpointThreading.A}.
```

It asks for one of the following:

1. a theorem threading the absorbed fixed shell-pair estimate `(SP)` back to
   `(EP)`;
2. a Carleson/tent-space control theorem for `\mu_N`;
3. a shrinking terminal-window theorem for `\nu_N` plus small entrance tail.

## Closure impact

The retained far-corona chain now reads:

```math
\text{RetainedPositiveAffineEndpointMassKill.A}
\Longleftarrow
\text{RetainedMuNCarlesonEndpointThreading.A}.
```

It does not close the affine quotient route, LPAS/CTS, `(L-Flux)`, retained
tail input, Part-row compactness, or PDF finality.
