---
theorem_id: forward-gold-c0-log-chain-hodge-payment-reduction-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / log-chain turn-off
status: proved-conditional-interior-hodge-payment; strict-reduction-not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707.md
completion_truth: >-
  This note proves the interior same-field Hodge leg of the direct c0 theorem:
  once a long same-affine chain has been lawfully reduced to a log-amplitude
  affine Vieillefosse channel plus incompressible correction on fixed annular
  geometry, zero payment forces the off-kernel log defect
  (partial_rho a - 2a)A to vanish. Combined with the already proved scalar
  log Hardy endpoint lemma, the chain service is controlled by same-field
  payment plus the parent endpoint affine kernel. This does not prove c0.
  The remaining producer work is channel extraction without service loss,
  parent ownership/sign exclusion of the endpoint kernel and approach-to-kernel
  layer, and atomization/accounting without double count.
---

# Log-chain Hodge payment reduction

This is a direct \(c_0\) sublemma. It is not a Rayleigh, transverse-lag, or
side-survivor branch. It proves the part of
`ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A` where
incompressibility turns a long same-affine log chain into a charged non-affine
defect.

## 1. Same-fluid log channel

Work on a fixed normalized annular chain

```math
\mathcal A_I=\{(\rho,\omega):\rho\in I,\ \omega\in S^2\},
\qquad
\rho=\log r .
\tag{LHP.1}
```

Assume the lawful strict atom/tower extraction has selected one same-affine
Vieillefosse channel

```math
u_A(r,\omega)
=
a(\rho)\frac{A\omega}{r},
\qquad
\operatorname{tr}A=0,
\qquad
A\in\mathfrak A_{\rm Vf},
\tag{LHP.2}
```

and write the same incompressible Navier--Stokes velocity on the chain as

```math
u=u_A+w,
\qquad
\nabla\cdot u=0.
\tag{LHP.3}
```

The divergence of the selected affine channel is

```math
\nabla\cdot u_A
=
(\partial_\rho a-2a)
\frac{\omega\cdot A\omega}{r^2}.
\tag{LHP.4}
```

The spherical factor

```math
q_A(\omega)=\omega\cdot A\omega
\tag{LHP.5}
```

is a nonzero \(l=2\) harmonic whenever the Vieillefosse service of \(A\) is
nonzero.

## 2. Spherical Hodge lower bound

Let \(\mathcal K\) be the rigid/affine nullspace quotiented by the strict
participation bill on each normalized annular slice. On the fixed geometry
there is a uniform constant \(c_{\rm H}>0\) such that

```math
\inf_{k\in\mathcal K}
\|w-k\|_{H^1(S^2)}
\ge
c_{\rm H}
|\partial_\rho a-2a|\,|A|
-
\operatorname{Err}_{\rm atom}(\rho)
\tag{LHP.6}
```

for almost every \(\rho\in I\).

Proof. The divergence map on a fixed spherical slice,

```math
v\mapsto r^2\nabla\cdot v,
\tag{LHP.7}
```

is a continuous first-order operator from the quotient
\(H^1(S^2;\mathbb R^3)/\mathcal K\) into \(L^2(S^2)\). Its kernel on the
selected \(l=2\) source coordinate is exactly the quotient nullspace already
removed by the strict bill. If (LHP.6) failed uniformly, there would be a
sequence with \(|A_n|=1\), \(|\partial_\rho a_n-2a_n|=1\), and
\(\inf_{k\in\mathcal K}\|w_n-k\|_{H^1(S^2)}\to0\), while

```math
r^2\nabla\cdot w_n
\to
-q_{A_*}
\tag{LHP.8}
```

for some nonzero Vieillefosse limit \(A_*\). But the left side converges to
zero in \(H^{-1}(S^2)\) after quotienting by \(\mathcal K\), while \(q_{A_*}\)
is a nonzero \(l=2\) harmonic. Contradiction. Compactness of the unit
Vieillefosse directions gives a uniform \(c_{\rm H}\). The strict-atom error is
the stated extraction and cutoff error.

Integrating (LHP.6) over \(I\), and using the fixed annular geometry, gives

```math
\int_I |\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C_{\rm H}
\left(
\int_{\mathcal A_I}
|\nabla_{\rho,\omega}(w-\Pi_{\mathcal K}w)|^2
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{LHP.9}
```

## 3. Conversion to participation payment

The strict payment is the same pressure-viscous participation bill already used
in VPL Section 17. By A4, on fixed normalized geometry,

```math
\mathsf P_{\rm chain}(I)
\ge
c_{\rm pay}
\int_{\mathcal A_I}
|\nabla_{\rho,\omega}(w-\Pi_{\mathcal K}w)|^2
-
C_{\rm pay}\operatorname{Err}_{\rm atom}(I).
\tag{LHP.10}
```

Combining (LHP.9) and (LHP.10),

```math
\int_I |\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C
\left(
\mathsf P_{\rm chain}(I)
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{LHP.11}
```

Thus the off-kernel log-chain defect is not a new detector. It is paid by the
same \(\mathsf P\) currency: non-affine viscous strain/collar work and the
same-field pressure response.

## 4. Consequence with the scalar endpoint lemma

The scalar log-Hardy endpoint lemma gives

```math
\int_I |a|^2|A|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2|A|^2
+
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\right).
\tag{LHP.12}
```

The service of the selected affine channel satisfies, under the same lawful
extraction,

```math
\mathsf S_A(I)
\simeq
\int_I |a|^2|A|^2\,d\rho .
\tag{LHP.13}
```

Therefore

```math
\mathsf S_A(I)
\le
C
\left(
\mathsf P_{\rm chain}(I)
+
|a(\rho_+)|^2|A|^2
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{LHP.14}
```

This is the direct zero-payment reduction for a lawful extracted long chain.
If

```math
\mathsf P_{\rm chain}(I)=0,
\qquad
\operatorname{Err}_{\rm atom}(I)=0,
\tag{LHP.15}
```

then

```math
\partial_\rho a-2a=0,
\qquad
a(\rho)=Ce^{2\rho}.
\tag{LHP.16}
```

The corresponding physical velocity is

```math
u_A(r,\omega)
=
Ce^{2\rho}\frac{A\omega}{r}
=
C\,A x.
\tag{LHP.17}
```

So the only zero-payment long-chain interior mode is the smooth global affine
endpoint kernel. It is not a separate localized finite-energy participant. A
lawful tower must either make that endpoint parent-owned/stopped/pass material,
or pay to turn it off, attach it, rotate it, hide it, or localize it.

## 5. Remaining direct \(c_0\) work

This discharges the interior Hodge-payment part of the log-chain wall. The
remaining pieces of `ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A`
are now:

```math
\begin{array}{ll}
\text{channel extraction:}
& \text{extract }a(\rho)A\text{ from every lawful zero-payment chain without
service loss;}\\
\text{endpoint ownership:}
& |a(\rho_+)|^2|A|^2\text{ is parent-owned, stopped/pass-owned, or paid;}\\
\text{approach-to-kernel strictness:}
& \text{a normalized }S=1,\ P\to0\text{ sequence cannot hide in the
endpoint layer;}\\
\text{accounting:}
& \text{combine bad packets, finite strict atoms, and log chains without
service loss or payment double count.}
\end{array}
\tag{LHP.18}
```

With these four producer rows installed, the direct theorem

```math
\mathcal S\le C\mathcal P
\tag{LHP.19}
```

follows by the contradiction skeleton in the zero-payment note.
