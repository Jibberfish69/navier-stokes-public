# Pressure-Hodge capacity Bellman root test

Status: sharper representation found; unconditional root bound remains open.

## 1. Question

The active hinge is `RootPositiveFluxReserveCoercivity.A`: construct a strong positive-flux Bellman reserve `B(Q)` that is inheritable down a laminar material tree and finite at the root from original data.

The descendant-tail reserve is tautological, and raw reserves are too weak. This note tests a non-tautological PDE representation.

## 2. Candidate reserve

For a laminar material node `Q`, let `U_Q` be the gauge-reduced pressure-Hodge-stress potential on the transported parent collar. Define a capacity/Dirichlet reserve

```math
B_{cap}(Q)
:=
\inf\left\{\int_{A_Q}|\nabla_A W|_G^2\,da:
W|_{\partial_{in}A_Q}=U_Q,\quad W|_{\partial_{out}A_Q}=0\right\}.
```

This is nonnegative, same-packet, and monotone under restriction of admissible collars. It is the natural candidate for a root-positive-flux reserve because child stress-work must pass through the parent pressure-Hodge collar.

## 3. Desired capacity Bellman inequality

The needed estimate is

```math
\sum_{Q'\in ch(Q)}A(Q')+\sum_{Q'\in ch(Q)}B_{cap}(Q')
\le
B_{cap}(Q)+R_{legal}(Q).
\tag{PCB.1}
```

If `(PCB.1)` holds and `B_cap(Q_root)` is finite, the laminar tree telescopes and pays the first ratio moment.

## 4. Root finiteness test

At the root, the Dirichlet reserve is controlled by an elliptic pressure-Hodge source norm. Schematically,

```math
B_{cap}(Q_{root})
\lesssim
\|\operatorname{div}_A\operatorname{div}_A(v\otimes v)\|_{H^{-1}}^2
+\|\operatorname{div}_A S_A\|_{H^{-1}}^2
+R_{legal}.
```

The installed energy/viscous ledgers control only the raw heat-time reserve. They do not currently imply the critical capacity Carleson estimate needed to dominate the high-ratio first moment.

The pressure-Hodge capacity route therefore reduces to a precise embedding:

```math
\boxed{\text{PressureHodgeCapacityCarleson.A}}
```

For the original material history, prove that the pressure-Hodge-stress capacity measure of transported laminar collars is Carleson with respect to the Gold high-ratio action measure.

## 5. Obstruction

The known combined Holder domination gives a pointwise price for the native trilinear carrier in the currency

```math
|\Sigma|^{5/2}+|W|^{10/3}.
```

But no installed surface proves an unweighted terminal-family reserve for this combined currency. Thus root capacity finiteness is still open at exactly the same critical integrability edge.

## 6. Result

This is a better concrete target than an abstract positive-flux reserve:

```math
\boxed{\text{PressureHodgeCapacityCarleson.A}}
```

It asks for a same-packet elliptic capacity Carleson theorem on the laminar material ancestry tree. Proving it would supply the noncircular root reserve and close the first-ratio moment. Current installed ledgers do not prove it.