---
theorem_id: forward-gold-direct-simultaneous-material-fourbody-xterm-identity-direct-attempt-20260622
status: direct-attempt-reduces-to-exact-material-exchange-concomitant-not-installed
logical_landing_node: direct_simultaneous_material_fourbody_xterm_identity
edge_effect: >-
  Tests the live internal face left after the kernel theorem, retained frozen
  compactness/lsc, Gramian test, and no-return test. The useful zero-loss fact
  is already installed: ker L_4B,N=G. What is still needed is not another
  observability statement but an instantaneous, bounded-below cross-term
  identity for the one transported material packet. Differentiating a candidate
  X_ij shows the exact requirement: the adjacent exchange mismatch must be the
  differential of a bounded same-packet bilinear concomitant. The installed
  material identities give signed adjacent exchange measures and local
  retention criteria, but they do not prove that the full SQ, QC, CG, GS
  mismatch one-form is exact with a bounded primitive. Cumulative primitives
  are circular. Thus DirectSimultaneousMaterialFourBodyXTermIdentity.A reduces
  to ExactMaterialFourBodyExchangeConcomitant.A.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
---

# Direct Simultaneous Material Four-Body X-Term Identity Direct Attempt

Date: 2026-06-22

## 0. Point

The kernel theorem helps at exactly one place:

```math
\ker\mathcal L_{4B,N}=\mathcal G,
\qquad
A_{\rm sel}\big|_{\mathcal G}=0.
\tag{DXI.1}
```

It says that a lossless retained packet is harmless gauge.

The live question is different.  The simultaneous four-body theorem still needs
instantaneous cross-terms

```math
X_{SQ},\qquad X_{QC},\qquad X_{CG},\qquad X_{GS}
\tag{DXI.2}
```

inside one bounded-below storage

```math
\mathfrak L_{4B,N}
=
L_S+L_Q+L_C+L_G
+X_{SQ}+X_{QC}+X_{CG}+X_{GS}.
\tag{DXI.3}
```

These \(X\)-terms must be state functionals of the same transported material
packet.  They cannot be cumulative records of past exchange.

## 1. What an \(X\)-term must be

Let

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N)
\tag{DXI.4}
```

be the retained material packet for

```math
\partial_s v+A^T\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{DXI.5}
```

For one adjacent interface, write a candidate instantaneous cross-term as

```math
X_{SQ}(\mathfrak U_N)
=
2\operatorname{Re}\langle S_N,K_{SQ}Q_N\rangle_{\mathcal H_N}.
\tag{DXI.6}
```

Then along the same material packet,

```math
\begin{aligned}
dX_{SQ}
= {}&
2\operatorname{Re}\langle dS_N,K_{SQ}Q_N\rangle
+2\operatorname{Re}\langle S_N,K_{SQ}dQ_N\rangle  \\
&+
2\operatorname{Re}\langle S_N,(dK_{SQ})Q_N\rangle .
\end{aligned}
\tag{DXI.7}
```

Thus \(X_{SQ}\) cancels the \(S\to Q\) exchange mismatch only when the mismatch
is the differential of this same-packet bilinear concomitant, up to already
enveloped strict loss or residual.

The same condition holds for the other interfaces:

```math
dX_{ij}
=
-d\mu_{ij}
+d\mathcal D_{ij}
+dR_{ij},
\qquad
ij\in\{SQ,QC,CG,GS\},
\tag{DXI.8}
```

with

```math
d\mathcal D_{ij}\ge0
\tag{DXI.9}
```

and \(dR_{ij}\) already part of the same four-body residual.

## 2. Exactness requirement

The adjacent mismatch current is a one-form on the retained packet state:

```math
\omega_{ij}(\mathfrak U_N)\,d\sigma
:=
dJ_i^{out}-dJ_j^{in}.
\tag{DXI.10}
```

An instantaneous \(X_{ij}\) exists only if this one-form is exact modulo strict
loss and same-packet residual:

```math
\boxed{
\omega_{ij}
=
-dX_{ij}
+d\mathcal D_{ij}
+dR_{ij}.
}
\tag{DXI.11}
```

This is stronger than signed exchange cancellation.  Signed cancellation says
that the four interface currents cancel after summing the four projected
balances.  It does not say each interface mismatch is the derivative of a
bounded state functional.

The primitive

```math
X_{ij}(\sigma)
=
-\int_{\sigma_0}^{\sigma}\omega_{ij}
\tag{DXI.12}
```

always gives \(dX_{ij}=-\omega_{ij}\), but it is not a proof.  Its lower bound
is exactly the no-free cumulative exchange statement.  That is the circular
construction already ruled out.

So the live condition is:

```math
\boxed{
\text{construct }X_{ij}\text{ as a bounded instantaneous bilinear concomitant
of the same material packet.}
}
\tag{DXI.13}
```

## 3. What is already exact

The installed Body-I/Body-II interface gives an exact same-rung identity:

```math
dL_S+dD_S^{rad}+dD_Q^w=dJ_{SQ}^{flux}.
\tag{DXI.14}
```

So the \(S\to Q\) interface is not merely a symbolic exchange.  With the same
rung storage, same factorial weight, same transported cutoff, and same
normalized heat cylinder, the mismatch is strict nonnegative tower/viscous
loss:

```math
dJ_{SQ}^{flux}-dL_S=dD_S^{rad}+dD_Q^w.
\tag{DXI.15}
```

This part is already in the packet.  It does not need a new primitive
cross-term to hide a mismatch.

The \(C_N\) coordinate has also been repaired on the retained branch: it is a
mixed material compactness record, and its fixed-atlas log-scale derivative is
generated by the same pressure-viscosity-incompressibility-velocity tower plus
scaling drift.

Those two facts remove two fake obstructions.  They do not construct the full
four-interface bounded symmetrizer.

## 4. What is still not exact

The remaining gap is not zero-loss rigidity.  It is the exact bilinear
concomitant for the full cycle.

The installed notes currently provide:

```math
\text{signed adjacent exchange identities,}
\tag{DXI.16}
```

```math
\text{same-carrier retention criteria for selected positive, negative, and
signed measure packets,}
\tag{DXI.17}
```

and

```math
\text{zero-loss rigidity on the retained quotient.}
\tag{DXI.18}
```

They do not yet provide:

```math
\boxed{
\omega_{SQ}+\omega_{QC}+\omega_{CG}+\omega_{GS}
\text{ as the differential of a bounded instantaneous same-packet cross-term.}
}
\tag{DXI.19}
```

Equivalently, they do not yet prove that every total positive material-record
exchange generated by the differentiated tower either enters the selected
four-body activity, becomes strict same-packet loss, or is cancelled by an
actual bounded \(X\)-term derivative.

## 5. Direct attempt result

The kernel theorem is useful but not sufficient.

It proves:

```math
\boxed{
\mathcal L_{4B,N}=0
\Longrightarrow
\mathfrak U_N\in\mathcal G
\Longrightarrow
A_{\rm sel}=0.
}
\tag{DXI.20}
```

The simultaneous packet still needs:

```math
\boxed{
d\mathfrak L_{4B,N}
+c\,dA_{4B,N}
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_{4B,N}
\le
dR_{4B,N}.
}
\tag{DXI.21}
```

The direct \(X\)-term attempt reduces `(DXI.21)` to the exact concomitant
statement:

```math
\boxed{
\texttt{ExactMaterialFourBodyExchangeConcomitant.A}
}
\tag{DXI.22}
```

with content:

```math
\boxed{
\text{the adjacent four-body exchange mismatch one-form is exact modulo
strict same-packet loss and same-packet residual, with a bounded instantaneous
primitive }X_{SQ}+X_{QC}+X_{CG}+X_{GS}.
}
\tag{DXI.23}
```

This is the precise remaining PDE construction.  The next proof has to build
that concomitant from the material integrations by parts, pressure constraint,
viscous Stokes form, compactness-coordinate derivative, and geometry/tower
return pairing.  A cumulative exchange primitive does not count.
