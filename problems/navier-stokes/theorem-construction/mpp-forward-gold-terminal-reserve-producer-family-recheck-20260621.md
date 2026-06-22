---
theorem_id: forward-gold-terminal-reserve-producer-family-recheck-20260621
status: producer-family-recheck-complete-unlep-sufficient-not-minimal-no-current-producer
logical_landing_node: terminal_reserve_producer_family_recheck
edge_effect: "Rechecks the exact producer family after the native source bridge and endpoint Hardy fork. UniformNormalizedLocalEnergyPressure.A is a valid sufficient producer because it gives the full-packet trace density in L_s^(10/9), hence Hardy for alpha<1/10. It is not the minimal object Hardy consumes, and it is too strong unless the packet is Galilean/gauge fixed: large spatial mean modes can blow the normalized L_s^infty L_y^2 norm while carrying no selected singular activity. After gauge quotient, UNLEP reduces to unweighted normalized dissipation plus local pressure and harmonic/endpoint memory control, which is the same terminal reserve wall. The minimal producer is a same-carrier endpoint trace density in L_s^p, p>1, plus weighted legal/sign/selector/geometry endpoint moments. Source-square, selected critical-strain, normalized CKN, and strict no-waste are equivalent producer languages only when they actually produce that same-carrier L^p/tail UI or unweighted action. Current inputs do not produce it; failure remains CM endpoint Part/Field consumption after same-witness admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-normalized-local-energy-pressure-bound-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-post-critical-currency-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-ckn-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-step-primitive-square-wave-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Terminal Reserve Producer Family Recheck

Date: 2026-06-21

## 0. Starting fork

The current fork is:

```math
\boxed{
\texttt{UniformNormalizedLocalEnergyPressure.A}
}
\tag{TRP.1}
```

or CM endpoint-face consumption.

The strong pass branch is:

```math
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2}^2
+
\|\nabla_yV_m\|_{L^2_{s,y}}^2
+
\|Q_m\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty .
\tag{TRP.2}
```

Then

```math
F_m\in L_s^{10/9}
\Longrightarrow
\text{Hardy for }\alpha<1/10
\Longrightarrow
\text{endpoint no-jump}.
\tag{TRP.3}
```

This note rechecks the producer family itself: what exactly has to be produced,
and whether strict no-waste or the four-body loop already produces it.

## 1. Hardy consumes an endpoint trace density, not the whole energy class

The actual Hardy input is a weighted endpoint moment:

```math
\sup_m
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds<\infty .
\tag{TRP.4}
```

A sufficient way to get `(TRP.4)` is:

```math
\sup_m\|[H_m]_+\|_{L_s^p(-1,0)}<\infty
\qquad\text{for some }p>1.
\tag{TRP.5}
```

Indeed, with \(p'=p/(p-1)\),

```math
\int_{-1}^{0}(-s)^{-\alpha}[H_m(s)]_+\,ds
\le
\|[H_m]_+\|_{L_s^p}
\left(
\int_{-1}^{0}(-s)^{-\alpha p'}\,ds
\right)^{1/p'}.
\tag{TRP.6}
```

The weight is integrable exactly when

```math
\alpha p'<1,
\qquad\text{i.e.}\qquad
\alpha<1-{1\over p}.
\tag{TRP.7}
```

For the energy-class producer in the Hardy note, \(p=10/9\), so

```math
\alpha<1/10.
\tag{TRP.8}
```

Thus `UniformNormalizedLocalEnergyPressure.A` is a sufficient route because it
implies `(TRP.5)` with \(p=10/9\).  It is not the minimal Hardy target.

The minimal target is:

```math
\boxed{
\text{same-carrier endpoint trace density }[H_m]_+
\text{ is uniformly }L_s^p,\ p>1,
}
\tag{TRP.9}
```

together with the corresponding weighted endpoint moments for legal, terminal,
signed, selector, and geometry measures.

## 2. The ungauged normalized energy bound is too strong

As stated, `(TRP.2)` includes the full normalized \(L_s^\infty L_y^2\) velocity
mass.  This is stronger than selected singular activity.

Let \(c_m\in\mathbb R^3\) be spatially constant and set

```math
V_m(s,y)=c_m,
\qquad
Q_m(s,y)=0.
\tag{TRP.10}
```

Then

```math
\nabla_yV_m=0,
\qquad
(V_m\cdot\nabla_y)V_m=0,
\qquad
\nabla_y\cdot V_m=0.
\tag{TRP.11}
```

The selected strain/source/tower variation is zero, while

```math
\|V_m\|_{L_s^\infty L_y^2}^2
=
|c_m|^2|B_1|
\tag{TRP.12}
```

can be arbitrarily large.  This is a Galilean/gauge mode, not a terminal
singularity.

Therefore a no-waste theorem cannot be expected to produce the ungauged
version of `(TRP.2)` from selected singular activity alone.

The correct strong producer is gauge-fixed:

```math
\boxed{
\sup_m
\left(
\|V_m-\langle V_m\rangle_{B_1}\|_{L_s^\infty L_y^2}^2
+
\|\nabla_yV_m\|_{L^2_{s,y}}^2
+
\|Q_m^{loc}\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty
}
\tag{TRP.13}
```

plus harmonic pressure-memory, affine-pressure, collar, endpoint, selector, and
legal control.

By Poincare, the mean-free velocity term is controlled by the gradient:

```math
\|V_m-\langle V_m\rangle_{B_1}\|_{L^2_y}^2
\le
C\|\nabla_yV_m\|_{L^2_y}^2.
\tag{TRP.14}
```

So after Galilean quotient, the hard part of `(TRP.13)` is still the
unweighted normalized dissipation and pressure/collar memory control.

## 3. Pressure reduces to local pressure plus harmonic memory

For the local pressure,

```math
-\Delta_yQ_m^{loc}
=
\partial_i\partial_j\bigl((V_m)_i(V_m)_j\bigr),
\tag{TRP.15}
```

Calderon-Zygmund gives

```math
\|Q_m^{loc}\|_{L^{5/3}}
\le
C\|V_m\otimes V_m\|_{L^{5/3}}
=
C\|V_m\|_{L^{10/3}}^2.
\tag{TRP.16}
```

Thus once the gauge-fixed energy class gives

```math
V_m\in L^{10/3}_{s,y},
\tag{TRP.17}
```

the local pressure part follows.

The harmonic pressure part is different.  It is not determined by the local
velocity on \(B_1\) alone and has already been routed as pressure-memory,
collar, legal, or terminal trace.  Therefore pressure does not create an
independent producer; it splits into local Calderon-Zygmund pressure plus
harmonic endpoint memory.

## 4. Strict no-waste does not currently produce the bound

The checked strict no-waste notes say the same thing in another language.

A bounded-below no-waste functional would need

```math
-{d\over ds}L(s)
\ge
c\,A_{\rm crit}(s)
-
R_{\rm legal}(s),
\qquad
\inf_sL(s)>-\infty,
\qquad
R_{\rm legal}\in L^1_s.
\tag{TRP.18}
```

where \(A_{\rm crit}\) is the unweighted same-carrier critical action.

Current inputs do not produce such an \(L\).  Energy-sized candidates have only
radius-discounted drop, quadratic pressure-corrected candidates leave unsigned
critical flux/commutator terms, and cubic local correctors lose lower
boundedness.

So strict no-waste does not imply `(TRP.2)` or `(TRP.13)` from installed inputs.
At this frontier it is another name for producing the same unweighted
same-carrier endpoint action.

## 5. Where the equivalent producer languages fit

The producer family is now:

```math
\boxed{
\text{same-carrier }L_s^p\text{ endpoint trace control for some }p>1
}
\tag{TRP.19}
```

or one of the stronger sufficient forms:

```math
\boxed{
\texttt{UniformNormalizedLocalEnergyPressure.A}
\quad\text{in the gauge-fixed full-packet sense}
}
\tag{TRP.20}
```

```math
\boxed{
\texttt{SourceSquareReserve.A}
}
\tag{TRP.21}
```

```math
\boxed{
\texttt{SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\texttt{NormalizedCKNCarleson.A}
}
\tag{TRP.22}
```

```math
\boxed{
\texttt{StrictNoWasteFullLoopLyapunov.A}
}
\tag{TRP.23}
```

Each is valid only when it is carried on the same selected full participation
packet and gives terminal-tail depletion or an unweighted log-scale budget for
the same object whose positive part defines the endpoint source carrier.

Current installed inputs do not produce any member of `(TRP.20)`--`(TRP.23)`.

## 6. Result

`UniformNormalizedLocalEnergyPressure.A` is a good sufficient theorem, but the
minimal no-jump producer is smaller:

```math
\boxed{
\sup_m\|[H_m]_+\|_{L_s^p(-1,0)}<\infty
\quad\text{for some }p>1,
}
\tag{TRP.24}
```

plus weighted endpoint control for the legal/sign/selector/geometry measures.

The forward-gold producer family is therefore sharpened to:

```math
\boxed{
\text{gauge-fixed uniform normalized energy-pressure}
\quad\text{or}\quad
\text{same-carrier }L_s^p\text{ endpoint trace reserve}
\quad\text{or}\quad
\text{CM endpoint Part/Field consumption.}
}
\tag{TRP.25}
```

This does not solve the forward-positive reserve.  It prevents the next search
from chasing the ungauged \(L_s^\infty L_y^2\) norm when Hardy only needs the
same-carrier endpoint trace density.
