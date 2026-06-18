# MPP Jet-To-Finite-Difference Bridge Theorem

## Status

Theorem-facing constitutive bridge note.

Role: close the exact bridge between the mixed-jet tower carried by the ontic
object and the finite-difference / transported-separation language that the
packet and tethering arguments actually use.

This note does not introduce a new branch. It makes exact the translation
between two already-installed languages of the same fluid.

## Purpose

The object package carries both

```math
\mathcal T
=
\{J_{m,\alpha},\Pi_{m,\alpha}\}_{m,\alpha}
\tag{JFD.0}
```

and the finite-separation structure

```math
h(a,r,t)=\Phi(a+r,t)-\Phi(a,t).
\tag{JFD.1}
```

What had to be closed was the exact theorem saying:

```math
\boxed{
\text{jet control and finite-difference control are two coordinate faces of the same local structure.}
}
\tag{JFD.2}
```

## Setup

Fix a still-live window

```math
Q\Subset \Omega\times[0,T).
\tag{JFD.3}
```

For `k\ge 0`, write

```math
U_k:=\nabla^k u,
\qquad
K_k:=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{JFD.4}
```

For a label increment `r`, define the transported difference operators

```math
\Delta_r^\Phi U_k(a,t)
:=
U_k(\Phi(a+r,t),t)-U_k(\Phi(a,t),t),
\tag{JFD.5}
```

```math
\Delta_r^\Phi K_k(a,t)
:=
K_k(\Phi(a+r,t),t)-K_k(\Phi(a,t),t).
\tag{JFD.6}
```

For an Eulerian increment `h`, write

```math
\delta_h f(x,t):=f(x+h,t)-f(x,t).
\tag{JFD.7}
```

## Theorem `JFD.A` (Exact transported bridge)

For every rung `k`, label increment `r`, and still-live point `(a,t)`:

```math
\boxed{
\Delta_r^\Phi U_k(a,t)
=
\delta_{h(a,r,t)}U_k(\Phi(a,t),t),
}
\tag{JFD.8}
```

and likewise

```math
\boxed{
\Delta_r^\Phi K_k(a,t)
=
\delta_{h(a,r,t)}K_k(\Phi(a,t),t).
}
\tag{JFD.9}
```

So the transported label-space defect and the Eulerian finite-difference defect
are literally the same object once the increment is chosen to be the true
transported separation.

### Proof

By definition,

```math
\Delta_r^\Phi U_k(a,t)
=
U_k(\Phi(a+r,t),t)-U_k(\Phi(a,t),t).
```

The transported separation is
`h(a,r,t)=\Phi(a+r,t)-\Phi(a,t)`, so the right-hand side is exactly

```math
U_k(\Phi(a,t)+h(a,r,t),t)-U_k(\Phi(a,t),t)
=
\delta_{h(a,r,t)}U_k(\Phi(a,t),t),
```

which is `(JFD.8)`. The same substitution gives `(JFD.9)` with `K_k` in place
of `U_k`.

## Theorem `JFD.B` (Finite-difference representation by jets)

For every still-live `(x,t)` and every admissible Eulerian increment `h`:

```math
\delta_hU_k(x,t)
=
\int_0^1 \nabla U_k(x+\theta h,t)\cdot h\,d\theta,
\tag{JFD.10}
```

and

```math
\delta_hK_k(x,t)
=
\int_0^1 \nabla K_k(x+\theta h,t)\cdot h\,d\theta.
\tag{JFD.11}
```

Hence, whenever the next rung is bounded on the relevant line segment,

```math
|\delta_hU_k(x,t)|
\le
|h|\,
\sup_{0\le\theta\le 1}|\nabla U_k(x+\theta h,t)|,
\tag{JFD.12}
```

```math
|\delta_hK_k(x,t)|
\le
|h|\,
\sup_{0\le\theta\le 1}|\nabla K_k(x+\theta h,t)|.
\tag{JFD.13}
```

So bounded `(k+1)`-jet data imply bounded finite-difference coherence at rung
`k`.

### Proof

Apply the fundamental theorem of calculus to the line segment
`\theta\mapsto x+\theta h`:

```math
U_k(x+h,t)-U_k(x,t)
=
\int_0^1 \frac{d}{d\theta}U_k(x+\theta h,t)\,d\theta
=
\int_0^1 \nabla U_k(x+\theta h,t)\cdot h\,d\theta.
```

That is `(JFD.10)`. Taking absolute values gives `(JFD.12)`. The same argument
with `K_k` in place of `U_k` yields `(JFD.11)` and `(JFD.13)`.

## Theorem `JFD.C` (Transported separations are jet-controlled)

The transported separation obeys

```math
h(a,r,t)
=
\int_0^1 F(a+\theta r,t)\,r\,d\theta,
\tag{JFD.14}
```

so on any still-live window where the packing distortion gauge is finite,

```math
|h(a,r,t)|
\le
\Gamma_{\mathrm{pack},Q}(t)\,|r|.
\tag{JFD.15}
```

Combining `(JFD.8)`, `(JFD.12)`, and `(JFD.15)` gives the exact transported
jet-to-difference estimate

```math
|\Delta_r^\Phi U_k(a,t)|
\le
\Gamma_{\mathrm{pack},Q}(t)\,|r|\,
\sup_{0\le\theta\le 1}
|\nabla U_k(\Phi(a,t)+\theta h(a,r,t),t)|.
\tag{JFD.16}
```

The same estimate holds with `U_k` replaced by `K_k`.

### Proof

Since `\Phi(\cdot,t)` is differentiable in label space,

```math
\Phi(a+r,t)-\Phi(a,t)
=
\int_0^1 \nabla_a\Phi(a+\theta r,t)\,r\,d\theta
=
\int_0^1 F(a+\theta r,t)\,r\,d\theta,
```

which is `(JFD.14)`. If the packing distortion gauge is finite on `Q`, then
`|F|\le \Gamma_{\mathrm{pack},Q}(t)` there, so

```math
|h(a,r,t)|
\le
\int_0^1 |F(a+\theta r,t)|\,|r|\,d\theta
\le
\Gamma_{\mathrm{pack},Q}(t)\,|r|,
```

giving `(JFD.15)`. Insert `h(a,r,t)` into `(JFD.8)` and then apply the
finite-difference bound `(JFD.12)` with `x=\Phi(a,t)` to obtain `(JFD.16)`.
The same substitution with `K_k` gives the companion estimate.

## Corollary `JFD.D` (Packet bridge)

On any material packet `\psi`, the transported defect energy

```math
\widetilde E_{N,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2\,|\Delta_r^\Phi U_k(a,t)|^2\,da
\tag{JFD.17}
```

is exactly the Eulerian finite-difference defect energy evaluated along the true
transported separation.

Moreover, the relative packing mismatch is driven by the rung-1 transported
strain defect:

```math
\mathcal Q_{1,r,\psi}^{str}(t)
:=
\int \psi(a)^2\,|\Delta_r^\Phi U_1(a,t)|^2\,da,
\tag{JFD.18}
```

which is the exact bridge from jet-level strain to packing mismatch.

### Proof

Substituting `(JFD.8)` into `(JFD.17)` shows that
`\widetilde E_{N,r,\psi}(t)` is the Eulerian finite-difference defect energy
evaluated at the true transported increment `h(a,r,t)`. The special case
`k=1` identifies
`U_1=\nabla u`, so the packet quantity `(JFD.18)` is exactly the transported
rung-1 strain defect. Since packing mismatch is measured by failure of nearby
separations to evolve coherently under the common deformation field, its packet
driver is precisely this rung-1 transported defect.

## What This Closes

This note closes the bridge debt left open in the ontic package.

It settles exactly that:

1. transported differences are finite differences of the same field;
2. finite differences are controlled by one higher jet rung;
3. packing distortion converts label increments into physical increments;
4. packet-level coherence and packing mismatch are driven by the same rung-1
   transported defect.

So the jet tower and the finite-difference tower are no longer separate
languages in the route.

## Boundary

This note does **not** prove global persistence of those controls.

What it does settle is the exact theorem surface the later packets need:

```math
\boxed{
\text{jet control and finite-difference control now communicate exactly on still-live windows and material packets.}
}
\tag{JFD.19}
```
