# MPP Forward Gold Moving-Spill Weighted-Carrier Resolution

Date: 2026-06-19

## Status

The moving-spill side is resolved on the weighted-carrier surface.  It is not
resolved as a standalone coefficient-free same-scale theorem.

The exact result is:

\[
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon,L,\nu}
\int_0^T \widetilde\Lambda_N^\sharp(t)E_N(t)\,dt .
\tag{MS-WC}
\]

This removes the moving-spill packet as an independent lifted-packet theorem
debt once the route is allowed to spend the installed weighted carrier
\(\widetilde\Lambda_N^\sharp E_N\).  It does not prove the stronger
coefficient-free estimate

\[
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\varepsilon\nu\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{MS}
\]

## 1. Moving spill is a finite same-scale family

The fixed-offset reduction gives

\[
\Pi_N^{mov\text{-}spill,L}
=
\sum_{|m|\le M_L}\Pi_{N,m}^{edge}
+
\mathcal E_N^{collar},
\qquad
\mathcal E_N^{collar}\in\mathscr A_{collar}.
\tag{1}
\]

For the moving-spill packet, the collar error in \((1)\) is not a lower-prefix
or far-corona object.  It comes from replacing the low-pass test factor by its
edge-band projection.  The discarded multipliers are bounded-gap same-scale
perturbations.

Thus, after expanding the admissible collar error into its finite bounded-gap
annular multiplier pieces, there is a finite enlarged family
\(\mathcal A_{ms,L}^{+}\) such that

\[
\Pi_N^{mov\text{-}spill,L}(t)
\le
\sum_{a\in\mathcal A_{ms,L}^{+}}
\left|\Pi_{N,a}^{edge}(t)\right|.
\tag{2}
\]

The family size and symbol seminorms depend on the fixed near-corona width
\(L\) and the dyadic partition, but not on \(N\), \(t\), or the solution.

## 2. Coefficient-bearing edge estimate

For each finite same-scale edge packet, the installed coefficient-bearing
estimate gives

\[
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon_a\nu\int_0^T D_N(t)\,dt
+
C_{\varepsilon_a,a,\nu}
\int_0^T \Theta_N^{ss,\sharp}(t)E_N(t)\,dt .
\tag{3}
\]

Choose the finitely many \(\varepsilon_a\) so that

\[
\sum_{a\in\mathcal A_{ms,L}^{+}}\varepsilon_a\le\varepsilon .
\tag{4}
\]

Summing \((3)\) over the finite family gives

\[
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt
+
C_{\varepsilon,L,\nu}
\int_0^T \Theta_N^{ss,\sharp}(t)E_N(t)\,dt .
\tag{5}
\]

## 3. Inclusion into the weighted carrier

The same-scale coefficient inclusion note proves

\[
\Theta_N^{ss,\sharp}(t)
\le
\widetilde\Lambda_N^\sharp(t).
\tag{6}
\]

Multiplying by \(E_N(t)\ge0\), integrating, and inserting \((6)\) into
\((5)\) yields \((\mathrm{MS\text{-}WC})\).

## Consequence

The near-corona moving-spill part of the middle-band flux no longer needs its
own theorem on the weighted-carrier route.  Its entire contribution is routed
into:

\[
\varepsilon\nu D_N
\quad+\quad
\widetilde\Lambda_N^\sharp E_N .
\]

The standalone coefficient-free same-scale theorem \((\mathrm{SS})\) remains
open only if one insists on proving \((\mathrm{MS})\) without spending the
weighted carrier term.

## Result

After the proportional deep-low split and this moving-spill weighted-carrier
resolution, the lifted-packet frontier is reduced to the genuine far-corona
large-gap problem:

\[
\boxed{
\text{FarCoronaTwoScaleCarleson.A / CTS / LPAS}
}
\]

together with whatever global theorem is used to control the weighted carrier
\(\widetilde\Lambda_N^\sharp E_N\) in the surrounding scale-barrier package.
