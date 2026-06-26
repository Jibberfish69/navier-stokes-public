---
theorem_id: forward-gold-superheat-ratio-tail-moment-reduction-20260626
status: proof-reduction-installed-superheat-residence-is-first-ratio-moment-over-viscous-measure
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-subheat-absorption-superheat-record-dichotomy-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-interface-variation-coercivity-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-no-free-acceleration-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dyadic-reduced-identities-insufficiency-20260626.md
---

# Superheat Ratio Tail Moment Reduction

Terminology guard.  The current object is finite full same-material action.
Older wording such as "full same-material action" or "full clock" is a legacy alias, not a
separate producer or target.

This note rewrites the remaining one-way superheat material residence in its
sharp measure-theoretic form.

The object is still the original transported material history.  At active
shell \(j\), let

```math
e_j(t)
=
{1\over2}w_j\|v_j(t)\|_2^2
\tag{SRT.1}
```

and let the same-shell viscous/tower measure be

```math
d\mu_j(t)
:=
2^{2j}e_j(t)\,dt
\tag{SRT.2}
```

up to the fixed viscosity, metric, and legal commutator constants already
typed in the material packet.

Let the material-rate coefficient be

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+
\Theta_j^{press}
+
\Theta_j^{coef}
+
\Theta_j^{collar},
\tag{SRT.3}
```

and define the heat-ratio

```math
\rho_j(t)
:=
{\Theta_j^{mat}(t)\over 2^{2j}} .
\tag{SRT.4}
```

No term in \(\Theta_j^{mat}\) is detached from the pressure--viscosity--
incompressibility--velocity packet.  The ratio \(\rho_j\) only says how fast
the same material interface moves compared with the heat rate of shell \(j\).

## 1. Residence is the first ratio moment

The surviving superheat residence is

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}} .
\tag{SRT.5}
```

Using `(SRT.2)`--`(SRT.4)`, this becomes

```math
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt
\simeq
\sum_j
\int_{\{\rho_j>\delta\}}
\rho_j(t)\,d\mu_j(t).
\tag{SRT.6}
```

Thus the remaining finite-action theorem is the first moment of the
material-rate/heat-rate ratio with respect to the already finite
viscous/tower measure.

The energy inequality supplies only the zeroth moment:

```math
\sum_j\int_0^{T_*}d\mu_j(t)<\infty .
\tag{SRT.7}
```

It does not supply `(SRT.6)`.

## 2. Ratio-band form

Decompose the superheat set into dyadic ratio bands

```math
E_{j,\ell}
=
\{2^\ell\delta<\rho_j\le 2^{\ell+1}\delta\},
\qquad
\ell\ge0 .
\tag{SRT.8}
```

Then `(SRT.6)` is equivalent to

```math
\sum_{\ell\ge0}
2^\ell
\sum_j\mu_j(E_{j,\ell})
<\infty
\tag{SRT.9}
```

up to the fixed factor \(\delta\).

This is the exact tail law missing from the raw energy estimate.  Raw
dissipation gives

```math
\sum_{\ell\ge0}\sum_j\mu_j(E_{j,\ell})<\infty ,
\tag{SRT.10}
```

while finite same-material action requires the weighted tail `(SRT.9)`.

The dyadic reduced countermodel has precisely this gap: it may make
\(\sum_{\ell,j}\mu_j(E_{j,\ell})\) finite while
\(\sum_{\ell}2^\ell\sum_j\mu_j(E_{j,\ell})\) diverges.

## 3. Relation to the acceleration-weighted route

The interface-variation calculation produced the stronger density

```math
2^{-2j}(\Theta_j^{mat})^2e_j\,dt
=
\rho_j(t)^2\,d\mu_j(t).
\tag{SRT.11}
```

So the no-free-acceleration route asks for the second ratio moment:

```math
\sum_j
\int_{\{\rho_j>\delta\}}
\rho_j(t)^2\,d\mu_j(t)
<\infty .
\tag{SRT.12}
```

If `(SRT.12)` holds, then `(SRT.6)` follows by Cauchy--Schwarz and `(SRT.7)`:

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j
\le
\left(
\sum_j\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j
\right)^{1/2}
\left(
\sum_j\int_0^{T_*}d\mu_j
\right)^{1/2}.
\tag{SRT.13}
```

Thus finite acceleration-weighted interface variation is a sufficient theorem,
but it is stronger than the first-moment residence actually needed.

## 4. What remains

The remaining Gold theorem has the following precise equivalent forms:

```math
\boxed{
\sum_j
\int_{\{\rho_j>\delta\}}
\rho_j\,d\mu_j
<\infty
}
\tag{SRT.14}
```

or, in tail form,

```math
\boxed{
\sum_{\ell\ge0}
2^\ell
\sum_j\mu_j(E_{j,\ell})
<\infty .
}
\tag{SRT.15}
```

The stronger no-free-acceleration route would prove

```math
\boxed{
\sum_j
\int_{\{\rho_j>\delta\}}
\rho_j^2\,d\mu_j
<\infty .
}
\tag{SRT.16}
```

The installed Navier--Stokes identities prove that \(\rho_j\) is not a free
signal: it is made from strain, pressure elliptic service, material
coefficient motion, and transported collar motion in the same packet.  They do
not yet prove the ratio-tail summability `(SRT.14)` or `(SRT.16)`.

So this reduction does not close the MPP.  It sharpens the exact remaining
finite-action problem: original smooth data must supply a first material-rate
ratio moment, or a stronger second moment, over the finite viscous/tower
measure.  Equivalently, the missing bounded-below same-material storage must
pay the weighted tail `(SRT.15)`.
