# MetricCoefficientExchangeCapacityLocalNoGo.A

Status: failed as a local bounded-below capacity theorem.  The metric/coefficient channel cannot be paid by a local Cauchy-Green or local annular stress-work primitive.  The remaining theorem is a global same-material terminal-tail storage / finite-total service-coordinate estimate.

## 0. Target

The desired metric/coefficient exchange-capacity theorem would give a same-carrier inequality

```math
dA_N^{metric/coeff}+E_{41}
\le E_{34}-d\Phi_{metric}+dR_N^{legal},
\qquad
\Phi_{metric}\ge -C_N(u_0),
```

where \(dA_N^{metric/coeff}\) contains positive material metric, coefficient, frame, and transported-collar growth.

## 1. Exact metric driver

For the material map

```math
\dot X=u(X,t),\qquad F=D_aX,\qquad C=F^TF,
```

one has

```math
\partial_tC=2F^TSF.
```

Thus for any material line element \(\xi\),

```math
{d\over dt}\log |F\xi|
={F\xi\cdot S F\xi\over |F\xi|^2}.
```

Metric growth is strain-driven and pure rotation drops out.  Base annular geometry is therefore controlled by the strain-metric clock

```math
\int\|S\|_{L^\infty(X(A,t))}dt.
```

## 2. Affine-strain local no-go

Let \(A=A^T\), \(\operatorname{tr}A=0\), and define the local exact Navier-Stokes normal form

```math
u_{aff}(x)=Ax,\qquad p_{aff}(x)=-{1\over2}x\cdot A^2x.
```

Then

```math
(u_{aff}\cdot\nabla)u_{aff}+\nabla p_{aff}=0,\qquad \Delta u_{aff}=0,\qquad \nabla\cdot u_{aff}=0.
```

For

```math
A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2),
```

the flow is \(X(a,t)=e^{tA}a\), and

```math
{d\over dt}\log |D_aX(t)e_1|=\lambda.
```

Suppose a local bounded-below storage paid this metric channel on arbitrary local affine histories:

```math
d\Phi_{metric}+c\lambda dt\le dR(t),\qquad \Phi_{metric}\ge -C,\qquad \int_0^T dR\le C_R.
```

Integrating gives

```math
c\lambda T\le \Phi_{metric}(0)-\Phi_{metric}(T)+C_R\le \Phi_{metric}(0)+C+C_R.
```

For arbitrarily long affine-strain duration this is impossible.  Equivalently, the primitive that cancels the local metric growth is

```math
-c\log |D_aX(t)e_1|=-c\lambda t+O(1),
```

which is unbounded below.

Therefore no local bounded-below metric primitive can pay positive material metric growth.

## 3. Annular stress-work attachment is real but not a local sign proof

For a transported cutoff \(\phi\), the exact local energy identity is

```math
{d\over dt}\int {1\over2}|u|^2\phi dx+2\nu\int\phi |S|^2dx
=-\int u\cdot(-pI+2\nu S)\nabla\phi dx.
```

This proves same-fluid annular attachment: material deformation is carried by the pressure/strain stress-work channel of the same transported packet.

But the signed annular stress-work in the affine normal form depends on collar orientation and surrounding material placement.  It is not a local one-way sign functional.  Thus Cauchy-Green plus annular stress-work does not produce a local bounded-below descent identity for the rectified metric/coefficient action.

## 4. Consequence

The metric/coefficient channel must remain inside the full moving same-material service coordinate

```math
\Theta_N(t)
```

with the already proved growth law

```math
d[\log(1+\mathcal P_N^{mat})]_+\le C_N\Theta_N(t)dt+dR_N^0.
```

The unfinished theorem is therefore not a local metric capacity.  It is the finite-total global same-material service estimate

```math
\boxed{\int_0^{T^*}\Theta_N(t)dt<\infty}
```

or equivalently a global same-material terminal-tail inequality

```math
d\mathfrak L_N+c\,d[\log(1+\mathcal P_N^{mat})]_+ + d\mathcal L_N\le dR_N,
\qquad \mathfrak L_N\ge -C,
\qquad \int dR_N<\infty.
```

## Verdict

`MetricCoefficientExchangeCapacity.A` is false as a local bounded-below Cauchy-Green/annular-stress primitive.  It reduces to the global same-material terminal-tail storage theorem / finite \(\Theta_N\) service-coordinate estimate.  The affine-strain normal form is the exact obstruction to any local bounded-cross-storage proof.