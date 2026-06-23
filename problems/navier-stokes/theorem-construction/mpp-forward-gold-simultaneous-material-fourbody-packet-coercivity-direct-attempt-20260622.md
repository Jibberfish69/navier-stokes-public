---
theorem_id: forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622
status: algebraic-closure-proved-pde-symmetrizer-construction-not-installed
logical_landing_node: simultaneous_material_fourbody_packet_coercivity
edge_effect: >-
  Replaces the sequential supplier/admission framing by the corrected
  simultaneous-packet theorem. The complete part is algebraic: if one transported
  material annulus carries a bounded-below four-body functional
  L_4B,N = L_S+L_Q+L_C+L_G+X_SQ+X_QC+X_CG+X_GS whose derivative controls
  A_4B,N, the material-record positive log growth, and the nonnegative four-body
  loss up to summable residual, then A_4B,N is integrable and the material
  record cannot double infinitely often. The missing PDE installation is the
  explicit construction of the symmetrizer cross-terms X_SQ, X_QC, X_CG, X_GS
  from the material Navier-Stokes law and verification of the simultaneous
  derivative inequality. Existing notes name exchange storages and prove
  conditional compactness/rigidity consumers, but they do not construct this
  lower-bounded full-packet symmetrizer.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-law-bearing-full-tower-four-inequality-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
---

# Simultaneous Material Four-Body Packet Coercivity Direct Attempt

Date: 2026-06-22

## 0. Correction

The four-body proof is not four supplier lemmas chained together.

It is one transported material Navier-Stokes tower, under one participation law,
read through four simultaneous coordinates:

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N).
\tag{SMC.1}
```

The governing material law is

```math
\partial_s v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{SMC.2}
```

The corrected theorem is not

```math
G_N\le A_{4B,N}
\tag{SMC.3}
```

and not an admission theorem that names generated material-record terms as
channels after the fact.

The corrected theorem is a simultaneous symmetrized full-packet estimate.

## 1. The desired functional

The functional must include the diagonal four-body storages and the exchange
cross-terms:

```math
\mathfrak L_{4B,N}
=
L_S+L_Q+L_C+L_G
+X_{SQ}+X_{QC}+X_{CG}+X_{GS}.
\tag{SMC.4}
```

The \(X\)-terms are the algebraic place where "all four at once" lives.  They
cannot be replaced by a later statement that one coordinate is admitted into
another coordinate.

The required PDE installation is:

```math
\boxed{
d\mathfrak L_{4B,N}
+c\,dA_{4B,N}
+c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_{4B,N}
\le
dR_N.
}
\tag{SMC.5}
```

Here

```math
\mathcal P_N^{mat}
=
1+\Gamma+E_N^v+E_N^q+E_N^{A,G}+E^{coll}
\tag{SMC.6}
```

is the full material record,

```math
\mathcal L_{4B,N}=D_S+D_Q+D_C+D_G
\tag{SMC.7}
```

is the nonnegative four-body loss, and \(R_N\) is summable on the terminal
tail.

The theorem is complete only if `(SMC.4)` is bounded below and `(SMC.5)` is
verified by differentiating the whole transported material packet.

## 2. Algebraic closure theorem

Assume `(SMC.4)`--`(SMC.5)`, assume

```math
\inf_{\sigma\ge\sigma_0}\mathfrak L_{4B,N}(\sigma)>-\infty,
\qquad
\int_{\sigma_0}^{\infty}dR_N<\infty.
\tag{SMC.8}
```

Integrating `(SMC.5)` from \(\sigma_0\) to \(\Sigma\) gives

```math
\begin{aligned}
&c\int_{\sigma_0}^{\Sigma}dA_{4B,N}
+c\int_{\sigma_0}^{\Sigma}d[\log(1+\mathcal P_N^{mat})]_+
+\int_{\sigma_0}^{\Sigma}d\mathcal L_{4B,N} \\
&\qquad\le
\mathfrak L_{4B,N}(\sigma_0)
-\mathfrak L_{4B,N}(\Sigma)
+\int_{\sigma_0}^{\Sigma}dR_N.
\end{aligned}
\tag{SMC.9}
```

The right side is uniformly bounded in \(\Sigma\).  Hence

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty,
\tag{SMC.10}
```

```math
\int_{\sigma_0}^{\infty}d[\log(1+\mathcal P_N^{mat})]_+<\infty,
\tag{SMC.11}
```

and

```math
\int_{\sigma_0}^{\infty}d\mathcal L_{4B,N}<\infty.
\tag{SMC.12}
```

If the material record doubles on disjoint intervals,

```math
1+\mathcal P_N^{mat}(s_j^+)
\ge
2(1+\mathcal P_N^{mat}(s_j^-)),
\tag{SMC.13}
```

then each interval contributes

```math
\int_{s_j^-}^{s_j^+}d[\log(1+\mathcal P_N^{mat})]_+
\ge
\log 2.
\tag{SMC.14}
```

Infinitely many such doublings contradict `(SMC.11)`.  Thus the terminal
same-material record cannot be lost by infinitely many doublings.

This algebraic closure is complete.

## 3. What the PDE installation must construct

To prove `(SMC.5)`, one must define

```math
X_{SQ},\quad X_{QC},\quad X_{CG},\quad X_{GS}
\tag{SMC.15}
```

from the transported material law `(SMC.2)`, and then differentiate the whole
functional `(SMC.4)` at once.

The derivative must pair the dangerous terms as actual neighboring exchange
derivatives:

```math
\text{tower split in }S_N
\quad\leftrightarrow\quad
dX_{SQ}
\quad\leftrightarrow\quad
\text{participation production in }Q_N,
\tag{SMC.16}
```

```math
\text{pressure/viscosity flux in }Q_N
\quad\leftrightarrow\quad
dX_{QC}
\quad\leftrightarrow\quad
\text{same-object/no-loss record in }C_N,
\tag{SMC.17}
```

```math
\text{compactness/no-loss relay in }C_N
\quad\leftrightarrow\quad
dX_{CG}
\quad\leftrightarrow\quad
\text{strain-frame geometry in }G_N,
\tag{SMC.18}
```

and

```math
\text{geometry/tower return in }G_N
\quad\leftrightarrow\quad
dX_{GS}
\quad\leftrightarrow\quad
\text{scale/tower control in }S_N.
\tag{SMC.19}
```

After these exchange derivatives are included, every generated term from the
differentiated material participation law must land in exactly one of:

```math
dA_{4B,N},
\qquad
d[\log(1+\mathcal P_N^{mat})]_+,
\qquad
d\mathcal L_{4B,N},
\qquad
dR_N,
\tag{SMC.20}
```

or cancel through one of the actual \(dX\)-terms in `(SMC.15)`.

## 4. Why existing notes do not yet prove this

The repo already has three relevant consumers or partial surfaces.

First, the abstract compactness/rigidity file proves that compactness plus
zero-loss rigidity gives a positive loss quantum for persistent selected
activity.  It consumes a completed same-carrier packet; it does not construct
the symmetrizer `(SMC.4)`.

Second, the selected full-packet production step defines a capacity storage

```math
\Phi^{cap}
=
L_S+L_Q+L_C+L_G
+X_{SQ}+X_{QC}+X_{CG}+X_{GS},
\tag{SMC.21}
```

but it uses the exchange storages as already available objects.  It does not
prove that these \(X\)-terms are lower-bounded cross-terms whose derivative
produces `(SMC.5)`.

Third, the law-bearing full-tower four-inequality attempt shows that the
material law gives signed local identities and eligible service terms, then
reduces the problem to adjacent exchange orientation.  That is still short of
constructing the simultaneous symmetrizer.

So the installed ingredients prove why `(SMC.5)` would finish the route; they
do not prove `(SMC.5)`.

## 5. Direct attempt result

The direct attempt cannot honestly declare the PDE installation complete.

The exact current state is:

```math
\boxed{
\text{algebraic closure from }(SMC.5)\text{ is proved.}
}
\tag{SMC.22}
```

```math
\boxed{
\text{the Navier-Stokes installation is the construction of the bounded-below}
\ \mathfrak L_{4B,N}\text{ in }(SMC.4)\text{ and proof of }(SMC.5).
}
\tag{SMC.23}
```

This envelops the older reduction names
`SimultaneousTowerA4BInstallation.A`,
`ParticipationCarryingFullTowerFourBodyBalance.A`, and
`FullTowerSignedTotalExchangeRetention.A` inside the sharper single theorem:

```math
\boxed{
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}.
}
\tag{SMC.24}
```

This is not a different route.  It is the one-fluid material participation law
with the four simultaneous coordinates held together by the cross-term
symmetrizer.

The direct construction audit sharpened `(SMC.23)`.  The \(X\)-terms cannot be
implemented as cumulative primitives of signed current mismatches, because that
would make lower boundedness of \(\mathfrak L_{4B,N}\) equivalent to the
unproved no-free cumulative exchange statement.  They must be bounded-below
instantaneous packet cross-terms.

The same audit also forces a correction on the \(C_N\)-coordinate.  \(S_N\),
\(Q_N\), and \(G_N\) are differentiated coordinates of the material PDE, but an
after-the-limit compactness theorem cannot supply \(dL_C\), \(dX_{QC}\), or
\(dX_{CG}\).  For `(SMC.5)` to be a genuine simultaneous identity, \(C_N\) must
be realized preterminally as a same-packet no-loss defect coordinate with
BV/AC evolution.

The preterminal \(C_N\) coordinate has now been realized as a mixed material
compactness-defect record. Its fixed-atlas \(\sigma\)-derivative is generated
by

```math
\partial_\sigma V
=-V-y\cdot\nabla V-2s\,\partial_sV,
\qquad
\partial_\sigma Q
=-2Q-y\cdot\nabla Q-2s\,\partial_sQ,
\tag{SMC.25}
```

and therefore by the same mixed
pressure-viscosity-incompressibility-velocity tower plus scaling drift. This
installs the fixed-atlas \(C_N\)-face of `(SMC.5)`.

The remaining PDE installation is now:

```math
\boxed{
\text{moving-atlas compatibility for }d_\sigma L_C
\text{ plus bounded-below instantaneous }X\text{-terms.}
}
\tag{SMC.26}
```

The moving-atlas label law has now been computed:

```math
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma
\left(
-y+2sV_\sigma
+r_\sigma^{-1}\dot x_\sigma
-r_\sigma^{-2}\dot T_\sigma V_\sigma
\right).
\tag{SMC.27}
```

The fixed center/time part is same-packet. The fixed-terminal-gauge solution
sets \(T_\sigma=T^\ast\) and \(x_\sigma=x^\ast\) on the retained branch, so
moving active packets are represented as material time/space translations
inside \(C_N\). Unbounded translations are loss of the retained atlas, and
label/sign/collar/selector variation is handled by stabilization.

Thus the retained-branch \(C_N\) atlas is fixed enough. The previous moving
atlas terms

```math
r_\sigma^{-1}\dot x_\sigma,\quad
r_\sigma^{-2}\dot T_\sigma,\quad
dN_{label},\quad dN_{sgn},\quad d\Lambda_{collar,N}.
\tag{SMC.28}
```

are removed from the retained branch by fixed terminal gauge, absorbed as
\(C_N\) time/space translations, or recorded as visible selector/collar
variation. The remaining PDE installation is therefore the bounded-below
instantaneous construction of the four exchange cross-terms.

The bounded-below \(X\)-term direct attempt makes this construction precise.
One must construct a positive full-packet symmetrizer

```math
\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle,
\qquad
H_\sigma=I+K_\sigma,
\tag{SMC.29}
```

where \(K_\sigma\) is off-diagonal in the four-coordinate decomposition.  The
needed derivative inequality is

```math
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\le
-c\,A_{4B,N}
-D_{4B,N}
-c\,d[\log(1+\mathcal P_N^{mat})]_+/d\sigma
+R_{4B,N}.
\tag{SMC.30}
```

This construction is noncircular exactly when the retained mixed material
packet has a uniform full-packet observability gap on the gauge quotient.  The
static kernel part is now installed as

```math
\ker\mathcal L_{4B,N}=\mathcal G.
\tag{SMC.31}
```

The retained frozen-family compactness/lsc solution upgrades the kernel theorem
to finite-time frozen observability on the retained quotient.  The active
internal face is now the algebraic conversion from that observable Gramian to
the instantaneous bounded-below \(X\)-term symmetrizer:

```math
\texttt{ObservableFrozenGramianToInstantaneousXTerm.A}.
\tag{SMC.32}
```
