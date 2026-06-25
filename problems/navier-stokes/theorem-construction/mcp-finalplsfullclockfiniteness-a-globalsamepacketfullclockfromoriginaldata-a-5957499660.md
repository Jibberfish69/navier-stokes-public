# Final PLS full-clock finiteness attempt

Status: failed unconditional discharge; exact missing absorption line recorded.

## Target

Prove

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty .
```

Here \(d\Omega_N^{PLS}\) is the full participation-law--strain service clock on the original transported material Navier-Stokes history.

## Installed pieces used

1. The live carrier is the participation-law--strain interface. Pressure/RHS, Hodge/Stokes projection, coefficient motion, transported collar motion, Cauchy stress, viscosity, incompressibility, velocity, and strain are coordinates of one material participation law.

2. PLS recirculation is closed: oscillatory back-and-forth service is bounded by bounded-record packing, high-shell viscosity, top-strain/superheat cost, legal residual, or top-frequency no-free-regeneration payment.

3. Net upward material-record growth is paid by PLS participation:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N d\Omega_N^{PLS}+dR_N^0.
```

This is the local material-record growth theorem from differentiating the material packet.

## Attempted absorption

The natural decomposition is

```math
d\Omega_N^{PLS}
=
d\Omega_N^{recirc}
+d\Omega_N^{grow}
+d\Omega_N^{finite}.
```

The recirculation term is finite by the PLS recirculation packing closure.  The finite terms are already paid by viscosity/top-strain/legal ledgers.  The remaining term is one-way positive material-record growth:

```math
d\Omega_N^{grow}\simeq d[\log(1+\mathcal P_N^{mat})]_+.
```

The available local estimate gives only

```math
d\Omega_N^{grow}
\le
C_N(d\Omega_N^{recirc}+d\Omega_N^{grow}+d\Omega_N^{finite})+dR_N^0.
```

This has the growth term on both sides with no strict coefficient allowing absorption.  It is a payment identity/accounting inclusion, not a finite total estimate.

To close the theorem, one would need a strict noncircular inequality, for example

```math
d\Omega_N^{grow}
\le
\theta d\Omega_N^{PLS}+dR_N,
\qquad 0\le\theta<1,
\qquad \int dR_N<\infty,
```

or directly

```math
d\mathfrak L_N+c\,d\Omega_N^{PLS}\le dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int dR_N<\infty .
```

No installed surface gives this strict absorption or bounded-below Lyapunov law for one-way material-record growth.

## Exact failure mode

The remaining obstruction is no longer recirculation, endpoint atom, pressure-only source, annular-only source, fixed-collar service, or high-frequency regeneration.  Those branches have been reduced or paid.

The only live branch is:

```math
\int_0^{T^*}d[\log(1+\mathcal P_N^{mat})]_+=\infty .
```

This is monotone/net upward growth of the continuation-depth material record.  The current identities show that such growth is a PLS participation event; they do not yet show finite total PLS participation from original data.

## Verdict

The final estimate

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty
```

is not proved by the installed inputs.  It is equivalent to the live frontier `GlobalSamePacketFullClockFromOriginalData.A` in its sharpened form: prove a noncircular finite-total bound for one-way positive material-record growth / full PLS service.

The required next theorem is:

```math
\boxed{
\text{one-way positive material-record growth is strictly absorbed by already finite PLS payment,}
}
```

or an equivalent bounded-below PLS Lyapunov/coercivity law.