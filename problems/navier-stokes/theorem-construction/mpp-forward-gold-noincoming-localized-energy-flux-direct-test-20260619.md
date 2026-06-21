# MPP Forward Gold NoIncomingLocalizedEnergyFlux.A Direct Test

Date: 2026-06-19

Status: direct theorem test complete; not closed from installed inputs.

## Target

The pressure-corrected no-jump branch leaves the possible supplier

```math
\boxed{
NoIncomingLocalizedEnergyFlux.A
}
```

in the following form: after selecting a terminal heat-scale packet and removing
legal exits, the positive inward local-energy flux should not be able to remain
positive on every shrinking terminal time strip.

For a cutoff \(\chi_m(x)=\chi((x-x_m)/r_m)\), the inward flux currency has the
model form

```math
\mathsf F_m^{in,+}(t)
:=
\left[
\int
\left(\frac12|u|^2+p\right)u\cdot\nabla\chi_m
-
\nu\nabla\frac12|u|^2\cdot\nabla\chi_m
\,dx
\right]_+ .
\tag{NILEF.1}
```

The forward-gold theorem would need the terminal strip modulus

```math
\boxed{
\lim_{\varepsilon\downarrow0}\limsup_m
{1\over r_m}
\int_{T_m-\varepsilon r_m^2}^{T_m}
\mathsf F_m^{in,+}(t)\,dt
=0 .
}
\tag{NILEF.2}
```

If `(NILEF.2)` held for the selected nonlegal sink channels, it would help
exclude the terminal time-face source atom.

## Lateral no-incoming is not terminal no-jump

A lateral no-incoming condition controls what crosses the moving spatial
boundary.  It does not control mass or source already inside the packet that is
concentrated on the final time face.

The model is

```math
g_m(t,x)
=
\rho(x)\tau_m^{-1}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\tau_m\downarrow0,
\tag{NILEF.3}
```

with \(\rho\) compactly supported strictly inside the selected packet.  This
can have zero lateral incoming flux through the packet collar while still
converging to a terminal time-face measure:

```math
g_m(t,x)\,dxdt
\rightharpoonup
\rho(x)\,dx\otimes\delta_{t=T^*}.
\tag{NILEF.4}
```

So lateral no-incoming is visibility/bookkeeping.  It is not an anti-atom
theorem.

## Including the terminal face changes the theorem

One can define "no incoming" to include the terminal face.  Then the theorem
does detect `(NILEF.3)`, but it has become the desired terminal trace theorem
itself:

```math
\text{no incoming through lateral boundary plus terminal face}
\quad\Longleftrightarrow\quad
\text{terminal trace strip modulus / no terminal source atom}.
\tag{NILEF.5}
```

This is not produced by the lateral flux identity.  It must be proved from a
residence, reverse-Holder, source-square, Carleson, trace-AC, no-free-Zeno, or
no-waste theorem.

## Heat-scale participation check

The positive-radius intuition is correct: a fixed spatial packet cannot receive
order-one terminal mass in a vanishing time interval if the admissible transfer
rate is uniformly bounded.

The live enemy is different.  It is heat-scale:

```math
|I_m|\sim r_m^2,
\qquad
\text{allowed normalized rate}\sim r_m^{-2}.
\tag{NILEF.6}
```

The product can remain order one:

```math
r_m^2\cdot r_m^{-2}\sim1.
\tag{NILEF.7}
```

Thus a no-incoming theorem that only watches the lateral boundary does not
defeat the heat-scale terminal pulse.  The pulse can be compactly retained or
source-balanced inside the packet until the terminal face.

## Local energy balance model

In a localized energy balance, schematically,

```math
E_m(T_m)-E_m(T_m-\tau_m)
+
D_m((T_m-\tau_m,T_m])
=
S_m((T_m-\tau_m,T_m])
+
F_m^{in}((T_m-\tau_m,T_m])
-
F_m^{out}((T_m-\tau_m,T_m]).
\tag{NILEF.8}
```

Setting \(F_m^{in}=0\) does not force \(S_m=0\).  The terminal layer can be
balanced by a trace jump, dissipation concentration, retained pressure/source
carrier, or signed donor channel.  Those are exactly the sink channels isolated
by `TerminalTimeFaceJumpSinkAlternative.A`.

So the no-incoming condition closes only after the terminal source/sink side is
also controlled:

```math
NoIncomingLocalizedEnergyFlux.A
+
TerminalSourceResidence.A
\Longrightarrow
\text{terminal anti-atom},
\tag{NILEF.9}
```

or similarly with

```math
PositiveSourceTraceAC.A,
\qquad
SourceSquareReserve.A,
\qquad
NoFreeTerminalZenoDonorChain.A,
\qquad
NoWasteLocalEnergyFlux.A.
\tag{NILEF.10}
```

## Verdict

`NoIncomingLocalizedEnergyFlux.A` is not an independent forward-gold supplier
from current inputs.

There are two exact interpretations:

1. If it means lateral no-incoming flux, it does not exclude compact terminal
   time-face atoms inside the selected packet.
2. If it includes the terminal face strongly enough to exclude the atom, it is
   just another formulation of the missing terminal strip modulus.

Therefore the branch reduces to the same non-alias suppliers:

```math
TerminalMovingPacketTraceModulus.A,
\qquad
TerminalSourceResidence.A,
\qquad
PositiveSourceTraceAC.A,
\qquad
ScaleCriticalCubicFluxReserve.A,
\qquad
SourceSquareReserve.A,
\qquad
NoFreeTerminalZenoDonorChain.A,
\tag{NILEF.11}
```

or to CM-facing conversion of the retained terminal pulse into a Pack, Part, or
Field Part/Field failure.
