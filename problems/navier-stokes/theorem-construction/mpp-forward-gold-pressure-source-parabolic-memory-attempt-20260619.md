# MPP Forward Gold PressureSourceParabolicMemory.A Attempt

Date: 2026-06-19

Status: direct attempt complete; forward-gold theorem not closed.  Pressure
gives spatial nonlocality at each time slice, not a parabolic memory modulus in
time.  The terminal moving-packet atom remains compatible with the pressure
equation unless an independent residence, tether, or compact-element theorem is
added.

## Target

The remaining pressure-side supplier for the pure terminal time-face atom is:

```math
\boxed{
PressureSourceParabolicMemory.A
}
```

In the current moving-packet form, it would say that pressure/source sustain on
selected terminal packets cannot be produced by an arbitrarily thin terminal
layer:

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\mu_m^{src,+}
\left(
Q_m\cap\{T_m-\varepsilon r_m^2<t\le T_m\}
\right)
=0
```

whenever the packet is sustained only through the pressure/Leray channel and
all legal exits, finite donor chains, and retained signed partners have already
been removed.

This would imply:

```math
PressureSourceParabolicMemory.A
\Longrightarrow
TerminalMovingPacketTraceModulus.A.
```

## Instantaneous pressure test

The pressure is recovered from velocity by the spatial equation

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
```

or locally

```math
p-p_h=R_iR_j(u_i u_j).
```

This is elliptic in \(x\) at fixed \(t\).  It has no time convolution.

For a separated terminal pulse

```math
u_m(t,x)=a_m(t)U_m(x),
```

one has

```math
p_m(t,x)-p_{m,h}(t,x)
=
a_m(t)^2 R_iR_j(U_{m,i}U_{m,j})(x).
```

So if \(a_m(t)\) is supported on a shrinking terminal layer, the pressure is
supported on that same shrinking terminal layer.  Pressure spreads the spatial
carrier.  It does not spread the time marginal.

This is the core obstruction to `PressureSourceParabolicMemory.A`.

## Local energy pressure-work test

The local energy identity sees pressure through

```math
\iint p\,u\cdot\nabla\phi .
```

This term is time-integrated, but the integral is only \(L^1_t\)-level
bookkeeping unless a stronger estimate is added.  A pulse of height
\(\tau_m^{-1}\) on a terminal interval of length \(\tau_m\) has finite total
mass and may converge to a terminal atom.

The pressure-work term can see that mass.  Seeing it is not a no-jump theorem.
To forbid the atom, pressure work would need a reverse Holder, Morrey,
Carleson, or trace absolute-continuity gain on the selected native source
marginal.

Current local energy inputs do not supply that gain.

## Leray/momentum memory test

One might try to recover parabolic memory from the projected equation

```math
\partial_t u-\nu\Delta u
=
-\mathbb P\nabla\cdot(u\otimes u).
```

The heat kernel gives forward parabolic memory for data that exists over a
positive time interval.  It does not force a source concentrated in the last
\(\tau_m\) of a heat window to have occupied earlier times.  The Duhamel term
can be supported arbitrarily close to the terminal time:

```math
\int_{T_m-\tau_m}^{T_m}
e^{\nu(T_m-s)\Delta}
\mathbb P\nabla\cdot(u\otimes u)(s)\,ds .
```

As \(\tau_m\downarrow0\), the heat kernel has vanishing time to smooth or
spread the source.  The terminal layer remains compatible with the projected
equation.

Thus Leray projection and heat memory do not prove the needed terminal strip
modulus without a lower residence-time theorem.

## Carrier anchoring test

Pressure/source carrier binding can prove that pressure and native source live
on the same packet family.  That is not enough.

Absolute continuity or anchoring of carriers permits both measures to charge
the same terminal face:

```math
\mu_*^{press}\ll\mu_*^{src},
\qquad
\mu_*^{src}=\rho(x)\,dx\otimes\delta_{t=T^*}.
```

After positive-part extraction, the signed Leray partner may be retained,
legal, donor-paid, or terminal Zeno.  The retained/legal/finite-donor cases are
already paid.  The terminal Zeno case is exactly the atom.

So carrier anchoring returns to:

```math
TerminalSignedSaturation.A
\quad\text{or}\quad
NoFreeTerminalZenoDonorChain.A,
```

not to pressure memory.

## Result

The direct theorem

```math
PressureSourceParabolicMemory.A
```

is not proved from current inputs.

The exact failure mechanism is that pressure is spatially nonlocal and
temporally instantaneous.  It can expose or reorganize a terminal layer; it
cannot by itself force that layer to occupy earlier heat-time.

The noncircular suppliers that would make the pressure route work are:

```math
TerminalSourceResidence.A,
\qquad
PositiveSourceTraceAC.A,
\qquad
PressureLobeSourceTether.A,
\qquad
NoFreeTerminalZenoDonorChain.A,
```

or the critical-element package:

```math
CriticalTerminalElementExtraction.A
+
NoWasteLocalEnergyFlux.A
+
CompactAncientRigidity.A.
```

Failure of pressure memory is not a new hidden branch.  It is the same terminal
pressure/source pulse: forward-gold still needs a residence/no-jump theorem,
while CM-facing use must send the retained pulse into Pack/Part/Field exit.
