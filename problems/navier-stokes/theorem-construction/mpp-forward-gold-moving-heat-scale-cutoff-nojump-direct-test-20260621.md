---
theorem_id: forward-gold-moving-heat-scale-cutoff-nojump-direct-test-20260621
status: direct-test-complete-forward-gold-not-proved
logical_landing_node: unweighted_terminal_critical_action_reserve
edge_effect: "Tests whether a genuinely moving heat-scale cutoff or annular wall supplies the missing endpoint no-jump theorem. The exact moving-cutoff local energy identity is installed. After heat-scale normalization, every physical ledger term still carries one radius factor before normalization; after division by that factor, the normalized identity is critical but sign-indefinite. A moving wall gives shell accounting, not endpoint uniform integrability of the selected positive carrier. The branch returns to UnweightedTerminalCriticalActionReserve.A, same-carrier source-square/CKN/critical-strain reserve, strict no-waste, selected carrier identity plus saturation, or exact profile production."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-heat-scale-pulse-master-normal-form-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-pressure-flux-throttle-supplier-merge-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-local-energy-flux-tightness-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-moving-packet-trace-modulus-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-localized-flux-commutator-with-reserve-attempt-20260619.md
---

# MPP Forward-Gold Moving Heat-Scale Cutoff No-Jump Direct Test

Date: 2026-06-21

## Status

Direct test complete.  A moving heat-scale cutoff gives the correct shell
accounting identity, but it does not prove the endpoint no-jump theorem.

The moving wall sees how energy enters, leaves, or is left behind by the
shrinking packet.  It does not force endpoint uniform integrability of the
actual selected positive native carrier.

## 1. Exact moving-cutoff ledger

For a smooth preterminal Navier--Stokes solution, set

```math
e={1\over2}|u|^2,
\qquad
F=(e+p)u-\nu\nabla e .
\tag{MHC.1}
```

Then

```math
\partial_t e+\nu|\nabla u|^2+\nabla\cdot F=0 .
\tag{MHC.2}
```

For any nonnegative moving cutoff \(\phi(t,x)\),

```math
{d\over dt}\int e\phi\,dx
+
\nu\int \phi|\nabla u|^2\,dx
=
\int e(\partial_t\phi+\nu\Delta\phi)\,dx
+
\int (e+p)u\cdot\nabla\phi\,dx .
\tag{MHC.3}
```

This is the exact participation ledger for a moving packet.  The four terms are
interior energy change, viscous dissipation, moving/diffusive wall exchange, and
pressure-convection flux.

## 2. Heat-scale normalization

Let

```math
x=x_m+r_my,
\qquad
t=T_m+r_m^2s,
\qquad
u(t,x)=r_m^{-1}v_m(s,y),
\qquad
p(t,x)=r_m^{-2}q_m(s,y),
\tag{MHC.4}
```

and choose a moving heat-scale cutoff

```math
\phi_m(t,x)
=
\psi_m\!\left({t-T_m\over r_m^2},{x-x_m\over r_m}\right).
\tag{MHC.5}
```

Integrating `(MHC.3)` over \(s\in[-1,0]\) and dividing by the common physical
factor \(r_m\) gives the normalized identity

```math
\begin{aligned}
&\int {1\over2}|v_m(0)|^2\psi_m(0)\,dy
-
\int {1\over2}|v_m(-1)|^2\psi_m(-1)\,dy
+
\nu\int_{-1}^{0}\int\psi_m|\nabla_yv_m|^2\,dy\,ds
\\
&\qquad =
\int_{-1}^{0}\int {1\over2}|v_m|^2
(\partial_s\psi_m+\nu\Delta_y\psi_m)\,dy\,ds
+
\int_{-1}^{0}\int
\left({1\over2}|v_m|^2+q_m\right)v_m\cdot\nabla_y\psi_m\,dy\,ds .
\end{aligned}
\tag{MHC.6}
```

So the moving heat-scale ledger is exact in normalized variables.  In physical
variables, every term in `(MHC.6)` was multiplied by \(r_m\).

That is the radius discount:

```math
\text{finite physical moving-wall ledger}
\quad\Longrightarrow\quad
\sum_m r_m A_m<\infty,
\tag{MHC.7}
```

not

```math
\sum_m A_m<\infty .
\tag{MHC.8}
```

The implication `(MHC.7) -> (MHC.8)` is false when \(r_m\downarrow0\).

## 3. Moving annulus does not create a sign

If the cutoff is an annular wall

```math
\psi_m(s,y)=\chi\!\left({|y|\over R(s)}\right),
\tag{MHC.9}
```

then

```math
\partial_s\psi_m
=
-{R'(s)\over R(s)}\,y\cdot\nabla_y\psi_m .
\tag{MHC.10}
```

This term is the moving-wall shell term.  It records which side of the moving
annulus the energy occupies.  It is not a one-sided lower bound for the selected
positive source carrier, because `(MHC.6)` also contains

```math
\int
\left({1\over2}|v_m|^2+q_m\right)v_m\cdot\nabla_y\psi_m
\tag{MHC.11}
```

and

```math
\nu\int {1\over2}|v_m|^2\Delta_y\psi_m .
\tag{MHC.12}
```

The pressure-convection term is sign-indefinite, and the diffusive cutoff term
has no fixed sign.  Thus the moving annulus gives exact shell debt accounting,
not a coercive endpoint no-jump inequality.

## 4. Material cutoff cancellation is not enough

One may choose a solution-dependent material cutoff satisfying

```math
\partial_s\psi_m+v_m\cdot\nabla_y\psi_m=0 .
\tag{MHC.13}
```

This cancels the pure kinetic transport part in `(MHC.6)`.  The identity still
contains

```math
\int q_m v_m\cdot\nabla_y\psi_m,
\qquad
\nu\int {1\over2}|v_m|^2\Delta_y\psi_m,
\tag{MHC.14}
```

plus the admissibility, projection, commutator, and modulation terms created by
making the test move with the solution.  These are exactly the pressure-conormal,
cutoff, and gauge terms isolated in the reserved commutator and no-waste notes.

So material motion can improve the bookkeeping frame.  It does not supply a
lower-bounded Lyapunov drop for the unweighted critical action.

## 5. Endpoint support can avoid the wall

The sharp obstruction is not only sign.  A terminal pulse can sit where the
moving cutoff is identically one.

Let \(\rho\in C_c^\infty(B_{1/2})\), \(\rho\ge0\), and \(\int\rho\,dy=1\).
Let

```math
d\mu_m^{+}
=
\rho(y)\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)\,dy\,ds,
\qquad
\tau_m\downarrow0 .
\tag{MHC.15}
```

For every moving cutoff with \(\psi_m\equiv1\) on \(B_{1/2}\) near \(s=0\),
all wall derivatives vanish on the support of \(\mu_m^+\), while

```math
\mu_m^{+}(B_{1/2}\times[-1,0])=1
\tag{MHC.16}
```

and

```math
\lim_{\theta\downarrow0}\limsup_m
\mu_m^{+}(B_{1/2}\times[-\theta,0])=1 .
\tag{MHC.17}
```

This is not a Navier--Stokes counterexample.  It is the exact measure-level
countermodel showing what the moving-cutoff identity alone cannot rule out: a
terminal positive carrier that is created or retained inside the packet rather
than paid through the annular wall.

To exclude `(MHC.15)`, one needs an additional theorem identifying this positive
carrier with a no-waste local-energy defect, a same-carrier source-square or
CKN/critical-strain reserve, a selected signed saturation theorem, or exact
profile production.

## 6. Direct conclusion

The moving heat-scale cutoff proves:

```math
\boxed{
\text{all packet energy/source motion is visible in the moving local-energy
ledger.}
}
\tag{MHC.18}
```

It does not prove:

```math
\boxed{
\text{the selected positive native carrier has endpoint uniform integrability.}
}
\tag{MHC.19}
```

The exact remaining production theorem is still

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
carrier.}
}
\tag{MHC.20}
```

Equivalent noncircular suppliers are the already isolated ones:
same-carrier tail UI, same-carrier source-square domination, selected
critical-strain or normalized CKN terminal Carleson control, strict rescaled
no-waste Lyapunov drop, selected polar saturation plus no-free terminal Zeno
donor chains, or exact minimal Zeno profile production.

## Verdict

`MovingHeatScaleCutoffNoJump.A` is not an independent forward-gold supplier from
current inputs.  It installs the exact moving-shell ledger and shows that the
endpoint pulse survives unless one of the unweighted same-carrier reserve
theorems is proved.
