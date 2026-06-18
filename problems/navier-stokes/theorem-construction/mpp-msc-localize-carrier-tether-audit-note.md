# MPP MSC.Localize Carrier-Tether Audit Note

## Status

Bounded theorem attempt on the localization bridge isolated in
`mpp-ancient-nopulse-extraction-bridge-attempt-note.md`.

The attempted bridge is

```math
MSC.Localize:
\quad
\neg MSC.BadAC
\Longrightarrow
\text{localized nonzero critical pulse packet}.
```

The verdict is negative at the level of the currently installed mixed-shell
object.  `MSC.BadAC` is a global shell-time statement.  It does not by itself
carry a physical center, a local cylinder, or a same-fluid material label.  A
compactness extraction therefore needs an additional carrier-tether theorem.

## Installed Mixed-Shell Object

The bad-set target is

```math
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}
\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)
+
\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt,
```

where

```math
Bad_N(\eta)
=
\{t:\sup_{j>N}\gamma_j(t)>\eta\},
\qquad
\gamma_j(t)=2^{-j}\sum_{m=j-M}^{j+M}E_m(t),
```

and

```math
\mathfrak B_N^\sigma(t)
=
\sum_{N<j\le\ell}
\bigl(1+2^{-2(\ell-j)}\bigr)
K_{j,\ell}^\sigma D_j(t)D_\ell(t).
```

All three quantities in this display are global in space:

```math
E_m(t)=2^{2m}\|\Delta_m u(t)\|_{L_x^2}^2,
\qquad
D_m(t)=2^{4m}\|\Delta_m u(t)\|_{L_x^2}^2.
```

Thus failure of `MSC.BadAC` selects bad times for a global shell-time measure,
not heat-scale physical cylinders.

## Diffuse Shell Test

Fix a large shell `j`.  Decompose the unit torus into `2^{3j}` cubes of side
`2^{-j}` and place equal `j`-frequency packet mass in each cube, with phases
chosen so the global shell norm has the desired size.  Normalize the total
shell size so that

```math
\gamma_j(t)=1
```

on a heat-scale time interval.

Then `t` lies in `Bad_N(\eta)` for every fixed `0<\eta<1`, and the global
mixed-shell expression can be normalized so that

```math
\int_I \mathfrak B_N^\sigma(t)\,dt=1.
```

But every physical ball of radius `2^{-j}` sees only a `2^{-3j}` fraction of
the global shell mass.  Consequently every scale-critical local CKN-type packet
on a heat-scale cylinder can be made to vanish with `j`:

```math
\sup_{x\in\mathbb T^3}
\mathcal P_{2^{-j}}(u,p;Q_{2^{-j}}(x,t))
\longrightarrow 0.
```

This construction is an abstract shell packet, not a Navier-Stokes solution.
Its purpose is narrower: it proves that no theorem can derive a physical
localized pulse from the present global shell norms alone.  A global dyadic
tail may be large because it is spread everywhere rather than because one
physical cylinder is large.

## Consequence

The implication

```math
\neg MSC.BadAC
\Longrightarrow
\exists Q_{r_n}(x_n,t_n):
\mathcal P_{r_n}(u,p;Q_{r_n})\ge c_0
```

is not licensed by the installed mixed-shell data.

The compactness route therefore cannot be

```math
\neg MSC.BadAC
\Longrightarrow
\text{ancient pulse}
\Longrightarrow
\bot
```

unless a new localization theorem is supplied first.

## Correct Carrier-Tether Version

The route-facing statement that would be strong enough is:

```math
\textbf{MSC.Localize}^{carrier}:
```

There exists a positive same-fluid local carrier

```math
d\mu_N(x,t)
```

and a local badness predicate `Bad_N^{loc}(\eta)` such that:

1. **global recovery**

```math
\int_{\mathbb T^3} d\mu_N(\cdot,t)
=
\mathfrak B_N^\sigma(t)\,dt;
```

2. **bad-set tether**

failure of `MSC.BadAC` forces a nonvanishing amount of `\mu_N` on
`Bad_N^{loc}(\eta)` inside the same terminal same-fluid label family;

3. **critical lower density**

the nonvanishing local carrier contains heat-scale cylinders satisfying

```math
\mathcal P_{r_n}(u,p;Q_{r_n}(x_n,t_n))\ge c_0>0;
```

4. **same-fluid fidelity**

the selected cylinders keep the same labels, endpoint fibre, scale schedule,
and proof direction as the terminal class-membership packet.

Under these four clauses, the compactness extraction in
`mpp-ancient-nopulse-extraction-bridge-attempt-note.md` is lawful.

## Conditional Lemma

Assume `MSC.Localize^{carrier}`.  Then there are cylinders

```math
Q_{r_n}(x_n,t_n),
\qquad
r_n\to0,
\qquad
t_n\uparrow T_\ast,
```

with a uniform critical lower packet.  The parabolic rescaling

```math
v_n(y,s)=r_nu(x_n+r_ny,t_n+r_n^2s),
\qquad
q_n(y,s)=r_n^2p(x_n+r_ny,t_n+r_n^2s)
```

has the local compactness input needed to produce a nontrivial local suitable
critical-pulse limit.  Therefore

```math
MSC.Localize^{carrier}
+
Ancient.NoPulse
\Longrightarrow
MSC.BadAC.
```

## Verdict

`MSC.Localize` is not discharged.  The exact compactness-route burden is now:

```math
\boxed{
MSC.Localize^{carrier}
+
Ancient.NoPulse.
}
```

Equivalently, the route needs a theorem that turns global mixed-shell
bad-measure failure into a same-fluid local critical pulse before ancient
rigidity can be used.  Without that carrier tether, the no-pulse atom remains
`OriginalSmoothData=>MSC.BadAC` / `SOURCE.NO-PULSE.A`.

## Diagonal Follow-Up

The follow-up note `mpp-msc-localize-diagonal-carrier-attempt-note.md` sharpens
`MSC.Localize^{carrier}` to a near-diagonal co-location theorem:

```math
MSC.DiagTether:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local carrier}.
```

The direct attempt `mpp-msc-diagtether-direct-attempt-note.md` shows that this
does not follow from the installed global product `D_jD_\ell`.  That product is
a double-space carrier after global Cauchy multiplication and can lose the
physical co-location needed by one blow-up cylinder.  The compactness repair
therefore needs either `DiagDom.A` for a local diagonal mixed-shell carrier, or
`LocalSource.NoPulse.A` at the pre-Cauchy same-fluid source-packet level.
