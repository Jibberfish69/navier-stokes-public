# MPP WeightedLiftedDefectCarleson.A Direct Attempt

## Status

Direct theorem-grade attempt on the weighted/lifted defect control isolated by
`TerminalSignedSaturation.A` and the terminal skew-localization audits:

```math
\boxed{
WeightedLiftedDefectCarleson.A.
}
```

Verdict:

```math
\boxed{
WeightedLiftedDefectCarleson.A
\text{ is not proved from the currently installed Navier--Stokes lane inputs.}
}
```

The attempt proves only a conditional reduction.  The live defect is not a
bookkeeping error left by an unsaturated packet graph.  After one-sided
weights, terminal localization, cutoff/projector replacement, and lifted
commutatorization, its principal part is the same positive active
strain-production carrier already isolated in the native source-wall notes.

## Target

Let `\mathcal F_N` be a bounded-overlap same-fluid terminal active packet
family, and let `\operatorname{Sat}(\mathcal F_N)` denote a finite same-fluid
saturated signed hull when a truncation is needed.  For each paired edge
`e=(P,Q)` touching the usable terminal ledger, subtract the bare unweighted
antisymmetric dyadic current.  The remaining live weighted/lifted defect has
the form

```math
\Delta_e
=
\bigl(W_P-W_Q\bigr)A_e
+R_e^{lift}
+R_e^{cut/proj}
+R_e^{window/off}.
\tag{WLD.1}
```

The desired Carleson/legal estimate is:

```math
\boxed{
\sum_{e\text{ touching }\operatorname{Sat}(\mathcal F_N)}
\int |\Delta_e|\,dt
\le
o_N(1)+Loss_{legal}.
}
\tag{WLD.2}
```

This is the `WeightedLiftedDefectCarleson.A` input used in the conditional
saturated-hull and terminal-signed-saturation reductions.

## Installed Inputs

The currently installed signed algebra gives:

```math
BareDyadicSkewCurrent.0:
\quad
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0
```

on a closed finite unweighted dyadic exchange graph.

The related signed balance notes also install or record:

- a global Littlewood--Paley representation of the signed lifted balance
  identity;
- the definition of the true commutatorized lifted remainder;
- the support fact that the bare separated shell exchange is vacuous in the
  live lifted geometry;
- the obstruction that the signed weighted lifted-remainder estimate still
  needs strain-sign cancellation before absolute values are introduced.

None of these inputs is `(WLD.2)`.

## Direct Attempt

Start from the bare paired exchange

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0.
\tag{WLD.3}
```

Insert the source-wall one-sided weights and the outer square-theorem weight.
The symmetrized coefficient mismatch is

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
\tag{WLD.4}
```

Thus the defect is order size in the upper shell.  It is not a small
commutator created by a harmless weight perturbation.

Worse, in the separated live geometry the bare exchange term itself is not the
object that survives.  After the lifted/collar replacement the live term is

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}
\left\langle
[\Delta_j,a_k\cdot\nabla]\Delta_\ell u,
\Delta_j u
\right\rangle,
\qquad
a_k=\Delta_k u,
\tag{WLD.5}
```

with

```math
j\ge N,
\qquad
N+M<k<j-4,
\qquad
|\ell-j|\le C_{LP}.
```

The principal paracommutator form is

```math
\mathcal R_{j,k,\ell}^{lift}
:=
2^{2j}
\left\langle
\mathcal C_j(\nabla a_k,\Delta_j u),
\Delta_j u
\right\rangle.
\tag{WLD.6}
```

On a wave packet this contains

```math
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right],
\tag{WLD.7}
```

and the absolute defect estimate `(WLD.2)` requires control of its positive
active part.

## Failure Of The Candidate Proofs

### 1. Bare antisymmetry does not survive the live operations

`BareDyadicSkewCurrent.0` cancels the unweighted closed exchange.  The live
defect is formed after one-sided weights, projected/cutoff localization,
lifted commutatorization, terminal time-window restriction, and positive
source selection.  Equation `(WLD.4)` shows that the weight mismatch alone is
not gap-small.

### 2. Global signed balance is representational, not a Carleson estimate

The global LP signed balance removes a gluing/cocycle ambiguity.  It writes the
signed lifted density in one global multiplier family.  It does not prove that
the weighted/lifted residual has small total variation on selected terminal
same-fluid windows.

### 3. Signed cancellation is weaker than the requested absolute defect bound

A theorem of the form

```math
\int_0^T
\mathfrak G_N^{lift,\sigma}(t)\,dt
\le
C2^{-2\delta N}
\tag{WLD.8}
```

would be a signed cancellation theorem before absolute values.  But
`WeightedLiftedDefectCarleson.A` asks for

```math
\int |\Delta_e|,
```

not just the signed sum.  Taking absolute values of `(WLD.5)` loses the only
possible cancellation and returns to the positive active-square/source-control
carrier.

### 4. Strain alignment is a real positive mechanism

The symmetric strain `S_{<j}^{loc}` is trace-free, but a trace-free symmetric
matrix in three dimensions can have a positive eigenvalue.  Terminal active
packets may align with that expanding eigendirection.  Therefore

```math
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+
\tag{WLD.9}
```

is not eliminated by incompressibility, pressure recovery, finite energy,
finite-band packet bookkeeping, or same-fluid transport.

### 5. Tangent-weight rigidity would only remove geometry error

The tangent-weight route can at best reduce transported-window coefficient
errors to a frozen Euclidean lifted strain-production problem, up to
`o_N(1)` and absorbable geometry residues.  It still needs the Euclidean signed
gate:

```math
ASAC.A
```

or an equivalent terminal no-incoming / positive strain-decorrelation theorem.
That gate is not installed.

## Concrete Obstruction

For any proposed antisymmetric current value `J_e` on a paired edge with live
endpoint contributions `A_P` and `A_Q`, the endpoint residuals satisfy

```math
L_P=A_P-J_e,
\qquad
L_Q=A_Q+J_e,
```

and hence

```math
|L_P|+|L_Q|\ge |A_P+A_Q|.
\tag{WLD.10}
```

On the bare closed graph `A_P+A_Q=0`.  On the terminal weighted/lifted surface,

```math
A_P+A_Q=\Delta_e.
```

Thus the desired legal ledger estimate is exactly `(WLD.2)`.  In the principal
localized strain form, failure of `(WLD.2)` is witnessed by a terminal active
family for which the positive measure

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[
e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}
\right]_+
\,dxdt
\tag{WLD.11}
```

has nonzero limiting mass while the installed legal losses vanish.  No current
lane input charges `(WLD.11)`.

## Strongest Valid Reductions

The saturated-hull bookkeeping reduction remains valid:

```math
\boxed{
BareDyadicSaturatedHull.0
+
WeightedLiftedDefectCarleson.A
+
TerminalSignedSaturation.A
\Longrightarrow
TerminalSkewLocalizationLedger.A.
}
\tag{WLD.12}
```

The direct source-wall reduction is:

```math
\boxed{
PositiveStrainDecorrelation.A
\ \vee\
PositiveActiveCarlesonReserve.A
\ \vee\
\bigl(
MSC.Localize^{src}
+ZenoBoundedClass_B.A
+ZenoResidueLiouville_B.A
\bigr)
\Longrightarrow
WeightedLiftedDefectCarleson.A.
}
\tag{WLD.13}
```

More concretely, the perturbative signed-lifted branch would close
`WeightedLiftedDefectCarleson.A` only under:

```math
\boxed{
TWR.A
+
ASAC.A
+
ActiveSquareResidualTail.A
\Longrightarrow
WeightedLiftedDefectCarleson.A.
}
\tag{WLD.14}
```

Here `TWR.A` pays transported coefficient/freezing errors, `ASAC.A` pays the
frozen positive strain-alignment part, and `ActiveSquareResidualTail.A` pays
the absolute-value residual tail created by localization and packet summation.
These are not lower installed inputs.  They are presentations of the same
source-control wall unless a new cancellation/decorrelation theorem is added.

## Verdict

```math
\boxed{
WeightedLiftedDefectCarleson.A
\text{ is open.}
}
```

The exact obstruction is:

```math
\boxed{
\text{the weighted/lifted residual contains the positive terminal active
strain-production carrier }
|w_j|^2[e_j\cdot S_{<j}^{loc}e_j]_+,
\text{ and current legal ledgers do not charge that carrier.}
}
```

Therefore this attempt does not lower `TerminalSignedSaturation.A`.  It
sharpens its weighted/lifted face to the existing live source-wall split:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

No proof of `TerminalSkewLocalizationLedger.A`, `LocalizedSkewCurrent.A`, or
`ScaleCriticalTreeCarleson.A` should be promoted from this note.
