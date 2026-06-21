---
theorem_id: forward-gold-lp-full-balance-payment-20260621
status: dyadic-full-balance-payment-target-installed-production-open
logical_landing_node: lp_full_balance_payment
edge_effect: "Installs the Littlewood-Paley shell-level version of the participation-preserving no-residue route. Existing dyadic scale notes compare nonlinear transport against viscous shell damping and leave source-square or weighted tail residues. This note keeps the LP shell packet but changes the payment carrier: a selected positive transport/source packet must first be expressed through the full local Navier-Stokes balance of time, pressure, viscosity, incompressibility, and legal cutoff/collar leakage. Cauchy/Young remains available only after that full-balance split for already legal errors. The theorem target is LPFullBalancePayment.A / DyadicParticipationNoFreeSource.A; it is a production target and algebraic criterion, not a proof of the unweighted reserve."
parents:
  - problems/navier-stokes/theorem-construction/cascade-to-scale-barrier-bridge-lemma.md
  - problems/navier-stokes/theorem-construction/body1-kernelized-lifted-band-integration-audit.md
  - problems/navier-stokes/theorem-construction/all-scale-frequency-transfer-inefficiency-theorem.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# LP Full-Balance Payment

Date: 2026-06-21

## 0. Aim

The existing Littlewood-Paley route keeps the scale resolution but usually
collapses the selected event into a scalar size estimate:

```math
|\text{mixed interaction}|
\le
\Theta E^{1/2}D^{1/2}
\le
\varepsilon\nu D+C_{\varepsilon,\nu}\Theta^2E.
\tag{LPFB.1}
```

That form is useful for exposing an unpaid source-square residue, but it is
not the participation-preserving theorem shape.  It prices the bad packet as
transport size against viscosity size.

The replacement target is:

```math
\boxed{
\text{Littlewood-Paley shell packet}
\quad\longrightarrow\quad
\text{Littlewood-Paley full-balance packet.}
}
\tag{LPFB.2}
```

The theorem name for this shell-level target is:

```math
\boxed{
\texttt{LPFullBalancePayment.A}
}
\qquad
\text{or equivalently}
\qquad
\boxed{
\texttt{DyadicParticipationNoFreeSource.A}.
}
\tag{LPFB.3}
```

It does not delete Littlewood-Paley.  It changes what is allowed to pay a
selected LP event.

## 1. Old scalar LP payment shape

Let

```math
u_j=\Delta_j u.
\tag{LPFB.4}
```

Applying \(\Delta_j\) to Navier-Stokes gives

```math
\partial_tu_j
+
\Delta_j(u\cdot\nabla u)
+
\nabla\Delta_jp
-
\nu\Delta u_j
=0,
\qquad
\nabla\cdot u_j=0.
\tag{LPFB.5}
```

The ordinary global shell-energy pairing with \(u_j\) makes the pressure
channel disappear:

```math
\langle\nabla\Delta_jp,u_j\rangle
=
-\langle\Delta_jp,\nabla\cdot u_j\rangle
=0.
\tag{LPFB.6}
```

Then the nonlinear term is compared directly against viscous shell damping:

```math
\nu2^{2j}\|u_j\|_2^2
\qquad\text{or}\qquad
D_j\sim 2^{4j}\|u_j\|_2^2,
\tag{LPFB.7}
```

and Cauchy/Young produces `(LPFB.1)`.

This is the route visible in the scale-barrier and lifted-band notes:

- `cascade-to-scale-barrier-bridge-lemma.md` asks for a dyadic tail or flux
  inequality strong enough to keep transport absorbable by dissipation up to a
  summable remainder.
- `body1-kernelized-lifted-band-integration-audit.md` finds the real gap
  kernel \(2^{-(j-k)}\) on \(N+M<k<j-4\), then runs into the residual lower
  shell weight \(2^k\).
- `all-scale-frequency-transfer-inefficiency-theorem.md` broadens the same
  scalar instinct into a desired upward-transfer inefficiency law.

Those notes remain useful scale evidence.  They do not yet carry the full local
Navier-Stokes participation packet.

## 2. Full shell packet

For each shell, keep the five-channel object

```math
\boxed{
\mathcal B_j
=
\left(
R_j,\,
N_j,\,
P_j,\,
V_j,\,
C_j
\right)
}
\tag{LPFB.8}
```

with

```math
R_j:=\partial_tu_j,
\qquad
N_j:=\Delta_j(u\cdot\nabla u),
\qquad
P_j:=\nabla\Delta_jp,
\tag{LPFB.9}
```

```math
V_j:=-\nu\Delta u_j,
\qquad
C_j:=\nabla\cdot u_j.
\tag{LPFB.10}
```

Then the shell law is

```math
\boxed{
R_j+N_j+P_j+V_j=0,
\qquad
C_j=0.
}
\tag{LPFB.11}
```

This is the dyadic version of the same-solution participation law.  Pressure
and incompressibility are not erased before terminal selection.

## 3. Selected local packet

Let \(P\) be a selected terminal packet with cutoff \(\chi_P\), and let
\(\Phi_{j,P}\) be the selected response.  Define

```math
R_{j,P}:=\chi_P\partial_tu_j,
\qquad
N_{j,P}:=\chi_P\Delta_j(u\cdot\nabla u),
\tag{LPFB.12}
```

```math
P_{j,P}:=\chi_P\nabla\Delta_jp,
\qquad
V_{j,P}:=-\nu\chi_P\Delta u_j.
\tag{LPFB.13}
```

The localized/tested balance has the form

```math
\boxed{
R_{j,P}
+
N_{j,P}
+
P_{j,P}
+
V_{j,P}
=
L_{j,P}.
}
\tag{LPFB.14}
```

Here \(L_{j,P}\) is not a new physical force.  It records the legal terms
created by cutoffs, collars, moving packet boundaries, commutators, scale
modulation, and integration by parts in the selected pairing.

Pair `(LPFB.14)` with \(\Phi_{j,P}\).  Then

```math
\langle N_{j,P},\Phi_{j,P}\rangle
=
-\langle R_{j,P},\Phi_{j,P}\rangle
-\langle P_{j,P},\Phi_{j,P}\rangle
-\langle V_{j,P},\Phi_{j,P}\rangle
+\langle L_{j,P},\Phi_{j,P}\rangle.
\tag{LPFB.15}
```

Define selected source activity by

```math
A_{j,P}
:=
\left[\langle N_{j,P},\Phi_{j,P}\rangle\right]_+.
\tag{LPFB.16}
```

The exact algebraic consequence is

```math
\boxed{
A_{j,P}
\le
\left[
-\langle R_{j,P},\Phi_{j,P}\rangle
-\langle P_{j,P},\Phi_{j,P}\rangle
-\langle V_{j,P},\Phi_{j,P}\rangle
\right]_+
+
\left|\langle L_{j,P},\Phi_{j,P}\rangle\right|.
}
\tag{LPFB.17}
```

This is the point where the old source-square domination theorem is replaced.
The selected transport packet must show where it sits in the full balance
before any size estimate is applied.

## 4. Payment theorem target

The desired production theorem is

```math
\boxed{
A_{j,P}
\lesssim
\mathsf T_{j,P}
+
\mathsf P_{j,P}
+
\mathsf V_{j,P}
+
\mathsf I_{j,P}
+
\mathsf L_{j,P}.
}
\tag{LPFB.18}
```

The five payments are:

```math
\mathsf T_{j,P}
=
\text{time-face / terminal-capacity drop,}
\tag{LPFB.19}
```

```math
\mathsf P_{j,P}
=
\text{pressure spread, pressure conormal, or pressure participation payment,}
\tag{LPFB.20}
```

```math
\mathsf V_{j,P}
=
\text{viscous full-cycle loss,}
\tag{LPFB.21}
```

```math
\mathsf I_{j,P}
=
\text{incompressibility orientation and saturation constraint,}
\tag{LPFB.22}
```

```math
\mathsf L_{j,P}
=
\text{legal cutoff, collar, tail, commutator, and modulation leakage.}
\tag{LPFB.23}
```

In the log-scale formulation, the same target is

```math
\boxed{
A_{j,P}
\lesssim
-\partial_\sigma\Phi_{j,P}
+
\mathsf P_{j,P}
+
\mathsf V_{j,P}
+
\mathsf I_{j,P}
+
\mathsf L_{j,P}.
}
\tag{LPFB.24}
```

Summing over the selected shell-packets gives

```math
A(\sigma)
:=
\sum_{(j,P)\in\mathcal S_\sigma}A_{j,P}
\tag{LPFB.25}
```

and the desired scale inequality is

```math
\boxed{
A(\sigma)
\lesssim
-\partial_\sigma\Phi(\sigma)
+
\mathsf P(\sigma)
+
\mathsf V(\sigma)
+
\mathsf I(\sigma)
+
\mathsf L(\sigma).
}
\tag{LPFB.26}
```

If

```math
\int_{\sigma_0}^{\infty}
\left(
\mathsf P+\mathsf V+\mathsf I+\mathsf L
\right)(\sigma)\,d\sigma
<\infty
\tag{LPFB.27}
```

and

```math
0\le\Phi(\sigma)\le C,
\tag{LPFB.28}
```

then integration gives

```math
\boxed{
\int_{\sigma_0}^{\infty}A(\sigma)\,d\sigma<\infty.
}
\tag{LPFB.29}
```

That is the unweighted log-scale control sought by the forward-gold branch.

## 5. Pressure and incompressibility do real local work

The global shell pairing hides the pressure channel by `(LPFB.6)`.  A localized
packet does not have that luxury.  For a spatial cutoff,

```math
\int \chi_P^2\nabla\Delta_jp\cdot u_j
=
-\int \Delta_jp\,\nabla\cdot(\chi_P^2u_j)
=
-\int \Delta_jp\,2\chi_P\nabla\chi_P\cdot u_j.
\tag{LPFB.30}
```

Thus pressure has no bulk contribution in the full-shell energy identity, but
it can carry selected local packet information through collar and conormal
terms.  The incompressibility condition likewise remains a constraint channel:
it is the reason the closed bulk skew cancellation is legal, and it records the
orientation/saturation cost when the selected response, cutoff, or carrier
tries to use only one side of that cancellation.

## 6. Compactness-rigidity reading

The same theorem can be read as a compactness-rigidity target.

Assume a sequence of retained selected shell-packets has

```math
A_{j_n,P_n}\ge c>0
\tag{LPFB.31}
```

while every full-cycle payment tends to zero:

```math
\mathsf T_{j_n,P_n}
+
\mathsf P_{j_n,P_n}
+
\mathsf V_{j_n,P_n}
+
\mathsf I_{j_n,P_n}
+
\mathsf L_{j_n,P_n}
\to0.
\tag{LPFB.32}
```

After compactness, a limiting packet would satisfy the lossless local balance

```math
R_*+N_*+P_*+V_*=0,
\qquad
C_*=0,
\tag{LPFB.33}
```

with zero visible payment.  The rigidity form of
`LPFullBalancePayment.A` says such a lossless full-balance packet has

```math
A_*=0.
\tag{LPFB.34}
```

Same-carrier retention of `(LPFB.31)` would give \(A_*\ge c\), a contradiction.
This is the dyadic compactness-rigidity version of the full-balance payment
principle.

## 7. Repo consequence

The old theorem shape

```math
A
\le
\varepsilon\nu D
+
\text{source-square residue}
\tag{LPFB.35}
```

is no longer the main theorem form for selected participation.

The new theorem shape is

```math
\boxed{
A
\le
-\partial_\sigma\Phi_{\rm term}
+
\mathsf P_{\rm spread}
+
\mathsf V_{\rm cycle}
+
\mathsf I_{\rm sat}
+
\mathsf L_{\rm legal}.
}
\tag{LPFB.36}
```

Cauchy is still allowed after `(LPFB.15)`, but only for already classified
legal collar, tail, commutator, or localization terms.  It is not allowed to be
the first move that turns a selected source packet into
\(C_{\varepsilon,\nu}\Theta^2E\).

Plainly:

```math
\boxed{
\text{LP chooses the scale.  Full balance chooses the payment carrier.}
}
\tag{LPFB.37}
```

A bad shell packet cannot be priced merely as transport size.  It must be
forced to show whether it is time-face, pressure, viscosity, incompressibility,
or legal leakage in the local Navier-Stokes balance.  Only after that
classification can residual Cauchy estimates be used without losing the
participation law.

This note does not prove the production theorem `(LPFB.18)` from installed
Navier-Stokes estimates.  It installs the correct dyadic theorem surface and
prevents the scalar source-square residue from being treated as the native
payment carrier.
