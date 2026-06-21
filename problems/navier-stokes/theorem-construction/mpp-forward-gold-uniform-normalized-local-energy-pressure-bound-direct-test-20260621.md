---
theorem_id: forward-gold-uniform-normalized-local-energy-pressure-bound-direct-test-20260621
status: direct-test-complete-not-produced-pass-or-endpoint-face-exit
logical_landing_node: uniform_normalized_local_energy_pressure_bound_direct_test
edge_effect: "Tests the remaining production burden exposed by TerminalHardyNoWaste.A: a uniform normalized local energy-dissipation-pressure bound on the retained terminal heat-scale full packets. The conditional consequence is exact: this bound gives the smooth full-packet trace in L_s^(10/9), hence the terminal Hardy moment for alpha<1/10, provided the legal/sign/selector/geometry endpoint measures have matching weighted control. The direct Navier-Stokes production attempt does not close from current inputs. Physical energy, local energy, dissipation, and physical CKN/pressure mass control radius-discounted quantities on shrinking heat-scale cylinders, not the unweighted normalized bound. Thus the surviving no-exit supplier is UniformNormalizedLocalEnergyPressure.A, or an equivalent source-square / critical-strain / normalized CKN / strict no-waste theorem. Failure on a retained Pack+Part sequence is not hidden; it is exactly normalized endpoint Field/pressure-service blowup or endpoint concentration, hence routes to CM endpoint-face consumption after same-witness admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-local-energy-flux-tightness-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-normalized-ckn-carleson-packing-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-ckn-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Uniform Normalized Local Energy-Pressure Bound Direct Test

Date: 2026-06-21

## 0. Target

The terminal Hardy note reduces endpoint no-jump production to the following
uniform bound on the retained normalized heat-scale full packets:

```math
\boxed{
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2}^2
+
\|\nabla_yV_m\|_{L^2_{s,y}}^2
+
\|Q_m\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty .
}
\tag{UNP.1}
```

Call `(UNP.1)` `UniformNormalizedLocalEnergyPressure.A`.

The consumer is already proved:

```math
\boxed{
\text{(UNP.1)}
\Longrightarrow
H_m^+\in L_s^{10/9}
\Longrightarrow
\text{Hardy for every }\alpha<1/10
\Longrightarrow
\text{endpoint no-jump.}
}
\tag{UNP.2}
```

This note tests whether `(UNP.1)` is produced by installed Navier-Stokes
inputs on the actual retained terminal packets.

## 1. Exact heat-scale normalization

Let

```math
x=x_m+r_my,\qquad
t=T_m+r_m^2s,
\tag{UNP.3}
```

and use the Navier-Stokes scaling

```math
V_m(s,y)=r_m u(t,x),
\qquad
Q_m(s,y)=r_m^2p(t,x).
\tag{UNP.4}
```

Then

```math
\int_{B_1}|V_m(s,y)|^2\,dy
=
r_m^{-1}\int_{B_{r_m}}|u(t,x)|^2\,dx .
\tag{UNP.5}
```

Also

```math
\int_{-1}^{0}\int_{B_1}|\nabla_yV_m|^2\,dy\,ds
=
r_m^{-1}
\int_{T_m-r_m^2}^{T_m}\int_{B_{r_m}}|\nabla_xu|^2\,dx\,dt .
\tag{UNP.6}
```

For pressure,

```math
\int_{-1}^{0}\int_{B_1}|Q_m|^{5/3}\,dy\,ds
=
r_m^{-5/3}
\int_{T_m-r_m^2}^{T_m}\int_{B_{r_m}}|p|^{5/3}\,dx\,dt .
\tag{UNP.7}
```

So `(UNP.1)` is exactly a scale-normalized bound.  It is not the raw physical
energy, raw physical dissipation, or raw physical pressure mass.

## 2. What physical energy actually gives

The global energy inequality gives finite raw dissipation:

```math
\int_0^T\int |\nabla_xu|^2\,dx\,dt<\infty .
\tag{UNP.8}
```

On a disjoint or bounded-overlap heat-scale packet family this controls

```math
\sum_m
\int_{T_m-r_m^2}^{T_m}\int_{B_{r_m}}|\nabla_xu|^2\,dx\,dt
<\infty .
\tag{UNP.9}
```

Using `(UNP.6)`, this is

```math
\sum_m r_m
\int_{-1}^{0}\int_{B_1}|\nabla_yV_m|^2\,dy\,ds
<\infty .
\tag{UNP.10}
```

Thus physical energy gives the radius-discounted sum

```math
\sum_m r_mD_m^{ren}<\infty,
\tag{UNP.11}
```

not

```math
\sup_mD_m^{ren}<\infty
\qquad\text{or}\qquad
\sum_mD_m^{ren}<\infty .
\tag{UNP.12}
```

The same obstruction holds for the local energy trace.  A finite physical
local-energy measure can charge the \(m\)-th heat packet by only \(O(r_m)\)
while the normalized packet still has order-one terminal activity.

## 3. What physical pressure / CKN mass actually gives

Physical cubic-pressure mass controls

```math
\int
\left(|u|^3+|p|^{3/2}\right)\,dx\,dt .
\tag{UNP.13}
```

The normalized CKN charge is

```math
\mathcal C(Q_{r_m})
=
r_m^{-2}
\int_{Q_{r_m}}
\left(|u|^3+|p|^{3/2}\right)\,dx\,dt .
\tag{UNP.14}
```

Bounded overlap gives

```math
\sum_m r_m^2\mathcal C(Q_{r_m})<\infty,
\tag{UNP.15}
```

not

```math
\sum_m\mathcal C(Q_{r_m})<\infty .
\tag{UNP.16}
```

The pressure component of `(UNP.1)` has the same problem in the \(L^{5/3}\)
currency.  By `(UNP.7)`, finite physical \(L^{5/3}\) pressure mass gives a
radius-weighted statement, not a uniform normalized pressure bound.

So ordinary CKN visibility, Vitali extraction, and bounded overlap detect the
terminal packet.  They do not produce `(UNP.1)`.

## 4. The only direct PDE implication that is installed

If `(UNP.1)` is granted, interpolation gives

```math
\|V_m\|_{L^{10/3}_{s,y}}^{10/3}
\le
C
\|V_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla_yV_m\|_{L^2_{s,y}}^2 .
\tag{UNP.17}
```

Then the pressure/local-energy trace density

```math
F_m(s)
=
\int
\left(
|V_m|^3+|Q_m|^{3/2}+|V_m|^2
\right)\,dy
\tag{UNP.18}
```

satisfies

```math
\|F_m\|_{L_s^{10/9}(-1,0)}\le C.
\tag{UNP.19}
```

Since

```math
(-s)^{-\alpha}\in L^{10}(-1,0)
\quad\Longleftrightarrow\quad
\alpha<1/10,
\tag{UNP.20}
```

Hölder gives the terminal Hardy moment.  This is exactly the conditional
producer already recorded in `TerminalHardyNoWaste.A`.

## 5. Failure typing

Failure of `(UNP.1)` means at least one of the following occurs on the retained
terminal heat-scale family:

```math
\limsup_m\|V_m\|_{L_s^\infty L_y^2}=\infty,
\tag{UNP.21}
```

```math
\limsup_m\|\nabla_yV_m\|_{L^2_{s,y}}=\infty,
\tag{UNP.22}
```

or

```math
\limsup_m\|Q_m\|_{L^{5/3}_{s,y}}=\infty .
\tag{UNP.23}
```

After `Pack_Q` and `Part_{N,Q}` have been admitted on the same witness, these
are not hidden forward-gold residues.  They mean the retained endpoint field
or its pressure service has no bounded positive-thickness readout on the
normalized terminal family.

Thus the CM-facing landing is:

```math
\boxed{
\neg\text{(UNP.1)}
\quad\Longrightarrow\quad
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q},
}
\tag{UNP.24}
```

unless the pressure/incompressibility coupling itself fails before Field
readout, in which case the landing is the Part face:

```math
\boxed{
Pack_Q+\neg Part_{N,Q}.
}
\tag{UNP.25}
```

This is not a deletion of the endpoint object.  It is the endpoint-face
consumption promised by the Hardy branch.

## 6. Result

The direct test has the following exact outcome.

First, the forward no-exit supplier remains open:

```math
\boxed{
\texttt{UniformNormalizedLocalEnergyPressure.A}
}
\tag{UNP.26}
```

or one of its equivalent same-carrier forms:

```math
\boxed{
\texttt{SourceSquareReserve.A},
\quad
\texttt{SelectedCriticalStrainCarleson.A},
\quad
\texttt{NormalizedCKNCarleson.A},
\quad
\texttt{StrictNoWasteFullLoopLyapunov.A}.
}
\tag{UNP.27}
```

Second, the pass-or-exit statement is now sharp:

```math
\boxed{
\text{(UNP.1)}
\Longrightarrow
\texttt{TerminalHardyNoWaste.A}
\Longrightarrow
\texttt{FullHodgeStokesEndpointNoJump.A}.
}
\tag{UNP.28}
```

and

```math
\boxed{
\neg\text{(UNP.1)}
\Longrightarrow
\text{CM endpoint-face consumption after same-witness admission.}
}
\tag{UNP.29}
```

Therefore the Hardy route has not solved the whole forward-gold no-exit
problem.  It has reduced the last endpoint pulse to one exact fork:

```math
\boxed{
\text{uniform normalized local energy-pressure bound}
\quad\text{or}\quad
\text{endpoint Field/Part face.}
}
\tag{UNP.30}
```
