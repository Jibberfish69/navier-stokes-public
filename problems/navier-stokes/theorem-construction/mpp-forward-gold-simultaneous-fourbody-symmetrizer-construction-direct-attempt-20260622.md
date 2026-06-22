---
theorem_id: forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622
status: direct-construction-attempt-identifies-c-coordinate-realization-and-cross-term-primitive-obstruction
logical_landing_node: simultaneous_fourbody_symmetrizer_construction
edge_effect: >-
  Attacks the remaining PDE installation inside
  SimultaneousMaterialFourBodyPacketCoercivity.A. The attempt proves two exact
  constraints on any valid construction. First, the exchange cross-terms cannot
  be introduced merely as cumulative primitives of signed current mismatches:
  that cancels the mismatch algebraically but makes lower-boundedness equivalent
  to the same theorem being proved. Second, the C-coordinate must be realized as
  a preterminal same-packet no-loss defect functional with BV/AC evolution; an
  after-the-fact compactness theorem cannot supply dL_C, dX_QC, or dX_CG in a
  simultaneous differentiated packet identity. Thus the remaining PDE
  installation is narrowed to constructing a bounded-below instantaneous
  symmetrizer after replacing abstract C_N by a law-derived no-loss coordinate
  of the same material packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-law-bearing-full-tower-four-inequality-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
---

# Simultaneous Four-Body Symmetrizer Construction Direct Attempt

Date: 2026-06-22

## 0. Object

The object is still one transported material Navier-Stokes packet:

```math
\partial_s v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{SYM.1}
```

The desired full-packet functional is

```math
\mathfrak L_{4B,N}
=
L_S+L_Q+L_C+L_G
+X_{SQ}+X_{QC}+X_{CG}+X_{GS}.
\tag{SYM.2}
```

The construction must prove

```math
d\mathfrak L_{4B,N}
+c\,dA_{4B,N}
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_{4B,N}
\le
dR_N,
\tag{SYM.3}
```

with \(\mathfrak L_{4B,N}\) bounded below on the terminal tail.

This note attacks the missing PDE construction of the \(X\)-terms in
`(SYM.2)`.

## 1. What a cross-term must actually do

Let the four readings of the material packet generate signed adjacent currents.
Before a symmetrizer is constructed, the pairwise mismatch between the current
leaving one coordinate and the current entering the next coordinate is a signed
measure

```math
d\mu_{SQ}:=dJ_S^{out}-dJ_Q^{in},
\qquad
d\mu_{QC}:=dJ_Q^{out}-dJ_C^{in},
\tag{SYM.4}
```

```math
d\mu_{CG}:=dJ_C^{out}-dJ_G^{in},
\qquad
d\mu_{GS}:=dJ_G^{out}-dJ_S^{in}.
\tag{SYM.5}
```

A cross-term \(X_{SQ}\) is useful only if

```math
dX_{SQ}\approx -d\mu_{SQ}
\tag{SYM.6}
```

and the full functional remains bounded below. The same condition holds for
the other three interfaces.

So a valid \(X\)-term is not just a name for a current. It is a bounded-below
storage correction whose derivative is the interface mismatch.

## 2. The primitive construction is circular

One can always cancel a signed mismatch formally by setting

```math
X_{SQ}(\sigma)
:=
-\mu_{SQ}((\sigma_0,\sigma]).
\tag{SYM.7}
```

Then \(dX_{SQ}=-d\mu_{SQ}\). This solves the algebraic cancellation problem
only by turning the lower-bound condition into the theorem itself.

Indeed, `(SYM.7)` is bounded below on the terminal tail exactly when

```math
\sup_{\sigma\ge\sigma_0}
\mu_{SQ}((\sigma_0,\sigma])
<\infty.
\tag{SYM.8}
```

For the full cycle the same condition is

```math
\inf_{\sigma\ge\sigma_0}
\left(
L_S+L_Q+L_C+L_G
-\sum_{ij}\mu_{ij}((\sigma_0,\sigma])
\right)
>-\infty .
\tag{SYM.9}
```

But `(SYM.9)` is precisely the missing no-free cumulative exchange statement.
So cumulative primitives cannot be used as the proof of the symmetrizer. They
are only a restatement of the required bounded-below full-packet functional.

The \(X\)-terms must therefore be instantaneous packet functionals, or at least
BV packet storages with a lower bound obtained from the diagonal four-body
record, not from the desired conclusion.

## 3. Dynamic coordinates versus compactness coordinate

Three coordinates are generated directly by `(SYM.1)`.

The scale/tower coordinate \(S_N\) is dynamic because the factorial tower
storage differentiates:

```math
dL_S+dD_S^{rad}=dJ_{SQ}.
\tag{SYM.10}
```

The participation coordinate \(Q_N\) is dynamic because the local
pressure-viscosity-incompressibility identity differentiates:

```math
dL_Q+dD_Q=dJ_Q.
\tag{SYM.11}
```

The geometry coordinate \(G_N\) is dynamic because the material metric and
coefficient equations differentiate:

```math
\partial_sA=-A(\nabla_av)A,
\qquad
\partial_sG=(\partial_sA)A^\top+A(\partial_sA)^\top.
\tag{SYM.12}
```

The compactness/no-loss coordinate \(C_N\) is different. A compactness theorem
is a statement about a sequence after bounds are known. It does not by itself
produce an evolving storage \(L_C(s)\), and therefore it does not produce

```math
dL_C,
\qquad
dX_{QC},
\qquad
dX_{CG}.
\tag{SYM.13}
```

Thus a simultaneous four-coordinate identity cannot use "compactness" as a
post-limit consumer. In `(SYM.2)`, \(C_N\) must be realized preterminally as a
same-packet no-loss defect coordinate with a BV or AC evolution law.

## 4. Correct realization requirement for \(C_N\)

The \(C_N\)-coordinate has to be a current-time record of no-loss retention on
the same material annulus. It must measure, before taking any limit, the exact
ways the packet could fail to pass as the same object:

```math
C_N^{mat}(s)
=
\text{same-packet no-loss defect record at time }s.
\tag{SYM.14}
```

This record may include only quantities derived from the same transported
material packet and its selected carrier. It cannot be a separate compactness
result brought in afterward.

The required differential form is

```math
dL_C+dD_C+dJ_{CG}
\le
dJ_{QC}+dR_C,
\tag{SYM.15}
```

where \(dD_C\ge0\) is the actual no-loss defect density and \(dJ_{QC}\),
\(dJ_{CG}\) are signed adjacent currents on the same carrier.

This is the first exact missing construction inside `(SYM.3)`:

```math
\boxed{
\text{realize }C_N\text{ as a preterminal same-packet no-loss coordinate.}
}
\tag{SYM.16}
```

Without `(SYM.16)`, the phrase "differentiate the whole four-coordinate packet"
is not meaningful, because one of the four coordinates has no differentiated
state.

## 5. Instantaneous symmetrizer condition

After \(C_N\) is realized as an actual packet coordinate, the cross-terms must
be packet functionals of adjacent coordinates:

```math
X_{SQ}=X_{SQ}(S_N,Q_N),
\qquad
X_{QC}=X_{QC}(Q_N,C_N),
\tag{SYM.17}
```

```math
X_{CG}=X_{CG}(C_N,G_N),
\qquad
X_{GS}=X_{GS}(G_N,S_N).
\tag{SYM.18}
```

They must satisfy two simultaneous requirements.

First, lower boundedness:

```math
\left|
X_{SQ}+X_{QC}+X_{CG}+X_{GS}
\right|
\le
\varepsilon(L_S+L_Q+L_C+L_G)+C_\varepsilon
\tag{SYM.19}
```

on the retained packet tail, or another explicit lower-bound mechanism of the
same strength.

Second, derivative cancellation:

```math
dX_{SQ}+dX_{QC}+dX_{CG}+dX_{GS}
\tag{SYM.20}
```

must cancel the signed interface mismatches and leave only the nonnegative
activity, nonnegative loss, positive log-record growth, and summable residual
shown in `(SYM.3)`.

The primitive construction in Section 2 satisfies derivative cancellation but
does not prove lower boundedness. A valid simultaneous symmetrizer must satisfy
both `(SYM.19)` and `(SYM.20)` from the material packet itself.

## 6. What current ingredients prove

The installed Body-I calculation proves `(SYM.10)`.

The installed Body-II calculation proves `(SYM.11)` as a signed local
participation identity and identifies the pressure-viscosity-incompressibility
current.

The material-record log-growth calculation proves that differentiating the
material tower generates the metric, coefficient, pressure, viscous/collar,
geometry, radius, and exchange channel measures of the same packet.

The same-carrier orientation decomposition proves that mismatched adjacent
currents can be represented as an orientation defect.

Those results are not enough to build `(SYM.2)`, because they do not yet
provide:

```math
\boxed{
C_N\text{ as a preterminal differentiated coordinate}
}
\tag{SYM.21}
```

and they do not provide:

```math
\boxed{
X_{SQ},X_{QC},X_{CG},X_{GS}
\text{ as bounded-below instantaneous packet cross-terms.}
}
\tag{SYM.22}
```

## 7. Direct attempt result

This direct construction attempt does not close
`SimultaneousMaterialFourBodyPacketCoercivity.A`.

It narrows the Navier-Stokes installation to two exact construction clauses:

```math
\boxed{
\text{the compactness/no-loss coordinate must be realized before the limit
as a same-packet BV/AC coordinate }C_N^{mat};
}
\tag{SYM.23}
```

and

```math
\boxed{
\text{the four }X\text{-terms must be bounded-below instantaneous cross-terms,
not cumulative primitives of unproved exchange bounds.}
}
\tag{SYM.24}
```

Once `(SYM.23)` and `(SYM.24)` are installed, differentiating the whole packet
can genuinely prove `(SYM.3)`. Without them, the simultaneous four-body theorem
remains an algebraic closure theorem plus an uninstalled PDE symmetrizer.
