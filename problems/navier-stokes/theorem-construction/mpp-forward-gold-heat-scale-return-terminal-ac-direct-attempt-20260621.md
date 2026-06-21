---
theorem_id: forward-gold-heat-scale-return-terminal-ac-direct-attempt-20260621
status: direct-attempt-open-reduces-to-unweighted-deformation-action-or-charged-geometry-defect
logical_landing_node: heat_scale_return_terminal_ac
edge_effect: "Tests the heat-scale return subpiece forced by the transported full Hodge-Stokes selector attempt. A scalar heat-scale selector cannot be materially transported through direction-dependent strain, so a successful selector must become anisotropic and then return to the heat-scale packet. The return is controlled by the Body-IV deformation metric G=A A^T and its strain clock. The direct estimate proves the exact sufficient condition: uniform terminal AC of the same-carrier deformation/strain return action gives heat-scale return AC. It also proves the exact obstruction: Navier-Stokes energy gives only radius-discounted cost for heat-scale pulses, so current inputs do not supply the unweighted terminal return modulus. Failure of return is a Body-IV geometry/carrier defect, not an independent no-residue payment."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-full-hodgestokes-selector-payment-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Heat-Scale Return Terminal AC Direct Attempt

Date: 2026-06-21

## 0. Aim

The transported-selector attempt forces this subproblem:

```math
\boxed{
\text{anisotropic transported selector}
\Longrightarrow
\text{paid return to the heat-scale packet.}
}
\tag{HSR.1}
```

Call the required theorem

```math
\boxed{
\text{HeatScaleReturnTerminalAC.A.}
}
\tag{HSR.2}
```

It must provide a uniform terminal modulus for the return cost:

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}
A_{{\rm ret},m}(s)\,ds
=0,
}
\tag{HSR.3}
```

or else charge failure of the return as a Body-IV geometry/carrier defect.

## 1. Return metric

Let \(X(a,t)\) be the material map and

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=A A^T.
\tag{HSR.4}
```

Incompressibility gives

```math
\det F=1.
\tag{HSR.5}
```

The metric obeys

```math
\partial_tG
=
-2A\,S(X(a,t),t)\,A^T,
\qquad
S={1\over2}(\nabla u+\nabla u^T).
\tag{HSR.6}
```

Uniform heat-scale return is controlled by the condition number of \(G\).  The
same-carrier strain clock

```math
\Gamma_{A_0}(t_0,t)
=
\int_{t_0}^{t}
\|S(X(\cdot,\tau),\tau)\|_{L^\infty(A_0)}\,d\tau
\tag{HSR.7}
```

gives

```math
e^{-2\Gamma_{A_0}(t_0,t)}|\zeta|^2
\le
\zeta^TG(a,t)\zeta
\le
e^{2\Gamma_{A_0}(t_0,t)}|\zeta|^2.
\tag{HSR.8}
```

Thus finite strain clock is exactly the finite heat-scale return condition for
the transported anisotropic metric.

## 2. Terminal AC sufficient condition

Let \(A_{{\rm ret},m}(s)\) be any normalized same-carrier return action that
dominates the strain clock on the selected material packet:

```math
\int_I
\|S_m(X_m(\cdot,s),s)\|_{L^\infty(A_{0,m})}\,ds
\le
C
\int_I A_{{\rm ret},m}(s)\,ds
+R_m^{geom}(I).
\tag{HSR.9}
```

If

```math
\lim_{\theta\downarrow0}
\limsup_m
\left(
\int_{-\theta}^{0} A_{{\rm ret},m}(s)\,ds
+R_m^{geom}((-\theta,0])
\right)
=0,
\tag{HSR.10}
```

then `(HSR.8)` gives uniform terminal return of the anisotropic metric to the
heat-scale packet.  This proves the conditional implication

```math
\boxed{
\text{unweighted deformation/strain terminal AC}
\Longrightarrow
\text{HeatScaleReturnTerminalAC.A.}
}
\tag{HSR.11}
```

This is the exact positive part of the attempt.

## 3. Why physical energy does not supply it

For a heat-scale profile

```math
u_r(t,x)
=
r^{-1}U(r^{-2}t,r^{-1}x),
\tag{HSR.12}
```

the strain scales as

```math
S_r(t,x)
=
r^{-2}S_U(r^{-2}t,r^{-1}x).
\tag{HSR.13}
```

On a heat window of length \(r^2\), an order-one normalized profile can have

```math
\int_{I_r}\|S_r(t)\|_{L^\infty(B_r)}\,dt
\sim
1.
\tag{HSR.14}
```

The physical dissipation on the same packet is only

```math
\int_{I_r}\int_{B_r}|\nabla u_r|^2\,dx\,dt
=
r
\int_{-1}^{0}\int_{B_1}|\nabla U|^2\,dy\,ds.
\tag{HSR.15}
```

So a Zeno sequence can have order-one heat-scale return action on each
normalized packet while the physical dissipation is summable through

```math
\sum_j r_j<\infty.
\tag{HSR.16}
```

This is the same radius-discounted wall.  Energy sees the return activity, but
with the wrong weight.

## 4. Failure is a geometry/carrier defect

If `(HSR.10)` fails, then one of the following has occurred on the selected
carrier:

```math
\boxed{
\text{unbounded anisotropic deformation;}
\quad
\text{loss of heat-scale relocalization;}
\quad
\text{metric coefficient loss;}
\quad
\text{packet-label/cutoff/gauge drift.}
}
\tag{HSR.17}
```

These are not invisible scalar remainders.  They are the Body-IV geometry
defects already isolated in the compactness-to-geometry interface:

```math
K_{\rm geom,map}^+
+K_{\rm geom,gauge}^+
+K_{\rm geom,coef}^+
+R_{\rm legal}.
\tag{HSR.18}
```

Thus heat-scale return has a clean pass-or-charge form:

```math
\boxed{
\text{HeatScaleReturnTerminalAC.A}
\quad\text{or}\quad
\text{charged Body-IV geometry/carrier defect.}
}
\tag{HSR.19}
```

## 5. Verdict

The direct attempt proves the right conditional theorem and the right failure
classification:

```math
\boxed{
\text{unweighted same-carrier deformation/strain terminal modulus}
\Longrightarrow
\text{paid heat-scale return.}
}
\tag{HSR.20}
```

It does not prove the unweighted modulus from current Navier-Stokes inputs.
Therefore this subpiece returns to the same frontier:

```math
\boxed{
\text{FourBodyTerminalTraceAC.A}
\quad\text{or}\quad
\text{StrictFourBodyNoWasteLyapunov.A}
\quad\text{or}\quad
\text{charged Body-IV geometry defect.}
}
\tag{HSR.21}
```

The useful gain is exact localization of the transported-selector obstruction:
the no-residue selector can only succeed through an unweighted geometry-return
modulus, and that modulus is not supplied by physical energy.
