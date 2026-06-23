# Non-Retained K_iface Terms as Branch-Loss Measures

## Claim

Each component of `d\mathcal K_{\rm iface}` is a strict loss from the retained
same-packet exact-current branch, in the following precise sense:

```math
dK_i=0
\quad\Longleftrightarrow\quad
\text{the corresponding retained same-packet interface criterion holds,}
```

and

```math
dK_i>0
\quad\Longrightarrow\quad
\text{the packet has left that retained interface branch by positive amount.}
```

Thus every non-retained `K_iface` term is a strict branch-loss measure for the
retained-packet topology.

## Proof

The retained simultaneous packet class is the intersection of four exact-current
interface graphs:

```math
\mathcal R_{4B,N}^{ret}
=
\mathcal R_{S\to Q}
\cap \mathcal R_{Q\to C}
\cap \mathcal R_{C\to G}
\cap \mathcal R_{G\to S}.
```

Each named `K` measure is exactly the positive defect from one of these graph
conditions.

For `S -> Q`, `K_{S\to Q,carrier}` measures failure of same rung, same weight,
same cutoff, same cylinder, or same material transport. Hence

```math
dK_{S\to Q,carrier}=0
```

is equivalent to membership in the retained `S -> Q` carrier graph. Positive
mass is strict loss of that retained carrier condition.

For `Q -> C`, the defects

```math
dK_{\rm sel},\quad dK_{C,A},\quad dK_{C,N},\quad dK_{C,J}
```

measure failure of selected activity, activity/native participation, nonlinear
participation, or exchange current to survive into the same compact packet.
Their simultaneous vanishing is precisely the retained `Q -> C` participation
packet condition. Any positive mass is strict loss of retained same-object
participation.

For `C -> G`, the defects

```math
dK_C,\quad dK_{geom,map},\quad dK_{geom,gauge},\quad dK_{geom,coef}
```

measure compactness/no-loss failure, material map failure, gauge failure, and
coefficient/frame failure. Their vanishing is precisely retention of the
material pullback and frame

```math
v=V(X(a,s),s),\quad q=Q(X(a,s),s),\quad F=D_aX,\quad A=F^{-1},\quad G=AA^T.
```

Positive mass is strict loss of retained material geometry.

For `G -> S`, the defects

```math
dK_{ell},\quad dK_{coef},\quad dK_{comm},\quad dK_{transport},\quad dK_G
```

measure ellipticity loss, coefficient loss, commutator leakage, transport or
cross-scale failure, and geometry/strain failure. Their vanishing is precisely
retained recertification of tower/scale from geometry. Positive mass is strict
loss of the retained `G -> S` return branch.

Therefore every component of `d\mathcal K_{\rm iface}` is nonnegative and
vanishes exactly on its retained interface graph. Positive mass is strict loss
of the corresponding retained same-packet branch.

## Important limitation

This proves strict branch-loss classification. It does not by itself prove the
PDE coercive estimate

```math
dL_{4B,N}+dA_{4B,N}+d\mathcal L_{4B,N}^{sharp}\le dR_{4B,N}.
```

To close the simultaneous coercivity theorem, the differentiated material PDE
must place these branch-loss measures on the left side with the correct sign,
or else prove their total mass is summable as residual. The current result only
identifies the non-retained terms as strict same-packet branch loss, not as an
already-signed dissipative term in the four-body inequality.