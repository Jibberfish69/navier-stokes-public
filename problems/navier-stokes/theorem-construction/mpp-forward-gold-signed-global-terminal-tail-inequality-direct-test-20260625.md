---
theorem_id: forward-gold-signed-global-terminal-tail-inequality-direct-test-20260625
status: signed-route-redistributes-same-packet-action-no-finite-tail-proof-from-current-inputs
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the last alternative left by the finite service-clock and annular-density
  bridge checks: a signed global terminal-tail inequality before rectification.
  The calculation keeps the original transported material history and the full
  pressure-viscosity-incompressibility-velocity packet. The pressure-time symbol
  can be moved into a same-packet storage, but the resulting pressure-stress and
  cubic collar terms are not sign-definite and not controlled by energy or the
  fixed-threshold scheduler. A cumulative signed primitive would close only if
  it were bounded below, and that lower boundedness is equivalent to the finite
  full material clock. Therefore the signed route is not discharged by current
  inputs; it is exactly the global full-clock theorem in signed-storage form.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-bridge-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-cancellation-pressure-time-cubic-gradient-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-clock-direct-route-exhaustion-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-symmetrizer-clock-producer-noncircularity-check-20260624.md
---

# Signed Global Terminal-Tail Inequality Direct Test

Date: 2026-06-25

## 0. Target

The previous tests leave one possible non-absolute route: keep the annular
stress-work signed and prove a global terminal-tail inequality of the form

```math
d\mathfrak L_N
+
c\,d\Omega_N^{full}
+
d\mathcal L_N
\le
dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int_0^{T_*}dR_N<\infty.
\tag{SGT.1}
```

Here \(d\Omega_N^{full}\) includes the positive material-record variation and
the positive annular pressure/strain action of the same original transported
material history.

The test is whether `(SGT.1)` is produced by the currently installed signed
cancellations and symmetrizer/cross-storage calculations.

## 1. What signed cancellation proves

In the gauge-reduced packet,

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0,
\tag{SGT.2}
```

with transported annular cutoff \(D_t\phi=0\), the reduced flux

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx
\tag{SGT.3}
```

has derivative

```math
{d\over dt}F_\phi^\sharp=I_1+I_2+I_3.
\tag{SGT.4}
```

The pressure-time subterm inside \(I_2\) is

```math
I_{2,p}=-\int D_tP\,U\cdot\nabla\phi.
\tag{SGT.5}
```

Using the pressure-service storage

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx,
\tag{SGT.6}
```

one gets the exact identity

```math
I_{2,p}
=
-{d\over dt}Y_\phi
+
\int P\,(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SGT.7}
```

This is a real signed same-packet cancellation. It proves that \(D_tP\) is not
a free terminal-time oscillator.

## 2. What remains after the cancellation

After `(SGT.7)`, the modified signed derivative has the form

```math
{d\over dt}(F_\phi^\sharp+Y_\phi)
=
\mathcal R_{stress}[U,P,T^\sharp,\phi]
+
\mathcal C_{cubic}[U,P,T^\sharp,\phi],
\tag{SGT.8}
```

where the right side consists of same-annulus pressure-stress, stress-curl,
collar-Hessian, and cubic strain contractions. These terms are still inside the
same pressure-viscosity-incompressibility-velocity packet.

They are not sign-definite. In particular, the cubic collar part changes sign
under the frozen algebraic replacement \(U\mapsto -U\) with the collar fixed,
while a nonnegative loss cannot have that parity. The stress-curl and collar
Hessian contractions also have no fixed sign.

Thus signed cancellation gives redistribution, not one-way payment:

```math
\text{signed cancellation}
\Rightarrow
\text{same-packet pressure/strain redistribution}.
\tag{SGT.9}
```

It does not give

```math
\int_0^{T_*}d\Omega_N^{full}<\infty.
\tag{SGT.10}
```

## 3. Cumulative signed storage is circular unless bounded below independently

One can formally define a cumulative primitive for the signed remainder:

```math
X(t)=-\int_0^t
\left(
\mathcal R_{stress}(\tau)+\mathcal C_{cubic}(\tau)
\right)d\tau.
\tag{SGT.11}
```

Then \(dX\) cancels the signed remainder. This does not prove `(SGT.1)` unless

```math
\inf_{t<T_*}X(t)>-\infty.
\tag{SGT.12}
```

But `(SGT.12)` is exactly a finite accumulated signed-tail/no-free-exchange
statement. In the affine-strain normal form, the primitive that cancels positive
material metric growth is

```math
X(t)=-c\log |D_aX(t)e|,
\tag{SGT.13}
```

which is unbounded below along a long positive strain history. Therefore lower
boundedness cannot be assumed from local algebra or from the existence of a
signed primitive.

## 4. Finite-time observability is not terminal-tail payment

A frozen finite-time Gramian sees the packet, but it leaves endpoint readout:

```math
L^*G_T+G_TL=e^{TL^*}We^{TL}-W.
\tag{SGT.14}
```

The final term is precisely the same terminal-tail return that must be paid.
It becomes useful only after a no-return or endpoint absorption estimate is
already proved. That is another form of `(SGT.1)`, not an independent proof of
it.

## 5. Result

The signed global terminal-tail inequality is not proved by the installed
signed-cancellation, symmetrizer, or Gramian calculations.

The exact state is:

```math
\boxed{
\text{signed identities keep the pressure/strain return inside the same packet,}
\quad
\text{but finite terminal-tail payment is still the full-clock theorem.}
}
\tag{SGT.15}
```

So the current proof chain is honest:

```math
\text{finite full material clock}
\Longrightarrow
\text{fixed }H^s\text{ continuation},
\tag{SGT.16}
```

and the missing line remains

```math
\boxed{
\text{original smooth material history}
\Longrightarrow
\text{finite full material clock}.
}
\tag{SGT.17}
```

This note does not close the MPP. It closes the last local/signed shortcut:
there is no installed signed redistribution that turns the positive
pressure-strain/cubic terminal-tail service into a summable residual without
proving the global full-clock estimate itself.