---
theorem_id: forward-gold-forward-native-reserve-ratio-tail-obstruction-20260626
status: direct-audit-installed-native-reserve-must-contain-ratio-weight
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pls-no-recirculation-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-one-way-transfer-minimal-bad-tail-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-transverse-compression-ode-obstruction-20260626.md
---

# Forward Native Reserve Ratio-Tail Obstruction

The proof relay narrowed the no-recirculation law to a forward reserve:

```math
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le
dR_N,
\tag{FNR.1}
```

where \(\mathfrak R_N^{nat}\) must be nonnegative, finite from original data,
and independent of the target full action.  This is the right noncircular
shape.  This note tests what such a reserve must see.

## 1. Ratio-tail variables

Use the high-ratio decomposition already isolated in the minimal-bad-tail test:

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}}.
\tag{FNR.2}
```

Let

```math
E_{j,\ell}
=
\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
\tag{FNR.3}
```

The installed raw heat/viscous/fixed-collar ledgers give the zeroth moment:

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{FNR.4}
```

The full same-material action requires the first ratio moment:

```math
\int_0^{T_*}d\Omega_N^{full}
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{FNR.5}
```

Thus a forward native reserve paying `(FNR.5)` must contain information at
least comparable to the ratio weight \(2^\ell\).

## 2. Zeroth-moment reserves cannot pay the full action

Any reserve built only from energy, viscous dissipation, fixed-annulus action,
fixed-collar action, or a finite unweighted sum of those controls at most

```math
\sum_{\ell\ge0}\nu_\ell
\tag{FNR.6}
```

on the high-ratio bands.  That is strictly weaker than `(FNR.5)`.

The separation is elementary.  Take

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{FNR.7}
```

Then

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\tag{FNR.8}
```

but

```math
\sum_{\ell\ge0}2^\ell\nu_\ell
=
\sum_{\ell\ge0}{1\over \ell+1}
=\infty .
\tag{FNR.9}
```

So a raw ledger can be finite while the full normalized action diverges.

## 3. What counts as a real native reserve

A native reserve is noncircular only if it is finite from original smooth data
and has a differential inequality that spends at least the first ratio moment:

```math
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\sum_\ell 2^\ell\,d\nu_\ell
\le
dR_N,
\qquad
\mathfrak L_N\ge -C_N(u_0).
\tag{FNR.10}
```

If the reserve contains only the zeroth moment, it cannot prove `(FNR.5)`.
If it contains the first ratio moment through a terminal tail such as

```math
\mathfrak R_N(t)
=
\int_t^{T_*}d\Omega_N^{full},
\tag{FNR.11}
```

then it is exactly the target theorem written as a reserve.

Thus the word "native" does not remove the proof burden.  The reserve must
either:

1. produce a new weight-beating estimate

```math
\sum_{\ell\ge0}2^\ell\nu_\ell
\le
C_N(u_0),
\tag{FNR.12}
```

or

2. construct a bounded-below same-material storage whose derivative spends the
first ratio moment without using `(FNR.12)` as input.

## 4. Compatibility with the complete-frame payment

The complete-frame identity identifies the transverse compression that carries
positive primitive pump.  In the ratio variables, that says the high-ratio
service is not detached from the same packet.  It does not improve
`(FNR.4)` to `(FNR.5)`.

The one-shell ODE test shows why.  If

```math
e'=\lambda e-\nu k^2e,
\qquad
(\log k)'=\kappa,
\qquad
\lambda\le C\kappa,
\tag{FNR.13}
```

then the high-ratio branch \(\lambda\gg\nu k^2\) can grow the unweighted action

```math
\int\lambda e\,dt
\tag{FNR.14}
```

with the compressed scale \(k\).  Transverse compression is the carrier of the
action, not a finite reserve for the unweighted total.

## 5. Result

The relay theorem

```math
\texttt{ForwardNativeReserveBirthPaysFullPLS.A}
\tag{FNR.15}
```

is not a new solved hinge.  It is equivalent to producing a reserve that sees
the first high-ratio moment.  Installed original-data ledgers that control only
energy, dissipation, fixed-annulus action, fixed-collar action, or finite raw
material mass cannot pay the full moving positive action.

The exact remaining Gold-route statement is therefore:

```math
\boxed{
\text{prove a noncircular weight-beating tail law or bounded-below
same-material storage for }\sum_\ell2^\ell\nu_\ell .
}
\tag{FNR.16}
```

This is the same high-ratio one-way transfer edge, expressed in reserve
language without hiding the ratio weight.
