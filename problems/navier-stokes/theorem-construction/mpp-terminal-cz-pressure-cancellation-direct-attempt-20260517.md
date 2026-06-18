# MPP TerminalCZPressureCancellation.A Direct Attempt

Date: 2026-05-17

Status: direct attempt; cancellation holds only before terminal positive
selection or under a new pressure-partner saturation theorem.  No unconditional
closure is obtained.

Purpose: attack the first atom from
`mpp-pressure-hessian-partner-graph-normal-form-20260517.md`:

```math
\boxed{TerminalCZPressureCancellation.A.}
```

This is the pressure-specific version of the signed-partner question.  The
pressure partner is a negative Calderon--Zygmund kernel lobe, not a dyadic
antisymmetric edge.

## 0. Target

For each retained terminal packet `P`, write the near-band pressure Hessian as

```math
\mathcal P_P(t)
=
\int K_{n_P(t)}(X_P(t)-y):Q(y,t)\,dy,
\tag{TCZ.1}
```

where `K_n` is the directional pressure Hessian kernel and `Q` is the localized
quadratic gradient block.  The terminal pressure contribution is

```math
\sum_{P\in\mathcal F_N}
E_P^\#\tau_P
\int_{I_P}[W_P(t)\mathcal P_P(t)]_{sustain,+}\,dt.
\tag{TCZ.2}
```

The desired cancellation theorem is

```math
\boxed{
TerminalCZPressureCancellation.A:
\quad
\text{retained negative CZ lobes cancel `(TCZ.2)` up to legal loss.}
}
\tag{TCZ.3}
```

## 1. What cancellation is actually available

For fixed `P`, decompose space into annular angular sectors
`\mathcal A_{\alpha}` adapted to `K_{n_P}`.  The kernel has angular mean zero:

```math
\sum_{\alpha}
\int_{\mathcal A_\alpha}
K_{n_P}(X_P-y)\,dy
=0
\tag{TCZ.4}
```

in the principal value sense.  Therefore, before selection and weights, one can
pair positive and negative angular lobes:

```math
\sum_{\alpha\in +}\Pi_{\alpha,P}
+\sum_{\beta\in -}\Pi_{\beta,P}
=
\mathrm{CZ\ commutator/tail}.
\tag{TCZ.5}
```

This is genuine pressure cancellation.  It is weaker than dyadic skewness:
there is no packet edge `P->A` satisfying `J(P->A)=-J(A->P)`.  The cancellation
uses angular averaging around the same receiver `P`.

## 2. The terminal selection defect

After terminal operations, `(TCZ.5)` becomes

```math
\sum_{P\in\mathcal F_N}
\left[
\sum_{\alpha\in+}
W_P E_P^\#\tau_P\Pi_{\alpha,P}
+
\sum_{\beta\in-}
W_P E_P^\#\tau_P\Pi_{\beta,P}
+R_P^{cut/proj}
\right]_{+}.
\tag{TCZ.6}
```

The positive-part selection may keep the positive angular lobes while the
negative angular lobes are:

```text
unselected but interior,
spread across many packets,
outside the same-fluid terminal family,
in a collar/harmonic pressure tail,
or present but with mismatched terminal weights.
```

Only the collar/harmonic/cutoff cases are automatically legal.  The first two
are not legal exits; they are pressure-partner loss inside the same physical
region.

## 3. Retained lobe cancellation with slowly varying weights

If a positive lobe and its negative partner are both retained, and the terminal
weights are comparable on the pair, then

```math
W_P\Pi_{\alpha,P}+W_P\Pi_{\beta,P}
=
W_P(\Pi_{\alpha,P}+\Pi_{\beta,P})
\tag{TCZ.7}
```

is paid by the ordinary CZ commutator/tail.  More generally, if the partner
uses a slightly different packet weight `W_{P,\beta}`, the mismatch is

```math
(W_P-W_{P,\beta})\Pi_{\beta,P}.
\tag{TCZ.8}
```

The same ASAC-style one-sided comparison that pays dyadic pair weights does not
automatically pay `(TCZ.8)`, because the partner is an angular pressure lobe,
not a transported high-vorticity source packet.  A new pressure-weight theorem
would be needed:

```math
\boxed{CZPressurePairWeightDefectCharge.A.}
\tag{TCZ.9}
```

## 4. Unselected interior negative lobes

The main obstruction is simpler.  Let the positive pressure lobe feeding `P`
be retained, while the compensating negative lobe is interior but spread over
unselected packets.  Then the signed full pressure sum can still cancel, but
the selected positive pressure bill sees only

```math
\left[W_P E_P^\#\tau_P\Pi_{\alpha,P}\right]_+.
\tag{TCZ.10}
```

There is no reason from Calderon--Zygmund mean-zero alone that the unselected
negative lobe is small.  Charging it by absolute value returns to

```math
E_P^\#\tau_P\|\nabla u\|_\infty^2,
\tag{TCZ.11}
```

the active-square/source-Carleson scale.

Thus retained pressure cancellation requires a saturation theorem:

```math
\boxed{
TerminalPressurePartnerSaturation.A:
\text{negative CZ partners of selected positive pressure lobes are retained
or legally charged.}
}
\tag{TCZ.12}
```

This is the pressure analogue of `TerminalSignedSaturation.A`, but it is not a
formal consequence of dyadic skew exchange.

## 5. Diffuse partner model

A model obstruction is the angular kernel marginal

```math
\Pi_m(\theta)
=
m\,1_{\theta\in I_m^+}
-m\,1_{\theta\in I_m^-},
\qquad |I_m^\pm|= m^{-1},
\tag{TCZ.13}
```

with equal total signed mass.  If the terminal selection retains only the
positive sector `I_m^+`, the selected positive bill is
\(\int_{I_m^+}m\,d\theta=1\) while the signed full angular integral is zero.

This model is compatible with pressure mean-zero cancellation.  It is killed
only by a theorem saying terminal same-fluid selection cannot isolate a
positive pressure lobe from its negative angular partner, or by a legal charge
for the missing negative lobe.

## 6. Conditional theorem

The direct attempt proves:

```math
\boxed{
\begin{aligned}
&TerminalPressurePartnerSaturation.A\\
&\quad+
CZPressurePairWeightDefectCharge.A\\
&\quad+
TerminalPressureCollarLegal.A\\
&\Longrightarrow TerminalCZPressureCancellation.A.
\end{aligned}
}
\tag{TCZ.14}
```

Proof.  Pair the positive and negative CZ angular lobes by `(TCZ.5)`.  If both
lobes are retained, use `CZPressurePairWeightDefectCharge.A` to pay the
one-sided weight mismatch and ordinary pressure commutators for the kernel
tail.  If a lobe exits through collar/cutoff/harmonic pressure, use
`TerminalPressureCollarLegal.A`.  If a lobe is interior and unselected, use
`TerminalPressurePartnerSaturation.A` to retain or legally charge it.  Sum over
the bounded-overlap terminal family.

## 7. Verdict

`TerminalCZPressureCancellation.A` is not proved by Calderon--Zygmund
mean-zero cancellation alone.

The sharp surviving pressure-specific theorem is:

```math
\boxed{TerminalPressurePartnerSaturation.A.}
```

It says terminal selection cannot keep a positive pressure-Hessian sustain lobe
while dropping its interior negative angular partner for free.  Without this,
pressure cancellation remains a signed full-graph fact, while the source wall
needs one-sided selected positive control.

The direct saturation attempt is recorded in
`mpp-terminal-pressure-partner-saturation-direct-attempt-20260517.md`.  It
reduces the pressure-specific survivor to `PressureLobeSourceTether.A`: an
interior missing pressure lobe must be converted into a native same-fluid
source/donor edge before the usual no-free-sink machinery can apply.
