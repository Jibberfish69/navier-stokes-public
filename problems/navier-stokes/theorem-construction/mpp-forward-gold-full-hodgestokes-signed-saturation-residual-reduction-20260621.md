---
theorem_id: forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621
status: finite-signed-saturation-paid-terminal-zeno-child-open
logical_landing_node: full_hodgestokes_signed_saturation_residual_reduction
edge_effect: "Reduces the signed-saturation residual in the full Hodge-Stokes remaining-defect core. After the selected packet first carries the full participation tuple (R,N,P,V,I), the polar identity gives dA=dJ+dN and the only unpaid term is the missing negative partner dN_miss. The finite donor graph is already paid by retained signed partners, legal exits, LocalDonorBalance.A, and EntranceLeafDecay.A. Therefore a nonzero signed-saturation residual is either legal/collar paid or becomes the infinite terminal Zeno donor chain with inherited positive native source. This does not close the Zeno child; it identifies the exact surviving signed-saturation branch under the full-tuple rule."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-remaining-defect-core-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parabolic-signed-saturation-after-heat-packet-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-zeno-donor-chain-child-after-parabolic-saturation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-participation-tuple-coupling-breaker-live-edge-audit-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Signed-Saturation Residual Reduction

Date: 2026-06-21

## 0. Aim

The remaining-defect core left the signed-saturation residual

```math
\mathcal R_{\rm sat}
=
\text{missing negative signed partner }dN_{\rm miss}.
\tag{SSR.1}
```

This note reduces that residual under the full-tuple rule:

```math
R_{j,Q}+N_{j,Q}+P_{j,Q}+V_{j,Q}=L_{j,Q},
\qquad
I_{j,Q}\text{ retained on the same carrier.}
\tag{SSR.2}
```

The result is:

```math
\boxed{
\mathcal R_{\rm sat}
\Rightarrow
\mathcal R_{\rm legal}
\quad\text{or}\quad
\text{terminal Zeno donor chain with inherited positive native source.}
}
\tag{SSR.3}
```

So the finite signed-saturation part is paid.  The infinite Zeno child remains
open.

## 1. Polar identity after full-tuple retention

Let \(h_P\) be the scalar density extracted only after the selected full
Hodge-Stokes packet has carried `(SSR.2)`.  Define

```math
dA_P=[h_P]_+\,dy\,ds,
\qquad
dN_P=[h_P]_-\,dy\,ds,
\qquad
dJ_P=h_P\,dy\,ds.
\tag{SSR.4}
```

Then exactly

```math
dA_{\mathcal S}
=
dJ_{\mathcal S}+dN_{\mathcal S}.
\tag{SSR.5}
```

Decompose the negative selected partner:

```math
dN_{\mathcal S}
=
dN_{\rm ret}
+
dN_{\rm legal}
+
dN_{\rm miss}.
\tag{SSR.6}
```

Here \(dN_{\rm miss}\) is the only signed-saturation residual.

## 2. Donor graph reduction

Build the signed donor graph on retained full-tuple packets.  A selected
positive receiver has a donor obligation.  Following that obligation backward,
there are four finite cases.

First, the negative partner is retained on the same carrier.  It belongs to
\(dN_{\rm ret}\), so it is not \(dN_{\rm miss}\).

Second, the negative partner exits through pressure, cutoff, collar,
projection, off-family, boundary, stopped residual, or another declared full
packet legal channel.  It belongs to \(dN_{\rm legal}\), hence to
\(\mathcal R_{\rm legal}\).

Third, the donor obligation enters a finite internal donor path.  The finite
path telescopes by the installed local donor balance.  Its endpoint is retained
signed partner, legal exit, or entrance leaf.

Fourth, a finite entrance leaf is removed by the installed entrance-leaf decay.

Thus every finite donor path is paid:

```math
\boxed{
\text{finite donor graph}
\Rightarrow
dN_{\rm ret}+dR_{\rm legal}+o(1).
}
\tag{SSR.7}
```

No Cauchy/Young, pressure-only, viscosity-only, or tail-only estimate is used in
this step.  The tuple has already been retained; the legal terms are full-packet
exits.

## 3. Infinite branch

The only remaining donor graph is an infinite same-fluid terminal chain

```math
\cdots\to P^{-2}\to P^{-1}\to P^0,
\tag{SSR.8}
```

with shrinking heat scales and finite parabolic length:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
\tag{SSR.9}
```

The selected lower bound passes along the chain as inherited positive native
source after parabolic normalization.  This is exactly the surviving child:

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}
}
\tag{SSR.10}
```

or, in concrete form,

```math
\boxed{
\text{terminal Zeno donor chain with inherited positive native source.}
}
\tag{SSR.11}
```

## 4. Current result

The signed-saturation residual is therefore not a broad hidden mismatch:

```math
\boxed{
dN_{\rm miss}\ne0
\Rightarrow
\mathcal R_{\rm legal}
\cup
\text{TerminalZenoDonorChain}.
}
\tag{SSR.12}
```

The remaining Zeno child still requires one of the already isolated suppliers:

```math
\boxed{
\text{same-carrier source-square/Carleson control,}
}
\tag{SSR.13}
```

or

```math
\boxed{
\text{temporal non-atomicity by super-}L^1\text{ source residence,}
}
\tag{SSR.14}
```

or

```math
\boxed{
\text{rigid Zeno source-residue class plus residue Liouville.}
}
\tag{SSR.15}
```

This note proves the finite signed-saturation reduction and identifies the
exact infinite child.  It does not prove `(SSR.13)`--`(SSR.15)`.
