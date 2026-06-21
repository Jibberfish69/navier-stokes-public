---
theorem_id: forward-gold-terminal-trace-positive-ac-criterion-20260621
status: criterion-proved-supplier-not-installed
logical_landing_node: positive_terminal_trace_ac_kills_last_instant_increase
edge_effect: "Proves the exact one-sided terminal trace criterion inside the upgraded four-body program. A positive terminal increase of any local energy or tower storage can persist only if the positive part of its associated pressure/flux/tower trace integrand concentrates at s=0. Uniform absolute continuity of that positive trace integrand kills the last-instant pulse. Current Navier-Stokes energy identities do not by themselves supply that uniform AC; in the four-body loop this becomes the precise Body-II to Body-III no-loss/trace upgrade."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-log-scale-tower-balance-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
---

# Terminal Trace Positive Absolute-Continuity Criterion

Date: 2026-06-21

## 0. Aim

The terminal trace identity shows where a last-instant pulse can live.

This note proves the exact one-sided criterion that removes it.

The point is simple: a positive terminal increase of a local storage cannot
appear unless the positive part of the associated trace integrand also
concentrates at the terminal face.

Thus, inside the upgraded four-body loop, the Body-II to Body-III upgrade is
not merely "trace exists."  It is:

```math
\boxed{
\text{positive terminal trace integrands are uniformly absolutely continuous
near }s=0,
}
\tag{TPA.1}
```

or else their failure is a compactness/no-loss defect that must be retained and
charged.

## 1. Abstract one-sided lemma

Let \(M_j:(-1,0)\to\mathbb R\) be absolutely continuous on compact subintervals
and suppose that, for every \(-1<a<b<0\),

```math
M_j(b)-M_j(a)+D_j(a,b)=\int_a^b H_j(s)\,ds,
\tag{TPA.2}
```

where

```math
D_j(a,b)\ge0.
\tag{TPA.3}
```

Assume the terminal traces \(M_j(0^-)\) exist.  Then, for every
\(0<\theta<1\),

```math
\left[M_j(0^-)-M_j(-\theta)\right]_+
\le
\int_{-\theta}^{0} [H_j(s)]_+\,ds.
\tag{TPA.4}
```

Indeed, sending \(b\uparrow0\) in `(TPA.2)` gives

```math
M_j(0^-)-M_j(-\theta)
=
\int_{-\theta}^{0}H_j(s)\,ds
-D_j(-\theta,0).
\tag{TPA.5}
```

Since \(D_j(-\theta,0)\ge0\),

```math
M_j(0^-)-M_j(-\theta)
\le
\int_{-\theta}^{0}H_j(s)\,ds
\le
\int_{-\theta}^{0}[H_j(s)]_+\,ds.
\tag{TPA.6}
```

Taking positive parts gives `(TPA.4)`.

Consequently, if

```math
\lim_{\theta\downarrow0}
\sup_j
\int_{-\theta}^{0}[H_j(s)]_+\,ds
=0,
\tag{TPA.7}
```

then

```math
\lim_{\theta\downarrow0}
\sup_j
\left[M_j(0^-)-M_j(-\theta)\right]_+
=0.
\tag{TPA.8}
```

So a positive terminal jump is impossible under positive-part uniform absolute
continuity of the trace integrand.

## 2. Base local energy instance

For the normalized Navier-Stokes packet, set

```math
M_{j,\eta}(s)
=
\int\eta^2 {1\over2}|V_j(s,y)|^2\,dy.
\tag{TPA.9}
```

The exact local energy trace identity is

```math
M_{j,\eta}(b)-M_{j,\eta}(a)
+
\nu\int_a^b\int\eta^2|\nabla V_j|^2
=
\int_a^b H_{j,\eta}(s)\,ds,
\tag{TPA.10}
```

where

```math
H_{j,\eta}(s)
=
\int (e_j+Q_j)V_j\cdot\nabla(\eta^2)\,dy
+
\nu\int e_j\Delta(\eta^2)\,dy,
\qquad
e_j={1\over2}|V_j|^2.
\tag{TPA.11}
```

Therefore

```math
\left[M_{j,\eta}(0^-)-M_{j,\eta}(-\theta)\right]_+
\le
\int_{-\theta}^{0}[H_{j,\eta}(s)]_+\,ds.
\tag{TPA.12}
```

Thus a positive local energy increase into the terminal face requires
concentration of the positive pressure-convection-viscous cutoff trace.

## 3. Mixed tower instance

For a mixed tower rung

```math
W_{j,m,\alpha}=\partial_s^m\partial_y^\alpha V_j,
\tag{TPA.13}
```

set

```math
M_{j,m,\alpha,\eta}(s)
=
\int\eta^2 {1\over2}|W_{j,m,\alpha}|^2.
\tag{TPA.14}
```

The exact tower trace identity is

```math
M_{j,m,\alpha,\eta}(b)-M_{j,m,\alpha,\eta}(a)
+
\nu\int_a^b\int\eta^2|\nabla W_{j,m,\alpha}|^2
=
\int_a^b H_{j,m,\alpha,\eta}(s)\,ds,
\tag{TPA.15}
```

where

```math
\begin{aligned}
H_{j,m,\alpha,\eta}(s)
&=
\int F_{j,m,\alpha}\cdot\nabla(\eta^2)\,dy \\
&\quad
-\int\eta^2 W_{j,m,\alpha}\cdot B_{j,m,\alpha}\,dy,
\end{aligned}
\tag{TPA.16}
```

and

```math
F_{j,m,\alpha}
=
{1\over2}|W_{j,m,\alpha}|^2V_j
+Q_{j,m,\alpha}W_{j,m,\alpha}
-\nu\nabla\left({1\over2}|W_{j,m,\alpha}|^2\right).
\tag{TPA.17}
```

Therefore

```math
\left[
M_{j,m,\alpha,\eta}(0^-)-M_{j,m,\alpha,\eta}(-\theta)
\right]_+
\le
\int_{-\theta}^{0}
[H_{j,m,\alpha,\eta}(s)]_+\,ds.
\tag{TPA.18}
```

This is the tower version of the criterion.

## 4. What this means for the four-body loop

The upgraded four-body loop has four bodies:

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{TPA.19}
```

The positive terminal trace criterion sits exactly on the participation to
compactness/no-loss arrow.

It says:

```math
\boxed{
\text{a terminal pulse cannot pass from participation into compactness as a
free positive increase unless }[H_j]_+\text{ itself concentrates at }s=0.
}
\tag{TPA.20}
```

Therefore the four-body upgrade has a precise form:

```math
\boxed{
\lim_{\theta\downarrow0}
\sup_j
\int_{-\theta}^{0}[H_j(s)]_+\,ds=0
}
\tag{TPA.21}
```

for every selected same-carrier trace integrand \(H_j\), or else the failure of
`(TPA.21)` is itself the retained compactness/no-loss defect that Body III must
carry.

## 5. Why this is not yet gold closure

The criterion is proved.  The supplier is not installed.

The Navier-Stokes local energy identity gives the formula for \(H_j\).  It does
not automatically give the uniform absolute continuity `(TPA.21)` for a
rescaled terminal family.  The countermodel remains:

```math
H_j(s)={A\over\varepsilon_j}\mathbf 1_{(-\varepsilon_j,0]}(s),
\qquad
\varepsilon_j\downarrow0.
\tag{TPA.22}
```

Then

```math
\int_{-1}^{0}[H_j(s)]_+\,ds=A,
\tag{TPA.23}
```

while, for every fixed \(\theta>0\) and all sufficiently large \(j\),

```math
\int_{-\theta}^{0}[H_j(s)]_+\,ds=A.
\tag{TPA.24}
```

The positive trace is finite, visible, and concentrated.  Absolute continuity
fails uniformly.

So the exact remaining four-body demand is:

```math
\boxed{
\text{prove positive terminal trace uniform absolute continuity on the selected
same carrier, or make its failure a charged Body-III compactness/no-loss
defect.}
}
\tag{TPA.25}
```

## Verdict

This note proves the clean terminal-face criterion.

Positive last-instant growth is killed by positive-part uniform absolute
continuity of the terminal trace integrand.

The current Navier-Stokes identities provide the trace integrand exactly, but
do not by themselves provide the required uniform absolute continuity.  In the
upgraded four-body program, this is the precise participation-to-compactness
upgrade that must be supplied next.
