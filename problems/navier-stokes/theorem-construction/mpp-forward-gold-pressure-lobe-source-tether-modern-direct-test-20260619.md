# MPP Forward-Gold PressureLobeSourceTether.A Modern Direct Test

Date: 2026-06-19

## Status

Direct modern test complete.  The pressure-lobe/source tether is not a
stand-alone forward-gold anti-atom theorem.  Even a perfect carrier tether
identifies where the pressure lobe lives; it does not forbid that carrier from
charging the terminal time face.

This note updates the older pressure-lobe and pressure-sustain residue attempts
against the exact terminal heat-scale pulse now isolated in the time-face
branch.

## 1. What the tether can mean

The older pressure graph asks for an implication of the form

```math
PressureLobeSourceTether.A:
\quad
\text{interior missing pressure lobe}
\Longrightarrow
\text{native same-fluid source/donor edge or legal loss}.
\tag{PLSTM.1}
```

At the measure level, the strongest useful carrier version would be

```math
\mu_m^{press,+}
\le
C\mu_m^{src,+}
+Legal_m+o_m(1)
\tag{PLSTM.2}
```

on the retained interior terminal packet family.

The forward-gold terminal anti-atom needs more than `(PLSTM.2)`.  It needs a
time-spread, square, or no-waste conclusion such as

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\mu_m^{src,+}
\left(
Q_m\cap\{T_m-\varepsilon r_m^2<t\le T_m\}
\right)
=0,
\tag{PLSTM.3}
```

or the source-square / residual refill estimate

```math
\int_I 2^{-j}\left(\Phi_j^+(t)\right)^2dt
\le
\text{tail}+\text{legal}.
\tag{PLSTM.4}
```

The question is whether the pressure-lobe tether itself supplies `(PLSTM.3)` or
`(PLSTM.4)`.

## 2. Exact terminal pressure-lobe pulse

Take a separated packet

```math
u_m(t,x)=a_m(t)U_m(x),
\qquad
a_m(t)=\tau_m^{-1/3}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\tau_m\downarrow0.
\tag{PLSTM.5}
```

For the nonlinear pressure part,

```math
p_m(t,x)-p_{m,h}(t,x)
=
a_m(t)^2R_iR_j(U_{m,i}U_{m,j})(x).
\tag{PLSTM.6}
```

Thus a pressure-work or pressure-lobe readout has time factor \(a_m^3\):

```math
\mathcal J_m(t)
=
a_m(t)^3
\int
R_iR_j(U_{m,i}U_{m,j})\,U_m\cdot\nabla\phi\,dx.
\tag{PLSTM.7}
```

Choose a smooth compactly supported divergence-free profile \(U_m\) and cutoff
\(\phi\) for which the spatial constant in `(PLSTM.7)` is nonzero.  If its sign
is negative, replace \(U_m\) by \(-U_m\).  The pressure factor is even in \(U_m\)
and the velocity factor is odd, so the sign of `(PLSTM.7)` flips.

Then the selected positive pressure lobe has fixed mass on a vanishing terminal
layer:

```math
\int_{T_m-\tau_m}^{T_m}[\mathcal J_m(t)]_+dt
=
c_U>0,
\tag{PLSTM.8}
```

because

```math
a_m(t)^3
=
\tau_m^{-1}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\int a_m(t)^3dt=1.
\tag{PLSTM.9}
```

As \(m\to\infty\), this time marginal converges to a terminal atom:

```math
a_m(t)^3dt
\rightharpoonup
\delta_{T^*}.
\tag{PLSTM.10}
```

## 3. Why carrier tether does not kill the atom

Suppose the strongest carrier tether `(PLSTM.2)` is granted.  It is still
compatible with a source carrier of the same form:

```math
d\mu_m^{src,+}
=
a_m(t)^3\rho_m(x)\,dxdt.
\tag{PLSTM.11}
```

Then

```math
\mu_m^{press,+}\ll\mu_m^{src,+}
\tag{PLSTM.12}
```

can hold perfectly, while

```math
\mu_m^{src,+}
\rightharpoonup
\rho_\ast(x)\,dx\otimes\delta_{t=T^*}.
\tag{PLSTM.13}
```

So pressure/source carrier identification gives visibility of the terminal
atom, not exclusion of the terminal atom.

The same example fails every super-\(L^1_t\) residence estimate:

```math
\|a_m^3\|_{L^p_t}
=
\tau_m^{1/p-1}
\longrightarrow\infty,
\qquad p>1.
\tag{PLSTM.14}
```

It also shows why first-moment source bookkeeping is too weak:

```math
\int a_m^3dt=1
\tag{PLSTM.15}
```

does not control `(PLSTM.14)` or any source-square estimate.

## 4. Consequence for the old pressure route

The older notes correctly show that pressure Poisson ellipticity, angular
Calderon-Zygmund cancellation, strain-equation rewriting, and compactness do
not prove the native source-current bridge by themselves.  This modern test
adds a sharper conclusion:

even if the native bridge is supplied, it is only a carrier bridge unless it
also gives time residence, source-square coercivity, signed saturation, or
no-waste rigidity.

Thus the pressure route can close only through one of the strengthened
packages:

```math
PressureLobeSourceTether.A
+
TerminalSourceResidence.A,
\tag{PLSTM.16}
```

```math
PressureLobeSourceTether.A
+
SourceSquareReserve.A,
\tag{PLSTM.17}
```

```math
PressureLobeSourceTether.A
+
NoFreeTerminalZenoDonorChain.A,
\tag{PLSTM.18}
```

or

```math
CriticalTerminalElementExtraction.A
+
NoWasteLocalEnergyFlux.A
+
CompactAncientRigidity.A.
\tag{PLSTM.19}
```

## Verdict

`PressureLobeSourceTether.A` is not enough by itself to exclude the terminal
time-face pulse.

It can at most identify the pressure lobe with the same native source carrier.
The live forward-gold anti-atom problem remains the stronger one: prove that
the selected same-fluid carrier cannot place order-one positive source/pressure
mass on a vanishing heat-time layer.  That is exactly the source-residence,
source-square, no-free-Zeno-chain, or strict no-waste/critical-element wall.

In CM-facing language, failure of the stronger theorem is not hidden.  It is a
retained terminal heat-scale pressure/source pulse that must be sorted through
the Pack/that Part/Field failure machinery rather than counted as a forward-gold
no-jump proof.
