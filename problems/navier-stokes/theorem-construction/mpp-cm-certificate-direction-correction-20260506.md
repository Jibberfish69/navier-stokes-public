# CM certificate direction correction

## Authority Cap - Historical Route Audit

This older audit predates the May 25 pass/fail CM completion audits. Its open-middle, blunt-converse, or remaining-exclusion language is historical route hygiene. Current CM proof status uses finite Clay witness entry, Pack/Part/Field finite-failure exhaustion, and CM contrapositive embedding. Absence of the raw converse `not CM => not Member` is not an active blocker for the current CM proof.

## 2026-06-20 Part Ontology Correction

`Part` is not created by the CM certificate.  The original incompressible
Navier--Stokes law is the participation ontology of the candidate solution:
the same velocity-pressure pair satisfies the pressure-viscosity equation and
incompressibility under the fixed viscosity and the same initial datum.

The indexed symbol `Part_{N,Q}` is only the finite-depth, packet-local Silver
record of that already-governing law on the selected record `Q`.  It is not a
second participation source, and it is not supplied by `Pack_Q`.

Thus the certificate notation below is route-relative witness notation.  It is
allowed to certify membership only for an already original-NS participating
candidate; it does not define what it means to be an NS participant.

## Status

Direction audit for the class-membership witness surfaces.

The theorem-grade installed direction is the certificate direction:

```math
\boxed{
\forall N\ \exists r_N>0:
CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
}
\tag{CMCert.A}
```

with

```math
CM_{N,r,Q}
:=
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

The blunt converse is not installed:

```math
\boxed{
\neg CM_{N,r,Q}
\centernot\Longrightarrow_{\mathrm{installed}}
\neg Member(Q;\mathfrak O_{NS}^{work}).
}
```

Equivalently, a failed route-relative certificate at a selected depth/scale is
not by itself a theorem-grade proof that the object has exited the working
class.

## Installed Surrounding Structure

The class-exit primitive remains

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
```
`Pack`, indexed `Part`, and `Field` are the canonical route-relative witness
records on `(u,p,\Phi,F)`.  They form the Silver witness envelope used to
certify membership after the original Navier--Stokes participation law has
already supplied the object under test.

The installed first-exit statement is only the route-relative endpoint
decomposition:

```math
\text{first class-exit}
\Longrightarrow
\text{first failure of at least one of }Pack,\ Part,\ Field.
```

This is weaker than the pointwise logical converse
`\neg CM_{N,r,Q}\Rightarrow\neg Member(Q;\mathfrak O_{NS}^{work})`.

## Logical Boundary

Since

```math
CM_{N,r,Q}:=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
```

the statement

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}
```

is exactly `\neg CM_{N,r,Q}`.  Therefore the reverse face-failure implication
and the blunt aggregate converse are not two different missing claims.  They
are the same logical burden after unpacking the definition of `CM`.

The installed direction gives the contrapositive:

```math
Exit(Q;\mathfrak O_{NS}^{work})
\Longrightarrow
\neg CM_{N,r_N,Q}
\Longleftrightarrow
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right)
\text{ on the same-fluid witness window.}
```

The missing converse/equivalence is:

```math
\left(
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\neg Field_{N,r,Q}
\right)
\Longrightarrow
Exit(Q;\mathfrak O_{NS}^{work}).
```

Equivalently:

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

Installing either displayed implication installs the other, because
`Exit(Q;\mathfrak O_{NS}^{work}) := \neg Member(Q;\mathfrak O_{NS}^{work})`
and `CM` is the conjunction of the three face predicates.  So the real
logical hinge is not a distinction between "face failure" and "not CM"; it is
whether the `Pack/Part/Field` envelope is merely a sufficient certificate for
membership or a necessary characterization of membership on the route.

## Safe Claim

NS-MPP has installed `CM` as an exact analytic certificate for membership for
an original-NS participating candidate, and has installed `Pack/Part/Field` as
the canonical route-relative witness envelope.  The certificate does not make
`Pack` the source of participation and does not make indexed `Part_{N,Q}` the
ontology of the solution.
It has not installed the blunt converse witness theorem

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Member(Q;\mathfrak O_{NS}^{work}).
```
