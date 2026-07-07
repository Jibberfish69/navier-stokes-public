---
theorem_id: forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / no-free-collar / log-scale Hodge-Hardy endpoint
status: scalar-endpoint-lemma-proved-not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-backend-discharge-ledger-20260707.md
completion_truth: >-
  This note proves the one-dimensional endpoint inequality for the corrected
  log-scale Hodge-Hardy bridge. It proves only the scalar log-amplitude
  estimate for the operator partial_rho - 2, with a constant independent of
  chain length. It does not prove the same-field spherical Hodge lower bound,
  endpoint ownership by the parent collar, channel extraction without service
  loss, atomization, c_0>0, F1, F4, F5, or MPP closure.
---

# Log-scale Hodge-Hardy endpoint lemma

The corrected long-chain bridge in the \(c_0\) note uses the log-scale
operator

```math
L:=\partial_\rho-2.
\tag{LHH.1}
```

This note proves the scalar endpoint estimate for \(L\). The physical meaning
is simple: the only uncharged zero mode is the smooth affine scaling
\(a(\rho)=Ce^{2\rho}\), and that mode is fully determined by the parent-side
endpoint value. Everything not determined by that endpoint is controlled by
\(La\) with a constant independent of the number of log-rungs.

## 1. Statement

Let

```math
I=[\rho_-,\rho_+]
\tag{LHH.2}
```

be any finite log-scale interval. For every absolutely continuous scalar
amplitude \(a\) with \(La\in L^2(I)\),

```math
\int_{\rho_-}^{\rho_+}|a(\rho)|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2
+
\int_{\rho_-}^{\rho_+}|a'(\rho)-2a(\rho)|^2\,d\rho
\right),
\tag{LHH.3}
```

with a universal constant \(C_{\rm HH}\), independent of
\(\rho_+-\rho_-\).

The endpoint is the parent-side endpoint. If the chain orientation is reversed,
the conjugate estimate uses \(\partial_\rho+2\) and the opposite endpoint.

## 2. Proof

Set

```math
f(\rho)=a'(\rho)-2a(\rho).
\tag{LHH.4}
```

Solving backward from \(\rho_+\) gives

```math
a(\rho)
=
e^{-2(\rho_+-\rho)}a(\rho_+)
-
\int_{\rho}^{\rho_+}e^{-2(s-\rho)}f(s)\,ds.
\tag{LHH.5}
```

The endpoint contribution satisfies

```math
\int_{\rho_-}^{\rho_+}
e^{-4(\rho_+-\rho)}|a(\rho_+)|^2\,d\rho
\le
\frac14|a(\rho_+)|^2.
\tag{LHH.6}
```

For the inhomogeneous term, write

```math
(Kf)(\rho)
:=
\int_{\rho}^{\rho_+}e^{-2(s-\rho)}f(s)\,ds.
\tag{LHH.7}
```

After the change of variables \(t=s-\rho\), \(K\) is dominated on every finite
interval by convolution with

```math
k(t)=e^{-2t}\mathbf 1_{t\ge0},
\qquad
\|k\|_{L^1(0,\infty)}=\frac12.
\tag{LHH.8}
```

Young's inequality gives

```math
\|Kf\|_{L^2(I)}
\le
\frac12\|f\|_{L^2(I)}.
\tag{LHH.9}
```

Combining (LHH.5), (LHH.6), and (LHH.9),

```math
\|a\|_{L^2(I)}^2
\le
2\left(\frac14|a(\rho_+)|^2\right)
+
2\left(\frac14\|f\|_{L^2(I)}^2\right).
\tag{LHH.10}
```

Thus (LHH.3) holds, for instance with \(C_{\rm HH}=1\).

## 3. Weighted affine-channel version

If \(A\) is the fixed Vieillefosse matrix carried by the same-affine chain, then
multiplying (LHH.3) by \(|A|^2\) gives

```math
\int_I |a|^2|A|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2|A|^2
+
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\right).
\tag{LHH.11}
```

This is exactly the scalar part of (VPL.240). It does not by itself charge the
endpoint term. It says only that the interior log-chain service can be reduced
to the non-affine incompressibility defect plus the smooth affine kernel owned
at the parent endpoint.

## 4. What remains

The scalar estimate closes one ingredient of the corrected bridge. The live
F2 burdens remain:

```math
\text{extract }a(\rho)A\text{ without service loss}
+
\text{prove the same-field spherical Hodge lower bound}
+
\text{charge the parent endpoint kernel}
+
\text{run atomization without double-counting.}
\tag{LHH.12}
```

So this is a proved endpoint lemma, not a proof of \(c_0>0\).
