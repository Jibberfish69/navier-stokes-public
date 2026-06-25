---
theorem_id: toprank-pressure-collar-noselfbirth-direct-attack-20260625
status: direct-attack-installed; strict top-rank descent not obtained; same-rank interface isolated
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the strict top-rank no-self-birth absorption left by the relative
  Schur pressure/collar note. The native material Hodge-Stokes shell removes
  the raw fixed-shell pressure overcount, and the heat-window demotion keeps
  interface variation at the same continuation depth. However the principal
  low-high pressure-stress/cubic-collar interaction is not lower rank and has
  no algebraic small coefficient. It is the same moving material annular
  pressure-strain interface, not an external source and not a pressure-only
  term. Thus the proposed strict absorption
  \(d\Omega_N^{press/RHS}+d\Omega_N^{collar}\le
  \theta(d\Omega_N^{press/RHS}+d\Omega_N^{collar})+\cdots\) is not proved by
  principal-rank triangularity. The remaining noncircular object is a
  bounded-below storage, or direct finite rectified variation theorem, for that
  same low-high pressure-stress/cubic-collar interface.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mcp-relative-schur-pressop-collar-storage-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-birthpackingmap-strict-ancestry-descent-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-stokes-hodge-shell-clock-closure-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-shell-interface-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-window-interface-variation-same-depth-demotion-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-time-cubic-strain-service-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-same-packet-pressure-cubic-cancellation-recheck-20260625.md
---

# Top-Rank Pressure / Collar No-Self-Birth Direct Attack

Date: 2026-06-25

## 0. Target

The relative Schur pressure/collar note reduced the remaining construction to a
strict top-rank absorption:

```math
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\le
\theta\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\right)
+
C\left(
d\Omega_N^{annular\ stress}
+
d\Omega_N^{vis/strain}
+
d\Omega_{N-1}^{PLS}
\right)
+
dR_N^{legal},
\tag{TR.1}
```

with \(0\le\theta<1\).  This note attacks `(TR.1)` directly at the
principal-rank level.

The object is one transported material packet:

```math
\partial_t v+A^\top\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0,
\tag{TR.2}
```

with

```math
A=(D_aX)^{-1},
\qquad
G=AA^\top,
\qquad
L_G=-\operatorname{div}_a(G\nabla_a).
\tag{TR.3}
```

## 1. Native Hodge-Stokes shell removes raw pressure overcount

The native shell is built from the material Hodge-Stokes operator on

```math
H_A(t)=\{h:\operatorname{div}_a(Ah)=0\}.
\tag{TR.4}
```

If

```math
h_j=\Pi_j(t)v(t)\in H_A(t),
\tag{TR.5}
```

then

```math
\langle A^\top\nabla_aq,h_j\rangle
=
-\langle q,\operatorname{div}_a(Ah_j)\rangle
=0.
\tag{TR.6}
```

So pressure is not doing tangent shell energy work as a detached force.  It is
the constraint-normal part of the same participation law.

The shell identity has the form

```math
{d\over dt}e_j+d_j
=
\langle\dot\Pi_jv,h_j\rangle
+r_j^{band}+r_j^{coll}.
\tag{TR.7}
```

The installed Hodge-Stokes reduction pays the part of
\(\langle\dot\Pi_jv,h_j\rangle\) caused by material metric motion:

```math
\dot G=-2ASA^\top,
\qquad
\|G^{-1/2}\dot G G^{-1/2}\|_{op}
\le
4\lambda_+ .
\tag{TR.8}
```

Subheat selector motion is absorbed by viscosity, and superheat selector motion
is read by the top-strain logarithmic storage.  Thus the raw pressure
overcount and the native Hodge selector motion are not the remaining
self-birth branch.

## 2. The same-depth interface variation still contains a pressure square

For a fixed material shell calculation, set

```math
F_j:=\Delta_j^a(A^\top\nabla_aq),
\qquad
L_j:=\Delta_j^a\operatorname{div}_a(G\nabla_av).
\tag{TR.9}
```

The shell equation gives

```math
\dot v_j=-F_j+\nu L_j.
\tag{TR.10}
```

For the pressure-interface piece

```math
P_j=-w_j\langle F_j,v_j\rangle,
\tag{TR.11}
```

the exact derivative includes

```math
-w_j\langle F_j,\dot v_j\rangle
=
w_j\|F_j\|_2^2
-\nu w_j\langle F_j,L_j\rangle .
\tag{TR.12}
```

On a heat window attached to shell \(j\), \(|I_j|\simeq2^{-2j}\), so the
demoted principal pressure-service term is

```math
2^{-2j}w_j\|F_j\|_2^2 .
\tag{TR.13}
```

This term is same-depth and same-packet.  It is not a higher-tower artifact.
It is also not lower rank merely because pressure is elliptic.

## 3. Elliptic pressure readout does not make the top term triangular

The pressure equation is

```math
L_Gq=R,
\qquad
R=A_{\ell i}A_{kj}
(\partial_{a_\ell}v_j)(\partial_{a_k}v_i)
=\operatorname{tr}(B^2).
\tag{TR.14}
```

At the principal symbolic level, suppressing lower coefficient commutators,

```math
F_j
\simeq
\Delta_j^a\nabla_aL_G^{-1}R.
\tag{TR.15}
```

The shell \(j\) component of \(R\) contains the low-high paraproduct

```math
\Delta_j^aR
\supset
\Delta_j^a\left(B_{<j-C}B_j\right),
\tag{TR.16}
```

plus near-diagonal high-high pieces and lower commutators.  The already
installed notes route the lower commutators, subheat pieces, top-strain/frame
pieces, wrong-sign recirculation, and legal residuals.  The term in `(TR.16)`
is the surviving moving low-high pressure-stress interaction.

Applying the elliptic operator gives

```math
F_j^{LH}
\simeq
\nabla_aL_G^{-1}\Delta_j^a(B_{<j-C}B_j).
\tag{TR.17}
```

This is still a shell \(j\) pressure-gradient force.  It has the same active
rank as \(B_j\), with coefficient \(B_{<j-C}\) from the same material annular
history.  There is no algebraic factor \(2^{-\varepsilon j}\), no automatic
lower-rank descent, and no sign.

Thus the principal contribution to `(TR.13)` contains

```math
2^{-2j}w_j
\left\|
\nabla_aL_G^{-1}\Delta_j^a(B_{<j-C}B_j)
\right\|_2^2 .
\tag{TR.18}
```

This is not a descendant in \(d\Omega_{N-1}^{PLS}\).  It is the same active
pressure-stress service at rank \(N\).

## 4. Higher collar has the same principal obstruction

The transported collar is exact:

```math
\phi(X(a,t),t)=\psi(a),
\qquad
\nabla_x\phi=A^\top\nabla_a\psi .
\tag{TR.19}
```

Base collar motion is paid by the material frame/top-strain clock.  At higher
finite depth, the collar record contains

```math
D_a^\beta A,
\qquad
D_a^\beta G,
\qquad
D_a^\beta(A^\top\nabla_a\psi).
\tag{TR.20}
```

Differentiating \(A\) gives

```math
\partial_tA=-AB,
\tag{TR.21}
```

so

```math
\partial_tD_a^\beta A
=
-A\,D_a^\beta B
+\text{lower products}.
\tag{TR.22}
```

The top term is \(D_a^\beta B\), the same velocity-gradient/strain tower at
the current rank.  The lower products descend and are already classified.
The top term does not descend by algebra.  It is the same material
pressure-strain/coefficient-collar service that appears in `(TR.18)`.

Therefore the higher-collar part of `(TR.1)` also lacks a strict
principal-rank coefficient \(\theta<1\).

## 5. Signed pressure-time cancellation removes only the raw time symbol

The signed pressure-time cancellation introduces

```math
Y_\phi=\int P\,U\cdot\nabla\phi\,dx
\tag{TR.23}
```

and removes the raw term

```math
-\int D_tP\,U\cdot\nabla\phi.
\tag{TR.24}
```

The exact identity leaves

```math
{d\over dt}\left(F_\phi^\sharp+Y_\phi\right)
=
\mathcal Q_\phi^{press/stress}
+
\mathcal C_\phi
+
\mathcal R_\phi^{collar/stress}.
\tag{TR.25}
```

Here \(\mathcal Q_\phi^{press/stress}\) is pressure-stress/pressure-transport
service and \(\mathcal C_\phi\) is the cubic collar contraction.  These are
the physical annular interface terms corresponding to `(TR.18)` and `(TR.22)`.
They are sign-indefinite and same-rank.  The cancellation proves attachment
and removes a misleading \(D_tP\) symbol; it does not prove the strict
absorption `(TR.1)`.

## 6. Result of the direct attack

The attempted strict top-rank absorption would require the surviving principal
term to satisfy a self-smallness statement:

```math
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\le
\theta\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\right)
+
\text{paid terms},
\qquad
\theta<1.
\tag{TR.26}
```

The direct principal-rank calculation does not produce `(TR.26)`.  The
surviving low-high pressure-stress/cubic-collar service is same-rank and has
no algebraic small coefficient.  It is not detached from the physical packet,
but it is not lower rank either.

Thus strict top-rank no-self-birth is not proved from the installed material
Hodge, elliptic pressure, heat-window, and collar identities.

## 7. Correct remaining object

The remaining object is narrower than the earlier broad entropy language:

```math
\boxed{
\text{finite rectified variation of the moving low-high material
pressure-stress / cubic-collar interface.}
}
\tag{TR.27}
```

Equivalently, one must construct a bounded-below same-material storage \(Z_N\)
for the interface in `(TR.25)`:

```math
dZ_N
+
c_N\left[
\mathcal Q_\phi^{press/stress}
+
\mathcal C_\phi
+
\mathcal R_\phi^{collar/stress}
\right]_+dt
\le
dR_N^{paid}.
\tag{TR.28}
```

where \(dR_N^{paid}\) may contain only already-paid viscosity, top-strain/frame,
base-collar, wrong-sign recirculation, lower-rank, annular-stress storage, and
legal finite-overlap terms.

This is the same physical participation-law-strain interface Thomas has been
forcing into the center of the proof: pressure, incompressibility, velocity,
viscosity, strain, material coefficients, transported collar, and annular
Cauchy stress are one transaction.  The remaining theorem is to prove finite
one-way rectified action for that transaction, not to find another detached
producer.

## Verdict

The top-rank no-self-birth attack does not close the MPP.  It proves that the
rank-descent version of the closure is too strong as stated: the principal
low-high pressure-stress/cubic-collar interaction stays at the active rank.

The proof is now pinned to the exact interface storage/coercivity problem
`(TR.28)`.  Any final closure must produce that bounded-below same-material
storage or an equivalent direct finite-rectified-variation theorem for the
same moving annular pressure-strain interface.
