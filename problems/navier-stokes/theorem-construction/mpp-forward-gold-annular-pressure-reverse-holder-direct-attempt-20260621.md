---
theorem_id: forward-gold-annular-pressure-reverse-holder-direct-attempt-20260621
status: direct-attempt-reduces-to-annular-harmonic-pressure-service-super-l1-bound
logical_landing_node: annular_pressure_reverse_holder
edge_effect: "Attacks AnnularPressureReverseHolder.A, the harmonic-pressure subtheorem required by EndpointReverseHolderFullPacket.A. The fixed-time harmonic estimate reduces collar pressure-memory trace control to annular harmonic pressure service after affine-pressure/Galilean gauge removal. The exact sufficient condition is Q_m^H-Pi_aff Q_m^H in L_s^a L_y^{3/2}(annulus) and U_m in L_s^b L_y^3(collar) with 1/a+1/b<1. Current pressure routing supplies only finite collar/legal/terminal measure visibility, which permits terminal L1 pressure pulses. Thus AnnularPressureReverseHolder.A is not produced by current inputs; it is exactly the endpoint pressure-service super-L1 theorem needed to keep harmonic pressure from being a naked endpoint measure."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-trace-lp-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
---

# Annular Pressure Reverse Holder Direct Attempt

Date: 2026-06-21

## 0. Target

The pressure subtheorem required by endpoint uniform integrability is:

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{APR.1}
```

After Galilean and affine-pressure gauge removal, prove

```math
\boxed{
\sup_m
\left\|
\left[
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_m\,dy
\right]_+
\right\|_{L_s^{1+\varepsilon}(-1,0)}
<\infty
}
\tag{APR.2}
```

for some \(\varepsilon>0\).

Here

```math
U_m=V_m-\langle V_m\rangle_{\eta_m}.
\tag{APR.3}
```

The affine pressure part \(\Pi_{aff}Q_m^H\) is paired with the Galilean mode
and belongs to the gauge/legal record, not to the singular endpoint density.

## 1. Fixed-time reduction

For each fixed \(s\), the harmonic pressure piece is harmonic in the retained
interior.  For the collar/annulus pair,

```math
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(collar)}
\le
C
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(annulus)}.
\tag{APR.4}
```

Therefore

```math
\begin{aligned}
\left|
\int
(Q_m^H-\Pi_{aff}Q_m^H)
U_m\cdot\nabla\chi_m\,dy
\right|
&\le
C
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_y^{3/2}(annulus)}
\|U_m\|_{L_y^3(collar)}\\
&\quad
+R_m^{gauge/legal}(s).
\end{aligned}
\tag{APR.5}
```

Thus `(APR.2)` follows if

```math
\boxed{
\sup_m
\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^aL_y^{3/2}(annulus)}
<\infty
}
\tag{APR.6}
```

and

```math
\boxed{
\sup_m
\|U_m\|_{L_s^bL_y^3(collar)}
<\infty,
\qquad
{1\over a}+{1\over b}<1.
}
\tag{APR.7}
```

Then the pressure trace belongs to \(L_s^p\) with

```math
{1\over p}={1\over a}+{1\over b}<1.
\tag{APR.8}
```

## 2. Current routing is not this theorem

The installed harmonic pressure-memory collar routing proves that

```math
Q_m^H V_m\cdot\nabla\chi_m
\tag{APR.9}
```

is visible as collar/legal/terminal trace.  This is a finite-measure statement.
It does not prove `(APR.2)` or `(APR.6)`.

The terminal pressure pulse

```math
p_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)
\tag{APR.10}
```

has bounded \(L_s^1\) mass and unbounded \(L_s^{1+\varepsilon}\) norm for every
\(\varepsilon>0\).  This scalar model is compatible with finite pressure
routing.  It is not compatible with endpoint uniform integrability.

## 3. Local pressure does not control the harmonic service

The local pressure part is controlled from the local velocity product:

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j(U_{m,i}U_{m,j}).
\tag{APR.11}
```

Calderon-Zygmund estimates therefore control \(Q_m^{loc}\) from \(U_m\otimes
U_m\).

The harmonic part \(Q_m^H\) is the complementary pressure memory determined by
annular/exterior service and gauge choice.  It is not produced by `(APR.11)`.
So `(APR.6)` is a new annular pressure-service theorem, not a local pressure
estimate.

## 4. Result

`AnnularPressureReverseHolder.A` does not close from current installed inputs.

The exact reduced theorem is:

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceSuperL1.A}
}
\tag{APR.12}
```

meaning `(APR.6)` for some \(a>1\) compatible with the gauge-fixed velocity
collar exponent.

With `(APR.12)`, the harmonic pressure-memory term becomes an endpoint density
usable by `EndpointReverseHolderFullPacket.A`.  Without it, harmonic pressure
remains a finite routed measure and can carry the terminal \(L^1\)-pulse.
