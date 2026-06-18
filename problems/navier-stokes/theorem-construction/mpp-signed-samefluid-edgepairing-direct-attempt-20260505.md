# MPP Signed Same-Fluid EdgePairing.A Direct Attempt

## Status

Bounded solve attempt on the proposed signed-exchange route for
`ScaleCriticalTreeCarleson.A`.

Result:

```math
\boxed{
EdgePairing.A\text{ is not installed by the current signed exchange identities.}
}
```

The unweighted shell exchange has exact antisymmetry, but the live
source-pulse object is localized, one-sided weighted, lifted, terminal-selected,
and positive-parted.  Those operations can separate a positive child-feeding
edge from its negative exchange partner.  Current route inputs do not prove
that the negative partner remains inside the same usable terminal same-fluid
ledger or that it is otherwise charged by viscous/legal loss.

Exactness rework correction, 2026-06-18: this failed attempt is a signed
same-fluid obstruction calculation.  It may not be used to reset the current
live target to the old scalar source wall.  Current proof use requires
same-ledger payment, terminal signed saturation, or CM-test admission plus first
Pack/Part/Field face failure on the same witness.

## Intended Theorem

The hoped-for edge theorem was:

```math
EdgePairing.A:
\quad
\text{every positive localized pre-Cauchy source edge has a same-fluid signed
counter-edge or pays legal loss.}
```

The desired consequence was:

```math
EdgePairing.A
+
NoUnpaidZenoExchangeCycle.A
\Longrightarrow
SignedSameFluidExchangePricing.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The guiding idea is correct: the positive source comes from a signed
Navier-Stokes shell exchange, so a positive child-feeding contribution should
be paired with donor drain, receiver cancellation, viscous drain, or legal
boundary loss.

## Installed Signed Algebra

The bare dyadic shell exchange satisfies an exact antisymmetry.  For a
divergence-free shell `a_k`,

```math
\mathcal I_{j;k,\ell}
+
\mathcal I_{\ell;k,j}
=0.
\tag{EP.1}
```

A signed theorem can have proof force here only if it is applied before absolute
values and before the source is flattened into a positive carrier.

But the source-wall branch does not consume the bare unweighted exchange.  It
consumes the localized active source carrier:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+.
\tag{EP.2}
```

Equivalently, in the signed lifted language, the live object is the true
weighted lifted remainder:

```math
G_N^{lift,\sigma}
=
\sum W_{j,k,\ell}^{\sigma}R_{j,k,\ell}^{lift},
\tag{EP.3}
```

after one-sided shell weights, projector/cutoff reductions, lifted summation,
and terminal packet localization.

## Where Bare Pairing Breaks

The exact pair `(EP.1)` is not enough for `(EP.2)` for four separate reasons.

### 1. One-sided weights break antisymmetry

After inserting the source-wall tail weights, the symmetrized coefficient
mismatch is the exact order-size defect

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
\tag{EP.4}
```

So the weighted exchange defect is a real term, not a harmless antisymmetric
remainder.

### 2. Lifted/cutoff reductions change the object

In the extreme separated shell geometry the bare pairwise shell flux may vanish
by Fourier support.  The surviving term is instead the commutatorized lifted
remainder:

```math
R_{j,k,\ell}^{lift}
:=
2^{2j}
\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
\tag{EP.5}
```

This has variable sign and can align with expanding strain directions.
Unweighted antisymmetry of the bare exchange does not control this true lifted
remainder.

### 3. Positive-part selection discards the negative partner

Even if a signed counter-edge exists algebraically, `(EP.2)` keeps only the
positive contribution on the selected terminal packet family.  The negative
partner may lie:

```math
\text{outside }\mathcal F_N,
\quad
\text{outside the same terminal active window,}
\quad
\text{in a donor packet not selected as bad,}
\quad
\text{or in a spill/cutoff collar.}
```

The route has legal ledgers for separated pressure, cutoff, spill, and
localization losses, but it does not currently prove that every negative
counter-edge outside the selected family is legally charged.

### 4. Same-fluid transport preserves labels but does not force balance

Same-fluid fidelity says that once an admissible parent/child edge is selected,
the edge lives on the right material carrier.  It does not prove:

```math
\int_{\mathcal F_N}(\mathfrak S_{loc}^{active})_+
\le C_{\mathrm{EP}}
\int_{\mathcal F_N}(\mathfrak S_{loc}^{active})_-
+o_N(1).
\tag{EP.6}
```

That statement is exactly the missing signed-positive balance theorem.

## Direct Attempt On `EdgePairing.A`

Start from a positive edge contribution:

```math
\left[d\mathcal S^{nl}(P^-\to P)\right]_+.
```

Using the global exchange identity, assign the bare unlocalized algebraic
counter-edge produced by the transposed interaction.  This gives only a
symbolic pairing on the full unlocalized signed exchange graph.

To promote the symbolic pairing to `EdgePairing.A`, one must prove the
following terminal saturation statement:

```math
TerminalSignedSaturation.A:
\quad
\text{the counter-edge of every selected positive terminal source edge either
belongs to the same saturated same-fluid terminal ledger or is paid by an
installed legal loss.}
\tag{EP.7}
```

No current theorem-construction surface supplies `(EP.7)`.  The known signed
audits instead show:

```math
\text{global signed LP balance acts before terminal localization,}
```

while

```math
\text{selected bad windows may align with expanding strain and retain only
positive production.}
```

Therefore the direct promotion from symbolic exchange pairing to terminal
same-fluid edge pairing fails.

## Conditional Theorem That Would Work

The following conditional package is valid:

```math
TerminalSignedSaturation.A
+
SignedWeightedLiftedBalance.A
+
ActiveSquareResidualTail.A
\Longrightarrow
SignedSameFluidExchangePricing.A.
\tag{EP.8}
```

Then:

```math
SignedSameFluidExchangePricing.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

But this is not a new solved route.  Its three inputs are already known
presentations of the source-control atom:

```math
TerminalSignedSaturation.A
\rightsquigarrow
SignedPositiveBalance.A,
```

```math
SignedWeightedLiftedBalance.A
\rightsquigarrow
\text{strain-sign cancellation for }G_N^{lift,\sigma},
```

```math
ActiveSquareResidualTail.A
\rightsquigarrow
ScaleCriticalTreeCarleson.A.
```

## Exact Obstruction

The precise missing theorem is:

```math
\boxed{
TerminalSignedSaturation.A:
\text{positive terminal same-fluid source edges cannot lose their negative
signed exchange partners outside the usable terminal ledger without paying an
installed legal loss.}
}
```

Equivalently, in the older source language:

```math
\boxed{
SignedPositiveBalance.A:
\quad
\int_{Bad_N(\eta)}
(\mathfrak S_{N,loc}^{active})_+
\le C_{\mathrm{SPB}}
\int_{Bad_N(\eta)}
(\mathfrak S_{N,loc}^{active})_-
+o_N(1).
}
```

Current installed inputs do not prove this.  Taking absolute values avoids the
missing signed saturation theorem but returns straight to:

```math
\boxed{
ScaleCriticalTreeCarleson.A.
}
```

Current proof use is narrower: the absolute-value fallback is source-control
support only.  It has CM proof force only after it is paid in the same ledger or
after the admitted terminal branch derives the first failed Pack, Part, or
Field face.

## Working Verdict

The signed-exchange idea identifies the structural mechanism candidate: source
pulses must pay by signed exchange.  The current route still lacks the terminal
saturation theorem that keeps the negative counter-edge in the same usable
same-fluid ledger.

Thus this attempt does not close the signed-current branch.  It sharpens the
signed route to:

```math
\boxed{
TerminalSignedSaturation.A
}
```

with the caveat that `TerminalSignedSaturation.A` is not a separate lower
installed theorem; it is a signed formulation of the same source-control wall
unless a new strain-sign / terminal-saturation argument is supplied.  Any
absolute fallback to `ScaleCriticalTreeCarleson.A` remains historical supplier
support under the Pack-first CM correction, not a current target-setting
conclusion.
