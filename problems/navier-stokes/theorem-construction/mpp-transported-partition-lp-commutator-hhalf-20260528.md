# MPP Transported Partition Littlewood--Paley Commutator For H^{1/2}

## Status

Conditional supplier lemma for `SameLedgerHHalfExtraction.A`. The analytic commutator estimate is the fixed-time kernel bound proved below from `(TPC.4)`--`(TPC.7)`. The CM use depends on retained Pack-scale compatibility of the transported cutoff through `(TPC.3)`.

## Statement

Let `P_J` be a smooth periodic Littlewood--Paley projector on `\mathbb T^3`, with annular kernel `K_J`. Let `\chi=\chi_a(t)` be one transported cutoff from the retained Pack atlas at a fixed time `t`. Then

```math
\|[P_J,\chi]u\|_{L^2(\mathbb T^3)}
\le
C\,2^{-J}\|\nabla\chi\|_{L^\infty}\|u\|_{L^2(\mathbb T^3)}.
\tag{TPC.1}
```

Equivalently,

```math
\|\chi P_Ju-P_J(\chi u)\|_2
\le
C\,2^{-J}\|\nabla\chi\|_\infty\|u\|_2.
\tag{TPC.2}
```

If the retained Pack atlas supplies

```math
2^{-J}\|\nabla\chi_a(t)\|_{L^\infty}\le c_{pack},
\tag{TPC.3}
```

then the localization error is absorbable in the same dyadic packet ledger.

## Proof

Use the kernel representation at fixed time:

```math
[P_J,\chi]u(x)
=
\int_{\mathbb T^3}K_J(x-y)(\chi(y)-\chi(x))u(y)\,dy.
\tag{TPC.4}
```

The cutoff is Lipschitz, so

```math
|\chi(y)-\chi(x)|
\le
\|\nabla\chi\|_{L^\infty}|x-y|.
\tag{TPC.5}
```

Hence

```math
|[P_J,\chi]u(x)|
\le
\|\nabla\chi\|_{L^\infty}
\int_{\mathbb T^3}|x-y|\,|K_J(x-y)|\,|u(y)|\,dy.
\tag{TPC.6}
```

For a smooth dyadic projector, the scaled kernel satisfies

```math
\big\||z|K_J(z)\big\|_{L^1(\mathbb T^3)}
\le
C2^{-J}.
\tag{TPC.7}
```

Young's inequality gives `(TPC.1)`.

Multiplying by the critical `H^{1/2}` shell weight gives

```math
2^{J/2}\|[P_J,\chi]u\|_2
\le
C2^{-J/2}\|\nabla\chi\|_{L^\infty}\|u\|_2.
\tag{TPC.8}
```

Under `(TPC.3)`, this is a lower-order localization error relative to the selected critical shell packet.

## CM interpretation

The estimate says that a retained material cutoff can localize a selected `H^{1/2}` dyadic shell without creating an artificial public readout. The shell remains attached to the same material chart up to a Pack-controlled error.

If the transported cutoff lacks the scale compatibility `(TPC.3)`, the shell cannot be assigned to the retained material packet at that dyadic resolution. That is a Field-window support failure for the extraction argument.

With retained Pack, the commutator is controlled, so the finite-atlas pigeonhole step can select a localized same-ledger shell packet for the next Part/Field analysis.

## Boundary

This lemma supplies only the commutator part of `SameLedgerHHalfExtraction.A`. It still leaves the same-witness chart selection and the downstream `HHalfOscillationFieldExit.A` step.
