# Soft-Lobe Mode-Test Compatibility Direct Test

Date: 2026-06-20

## Status

Direct compatibility test complete.  Soft packet lobe weights remove the hard
lobe boundary jump, but they are not automatically the canonical Door 2 dual
mode tests.

There are two exact ways to legalize them.  The packet-label route treats the
soft lobe as a bounded packet test after localization; then the burden is
`TestEnrichedMinimalChainResidueIdentity.A` for that bounded test.  The local
multiplier route realizes the soft lobe by Lipschitz functional calculus on the
mode multiplier; then the burden is closure of the legal test class under that
composition plus a packet-averaging oscillation estimate.

## 1. Soft packet weight

For an oriented mode value

```math
\psi_{i,\sigma}(P)
=
\sigma\psi_i(P),
\qquad
\sigma\in\{+1,-1\},
\tag{SLM.1}
```

define

```math
\zeta_{i,\sigma}^{\kappa}(P)
=
\chi_\kappa((\psi_{i,\sigma}(P))_+)(\psi_{i,\sigma}(P))_+.
\tag{SLM.2}
```

The desired soft-lobe source score is

```math
\sum_{P\in F_m^{src}}
q_m(P)\zeta_{i,\sigma}^{\kappa}(P).
\tag{SLM.3}
```

This is not the same score as the canonical modulation test

```math
\sum_{P\in F_m^{src}}
q_m(P)\psi_i(P).
\tag{SLM.4}
```

It is a bounded nonlinear function of the canonical packet mode value.

## 2. Packet-label route

In the packet-label route, `(SLM.3)` is formed after each packet source integral
has already been localized:

```math
q_m(P)
=
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt.
\tag{SLM.5}
```

Then the soft score is

```math
\sum_{P\in F_m^{src}}
\zeta_{i,\sigma}^{\kappa}(P)
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt.
\tag{SLM.6}
```

No spatial cutoff of the form

```math
\chi_\kappa((\phi_{i,\sigma,m})_+)(\phi_{i,\sigma,m})_+
\tag{SLM.7}
```

is inserted inside `Q(P)`.  Therefore this route creates no new local
lift/projection commutator beyond the already-localized packet source.

The price is exact: `(SLM.6)` is a bounded packet-label test.  Its signed
residue identity is not supplied by `ModeTestCompatibility.A`; it is supplied
only by the test-enriched same-shadow theorem:

```math
\boxed{
\left|
\sum_P
\zeta_{i,\sigma}^{\kappa}(P)\,dE_m(P)
\right|
\le
\operatorname{Legal}_{m,i,\sigma,\kappa}
+o_m(1).
}
\tag{SLM.8}
```

where

```math
dE_m
=
q_m\,d\mu_m-\Sigma_m\xi_m\,d\mu_m.
\tag{SLM.9}
```

Thus the packet-label route closes only from

```math
\boxed{
\text{TestEnrichedMinimalChainResidueIdentity.A for bounded packet functions
of the finite mode values.}
}
\tag{SLM.10}
```

By the finite-mode rank test, `(SLM.10)` still requires total-variation
same-shadow evacuation or a finite-dimensional residual ansatz with a Gram lower
bound.

## 3. Local multiplier route

The alternative is to build an actual local multiplier.  Suppose the canonical
mode test has

```math
\psi_i(P)=\operatorname{Av}_{Q(P)}\phi_{i,m}.
\tag{SLM.11}
```

Define

```math
\widetilde\phi_{i,\sigma,m}^{\kappa}
:=
\chi_\kappa((\sigma\phi_{i,m})_+)(\sigma\phi_{i,m})_+.
\tag{SLM.12}
```

If the legal local test class is closed under this Lipschitz composition, then
the multiplier norms obey

```math
\|\widetilde\phi_{i,\sigma,m}^{\kappa}\|_{\mathcal T}
\le
C_\kappa
\left(1+\|\phi_{i,m}\|_{\mathcal T}\right)
\tag{SLM.13}
```

for each test norm `T` used by the pre-Cauchy ledger, and the lift/projection
and gauge-time commutators are paid with constants depending on `kappa`.

This is the input

```math
\boxed{
\text{SoftLobeFunctionalCalculusLegal.A}_{\kappa}.
}
\tag{SLM.14}
```

It is not part of `ModeTestCompatibility.A` as currently stated.

## 4. Packet averaging mismatch

Even with `(SLM.12)`, the packet trace is

```math
\operatorname{Av}_{Q(P)}
\widetilde\phi_{i,\sigma,m}^{\kappa},
\tag{SLM.15}
```

not necessarily

```math
\zeta_{i,\sigma}^{\kappa}(P)
=
\chi_\kappa((\sigma\operatorname{Av}_{Q(P)}\phi_{i,m})_+)
(\sigma\operatorname{Av}_{Q(P)}\phi_{i,m})_+.
\tag{SLM.16}
```

Since the scalar function

```math
f_\kappa(r)=\chi_\kappa((\sigma r)_+)(\sigma r)_+
\tag{SLM.17}
```

is Lipschitz with constant at most `C_kappa`,

```math
\left|
\operatorname{Av}_{Q(P)}f_\kappa(\phi_{i,m})
-f_\kappa(\operatorname{Av}_{Q(P)}\phi_{i,m})
\right|
\le
C_\kappa
\operatorname{Av}_{Q(P)}
\left|
\phi_{i,m}-\operatorname{Av}_{Q(P)}\phi_{i,m}
\right|.
\tag{SLM.18}
```

Thus matching the composed multiplier trace to the packet-label soft weight
requires

```math
\sum_{P\in F_m^{src}}
|q_m(P)|
\operatorname{Av}_{Q(P)}
\left|
\phi_{i,m}-\operatorname{Av}_{Q(P)}\phi_{i,m}
\right|
\le
\operatorname{Legal}_{m,i}^{osc}+o_m(1).
\tag{SLM.19}
```

This is

```math
\boxed{
\text{PacketModeOscillationLegal.A}.
}
\tag{SLM.20}
```

Current inputs do not install `(SLM.19)` on the selected source-weighted
carrier.

## 5. Exact reduction

The soft-lobe test is legal by either of the following routes:

```math
\boxed{
\text{Packet-label route: }
\text{BoundedPacketFunctionTestEnrichedResidueIdentity.A}.
}
\tag{SLM.21}
```

or

```math
\boxed{
\text{Local-multiplier route: }
\text{SoftLobeFunctionalCalculusLegal.A}_{\kappa}
+
\text{PacketModeOscillationLegal.A}.
}
\tag{SLM.22}
```

The packet-label route has no new spatial commutator but inherits the
test-enriched residue wall.  The local-multiplier route has a native smooth test
but creates the functional-calculus and packet-oscillation obligations.

## Verdict

Soft lobes are algebraically better than hard lobes, but their test legality is
not free.  The clean packet-label formulation lands on
`TestEnrichedMinimalChainResidueIdentity.A` for bounded functions of the finite
mode values.  The smooth multiplier formulation lands on
`SoftLobeFunctionalCalculusLegal.A_kappa + PacketModeOscillationLegal.A`.

So the soft-lobe branch remains exact and noncircular only when one of those
test-compatibility routes is installed before the source-positive readout is
claimed.
