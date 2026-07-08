---
theorem_id: forward-gold-c0-log-chain-hodge-payment-reduction-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / log-chain turn-off
status: off-kernel-log-chain-hodge-payment-proved; endpoint-payment-is-door2-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707.md
completion_truth: >-
  This note proves only the off-kernel long-chain same-field Hodge leg: once a
  long same-affine chain has been lawfully reduced to a log-amplitude affine
  Vieillefosse channel plus incompressible correction on fixed annular geometry,
  zero payment forces the off-kernel log defect (partial_rho a - 2a)A to vanish.
  Combined with the scalar log-Hardy endpoint lemma, the chain service is
  controlled by same-field payment plus the parent endpoint affine kernel. The
  fixed smooth-affine first non-merge collar is paid by the companion Door-2a
  H1 trace/collar note under the enstrophy-viscous participation bill. The
  remaining endpoint is not an ordinary smooth affine collar; it is the
  scale-consistent degree -1 pressure-bank cone. The companion Door-2b note
  kills that cone under strict profile-production bill admission by forcing the
  exact zero-force stationary smooth-sphere profile consumed by Landau/Sverak.
  The remaining issue is bill admission/accounting in the global tower.
---

# Log-chain Hodge payment reduction

This is a direct \(c_0\) sublemma for the off-kernel log-chain interior. It is
not a Rayleigh, transverse-lag, or side-survivor branch. It proves the part of
`ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A` where
incompressibility turns a long same-affine log chain into a charged non-affine
defect. It does not prove the smooth affine endpoint payment.

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

## 5. Endpoint ownership of the smooth affine kernel

The endpoint term in (LHP.14) is not a loose scalar remainder. It is the
outer trace of the same physical affine field.

Write

```math
E_I
=
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho,
\qquad
T_+
=
a(\rho_+)A .
\tag{LHP.18}
```

Combining (LHP.11)--(LHP.14), for every lawful extracted chain,

```math
\mathsf S_A(I)
\le
C
\left(
\mathsf P_{\rm chain}(I)
+
|T_+|^2
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{LHP.19}
```

Hence, after normalizing \(\mathsf S_A(I)=1\), either the interior chain bill
already pays, or the endpoint trace has fixed size:

```math
\mathsf P_{\rm chain}(I)+\operatorname{Err}_{\rm atom}(I)
\le
\frac1{2C}
\quad\Longrightarrow\quad
|T_+|^2
\ge
\frac1{2C}.
\tag{LHP.20}
```

This is the point where the physical ontology matters. The trace \(T_+\) is
not an independent boundary datum and not an affine-amplitude mismatch being
charged inside the quotient. It is the same velocity field entering the parent
collar with a nonzero traceless affine strain.

The fixed Door-2a input is the strict parent-owned collar alternative on the
fixed normalized outer collar:

```math
\text{either the parent owns the same affine trace and the packets merge,}
\tag{LHP.21a}
```

or

```math
\mathsf P_{\rm parent}(\rho_+)
\ge
c_{\rm tr}|T_+|^2
-
C_{\rm tr}\operatorname{Err}_{\rm atom}.
\tag{LHP.21b}
```

This alternative is not proved by the off-kernel Hodge calculation. It is proved
by the Door-2a H1 trace/collar note once the strict bill is known to include the
localized enstrophy-viscous collar term. The affine mismatch itself is never
charged; only the non-affine turn-off/attachment needed to avoid merger is
charged.

If (LHP.21a) occurs, repeat the same test one parent scale outward. An
unpaid sequence of mergers would make the same nonzero affine field persist
through arbitrarily large parent collars:

```math
u(x)=Bx,
\qquad
B\ne0,
\qquad
\operatorname{tr}B=0.
\tag{LHP.22}
```

That is incompatible with the finite-energy same-field setting, since

```math
\int_{B_R}|Bx|^2\,dx
\simeq
|B|^2R^5
\to\infty .
\tag{LHP.23}
```

Thus a normalized smooth-affine long chain cannot escape by pushing the endpoint
kernel outward forever. At the first non-merge collar it pays by the Door-2a
trace/collar note, or if no such collar exists the only possible finite-energy
affine trace is \(B=0\), which carries no Vieillefosse service.

Conditioned on Door 2, the endpoint version of (LHP.19) is

```math
\mathsf S_A(I)
\le
C
\left(
\mathsf P_{\rm chain}(I)
+
\mathsf P_{\rm parent}^{\rm first\ nonmerge}(I)
+
\operatorname{Err}_{\rm atom}(I)
\right),
\tag{LHP.24}
```

with \(C\) independent of the length of the chain, for the smooth-affine
endpoint case. The remaining Door-2 survivor is the scale-consistent degree
\(-1\) pressure-bank cone, not this fixed affine collar; the Door-2b note
handles that cone under strict profile-production bill admission.

## 6. Consumption by atomization

This discharges only the off-kernel long-chain wall after lawful same-affine
channel extraction. VPL Section 23 supplies the stopping decomposition, and the
following two producer rows are still needed before this sublemma can be
consumed in the tower proof:

```math
\begin{array}{ll}
\text{channel extraction:}
& \text{extract }a(\rho)A\text{ from every lawful zero-payment chain without
service loss;}\\
\text{accounting:}
& \text{combine bad packets, finite strict atoms, and log chains without
service loss or payment double count.}
\end{array}
\tag{LHP.25}
```

With these rows and Door 2 installed there, the direct strict-tower theorem

```math
\mathcal S\le C\mathcal P
\tag{LHP.26}
```

follows by the contradiction skeleton in the zero-payment note.
