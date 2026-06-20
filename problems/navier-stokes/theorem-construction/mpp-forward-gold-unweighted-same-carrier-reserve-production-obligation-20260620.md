# MPP Forward-Gold Unweighted Same-Carrier Reserve Production Obligation

Date: 2026-06-20

## Status

Direct proof-obligation extraction complete.  This note does not prove the
Navier--Stokes smoothness theorem.  It states the exact minimal production
theorem left after the endpoint-pulse, source-square, strict no-waste,
positive-cone, energy-decay, shell-density, and rigid-Zeno tests.

The remaining gold theorem is not one scalar anti-atom estimate.  It has three
independent production clauses on the same selected carrier:

```math
\boxed{
\text{endpoint uniform integrability}
}
\tag{UOP.1}
```

```math
\boxed{
\text{first-created interior reserve charge}
}
\tag{UOP.2}
```

```math
\boxed{
\text{same-shadow no-null positive-cone readout}
}
\tag{UOP.3}
```

Only when these clauses are tied to the actual selected positive native carrier
does the forward-gold route produce an unweighted terminal critical-action
reserve.

## 1. Actual selected carrier

On selected terminal heat-scale packets, write the native positive carrier
time marginal as

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},w_{j_m}
\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx,
\qquad -1\le s\le0.
\tag{UOP.4}
```

The carrier is after localization, projection, packet selection, lift/weight
operations, and positive-part extraction.  A theorem on a signed stress current,
local-energy defect, mode score, CKN charge, or source-square density is not a
theorem on `(UOP.4)` until a same-carrier domination or identity is proved.

## 2. Clause A: endpoint uniform integrability

The endpoint clause is

```math
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{UOP.5}
```

It excludes the terminal time-face atom

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{UOP.6}
```

for which

```math
\int_{-1}^{0}a_m(s)\,ds=1,
\qquad
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=1.
\tag{UOP.7}
```

Finite selected `L^1_s` mass, finite physical energy, finite dissipation,
fixed-test trace continuity, and ordinary weak compactness do not imply
`(UOP.5)`.

## 3. Clause B: first-created interior reserve charge

Endpoint control does not alone pay an interior square reserve born away from
the terminal face.  For a selected reserve

```math
R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt,
\tag{UOP.8}
```

the interior production clause is a first-created charge estimate

```math
\left[
R_N(W)
-(1-\delta)R_N({\rm Past}(W))
-Loss_{\rm legal}(W)
\right]_+
\le
Charge_N(W)+o_N(1),
\tag{UOP.9}
```

with terminal-tail depletion of the charge:

```math
\lim_{N\to\infty}
\sum_{W\in{\mathcal W}_N}Charge_N(W)
=0
\tag{UOP.10}
```

on the selected nonlegal family.

The heat-scale first-appearance model

```math
h_m=2^{-2m},
\qquad
D_{m+5}(t)=2^{-3m/2}h_m^{-1}{\bf 1}_{I_m}(t)
\tag{UOP.11}
```

has

```math
\int_{I_m}D_{m+5}(t)\,dt=2^{-3m/2}\to0,
\tag{UOP.12}
```

while

```math
\int_{I_m}2^mD_{m+5}(t)^2\,dt=1.
\tag{UOP.13}
```

Thus a first-moment charge is insufficient.  The charge in `(UOP.9)` must be a
square, critical-strain, normalized CKN, strict no-waste, or equivalent
unweighted same-carrier charge.

## 4. Clause C: no-null same-shadow positive-cone readout

After endpoint compactness and paid finite donor pieces are removed, a compact
same-shadow carrier can still cancel in every signed readout.  Let \(q_m\) be
the signed selected pre-Cauchy residue on the same selected ledger and
\(L_mq_m\) the legal same-shadow signed readout.  The no-null clause is

```math
M_m^+(q_m)=1
\quad\Longrightarrow\quad
\liminf_m\|L_mq_m\|_m>0.
\tag{UOP.14}
```

The finite obstruction is

```math
q_1=1,
\qquad
q_2=-1,
\qquad
L(q_1,q_2)=q_1+q_2=0,
\qquad
M^+(q_1,q_2)=1.
\tag{UOP.15}
```

This is not an endpoint time atom.  It is a compact positive-cone kernel.  It
is excluded only by retained signed-partner saturation, a source-resolved
same-shadow readout theorem, same-carrier source-square/no-waste domination, or
CM face consumption after same-witness admission.

## 5. Minimal production theorem

The exact forward-gold production theorem left by the current route is:

```math
\boxed{
\begin{gathered}
\text{SameCarrierIdentity.A}\\
+\text{EndpointUI.A}\\
+\text{FirstCreatedReserveCharge.A}\\
+\text{NoNullSameShadowReadout.A}
\end{gathered}
\Longrightarrow
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\tag{UOP.16}
```

Here `SameCarrierIdentity.A` means the theorem is applied to the actual selected
positive native carrier `(UOP.4)`, with only legal residues already known to
have terminal moduli or summable charges.

The proof of `(UOP.16)` is a case split.

If reserve mass concentrates into every terminal strip, `(UOP.5)` excludes it.

If reserve mass appears on a negative-time subwindow after prior reserve and
legal loss are removed, `(UOP.9)` and `(UOP.10)` pay it.

If compact same-shadow residue remains but the signed readout vanishes,
`(UOP.14)` excludes it.

These three alternatives exhaust the selected carrier after legal exits,
retained finite signed partners, and finite donor telescoping are removed.

## 6. What current inputs prove

Current inputs prove several consumers:

```math
\text{source-square plus same-carrier domination}
\Longrightarrow
\text{endpoint modulus},
\tag{UOP.17}
```

```math
\text{SelectedCarrierEndpointUI.A}
+
\text{SelectedPositiveConeNoNullReadout.A}
\Longrightarrow
\text{SelectedPositivePolarSaturation.A},
\tag{UOP.18}
```

and, after same-witness CM admission,

```math
\text{retained endpoint atom or compact no-null positive carrier}
\Longrightarrow
\text{Pack/Part/Field face failure}.
\tag{UOP.19}
```

Current inputs do not prove the production clauses `(UOP.5)`, `(UOP.9)`, and
`(UOP.14)` on the same selected carrier.

## Verdict

The forward-gold branch is now reduced to a precise production theorem, not a
supplier search:

```math
\boxed{
\text{prove `(UOP.5)`, `(UOP.9)`, and `(UOP.14)` on the carrier `(UOP.4)`,}
}
\tag{UOP.20}
```

or use the retained pulse and compact no-null carrier only in the CM
Pack/Part/Field route after same-witness admission.

