# CM certificate direction correction

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
`Pack`, `Part`, and `Field` are the canonical route-relative primitive services
on `(u,p,\Phi,F)`.  They form the witness envelope used to certify membership.

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

NS-MPP has installed `CM` as an exact analytic certificate for membership and
has installed `Pack/Part/Field` as the canonical route-relative witness envelope.
It has not installed the blunt converse witness theorem

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Member(Q;\mathfrak O_{NS}^{work}).
```
