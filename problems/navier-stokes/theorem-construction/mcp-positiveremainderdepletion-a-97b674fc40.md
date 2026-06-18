# PositiveRemainderDepletion.A conditional proof attempt

## Status

Conditional theorem note.  The requested estimate follows from the terminal angular-mixing / alignment-decorrelation supplier.  The unconditional supplier is still the live analytic atom.

## Target

For a bounded-overlap same-fluid terminal family `\mathcal F_N`, prove

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+
\operatorname{Drain}_{parent}(\mathcal F_N)
+
\operatorname{Loss}_{legal}(\mathcal F_N),
\qquad 0<\theta<1.
```

The localized pre-Cauchy source split is

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P+
\mathcal D_P+
\operatorname{div}_{\Phi}\mathcal J_P+
\mathcal R_P.
```

## Installed reductions

The legal ledgers place pressure, cutoff, commutator, boundary, and exported divergence pieces into legal loss or legal parent drain, after an arbitrarily small local-drain absorption.

Thus the interior obstruction is the native active strain/source carrier

```math
\mathcal R_P^{main}
=
\chi_P\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle.
```

Writing `w_{j_P}=|w_{j_P}|e_{j_P}` gives

```math
[\mathcal R_P^{main}]_+
=\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+.
```

## Supplier assumption

Assume the selected-window angular-mixing estimate

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+
\le
\theta_0\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal D_P
+
\operatorname{Drain}_{parent}(\mathcal F_N)
+
\operatorname{Loss}_{legal}(\mathcal F_N)
+o_N(1)
```

for some `0<\theta_0<1`.  This is the packet form of `TerminalAngularMixing.A`, equivalently `AlignmentDecorrel.A` / `PositiveStrainDecorrelation.A`.

## Proof under the supplier

Split

```math
\mathcal R_P=\mathcal R_P^{main}+\mathcal R_P^{legal}+\mathcal R_P^{low}.
```

The legal routing gives, after summing over the bounded-overlap family,

```math
\sum_P\int_{Q(P)}[\mathcal R_P^{legal}+\mathcal R_P^{low}]_+
\le
\varepsilon\sum_P\int_{Q(P)}\mathcal D_P
+
\frac12\operatorname{Drain}_{parent}(\mathcal F_N)
+
\frac12\operatorname{Loss}_{legal}(\mathcal F_N)
+o_N(1).
```

For each packet,

```math
[\mathcal R_P]_+
\le
[\mathcal R_P^{main}]_+
+
[\mathcal R_P^{legal}+\mathcal R_P^{low}]_+.
```

Adding the supplier assumption to the legal-routing estimate gives the exact
combined bound

```math
\sum_P\int_{Q(P)}[\mathcal R_P]_+
\le
(\theta_0+\varepsilon)\sum_P\int_{Q(P)}\mathcal D_P
+
\frac32\operatorname{Drain}_{parent}(\mathcal F_N)
+
\frac32\operatorname{Loss}_{legal}(\mathcal F_N)
+o_N(1).
```

Choose `\varepsilon>0` so that `\theta:=\theta_0+\varepsilon<1`.  Redefine the
legal ledgers once by the fixed factor `3/2`, before the summation over
packets.  The constants are independent of `N` and of the selected terminal
packet.  This proves `PositiveRemainderDepletion.A`
conditionally on `TerminalAngularMixing.A`.

## Obstruction to the unconditional proof

Trace-free strain permits an expanding eigendirection.  On a selected terminal packet take

```math
S_{<j}^{loc}e=\lambda e,
\qquad \lambda>0,
\qquad w_j\parallel e.
```

Then

```math
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+=\lambda |w_j|^2.
```

Energy, incompressibility, pressure routing, finite banding, and same-fluid transport supply size and legality controls.  They supply no selected-window angular mixing, negative-part comparison, or depletion of this positive aligned carrier.  Cauchy/Young turns the term into the active-square reserve, which is route-equivalent to the scale-critical Carleson target.

## Verdict

The conditional chain is valid:

```math
TerminalAngularMixing.A
\Longrightarrow AlignmentDecorrel.A
\Longrightarrow PositiveStrainDecorrelation.A
\Longrightarrow PositiveRemainderDepletion.A.
```

The unconditional theorem remains open at the same atom already isolated by the source-residence route: prove terminal angular mixing / alignment decorrelation for the native positive active source carrier, or install an equivalent one-sided selected-window negative-part comparison or scale-critical reserve.
