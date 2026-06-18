# Whole-Space Export / Localization Theorem Attempt

Status: failed as a direct export theorem. The whole-space branch remains separate.

## Target

```math
\text{periodic averaged terminal-tail route}
\Longrightarrow
\text{localized }\mathbb R^3\text{ terminal-tail route}.
```

## Required replacements

The periodic route uses compact-domain features:

```math
T^3,
\qquad
\text{finite cover without spatial infinity},
\qquad
\text{periodic pressure gauge},
\qquad
\|u(t)\|_{L^2(T^3)}\text{ energy tail}.
```

A whole-space export needs replacements:

1. a large-ball exhaustion with constants uniform as `R\to\infty`;
2. localized same-fluid covers with finite overlap on each ball;
3. pressure local Poisson readout plus far-field pressure-tail bounds;
4. Euclidean versions of `READ.COVER`, `Field.Read`, and `DTC.Read`;
5. a whole-space continuation criterion in the chosen data class.

## Main obstruction

The periodic fixed-cover pressure readout uses a finite compact cover and controls the harmonic tail by periodic energy. On `R^3`, the pressure split has a far-field term from spatial infinity. A uniform endpoint-rung readout requires estimates of the form

```math
\|\nabla^{q+1}h_{far}\|_{L^\infty(B')}
\le C_{q,B}\,\text{FarField}(u,p;R),
\qquad 0\le q\le N,
```

with a bound stable under the exhaustion. Such a theorem is not installed in the current periodic route.

Likewise, `READ.COVER` on `T^3` uses compactness after `End_NS_avg`; on `R^3` one needs localized compactness plus a uniform far-field rule preventing endpoint mass from escaping to infinity.

## Verdict

The export theorem is open. The periodic route does not by itself imply the whole-space route.

The next exact whole-space targets are:

```math
READ.COVER_{\mathbb R^3},
\qquad
DTC.Read_{\mathbb R^3,far},
\qquad
ECQ.A_{\mathbb R^3}.
```

## Boundary

The completed branch remains the periodic zero-force theorem. Whole-space localization/export remains a separate analytic program.
