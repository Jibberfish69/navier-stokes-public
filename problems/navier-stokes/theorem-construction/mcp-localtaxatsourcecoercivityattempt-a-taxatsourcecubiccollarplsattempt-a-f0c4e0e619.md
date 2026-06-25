# LocalTaxAtSourceCoercivityAttempt.A

Status: algebraic tax-at-source identity proved; coercive rectified inequality not proved.  The obstruction is a sign/no-recirculation obstruction, not a failure of participation ontology.

## Target

Prove a local tax-at-source inequality of the form

```math
dX_\phi
+
c\int_{\operatorname{ann}(\phi)}
\Big(
\nu |u|\,|\nabla u|^2
+|u|\,|D_tp|
+|\nabla\cdot T|\,|T|
+|u|\,|\nabla(\nabla\cdot T)|
+|u|\,|T|\,|\nabla u|
\Big)|\nabla\phi|\,dxdt
\le
\varepsilon dD^{vis}+dR^{legal}.
\tag{LTS.1}
```

Here \(X_\phi\) must be a present-time same-material annular/collar/pressure storage, not a future-action tail.

## Exact material derivative identity

Let

```math
D_t=\partial_t+u\cdot\nabla,
\qquad
D_t\phi=0,
\qquad
n=\nabla\phi,
\qquad
T=-pI+2\nu S,
\qquad
D_tu=\nabla\cdot T.
```

Since \(D_t\phi=0\),

```math
D_t n=-(\nabla u)^T n.
```

Define the signed annular stress-work density

```math
f_\phi=-u\cdot Tn .
```

Then

```math
\begin{aligned}
D_tf_\phi
&=-(D_tu)\cdot Tn-u\cdot(D_tT)n-u\cdot T(D_tn)\\
&=-(\nabla\cdot T)\cdot Tn-u\cdot(D_tT)n+u\cdot T(\nabla u)^Tn .
\end{aligned}
\tag{LTS.2}
```

Also

```math
D_tT=-(D_tp)I+2\nu D_tS,
```

and

```math
D_tS=\operatorname{sym}\nabla(D_tu)-\operatorname{sym}((\nabla u)^2)
=\operatorname{sym}\nabla(\nabla\cdot T)-\operatorname{sym}((\nabla u)^2).
```

Therefore

```math
D_tT
=-(D_tp)I
+2\nu\operatorname{sym}\nabla(\nabla\cdot T)
-2\nu\operatorname{sym}((\nabla u)^2).
\tag{LTS.3}
```

Substitution gives

```math
\begin{aligned}
D_tf_\phi={}&
-(\nabla\cdot T)\cdot Tn
+(u\cdot n)D_tp\\
&-2\nu u\cdot\operatorname{sym}\nabla(\nabla\cdot T)n
+2\nu u\cdot\operatorname{sym}((\nabla u)^2)n\\
&+u\cdot T(\nabla u)^Tn .
\end{aligned}
\tag{LTS.4}
```

This proves the user's tax-at-source algebra: the cubic collar contribution is born inside the same signed stress-work derivative as pressure-time service, material acceleration/stress, stress-gradient service, and collar transport.

In particular,

```math
\left|2\nu u\cdot\operatorname{sym}((\nabla u)^2)n\right|
\lesssim
\nu |u|\,|\nabla u|^2|\nabla\phi|.
```

The cubic term is not a standalone source.

## Integrated storage test

Since \(\nabla\cdot u=0\), integrating \(D_tf_\phi\) over the periodic domain gives

```math
{d\over dt}\int f_\phi dx=\int D_tf_\phi dx .
\tag{LTS.5}
```

The first natural storage is

```math
X_\phi^{(0)}=\int f_\phi dx.
```

Then `(LTS.4)` gives exact signed balance, not positive coercivity.  The positive toll in `(LTS.1)` is a sum of absolute/rectified service densities, while \(dX_\phi^{(0)}\) is one signed linear combination of the same densities.

Thus \(X_\phi^{(0)}\) proves attachment, not rectified payment.

## Pressure/collar correction test

Add a same-packet correction

```math
X_\phi=X_\phi^{(0)}+X_{p,\phi}+X_{collar,\phi}+X_{met,\phi}.
```

The pressure correction can cancel the explicit \((u\cdot n)D_tp\) part.  But differentiating any present-time pressure correction returns through the material pressure equation

```math
-\Delta p=\partial_i u_j\partial_j u_i
```

and hence through the same pressure-Hessian/cubic-gradient service block.  It relocates the pressure-time term inside the same PLS packet; it does not give a sign.

The collar/material corrections cancel pieces coming from \(D_t n=-(\nabla u)^Tn\) and metric motion.  But their derivatives also return to the same terms in `(LTS.4)`: stress divergence, stress-gradient service, cubic strain, and pressure Hessian.  Again, the corrections improve the grouping, not the one-sided sign.

## Exact sign obstruction

The desired inequality would require the signed block

```math
\begin{aligned}
\mathcal B_{sign}:={}&
-(\nabla\cdot T)\cdot Tn
+(u\cdot n)D_tp
-2\nu u\cdot\operatorname{sym}\nabla(\nabla\cdot T)n\\
&+2\nu u\cdot\operatorname{sym}((\nabla u)^2)n
+u\cdot T(\nabla u)^Tn
+d(X_{p,\phi}+X_{collar,\phi}+X_{met,\phi})/dt
\end{aligned}
```

to dominate a positive rectified density comparable to

```math
\nu |u|\,|\nabla u|^2|n|+|u|\,|D_tp||n|+|\nabla\cdot T|\,|T|\,|n|+\cdots .
```

No such domination follows from `(LTS.4)`.  The reason is structural: every term in `(LTS.4)` is signed and orientation-dependent.  Reversing the collar normal \(n\mapsto -n\), or reversing compatible local velocity/collar orientation, flips the signed block while leaving the rectified toll unchanged.  Therefore the local pointwise identity cannot imply a local positive toll inequality without an additional orientation/no-recirculation theorem.

Equivalently, the signed annular stress-work can oscillate: \(X_\phi\) can return to its previous value while the rectified density has accumulated positive amount.  A bounded present-time storage controls net work, not total variation, unless a no-recirculation/coercive sign mechanism is proved.

## What is proved

The tax-at-source identity is proved:

```math
\boxed{
\text{the cubic collar term is born inside }D_tf_\phi\text{ together with pressure-time, stress-divergence, stress-gradient, collar, and viscous partners.}
}
```

This fully respects the participation law and invalidates the detached estimate

```math
\int |u|\,|\nabla u|^2|\nabla\phi|
\lesssim E_0^{1/4}D(t)^{5/4}
```

as the primary proof object.

## What is not proved

The stronger coercive tax law

```math
\boxed{
\nu |u|\,|\nabla u|^2|\nabla\phi|\,dxdt
\le
-dX_\phi+\varepsilon dD^{vis}+dR^{legal}
}
```

is not proved by the signed identity alone.  It requires an additional same-packet no-recirculation/coercivity theorem showing that the signed pressure-time/cubic/collar block cannot oscillate with large rectified action and small net storage change.

## Remaining exact theorem

The next theorem is not another detached estimate.  It is the sign theorem:

```math
\boxed{
\text{same-material annular stress-work has finite positive variation after pressure/collar/material corrections.}
}
```

Equivalently, construct \(X_\phi\) so that its derivative controls the positive variation of the full signed block in `(LTS.4)`, not merely its net value.