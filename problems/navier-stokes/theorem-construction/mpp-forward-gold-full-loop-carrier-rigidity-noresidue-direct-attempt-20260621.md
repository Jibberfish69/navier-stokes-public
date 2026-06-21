---
theorem_id: forward-gold-full-loop-carrier-rigidity-noresidue-direct-attempt-20260621
status: direct-attempt-reduces-to-transported-full-loop-selector-admissibility
logical_landing_node: full_loop_carrier_rigidity_noresidue_direct_attempt
edge_effect: "Attempts to finish ParticipationPreservingNoResidueFullCycle.A using the stronger same-carrier rigidity frame. The algebraic part closes: if the retained full Hodge-Stokes selector package solves the transported full-loop identity with bounded-below capacity and summable remainder, then the selected full-packet commutator has the desired no-residue estimate, with no C_epsilon Theta_sigma^2 E_sigma term. The current Navier-Stokes inputs do not produce that transported full-loop selector package. The proof breaks exactly at admissibility/return of the transported carrier: the material-cotangent selector kills the principal transport commutator, but viscosity creates a selector-Laplacian commutator, pressure requires same-carrier conormal/harmonic trace custody, and Body-IV deformation can destroy the symbol/cutoff class unless the unweighted geometry clock or full loop carrier rigidity is already proved. Thus the missing theorem is now FullLoopCarrierRigidity.A / TransportedFullHodgeStokesSelector.A, not a scalar source-square estimate."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tuple-channel-coercivity-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full-Loop Carrier Rigidity / No-Residue Direct Attempt

Date: 2026-06-21

## 0. Target

The theorem to finish is the full-packet version of the no-residue estimate:

```math
\boxed{
\left[
\mathcal C_\sigma^{tr}
+\mathcal C_\sigma^{p}
+\mathcal C_\sigma^{\nu}
+\mathcal C_\sigma^{time}
+\mathcal C_\sigma^{div}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}
\right]_{\mathcal S,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+T_\sigma
+R_{\rm legal}(\sigma),
}
\tag{FNR.1}
```

with

```math
T_\sigma,\ R_{\rm legal}\in L^1_\sigma,
\qquad
\inf_{\sigma\ge\sigma_0}\Phi_\sigma>-\infty,
\tag{FNR.2}
```

and no square-source residue

```math
\boxed{
C_\varepsilon\Theta_\sigma^2E_\sigma.
}
\tag{FNR.3}
```

The stronger interpretation is carrier rigidity before defect accounting:

```math
\boxed{
dK_{4B}=0
}
\tag{FNR.4}
```

for the retained selected carrier around the tower--participation--compactness
--geometry loop.

## 1. Candidate transported full-loop identity

For the transport component, let

```math
A_\sigma^{tr}=S_\sigma^{tr},
\qquad
G_\sigma^{tr}=(A_\sigma^{tr})^\ast A_\sigma^{tr},
\qquad
L=u\cdot\nabla.
\tag{FNR.5}
```

The proved transport identity is

```math
\boxed{
\langle A_\sigma^{tr}Lu,A_\sigma^{tr}u\rangle
=
-{1\over2}\langle [L,G_\sigma^{tr}]u,u\rangle.
}
\tag{FNR.6}
```

The full-loop rigidity upgrade asks for the transport metric to be only one
component of a retained full selector package

```math
\mathcal G_\sigma
=
\big(
G_\sigma^{tr},
G_\sigma^p,
G_\sigma^\nu,
G_\sigma^{time},
G_\sigma^{div},
G_\sigma^{cut},
G_\sigma^{sgn},
G_\sigma^{geo}
\big),
\tag{FNR.7}
```

carrying the same local Navier--Stokes participation law:

```math
\partial_su+Lu+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{FNR.8}
```

The desired exact operator identity is

```math
\boxed{
\partial_s\mathcal G_\sigma
+[L,\mathcal G_\sigma]_{\rm tr}
+\mathcal P_\sigma
+\mathcal V_\sigma
+\mathcal I_\sigma
+\mathcal B_\sigma
+\mathcal S_\sigma
+\mathcal G_\sigma^{geo}
=
\partial_\sigma\mathcal K_\sigma
+\mathcal R_\sigma.
}
\tag{FNR.9}
```

Here:

```math
\mathcal P_\sigma
=\text{pressure complement/conormal/harmonic-memory channel,}
\tag{FNR.10}
```

```math
\mathcal V_\sigma
=\text{viscous selector--Laplacian commutator channel,}
\tag{FNR.11}
```

```math
\mathcal I_\sigma
=\text{divergence/incompressibility channel,}
\tag{FNR.12}
```

```math
\mathcal B_\sigma
=\text{cutoff/collar/boundary channel,}
\tag{FNR.13}
```

```math
\mathcal S_\sigma
=\text{signed-saturation channel,}
\tag{FNR.14}
```

and \(\mathcal G_\sigma^{geo}\) is the Body-IV deformation/return channel.

The capacity is

```math
\Phi_\sigma
=
{1\over2}
\langle \mathcal K_\sigma u,u\rangle_{\mathcal S}.
\tag{FNR.15}
```

The exact admissibility requirements are:

```math
\boxed{
\inf_\sigma\Phi_\sigma>-\infty,
\qquad
\langle \mathcal R_\sigma u,u\rangle_{\mathcal S}
\in L^1_\sigma+\varepsilon\nu D_\sigma+R_{\rm legal}.
}
\tag{FNR.16}
```

## 2. Conditional proof if the identity is available

Pair `(FNR.9)` with the selected velocity on the retained same carrier.  The
transport component gives `(FNR.6)`.  The pressure, viscous, time, divergence,
cutoff, signed, scale, and geometry terms are not discarded; they are exactly
the other components of `(FNR.9)`.

Thus the selected full-packet commutator satisfies

```math
\mathcal C_\sigma^{full}
=
-{1\over2}
\left\langle
\partial_\sigma\mathcal K_\sigma u,u
\right\rangle_{\mathcal S}
-{1\over2}
\left\langle
\mathcal R_\sigma u,u
\right\rangle_{\mathcal S}
+\mathcal E_\sigma^{scale/time},
\tag{FNR.17}
```

where \(\mathcal E_\sigma^{scale/time}\) is not an external error.  It is the
exact correction produced when the selected normalized velocity and packet
coordinates depend on \(\sigma\); by construction it is part of the time/scale
channel in `(FNR.9)`.

Using `(FNR.15)`, `(FNR.17)` becomes

```math
\mathcal C_\sigma^{full}
\le
-\partial_\sigma\Phi_\sigma
+\varepsilon\nu D_\sigma
+T_\sigma
+R_{\rm legal}(\sigma),
\tag{FNR.18}
```

with \(T_\sigma\in L^1_\sigma\), provided `(FNR.16)` holds.  Taking the selected
positive part gives exactly `(FNR.1)`.

Therefore:

```math
\boxed{
\text{transported full-loop selector identity }(FNR.9)
+\text{ admissibility }(FNR.16)
\Longrightarrow
\text{ParticipationPreservingNoResidueFullCycle.A}.
}
\tag{FNR.19}
```

This deletes the source-square residue at the level of algebra.

## 3. Where the direct proof fails from current inputs

The current inputs do not produce `(FNR.9)`--`(FNR.16)`.

The transport component alone can be handled by material/cotangent transport:

```math
\left(
\partial_s
+u\cdot\nabla_x
-(\nabla u)^\top\xi\cdot\nabla_\xi
\right)
g_\sigma^{tr}
=
\partial_\sigma k_\sigma+r_\sigma.
\tag{FNR.20}
```

This moves the principal strain commutator into capacity motion.  But the full
loop requires more than `(FNR.20)`.

First, viscosity does not commute with a material/cotangent selector.  For a
symbol \(g_\sigma(x,\xi)\), the principal viscous commutator contains

```math
\boxed{
\nu\,[\Delta,\operatorname{Op}(g_\sigma)]
\quad\leadsto\quad
2\nu\,\xi\cdot\nabla_x g_\sigma
\text{ at principal-symbol level.}
}
\tag{FNR.21}
```

This term is not sign-definite and is not summable merely because the transport
commutator has been killed.  It is absorbable only if the transported selector
remains in a controlled symbol/cutoff class on the same carrier.

Second, the pressure channel is not a scalar recovery after selection.  The
same carrier must retain

```math
\boxed{
\langle G_\sigma^p\nabla p,u\rangle_{\mathcal S}
}
\tag{FNR.22}
```

with conormal/cutoff and harmonic-memory records.  Calderon--Zygmund recovery
helps after the transport product is retained on the same carrier, but it does
not by itself give a terminal \(\sigma\)-capacity drop or \(L^1_\sigma\) tail.

Third, the transported selector can leave the admissible carrier class.  Along
the material deformation \(F\),

```math
\partial_sF=(\nabla u)F,
\qquad
\partial_sG_{mat}=-2A\,S\,A^\top,
\tag{FNR.23}
```

with \(A=F^{-1}\).  Uniform return of the carrier geometry requires the
unweighted deformation clock:

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{\rm geom}(\sigma)\,d\sigma<\infty
}
\tag{FNR.24}
```

or an equivalent Body-IV return rigidity theorem.  Without `(FNR.24)`, the
selector can be transported by the fluid but still become too distorted to
recertify the tower and heat-scale packet.

Thus the attempted proof closes algebraically but fails at carrier
admissibility:

```math
\boxed{
\text{material transport of the selector}
\not\Longrightarrow
\text{full-loop same-carrier return.}
}
\tag{FNR.25}
```

## 4. Exact theorem left

The missing theorem is no longer a scalar source-square estimate.  It is:

```math
\boxed{
\texttt{FullLoopCarrierRigidity.A}
}
\tag{FNR.26}
```

with content:

```math
\boxed{
\begin{gathered}
\text{the selected carrier admits a transported full Hodge-Stokes selector}
\ \mathcal G_\sigma,\\
\text{the full-loop identity }(FNR.9)\text{ holds on the same carrier,}\\
\Phi_\sigma\text{ is bounded below,}\\
\mathcal R_\sigma\text{ is viscous-absorbable, summable, or legal,}\\
\text{and the Body-IV return keeps the packet in the tower/heat-scale class.}
\end{gathered}
}
\tag{FNR.27}
```

Equivalently:

```math
\boxed{
\texttt{TransportedFullHodgeStokesSelector.A}
+\texttt{BodyIVSameCarrierReturn.A}
\Longrightarrow
dK_{4B}=0.
}
\tag{FNR.28}
```

Once `(FNR.26)` is installed, the defect ledgers are not needed for this branch:
the selected carrier remains one object all the way around the four-body loop,
so the source-square residue is never created.

## 5. Result

This direct attempt does not prove `ParticipationPreservingNoResidueFullCycle.A`
from current inputs.

It proves the exact conditional implication `(FNR.19)` and identifies the live
production theorem `(FNR.26)`.  The obstruction is not the transport skew part;
that part is algebraically solved.  The obstruction is retaining the transported
full pressure--viscosity--incompressibility--geometry selector as the same
admissible carrier around the full four-body loop.
