# MPP Forward Gold MinimalZenoTerminalTraceCompactness.A Direct Test

Date: 2026-06-19

Status: direct theorem test complete; not closed from installed inputs.

## Target

The minimal donor-chain reduction leaves the possible endpoint theorem

```math
\boxed{
MinimalZenoTerminalTraceCompactness.A.
}
\tag{MZTTC.1}
```

The useful form would be:

```math
u^{(m)}(\cdot,0)\to u_\ast(\cdot,0)
\quad\text{strongly in }L^2_{\rm loc},
\tag{MZTTC.2}
```

on the selected normalized terminal packets, with enough continuity of the
selected positive local pre-Cauchy source carrier to conclude

```math
\mu_\ast^{src,+}(B_R\times\{0\})=0.
\tag{MZTTC.3}
```

Plainly: the theorem would say that the minimal Zeno chain has no hidden
endpoint slice where the selected positive source can sit after every
preterminal strip has compactified.

## What current compactness gives

The installed Zeno compactness inputs give local suitable compactness on
strictly preterminal cylinders:

```math
u^{(m)}\to u_\ast
\quad\text{strongly in }L^2_{\rm loc}
\bigl(B_R\times[-R^2,-a]\bigr)
\qquad(a>0).
\tag{MZTTC.4}
```

They also give weak gradient and pressure compactness on those open strips,
plus a local energy defect/source-residue measure after passage to a
subsequence.

This is not `(MZTTC.2)`.  The endpoint slice \(s=0\) is exactly the boundary
where the terminal atom lives.

## Endpoint pulse obstruction

The model obstruction is a sequence of normalized endpoint layers

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{MZTTC.5}
```

For every fixed \(a>0\),

```math
a_m(s)=0
\quad\text{on }[-1,-a]
\quad\text{for all sufficiently large }m.
\tag{MZTTC.6}
```

So every strictly preterminal compact cylinder sees no source layer in the
limit.  Nevertheless,

```math
a_m(s)\,ds\rightharpoonup \delta_{s=0}.
\tag{MZTTC.7}
```

Thus compactness on \(s<0\) and compactness at the terminal slice are different
theorems.  The first is installed; the second is exactly the missing
anti-atom/modulus statement.

## Energy trace does not fix the moving endpoint

For a fixed smooth Navier-Stokes solution before \(T^\ast\), the global
\(L^2\) energy has good one-sided behavior.  That fixed trace fact does not
give `(MZTTC.2)` for a moving heat-scale packet sequence.

On a selected packet

```math
x=x_m+r_my,
\qquad
t=T_m+r_m^2s,
\qquad
u(t,x)=r_m^{-1}v_m(s,y),
\tag{MZTTC.8}
```

the physical \(L^2\) mass on the packet is radius-weighted:

```math
\int_{B_{r_m}}|u(t,x)|^2\,dx
=
r_m\int_{B_1}|v_m(s,y)|^2\,dy.
\tag{MZTTC.9}
```

An order-one normalized endpoint trace for \(v_m\) therefore has only
order-\(r_m\) physical energy.  Physical energy continuity can lose this amount
as \(r_m\downarrow0\) while the normalized endpoint trace remains nonzero.

So fixed physical energy continuity does not imply strong normalized trace
compactness for the selected terminal packet.

## Aubin-Lions does not reach the endpoint without time tightness

A standard compactness route would ask for

```math
u^{(m)}\ \text{bounded in }L^2(-1,0;H^1_{\rm loc}),
\qquad
\partial_su^{(m)}\ \text{bounded in }L^1(-1,0;H^{-1}_{\rm loc}),
\tag{MZTTC.10}
```

or a comparable time-regularity bound.  This yields compactness inside
\((-1,0)\), and trace compactness at \(s=0\) only with an endpoint
time-modulus or absolute-continuity statement.

The terminal pulse `(MZTTC.5)` has bounded \(L^1_s\) mass and no uniform
endpoint modulus:

```math
\lim_{\varepsilon\downarrow0}\limsup_m
\int_{-\varepsilon}^{0}a_m(s)\,ds
=1.
\tag{MZTTC.11}
```

Thus any compactness theorem strong enough to pass from `(MZTTC.4)` to
`(MZTTC.2)` must contain one of the already isolated endpoint controls:

```math
TerminalMovingPacketTraceModulus.A,
\qquad
PositiveSourceTraceAC.A,
\qquad
TerminalSourceReverseHolder.A,
\tag{MZTTC.12}
```

or a source-square/no-waste substitute.

## Positive source carrier continuity is a second missing theorem

Even if `(MZTTC.2)` were available for velocity, the selected source carrier is
not a continuous functional of the endpoint \(L^2\) trace alone.  The retained
carrier contains localization, projection, weights/lifts, packet selection, and
positive-part extraction:

```math
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+.
\tag{MZTTC.13}
```

The local energy defect measure is assembled from the full signed balance,
while the source wall keeps a selected positive piece.  A cancellation partner
can lie in a different packet, collar, projection commutator, legal spill, or
unselected donor branch.

Therefore the endpoint trace compactness theorem also needs the same
same-ledger identity already exposed in the no-waste route:

```math
LocalEnergyFluxNativeResidueIdentity.A
\quad\text{or}\quad
SelectedPositivePolarSaturation.A
\quad\text{or}\quad
NoFreeTerminalZenoDonorChain.A.
\tag{MZTTC.14}
```

Velocity trace compactness without carrier continuity would only say that the
field trace behaves well.  It would not prove that the selected positive source
atom vanishes.

## Minimality does not supply the endpoint modulus

Minimal unpaid-chain selection removes legal exits, finite donor trees, and
retained signed partners under the conditional finite-graph payment package.
It does not give a lower bound on the terminal layer thickness

```math
\theta_m:=\tau_m/r_m^2.
\tag{MZTTC.15}
```

The bad case is precisely

```math
\theta_m\downarrow0.
\tag{MZTTC.16}
```

Minimality can select the smallest surviving endpoint mass.  It does not force
that mass to occupy a positive fraction of the heat-time interval.  That
fraction is the missing residence/modulus theorem.

## Verdict

`MinimalZenoTerminalTraceCompactness.A` is not proved from installed inputs.

The direct test gives the exact reduction:

```math
\boxed{
MinimalZenoTerminalTraceCompactness.A
\Leftarrow
TerminalMovingPacketTraceModulus.A
\text{ or }
PositiveSourceTraceAC.A
\text{ or }
TerminalSourceReverseHolder.A
\text{ or }
SourceSquareReserve.A
\text{ or }
NoWasteLocalEnergyFlux.A
}
\tag{MZTTC.17}
```

together with the selected-carrier continuity bridge

```math
\boxed{
LocalEnergyFluxNativeResidueIdentity.A
\text{ / }
SelectedPositivePolarSaturation.A
\text{ / }
NoFreeTerminalZenoDonorChain.A.
}
\tag{MZTTC.18}
```

So endpoint trace compactness is not a new independent gold supplier.  It is a
clean endpoint formulation of the same terminal strip modulus and same-carrier
saturation problem.

When it fails, the failure is not invisible.  It is exactly the terminal trace
defect that must be routed by `MinimalZenoTraceDefectVisibility.A`, then split
into the nonzero-flux native-carrier branch or the zero-flux Zeno profile
production branch.
