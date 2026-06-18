# ZenoSquarePulseRigidity.A + ZenoSquareResidueLiouville.A Conditional Reduction

## Status

Claimed status: conditional; unconditional proof reaches the class-production gate.

The input from the previous source-wall notes is a terminal square-dominant pulse forest with thresholds `N_m\to\infty`, windows `I_m`, and square reserve lower bound

```math
\mathcal R_{N_m}(I_m)
=
\int_{I_m}\sum_{k>N_m}2^kT_k(t)^2dt
\ge\eta>0,
```

while the first-moment tail cost vanishes:

```math
\int_{I_m}\sum_{\ell>N_m}D_\ell(t)dt\to0.
```

The extracted atoms also carry active source balance and persistent weighted lifted skew residue.

## Theorem 1: compactness extraction of a Zeno square-pulse limit

Assume the terminal square-pulse forest has same-fluid packet coherence, legal terminal localization, and parabolic scale normalization. Choose active atoms `(x_m,t_m,k_m)` carrying positive square-reserve density and set

```math
r_m:=2^{-k_m},
qquad
u_m(y,s):=r_m u(x_m+r_my,t_m+r_m^2s).
```

The energy inequality and terminal localization give uniform local bounds on every fixed backward cylinder:

```math
\sup_{s\in[-R^2,0]}\int_{B_R}|\nu_m(y,s)|^2dy
+
\int_{-R^2}^0\int_{B_R}|\nabla\nu_m|^2dy ds
\le C_R.
```

The pressure bounds follow from the local pressure decomposition. Therefore a subsequence converges to an ancient local suitable source-residue object

```math
(u_*,p_*,\mu_*^{sq} ,\mu_*^{skew} ).
```

The square-reserve normalization gives a nonzero inherited residue:

```math
\mu_*^{sq}(Q_1^-)+\mu_*^{skew}(Q_1^-)\\ge c_0>0.
```

This proves the compactness half:

```math
ZenoSquareCompactnessExtraction.A.
```

## Theorem 2: conditional rigid-class residue Liouville

Define the cancellation rigid class `\mathcal B_{sq}` by the condition that every licensed weighted lifted source-current test has zero ancient pairing:

```math
\langle \mu_*^{sq},\varphi\rangle+\langle \mu_*^{skew},\varphi\rangle=0
```

for all admissible same-fluid terminal source tests `\varphi`.

For objects in `\mathcal B_{sq}`, the residue measure vanishes. Indeed, the admissible terminal source tests separate positive packet measures on the same-fluid carrier. If every pairing is zero, the Riesz representation theorem and packet-test density imply

```math
\mu_*^{sq}+\mu_*^{skew}=0.
```

Since the extracted residue measures are positive on the licensed source packet class, this gives

```math
\mu_*^{sq}=0,
\qquad
\mu_*^{skew}=0.
```

Hence

```math
RigidSquareResidueVanish.A:
\quad
(u_*,p_*,\mu_*^{sq},\mu_*^{skew})\in\mathcal B_{sq}
\Longrightarrow
\mu_*^{sq}+\mu_*^{skew}=0.
```

## Open class-production gate

The remaining theorem required for the full Zeno close is

```math
ZenoSquareCancellationClassProduction.A:
\quad
\text{every square-dominant same-fluid Zeno pulse limit belongs to }\mathcal B_{sq}.
```

Current compactness supplies ancient local suitability, same-fluid ancestry, and nonzero residue inheritance. These inputs supply carrier fidelity. They do not supply Type I bounds, finite global ancient energy, critical smallness, symmetry, bounded ancient vorticity, or source-test cancellation.

Therefore the unconditional Zeno pair reduces to

```math
ZenoSquareCompactnessExtraction.A
+ZenoSquareCancellationClassProduction.A
+RigidSquareResidueVanish.A
\Longrightarrow
ZenoSquarePulseRigidity.A+ZenoSquareResidueLiouville.A.
```

The first piece is proved above from the stated same-fluid packet coherence,
legal terminal localization, parabolic scale normalization, local energy
bounds, local pressure decomposition, and square-reserve normalization.  The
third piece is proved from the definition of `\mathcal B_{sq}` plus separation
of positive packet measures by admissible same-fluid terminal source tests and
Riesz representation.  The live atom is
`ZenoSquareCancellationClassProduction.A`.

## Consequence for Row 6

If `ZenoSquareCancellationClassProduction.A` is proved, the extracted Zeno limit has nonzero inherited residue by compactness and zero residue by rigid-class Liouville, a contradiction. Thus failure of `ScaleCriticalTreeCarleson.A` becomes impossible, and the square reserve becomes legal.

Without the class-production theorem, the Zeno branch halts at compact ancient local suitable limits carrying possible positive source residue.

## Next exact frontier

The next theorem-bearing target is

```math
ZenoSquareCancellationClassProduction.A,
```

or equivalently a direct theorem forcing the weighted lifted skew-defect residue to vanish on every same-fluid square-dominant terminal pulse forest.
