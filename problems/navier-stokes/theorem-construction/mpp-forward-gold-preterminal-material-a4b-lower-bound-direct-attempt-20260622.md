---
theorem_id: forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622
status: retained-gauge-fixed-material-packet-lower-bound-proved-by-lossless-rigidity-endpoint-production-open
logical_landing_node: preterminal_material_packet_a4b_lower_bound
edge_effect: >-
  Proves the lower-bound admission inside the retained gauge-fixed compactness
  class: a preterminal material heat-scale packet with non-removable critical density
  cannot have vanishing same-carrier A_4B participation, because the Body II/III
  lossless branch converges to a Galilean/affine-pressure gauge packet. The
  remaining open production step is endpoint singularity to retained gauge-fixed
  material critical packet on the same transported annular carrier.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-packet-lower-bound-bypass-audit-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-bodyii-bodyiii-arrow-fill-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mcp-moving-cylinder-ckn-admissibility-lemma-f2a546e26f.md
---

# Preterminal Material Packet \(A_{4B}\) Lower-Bound Direct Attempt

Date: 2026-06-22

## 0. Target

The bypass audit reduced the noncircular preterminal route to:

```math
\text{singular critical visibility}
\Longrightarrow
\text{fixed lower bound in the same material-annulus }A_{4B}\text{ packet}.
\tag{PAL.1}
```

This note proves the part of `(PAL.1)` that is already licensed by the
four-body lossless rigidity theorem:

```math
\boxed{
\text{retained gauge-fixed material critical density}
\Longrightarrow
\text{positive same-carrier }A_{4B}\text{ lower bound}.
}
\tag{PAL.2}
```

It does not prove that every endpoint singularity produces such a retained
gauge-fixed material packet.  That production step is separated in Section 5.

## 1. Gauge-fixed critical density

On a retained material heat-scale packet \(P\), let \(U\) and \(\Pi\) be the normalized
velocity and pressure in the transported packet coordinates.  Remove the
removable gauge modes:

```math
U^\perp
:=
U-\bar U_P(s),
\tag{PAL.3}
```

and

```math
\Pi^\perp
:=
\Pi-\Pi_{\rm aff},
\tag{PAL.4}
```

where \(\bar U_P(s)\) is the packet Galilean mode and \(\Pi_{\rm aff}\) is the
affine pressure gauge left by the lossless Body II/III branch.

Define the non-removable critical density

```math
\mathcal C^\perp(P)
:=
\int_P
\left(
|U^\perp|^3+|\Pi^\perp|^{3/2}
\right)\,dy\,ds .
\tag{PAL.5}
```

A retained non-gauge critical packet means

```math
\mathcal C^\perp(P)\ge \varepsilon_0>0 .
\tag{PAL.6}
```

This is the correct critical visibility for the four-body route.  Raw CKN mass
is not enough, because Galilean or affine-pressure gauge content can be large
without being singular participation activity.

The packet \(P\) may be a transported core cylinder or a transported annular
shell.  The annular form is essential for the endpoint time/storage overlap
theorem.  The preterminal critical lower-bound bypass only needs a retained
material heat-scale packet with its own log-scale interval; a nested child core
is still a packet at the next microscope.

## 2. Lower-bound theorem inside the retained compactness class

Fix the retained packet class used by the Body II/III arrow theorem: the
transported carrier, selector/collar datum, pressure decomposition, local
energy bounds, and full packet identity are all retained with the uniform
constants required by that theorem.

Then there is a constant \(c(\varepsilon_0)>0\), depending only on
\(\varepsilon_0\) and the retained packet class constants, such that

```math
\mathcal C^\perp(P)\ge\varepsilon_0
\quad\Longrightarrow\quad
\int_P A_{4B}\ge c(\varepsilon_0).
\tag{PAL.7}
```

Here \(A_{4B}\) is the same pressure-viscosity-incompressibility-velocity
participation activity on the same transported material carrier.  The
cutoff-collar term is included only as the Young-envelope collar channel inside
that same packet.

## 3. Proof by lossless-rigidity contradiction

Suppose `(PAL.7)` fails.  Then there is a retained sequence \(P_n\) such that

```math
\mathcal C^\perp(P_n)\ge\varepsilon_0
\tag{PAL.8}
```

but

```math
\int_{P_n}A_{4B}\to0.
\tag{PAL.9}
```

Since every visible channel of the same packet is part of \(A_{4B}\), `(PAL.9)`
is the unpaid lossless four-body branch.  The Body II/III arrow theorem then
gives same-carrier compactness and strong convergence of the full packet:

```math
U_n\to U_\ast,
\qquad
\Pi_n^{loc}\to\Pi_\ast^{loc},
\qquad
\nabla U_n\to\nabla U_\ast
\tag{PAL.10}
```

in the selected local topologies after passing to a subsequence.

The lossless rigidity consequence gives

```math
\nabla U_\ast=0,
\qquad
S(U_\ast)=0,
\qquad
\omega_\ast=0,
\qquad
\nabla\Pi_\ast=\text{affine-pressure gauge}.
\tag{PAL.11}
```

After the gauge removal `(PAL.3)`--`(PAL.4)`,

```math
U_\ast^\perp=0,
\qquad
\Pi_\ast^\perp=0.
\tag{PAL.12}
```

The same-carrier convergence passes the gauge-fixed critical density:

```math
\mathcal C^\perp(P_n)
\longrightarrow
\mathcal C^\perp(P_\ast)
=0.
\tag{PAL.13}
```

This contradicts `(PAL.8)`.  Therefore `(PAL.7)` holds.

## 4. What this proves for the bypass

The preterminal bypass from the audit now has an installed internal lower-bound
step:

```math
\boxed{
\text{retained gauge-fixed material critical packet}
\Longrightarrow
\int_P A_{4B}\ge c>0.
}
\tag{PAL.14}
```

Together with fixed transported annular atlas counting,

```math
\sum_j{\bf 1}_{J_j}\le K,
\tag{PAL.15}
```

infinitely many such packets contradict the four-body reserve:

```math
\sum_j c
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty .
\tag{PAL.16}
```

Thus the only remaining preterminal bypass production step is not a scalar CKN
packing estimate.  It is the same-carrier production of the retained
gauge-fixed material critical packet.

## 5. Remaining open production step

The current repo has CKN endpoint visibility:

```math
\limsup_{r\downarrow0}\mathcal C(Q_r)\ge\varepsilon_{CKN}.
\tag{PAL.17}
```

It also has moving-cylinder CKN admissibility under retained bounded material
frame distortion.

What is not yet installed is:

```math
\boxed{
\text{finite-time singularity}
\Longrightarrow
\text{infinitely many retained material heat-scale packets with }
\mathcal C^\perp(P_j)\ge\varepsilon_0.
}
\tag{PAL.18}
```

This is the exact remaining producer:

```math
\boxed{
\texttt{EndpointSingularityToRetainedGaugeFixedMaterialCriticalPacket.A}
}
\tag{PAL.19}
```

If bounded material frame/gauge retention fails, the branch is already the
same-packet Part face.  If raw critical mass survives only in removable
Galilean or affine-pressure gauge, it is not selected singular participation
activity.  If non-removable critical mass survives on a retained material
annulus, `(PAL.7)` admits it into \(A_{4B}\).

## Verdict

The lower-bound admission is now proved in the retained gauge-fixed class:

```math
\boxed{
\mathcal C^\perp(P)\ge\varepsilon_0
\Longrightarrow
\int_P A_{4B}\ge c(\varepsilon_0).
}
\tag{PAL.20}
```

The gold route still needs the production theorem `(PAL.18)`, or it consumes
failure of retained material packet production as the CM Part face.
