# MPP MSC.Localize Diagonal-Carrier Attempt Note

## Status

Bounded theorem attempt on the carrier-tether bridge needed before the
compactness / `Ancient.NoPulse` route can run.

The target is:

```math
MSC.Localize^{carrier}:
\quad
\neg MSC.BadAC
\Longrightarrow
\text{localized nonzero critical pulse packet}.
```

This note tests whether the global mixed-shell bad measure already contains a
physical heat-scale carrier. It does not. The global object naturally localizes
first to a double-space product carrier, not to one physical cylinder. The
missing theorem is a diagonal/co-location tether. After the rigidity audit, the
usable compactness route needs the source-residue version of this tether, not
merely a nonzero local energy carrier.

## Global Mixed-Shell Measure

For shell dissipation densities set

```math
d_j(x,t):=2^{4j}|\Delta_j u(x,t)|^2,
\qquad
D_j(t)=\int_{\mathbb T^3}d_j(x,t)\,dx.
```

The mixed bilinear dissipation term is

```math
\mathfrak B_N^\sigma(t)
=
\sum_{N<j\le\ell}
\bigl(1+2^{-2(\ell-j)}\bigr)
K_{j,\ell}^\sigma D_j(t)D_\ell(t).
```

Expanding the product gives a positive double-space measure:

```math
D_j(t)D_\ell(t)
=
\iint_{\mathbb T^3\times\mathbb T^3}
d_j(x,t)d_\ell(y,t)\,dx\,dy.
```

Thus failure of `MSC.BadAC` can at most produce a nonzero bad double-space
carrier on `(x,y,t,j,\ell)`.

## What A Blow-Up Extraction Needs

The compactness route needs one physical center and one heat-scale cylinder:

```math
Q_{r_n}(x_n,t_n),
\qquad
c_r2^{-j_n}\le r_n\le C_r2^{-j_n},
```

with a scale-critical local lower bound

```math
\mathcal P_{r_n}(u,p;Q_{r_n}(x_n,t_n))\ge c_0>0.
```

A double-space carrier does not supply this unless its mass is tethered to the
near-diagonal region

```math
|x-y|\le C_{diag}2^{-j}
```

and to the same terminal same-fluid label family.

## Diagonal Attempt

Define a near-diagonal carrier

```math
\mu_{j,\ell}^{diag}(t)
:=
\iint_{|x-y|\le C_{diag}2^{-j}}
d_j(x,t)d_\ell(y,t)\,dx\,dy.
```

If the route had

```math
\sum_{N<j\le\ell}K_{j,\ell}^\sigma
\int_{Bad_N(\eta)}
\mu_{j,\ell}^{diag}(t)\,dt
\ge c_{MSC}
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt,
```

then a density pigeonhole would select a physical cylinder with a nonzero
localized critical packet. This would supply `MSC.Localize^{carrier}`.

But the installed mixed-shell identity controls only

```math
D_jD_\ell
```

and has no theorem forcing the product mass to lie near the diagonal.

## Off-Diagonal / Diffuse Obstruction

The obstruction is structural. One may distribute shell `j` and shell `\ell`
energy across many heat-scale cells, or place the dominant portions in
separated cell families. Then

```math
D_jD_\ell
```

can be large while the near-diagonal portion is small. In the extreme diffuse
model, every ball of radius `2^{-j}` sees only a vanishing fraction of the
global shell mass, but the global product of norms remains large.

This does not construct a Navier-Stokes solution. It proves the logical gap:
global shell-time product mass does not select a local physical pulse without a
co-location theorem.

## Same-Fluid Fidelity

Even if a diagonal physical cylinder is selected, the route also needs it to
belong to the same terminal same-fluid label family used by the endpoint
packet. A pure Fourier-shell pigeonhole does not preserve that label/fibre
information. The carrier theorem must therefore be same-fluid tethered, not
merely spatial.

## Closed Reduction

The localization branch reduces first to:

```math
\boxed{
MSC.DiagTether:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local carrier}.
}
```

Then:

```math
MSC.DiagTether
\Longrightarrow
MSC.Localize^{carrier}
\Longrightarrow
\text{critical pulse limit}.
```

Without `MSC.DiagTether`, the compactness route remains blocked before
`Ancient.NoPulse` can be applied.

For the no-pulse route after `mpp-ancient-nopulse-rigidity-audit-note.md`, this
must be strengthened to the source-residue version:

```math
\boxed{
MSC.DiagTether^{src}:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local source-residue carrier}.
}
```

## Consequence

The near-diagonal import audit
`mpp-msc-diagtether-near-diagonal-import-audit-note.md` verifies that the
installed high-high near-diagonal lemmas do not discharge this tether: they are
frequency-support reductions, not spatial co-location theorems for the positive
double-space carrier.

The compactness route now has the exact dependency:

```math
MSC.DiagTether^{src}
+Ancient.NoPulse^{src}
\Longrightarrow
MSC.BadAC
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

Neither `MSC.DiagTether^{src}` nor `Ancient.NoPulse^{src}` is installed from
`OriginalSmoothData` in the current repo.
