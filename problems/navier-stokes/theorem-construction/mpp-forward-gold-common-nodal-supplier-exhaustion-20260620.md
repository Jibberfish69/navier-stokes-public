# Common-Nodal Supplier Exhaustion

Date: 2026-06-20

## Status

Direct supplier exhaustion complete.  `CommonModeNodalSourceEvacuation.A` is
not installed by finite mode rank, finite smooth mode geometry, bounded overlap,
finite selected source mass, or by adjoining a positive packet atlas unless the
adjoined atlas tests also satisfy the same-shadow residue identity.

The common nodal source term is therefore not an independent Door 2 branch.  It
reduces to one of three exact suppliers:

```math
\boxed{
\text{PointwiseModeFrameOnSelectedSource.A}
}
\tag{CNS.1}
```

or

```math
\boxed{
\text{SelectedSourceSquareCarrierDomination.A}
+
\text{SourceSquareReserve.A}
+
\text{CommonModeNodalCollarPacking.A}
}
\tag{CNS.2}
```

or

```math
\boxed{
\text{PositiveAtlasTestEnrichedResidueIdentity.A}
}
\tag{CNS.3}
```

At current input strength, none of `(CNS.1)`--`(CNS.3)` is installed as a
smaller gold supplier.

## 1. Common nodal target

Let the selected positive source packet mass be

```math
\mu_m^+(P):=[q_m(P)]_+,
\qquad
P\in F_m^{src}.
\tag{CNS.4}
```

Let the finite mode packet values be

```math
\psi_i(P),
\qquad
i=1,\dots,N_{mode},
\qquad
|\psi_i(P)|\le1.
\tag{CNS.5}
```

For `0<kappa<1`, define

```math
F_{m,all,0}^{\kappa}
:=
\{P\in F_m^{src}:\max_i|\psi_i(P)|<\kappa\}.
\tag{CNS.6}
```

The common nodal evacuation target is

```math
\boxed{
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
\operatorname{Legal}_{m,\kappa}+o_m(1).
}
\tag{CNS.7}
```

This is exactly the remainder left by the finite oriented-lobe inequality.

## 2. Finite mode rank does not give pointwise source coverage

`NondegenerateModulationJacobian.A` is a finite-rank statement about tangent
directions.  It does not imply that the mode values cover every selected source
packet.

The finite countermodel is exact.  Take packets

```math
P_0,P_1,\dots,P_d.
\tag{CNS.8}
```

Put all selected positive source on `P_0`:

```math
\mu_m^+(P_0)=1,
\qquad
\mu_m^+(P_j)=0
\quad(j\ge1).
\tag{CNS.9}
```

Set every mode to vanish on `P_0`:

```math
\psi_i(P_0)=0
\qquad
\text{for every }i.
\tag{CNS.10}
```

Choose the mode values on `P_1,\dots,P_d` so that the finite modulation matrix
has a positive lower singular value.  Then the finite mode rank condition holds,
but

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)=1
\qquad
(0<\kappa<1).
\tag{CNS.11}
```

Thus `PointwiseModeFrameOnSelectedSource.A` is a genuine extra theorem, not a
consequence of the finite modulation Jacobian.

## 3. Common nodal packing is not supplied by smooth mode geometry

The source-square route would prove `(CNS.7)` from

```math
\sum_{P\in F_m^{src}}
{(\mu_m^+(P))^2\over w_m(P)}
\le C_S
\tag{CNS.12}
```

and

```math
\sum_{P\in F_{m,all,0}^{\kappa}}w_m(P)
\le
\varepsilon(\kappa),
\qquad
\varepsilon(\kappa)\downarrow0.
\tag{CNS.13}
```

Then Cauchy-Schwarz gives

```math
\sum_{P\in F_{m,all,0}^{\kappa}}\mu_m^+(P)
\le
C_S^{1/2}\varepsilon(\kappa)^{1/2}.
\tag{CNS.14}
```

The estimate `(CNS.13)` is not installed.  Smoothness of each mode test and
finite rank of the tangent frame do not bound the common nodal reference mass
on the selected source shadow.  The same packet model `(CNS.8)`--`(CNS.11)`,
with `w_m(P_0)=1`, gives

```math
\sum_{P\in F_{m,all,0}^{\kappa}}w_m(P)=1.
\tag{CNS.15}
```

Thus `CommonModeNodalCollarPacking.A` is a real geometric/source-support input.
It is not forced by the finite mode family unless the finite mode family is
known to be pointwise nondegenerate on the selected source support.

## 4. Positive atlas removes nodal invisibility but changes the readout

A finite nonnegative packet atlas

```math
0\le\chi_a(P)\le1,
\qquad
\sum_{a=1}^{N_\chi}\chi_a(P)=1
\quad(P\in F_m^{src})
\tag{CNS.16}
```

gives the exact identity

```math
\sum_{P\in F_m^{src}}\mu_m^+(P)
=
\sum_{a=1}^{N_\chi}
\sum_{P\in F_m^{src}}
[q_m(P)\chi_a(P)]_+.
\tag{CNS.17}
```

So an atlas kills the common nodal set algebraically.  It does not pay the
source unless the atlas tests also have controlled residue identities:

```math
\sum_{P\in F_m^{src}}q_m(P)\chi_a(P)
=
\mathcal R_{m,a}
-
\operatorname{Legal}_{m,a}
-
o_m(1).
\tag{CNS.18}
```

That is `PositiveAtlasTestEnrichedResidueIdentity.A`.  Current inputs do not
install `(CNS.18)` for arbitrary positive atlas tests.  At this resolution it
requires

```math
\text{TestEnrichedMinimalChainResidueIdentity.A}
+
\text{NoFreeTerminalZenoDonorChain.A}
\tag{CNS.19}
```

or a direct source-square / strict no-waste theorem on the same selected
carrier.

## 5. Carrier-first mode atlas is not a free escape

One can try to build the mode tests after selecting the native source carrier.
That removes family mismatch only after the carrier-first tests still satisfy
the modulation duality and legal pre-Cauchy commutator requirements:

```math
\text{NativeCarrierModeAtlas.A}
+
\text{ModeJacobianOnNativeCarrier.A}
+
\text{ModeLiftProjectionCommutatorLegal.A}
+
\text{ModeGaugeTimeVariationLegal.A}.
\tag{CNS.20}
```

The already checked carrier-first note reduces the first two inputs to native
carrier tangent observability.  That observability controls source-active
tangents only; source-null tangents return to `SourceNullTangentEvacuation.A`.
So carrier-first mode selection does not create a new common-nodal supplier.

## 6. Exact reduced state

The common nodal branch closes only under one of the following installed
strengths:

```math
\boxed{
\text{PointwiseModeFrameOnSelectedSource.A}
}
\tag{CNS.21}
```

or

```math
\boxed{
\text{SelectedSourceSquareCarrierDomination.A}
+
\text{SourceSquareReserve.A}
+
\text{CommonModeNodalCollarPacking.A}
}
\tag{CNS.22}
```

or

```math
\boxed{
\text{PositiveAtlasCoverage.A}
+
\text{PositiveAtlasTestEnrichedResidueIdentity.A}
+
\text{FiniteAtlasLegalSummability.A}.
}
\tag{CNS.23}
```

The first is a pointwise coverage theorem on the selected source carrier.  The
second is the source-square/no-waste route with an actual common nodal packing
bound.  The third is the positive-atlas route, which shifts the burden to a
test-enriched same-shadow residue identity.

## Verdict

`CommonModeNodalSourceEvacuation.A` is exhausted as a separate route.  It is not
proved by finite modes, finite rank, smooth nodal geometry, finite source mass,
or a positive atlas alone.

The source-active endpoint branch now reduces to the lobe-shadow same-shadow
residue identity plus one of the same already-live suppliers:

```math
\boxed{
\text{same-carrier source-square / strict no-waste}
\quad\text{or}\quad
\text{test-enriched same-shadow residue plus no-free Zeno}
\quad\text{or}\quad
\text{pointwise source-carrier mode coverage}.
}
\tag{CNS.24}
```
