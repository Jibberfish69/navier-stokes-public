---
theorem_id: forward-gold-bodyii-participation-exchange-normal-form-20260621
status: exact-bodyii-normal-form-proved-positive-payment-not-closed
logical_landing_node: bodyii_same_carrier_participation_exchange
edge_effect: "Puts the actual local energy and mixed-tower Navier-Stokes participation identities into the same-carrier four-body exchange grammar. Body II produces an exact signed exchange current and an exact nonnegative viscous/tower loss on one selected cylinder, and the same quantities transform exactly across nested heat-scale cylinders under the parabolic tower scaling. The calculation also proves the limitation: the identity alone has c_Q=0 for selected positive activity. A positive terminal trace atom is the positive part of a signed current, not an extra coercive payment, unless the signed partner is retained, legally charged, or dominated by full-cycle loss."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
---

# Body II Participation Exchange Normal Form

Date: 2026-06-21

## 0. Aim

The same-carrier four-body accounting lemma requires body inequalities of the
form

```math
dL_i+dD_i+c_i\,dA_i+dJ_i
\le
dJ_{i-1}+dR_i.
\tag{BEN.1}
```

This note tests the actual Navier-Stokes participation body, without changing
language or separating pressure, viscosity, and transport.

The result is exact:

```math
\boxed{
\text{Body II gives a same-carrier signed exchange identity with nonnegative
viscous/tower loss.}
}
\tag{BEN.2}
```

The limitation is also exact:

```math
\boxed{
\text{Body II alone does not turn the selected positive trace into an extra
positive activity payment.}
}
\tag{BEN.3}
```

The selected positive trace is the positive part of a signed current.  It must
keep its signed partner, pay legal residual, or be charged by another body in
the complete four-body cycle.

## 1. Base participation current

On a normalized cylinder, let \(V,Q\) solve

```math
\partial_sV+(V\cdot\nabla)V+\nabla Q=\nu\Delta V,
\qquad
\nabla\cdot V=0.
\tag{BEN.4}
```

Set

```math
e={1\over2}|V|^2,
\qquad
F=(e+Q)V-\nu\nabla e.
\tag{BEN.5}
```

Then the local energy identity is

```math
\partial_s e+\nu|\nabla V|^2+\nabla\cdot F=0.
\tag{BEN.6}
```

For a fixed selected cutoff \(\eta\), define the storage, loss, and signed
participation current by

```math
M_\eta(s)
=
\int\eta^2 e(s,y)\,dy,
\tag{BEN.7}
```

```math
dD_\eta(s)
=
\nu\int\eta^2|\nabla V|^2\,dy\,ds,
\tag{BEN.8}
```

and

```math
dJ_\eta(s)
=
H_\eta(s)\,ds,
\qquad
H_\eta(s)
=
\int F\cdot\nabla(\eta^2)\,dy.
\tag{BEN.9}
```

For every \(-1<a<b<0\),

```math
M_\eta(b)-M_\eta(a)+D_\eta((a,b])
=
J_\eta((a,b]).
\tag{BEN.10}
```

Equivalently, as signed measures on the preterminal interval,

```math
\boxed{
dM_\eta+dD_\eta=dJ_\eta.
}
\tag{BEN.11}
```

This is exactly the Body-II exchange identity.  In the four-body notation it is

```math
L_Q=M_\eta,
\qquad
D_Q=D_\eta,
\qquad
J_{SQ}=J_\eta,
\qquad
J_{QC}=0,
\qquad
R_Q=0,
\qquad
c_Q=0.
\tag{BEN.12}
```

Thus

```math
dL_Q+dD_Q+dJ_{QC}
=
dJ_{SQ}.
\tag{BEN.13}
```

This is a genuine same-carrier production result for the participation body.

## 2. Mixed tower participation current

For a mixed tower rung, write

```math
W_{m,\alpha}
=
\partial_s^m\partial_y^\alpha V,
\qquad
Q_{m,\alpha}
=
\partial_s^m\partial_y^\alpha Q.
\tag{BEN.14}
```

The tower equation is

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha}.
\tag{BEN.15}
```

Set

```math
e_{m,\alpha}
=
{1\over2}|W_{m,\alpha}|^2,
\tag{BEN.16}
```

and

```math
F_{m,\alpha}
=
e_{m,\alpha}V
+Q_{m,\alpha}W_{m,\alpha}
-\nu\nabla e_{m,\alpha}.
\tag{BEN.17}
```

Using \(\nabla\cdot W_{m,\alpha}=0\),

```math
\partial_s e_{m,\alpha}
+\nu|\nabla W_{m,\alpha}|^2
+\nabla\cdot F_{m,\alpha}
=
-W_{m,\alpha}\cdot B_{m,\alpha}.
\tag{BEN.18}
```

For the same cutoff \(\eta\), define

```math
M_{m,\alpha,\eta}(s)
=
\int\eta^2 e_{m,\alpha}(s,y)\,dy,
\tag{BEN.19}
```

```math
dD_{m,\alpha,\eta}(s)
=
\nu\int\eta^2|\nabla W_{m,\alpha}|^2\,dy\,ds,
\tag{BEN.20}
```

and

```math
dJ_{m,\alpha,\eta}(s)
=
H_{m,\alpha,\eta}(s)\,ds,
\tag{BEN.21}
```

where

```math
H_{m,\alpha,\eta}(s)
=
\int F_{m,\alpha}\cdot\nabla(\eta^2)\,dy
-
\int\eta^2 W_{m,\alpha}\cdot B_{m,\alpha}\,dy.
\tag{BEN.22}
```

Then

```math
\boxed{
dM_{m,\alpha,\eta}
+dD_{m,\alpha,\eta}
=
dJ_{m,\alpha,\eta}.
}
\tag{BEN.23}
```

So every mixed tower rung has the same Body-II exchange normal form.

## 3. Positive-part split

The signed current \(J\) has Jordan decomposition

```math
dJ=dJ^+-dJ^-.
\tag{BEN.24}
```

From `(BEN.11)` or `(BEN.23)`,

```math
dM+dD+dJ^-=dJ^+.
\tag{BEN.25}
```

This is the exact one-sided trace identity behind the terminal atom branch.

It proves that a positive terminal trace atom is not invisible:

```math
dJ^+(\{0\})>0
\quad\Longrightarrow\quad
dM(\{0\})+D(\{0\})+dJ^-(\{0\})>0.
\tag{BEN.26}
```

But it also proves why positive-part selection cannot be silently inserted into
the four-body cancellation.  The current that cancels in the four-body loop is
the signed current \(J\), not \(J^+\) alone.

Discarding \(J^-\) changes the carrier.  The discarded part must be retained as
the signed partner or charged as legal residual.

## 4. Why Body II alone has \(c_Q=0\)

Suppose one tries to strengthen `(BEN.13)` to

```math
dL_Q+dD_Q+c\,dA_Q+dJ_{QC}
\le
dJ_{SQ}+dR_Q
\tag{BEN.27}
```

while keeping the exact Body-II choices

```math
L_Q=M,
\qquad
D_Q=D,
\qquad
J_{SQ}=J,
\qquad
J_{QC}=0.
\tag{BEN.28}
```

Using \(dM+dD=dJ\), `(BEN.27)` is equivalent to

```math
c\,dA_Q\le dR_Q.
\tag{BEN.29}
```

Thus a nonzero selected activity term is not produced by the participation
identity itself.  It is produced only by an additional coercive domination
statement, for example a full-cycle inequality that makes \(A_Q\) part of
viscous loss, signed-current retention, geometry loss, tower loss, or legal
residual.

This is the exact obstruction.  The NS identity gives the signed exchange
current.  It does not give a free positive activity payment.

## 5. Cross-cylinder coupling of the same carrier

Let the nested cylinders have scale ratio

```math
\lambda={r_{j+1}\over r_j}.
\tag{BEN.30}
```

The same-solution rescaling is

```math
V_{j+1}(s,y)=\lambda V_j(\lambda^2s,\lambda y),
\qquad
Q_{j+1}(s,y)=\lambda^2 Q_j(\lambda^2s,\lambda y).
\tag{BEN.31}
```

For a mixed rung, set

```math
h_{m,\alpha}=2m+|\alpha|+1.
\tag{BEN.32}
```

Then

```math
W_{j+1,m,\alpha}(s,y)
=
\lambda^{h_{m,\alpha}}
W_{j,m,\alpha}(\lambda^2s,\lambda y),
\tag{BEN.33}
```

and

```math
Q_{j+1,m,\alpha}(s,y)
=
\lambda^{h_{m,\alpha}+1}
Q_{j,m,\alpha}(\lambda^2s,\lambda y).
\tag{BEN.34}
```

Transport the cutoff by

```math
\eta_{j+1}(y)=\eta_j(\lambda y).
\tag{BEN.35}
```

Then the tower energy, flux, nonlinear source contribution, and viscous loss
all scale with one common measure factor:

```math
M_{j+1,m,\alpha,\eta_{j+1}}(s)
=
\lambda^{2h_{m,\alpha}-3}
M_{j,m,\alpha,\eta_j}(\lambda^2s),
\tag{BEN.36}
```

```math
H_{j+1,m,\alpha,\eta_{j+1}}(s)
=
\lambda^{2h_{m,\alpha}-1}
H_{j,m,\alpha,\eta_j}(\lambda^2s),
\tag{BEN.37}
```

and for every interval \(I\subset(-1,0)\),

```math
D_{j+1,m,\alpha,\eta_{j+1}}(I)
=
\lambda^{2h_{m,\alpha}-3}
D_{j,m,\alpha,\eta_j}(\lambda^2 I),
\tag{BEN.38}
```

```math
J_{j+1,m,\alpha,\eta_{j+1}}(I)
=
\lambda^{2h_{m,\alpha}-3}
J_{j,m,\alpha,\eta_j}(\lambda^2 I).
\tag{BEN.39}
```

The exponent check is direct.  From `(BEN.33)`,

```math
e_{j+1,m,\alpha}
=
\lambda^{2h_{m,\alpha}}
e_{j,m,\alpha}(\lambda^2s,\lambda y),
\tag{BEN.39a}
```

and \(dy=\lambda^{-3}dz\), giving `(BEN.36)`.

Also,

```math
F_{j+1,m,\alpha}
=
\lambda^{2h_{m,\alpha}+1}
F_{j,m,\alpha}(\lambda^2s,\lambda y),
\tag{BEN.39b}
```

because the three terms

```math
e_{m,\alpha}V,
\qquad
Q_{m,\alpha}W_{m,\alpha},
\qquad
\nabla e_{m,\alpha}
\tag{BEN.39c}
```

all carry the same power \(\lambda^{2h_{m,\alpha}+1}\).  Since

```math
\nabla(\eta_{j+1}^2)(y)
=
\lambda\nabla(\eta_j^2)(\lambda y),
\tag{BEN.39d}
```

the flux density scales as `(BEN.37)`.  The nonlinear tower source has the same
measure scaling because

```math
B_{j+1,m,\alpha}
=
\lambda^{h_{m,\alpha}+2}
B_{j,m,\alpha}(\lambda^2s,\lambda y),
\tag{BEN.39e}
```

so

```math
W_{j+1,m,\alpha}\cdot B_{j+1,m,\alpha}
=
\lambda^{2h_{m,\alpha}+2}
\left(W_{j,m,\alpha}\cdot B_{j,m,\alpha}\right)(\lambda^2s,\lambda y).
\tag{BEN.39f}
```

Finally,

```math
|\nabla W_{j+1,m,\alpha}|^2
=
\lambda^{2h_{m,\alpha}+2}
|\nabla W_{j,m,\alpha}|^2(\lambda^2s,\lambda y),
\tag{BEN.39g}
```

and \(dy\,ds=\lambda^{-5}dz\,ds'\), giving `(BEN.38)` and the interval form
`(BEN.39)`.

Thus the participation identity is coupled across cylinders as the same
carrier exactly when the rung and cutoff are transported by `(BEN.33)`--`(BEN.35)`.

If the selector changes the cutoff, rung, positive part, or cylinder marking,
the mismatch is not harmless.  It is the carrier-mismatch defect \(K_{4B}\) in
the same-carrier four-body accounting lemma.

## 6. Current exact state

The actual Navier-Stokes participation body now has a proved same-carrier
normal form:

```math
\boxed{
dM+dD=dJ.
}
\tag{BEN.40}
```

The full four-body payment theorem still requires one further production step:

```math
\boxed{
\text{the selected positive activity }A_{4B}
\text{ must be dominated by retained signed current, true loss, geometry/tower
loss, or legal residual on the same carrier.}
}
\tag{BEN.41}
```

Equivalently, the four-body loop must prove a strict same-carrier inequality of
the form

```math
dL_i+dD_i+c_i\,dA_i+dJ_i
\le
dJ_{i-1}+dR_i
\tag{BEN.42}
```

with some \(c_i>0\) on the selected activity being tested.

Body II supplies the signed current \(J\).  It does not by itself supply the
coercive \(c_i\,dA_i\) term.

## Verdict

The participation law is now in the four-body grammar.

On one selected cylinder, and across nested cylinders with the exact parabolic
tower transport, Navier-Stokes gives a same-carrier signed exchange current and
a nonnegative viscous/tower loss.

The remaining gold obstruction is not that participation was missing.  It is
that positive selected activity is a positive part of a signed current unless a
strict same-carrier domination theorem converts it into full-cycle loss or legal
charge.
