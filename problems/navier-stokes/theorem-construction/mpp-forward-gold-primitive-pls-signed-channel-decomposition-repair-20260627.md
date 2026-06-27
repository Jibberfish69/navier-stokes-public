---
theorem_id: forward-gold-primitive-pls-signed-channel-decomposition-repair-20260627
status: single-commutator-identity-repaired-to-full-signed-channel-decomposition
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / repeated-core record-return
repairs_hinge:
  - PrimitivePLSDriverToSignedCommutatorIdentity.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
attacks_hinge:
  - RepeatedCoreRecordReturnStorageBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-lift-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-common-selector-refinement-identity-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
---

# Primitive PLS signed-channel decomposition repair

The first signed-lift input was too narrow when written as:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A.
```

The stopped primitive PLS driver is not a single lifted transport commutator.
After the pressure/collar graph split it is the full same-material
free-participation low-high form:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{1}
```

Here \(\mathcal M_{<j-C,N}\) includes strain, pressure Hessian through the
strain equation, coefficient/frame motion, Hodge/Stokes projection motion,
transported collar motion, annular interface service, and viscous graph
service.  A single signed lifted commutator density

```math
\mathfrak c_\ell
=
\ell^{-2}
u_\ell[Q_\ell,b_\ell^{meso}\cdot\nabla]u
\tag{2}
```

can represent one transport/low-high coordinate of this packet.  It cannot be
declared equal to the whole primitive PLS driver without losing the
pressure-viscosity-incompressibility-velocity participation law.

The corrected first input is therefore:

```text
PrimitivePLSSignedChannelDecomposition.A.
```

## Correct statement

On each retained stopped common-selector chamber, after source-origin,
spent-source, selector/reselection, collar/spill, donor/order-lock, legal,
subheat, recirculation, and fixed-carrier support removals, decompose the
primitive driver into finitely many same-packet signed channels:

```math
d\Omega_S^{PLS,primitive,+}
\le
C_N\sum_{\kappa\in\mathcal K_N}
[Y_{\kappa,S}]_+\,d\sigma dt
+dR_S^{paid},
\tag{3}
```

with

```math
Y_{\kappa,S}
=
\partial_\sigma\Psi_{\kappa,S}
+S_{\kappa,S}^{spill}
+E_{\kappa,S}.
\tag{4}
```

The index set \(\mathcal K_N\) is finite at continuation depth \(N\), and its
members are coordinates of the same transported material packet:

```text
strain/top-eigenframe,
pressure-Hessian through the strain equation,
Hodge/Stokes projector motion,
coefficient/frame motion,
transported collar motion,
annular interface stress work,
viscous/radius graph service,
low-high transport commutator.
```

This keeps the full participation law intact.  The channels are not separate
suppliers; they are signed coordinates of the one stopped primitive PLS
transaction.

## What is already available

The stopped common-selector repair fixes the positive readout on one chamber.
Thus selector movement does not have to be hidden inside `(3)`:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}
+D_S^{vis/rad}
\right)
+R_{\rm legal}(P).
\tag{5}
```

The signed lifted-band note supplies one prototype channel:

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+\mathcal S_\ell^{spill}
+\mathcal E_\ell.
\tag{6}
```

So `(6)` is not discarded.  It becomes the model for each signed channel in
`(4)`.

## Remaining theorem after the repair

The live first input is now:

```text
PrimitivePLSSignedChannelDecomposition.A
```

rather than a one-channel identity.  It has three exact obligations.

First, derive every channel \(Y_{\kappa,S}\) directly from the material
Navier-Stokes participation law on the same stopped chamber, not from a
post-selected positive lobe.

Second, prove the signed potentials glue or stay stopped-local with paid
boundary mismatch:

```math
[\Theta_\kappa]=0
\quad\text{or}\quad
d\Theta_\kappa\le dR^{paid}.
\tag{7}
```

Third, prove the boundary/remainder barriers for each channel:

```math
\sum_{\kappa\in\mathcal K_N}
\int_0^T
\left(
|\mathfrak B_{\kappa,N}^{upper}(t)|
+|\mathfrak R_{\kappa,N}^{mid}(t)|
\right)dt
\le
\eta\nu\int_0^TD_N(t)\,dt
+C_*2^{-2\delta N}
+R_{\rm legal}.
\tag{8}
```

## Effect on record/return

Once `(3)` and `(4)` are proved, the repeated-core BV descent runs
channelwise:

```math
\sum_{Q_k\subset\mathcal A}A_{\rm sel}^{fresh}(Q_k)
\lesssim
\sum_{\kappa\in\mathcal K_N}
\left(
\operatorname{Rec}_\infty(\Psi_{\kappa,\mathcal A})
+V_-^{return}(\Psi_{\kappa,\mathcal A})
\right)
+R_{\rm legal}(\mathcal A).
\tag{9}
```

Thus the repeated-core storage theorem becomes:

```math
\int_{\mathcal F_{\rm lam}}
\sum_{\kappa\in\mathcal K_N}
\left(
\operatorname{Rec}_\infty(\Psi_{\kappa,\mathcal A})
+V_-^{return}(\Psi_{\kappa,\mathcal A})
\right)
d\mathcal R_{\rm ancestry}(\mathcal A)
\le
C_N(u_0)+R_{\rm legal}.
\tag{10}
```

This is the correct same-packet version of the signed lift.  It avoids the
wrong move of asking one transport commutator to carry the full primitive PLS
transaction, while preserving the record/return mechanism on each signed
coordinate.
