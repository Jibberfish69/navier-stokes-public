# MPP TerminalPressurePartnerSaturation.A Direct Attempt

Date: 2026-05-17

Status: direct attempt; no unconditional proof.  The missing step is a tether
from elliptic pressure lobes to native same-fluid source/donor edges.

Purpose: attack the pressure-specific survivor from
`mpp-terminal-cz-pressure-cancellation-direct-attempt-20260517.md`:

```math
\boxed{TerminalPressurePartnerSaturation.A.}
```

## 0. Target

For a selected positive pressure-Hessian sustain lobe

```math
A^+\to P,
\qquad
\mathsf J^{press}(A^+\to P)>0,
\tag{TPPS.1}
```

let `\mathcal N(A^+\to P)` be the opposite-sign Calderon--Zygmund lobe family
in the same pressure kernel annulus/angular decomposition.  The target says:

```math
\boxed{
\text{some negative partner is retained in the usable terminal pressure
ledger, or every missing partner is legally charged.}
}
\tag{TPPS.2}
```

Equivalently, terminal positive pressure sustain cannot isolate a positive
kernel lobe from its negative angular partner for free.

## 1. The easy cases

If a negative partner lobe is retained, the pressure cancellation is handled by
`TerminalCZPressureCancellation.A` modulo the pair-weight defect.

If all missing negative lobes leave through a true geometric exit,

```text
cutoff boundary,
harmonic pressure collar,
off-family pressure tail,
projector/collar residue,
```

then `TerminalPressureCollarLegal.A` pays them.

These cases are not the wall.

## 2. Interior missing pressure lobes are not donor edges yet

The hard case is an opposite-sign lobe that is:

```text
physically interior,
same-fluid admissible at the geometric level,
not retained in the selected pressure ledger,
and not a cutoff/collar/off-family loss.
```

For the dyadic source-current graph, an interior missing signed partner is a
donor sink.  Then `LocalDonorBalance.A` can attach a refill tree.

For pressure, this implication is not automatic.  The pressure lobe is an
elliptic singular-integral contribution

```math
\int_{A^-}K_{n_P}(X_P-y):Q(y,t)\,dy.
\tag{TPPS.3}
```

It is instantaneous and spatial.  It is not by itself a transported
source-parent edge, and it does not carry a built-in same-fluid time ancestry.

Thus the missing bridge is:

```math
\boxed{
PressureLobeSourceTether.A:
\text{every interior missing pressure partner lobe either is legal pressure
loss or induces a native same-fluid source/donor edge.}
}
\tag{TPPS.4}
```

Without this tether, the pressure graph can fail by producing pressure
sustain residue that is not yet the native source residue used in Path 2.

## 3. Why CZ geometry alone does not tether the lobe

The kernel geometry gives angular localization and mean zero:

```math
\int_{S^2}K_n(\theta)\,d\theta=0.
\tag{TPPS.5}
```

It does not give a material edge.

A negative lobe may be spread across many small packets:

```math
\sum_{\alpha=1}^{M}\mathsf J^{press}(A^-_\alpha\to P)
=
-\mathsf J^{press}(A^+\to P),
\qquad M\to\infty,
\tag{TPPS.6}
```

with each individual lobe below the terminal selection threshold.  The full
pressure integral cancels, but the selected terminal ledger keeps the positive
lobe.  This is compatible with Calderon--Zygmund pressure cancellation unless
there is a saturation theorem tying diffuse negative lobes back to native
source/donor structure.

Charging the diffuse negative lobe by absolute value gives

```math
E_P^\#\tau_P\int |\nabla u|^2,
\tag{TPPS.7}
```

which is active-square / source-Carleson strength.

## 4. Conditional theorem

The useful pressure saturation theorem is therefore:

```math
\boxed{
\begin{aligned}
&PressureLobeSourceTether.A\\
&\quad+
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}\\
&\quad+
TerminalPressureCollarLegal.A\\
&\Longrightarrow TerminalPressurePartnerSaturation.A.
\end{aligned}
}
\tag{TPPS.8}
```

Proof.  Take a missing negative pressure partner.  If it is a true pressure
collar/cutoff/off-family exit, pay it by `TerminalPressureCollarLegal.A`.  If
it is interior, use `PressureLobeSourceTether.A` to convert it into a native
same-fluid source/donor edge.  Then apply the independent no-free-sink theorem
to retain, legally charge, finitely deplete, or rigidify that donor edge.
Summing the resulting charges gives `TerminalPressurePartnerSaturation.A`.

## 5. Failure residue

Failure of `TerminalPressurePartnerSaturation.A` with legal pressure exits
removed gives a terminal sequence with

```math
\Pi_N^{press,+}\ge c_0>0,
\qquad
Legal_N^{press}\to0,
\tag{TPPS.9}
```

and missing interior negative pressure partners.

Compactness can extract a pressure-sustain residue

```math
\mu_*^{press-sus}(Q_1^-)\ge c_0.
\tag{TPPS.10}
```

This helps the two-path source-wall closure only if one proves:

```math
\boxed{
PressureSustainResidueToSourceResidue.A.
}
\tag{TPPS.11}
```

That bridge is essentially the compactness version of
`PressureLobeSourceTether.A`.

## 6. Verdict

`TerminalPressurePartnerSaturation.A` is not a consequence of pressure
mean-zero cancellation, packet geometry, or collar legality alone.

The pressure route now has a precise new hinge:

```math
\boxed{PressureLobeSourceTether.A.}
```

It must turn an interior missing pressure cancellation lobe into a native
same-fluid source/donor edge.  Without that tether, the pressure graph failure
creates a pressure-sustain residue, not automatically the source residue needed
by the original two-path Zeno branch.

The direct tether attempt is recorded in
`mpp-pressure-lobe-source-tether-direct-attempt-20260517.md`.  It shows that
the only immediate finite-packet tether uses the localized Leray
convective-pressure source-current ledger, so the independent pressure route
would need the limit bridge `PressureSustainResidueToSourceResidue.A` or a new
noncircular `LocalizedLeraySourceTether.A`.
