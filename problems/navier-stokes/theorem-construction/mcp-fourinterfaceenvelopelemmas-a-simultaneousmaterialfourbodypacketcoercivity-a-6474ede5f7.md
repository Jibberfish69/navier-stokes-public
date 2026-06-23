# Four Interface Envelope Lemmas

## Claim

For the simultaneous material four-body packet carried by

```math
\partial_s v + A^T\nabla_a q = \nu\,\operatorname{div}_a(G\nabla_a v),
\qquad \operatorname{div}_a(Av)=0,
```

the positive orientation defect satisfies

```math
dK_{\rm orient}^+
\le dD_S^{rad}+dD_Q^w+d\mathcal K_{\rm iface}+dR_{\rm legal},
```

where

```math
\begin{aligned}
d\mathcal K_{\rm iface}:={}&
dK_{S\to Q,{\rm carrier}}^+
+dK_{\rm sel}+dK_{C,A}^+ + dK_{C,N}^+ + dK_{C,J}^+\\
&+dK_C^+ + dK_{\rm geom,map}^+ + dK_{\rm geom,gauge}^+ + dK_{\rm geom,coef}^+\\
&+dK_{\rm ell}^+ + dK_{\rm coef}^+ + dK_{\rm comm}^+ + dK_{\rm transport}^+ + dK_G^+.
\end{aligned}
```

This proves the algebraic interface envelope. It does not prove that `d\mathcal K_{\rm iface}` is summable, strict loss, or zero from original smooth data.

## Proof

The orientation defect is the positive part of the failure of the four adjacent exchange currents to close on one same transported material carrier. The four interfaces are

```math
S\to Q,\qquad Q\to C,\qquad C\to G,\qquad G\to S.
```

By subadditivity of positive part,

```math
dK_{\rm orient}^+
\le dK_{S\to Q}^+ + dK_{Q\to C}^+ + dK_{C\to G}^+ + dK_{G\to S}^+.
```

### 1. The S to Q interface

Differentiate the material equation at mixed material rung `alpha`:

```math
\partial_s D^\alpha v
+A^T\nabla_a D^\alpha q
-\nu\operatorname{div}_a(G\nabla_aD^\alpha v)
=\mathcal C_\alpha,
```

where

```math
\mathcal C_\alpha
= -[D^\alpha,A^T\nabla_a]q
+\nu[D^\alpha,\operatorname{div}_a(G\nabla_a)]v.
```

Testing against the same cutoff and weighted rung `zeta^2 D^alpha v` and summing with factorial weights gives the same-rung tower-participation identity. The viscous term contributes strict same-packet loss `dD_Q^w`. Shrinking tower radii contribute `dD_S^{rad}`. The factorial weights absorb Leibniz/binomial splitting:

```math
{\rho^{|\alpha|}\over\alpha!}{\alpha\choose\beta}
={\rho^{|\beta|}\over\beta!}{\rho^{|\alpha-\beta|}\over(\alpha-\beta)!}.
```

Thus the only obstruction to the retained S to Q current is failure of sameness of rung, weight, cutoff, cylinder, or material transport. Collect these as `dK_{S\to Q,{\rm carrier}}^+`. Hence

```math
dK_{S\to Q}^+
\le dD_S^{rad}+dD_Q^w+dK_{S\to Q,{\rm carrier}}^+ + dR_{\rm legal}.
```

### 2. The Q to C interface

The Q coordinate carries the pressure-viscosity-participation packet: selected activity, nonlinear/native activity, and exchange current. On the retained branch these three measures are transported into the same compact packet and the Q to C current is exact. If the current is not exact, the failure is precisely one of: selector loss, activity measure loss, nonlinear/native measure loss, or exchange-current loss. These are the defects

```math
dK_{\rm sel},\qquad dK_{C,A}^+,\qquad dK_{C,N}^+,\qquad dK_{C,J}^+.
```

Therefore

```math
dK_{Q\to C}^+
\le dK_{\rm sel}+dK_{C,A}^+ + dK_{C,N}^+ + dK_{C,J}^+ + dR_{\rm legal}.
```

### 3. The C to G interface

The C coordinate must retain not merely `v,q`, but the material pullback and frame:

```math
v=V(X(a,s),s),\qquad q=Q(X(a,s),s),\qquad F=D_aX,\qquad A=F^{-1},\qquad G=AA^T.
```

On the retained branch the compact object carries the same material map, gauge, and coefficients, so the C to G current is exact. Failure can only be compactness/no-loss failure, material-map failure, material-gauge failure, or coefficient/frame failure. These are

```math
dK_C^+,\qquad dK_{\rm geom,map}^+,\qquad dK_{\rm geom,gauge}^+,\qquad dK_{\rm geom,coef}^+.
```

Thus

```math
dK_{C\to G}^+
\le dK_C^+ + dK_{\rm geom,map}^+ + dK_{\rm geom,gauge}^+ + dK_{\rm geom,coef}^+ + dR_{\rm legal}.
```

### 4. The G to S interface

The G coordinate returns material geometry to tower/scale control through

```math
\partial_sA=-A(\nabla_a v)A,
\qquad
\partial_sG=(\partial_sA)A^T+A(\partial_sA)^T.
```

After applying `D^alpha`, every term is a finite product of material coefficient and velocity-gradient tower rungs. Factorial weights again absorb the product expansion. On the retained branch this recertifies the S-coordinate tower. Failure can only come from ellipticity, coefficient loss, commutator leakage, transport/cross-scale mismatch, or geometry loss. These are

```math
dK_{\rm ell}^+,\qquad dK_{\rm coef}^+,\qquad dK_{\rm comm}^+,\qquad dK_{\rm transport}^+,\qquad dK_G^+.
```

Therefore

```math
dK_{G\to S}^+
\le dK_{\rm ell}^+ + dK_{\rm coef}^+ + dK_{\rm comm}^+ + dK_{\rm transport}^+ + dK_G^+ + dR_{\rm legal}.
```

### 5. Summation

Substituting the four interface inequalities into the positive-part decomposition gives

```math
dK_{\rm orient}^+
\le dD_S^{rad}+dD_Q^w+d\mathcal K_{\rm iface}+dR_{\rm legal}.
```

This proves the four interface envelope lemmas.

## Remaining production theorem

The live unsolved theorem is

```math
\texttt{SamePacketInterfaceDefectSummabilityOrStrictLoss.A}:
\quad
d\mathcal K_{\rm iface}\text{ is zero on the retained branch, strict same-packet loss, or summable same-packet residual.}
```

Only after this production theorem is proved does the simultaneous material four-body packet coercivity theorem close the MPP smoothness route.