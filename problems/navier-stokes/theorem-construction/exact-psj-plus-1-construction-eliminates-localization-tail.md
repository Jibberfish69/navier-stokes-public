# Exact PSJ+.1 Construction Eliminates Localization Tail

## Status

Active theorem-facing reduction note for the localized-projector exact-potential
subbranch.

Role: discharge the localization-tail slot by returning to the exact `PSJ+.1`
projector-moment construction.

## Audit Result

The localization-tail supplier in the localized-projector notes is not forced by
the exact `PSJ+.1` construction itself. It only appears when the localized
projector moment is rewritten with an auxiliary remainder term.

But the installed observable surrogate from `PSJ+.1` is already exactly

```math
\widetilde S_J(x,t)
=
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,P_{ab}(t)\,d\mu_J^{pair}(a,b),
\tag{EPT.1}
```

with no extra tail object.

So on the exact localized-projector route, one can and should choose the
tail-free realization.

## Proposition `EPT.A` (tail-free localized projector moment)

Assume the exact localized-projector surrogate is realized by `(EPT.1)` and the
packet measure is kept in that exact form, rather than split into a fixed
reference measure plus an additional remainder tensor. Then

```math
\mathrm{Tail}_J\equiv 0,
\qquad
R_J^{tail}\equiv 0.
\tag{EPT.2}
```

In particular, the weighted tail budget collapses identically:

```math
\int_I\!\!\int_{\Omega_J}
w_J(x,t)\,\|R_J^{tail}(x,t)\|_{\mathrm{op}}^2\,dx\,dt
=
0.
\tag{EPT.3}
```

### Proof

By definition `(EPT.1)`, `\widetilde S_J` is exactly the localized pair-projector
integral and contains no additive remainder tensor. So if one chooses the
tail-free realization, the auxiliary symbol `\mathrm{Tail}_J` is identically
zero. Then `R_J^{tail}`, defined as the derivative contribution of that same
auxiliary remainder, is also identically zero. Hence `(EPT.3)` follows from the vanishing remainder. ∎

## Consequence For The Honest Localized-Projector Wall

Combined with
[exact-segment-transport-collapses-pair-projector-error.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-segment-transport-collapses-pair-projector-error.md)
and
[localized-projector-weighted-psj-plus-22-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-weighted-psj-plus-22-suppliers.md),
the exact localized-projector wall on this subbranch reduces to

```math
\boxed{
\texttt{CoefficientDrift}
+
\texttt{Weighted theorem-safe entrance}
+
\texttt{Weighted corotational drift}.
}
\tag{EPT.4}
```

The only remaining local theorem debt is therefore:

1. coefficient drift, which remains open under the current bounded-measurable
   selector packet and is isolated in
   [localized-projector-coefficient-drift-chain-rule-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coefficient-drift-chain-rule-reduction.md);
2. weighted entrance control, via the already installed `D.7ic` or `D.7ig`
   routes;
3. weighted corotational drift control, via the installed `PSJ+.35` packet.

If one instead adopts the frozen transported packet realization from
[frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md),
then the coefficient-drift slot also disappears and only items `2` and `3`
remain. The sharper follow-on reduction in
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md)
shows that, on the simple-top cone, item `3` itself is already equivalent to
the installed pair-family forcing ledger `D.7ie1` or the adiabatic ledger
`D.7ie3`, modulo the explicit angular-forcing globalization interface: after
`AFR.G`, one maximal-envelope theorem for `q_\ell^{mat}` or
`q_\ell^{aux}` together with the installed pair-family forcing ledger, before
the overlap-surrogate gluing split.
