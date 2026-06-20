# Door 2 Mode-Test Compatibility Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `ModeTestCompatibility.A` is not automatic from
the existence of finite dual modulation tests.

The conditional result is straightforward: a mode test is legal for the native
pre-Cauchy source ledger when it has a bounded local packet realization, its
time and gauge dependence are charged by legal commutator terms, and it is
evaluated on the same selected packet family as the native source carrier.
Those requirements are not all installed by the current Door 2 inputs.

## 1. Target under test

The source-mode readout needs to use a dual modulation test as a legal local
pre-Cauchy test:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,\psi_i(P)\,dxdt.
\tag{MTC.1}
```

This expression is admissible only if `psi_i(P)` is the packet trace of an
allowed local test on the same selected family.  A formal dual vector
`\Psi_i(U)` in modulation space is not enough by itself.

## 2. Conditional compatibility theorem

`ModeTestCompatibility.A` follows if the following four inputs hold.

First, local multiplier realization:

```math
\psi_i(P)
=
\operatorname{Av}_{Q(P)}\phi_{i,m}(t,x),
\tag{MTC.2}
```

where `phi_{i,m}` is a bounded local test with the derivative bounds required by
the pre-Cauchy localization ledger.

Second, projection/lift commutator legality:

```math
\operatorname{LiftProj}(\phi_{i,m}\mathcal N^{loc}_{preCauchy})
-
\phi_{i,m}\operatorname{LiftProj}(\mathcal N^{loc}_{preCauchy})
=
\operatorname{Legal}_{m,i}^{comm}+o_m(1).
\tag{MTC.3}
```

Third, time/gauge variation legality:

```math
\partial_s\phi_{i,m}
+\dot\gamma_m\cdot\nabla_\gamma\phi_{i,m}
\quad\text{contributes only legal modulation-commutator terms}.
\tag{MTC.4}
```

Here `gamma_m` denotes the active gauge parameters: scale, center, rotation,
phase, and selector state.

Fourth, same-family selector compatibility:

```math
\operatorname{supp}\phi_{i,m}
\subset
\bigcup_{P\in\mathcal F_m^{sel}} Q(P)
\quad\text{up to legal spill}.
\tag{MTC.5}
```

Under `(MTC.2)`--`(MTC.5)`, the formal signed mode test becomes a native
same-shadow source test:

```math
\left\langle F^{src},\Psi_i(U)\right\rangle
=
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\psi_i(P)\,dxdt
+\operatorname{Legal}_{m,i}
+o_m(1).
\tag{MTC.6}
```

## 3. Why the bridge is not automatic

There are four independent ways for the formal mode test to fail the native
ledger.

First, the dual mode may be a global tangent-space functional with no bounded
local packet multiplier satisfying the pre-Cauchy cutoff bounds.

Second, the mode test may be legal at one frozen gauge but not along a drifting
Zeno orbit; then `partial_s phi_{i,m}` creates an uncharged modulation term.

Third, localization, lifting, Leray projection, and packet averaging need not
commute with multiplication by the mode test unless the commutator is explicitly
charged.

Fourth, the mode test may be evaluated on a profile shadow different from the
selected native source shadow.  Then `(MTC.1)` is a readout on the wrong family.

These are compatibility failures, not sign failures.  They occur before the
positive-part problem addressed by `ModeSignCoherentShadowLocalization.A`.

## 4. Current reduction

At current input strength,

```math
\boxed{
\text{ModeTestCompatibility.A}
\Leftarrow
\text{LocalModeMultiplierRealization.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}
+
\text{SameFamilyModeSelectorCompatibility.A}.
}
\tag{MTC.7}
```

The first input is formal only after a fixed finite smooth mode atlas is
available.  The second and third inputs are legal-commutator statements.  The
fourth input is the same-shadow requirement that prevents the formal modulation
readout from drifting away from the native source carrier.

## Verdict

`ModeTestCompatibility.A` is a real bridge but not a new analytic supplier.  It
is the bookkeeping and commutator condition that lets a Door 2 modulation test
enter the native source ledger.  The remaining analytic burden still lies in
the same-shadow source identity, sign/nodal visibility, and source-square /
no-waste control already exposed by the other Door 2 children.
