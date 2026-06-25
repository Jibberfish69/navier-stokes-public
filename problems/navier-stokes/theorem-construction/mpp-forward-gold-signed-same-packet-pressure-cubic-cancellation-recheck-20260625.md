---
theorem_id: forward-gold-signed-same-packet-pressure-cubic-cancellation-recheck-20260625
status: signed-cancellation-candidate-exhausted; redistributes-service-inside-same-packet-not-finite-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Rechecks the only noncircular route left by the pressure-time/cubic-strain
  service test: signed cancellation before rectification. The exact pressure
  service storage removes the raw D_tP symbol, but the derivative of the
  modified annular flux leaves pressure-stress, pressure-transport, viscous
  stress, and cubic collar contractions on the same transported annulus. Those
  terms are sign-indefinite and are not bounded by the local energy surface or
  the fixed-threshold cascade support. This proves there is no elementary
  signed cancellation that turns the active service into legal residual. The
  terms remain the full positive same-material clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-cancellation-pressure-time-cubic-gradient-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-time-cubic-strain-service-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-terminal-tail-coercivity-without-full-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-clock-direct-route-exhaustion-20260624.md
---

# Signed Same-Packet Pressure/Cubic Cancellation Recheck

Date: 2026-06-25

## 0. Target

The previous service-clock test left one possible noncircular escape from
absolute-value estimates: cancel the pressure-time and cubic-strain service in a
signed same-packet identity before rectifying the annular action.

The object is unchanged: one original smooth material history with transported
annular cutoff `phi`, reduced velocity `U`, reduced pressure `P`, and reduced
stress

```math
T^\sharp=-PI+2\nu S(U),
\qquad
D_tU=\nabla\cdot T^\sharp,
\qquad
\nabla\cdot U=0.
\tag{SPC.1}
```

The reduced annular flux is

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx,
\qquad
D_t\phi=0.
\tag{SPC.2}
```

## 1. Exact derivative

The material derivative of `(SPC.2)` is

```math
{d\over dt}F_\phi^\sharp=I_1+I_2+I_3,
\tag{SPC.3}
```

where

```math
I_1=\int (\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi,
\tag{SPC.4}
```

```math
I_2=\int U_i(D_tT^\sharp_{ij})\partial_j\phi,
\tag{SPC.5}
```

and

```math
I_3=-\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi).
\tag{SPC.6}
```

The pressure-time subterm is

```math
I_{2,p}=-\int D_tP\,U\cdot\nabla\phi.
\tag{SPC.7}
```

## 2. Pressure-time cancellation

Define the pressure-service storage

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx.
\tag{SPC.8}
```

Since the flow is incompressible and the cutoff is transported,

```math
{d\over dt}Y_\phi
=
\int D_tP\,U\cdot\nabla\phi
+
\int P(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SPC.9}
```

Therefore

```math
I_{2,p}
=
-{d\over dt}Y_\phi
+
\int P(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SPC.10}
```

This is the full signed cancellation available at the pressure-time level.  It
removes the raw material time derivative of pressure.  It does not remove the
pressure service; it relocates that service into pressure-stress and
pressure-transport terms on the same annular collar.

## 3. Viscous stress-time and cubic collar terms

The viscous part of `I_2` is

```math
I_{2,\nu}=2\nu\int U_i(D_tS_{ij}(U))\partial_j\phi.
\tag{SPC.11}
```

Using

```math
D_tS(U)=\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-\operatorname{sym}\big((\nabla U)(\nabla U)\big),
\tag{SPC.12}
```

and integrating the second-derivative stress terms by parts gives collar stress
terms plus the cubic contraction

```math
\mathcal C_\phi
=
-\nu\int
U_i
\left(
\partial_iU_k\partial_kU_j
+
\partial_jU_k\partial_kU_i
\right)
\partial_j\phi
-2\nu\int U_iS_{ij}(U)(\partial_jU_k)(\partial_k\phi).
\tag{SPC.13}
```

The first integral in `(SPC.13)` comes from `D_tS`; the second comes from the
viscous part of `I_3` after inserting `T^sharp=-PI+2nuS(U)`.

The pressure part of `I_3` belongs to the pressure-service terms in `(SPC.10)`.
The stress-divergence pieces are same-collar spatial stress terms.  Thus the
modified signed flux has the form

```math
{d\over dt}\left(F_\phi^\sharp+Y_\phi\right)
=
\mathcal Q_\phi^{press/stress}
+
\mathcal C_\phi
+
\mathcal R_\phi^{collar/stress}.
\tag{SPC.14}
```

Every term in `(SPC.14)` is on the original transported annulus.  Nothing has
been detached from the physical packet.

## 4. No hidden sign

The cubic collar functional `C_phi` is not a square and not a bulk divergence
cancellation.  It is supported exactly where the annular material exchange is
measured: on the collar through `nabla phi`.

A parity test blocks a hidden nonnegative-loss interpretation.  Under the frozen
algebraic replacement

```math
U\mapsto -U,
\qquad
\nabla U\mapsto -\nabla U,
\tag{SPC.15}
```

with the same collar, `(SPC.13)` changes sign.  A nonzero functional with this
parity cannot be a nonnegative loss.  The pressure-stress terms in `(SPC.14)`
have the same problem: pressure Hessian and pressure transport have
Calderon-Zygmund partner cancellation in the full pressure field, but no
one-sided sign after terminal positive selection unless the partner remains in
the same annular ledger or is charged there.

Therefore the signed cancellation proves same-packet redistribution, not
coercive decay.

## 5. Lower-bound obstruction for a second storage

A further storage `Z_phi` would have to satisfy

```math
{d\over dt}Z_\phi
+
 c\left[\mathcal Q_\phi^{press/stress}+\mathcal C_\phi\right]_+
\le
\text{strict same-packet loss}+\text{summable residual}.
\tag{SPC.16}
```

The natural candidates

```math
\int P|U|^2\chi,
\qquad
\int T^\sharp:T^\sharp\chi,
\qquad
\int U\cdot\nabla P\chi
\tag{SPC.17}
```

recreate the same pressure-stress and cubic collar terms, plus higher pressure
and stress derivatives.  A lower bound for these storages on shrinking terminal
annuli requires normalized pressure, velocity, and material-record control on
the same packet.  That is precisely the full material clock/record the argument
is trying to produce.

## 6. Result

The signed cancellation candidate has the exact result

```math
D_tP\text{ is removable as a raw time symbol,}
\tag{SPC.18}
```

but

```math
\left[\mathcal Q_\phi^{press/stress}+\mathcal C_\phi\right]_+
\tag{SPC.19}
```

remains active full material-clock action.

So this candidate does not prove finite rectified annular force-action
variation.  The remaining theorem is still

```math
\int_0^{T_*}d\Omega_N^{full}(t)<\infty,
\tag{SPC.20}
```

or an equivalent global same-material coercive inequality that puts the
pressure-stress and cubic collar positive action on the left with a genuine
lower-bounded storage.