# MPP PressureSourceTimeFaceSpread.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. Pressure/Leray coupling gives the sharpest new candidate direction, and the direct terminal time-spread estimate is absent from current inputs.

## Target

The sharpened anti-atom theorem is

```math
\boxed{PressureSourceTimeFaceSpread.A}
```

with target estimate

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
```

This estimate kills the terminal time-face source atom in `B_ASAC^closed`.

## Input structure

The branch has:

```text
same-fluid terminal carrier;
zero ASAC defect;
paid legal exits;
finite donor telescoping;
positive native source residue at the terminal face;
zero-radius `not Pack_Q` diagnostic placement.
```

The pressure/Leray channel is the only candidate outside the six audited doors.

## Attempt 1: pressure elliptic smoothing gives temporal spread

Pressure is recovered at each time through an elliptic operator applied to quadratic velocity-gradient data. This gives spatial nonlocal coupling at the same time slice.

The target asks for temporal spread away from `s=0`. Elliptic spatial smoothing at fixed `s` leaves a measure concentrated at the terminal time face compatible with the equation.

The model

```math
d\mu_m^{src}(y,s)=\rho(y)m\mathbf 1_{(-1/m,0]}(s)dy ds
```

can generate pressure-side objects on the same shrinking time layer. Spatial spreading of the pressure kernel changes the `y` distribution, while the `s` support remains terminal.

So elliptic pressure coupling supplies no terminal time modulus by itself.

## Attempt 2: pressure-source absolute continuity kills the atom

Assume pressure residue is absolutely continuous with respect to native source residue. This can bind pressure and source to the same carrier.

Absolute continuity alone permits both measures to charge the same terminal time face:

```math
\mu_*^{press}\ll\mu_*^{src},
\qquad
\mu_*^{src}=\rho(y)dy\otimes\delta_{s=0}.
```

Thus `PressureSourceAC.A` needs a spread estimate in addition to carrier absolute continuity.

## Attempt 3: Leray projection smears time

The Leray projector is spatial. Packet localization and pressure projection can redistribute spatial carriers and signs. They do not create temporal residence.

After terminal positive selection, a Leray tether that reaches only signed source-current control returns to `TerminalWeightedNoFreeSink.A_ind` or PRD. A tether that kills the atom must add terminal time-face spread. Current inputs supply no such addition.

## Attempt 4: pressure sustain forces native source spread

Pressure sustain may indicate a persistent quadratic-gradient channel. To kill `B_ASAC^closed`, persistence must force native source mass on earlier time slabs or a super-`L^1_t` source marginal.

The existing pressure/Hessian route records conditional near-band source-current support. It does not supply the needed native marginal modulus.

## Verdict

The direct theorem

```math
PressureSourceTimeFaceSpread.A
```

fails from current inputs.

The pressure/Leray direction remains the sharp continuation, with three smaller subtargets:

```text
PressureCarrierTrace.A
EllipticTimeSmearing.A
FinitePacketLeraySourceAnchoring.A
```

Each must produce the displayed epsilon-modulus for `\mu_m^{src}`. Carrier binding or spatial smoothing alone is insufficient.## Loop continuation audit: ChatGPT 2026-05-17

This run rechecked `PressureTimeFaceSpread.A` after `PressureSourceAC.A / LocalizedLeraySourceTether.A_ind` stayed open.

The prior verdict stands. Pressure/Leray coupling binds spatial carriers and signed partner structure at each time slice. It does not supply an `\varepsilon`-modulus for native positive source mass in terminal strips:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

The endpoint time-marginal witness

```math
\rho(y)m\mathbf 1_{(-1/m,0]}(s)dy ds
```

remains compatible with spatial elliptic pressure recovery, pressure/source absolute continuity, and spatial Leray projection. Each mechanism can stay supported on the same shrinking heat-time layer.

Therefore `PressureTimeFaceSpread.A` remains open. The next item in this continuation is `BASACLocalEnergyTraceNoPositiveJump.A`.
