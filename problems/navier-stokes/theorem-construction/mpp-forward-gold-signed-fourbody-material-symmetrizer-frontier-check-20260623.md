---
theorem_id: forward-gold-signed-fourbody-material-symmetrizer-frontier-check-20260623
status: checked-sharpened-final-local-obstruction-to-signed-symmetrizer-commutator
logical_landing_node: signed_fourbody_material_symmetrizer
edge_effect: >-
  Checks the two MCP direct-attempt notes and sharpens the simultaneous
  material four-body frontier. The necessity proof is correct: once the
  interface envelope has placed dK_iface on the residual side, a pure-gold
  closure has no third option. The same-packet interface defect must either be
  produced inside the left-side terminal clock/loss of the simultaneous
  material four-body identity, or it must be summable as a residual. The direct
  proof attempt reduces this exactly to the signed commutator estimate for a
  positive same-packet symmetrizer H_sigma=I+K_sigma. Existing interface
  envelope lemmas are unsigned and do not construct this commutator sign.
parents:
  - problems/navier-stokes/theorem-construction/mcp-simultaneousmaterialfourbodypacketcoercivity-directproofattempt-simultaneousmaterialfourbodypacketcoercivity-a-86a4744248.md
  - problems/navier-stokes/theorem-construction/mcp-signedfourbodymaterialsymmetrizer-directattempt-signedfourbodymaterialsymmetrizer-a-56927a0650.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-kawashima-fourbody-operator-form-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-interface-defect-production-equivalence-to-terminal-clock-check-20260623.md
---

# Signed Four-Body Material Symmetrizer Frontier Check

Date: 2026-06-23

## 0. Check result

The two MCP notes are consistent with the current four-body frontier, and they
sharpen it.

The four-body solution proves no loose same-packet defect once the transported
material packet is inside the simultaneous coercive identity. The open local
step is the signed construction that puts the interface defect into that
identity.

The exact remaining theorem is:

```math
\partial_\sigma H_\sigma
+
H_\sigma L_\sigma
+
L_\sigma^\ast H_\sigma
\le
-c\,W_{\rm clock,\sigma}
-
M_{\rm loss,\sigma}
+
R_\sigma,
\tag{S4S.1}
```

where

```math
H_\sigma
=
I+K_{SQ}+K_{QC}+K_{CG}+K_{GS}
```

is positive on the same transported material packet, and

```math
W_{\rm clock,\sigma}\,d\sigma
=
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}.
\tag{S4S.2}
```

Equivalently,

```math
-\left\langle
Z,
(\partial_\sigma H_\sigma+H_\sigma L_\sigma+L_\sigma^\ast H_\sigma)Z
\right\rangle
\ge
c\,W_{\rm clock,\sigma}(Z)
+
M_{\rm loss,\sigma}(Z)
-
R_\sigma(Z).
\tag{S4S.3}
```

This is the missing signed four-body commutator estimate.

## 1. Why the necessity proof is correct

The installed interface envelope gives:

```math
dK_{\rm orient}^+
\le
dD_S^{rad}
+
dD_Q^w
+
d\mathcal K_{\rm iface}
+
dR_{\rm legal}.
\tag{S4S.4}
```

This is not yet coercive.  The term

```math
d\mathcal K_{\rm iface}
```

is still exposed unless it is part of the left-side clock/loss or already
known to be summable.

The corrected terminal clock is:

```math
d\mathfrak C_N
\simeq
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
dK_{\rm sel/collar}.
\tag{S4S.5}
```

If the simultaneous identity

```math
d\mathfrak L_{4B,N}
+
c\,d\mathfrak C_N
+
d\mathcal L_{4B,N}
\le
dR_{4B,N}
\tag{S4S.6}
```

is proved with \(\mathfrak L_{4B,N}\) bounded below and \(R_{4B,N}\) summable,
then integration gives

```math
\int_{\sigma_0}^{\infty}d\mathfrak C_N<\infty.
\tag{S4S.7}
```

Since \(d\mathcal K_{\rm iface}\) is one component of \(d\mathfrak C_N\), this
immediately gives

```math
\int_{\sigma_0}^{\infty}d\mathcal K_{\rm iface}<\infty.
\tag{S4S.8}
```

If \(d\mathcal K_{\rm iface}\) is not produced on the left side and is not
summable, then the strongest envelope leaves it on the right side:

```math
d\mathfrak L_{4B,N}
+
dD_{4B,N}
+
dA_{4B,N}
\le
dR_{4B,N}
+
d\mathcal K_{\rm iface}.
\tag{S4S.9}
```

Integrating `(S4S.9)` gives no finite bound on the four-body clock when
\(\int d\mathcal K_{\rm iface}=\infty\).  Thus the necessity statement is
right: a pure-gold closure must either produce \(d\mathcal K_{\rm iface}\)
inside the same-packet left-side clock/loss, or prove it summable as a residual.

## 2. Why the existing envelope does not prove it

The envelope `(S4S.4)` is unsigned.  It identifies where orientation defects
land, but it does not construct the off-diagonal operator \(K_\sigma\) whose
commutator gives those defects with the correct sign in \(d\mathfrak L_{4B,N}\).

Writing the frozen same-material operator schematically as

```math
L_\sigma=A_\sigma-B_\sigma+E_\sigma,
\tag{S4S.10}
```

the desired signed estimate becomes, up to the legal and moving-\(H\) terms,

```math
2B_\sigma
-
\left(A_\sigma^\ast K_\sigma+K_\sigma A_\sigma\right)
\ge
c\,W_{\rm clock,\sigma}
+
M_{\rm loss,\sigma}
-
R_\sigma.
\tag{S4S.11}
```

This is stronger than naming the defects.  It requires the four interface
blocks

```math
K_{SQ},\quad K_{QC},\quad K_{CG},\quad K_{GS}
```

to be chosen from the differentiated material Navier--Stokes law so that their
signed commutator has the correct orientation on the whole same-fluid packet.

## 3. Relation to the Gramian route

The finite-window Gramian cannot supply `(S4S.1)` because

```math
L^\ast G_T+G_TL
=
e^{TL^\ast}We^{TL}-W.
\tag{S4S.12}
```

It leaves the endpoint readout.  The infinite-time Gramian would give the
right sign only after stable no-return is already known, and that is the same
four-body coercivity problem in semigroup form.

So the frontier is not a Gramian theorem.  It is the direct signed symmetrizer
commutator theorem `(S4S.1)`.

## 4. Current state

The installed kernel theorem still matters: it says zero full same-packet loss
is only harmless gauge, so a retained non-gauge packet cannot be lossless.

The missing step is earlier in the algebra: build \(H_\sigma=I+K_\sigma>0\)
so that differentiating the one transported material packet produces the
signed coercive inequality `(S4S.1)`.

Thus:

```math
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}
```

is now equivalent, at the local algebraic heart, to

```math
\texttt{SignedFourBodyMaterialSymmetrizer.A}.
```

The proof is not closed until that signed same-packet commutator estimate is
proved from the material Navier--Stokes law.
