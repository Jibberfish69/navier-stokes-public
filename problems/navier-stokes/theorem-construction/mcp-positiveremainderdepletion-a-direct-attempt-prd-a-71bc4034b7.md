# PositiveRemainderDepletion.A direct attempt

## Target

For one localized pre-Cauchy same-fluid source packet `P`, prove

```math
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+
\operatorname{Drain}_{parent}(P)
+
\operatorname{Loss}_{legal}(P),
\qquad 0<\theta<1.
\tag{PRD.A}
```

Here the localized source is decomposed as

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P+
\mathcal D_P+
\operatorname{div}_{\Phi}\mathcal J_P+
\mathcal R_P.
\tag{PRD.0}
```

`\partial_t\mathcal E_P` is intended to telescope by `LocalDonorBalance.A`,
`\operatorname{div}_{\Phi}\mathcal J_P` is a legal boundary/cutoff loss, and
`\mathcal D_P` is drain.  The only live term is the positive remainder
`[\mathcal R_P]_+`.

## Attempt 1: absorb the positive remainder into local drain

The pre-Cauchy local source contains the active strain/source pairing before
absolute-value estimates erase parent geometry.  A direct drain estimate would
require a packet inequality of the form

```math
[\mathcal R_P]_+
\le
\theta\mathcal D_P+	ext{legal loss}
```

on the selected active bad packet.

The available energy and local energy bounds supply first-moment dissipation
and pressure/cutoff routing.  They do not supply a pointwise or packetwise sign
rule for the positive active strain/source pairing.  The active source can align
with an expanding strain direction on the selected window.  Therefore the drain
absorption step is exactly a new positive-source depletion theorem.

## Attempt 2: use signed cancellation before absolute values

The unweighted nonlinear transport has global skew symmetry, and the dyadic
exchange cancels before terminal packet selection.  After shell weights,
projectors, same-fluid cutoffs, and positive-part extraction, the remaining
object is the weighted lifted remainder

```math
G_N^{lift,\sigma}
=
\sum W_{j,\ell}^{\sigma}R_{j,k,\ell}^{lift}.
```

The existing signed route would need

```math
\int G_N^{lift,\sigma}(t)\,dt\le C2^{-2\delta N}
```

plus residual-tail control.  Current surfaces leave two supplier burdens:
strain-sign cancellation for the true weighted lifted remainder, and
active-square residual-tail control.  Thus the signed route gives a conditional
supplier package, while the active positive remainder remains unbounded at the
needed strength.

## Attempt 3: use pressure, cutoff, and localization routing

Pressure, cutoff, commutator, and localization terms enter the legal-loss ledger
after the source split.  This handles boundary leakage and separated response
terms.  The legal interior active source-parent production remains in
`[\mathcal R_P]_+`.  Pressure Poisson recovery supplies elliptic estimates, while
`PRD.A` needs a positive-source depletion or charge estimate on the same active
bad window.

## Attempt 4: use pack-strain depletion

The installed packet criterion proves

```math
S_{pack,Q}\in L^1(0,T_*)
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty(0,T_*).
```

This is a valid downstream pack-gauge criterion.  To feed `PRD.A`, one would
need a direct terminal localized positive-strain estimate such as

```math
\int_0^{T_*}\sup_{a\in A_Q(t)}(e(a,t)\cdot S(u)(X(a,t),t)e(a,t))_+dt<\infty.
```

That estimate is precisely a localized source/strain depletion theorem.  The
criterion does not supply it.

## Attempt 5: use Cauchy/Young envelopes

Taking absolute values gives a bound by active-square and lower-order source
terms:

```math
|\mathcal R_P|
\le C_{PRD}
	\mathsf{ActiveSquare}_P+\text{legal lower-order ledgers}.
```

The active-square term is the scale-critical carrier that
`ScaleCriticalTreeCarleson.A` must control.  Hence this route returns to the
Carleson theorem instead of proving the positive remainder depletion estimate.

## Result

The attempted proof reaches the following sharp form:

```math
\boxed{
PositiveRemainderDepletion.A
\Longleftarrow
\text{one of }
\begin{cases}
\text{strain-sign cancellation for }G_N^{lift,\sigma}\text{ plus active-square residual control},\\
\text{localized positive-strain depletion on selected active windows},\\
\text{direct active-square / scale-critical tree Carleson reserve}.
\end{cases}}
```

The current route surfaces install none of these suppliers.

## Verdict

`PositiveRemainderDepletion.A` remains open.  The proof attempt sharpens the wall:

```math
\boxed{
\text{prove sign-depletion or scale-critical Carleson control for the positive localized pre-Cauchy remainder.}
}
```

Downstream implication remains conditional:

```math
PositiveRemainderDepletion.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
TwoTowerDonorDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```
