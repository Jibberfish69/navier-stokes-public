# MPP Forward Gold SelectedPositivePolarSaturation.A Attempt

Date: 2026-06-19

Status: direct attempt complete; theorem not closed.  Polar domination of the
selected positive carrier is exactly the terminal signed-saturation problem in
local-energy language.  Current inputs give visibility and signed measures, but
not saturation of the unsigned selected positive carrier.

## Target

The local-energy residue identity attempt reduced to:

```math
\boxed{
SelectedPositivePolarSaturation.A
}
```

The desired theorem is:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+\,dxdt
\le
C|\eta_{LE,N}|(\mathcal U_N)
+\mathrm{Legal}_N+o_N(1),
```

where \(\eta_{LE,N}\) is the signed/current local-energy residue on the same
selected moving packet family and \(|\eta_{LE,N}|\) is its usable total
variation after legal routing.

In plain terms: the positive packet lobe retained by the proof must be
saturated by a same-ledger signed local-energy current, or else the mismatch
must be paid.

## What measure compactness gives

Suppose a signed/current residue \(\eta_N\) and an unsigned selected carrier
\(\mu_N\) have a weak limit.  The usual compactness statement can give

```math
\eta\ll\mu,
\qquad
\left|\frac{d\eta}{d\mu}\right|\le1.
```

This is domination of the signed current by the carrier.  It does not imply

```math
|\eta|=\mu
```

on the selected support.

The missing theorem is exactly this stronger saturation on the selected
positive carrier.

## Two-sheet cancellation model

The obstruction is elementary.  Let the selected carrier be

```math
\mu=\mu_1+\mu_2
```

and the signed current be

```math
\eta=\mu_1-\mu_2.
```

If \(\mu_1=\mu_2\), then \(\eta=0\) while \(\mu=2\mu_1\) is positive.

Thus the unsigned selected source carrier can survive while the signed
current cancels.  This is the same cancellation mechanism that appeared in the
oriented-current/varifold audit: the current sees orientation, while the native
positive source sees retained positive mass.

## Why local energy does not fix it

The local energy defect measure is positive only after all signed flux,
pressure, and dissipation terms are assembled.  The selected source carrier is
created before that assembly is restored: it is localized, weighted, lifted,
packetized, and positive-part selected.

The selected positive part satisfies

```math
\sum_P [X_P]_+
\ge
\left[\sum_P X_P\right]_+,
```

but the desired saturation needs control in the opposite direction, modulo
legal and donor costs.

The missing information is not measure compactness.  It is conservation of the
signed partner through the same selected terminal ledger.

## Paid cases

The prior Door 1 donor graph work pays the finite cases:

```text
retained signed partner,
legal pressure/cutoff/collar/projection spill,
finite internal donor chain.
```

Those cases give the desired saturation locally.

The live case is the infinite terminal Zeno donor chain:

```math
D_0\to D_1\to D_2\to\cdots,
\qquad
r_m\downarrow0,
\qquad
t_m\uparrow T^*.
```

In that case the signed partner can keep moving into later terminal donors,
while the selected positive receiver remains in the terminal record.

## Result

The direct theorem

```math
SelectedPositivePolarSaturation.A
```

is not proved from current inputs.

It is equivalent, at the current proof resolution, to the already isolated
terminal signed-saturation/no-free-donor-chain problem:

```math
SelectedPositivePolarSaturation.A
\Leftarrow
TerminalSignedSaturation.A
\Leftarrow
NoFreeTerminalZenoDonorChain.A
```

after retained partners, legal exits, and finite donor chains have been paid.

The sharp state is:

```math
\boxed{
\text{unsigned selected carrier visibility is available;}
\quad
\text{same-ledger polar saturation is not.}
}
```

So this branch gives no new forward-gold closure.  It either needs
`NoFreeTerminalZenoDonorChain.A` as a real theorem, or the surviving unsaturated
terminal carrier must be consumed as a CM Pack/that face failure witness.
