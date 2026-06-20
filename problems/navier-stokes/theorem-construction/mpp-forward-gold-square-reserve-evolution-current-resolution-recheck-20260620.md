---
theorem_id: forward-gold-square-reserve-evolution-current-resolution-recheck-20260620
status: current-resolution-recheck-complete-not-proved
logical_landing_node: square_reserve_evolution_current_resolution
edge_effect: "Rechecks SquareReserveEvolution.A after the selected participation square-budget, square parent-or-charge, principal-gain, donor-spreading, and active-height tests. The older dynamic square-reserve obstruction is still the exact one: a same-unit evolution law for the selected square reserve is not supplied by first moments, child-mass parent-drain, residual adjoint charge, heat-window firstness, or linear donor balance. The route returns to UnweightedTerminalCriticalActionReserve.A or an equivalent same-carrier square-strength producer."
parents:
  - problems/navier-stokes/theorem-construction/mpp-square-reserve-evolution-direct-solve-attempt-20260506.md
  - problems/navier-stokes/theorem-construction/mcp-squarereserveevolution-a-squarereserveevolution-a-direct-dynamic-reserve-attempt-a41ab75850.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-parent-or-charge-for-reserve-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-principal-gain-square-height-thickness-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-heat-scale-pulse-master-normal-form-20260620.md
downstream_consequence: "Do not count SquareReserveEvolution.A as a remaining smaller bridge below the terminal heat-scale pulse. At current resolution it is equivalent to charging principal gain in square units, proving DonorReserveAdjointTrace.A, proving ActiveWindowHeight.A/selected-height plus log-tail, or proving the selected participation square budget itself."
---

# MPP Forward-Gold Square Reserve Evolution Current-Resolution Recheck

Date: 2026-06-20

## Status

Current-resolution recheck complete.  `SquareReserveEvolution.A` is not proved
from the installed Navier-Stokes inputs.

The older square-reserve attempts were correct, but they predated the later
selected participation square-budget, square parent-or-charge, principal-gain,
square spreading, and master heat-scale normal-form tests.  This note checks
that the theorem has not become smaller after those refinements.

It has not.  The current form of `SquareReserveEvolution.A` is exactly a
same-unit square parent-or-charge theorem for the selected terminal reserve.

## 1. Target at current resolution

Let

```math
T_k(t)
:=
\sum_{\ell>k+4}D_\ell(t)
\tag{SRE.1}
```

and

```math
\mathcal R_N(W)
:=
\int_W
\sum_{k>N}2^kT_k(t)^2\,dt .
\tag{SRE.2}
```

The desired square evolution theorem is:

```math
\boxed{
\mathcal R_N(W)
\le
Charge_N^{sq}(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
}
\tag{SRE.3}
```

At current resolution this is the same theorem as
`SquareParentOrChargeForReserve.A` in the shell-tail currency.

It would close the selected square branch because first square-window selection
removes the earlier order-one parent term.  The direct recheck asks whether
`(SRE.3)` follows from the installed first-moment tail, normalized-adjoint
parent-drain package, residual square charge, heat-window firstness, or linear
donor balance.

It does not.

## 2. First-moment tail still does not imply square evolution

The available energy/dissipation ledger controls the first moment

```math
F_N(W)
:=
\int_W\sum_{\ell>N}D_\ell(t)\,dt .
\tag{SRE.4}
```

The square reserve is quadratic and high-frequency weighted.  On a one-shell
heat pulse, take

```math
h_m=2^{-2m},
\qquad
I_m=(T-h_m,T],
\qquad
A_m=2^{-3m/2},
\tag{SRE.5}
```

and

```math
D_{m+5}(t)
=
A_mh_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\quad(\ell\ne m+5).
\tag{SRE.6}
```

Then

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt
=A_m\to0,
\tag{SRE.7}
```

while the \(k=m\) square reserve is fixed:

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1.
\tag{SRE.8}
```

Thus a dynamic theorem for `(SRE.2)` cannot be derived from first-moment
dissipation tail control, even on the natural heat window.

## 3. Child-mass parent-drain still does not evolve the square reserve

The normalized-adjoint parent-drain package gives a dynamic parent-or-charge
law for child packet mass,

```math
M(T)
=
|\langle w_j(t_+),\chi_T(t_+)\rangle|^2,
\tag{SRE.9}
```

with residual square charge.  The square reserve `(SRE.2)` is a donor/source
coefficient square, not the child mass.

`ParentSquareEmbed.A` gives the Bessel direction:

```math
\|B A\|_{\ell^2}^2
\le
C\|A\|_{\ell^2}^2+o_N(1).
\tag{SRE.10}
```

The square-evolution route needs the inverse direction on the selected donor
cloud:

```math
\|A\|_{\ell^2}^2
\le
C\|B A\|_{\ell^2}^2
+Loss+o_N(1).
\tag{SRE.11}
```

That inverse theorem is `DonorReserveAdjointTrace.A`, and it is not installed.
The finite model

```math
B(a_1,a_2)=a_1-a_2,
\qquad
A=(1,1)
\tag{SRE.12}
```

has \(\|A\|_{\ell^2}^2=2\) and \(BA=0\).  Therefore the child trace can vanish
while donor square reserve survives, unless a no-null-source or polar/legal
saturation theorem is added.

## 4. Residual square charge does not charge principal gain

The sharper current-resolution obstruction is the principal-gain normal form.
Let

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
w'(t)-\lambda^2w(t)=0,
\qquad
w(0)=\lambda^{-3/4}.
\tag{SRE.13}
```

Then

```math
w(t)=\lambda^{-3/4}e^{\lambda^2t},
\qquad
R_\lambda=0.
\tag{SRE.14}
```

The selected principal-gain current is

```math
\Pi_\lambda^{part,+}(t)
=
\lambda^2w(t)^2
=
\lambda^{1/2}e^{2\lambda^2t}.
\tag{SRE.15}
```

Its square reserve over one heat window is exact:

```math
\lambda\int_0^{\lambda^{-2}}
\left(\Pi_\lambda^{part,+}(t)\right)^2dt
=
{e^4-1\over4}.
\tag{SRE.16}
```

The residual charge is zero and the boundary packet masses vanish:

```math
Charge_\lambda^{sq}=0,
\qquad
w(0)^2=\lambda^{-3/2},
\qquad
w(\lambda^{-2})^2=e^2\lambda^{-3/2}.
\tag{SRE.17}
```

Thus any square evolution theorem whose charge is only weighted residual
square and whose parent term is only child boundary mass fails on the current
normal form.  The theorem must charge principal gain itself in square units or
prove an equivalent square-strength mechanism.

## 5. Firstness and linear donor balance are not dynamic square laws

Choosing the first dyadic window with

```math
\mathcal R_N(W)\ge\eta
\tag{SRE.18}
```

removes earlier order-one square windows.  It does not prove `(SRE.3)`.  In the
principal-gain model, the prefix reserve is

```math
\lambda\int_0^{\theta\lambda^{-2}}
\left(\Pi_\lambda^{part,+}(t)\right)^2dt
=
{e^{4\theta}-1\over4},
\tag{SRE.19}
```

so every fixed threshold below \((e^4-1)/4\) has a first crossing inside the
heat window, with no earlier threshold-crossing square window and no residual
charge.

Linear donor balance also cannot supply `(SRE.3)`.  A donor can pay equal
linear mass over a longer, lower window while losing the square cost.  With

```math
h=\lambda^{-2},
\qquad
H=\lambda^{-1},
\qquad
A=\lambda^{1/2},
\tag{SRE.20}
```

and

```math
q_+(t)=A{\bf 1}_{[-h,0]}(t),
\qquad
q_-(t)={Ah\over H-h}{\bf 1}_{[-H,-h]}(t),
\tag{SRE.21}
```

the linear masses match, but

```math
\lambda\int q_+^2\,dt=1,
\qquad
\lambda\int q_-^2\,dt\to0.
\tag{SRE.22}
```

So the linear signed ledger is not a square reserve evolution law.

## 6. Exact current landing

At current proof strength, `SquareReserveEvolution.A` is not a smaller bridge
below the heat-scale pulse.  It is one of the equivalent square-strength
producer forms.

The exact alternatives are:

```math
\begin{gathered}
\text{charge principal gain in the selected square ledger},\\
\text{prove DonorReserveAdjointTrace.A plus no-null selected donor clouds},\\
\text{prove ActiveWindowHeight.A or selected height plus log-tail control},\\
\text{prove SelectedParticipationSquareBudget.A directly},\\
\text{prove StrictRescaledNoWasteLyapunov.A with critical-action-size drop}.
\end{gathered}
\tag{SRE.23}
```

Each alternative is square-strength or super-\(L^1\) information on the actual
selected carrier.  None follows from the installed first-moment, parent-drain,
residual-square, heat-window-firstness, or linear donor-balance inputs.

## Verdict

`SquareReserveEvolution.A` remains a valid sufficient theorem, but it is not
installed and it is not a lower-level consequence of the current Navier-Stokes
package.

The current-resolution failed implication is:

```math
\boxed{
\text{first moments + child-mass parent drain + residual square charge
+ first square-window selection + linear donor balance}
\not\Longrightarrow
\text{same-unit square reserve evolution}.
}
\tag{SRE.24}
```

Thus this route returns to the same non-aliased forward-gold object:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected
positive carrier.}
}
\tag{SRE.25}
```
