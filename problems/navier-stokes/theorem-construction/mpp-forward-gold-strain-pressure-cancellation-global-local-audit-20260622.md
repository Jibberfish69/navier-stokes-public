---
theorem_id: forward-gold-strain-pressure-cancellation-global-local-audit-20260622
status: global-pressure-cancellation-proved-local-collar-and-vorticity-stretching-wall-remain
logical_landing_node: strain_pressure_cancellation_global_local
edge_effect: >-
  Refines StrainPressureCoerciveCancellation.A by separating the exact global
  cancellation from the local retained-packet obstruction. On a closed or
  decaying domain, the pressure-Hessian term in the strain energy identity
  cancels exactly because div div S=0. The global strain production then reduces
  to the Betchov/vorticity-stretching term. That term is sign-indefinite:
  vorticity aligned with stretching eigenvectors of S gives positive
  production. On localized/material annuli, pressure returns through collar and
  boundary derivatives of the cutoff/material packet. Therefore the current
  wall is not pressure in isolation; it is same-packet control of positive
  vorticity-stretching plus local pressure-collar terms inside the full
  pressure-viscosity-incompressibility-velocity packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-packet-strain-tower-coercion-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-strain-to-strain-metric-clock-direct-attempt-20260622.md
---

# Strain-Pressure Cancellation: Global/Local Audit

Date: 2026-06-22

## 0. Target

The strain-tower attempt stopped at

```math
(\partial_s+V\cdot\nabla-\nu\Delta)S
+
S^2+\Omega^2+\nabla^2Q
=0.
\tag{SPC.1}
```

The question here is whether the pressure part creates a hidden coercive
cancellation.  The answer splits exactly:

```math
\boxed{
\text{global pressure-Hessian term cancels;}
\qquad
\text{local packet pressure returns as collar/boundary flux.}
}
\tag{SPC.2}
```

After the global cancellation, the real sign-indefinite production is vorticity
stretching.

## 1. Global pressure cancellation

Assume periodic boundary conditions, compact support, or enough decay to remove
boundary terms.  Since

```math
S_{ij}
=
{1\over2}(\partial_jV_i+\partial_iV_j),
\qquad
\partial_iV_i=0,
\tag{SPC.3}
```

we have

```math
\partial_i\partial_jS_{ij}
=
{1\over2}
\left(
\partial_i\partial_j\partial_jV_i
+
\partial_i\partial_j\partial_iV_j
\right)
=
0.
\tag{SPC.4}
```

Therefore

```math
\boxed{
\int S:\nabla^2Q\,dy
=
\int Q\,\partial_i\partial_jS_{ij}\,dy
=0.
}
\tag{SPC.5}
```

So pressure does not contribute to the global strain energy identity.

## 2. Global strain production

The antisymmetric tensor satisfies

```math
S:\Omega^2
=
{1\over4}\,\omega\cdot S\omega,
\tag{SPC.6}
```

where \(\omega=\nabla\times V\).  Testing `(SPC.1)` against \(S\), using
`(SPC.5)`, gives

```math
{1\over2}{d\over ds}\int |S|^2
+
\nu\int|\nabla S|^2
=
-
\int\operatorname{tr}(S^3)
-
{1\over4}\int \omega\cdot S\omega .
\tag{SPC.7}
```

The Betchov identity gives

```math
\int\operatorname{tr}(S^3)
=
-
{3\over4}
\int\omega\cdot S\omega .
\tag{SPC.8}
```

Therefore

```math
\boxed{
{1\over2}{d\over ds}\int |S|^2
+
\nu\int|\nabla S|^2
=
{1\over2}
\int\omega\cdot S\omega .
}
\tag{SPC.9}
```

This is the same production mechanism as the vorticity/enstrophy identity.
It is not sign-definite.

## 3. Why this does not give coercion

At a point where \(S\) has eigenvalues

```math
\lambda_1+\lambda_2+\lambda_3=0,
\tag{SPC.10}
```

and \(\omega\) is aligned with an eigenvector \(e_k\),

```math
\omega\cdot S\omega
=
\lambda_k|\omega|^2.
\tag{SPC.11}
```

If \(\lambda_k>0\), this is positive production.  If \(\lambda_k<0\), it is
negative production.  Thus the full coupled law exposes the production
mechanism, but it does not make it coercively negative.

The exact missing global-style theorem would be a same-packet payment rule for
positive vorticity stretching:

```math
\boxed{
\int_I
\left[
\int_{\widehat A_m(s)}
\omega_m\cdot S_m\omega_m\,dy
\right]_+ds
\le
\varepsilon\nu D_m
-
\Delta\Phi_m
+
R_m.
}
\tag{SPC.12}
```

This is not installed.

## 4. Local packet pressure return

The global pressure cancellation uses a constant test over the whole domain.
For a localized same-packet test \(\phi\),

```math
\int \phi\,S:\nabla^2Q
=
\int Q\,\partial_i\partial_j(\phi S_{ij}).
\tag{SPC.13}
```

Since \(\partial_i\partial_jS_{ij}=0\), this becomes

```math
\boxed{
\int \phi\,S:\nabla^2Q
=
\int Q
\left[
(\partial_i\partial_j\phi)S_{ij}
+
2(\partial_i\phi)(\partial_jS_{ij})
\right].
}
\tag{SPC.14}
```

So local pressure is not gone.  It is forced onto the same packet collar and
boundary geometry.  In material-annular language, these are pressure-collar
terms carried by the full packet, not a pressure-only route.

## 5. Exact refined wall

The candidate theorem

```math
\texttt{StrainPressureCoerciveCancellation.A}
\tag{SPC.15}
```

splits into two exact clauses:

```math
\boxed{
\begin{array}{ll}
\text{global/whole-packet cancellation}
&\Rightarrow
\text{pressure Hessian drops out},\\[1mm]
\text{local/material annulus}
&\Rightarrow
\text{pressure appears as same-packet collar terms},\\[1mm]
\text{remaining sign-indefinite bulk production}
&=
\text{positive vorticity stretching}.
\end{array}
}
\tag{SPC.16}
```

So the sharper live theorem is:

```math
\boxed{
\texttt{SamePacketVorticityStretchingPayment.A}
+
\texttt{PressureCollarSamePacketRouting.A}.
}
\tag{SPC.17}
```

Both clauses are inside the pressure-viscosity-incompressibility-velocity
packet.  The first handles positive stretching; the second keeps the local
pressure cancellation order-locked to the material annulus.

## 6. Result

The pressure part is better than the previous wall suggested: globally it
cancels exactly.  The remaining obstruction is sharper and physical:

```math
\boxed{
\text{vorticity can align with stretching strain and produce positive strain
tower growth.}
}
\tag{SPC.18}
```

That is the current same-packet production wall.  It is not solved by the
current installed inputs, but it is now localized to a concrete mechanism
instead of a vague strain-pressure sign problem.
