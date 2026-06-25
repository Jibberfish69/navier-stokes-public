---
theorem_id: forward-gold-rectified-annular-force-action-variation-proof-attempt-20260625
status: direct-proof-fails-at-material-stress-time-variation
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Attempts to prove finite rectified annular force-action variation for the
  original smooth solution's transported material history around a candidate
  terminal concentration. The transported stress-work identity and the
  height/width energy constraint stay on the same physical object. The proof
  fails at the material stress-time term: original finite energy and viscous
  dissipation control strain square, but not the absolute material variation of
  reduced stress required by the rectified flux. Proving that missing estimate
  is continuation-strength, because it controls the same material record that
  feeds the fixed H^s readout.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-annular-flux-force-action-direct-attack-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Rectified Annular Force-Action Variation Proof Attempt

Date: 2026-06-25

## 0. Target

The target is the finite variation estimate

```math
\int_{s_0}^{0}
\left|{d\over ds}F_\phi^\sharp(s)\right|\,ds
<\infty
\tag{RAV.1}
```

for the original smooth Navier--Stokes solution's transported material history
around the candidate terminal concentration.  The annuli are material layers in
that one history, not detached packets.

The rectified annular flux is

```math
F_\phi^\sharp(s)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dy,
\qquad
T^\sharp=-PI+2\nu S(U),
\tag{RAV.2}
```

with transported cutoff

```math
(\partial_s+V\cdot\nabla)\phi=0.
\tag{RAV.3}
```

## 1. Exact derivative

Let

```math
D_s=\partial_s+V\cdot\nabla .
\tag{RAV.4}
```

Then

```math
D_sU=\nabla\cdot T^\sharp,
\qquad
D_s\nabla\phi=-(\nabla V)^T\nabla\phi .
\tag{RAV.5}
```

Therefore

```math
\begin{aligned}
{d\over ds}F_\phi^\sharp
= {}&
\int (\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi\,dy \\
&+
\int U_i(D_sT^\sharp_{ij})\partial_j\phi\,dy \\
&-
\int U_iT^\sharp_{ij}(\partial_jV_k)(\partial_k\phi)\,dy .
\end{aligned}
\tag{RAV.6}
```

Thus `(RAV.1)` follows from

```math
\int_{s_0}^{0}
\int_{\operatorname{collar}\phi}
\left(
|\nabla\cdot T^\sharp|\,|T^\sharp|
+
|U|\,|D_sT^\sharp|
+
|U|\,|T^\sharp|\,|\nabla V|
\right)
|\nabla\phi|\,dy\,ds
<\infty .
\tag{RAV.7}
```

This is still the same pressure-viscosity-incompressibility-velocity packet.

## 2. What the shape law controls

Let \(H(t)\) be a selected height scale and \(w(t)\) an effective width for
the high-amplitude region.  Finite kinetic energy gives the rigorous
distributional bound

```math
|\{x:|u(t,x)|\ge \theta H(t)\}|
\le
{\|u(t)\|_2^2\over \theta^2H(t)^2}
\le
{E_0\over \theta^2H(t)^2}.
\tag{RAV.8}
```

So a terminal concentration with \(H(t)\to\infty\) must thin in volume.  If
one represents the high region by a width \(w(t)\), this says

```math
w(t)^3\lesssim H(t)^{-2}.
\tag{RAV.9}
```

This is the correct physical shape constraint.  It rules out a spike that
gets taller while keeping a fixed fat base.

It does not control `(RAV.7)`.  The missing quantity is not only the size of
the high region; it is the absolute time variation of the stress-work flux
through the surrounding material layers.

## 3. What original energy and dissipation control

The original energy inequality gives

```math
\sup_{t<T_*}\|u(t)\|_2^2
+
2\nu\int_0^{T_*}\|S(u)(t)\|_2^2\,dt
\le
\|u_0\|_2^2 .
\tag{RAV.10}
```

This controls \(S\) in \(L_t^2L_x^2\), hence the strain square.  It does not
control the absolute material derivative of stress:

```math
D_sT^\sharp=-(D_sP)I+2\nu D_sS(U).
\tag{RAV.11}
```

Using the equation,

```math
D_sS(U)
=
\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-
\operatorname{sym}\big((\nabla V)(\nabla U)\big).
\tag{RAV.12}
```

The first term contains one more spatial derivative of stress.  The pressure
piece satisfies

```math
-\Delta(D_sP)
=
D_s(\partial_iU_j\,\partial_jU_i)+[\Delta,D_s]P,
\tag{RAV.13}
```

and the commutator contains second pressure derivatives and velocity-gradient
coefficients on the same material packet.  These are legitimate participation
terms, but they are not controlled by `(RAV.10)`.

## 4. The exact failed estimate

To close `(RAV.1)` from original smooth data, one needs

```math
\int_{s_0}^{0}
\int_{\operatorname{collar}\phi}
|U|\,|D_sT^\sharp|\,|\nabla\phi|\,dy\,ds
<\infty
\tag{RAV.14}
```

as part of the same annular material history.

Substituting `(RAV.11)` gives the required bound

```math
\int_{s_0}^{0}
\int_{\operatorname{collar}\phi}
|U|
\left(
|D_sP|+\nu|D_sS(U)|
\right)
|\nabla\phi|\,dy\,ds
<\infty .
\tag{RAV.15}
```

The available original-data controls do not imply `(RAV.15)`.  They control
\(|S|^2\), not \(|D_sS|\), and they control pressure through the elliptic
law at the \(u\otimes u\) level, not the absolute material derivative
\(|D_sP|\) needed by `(RAV.15)`.

This is not a failure of attachment.  The term is attached to the correct
outer annulus and to the correct same-fluid history.  The failure is that
finite energy plus the height/width thinning law do not bound the stress-time
variation along that history.

## 5. Consequence

The direct proof of `(RAV.1)` from current installed inputs fails at
`(RAV.14)`--`(RAV.15)`.

The exact theorem still needed is the same-object stress-time variation
estimate:

```math
\boxed{
\int_{s_0}^{0}
\int_{\operatorname{collar}\phi}
|U|
\left(
|D_sP|+\nu|D_sS(U)|
\right)
|\nabla\phi|\,dy\,ds
<\infty .
}
\tag{RAV.16}
```

Once `(RAV.16)` is proved, the other terms in `(RAV.7)` are lower-order
same-packet stress-action terms and the rectified annular force-action
variation follows.

Without `(RAV.16)`, writing down `(RAV.1)` as a proved original-data theorem
would assume the continuation-strength stress clock rather than derive it.

