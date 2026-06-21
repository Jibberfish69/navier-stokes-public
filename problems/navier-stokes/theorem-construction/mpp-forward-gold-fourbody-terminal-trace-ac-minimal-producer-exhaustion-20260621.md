---
theorem_id: forward-gold-fourbody-terminal-trace-ac-minimal-producer-exhaustion-20260621
status: producer-exhaustion-complete-no-smaller-full-tuple-producer-installed
logical_landing_node: fourbody_terminal_trace_ac_minimal_producer_exhaustion
edge_effect: "Tests whether FourBodyTerminalTraceAC.A has a smaller exact producer after the component test and the participation-tuple coupling-breaker audit. Result: no smaller installed producer remains. Any candidate must first retain the same selected (R,N,P,V,I) packet. Energy, viscosity-only, pressure-only, incompressibility-only, Leray-first, Cauchy/Young source-square, CKN/critical-density, tail, and commutator cleanup routes either break tuple custody or become consumers after the full packet is already retained. The admissible producers are exactly simultaneous unweighted terminal moduli for Body I tower/current, Body II participation storage/loss/current, Body III selected no-loss/tightness, Body IV deformation/strain clock, and legal residual terminal AC; or a charged defect/CM face routing; or MinimalZenoProfileProduction.A."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-participation-tuple-coupling-breaker-live-edge-audit-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tuple-channel-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-ckn-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-participation-storage-nested-shell-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Terminal Trace AC Minimal Producer Exhaustion

Date: 2026-06-21

## 0. Target

The component test reduced the terminal Zeno strip problem to

```math
\boxed{
\texttt{FourBodyTerminalTraceAC.A}.
}
\tag{MPX.1}
```

In expanded form, the needed terminal modulus is

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\left(
R_m((-\theta,0])
+
\left[L_{4B,m}(-\theta)-L_{4B,m}(0)\right]_+
\right)
=0.
}
\tag{MPX.2}
```

The component test proved that `(MPX.2)` follows from the five same-carrier
terminal moduli

```math
\boxed{
\begin{gathered}
\mathsf T_S:
\quad
\lim_{\theta\downarrow0}\limsup_m
\left(
D_{S,m}^{rad}((-\theta,0])
+J_{SQ,m}^-((-\theta,0])
\right)=0,\\
\mathsf T_Q:
\quad
\lim_{\theta\downarrow0}\limsup_m
\left(
D_m((-\theta,0])
+J_m^-((-\theta,0])
+[M_m(-\theta)-M_m(0)]_+
\right)=0,\\
\mathsf T_C:
\quad
\text{selected-carrier terminal no-loss/tightness,}\\
\mathsf T_G:
\quad
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}A_{{\rm geom},m}(s)\,ds=0,\\
\mathsf T_R:
\quad
\lim_{\theta\downarrow0}\limsup_mR_m((-\theta,0])=0.
\end{gathered}
}
\tag{MPX.3}
```

This note tests whether there is a smaller installed producer for `(MPX.2)`.

## 1. Admissibility constraint from the participation-tuple audit

The new audit imposes the custody rule

```math
\boxed{
R_{j,Q}+N_{j,Q}+P_{j,Q}+V_{j,Q}=L_{j,Q},
\qquad
I_{j,Q}=0
}
\tag{MPX.4}
```

on the same selected packet before any scalar estimate is used.

The selected positive nonlinear activity

```math
A_{j,Q}
=
\left[\langle N_{j,Q},\Phi_{j,Q}\rangle\right]_+
\tag{MPX.5}
```

may be paid only after the pressure, viscosity, incompressibility, time/storage,
and legal channels have been retained on that packet.

Therefore a smaller producer for `(MPX.2)` has to satisfy two conditions:

```math
\boxed{
\begin{aligned}
&\text{it keeps the same selected }(R,N,P,V,I)\text{ packet,}\\
&\text{and it gives a terminal modulus or a charged defect in log-scale
without a radius discount.}
\end{aligned}
}
\tag{MPX.6}
```

Any estimate that fails the first line is a coupling breaker.  Any estimate that
fails the second line is only visibility.

## 2. Energy and base participation do not produce the modulus

The base participation identity is exact:

```math
M_r(s_2)-M_r(s_1)+D_r^{ren}((s_1,s_2])
=
J_r^{ren}((s_1,s_2]).
\tag{MPX.7}
```

It is the zeroth-rung participation law of the same Navier--Stokes packet.
Under heat-scale normalization, however,

```math
E_r=rM_r,
\qquad
D_r=rD_r^{ren},
\qquad
J_r=rJ_r^{ren}.
\tag{MPX.8}
```

Thus physical local energy controls only

```math
\sum_j r_j A_j^{ren}<\infty
\tag{MPX.9}
```

or, in logarithmic radius,

```math
\int_{\sigma_0}^{\infty}e^{-\sigma}A^{ren}(\sigma)\,d\sigma<\infty.
\tag{MPX.10}
```

The desired terminal trace producer needs

```math
\int_{\sigma_0}^{\infty}A^{ren}(\sigma)\,d\sigma<\infty
\tag{MPX.11}
```

or the terminal AC form `(MPX.3)`.  Therefore base participation is exact and
same-carrier, but it is radius-discounted.  It does not produce
`FourBodyTerminalTraceAC.A`.

## 3. LP, Bony, and commutator tools are selectors after custody, not producers

Littlewood--Paley localization can choose the scale.  Bony decomposition can
split interactions.  Commutator identities can expose where a selected packet
loses skew cancellation.

Their admissible role is

```math
\boxed{
\text{first retain }(R_j,N_j,P_j,V_j,I_j),
\quad
\text{then use LP/Bony/commutators inside the retained channels.}
}
\tag{MPX.12}
```

If LP or Bony is used first to estimate \(N_j\) as source size, amplitude,
tail mass, or shell energy, the estimate has left the participation tuple.
If commutators are bounded by absolute value before the channel is assigned,
the estimate becomes another scalar source-square or legal-ledger shortcut.

So these tools do not give a smaller producer for `(MPX.2)`.  They can only
implement one of the already-listed terminal moduli in `(MPX.3)` after the full
packet has been retained.

## 4. Source-square, CKN, and critical density are consumers

A critical scalar currency is useful only after selected-carrier identification:

```math
\boxed{
\mu_{\rm sel}^{+}
\ll
\mathcal C_{\rm crit}
\quad\text{on the same retained packet.}
}
\tag{MPX.13}
```

Even then, the scalar currency must have an unweighted terminal-tail budget:

```math
\lim_{\theta\downarrow0}\limsup_m
\mathcal C_{{\rm crit},m}((-\theta,0])=0.
\tag{MPX.14}
```

Current inputs do not supply `(MPX.14)`.  Physical CKN-type quantities inherit
the same terminal-tail problem unless the full packet already has the needed
unweighted budget.  Hence source-square, CKN, critical-strain, and critical
density are valid consumers of a produced full-tuple packet, not smaller
producers of `FourBodyTerminalTraceAC.A`.

## 5. Pressure, viscosity, and incompressibility alone do not produce it

The full-tuple audit blocks three separate singleton routes:

```math
\text{viscosity-only drain,}
\qquad
\text{pressure-only spread/recovery,}
\qquad
\text{incompressibility-only skew/orientation.}
\tag{MPX.15}
```

Each singleton route drops at least one channel of the same selected packet.
The exact full-tuple channel coercivity attempt shows the non-tautological form
that would be needed:

```math
A_{j,P}
\le
-\partial_\sigma\Phi_{j,P}
+
\mathsf P_{j,P}
+
\mathsf V_{j,P}
+
\mathsf I_{j,P}
+
\mathsf L_{j,P},
\tag{MPX.16}
```

with

```math
0\le\Phi_{j,P}\le C,
\qquad
\int_{\sigma_0}^{\infty}
\left(
\mathsf P+\mathsf V+\mathsf I+\mathsf L
\right)(\sigma)\,d\sigma<\infty.
\tag{MPX.17}
```

But `(MPX.16)`--`(MPX.17)` is exactly `FullTupleChannelCoercivity.A`, and that
direct attempt already reduces to terminal trace AC, strict no-waste, and
same-carrier compactness/no-loss.  So singleton channel estimates do not give a
smaller producer; the full-channel version returns to `(MPX.2)`.

## 6. Compactness alone relays terminal atoms

Weak compactness can pass finite measures:

```math
a_m(s)\,ds
\rightharpoonup
a_*\delta_0.
\tag{MPX.18}
```

Thus compactness by itself does not remove a terminal time-face atom.  It only
gives a smaller producer when paired with same-carrier no-loss:

```math
\boxed{
\mathcal P_*=\mathcal P[U,\Pi]
}
\tag{MPX.19}
```

and with selected positive carrier total-variation retention.  Failure of
`(MPX.19)` is not free; it is a Body-III charged relay defect.  Therefore
compactness is another implementation path for \(\mathsf T_C\), not a smaller
producer of the whole trace theorem.

## 7. Terminal trace AC cannot be replaced by finite mass

Finite mass of a channel on the terminal interval permits the model

```math
g_m(s)=a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{MPX.20}
```

It has fixed total mass \(a\) and no uniform terminal AC:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}g_m(s)\,ds
=a.
\tag{MPX.21}
```

Thus finite legal mass, finite pressure memory, finite source mass, finite
current mass, or finite deformation action is not a terminal modulus.  Every
such route still needs one of:

```math
\boxed{
\text{uniform terminal AC, charged defect routing, or rigid profile
production.}
}
\tag{MPX.22}
```

## 8. Exhaustion statement

After the participation-tuple audit, the possible smaller producers have been
exhausted at this resolution.

The current exact state is:

```math
\boxed{
\texttt{FourBodyTerminalTraceAC.A}
\Longleftrightarrow_{\rm current\ frontier}
\left[
\mathsf T_S+\mathsf T_Q+\mathsf T_C+\mathsf T_G+\mathsf T_R
\right]
}
\tag{MPX.23}
```

where each \(\mathsf T\)-term is a same-carrier unweighted terminal modulus or
else a charged defect theorem.

Equivalently, a surviving terminal heat-scale pulse must go to one of the
remaining non-scalar exits:

```math
\boxed{
\begin{gathered}
\text{same-carrier unweighted four-body terminal modulus,}\\
\text{participation-preserving full-cycle no-residue payment,}\\
\text{charged polar/compactness/geometry/legal defect or CM Part/Field
consumption,}\\
\text{or }\texttt{MinimalZenoProfileProduction.A}.
\end{gathered}
}
\tag{MPX.24}
```

There is no installed smaller producer from energy, LP algebra, pressure
recovery, viscosity drain, incompressibility skew, CKN/source-square scalar
currency, tail mass, commutator legality, or weak compactness alone.
