# MPP Terminal Skew Localization Ledger Direct Attempt

## Status

Direct theorem-grade attempt on the missing ledger isolated in
`mpp-localized-skew-current-theorem-grade-audit-20260505.md`:

```math
\boxed{
TerminalSkewLocalizationLedger.A
}
```

Equivalently:

```math
\boxed{
TerminalSignedSaturation.A.
}
```

Verdict:

```math
\boxed{
\text{not proved from the currently installed Navier--Stokes lane inputs.}
}
```

The attempt proves only the unweighted closed-graph algebra already recorded as
`BareDyadicSkewCurrent.0`.  The theorem-grade terminal ledger fails exactly at
the passage from global signed shell exchange to the selected localized
same-fluid positive terminal packet family.

## Target

For every bounded-overlap same-fluid terminal packet family `\mathcal F_N`,
construct a legal antisymmetric packet current `J` and a legal ledger `L_P`
such that, for every selected terminal packet `P`,

```math
J(P\to P')=-J(P'\to P),
```

and

```math
\partial_t E_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\tag{TSL.1}
```

with

```math
\sum_{P\in\mathcal F_N}\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{TSL.2}
```

The equivalent signed-saturation form is:

```math
\boxed{
TerminalSignedSaturation.A:
\text{the counter-edge of every selected positive terminal source edge either
belongs to the same saturated same-fluid terminal ledger or is paid by an
installed legal loss.}
}
\tag{TSS}
```

## Installed Algebra

Before weights, cutoffs, lifted reductions, terminal packet selection, and
positive-part extraction, the incompressible dyadic exchange is skew:

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0.
\tag{TSL.3}
```

On a closed finite packet graph, any zero-sum internal source vector can be
written as the divergence of an antisymmetric edge current.  This proves the
bare statement:

```math
\boxed{
BareDyadicSkewCurrent.0.
}
```

This is not yet `(TSL.1)`--`(TSL.2)` on the terminal localized packet surface.

## Direct Attempt

Fix a terminal selected positive source edge

```math
e:P^-\to P
```

contributing to the localized pre-Cauchy source of `P`.  Use the bare
Navier--Stokes exchange to assign the formal transposed counter-edge

```math
e^\ast:P\to P^-.
```

On the full unweighted dyadic graph, the two endpoint contributions cancel.
Thus the natural proof strategy is:

1. keep `e` and `e^\ast` as an antisymmetric pair;
2. place pressure, cutoff, commutator, collar, off-family, and boundary defects
   into `L_P`;
3. sum over `P\in\mathcal F_N` and use bounded overlap to obtain `(TSL.2)`.

This strategy is theorem-grade only if every defect created by terminal
localization is already an installed legal loss.  That last assertion is the
missing step.

## Where The Proof Fails

After terminal localization the actual paired endpoint contributions no longer
have the form `A` and `-A`.  They have the form

```math
W_P A_P
\qquad\text{and}\qquad
-W_{P^-}A_{P^-}
```

plus lifted/cutoff commutators and terminal-window restrictions.  Replacing
them by one antisymmetric edge current leaves the unavoidable defect

```math
\Delta_e
=
W_P A_P-W_{P^-}A_{P^-}
+R_e^{lift/cut}
+R_e^{window}.
\tag{TSL.4}
```

For `(TSL.2)` one must prove

```math
\sum_{e\text{ touching }\mathcal F_N}\int |\Delta_e|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{TSL.5}
```

The installed inputs do not prove `(TSL.5)`.

There are three independent failures.

### 1. One-Sided Weights Create Order-Size Symmetric Defect

The source-wall tail weights are one-sided.  The paired weighted coefficients
need not match; the mismatch can be comparable to the selected positive source
itself, not a small commutator.  The signed same-fluid edge audit records this
as an order-size coefficient defect:

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
\tag{TSL.6}
```

No current legal-loss ledger identifies this weighted symmetric defect with
pressure, cutoff, collar, boundary leakage, or viscous dissipation.

### 2. Lifted/Localized Remainders Are Not The Bare Skew Pair

In the separated shell regime, the true live term is a lifted localized
commutator remainder, not the bare global triadic exchange.  Schematically:

```math
R_{j,k,\ell}^{lift}
:=
2^{2j}
\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
\tag{TSL.7}
```

This remainder has variable sign and may align with active expanding strain.
Bare dyadic skew symmetry does not supply a same-packet negative partner for
`(TSL.7)`.

### 3. Terminal Positive Selection Can Strand The Counter-Edge

The selected family keeps the terminal positive active source edge.  Its formal
negative signed partner may lie:

```math
\text{outside }\mathcal F_N,
\quad
\text{outside the same active time window},
\quad
\text{in a donor packet not selected as terminal bad},
\quad
\text{or in a cutoff/collar spill region.}
```

If the partner is admitted as an internal current without charging it, the
ledger is no longer a terminal same-fluid ledger.  If it is discarded, the
discarded mass is exactly the unknown term in `TerminalSignedSaturation.A`.
The current pressure/cutoff/off-family ledgers pay known geometric and
localization losses; they do not prove that every stranded signed partner is
one of those losses.

## Concrete Ledger Obstruction

For a paired interaction touching a selected packet `P` and an unselected or
weight-mismatched partner `Q`, any antisymmetric edge value `J_{PQ}` leaves
endpoint residuals

```math
L_P=A_P-J_{PQ},
\qquad
L_Q=A_Q+J_{PQ}.
```

Even optimizing over `J_{PQ}` gives the lower bound

```math
|L_P|+|L_Q|\ge |A_P+A_Q|.
\tag{TSL.8}
```

In the bare closed graph, `A_P+A_Q=0`.  On the terminal localized surface,

```math
A_P+A_Q=\Delta_e,
```

with `\Delta_e` as in `(TSL.4)`.  Thus the requested ledger estimate reduces
to proving the Carleson/legal smallness of the symmetric weighted localized
defect `\Delta_e`.  That is not installed.

Restricting only to selected packets does not remove the obstruction.  It
turns `A_Q` into an off-family counter-edge charge, so `(TSL.8)` becomes the
same requirement in boundary-ledger form:

```math
\text{off-family signed partner mass}
\le
o_N(1)+Loss_{legal}.
\tag{TSL.9}
```

This is precisely `TerminalSignedSaturation.A`.

## Relation To The Native Source Wall

The failed residual `(TSL.4)` is the signed-current version of the same native
positive source wall.  In local trilinear form it contains the terminal
positive product

```math
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+,
\tag{TSL.10}
```

after the negative signed part has been lost through weighting, localization,
or terminal selection.  Current incompressibility, finite energy, pressure
recovery, same-fluid transport, finite-band packet bookkeeping, and the
normalized-adjoint source-drain support do not charge `(TSL.10)`.

Thus `TerminalSkewLocalizationLedger.A` has the strength of a signed-positive
depletion theorem for the active source carrier.  It cannot be
obtained as a bookkeeping corollary of bare skew symmetry.

## Strongest Valid Reduction

The following conditional theorem is valid.

```math
\boxed{
\begin{aligned}
&BareDyadicSkewCurrent.0\\
&\quad+
WeightedLiftedSkewDefectCharge.A\\
&\quad+
OffFamilyCounteredgeCharge.A\\
&\quad+
TerminalSignedSaturation.A\\
&\Longrightarrow
TerminalSkewLocalizationLedger.A.
\end{aligned}
}
\tag{TSL.11}
```

Here:

```math
WeightedLiftedSkewDefectCharge.A
```

means `(TSL.5)` for the coefficient mismatch and lifted/cutoff commutator
defects that remain after subtracting the bare antisymmetric current.

```math
OffFamilyCounteredgeCharge.A
```

means `(TSL.9)` for signed partners outside the selected family, outside the
active terminal window, or in legal spill/collar regions.

But these two named charges are not independent installed inputs.  Together
with the saturation requirement they are equivalent to the missing terminal
signed-positive balance:

```math
\boxed{
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_+
\le C_{\mathrm{TSL}}
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
}
\tag{TSL.12}
```

Therefore the non-circular usable reduction is:

```math
\boxed{
TerminalSignedSaturation.A
\Longrightarrow
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A.
}
\tag{TSL.13}
```

The proof of `(TSL.13)` is formal: use `BareDyadicSkewCurrent.0` to assign the
unweighted internal exchange current, use `TerminalSignedSaturation.A` to keep
or legally charge all localized terminal counter-edges, and put the remaining
declared pressure/cutoff/collar/projection/off-window errors into the legal
ledger.  Bounded overlap gives `(TSL.2)`.

## Verdict

```math
\boxed{
TerminalSkewLocalizationLedger.A
\text{ is not proved by this direct attempt.}
}
```

The exact obstruction is:

```math
\boxed{
\text{the selected terminal positive same-fluid edge can lose its weighted
localized negative signed partner outside the usable terminal ledger, and the
current installed legal losses do not charge that lost partner.}
}
```

Equivalently, the missing theorem remains:

```math
\boxed{
TerminalSignedSaturation.A.
}
```

At the live source-wall level this is not a lower bookkeeping lemma already
available below the root.  Without a new terminal signed-saturation,
strain-decorrelation, active-reserve, or rigid Zeno argument, the route returns
to:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```
