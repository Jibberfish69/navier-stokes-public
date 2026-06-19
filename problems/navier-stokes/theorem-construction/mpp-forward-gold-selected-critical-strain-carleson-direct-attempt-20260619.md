# MPP Forward-Gold SelectedCriticalStrainCarleson.A Direct Attempt

Date: 2026-06-19

## Status

Direct attempt on the coercive supplier exposed by the heat-scale throttle
calculation:

```math
\boxed{
\textbf{SelectedCriticalStrainCarleson.A}
}
\tag{SCC.0}
```

The target is a selected-family critical strain bound strong enough to charge
every source-balanced heat-scale feed event:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|S_{<j_P}^{loc}|^{5/2}\,dxdt
\le
C+o_N(1)
\quad\text{with terminal tail depletion after legal exits.}
\tag{SCC.1}
```

If `(SCC.1)` were available, each critical feed event would pay an order-one
bill, so an infinite terminal Zeno feed chain would be impossible.

This note tests whether `(SCC.1)` follows from the actual Navier--Stokes
energy/local-energy/pressure/strain equations.  It does not close from current
inputs.

## 1. What `(SCC.1)` would buy

For the selected positive trilinear carrier,

```math
\mathcal T_P^+
=
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
dxdt,
\tag{SCC.2}
```

Holder gives

```math
\mathcal T_P^+
\le
\|S_{<j_P}^{loc}\|_{L^{5/2}(Q(P))}
\|w_{j_P}\|_{L^{10/3}(Q(P))}^2.
\tag{SCC.3}
```

The energy class supplies the velocity-side exponent \(10/3\).  A selected
\(L^{5/2}\) strain Carleson estimate would supply the missing coefficient-side
exponent.  This is the correct coercive shape.

## 2. Energy and local energy do not supply it

The energy inequality gives

```math
u\in L^\infty_tL^2_x,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^{10/3}_{t,x}.
\tag{SCC.4}
```

This gives

```math
S\in L^2_{t,x},
\tag{SCC.5}
```

not

```math
S\in L^{5/2}_{t,x}.
\tag{SCC.6}
```

The heat-scale counterexample shape is represented by the exact packet
normalization

```math
Q_j=B_{r_j}\times I_j,
\qquad
\alpha_t{r_j^2\over\nu}\le |I_j|\le A_t{r_j^2\over\nu},
\qquad
\alpha_S{\nu\over r_j^2}\le |S|\le A_S{\nu\over r_j^2}
\quad\text{on the selected active subset,}
\tag{SCC.7}
```

one has

```math
c_2\nu r_j
\le
\int_{Q_j}|S|^2\,dxdt
\le
C_2\nu r_j,
\tag{SCC.8}
```

but

```math
c_{5/2}\nu^{3/2}
\le
\int_{Q_j}|S|^{5/2}\,dxdt
\le
C_{5/2}\nu^{3/2}.
\tag{SCC.9}
```

Thus finite energy and finite dissipation permit a geometric Zeno sequence at
the \(L^2\)-strain level.

The local energy inequality has the same limitation.  It gives local \(L^2\)
energy, local \(L^2\) gradient dissipation, and pressure/convection flux terms.
It does not upgrade the selected strain exponent by the missing half-power.

## 3. Strain equation test

Let \(S=(\nabla u+\nabla u^T)/2\) and let \(\Omega\) be the antisymmetric part
of \(\nabla u\).  Along the material flow, the unlocalized strain equation can
be written in the decomposed form

```math
D_tS-\nu\Delta S
=
-(S^2+\Omega^2)
-\nabla^2p
+
\text{trace correction}.
\tag{SCC.10}
```

After projection to the near/low band used by the selected packet calculus,
this becomes the same split already isolated in the no-freeze branch:

```math
D_tS^{near}
=
\nu\Delta S^{near}
+
\mathcal N^{near}
+
\mathcal P^{near}
+
\mathcal C^{near}.
\tag{SCC.11}
```

The heat piece is absorbable only in the subparabolic regime.  On the
parabolic-rate complement it is precisely the critical feed event:

```math
\|S^{near}\|_\infty
\ge
c_S\nu r_j^{-2}.
\tag{SCC.12}
```

The source and pressure pieces have no sign.  They can sustain the selected
expanding eigendirection unless a separate source-current, pressure-residue, or
alignment theorem is proved.

The frozen aligned model records the obstruction:

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
n=e_1.
\tag{SCC.13}
```

Here the selected direction sees positive strain, trace-free structure is
respected, and no frame rotation is forced.  The strain equation does not by
itself convert this positive selected lobe into an \(L^{5/2}\) Carleson payment
or into the native positive source carrier.

Thus the strain equation reduces `(SCC.1)` to the already open dynamic gates:

```math
\text{pressure/source-current no-sustain}
\quad\text{or}\quad
\text{active alignment/no-incoming cost}
\quad\text{or}\quad
\text{source-residence}.
\tag{SCC.14}
```

It does not prove selected critical strain Carleson directly.

## 4. Pressure and Calderon--Zygmund test

Pressure satisfies

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\tag{SCC.15}
```

so pressure is controlled on each time slice by singular integral estimates.
This gives critical pressure/velocity currencies such as the CKN quantity

```math
{1\over r^2}
\int_{T-r^2}^{T}
\int_{B_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt.
\tag{SCC.16}
```

It does not produce smallness of `(SCC.16)` on selected terminal packets.  The
direct cubic reserve attempt already showed that interpolation rewrites the
pressure/convection flux in exactly this critical currency.  Spending CKN
smallness here would assume the conclusion.

So the pressure route returns to:

```math
\text{ScaleCriticalCubicFluxReserve.A}
\quad\text{or}\quad
\text{retained critical concentration as CM Pack/Part/Field readout}.
\tag{SCC.17}
```

It does not prove `(SCC.1)` as a forward-gold supplier.

## 5. Parabolic smoothing test

For every preterminal time \(t<T_\ast\), smoothness gives finite higher norms
on a short interval.  That does not yield a uniform terminal critical-strain
bound.  The heat kernel gains derivatives only after paying the nonlinear
Duhamel term, and the Duhamel term contains the same critical source:

```math
\nabla e^{\nu(t-s)\Delta}\mathbb P\nabla\cdot(u\otimes u).
\tag{SCC.18}
```

On a heat-scale terminal window, this term is scale-invariant.  Without a
terminal modulus, source-square reserve, or critical norm bound, parabolic
smoothing restates the local existence mechanism and does not stop a Zeno
sequence whose lifespans shrink with the scale.

## 6. Bounded-overlap selection test

The selected family \(\mathcal F_N\) has bounded overlap at each scale.  That is
not enough for `(SCC.1)`.

For dyadic heat-scale packets with \(r_j=2^{-j}\), the energy-level strain cost
can satisfy

```math
\sum_j
\int_{Q_j}|S|^2\,dxdt
\le
C_2\sum_j \nu2^{-j}
<\infty,
\tag{SCC.19}
```

while the critical strain cost satisfies

```math
\sum_j
\int_{Q_j}|S|^{5/2}\,dxdt
\ge
c_{5/2}\sum_j\nu^{3/2}
=\infty.
\tag{SCC.20}
```

Bounded overlap prevents double counting.  It does not upgrade \(L^2\) into
\(L^{5/2}\), and it does not supply terminal tail depletion.

## 7. Conditional theorem that is actually true

The following conditional statement is valid:

```math
\boxed{
\text{SelectedCriticalStrainCarleson.A}
\Longrightarrow
\text{no unpaid terminal heat-scale feed chain.}
}
\tag{SCC.21}
```

Equivalently, a global or selected terminal-tail bound

```math
\int_{T_\ast-\varepsilon}^{T_\ast}
\int |\nabla u|^{5/2}\,dxdt
\to0
\quad(\varepsilon\downarrow0)
\tag{SCC.22}
```

would rule out infinitely many retained critical feed events after the legal
terms are removed.

But `(SCC.22)` is a continuation-strength critical norm.  It is not a
consequence of the installed energy, local energy, pressure, enstrophy, or
bounded-overlap packet inputs.

## Verdict

`SelectedCriticalStrainCarleson.A` is the right coercive supplier for the
heat-scale rate-limit picture, but the direct proof from current
Navier--Stokes inputs fails.

The failure is exact:

```math
\boxed{
\text{energy/local energy give }L^2_{t,x}\text{ strain, while the terminal
heat-scale feed requires }L^{5/2}_{t,x}\text{ strain.}
}
\tag{SCC.23}
```

The remaining noncircular forward-gold suppliers are therefore:

```math
\boxed{
\text{Native source-square / Carleson reserve}
}
\tag{SCC.24}
```

or

```math
\boxed{
\text{critical }L^5\text{ velocity / CKN cubic reserve with terminal
depletion}
}
\tag{SCC.25}
```

or

```math
\boxed{
\text{dynamic no-sustain / source-residence theorem for the frozen aligned
strain packet.}
}
\tag{SCC.26}
```

At the current route resolution, selected critical strain is not a new
independent closure.  It is the clean coercive exponent that identifies why the
energy-level throttle is short by one half-power.
