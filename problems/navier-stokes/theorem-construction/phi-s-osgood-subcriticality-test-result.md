# Phi_s Osgood Subcriticality Test Result

## Target

The lifted carrier energy route needs

```math
{d\over dt}E(t)+c_D\Xi(t)\le C\Phi_s(E(t)),
\qquad E(t)=\mathcal E_D^{(s)}(X(t)),
```

with the Osgood condition

```math
\int_{E_0}^{\infty}{dr\over C\Phi_s(r)}=\infty.
```

## Tame-product growth on the current lifted surface

The lifted commutator and product estimates place one high derivative on one factor and a Sobolev multiplier norm on the other. For `s>5/2`, the algebra estimate gives the bound

```math
|\mathcal N_s(X)|
\le C_s
\|X\|_{H_D^s}\,\Xi_D^{(s)}(X)
+
\mathcal R_s^{res}(X).
```

After the Young-margin split,

```math
|\mathcal N_s(X)|
\le
\varepsilon\Xi_D^{(s)}(X)+C_\varepsilon\|X\|_{H_D^s}^2+
\mathcal R_s^{res}(X).
```

Since

```math
\|X\|_{H_D^s}^2\le C_E(E(t)+1),
```

one obtains at best the linear form when every nonlinear coefficient is carried by the dissipative factor. The current readout-compatible commutator package includes product terms where the coefficient is controlled only by the lifted energy itself. In the classical high-Sobolev Navier-Stokes closure this yields the growth bound

```math
E'(t)\le C E(t)^{3/2}+C E(t)+C.
```

Thus the current available `Phi_s` is

```math
\Phi_s(r):= 1+r+r^{3/2}
```

or stronger polynomial growth depending on the precise carrier product norm.

## Osgood test

For

```math
\Phi_s(r):= r^{3/2},
```

one has

```math
\int_{R}^{\infty}{dr\over r^{3/2}}<\infty.
```

Hence the current tame-product closure fails the Osgood criterion.

The scalar comparison equation

```math
Z'=CZ^{3/2}
```

has the finite-time escape profile

```math
Z(t)=\left(Z(0)^{-1/2}-{C\over2}t\right)^{-2}.
```

So the current lifted carrier inequality permits scalar finite-time escape.

## Conclusion

The available lifted carrier surface does not prove Osgood-subcritical `Phi_s`. The remaining theorem target is therefore a structural improvement of the lifted nonlinear term. The improvement must produce one of the following forms:

```math
\Phi_s(r)\le A(1+r),
```

or

```math
E'(t)+c\Xi(t)\le a(t)E(t)+b(t),\qquad a,b\in L^1_t,
```

or a direct carrier coercivity law that places the dangerous coefficient inside the dissipative term.

## Next exact obstruction

The obstruction is the lifted high-derivative product coefficient. It must be converted from an energy-size coefficient into an integrable or dissipative coefficient. This is the higher-order analogue of the low-mode strain problem on the Euclidean side.
