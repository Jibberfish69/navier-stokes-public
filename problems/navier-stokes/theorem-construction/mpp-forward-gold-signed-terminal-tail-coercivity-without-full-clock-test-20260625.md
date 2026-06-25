---
theorem_id: forward-gold-signed-terminal-tail-coercivity-without-full-clock-test-20260625
status: signed-storage-redistributes-clock; lower-bound-requires-full-material-record
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining signed route: keep the full annular pressure/strain
  transaction in one same-packet identity and avoid termwise absolute values.
  The pressure-time derivative can be moved into pressure-service storage, and
  the viscous stress-time derivative reduces to spatial stress/strain collar
  terms. However every finite signed storage found from the smooth same-packet
  identities has a lower-bound requirement at terminal scale that is equivalent
  to the normalized pressure/velocity/material record. The signed route therefore
  preserves participation and removes fake free-time oscillation, but it does not
  produce a one-way finite positive clock without the full material record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-global-terminal-tail-inequality-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-cancellation-pressure-time-cubic-gradient-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-frequency-full-annular-stress-transfer-absorption-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
---

# Signed Terminal-Tail Coercivity Without Full Clock Test

Date: 2026-06-25

## 0. Target

The signed route seeks a same-packet functional `B_phi` such that

```math
{d\over dt}B_\phi(t)
+
 c\,\Omega_\phi^{full,+}(t)
+
\mathcal L_\phi(t)
\le
R_\phi(t),
\qquad
\int_0^{T_*}R_\phi(t)\,dt<\infty,
\tag{STC.1}
```

with `B_phi` bounded below from original smooth data alone. Here
`Omega_phi^{full,+}` is the positive annular pressure-viscosity-
incompressibility-velocity material clock containing the pressure-time elliptic
service and cubic collar strain terms.

This would prove

```math
\int_0^{T_*}\Omega_\phi^{full,+}(t)\,dt<\infty
\tag{STC.2}
```

without estimating the full density by absolute values.

## 1. Exact signed cancellation already available

In the reduced packet,

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0,
\tag{STC.3}
```

and with transported annular cutoff `D_t phi=0`, the annular stress-work flux
is

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx.
\tag{STC.4}
```

Its derivative contains

```math
I_{2,p}=-\int D_tP\,U\cdot\nabla\phi\,dx.
\tag{STC.5}
```

For

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx,
\tag{STC.6}
```

one has exactly

```math
I_{2,p}
=
-{d\over dt}Y_\phi
+
\int P(\nabla\cdot T^\sharp)\cdot\nabla\phi\,dx
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi)\,dx.
\tag{STC.7}
```

So the raw `D_tP` term is not a free terminal oscillator. It is redistributed
inside the same pressure/strain annular transaction.

## 2. Why this is not one-way coercivity

Substituting `(STC.7)` gives a modified signed flux

```math
{d\over dt}(F_\phi^\sharp+Y_\phi)
=
\mathcal Q_\phi^{stress}
+
\mathcal C_\phi^{cubic}
+
\mathcal R_\phi^{collar},
\tag{STC.8}
```

where the displayed terms are still pressure-stress, pressure-transport, cubic
strain, and transported-collar contractions. They have no fixed sign.

A one-way inequality would need a further storage `Z_phi` satisfying

```math
{d\over dt}Z_\phi
+
c\left(
|\mathcal Q_\phi^{stress}|_+
+
|\mathcal C_\phi^{cubic}|_+
\right)
\le
\text{strict loss}+\text{summable residual}.
\tag{STC.9}
```

The available smooth same-packet identities do not produce such a `Z_phi` with
a lower bound independent of the terminal material record. Differentiating
natural candidates such as

```math
\int P|U|^2\chi,\qquad
\int T^\sharp:T^\sharp\chi,\qquad
\int U\cdot\nabla P\chi,
\tag{STC.10}
```

creates the same pressure-stress and cubic collar terms again, plus higher
pressure/material derivatives. The derivative does not close downward; it
reopens the same full material tower.

## 3. Lower-bound test

The pressure-service storage already illustrates the point. Hölder gives

```math
|Y_\phi(t)|
\le
\|P(t)\|_{L^{3/2}(\operatorname{collar}\phi)}
\|U(t)\nabla\phi(t)\|_{L^3(\operatorname{collar}\phi)}.
\tag{STC.11}
```

On a shrinking terminal annular family, a scale-uniform lower bound for
`F_phi^sharp+Y_phi+Z_phi` requires exactly normalized pressure and velocity
control on the transported collar. That is part of the material record whose
positive clock is being sought.

Thus the signed storage can be bounded below after the full material record is
known, but not from raw energy and original smooth data alone.

## 4. Affine-strain sign check

The local incompressible normal form

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
\operatorname{tr}A=0,
\qquad
A=A^T,
\tag{STC.12}
```

satisfies

```math
(u\cdot\nabla)u+\nabla p=0,
\qquad
\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{STC.13}
```

It has real material strain and pressure-balanced annular stress-work. The
annular flux sign depends on the collar orientation and on the strain
direction. This rules out a universal monotone scalar sign for the pressure-
strain transaction. The transaction is real participation, but not a one-signed
loss.

## 5. Verdict

The signed route proves this exact statement:

```math
\text{pressure-time and cubic stress service stay inside the same material packet.}
\tag{STC.14}
```

It does not prove

```math
\int_0^{T_*}\Omega_\phi^{full,+}(t)\,dt<\infty
\tag{STC.15}
```

unless one adds a storage lower bound equivalent to the normalized material
pressure/velocity/tower record.

Therefore `SignedTerminalTailCoercivityWithoutFullClock.A` is not discharged
from the installed identities. The remaining proved continuation bridge is
conditional: finite full material clock implies fixed `H^s` continuation.
