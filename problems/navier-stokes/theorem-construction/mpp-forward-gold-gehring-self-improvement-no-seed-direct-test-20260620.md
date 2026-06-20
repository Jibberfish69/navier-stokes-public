# MPP Forward-Gold Gehring Self-Improvement No-Seed Direct Test

Date: 2026-06-20

## Status

Direct reverse-Holder / Gehring self-improvement test complete.  Gehring-type
self-improvement is a valid consumer once a reverse-Holder seed is already
available on the selected terminal carrier.  It is not an independent supplier
from the current Navier-Stokes inputs.

The obstruction is exact: the installed data give finite normalized
\(L_s^1\) mass of the selected positive carrier.  Gehring begins from a
scale-uniform reverse inequality, and the terminal time-face layer violates
that seed on terminal intervals.  Thus invoking Gehring would assume the
endpoint anti-atom modulus under another name.

## 1. The selected time marginal

On a selected heat-scale packet, write the normalized positive source marginal
as

```math
a_m(s)\ge0,
\qquad
-1\le s\le0,
\tag{GSI.1}
```

with the current installed bound

```math
\sup_m\int_{-1}^{0}a_m(s)\,ds\le C.
\tag{GSI.2}
```

The terminal no-jump theorem asks for endpoint uniform integrability:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0.
\tag{GSI.3}
```

Any \(p>1\) bound would prove `(GSI.3)`:

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds\le C_p
\quad\Longrightarrow\quad
\int_{-\theta}^{0}a_m(s)\,ds
\le
C_p^{1/p}\theta^{1-1/p}.
\tag{GSI.4}
```

So the question is whether a self-improvement theorem can produce `(GSI.4)`
from `(GSI.2)` and the Navier-Stokes local balances.

## 2. What Gehring needs as a seed

A one-dimensional reverse-Holder seed has the form: for terminal subintervals
\(I\subset[-1,0]\),

```math
\left(
{1\over |I|}
\int_I a_m(s)^p\,ds
\right)^{1/p}
\le
C_G
{1\over |\lambda I|}
\int_{\lambda I}a_m(s)\,ds
+b_m(I),
\qquad p>1,
\tag{GSI.5}
```

where \(\lambda I\) is a controlled enlargement and \(b_m\) is an admissible
error with its own higher-integrability or summable control.

From a seed like `(GSI.5)`, Gehring-type machinery may improve the exponent or
produce a local \(L^{p+\varepsilon}\) bound.  But `(GSI.5)` is already a
super-\(L^1\) statement.  It is not a consequence of the mass bound `(GSI.2)`.

## 3. The terminal layer violates the seed

Let

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{GSI.6}
```

Then

```math
\int_{-1}^{0}a_m(s)\,ds=1,
\tag{GSI.7}
```

so `(GSI.2)` holds.  But for any fixed terminal interval

```math
I_\theta=(-\theta,0],
\qquad
\tau_m<\theta\le1,
\tag{GSI.8}
```

one has

```math
\left(
{1\over |I_\theta|}
\int_{I_\theta}a_m(s)^p\,ds
\right)^{1/p}
=
\theta^{-1/p}\tau_m^{-(p-1)/p},
\tag{GSI.9}
```

whereas

```math
{1\over |\lambda I_\theta|}
\int_{\lambda I_\theta}a_m(s)\,ds
\le
{C_\lambda\over\theta}.
\tag{GSI.10}
```

Thus the ratio of the two sides in `(GSI.5)` contains

```math
\left({\theta\over\tau_m}\right)^{(p-1)/p},
\tag{GSI.11}
```

which diverges as \(m\to\infty\) for fixed \(\theta>0\).  No uniform
constant \(C_G\) can make `(GSI.5)` true for the endpoint layer.

This is exactly why the endpoint atom survives finite \(L^1_s\) mass.

## 4. Why Navier-Stokes does not supply the seed directly

The local energy inequality gives a finite measure or bounded variation type
terminal trace.  Finite measures can have atoms, so local energy supplies
`(GSI.2)`, not `(GSI.5)`.

The pressure equation is spatially elliptic at each time:

```math
-\Delta p=\partial_i\partial_j(u_i u_j).
\tag{GSI.12}
```

It gives spatial Calderon-Zygmund control on time slices.  It does not produce
a reverse-Holder inequality in terminal time for the selected positive source
marginal.

Viscosity gives smoothing after a positive heat-time interval.  It does not
force a source inserted in the last \(\tau_m\) of the heat window to have been
spread over a fixed fraction of the window.

Same-fluid participation keeps the packet in the same pressure-viscosity-
incompressibility neighbor relation.  It gives the correct carrier and pays
finite material chains, but the heat-scale normalization discounts the
physical ledger by \(r_m\) or \(r_m^2\).  That discount is compatible with
`(GSI.6)`.

Finally, the selected positive carrier is not itself a solution of a uniformly
parabolic divergence-form equation.  It is produced after localization,
projection, lifting, packet selection, and positive-part extraction.  The
Caccioppoli-to-Gehring mechanism for PDE solutions does not apply to this
positive marginal unless one first proves a same-carrier reverse inequality.

## 5. Exact relation to source-square and Carleson reserves

A source-square or Carleson reserve supplies a valid seed because it defeats
`(GSI.6)` directly:

```math
\int_{-\tau_m}^{0}a_m(s)^2\,ds
=
\tau_m^{-1}
\to\infty.
\tag{GSI.13}
```

More generally, any same-carrier bound

```math
\sup_m\int_{-1}^{0}a_m(s)^p\,ds<\infty,
\qquad p>1,
\tag{GSI.14}
```

or any de la Vallee-Poussin Orlicz uniform-integrability bound gives the
endpoint modulus `(GSI.3)`.

So the route is:

```math
\text{source-square / Carleson / reverse-Holder seed}
\Longrightarrow
\text{endpoint uniform integrability}.
\tag{GSI.15}
```

The reverse route is the missing theorem:

```math
\text{current }L_s^1\text{ carrier visibility}
\not\Longrightarrow
\text{reverse-Holder seed}.
\tag{GSI.16}
```

## Verdict

Gehring self-improvement does not close the gold terminal time-face branch from
current inputs:

```math
\boxed{
\text{Gehring is a consumer of a reverse-Holder seed,}
\quad
\text{not a producer of that seed from finite }L_s^1\text{ mass.}
}
\tag{GSI.17}
```

The live gold supplier remains a genuine same-carrier super-\(L^1\) theorem:
source-square / Carleson, selected critical-strain carrier uniform
integrability, strict rescaled no-waste, or critical-element rigidity producing
the same endpoint modulus.
