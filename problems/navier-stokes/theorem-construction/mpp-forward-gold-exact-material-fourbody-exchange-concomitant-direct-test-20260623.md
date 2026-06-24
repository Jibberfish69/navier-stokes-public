---
theorem_id: forward-gold-exact-material-fourbody-exchange-concomitant-direct-test-20260623
status: direct-test-shows-bounded-concomitant-equivalent-to-finite-full-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Tests the last possible algebraic escape for the signed smooth same-packet
  clock producer. The pay-it-back-later annular history is attached to the
  center spike at the smooth same-material level, but an instantaneous bounded
  four-body cross-storage cannot by itself pay arbitrary positive material
  strain/log-record growth. In the material line/metric normal form, any
  primitive that cancels the positive log-deformation clock is necessarily
  unbounded below unless the finite full material clock is already known. Thus
  ExactMaterialFourBodyExchangeConcomitant.A is not an independent algebraic
  closure from the material identities alone; the remaining gold producer is a
  genuine signed Navier-Stokes coercivity estimate controlling the
  strain/coefficient service clock by strict same-packet loss and legal
  residual.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-simultaneous-material-fourbody-xterm-identity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-spike-thinning-full-participation-trichotomy-20260623.md
---

# Exact Material Four-Body Exchange Concomitant Direct Test

Date: 2026-06-23

## 0. Result

The same-material annular return mechanism is attached to the spike.  That is
not the remaining problem.

The remaining question is whether the four-body exchange mismatch can be paid
by an instantaneous bounded cross-storage:

```math
X_{comm}=X_{SQ}+X_{QC}+X_{CG}+X_{GS}
```

so that the smooth material packet satisfies

```math
d\mathfrak L_{4B,N}
+
c\,d\Omega_N
+
d\mathcal L_{4B,N}
\le
dR^0_N,
\qquad
\mathfrak L_{4B,N}\ge -C,
\qquad
\int dR^0_N<\infty .
\tag{EMC.1}
```

The direct test shows that the answer is negative for a purely algebraic
concomitant built only from the material identities.  A bounded \(X_{comm}\)
cannot pay arbitrary positive material strain/log-record growth.  The only way
to make `(EMC.1)` true is to prove an actual Navier--Stokes coercive estimate
that controls the material strain/coefficient service clock by strict
same-packet loss and summable legal residual.

So the live gold statement stays:

```math
\boxed{
\texttt{SignedSmoothSamePacketCommutatorCoercivity.A}
}
\tag{EMC.2}
```

and it cannot be replaced by a formal \(X\)-term primitive.

## 1. The material strain normal form

Let \(X(a,s)\) be the material flow, \(F=D_aX\), and

```math
C=F^\top F .
\tag{EMC.3}
```

The material metric identity is exact:

```math
\partial_s C=2F^\top S(V)F .
\tag{EMC.4}
```

For a material line element \(\ell=F\xi\),

```math
\frac{d}{ds}\log|\ell|
=
\hat\ell\cdot S(V)\hat\ell,
\qquad
\hat\ell=\frac{\ell}{|\ell|}.
\tag{EMC.5}
```

Thus the positive material deformation clock is

```math
d\Gamma_+
=
\left[\hat\ell\cdot S(V)\hat\ell\right]_+\,ds .
\tag{EMC.6}
```

This is exactly the later annular stress/strain history in its base geometric
form.  It is not detached from the spike; it is the material history of the
annular layers underneath the spike.

## 2. What a bounded concomitant would have to do

Suppose a same-packet instantaneous cross-storage \(X(C,\ldots)\), bounded
below on the retained tail, pays this clock:

```math
dX
+
c\,d\Gamma_+
\le
dR,
\qquad
X\ge -C_X,
\qquad
\int dR<\infty .
\tag{EMC.7}
```

Integrating gives

```math
c\int_{s_0}^{S}d\Gamma_+
\le
X(s_0)-X(S)
+
\int_{s_0}^{S}dR
\le
X(s_0)+C_X+\int dR .
\tag{EMC.8}
```

So `(EMC.7)` is already a finite-clock theorem:

```math
\int d\Gamma_+<\infty .
\tag{EMC.9}
```

It is not an algebraic identity that can be read off from
\(\partial_sC=2F^\top SF\).  The lower bound on \(X\) is exactly what prevents
the cross-storage from hiding unlimited positive strain history.

## 3. Constant-strain normal-form test

Use the incompressible affine strain normal form

```math
S_\lambda
=
\begin{pmatrix}
\lambda & 0 & 0\\
0 & -\lambda/2 & 0\\
0 & 0 & -\lambda/2
\end{pmatrix},
\qquad
\operatorname{tr}S_\lambda=0.
\tag{EMC.10}
```

For the material line \(\ell\) in the stretching direction,

```math
\frac{d}{ds}\log|\ell|=\lambda .
\tag{EMC.11}
```

Over an interval of length \(T\),

```math
\int_0^T d\Gamma_+
=
\lambda T .
\tag{EMC.12}
```

This quantity can be made arbitrarily large in the normal form.  Therefore a
bounded-below instantaneous primitive cannot pay it by algebra alone.  The
primitive that cancels it directly is

```math
X=-c\log|\ell|,
\tag{EMC.13}
```

but this is unbounded below as the material line stretches:

```math
X(T)=-c\lambda T+X(0)\to-\infty .
\tag{EMC.14}
```

That violates the storage lower-bound requirement in `(EMC.1)`.

This is a normal-form obstruction to the algebraic \(X\)-term idea, not a
claim that `(EMC.10)` is a global Navier--Stokes counterexample.  Its job is to
test the proposed proof mechanism.  The mechanism fails unless Navier--Stokes
supplies an additional signed coercive estimate that limits the same material
strain/coefficient clock.

## 4. Consequence for the four-body packet

The direct smooth tower calculation has the form

```math
dE_N
+
dD_N^{vis}
+
dD_N^{rad}
\le
C\,\Theta_N E_N\,d\sigma
+
dR^0_N .
\tag{EMC.15}
```

Therefore

```math
d[\log(1+E_N)]_+
\le
C\,\Theta_N\,d\sigma
+
dR^0_N .
\tag{EMC.16}
```

The concomitant test says that replacing the right side of `(EMC.16)` by a
bounded cross-storage drop is exactly the missing theorem.  It cannot be
obtained by defining

```math
X_{comm}(\sigma)
=
-\int_{\sigma_0}^{\sigma}
\Theta_N(\tau)\,d\tau,
\tag{EMC.17}
```

because `(EMC.17)` is bounded below precisely when the desired full clock is
already finite.

Thus the four-body packet has the following honest state:

```math
\text{smooth material identities}
\Longrightarrow
\text{attached annular return and BKM/log-growth readout};
\tag{EMC.18}
```

```math
\text{smooth material identities}
\not\Longrightarrow
\text{finite full material clock by algebra alone}.
\tag{EMC.19}
```

The missing implication is the actual PDE coercivity statement:

```math
\Theta_N\,d\sigma
\le
C\,d\mathcal L_{4B,N}
+
C\,dA_{4B,N}
+
dR^0_N
-
dX_{comm}
\tag{EMC.20}
```

with \(X_{comm}\) bounded below.  This is exactly
`SignedSmoothSamePacketCommutatorCoercivity.A`.

## 5. Impact on the MPP route

The physical picture is preserved:

```math
\text{rising/thinning terminal spike}
\longrightarrow
\text{same material annular stress/strain history}
\longrightarrow
\text{full material packet clock}.
\tag{EMC.21}
```

The proof is not closed until the last arrow is finite in unweighted
log-scale.  The attached history prevents a center-only endpoint fiction; it
does not by itself bound the accumulated scale-normalized strain/coefficient
clock.

So the current exact frontier is:

```math
\boxed{
\text{prove finite full material clock by a genuine signed Navier--Stokes
coercivity estimate, or the gold-forward smoothness proof remains conditional.}
}
\tag{EMC.22}
```

This note rules out one misleading closure path: a formal four-body
cross-storage primitive cannot be the missing proof unless it is bounded below
by a mechanism stronger than the material identities themselves.
