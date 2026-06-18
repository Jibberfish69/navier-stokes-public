# One-Sided Scale-Memory Obstruction Note

## Purpose

This note fixes the sharpest source-backed description of the common PDE
obstruction exposed by the failed Euclidean repair routes, and it records the
preferred repair surface among those failed routes.

The point is not merely that the route needs "high-frequency control." The
sharper common obstruction is the one-sided accumulated coarser-scale or
lower-frequency burden that keeps coupling back to the active scale.

## Semantic obstruction class

The common obstruction is:

```math
\text{an accumulated coarser-scale or lower-frequency tail keeps acting on the active scale as if it were a fresh source.}
```

Equivalently:

```math
\text{lower-prefix / one-sided scale-memory against active dissipation or active square.}
```

This is stricter than a generic "cascade" slogan. The live burden is triangular
in scale: coarser or lower-frequency scales accumulate, the active shell is
tested against that accumulation, and dissipation remains local to the active
shell.

## Formal obstruction template

The common formal shape is a one-sided lower-triangular bilinear or square
object

```math
\mathfrak O[a,z]
:=
\int_0^T\int a(r,t)
\Big(
\int_0^r K(\ell,r)\,z(\ell,t)\,\frac{d\ell}{\ell}
\Big)^2
\frac{dr}{r}\,dt,
```

or, dyadically,

```math
\sum_j A_j(t)\Big(\sum_{k\le j-C}B_k(t)\Big),
\qquad
\sum_{k<j}K_{j-k}X_k(t)Y_j(t).
```

The decisive feature is the one-sided lower-prefix orientation. The active
index `j` is not fed by another same-scale term alone; it is fed by an
accumulated lower block.

## Where this exact class appears

### 1. Shell-gain route

In
[dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md),
the shell commutator splits into a local block and a tail block. The live
obstruction is the tail block, and the note identifies it as the same
half-derivative gap preventing the needed shellwise gain.

### 2. Far-corona cumulative-tail route

In
[far-corona-cumulative-tail-stress-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cumulative-tail-stress-theorem.md),
the exact sufficient theorem `(CTS)` is

```math
\int_0^T\int
\Big(
\int_{c_1\ell}^{\ell_{hi}} r^{-2}\|Q_r u\|_2^2\,\frac{dr}{r}
\Big)
\|\tau_\ell^{H^1}[u]\|_2^2\,
\frac{d\ell}{\ell}\,dt.
```

This is already the same one-sided geometry: cumulative coarser-scale or
lower-frequency dissipation tail paired against active stress at scale `\ell`.

### 3. Dyadic shadow of `(CTS)`

The inherited Euclidean reduction of `(CTS)` is the theorem `(LPAS)` in
[lower-prefix-active-square-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-prefix-active-square-theorem.md):

```math
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt,
\qquad
\mathcal P_j^\downarrow(t)=\sum_{k\le j-C_1}E_k(t).
```

This is the exact dyadic lower-prefix-times-active-square form.

### 4. Middle-band route

In
[middle-band-flux-gap-kernel-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/middle-band-flux-gap-kernel-theorem.md),
the far-corona term becomes the two-scale density

```math
\mathcal A_{\ell,r}(t),
\qquad r\ge c_1\ell,
```

under the kernel `\ell/r`. The open theorem remains one-sided and triangular in
scale even after the explicit gap kernel is exposed.

## Live conclusion

The failed classical repair routes do not expose unrelated burdens. They all
land on the same PDE obstruction class:

```math
\boxed{
\text{one-sided scale-memory: accumulated lower-prefix transport/stress acting against the active shell.}
}
```

That is the sharp obstruction class replacing the looser slogan
"uncontrolled high-frequency cascade" whenever the local route needs the
precise burden.

## Preferred repair route

Among the failed classical routes, the preferred repair surface is the
continuum cumulative-tail stress theorem `(CTS)`, with `(LPAS)` treated as its
dyadic shadow rather than as the primary language.

The route choice is:

```math
\text{repair `(CTS)` directly}
\quad\Rightarrow\quad
\text{recover `(LPAS)` only as a shadow if needed.}
```

### Why `(CTS)` is preferred

1. It keeps the obstruction in the native continuum two-scale form.
2. It preserves the lower-prefix geometry without collapsing straight to the
   harsher quartic dyadic shadow.
3. It matches the middle-band/far-corona route more directly than the shellwise
   gain route.
4. It is local enough to be a realistic Body `1` repair target, unlike the
   broader all-scale transport-loss theorem.

### Why the other failed routes are weaker repair targets

- The shell-gain route asks for a local half-derivative miracle after too much
  compression.
- The all-scale transfer-inefficiency theorem is a legitimate route broadening,
  but it is stronger than the present local burden and is not the first repair
  target while `(CTS)` remains the narrower exact burden.

So the live repair order is:

```math
\boxed{
\text{Body 1 repair target: `(CTS)` on the classical surface;}
\quad
\text{`(LPAS)` is the dyadic failure witness if direct continuum repair stalls.}
}
```

## Local anchors

- [cascade-to-scale-barrier-bridge-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/cascade-to-scale-barrier-bridge-lemma.md)
- [dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md)
- [far-corona-cumulative-tail-stress-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cumulative-tail-stress-theorem.md)
- [lower-prefix-active-square-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-prefix-active-square-theorem.md)
- [middle-band-flux-gap-kernel-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/middle-band-flux-gap-kernel-theorem.md)
- [all-scale-frequency-transfer-inefficiency-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/all-scale-frequency-transfer-inefficiency-theorem.md)
- [volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md)
- [lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md)
