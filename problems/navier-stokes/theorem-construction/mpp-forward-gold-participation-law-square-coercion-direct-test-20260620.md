# MPP Forward-Gold Participation-Law Square-Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The participation law, read as one coherent
Navier-Stokes relation, identifies the correct square-strength theorem but does
not prove it from the current inputs.

The exact output is:

```math
\boxed{
\text{participation law}
\Longrightarrow
\text{same-carrier interface visibility}
}
```

and the missing coercive upgrade is:

```math
\boxed{
\text{same-carrier interface visibility}
\Longrightarrow
\text{unweighted selected square reserve}.
}
```

This note tests that upgrade directly.

## 1. The law is one coupled relation

The participation law is the same fixed-viscosity incompressible
Navier-Stokes carrier law:

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{PLS.1}
```

At route depth \(k\), the corresponding tower form is:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{PLS.2}
```

Pressure, convection, viscosity, selector transport, donor motion, and shell
readouts are not separate laws.  They are parts or consequences of this same
carrier relation.

## 2. Ball and shell calculus is a readout

Let \(\mu_t\ge0\) be the selected nonnegative density under test and set

```math
M(r,t)=\mu_t(B_r(x_0)).
\tag{PLS.3}
```

Define the ball average and shell average by

```math
A(r,t)=\frac{M(r,t)}{|B_r|}
=\frac{3M(r,t)}{4\pi r^3},
\tag{PLS.4}
```

and, for a.e. \(r\),

```math
S(r,t)=\frac{\partial_rM(r,t)}{|\partial B_r|}
=\frac{\partial_rM(r,t)}{4\pi r^2}.
\tag{PLS.5}
```

Then the exact radial identity is

```math
\partial_r A(r,t)=\frac{3}{r}\bigl(S(r,t)-A(r,t)\bigr).
\tag{PLS.6}
```

Thus shell underpayment relative to the current inner ball average is exactly
the statement that \(A(r,t)\) increases as \(r\downarrow0\).  It is not a
contradiction.

For the model critical radial mass profile

```math
M(r,t)=Cr,
\tag{PLS.7}
```

one has

```math
A(r,t)=\frac{3C}{4\pi r^2},
\qquad
S(r,t)=\frac{C}{4\pi r^2}
=\frac13 A(r,t).
\tag{PLS.8}
```

So every current shell can underpay the current inner average while the
selected density still blows up.  A shell must overpay a fixed outer average,
but that is too weak to pay the heat-scale square reserve.

## 3. The selected current theorem needed

Let \(\lambda_j=2^j\), let \(I_j\) be a heat-time window with

```math
|I_j|=\lambda_j^{-2},
\tag{PLS.9}
```

and let \(\Pi_j^{part,+}(t)\) denote the positive selected part of the assembled
same-carrier participation interface after legal exits are removed.

The forward-gold square theorem is:

```math
\boxed{
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le Legal_j+o_j(1).
}
\tag{PLS.10}
```

This is the same theorem as `SelectedParticipationSquareBudget.A` and the
same-carrier form of `UnweightedTerminalCriticalActionReserve.A`.

The linear participation ledger can control only

```math
\int_{I_j}\Pi_j^{part,+}(t)\,dt.
\tag{PLS.11}
```

The exact linear-to-square conversion is

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2dt
\le
\lambda_j\|\Pi_j^{part,+}\|_{L^\infty(I_j)}
\int_{I_j}\Pi_j^{part,+}(t)\,dt .
\tag{PLS.12}
```

Thus a linear residence ledger implies the square theorem only under the
product throttle

```math
\lambda_j\|\Pi_j^{part,+}\|_{L^\infty(I_j)}
\int_{I_j}\Pi_j^{part,+}(t)\,dt
\to0,
\tag{PLS.12a}
```

or under a stronger square/Carleson estimate.  A pointwise bound such as
\(\|\Pi_j^{part,+}\|_{L^\infty(I_j)}\le C\lambda_j^{-1}\) is sufficient when
the linear residence tends to zero, but it is not the exact theorem.  The
current installed inputs prove neither `(PLS.12a)` nor the stronger square
budget.

## 4. Heat-scale neutral model

The normal-form obstruction is the heat-window pulse

```math
\Pi_j^{part,+}(t)
=
\lambda_j^{1/2}{\bf 1}_{I_j}(t).
\tag{PLS.13}
```

It has vanishing linear participation mass:

```math
\int_{I_j}\Pi_j^{part,+}(t)\,dt
=
\lambda_j^{-3/2}
\to0,
\tag{PLS.14}
```

but fixed square reserve:

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
=1.
\tag{PLS.15}
```

It is also compatible with the neutral scalar participation balance

```math
M_j'(t)+D_j(t)=F_j(t)+Legal_j(t),
\qquad
F_j(t)=D_j(t),
\tag{PLS.16}
```

after inherited past reserve and legal exits are removed.  This model is not a
claimed exact Navier-Stokes solution.  It is the exact obstruction to deriving
the square reserve from linear participation, shell-density debt, physical
energy, or first-moment dissipation alone.

## 5. What would close the branch

The branch closes only by proving a square-strength theorem on the same
selected carrier.  Acceptable non-alias forms are:

```math
\text{SelectedParticipationSquareBudget.A},
\tag{PLS.17}
```

```math
\text{SelectedSourceSquareCarrierDomination.A + SourceSquareReserve.A},
\tag{PLS.18}
```

```math
\text{SelectedCriticalStrainCarleson.A or NormalizedCKNCarleson.A},
\tag{PLS.19}
```

```math
\text{SelectedPolarSaturation.A + NoFreeTerminalZenoDonorChain.A},
\tag{PLS.20}
```

or

```math
\text{StrictRescaledNoWasteLyapunov.A}
```

with a lower-bounded functional that carries critical square-action size.

Once `(PLS.10)` is proved, the propagation is:

```math
\text{selected square reserve}
\Longrightarrow
\text{ReserveCreationCharge.A}
\Longrightarrow
\text{ScaleCriticalTreeCarleson.A}
\Longrightarrow
\text{OriginalSmoothDataPackSurvival.A}.
\tag{PLS.21}
```

Without `(PLS.10)` or CM-test admission plus a first Pack/Part/Field face
failure, the retained positive-scale reserve remains supplier quarantine.

## Verdict

This is the clean participation-law version of the current wall.

The law is coherent and useful: it prevents a packet from being private and
forces every retained source/readout to live in the same pressure-viscosity
carrier relation.

It is not yet coercive at heat scale.  The missing theorem is the square
coercion of the selected participation current:

```math
\boxed{
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le Legal_j+o_j(1).
}
```

That is the exact mathematical form of the remaining forward-gold payment.
