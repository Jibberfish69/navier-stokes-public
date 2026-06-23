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

The preterminal \(C_N\)-coordinate has now been sharpened to the compactness
modulus family

```math
C_N
\equiv
\{L_C^{M,\ell,\delta}\}_{M,\ell,\delta},
\tag{SYM.25}
```

built from finite-rank tails, material spatial translation moduli, and material
time-translation moduli of the full participation record. This realizes
`(SYM.23)` as a same-packet object for fixed compactness parameters.

The remaining issue inside `(SYM.23)` is the derivative required by the
terminal four-body loop:

```math
d_\sigma [L_C^{M,\ell,\delta}]_+
\le
C\,d_\sigma A_{4B,N}^{ann,M,\ell,\delta}.
\tag{SYM.26}
```

The installed material PDE gives \(s\)-evolution inside a retained packet; it
does not yet give `(SYM.26)` across nested heat-scale packets. Thus the
\(C_N\)-face of the symmetrizer is now the cross-scale material compactness
evolution law, not generic compactness.

The cross-scale material compactness direct attempt refines this statement.
For fixed center/time normalization and a fixed transported material atlas,

```math
\partial_\sigma V
=-V-y\cdot\nabla V-2s\,\partial_sV,
\qquad
\partial_\sigma Q
=-2Q-y\cdot\nabla Q-2s\,\partial_sQ.
\tag{SYM.27}
```

Using the rescaled Navier-Stokes law and the differentiated pressure Poisson
equation, `(SYM.27)` is generated by the same mixed
pressure-viscosity-incompressibility-velocity tower plus scaling drift.
Therefore `(SYM.26)` is proved in the fixed-atlas case after replacing the
\(C_N\) compactness record by the mixed material tower.

The moving-atlas compatibility clause has also been sharpened by differentiating
the inverse label map:

```math
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma
\left(
-y+2sV_\sigma
+r_\sigma^{-1}\dot x_\sigma
-r_\sigma^{-2}\dot T_\sigma V_\sigma
\right).
\tag{SYM.28}
```

So fixed center/time is already same-packet. The fixed-terminal-gauge solution
sets \(T_\sigma=T^\ast\) and \(x_\sigma=x^\ast\) on the retained branch.
Moving active packets are then represented as material time/space translations
inside \(C_N\), while unbounded translations are loss of the retained atlas.
Label/sign/collar/selector variation is handled by selector-collar
stabilization as visible packet variation or eventual stabilization.

Thus the retained-branch \(C_N\)-face is fixed enough for \(d_\sigma L_C\). The
previous modulation list

```math
r_\sigma^{-1}\dot x_\sigma,\quad
r_\sigma^{-2}\dot T_\sigma,\quad
dN_{label},\quad dN_{sgn},\quad d\Lambda_{collar,N}.
\tag{SYM.29}
```

is not a retained-branch obstruction after gauge fixing.  The first two terms
vanish in fixed terminal gauge; bounded moving-packet offsets are \(C_N\)
translations; unbounded offsets are loss of the retained atlas; and the label,
sign, and collar terms are visible or stabilized.  The live construction is
therefore the bounded-below instantaneous \(X\)-term symmetrizer.

The bounded-below \(X\)-term direct attempt identifies the exact construction:
the \(X\)-terms must be the off-diagonal blocks of one positive full-packet
symmetrizer

```math
\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle,
\qquad
H_\sigma=I+K_\sigma,
\tag{SYM.30}
```

with \(K_\sigma\) off-diagonal in the \((S_N,Q_N,C_N,G_N)\) decomposition.
The derivative condition is the full-packet Lyapunov/Kawashima inequality

```math
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\le
-c\,A_{4B,N}
-D_{4B,N}
-c\,d[\log(1+\mathcal P_N^{mat})]_+/d\sigma
+R_{4B,N}.
\tag{SYM.31}
```

The internal face is now sharper.  The static quotient gap is the installed
kernel theorem

```math
\ker\mathcal L_{4B,N}=\mathcal G,
\tag{SYM.32}
```

so zero full-packet loss is harmless gauge and selected non-gauge activity
vanishes.  The retained frozen-family compactness/lsc solution gives the
finite-time frozen observability estimate on the retained quotient.  The direct
Gramian test shows finite-time observability alone leaves a positive endpoint
readout.  The no-return test shows that frozen dissipative/no-return is not an
independent supplier from current inputs, because the frozen linearized energy
still contains the same strain/exchange terms the \(X\)-terms must cancel.  The
live algebraic face is therefore the direct simultaneous construction of
\(X_{SQ},X_{QC},X_{CG},X_{GS}\) from the material participation law.
