# Minimum Drain-Rate Threshold Note

## Purpose

Record the exact answer to the question:

```text
do we really need a square-law drain, or what is the minimum rate law needed
to force closure?
```

The answer is:

```text
no, an exact square is not logically required.
```

What is required is a one-sided drain law that is coercive on the
blowup-driving roughness quantity.

## 1. Monotone-law regime

Suppose there are nonnegative functionals `\mathcal K_r[u]` and `\Psi_r[u]`
and constants `0<c_-\le c_+<\infty` such that

```math
c_-\Psi_r[u]^\beta
\le
\mathcal K_r[u]
\le
c_+\Psi_r[u]^\beta
\qquad\text{for some }\beta>0,
\tag{1}
```

and the evolution satisfies

```math
\frac{d}{dt}\mathcal K_r[u(t)]
+
c\,\Psi_r[u(t)]^p
\le 0
\qquad\text{for some }p>0.
\tag{2}
```

Then

```math
\frac{d}{dt}\mathcal K_r[u(t)]
\le
-c'\,\mathcal K_r[u(t)]^{p/\beta}.
\tag{3}
```

So `\mathcal K_r` is nonincreasing.
If blowup would force `\Psi_r[u(t)]\to\infty`, then `(2)` already rules it
out, because the same quantity that would have to blow up is being driven
monotonically downward.

Therefore:

```math
\boxed{
\text{in the true monotone regime, any positive power }p>0\text{ is enough.}
}
\tag{4}
```

The exponent controls the **decay rate**, not the basic non-blowup logic.

### Rate comparison

If `c_-\Psi_r^\beta\le\mathcal K_r\le c_+\Psi_r^\beta`, then:

- `p=\beta` gives linear/exponential-type decay:

  ```math
  \mathcal K_r' \le -c_1\mathcal K_r;
  \tag{5}
  ```

- `p>\beta` gives a superlinear drain at large roughness:

  ```math
  \mathcal K_r' \le -c_2\mathcal K_r^\alpha,
  \qquad \alpha>1;
  \tag{6}
  ```

- `0<p<\beta` gives a sublinear drain:

  ```math
  \mathcal K_r' \le -c_3\mathcal K_r^\alpha,
  \qquad 0<\alpha<1.
  \tag{7}
  ```

Even `(7)` is enough for nonincrease of the blowup quantity once the law is
already coercive on that quantity.

So the square law is not minimal.
It is just the most natural Hilbert-space law.

## 2. Why the square remains special

The square law is still the cleanest target because:

1. it is the native form of gradient-flow dissipation;
2. it is positive and coordinate-free;
3. it usually comes from an exact integration-by-parts or variational
   identity;
4. it is compatible with `L^2`-type commutator and Dirichlet bookkeeping.

So:

```math
\boxed{
\text{square is not logically minimal, but it is structurally the most natural target.}
}
\tag{8}
```

## 3. Regime with residual positive production

The more realistic case is that one does **not** yet have a pure monotone law.
Instead suppose

```math
\frac{d}{dt}\mathcal K_r[u(t)]
\le
C\,\Psi_r[u(t)]^m
-c\,\Psi_r[u(t)]^p,
\tag{9}
```

with `m,p>0`.

Then the real threshold is no longer “square or not square.”
The real question is whether the negative drain dominates the surviving
positive production for large roughness.

At large `\Psi_r`, the asymptotic rule is:

```math
\boxed{
\text{need }p>m,
\quad\text{or }p=m\text{ with }c>C.
}
\tag{10}
```

If `p<m`, the positive production wins at large scale, so the drain is not
strong enough to force closure.

This is the real minimum power-law threshold once a positive source remains.

## 4. Application to the current NS route

For the current lane, the square-law target

```math
\frac{d}{dt}\mathcal K_r
+
\nu\mathcal D_r
+
\mathcal F_r
\le 0
\tag{11}
```

remains attractive because it would put us in the pure monotone regime.

But the exact logical requirement is slightly weaker:

```math
\boxed{
\text{it would suffice to find any coercive rate law whose negative part dominates the blowup roughness.}
}
\tag{12}
```

So there are two theorem levels:

1. **best-form target**
   square-type defect law, YM-style;
2. **minimum-form target**
   any one-sided coercive power-law drain, or any drain that asymptotically
   dominates the surviving positive production.

## 5. Deeper deformation-geometry reading

Under the current corrected route, this question should be asked first on the
Lagrangian deformation geometry:

```math
\frac{d}{dt}\mathcal K_r^{\mathrm{Lag}}[v,G]
+
\mathcal D_r^{\mathrm{Lag}}[v,G]
+
\mathcal C_r^{\mathrm{Lag}}[v,G]
\le 0.
\tag{13}
```

There too, `\mathcal C_r^{\mathrm{Lag}}` does not have to be literally a
square to be useful.

What is required is:

```math
\mathcal D_r^{\mathrm{Lag}}+\mathcal C_r^{\mathrm{Lag}}
\ge c_\Psi
\Psi_r^{\mathrm{Lag}}
\quad\text{or more generally dominates the surviving positive production.}
\tag{14}
```

So the same threshold logic applies:

- exact square law is the cleanest and most YM-like outcome;
- any coercive monotone drain is enough;
- if positive production survives, the negative rate must dominate it at large
  roughness.

## Source anchors

- [spatial-derivative-curvature-dissipation-theorem-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md)
- [transport-assisted-dissipation-target-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transport-assisted-dissipation-target-note.md)
- [weighted-gram-square-obstruction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-gram-square-obstruction-note.md)
