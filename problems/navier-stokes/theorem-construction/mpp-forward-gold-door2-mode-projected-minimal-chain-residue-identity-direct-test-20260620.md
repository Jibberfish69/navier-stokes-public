# Door 2 Mode-Projected Minimal-Chain Residue Identity Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `ModeProjectedMinimalChainResidueIdentity.A` is
not a consequence of the scalar `MinimalChainProjectedResidueIdentity.A` from
current inputs.

The scalar identity controls constant selector directions on the selected
shadow.  A Door 2 mode identity tests the same signed source-current with a
drifting, sign-changing packet weight.  Finite donor telescoping then requires
mode-weight coherence along donor edges, and the infinite terminal donor chain
is still the same no-free-Zeno obstruction.

## 1. Target under test

Let `q_m(P)` be the signed local pre-Cauchy source on the selected minimal
shadow, and let `psi_i(P)` be the packet realization of the Door 2 dual
modulation test.  The desired mode-resolved same-shadow identity is

```math
\sum_{P\in\mathcal F_m^{sel}}
q_m(P)\psi_i(P)
=
\left\langle F_m^{src},\Psi_i(U_m)\right\rangle
-\operatorname{Legal}_{m,i}
-o_m(1).
\tag{MPRI.1}
```

After the modulation equation is projected onto `Psi_i`, the source term in
`(MPRI.1)` must be represented by the same selected local pre-Cauchy source
shadow that feeds the native positive carrier.

## 2. What the scalar minimal-chain identity gives

The scalar minimal-chain identity has the form

```math
\left\|
q_m\,d\mu_m
-
\ell\cdot\Sigma_m\xi_m\,d\mu_m
\right\|_{\mathcal S_m^{sel}}
\le
\operatorname{Legal}_m+o_m(1),
\tag{MPRI.2}
```

for a constant selector direction `ell`.

If `(MPRI.2)` is a total-variation identity on the selected shadow, then
multiplication by a bounded mode weight is harmless:

```math
\left|
\int \psi_i\,
\left(q_m\,d\mu_m-\ell\cdot\Sigma_m\xi_m\,d\mu_m\right)
\right|
\le
\|\psi_i\|_\infty
\operatorname{Legal}_m+o_m(1).
\tag{MPRI.3}
```

But the installed scalar result is not a total-variation same-shadow identity
for every legal mode test.  It is a projected constant-direction stress/source
identity after selected legal exits and finite donor chains are removed.  That
does not identify the Door 2 modulation source projection `(MPRI.1)`.

## 3. Finite donor chains require mode-weight coherence

Consider one donor edge with receiver packet `R` and donor packet `D`.  The
signed source-current pair has opposite signs:

```math
q_R=A,
\qquad
q_D=-A,
\qquad
A>0.
\tag{MPRI.4}
```

The scalar pair cancels:

```math
q_R+q_D=0.
\tag{MPRI.5}
```

The mode-weighted pair cancels only when the mode weight is coherent across the
edge:

```math
q_R\psi_i(R)+q_D\psi_i(D)
=
A(\psi_i(R)-\psi_i(D)).
\tag{MPRI.6}
```

Thus a finite donor chain can telescope in the scalar ledger while leaving an
unpaid mode-weighted residue unless

```math
|\psi_i(R)-\psi_i(D)|
\le
\operatorname{EdgeLegal}_{m,i}(D,R)
\tag{MPRI.7}
```

in a summable edge ledger, or unless the difference is charged by a mode
commutator, gauge-action, collar, cutoff, or donor-transport legal term.

This is a genuine Door 2 addition.  Sign-coherent localization controls the
positive/negative/nodal split of `psi_i`; it does not prove donor-edge
coherence of the mode weights.

## 4. Conditional mode-residue identity

The mode-projected minimal-chain residue identity follows from four inputs.

First, mode-test compatibility, so the formal dual mode is a legal local
pre-Cauchy test on the selected shadow.

Second, test-enriched same-shadow residue identity:

```math
\left|
\left\langle q_m\,d\mu_m-\Sigma_m\xi_m\,d\mu_m,\phi_{i,m}\right\rangle
\right|
\le
\operatorname{Legal}_{m,i}+o_m(1),
\tag{MPRI.8}
```

where `phi_{i,m}` is the local packet multiplier realizing `psi_i`.

Third, donor-edge mode coherence:

```math
\sum_{(D,R)\in\mathcal G_m^{fin}}
|q_{D,R}|\,|\psi_i(D)-\psi_i(R)|
\le
\operatorname{Legal}_{m,i}^{edge}+o_m(1),
\tag{MPRI.9}
```

over finite donor chains after retained partners and legal exits are removed.

Fourth, no-free terminal Zeno donor chain:

```math
\mathcal E_{m,i}^{Zeno}
\longrightarrow0
\quad\text{on the selected mode shadow}.
\tag{MPRI.10}
```

Under these inputs,

```math
\sum_{P\in\mathcal F_m^{sel}}
q_m(P)\psi_i(P)
=
\left\langle F_m^{src},\Psi_i(U_m)\right\rangle
-\operatorname{Legal}_{m,i}
-o_m(1).
\tag{MPRI.11}
```

## 5. Current input gap

The current Door 2 inputs do not prove `(MPRI.8)`, `(MPRI.9)`, or `(MPRI.10)`.

`ModeTestCompatibility.A` supplies only admissibility of the test.  It does not
give the test-enriched residue identity.  `MinimalChainProjectedResidueIdentity.A`
supplies the scalar same-shadow target only after the terminal signed-saturation
wall is paid; it does not automatically supply the same identity against every
drifting modulation mode.

The edge-coherence failure is concrete: even a finite donor pair that cancels
in the scalar ledger leaves the residue `A(psi_i(R)-psi_i(D))`.  Unless the mode
test is transported with the donor graph or the difference is charged as legal
modulation action, the scalar proof does not lift to the mode proof.

The infinite-chain failure is the old one: a terminal Zeno donor partner can
keep moving to the next scale/shadow and never re-enter the selected mode
shadow before the terminal face.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{ModeProjectedMinimalChainResidueIdentity.A}
\Leftarrow
\text{ModeTestCompatibility.A}
+
\text{TestEnrichedMinimalChainResidueIdentity.A}
+
\text{ModeDonorEdgeCoherence.A}
+
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{MPRI.12}
```

The second and third inputs are the non-scalar content.  The fourth input is the
same infinite terminal Zeno donor-chain wall already exposed on Door 1.

## Verdict

`ModeProjectedMinimalChainResidueIdentity.A` does not close from the scalar
minimal-chain identity.  A constant-direction residue identity can miss a
mode-weighted donor-edge residue, and the infinite terminal donor chain remains
unpaid.

So Door 2 does not create a new endpoint here.  It adds a finite-chain
mode-coherence requirement and then returns to the same Door 1 no-free terminal
Zeno donor-chain / selected-shadow signed-saturation obstruction.
