# MPP Forward-Gold Heat-Scale Throttle To Critical Element Direct Attempt

Date: 2026-06-19

## Status

Direct continuation of the participation-throttle calculation after the fixed
positive-radius case has been separated from the shrinking heat-scale case.

The fixed-radius atom is not the live obstruction.  If the packet has radius
bounded below by \(R_0>0\) and the same-fluid participation rate is bounded by
the local throttle, then a terminal window of length \(\tau\) can receive at
most \(C(R_0)\tau\) normalized feed, plus legal-tail terms.  That goes to zero
as \(\tau\downarrow0\) after legal tails are removed.

The only surviving case is the heat-scale terminal packet:

```math
r_m\downarrow0,
\qquad
\alpha_t {r_m^2\over\nu}\le |I_m|\le A_t {r_m^2\over\nu},
\qquad
\alpha_\lambda{\nu\over r_m^2}
\le
\lambda_m^+
\le
A_\lambda{\nu\over r_m^2}.
\tag{HCT.1}
```

The constants in `(HCT.1)` are fixed along the selected terminal sequence.  This
is a heat-scale comparability hypothesis, not a linear profile assumption.

This note tests whether that surviving branch automatically produces the
minimal ancient/no-waste critical element needed by the current forward-gold
architecture.  It does not.  The attempt reduces the branch to four precise
production gaps: critical-currency stability, terminal trace tightness,
local-energy/native-source identification, and compact orbit production.

## 1. Fixed positive radius really is killed

For a retained packet at a fixed physical scale \(R_0\), the local rate bound
has the schematic form

```math
\lambda^+(t)
\le
C{\nu\over R_0^2}
+Legal(t).
\tag{HCT.2}
```

Therefore every terminal strip \(I_\tau=[T-\tau,T]\) satisfies

```math
\int_{I_\tau}\lambda^+(t)\,dt
\le
C{\nu\over R_0^2}\tau
+\int_{I_\tau}Legal(t)\,dt.
\tag{HCT.3}
```

After legal exits and \(L^1_t\) legal tails are removed, the right side tends
to zero.  A fixed-radius packet cannot receive a positive terminal atom in a
vanishing time window.

This is the rigorous version of the physical statement: a real uniform throttle
plus a shrinking time window gives no jump.

## 2. The heat-scale curve removes the uniform throttle

The rate limit is scale dependent.  At radius \(r\), a heat window means

```math
\alpha_t {r^2\over\nu}
\le
\tau_r
\le
A_t {r^2\over\nu},
\tag{HCT.4}
```

and the selected strain coefficient required to feed the packet is

```math
\alpha_\lambda{\nu\over r^2}
\le
\lambda_r^+
\le
A_\lambda{\nu\over r^2}.
\tag{HCT.5}
```

On one heat window,

```math
\alpha_t\alpha_\lambda
\le
\int_{T-\tau_r}^{T}\lambda_r^+(t)\,dt
\le
A_tA_\lambda.
\tag{HCT.6}
```

So the time window shrinks, but the admissible critical feed rate grows by the
reciprocal amount.

Equivalently, if the radius follows the terminal heat scale

```math
r(t)^2\sim \nu(T-t),
\tag{HCT.7}
```

then the scale-dependent maximum rate behaves like

```math
{1\over C_h}\,{1\over T-t}
\le
{\nu\over r(t)^2}
\le
{1\over c_h}\,{1\over T-t}
\quad
\text{if }c_h\nu(T-t)\le r(t)^2\le C_h\nu(T-t).
\tag{HCT.8}
```

This is why there is no single terminal-time maximum transfer curve without an
extra lower-scale or critical-currency bound.  The supremum over shrinking heat
scales has the endpoint singularity that the fixed-radius argument avoided.

## 3. What the trilinear term is doing

The selected positive trilinear source is the local feed meter:

```math
\mathcal T_m^+
=
\int_{Q_m}
\left[
\langle S_{<m}^{loc}w_m,w_m\rangle
\right]_+
\,dxdt
=
\int_{Q_m}
\lambda_m^+ |w_m|^2\,dxdt.
\tag{HCT.9}
```

For a critical velocity packet,

```math
c_E\nu^2r_m
\le
E_m:=\int_{B_{r_m}}|w_m|^2dx
\le
C_E\nu^2r_m.
\tag{HCT.10}
```

Thus the physical amount of source fed over one heat window is at most

```math
\mathcal T_m^+
\le
A_\lambda A_t C_E\,\nu^2r_m.
\tag{HCT.11}
```

The physical energy amount goes to zero.  The normalized packet feed does not:

```math
{1\over \nu^2r_m}\mathcal T_m^+
\ge c_T
\quad\text{on a retained source-balanced feed event.}
\tag{HCT.12}
```

This is the central mismatch.  Ordinary energy accounting can lose the packet
at scale \(r_m\) because its physical energy is only \(O(r_m)\).  The
scale-normalized profile still sees an order-one event.

## 4. Attempted scalar barrier

Normalize the packet energy by

```math
A_m(t):={E_m(t)\over \nu^2r_m}.
\tag{HCT.13}
```

The packet balance has the form

```math
{d\over dt}E_m(t)
+c{\nu\over r_m^2}E_m(t)
\le
\lambda_m^+(t)E_m(t)
+Legal_m(t).
\tag{HCT.14}
```

Dividing by \(\nu^2r_m\) gives

```math
{d\over dt}A_m(t)
+c{\nu\over r_m^2}A_m(t)
\le
\lambda_m^+(t)A_m(t)
+{Legal_m(t)\over\nu^2r_m}.
\tag{HCT.15}
```

A scalar barrier would follow from a strict integrated gap:

```math
\int_{I_m}
\left(\lambda_m^+(t)-c{\nu\over r_m^2}\right)_+dt
\le
o(1).
\tag{HCT.16}
```

or from a terminal tail bound strong enough to make the last term in
`(HCT.15)` vanish uniformly.

The heat-scale source-balanced branch is exactly the case where `(HCT.16)` is
not supplied.  The feed coefficient can match the viscous drain on the same
clock:

```math
\alpha_\lambda{\nu\over r_m^2}
\le
\lambda_m^+(t)
\le
A_\lambda{\nu\over r_m^2}
\quad\text{on}\quad
\alpha_t {r_m^2\over\nu}
\le
|I_m|
\le
A_t {r_m^2\over\nu}.
\tag{HCT.17}
```

Thus the scalar barrier closes the fixed-radius and subcritical branches, but
it does not close the critical heat-scale branch.

## 5. Attempted critical-element extraction

Normalize the heat-scale packet by

```math
U_m(s,y)
:=
{r_m\over\nu}
u\left(t_m+{r_m^2\over\nu}s,\ x_m+r_my\right),
\tag{HCT.18}
```

and

```math
P_m(s,y)
:=
\left({r_m\over\nu}\right)^2
p\left(t_m+{r_m^2\over\nu}s,\ x_m+r_my\right).
\tag{HCT.19}
```

Then the rescaled equation has unit viscosity:

```math
\partial_sU_m+(U_m\cdot\nabla)U_m+\nabla P_m=\Delta U_m.
\tag{HCT.20}
```

The heat-scale feed event becomes order one in the normalized variables:

```math
\int_{Q_1^-}
\left[
\langle S_{<}^{loc}(U_m)W_m,W_m\rangle
\right]_+
dyds
\gtrsim c_0.
\tag{HCT.21}
```

Soft local-energy compactness can therefore extract a subsequential ancient
local suitable source-residue package

```math
(U,\Pi,\mu_*^{src})
\tag{HCT.22}
```

on backward cylinders.

This is still not the critical element required by the contradiction machine.
The endpoint residue may sit on the terminal face \(s=0\):

```math
\mu_*^{src}(B_1\times\{0\})>0,
\qquad
\mu_*^{src}(B_1\times[-1,-a])=0
\quad(a>0).
\tag{HCT.23}
```

Then every open negative-time strip can be regular or trivial, while the
terminal source atom survives as boundary measure.

## 6. Why minimality does not repair the gap

Try to choose the smallest surviving heat-scale obstruction by minimizing the
normalized feed, critical local energy, or selected source carrier.  The
functional being minimized is not a stable Hilbert norm.  It is localized,
weighted, lifted, positive-selected, packet-selected, and terminal.

The necessary stability statement would be

```math
\mu_{terminal}^{src,+}(u_m)
\doteq
\sum_j
\mu_{terminal}^{src,+}(U^j)
\tag{HCT.24}
```

where `\doteq` denotes the missing stability identity required under profile
decomposition.  Current orthogonality gives energy decoupling,
not selected positive source decoupling.  Cross-profile cancellation can remove
the signed partner while leaving the selected positive lobe in the terminal
record.

Therefore the minimal extraction does not currently produce a compact orbit
modulo scale, center, rotation, frame, and selector.  It produces only the
already-known soft Zeno source-residue limit.

## 7. Exact production gaps exposed by the attempt

The direct heat-scale throttle route closes if one supplies any theorem strong
enough to prevent `(HCT.1)`.  In the current language, the noncircular suppliers
are:

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\text{critical }L^5/\text{CKN terminal reserve}
}
\tag{HCT.25}
```

or

```math
\boxed{
\text{native source-square / Carleson reserve}
}
\tag{HCT.26}
```

or

```math
\boxed{
\text{TerminalLocalEnergyFluxTightness.A}
+\text{LocalEnergyFluxNativeResidueIdentity.A}
}
\tag{HCT.27}
```

or

```math
\boxed{
\text{CriticalCurrencyProfileStability.A}
+\text{CompactOrbitProduction.A}.
}
\tag{HCT.28}
```

Without one of these, the heat-scale branch remains exactly the terminal
time-face atom in normalized critical variables.  It is not a fixed-radius
rate-limit failure.

## Verdict

The user-level calculus is correct after the scale is specified:

```math
\boxed{
\text{fixed positive radius + uniform throttle}
\Longrightarrow
\text{no terminal jump}.
}
\tag{HCT.29}
```

The surviving obstruction is:

```math
\boxed{
\text{shrinking heat-scale radius + critical trilinear throttle}
\Longrightarrow
\text{order-one normalized feed with vanishing physical energy.}
}
\tag{HCT.30}
```

The direct attempt to force this branch into a minimal ancient/no-waste
contradiction does not close from current inputs.  It sharpens the required
gold theorem: prove a uniform terminal critical-currency cap, prove a no-waste
local-energy endpoint identity with terminal tightness, or prove compact
profile stability for the selected positive carrier.

At current inputs, the heat-scale branch is consumed only by the CM
Pack/Part/Field fallback when the forward-gold supplier fails.  It is not yet
excluded by forward-positive gold.
