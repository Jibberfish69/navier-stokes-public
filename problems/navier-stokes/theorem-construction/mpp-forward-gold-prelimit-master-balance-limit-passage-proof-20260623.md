---
theorem_id: forward-gold-prelimit-master-balance-limit-passage-proof-20260623
status: conditional-limit-passage-after-signed-smooth-packet-commutator-coercivity
logical_landing_node: prelimit_master_balance_limit_passage
edge_effect: >-
  Records the correct order for the prelimit master-balance branch after the
  exactness audit. The relaxed lower-semicontinuity passage is valid once the
  smooth same-carrier master balance has been proved with a signed commutator
  coercivity estimate. The interface defect is not estimated after the limit;
  it is defined as the lower-semicontinuity gap of the positive prelimit clock,
  hence enters the left side automatically. What remains open in this file is
  the production of the smooth signed same-packet commutator/coercivity line
  that makes the prelimit full clock finite.
parents:
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-same-carrier-clock-lsc-defect-closure-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-legal-residual-logscale-summability-correction-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
---

# Prelimit Master Balance Limit Passage Proof

Date: 2026-06-23

## 0. Conditional result

The limit-passage branch has the correct order: prove the smooth same-carrier
balance first, absorb the residual before taking limits, and then pass through
relaxed lower semicontinuity.

This file does not yet prove the smooth signed commutator/coercivity line that
produces the full prelimit clock.  The limiting inequality below is conditional
on the theorem isolated in
`mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md`.

Under that signed smooth-packet theorem, the limiting inequality is

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N},
\tag{PML.1}
```

with \(c_0>0\) and

```math
\int_{\sigma_0}^{\infty}dR_{4B,N}<\infty.
\tag{PML.2}
```

The important point is the order.  At the smooth prelimit level there is one
transported material packet, so there is no interface defect:

```math
d\mathcal K_{{\rm iface},m}=0.
\tag{PML.3}
```

The interface defect appears only after passing to the terminal limit, as the
part of the smooth positive clock that is lost from the visible limiting
clock.

## 1. Smooth master balance

For each smooth packet \(m\), use transported material variables

```math
X_m(a,s),\qquad
v_m=V_m(X_m(a,s),s),\qquad
q_m=Q_m(X_m(a,s),s),
```

```math
F_m=D_aX_m,\qquad
A_m=F_m^{-1},\qquad
G_m=A_mA_m^\top.
```

The pulled-back material Navier--Stokes law is

```math
\partial_s v_m+A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\qquad
\operatorname{div}_a(A_m v_m)=0.
\tag{PML.4}
```

Use a transported cutoff \(\zeta(a)\), so no artificial collar motion is
introduced.  For \(|\alpha|\le N^\sharp\), apply \(D_a^\alpha\) and use
factorial material weights

```math
w_\alpha(\sigma)
=
\frac{\rho(\sigma)^{2|\alpha|}}{(\alpha!)^2}.
\tag{PML.5}
```

The differentiated equation is

```math
\partial_sD^\alpha v_m
+
A_m^\top\nabla_aD^\alpha q_m
-
\nu\operatorname{div}_a(G_m\nabla_aD^\alpha v_m)
=
\mathcal C_{\alpha,m},
\tag{PML.6}
```

where

```math
\mathcal C_{\alpha,m}
=
-[D^\alpha,A_m^\top\nabla_a]q_m
+
\nu[D^\alpha,\operatorname{div}_a(G_m\nabla_a)]v_m.
\tag{PML.7}
```

Testing `(PML.6)` against \(w_\alpha\zeta^2D^\alpha v_m\), summing in
\(\alpha\), and keeping the same material packet gives:

- a storage derivative \(d\mathfrak L_{4B,N,m}\);
- the tower-radius loss from \(\rho'(\sigma)\);
- the variable-coefficient viscous loss;
- pressure/incompressibility current terms from
  \(\operatorname{div}_a(A_mv_m)=0\);
- material geometry growth from the \(A_m,G_m,F_m^\top F_m\) identities;
- lower-order collar and commutator residuals.

The top-order commutators stay inside the smooth material packet.  The
factorial weights absorb Leibniz splitting in the square-root weighted form:

```math
w_\alpha^{1/2}{\alpha\choose\beta}
=
w_\beta^{1/2}w_{\alpha-\beta}^{1/2}.
\tag{PML.8}
```

The commutator estimate is then used as a clock-identification estimate.  Once
the positive material-record growth is included in the prelimit clock with a
fixed structural constant \(C_{log}\), the leftover commutator is absorbable or
legal:

```math
\left|
\sum_{\alpha}w_\alpha
\int \zeta^2D^\alpha v_m\cdot\mathcal C_{\alpha,m}
\right|
\le
\varepsilon dD_{Q,m}^{w}
+
\varepsilon dD_{S,m}^{rad}
+
dR^0_{comm,m}.
\tag{PML.9}
```

The omitted positive part is precisely

```math
C_{log}d[\log(1+\mathcal P_{N,m}^{mat})]_+
\subset d\mathfrak C_{N,m}.
\tag{PML.9a}
```

The geometry identities

```math
\partial_sA_m=-A_m(\nabla_a v_m)A_m,
\tag{PML.10}
```

```math
\partial_sG_m
=
(\partial_sA_m)A_m^\top
+
A_m(\partial_sA_m)^\top,
\tag{PML.11}
```

and

```math
\partial_s(F_m^\top F_m)
=
2F_m^\top S(V_m)F_m
\tag{PML.12}
```

put positive material-frame and strain growth into the same material-record
clock:

```math
d[\log(1+\mathcal P_{N,m}^{mat})]_+.
\tag{PML.13}
```

Here \(\mathcal P_{N,m}^{mat}\) is the full continuation-depth material record:
the velocity tower, pressure tower, deformation/coefficient tower
\((F_m,A_m,G_m)\), transported collar geometry, and same-packet interface
current record.  Incompressibility gives \(\det F_m=1\), so no separate volume
density is left outside the same pressure-viscosity-incompressibility-velocity
packet.  The pressure tower is the material elliptic pressure readout forced
by \(\operatorname{div}_a(A_mv_m)=0\), with localized harmonic pressure memory
kept inside the same interface-current record.  The depth \(N\) is chosen high
enough that this record controls the fixed-coordinate \(H^s\) readout by the
material composition estimate.

Define the smooth prelimit clock by

```math
d\mathfrak C_{N,m}
=
dA_{4B,N,m}
+
C_{log}d[\log(1+\mathcal P_{N,m}^{mat})]_+.
\tag{PML.14}
```

The smooth master balance is therefore

```math
d\mathfrak L_{4B,N,m}
+
c\,d\mathfrak C_{N,m}
+
d\mathcal L_{4B,N,m}
\le
dR_{4B,N,m}.
\tag{PML.15}
```

Equivalently, `(PML.15)` can be split into the four adjacent same-packet
currents:

```math
dL_{S,m}
+
dD_{S,m}^{rad}
+
dJ_{SQ,m}
\le
dJ_{GS,m}
+
dR_{S,m},
\tag{PML.16}
```

```math
dL_{Q,m}
+
dD_{Q,m}^{w}
+
c\,dA_{4B,N,m}
+
dJ_{QC,m}
\le
dJ_{SQ,m}
+
dR_{Q,m},
\tag{PML.17}
```

```math
dL_{C,m}
+
dJ_{CG,m}
\le
dJ_{QC,m}
+
dR_{C,m},
\tag{PML.18}
```

```math
dL_{G,m}
+
c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
+
dJ_{GS,m}
\le
dJ_{CG,m}
+
dR_{G,m}.
\tag{PML.19}
```

Summing cancels \(dJ_{SQ,m},dJ_{QC,m},dJ_{CG,m},dJ_{GS,m}\) and recovers
`(PML.15)`.

## 2. Absorb residuals

Split the residual before compactness:

```math
dR_{4B,N,m}
\le
\varepsilon
\left(
d\mathfrak C_{N,m}
+
d\mathcal L_{4B,N,m}
\right)
+
dR^0_{N,m}.
\tag{PML.20}
```

Choose \(0<\varepsilon<c/4\).  Absorption gives

```math
d\mathfrak L_{4B,N,m}
+
\frac c2\,d\mathfrak C_{N,m}
+
\frac12\,d\mathcal L_{4B,N,m}
\le
dR^0_{N,m}.
\tag{PML.21}
```

The remaining residuals are only the lower-order commutators and collar terms
that satisfy the corrected log-scale residual normal form.  On a nested
terminal heat-scale family, local \(L^1\) control alone is not a summability
mechanism.  A residual term may stay on the right side only in one of the
following three forms.

First, it may have positive scale gain:

```math
dR^0_{collar,m}
\lesssim
\sum_{\lambda}
r_m^{\alpha_\lambda}
\int_{\mathrm{collar}}
f_{\lambda,m}(x,t)\,dx\,dt,
\qquad
\alpha_\lambda>0,
\tag{PML.22}
```

where \(f_{\lambda,m}\) is one of the local-energy/pressure densities controlled
by the original smooth solution, after pullback to the same transported packet.
The positive factor \(r_m^{\alpha_\lambda}\), not local \(L^1\) control by
itself, makes the nested log-scale sum finite.

Second, it may telescope through a bounded storage:

```math
dR^0_{tel,m}\le dB_m^{tel},
\qquad
\sum_m\int dB_m^{tel}<\infty.
\tag{PML.22a}
```

Third, it may live on a genuinely physically bounded-overlap collar family:

```math
\sum_m{\bf 1}_{\mathrm{collar}_m}(x,t)\le K_{\rm phys}.
\tag{PML.22b}
```

Then scale-neutral local \(L^1\) terms are summable by physical bounded overlap.
Without positive scale gain, telescoping storage, or physical bounded overlap, a
scale-neutral collar, pressure, strain, selector, interface, or tower term is
not a legal residual.  It must be absorbed into \(d\mathfrak C_{N,m}\) or
\(d\mathcal L_{4B,N,m}\) before compactness.

With this corrected residual normal form, the original local energy bounds,
positive scale gain or telescoping/physical bounded-overlap structure, and the
local pressure decomposition give

```math
\sup_m\int_{\sigma_0}^{\infty}dR^0_{N,m}<\infty.
\tag{PML.23}
```

After subsequence extraction,

```math
dR^0_{N,m}\rightharpoonup^\ast dR_{4B,N},
\qquad
\int dR_{4B,N}
\le
\liminf_m\int dR^0_{N,m}
<\infty.
\tag{PML.24}
```

## 3. Relax storage

Let the diagonal positive prelimit energy be

```math
\mathfrak E_{N,m}
=
L_{S,m}+L_{Q,m}+L_{C,m}+L_{G,m}.
\tag{PML.25}
```

The exact cross-storages satisfy a small-form bound

```math
|X_{SQ,m}+X_{QC,m}+X_{CG,m}+X_{GS,m}|
\le
\theta \mathfrak E_{N,m},
\qquad
0<\theta<1.
\tag{PML.26}
```

Hence

```math
(1-\theta)\mathfrak E_{N,m}
\le
\mathfrak L_{4B,N,m}
\le
(1+\theta)\mathfrak E_{N,m}.
\tag{PML.27}
```

Define the relaxed limiting storage by

```math
\mathfrak E_N(\sigma)
:=
\Gamma\operatorname{-liminf}_{m\to\infty}
\mathfrak E_{N,m}(\sigma),
\qquad
\mathfrak L_{4B,N}(\sigma)
:=
(1-\theta)\mathfrak E_N(\sigma).
\tag{PML.28}
```

Then

```math
\mathfrak L_{4B,N}(\sigma)
\le
\liminf_m \mathfrak L_{4B,N,m}(\sigma),
\qquad
\mathfrak L_{4B,N}(\sigma)\ge0.
\tag{PML.29}
```

Fix \(\sigma_0\) in the common smooth regime of the prelimit packets.  The
initial storage converges there, while the terminal endpoint uses `(PML.29)`.
Thus endpoint storage drops pass to the relaxed limit:

```math
\limsup_m
\left[
\mathfrak L_{4B,N,m}(\sigma_0)
-
\mathfrak L_{4B,N,m}(\Sigma)
\right]
\le
\mathfrak L_{4B,N}(\sigma_0)
-
\mathfrak L_{4B,N}(\Sigma).
\tag{PML.30}
```

## 4. Relax the clock and define the interface defect

From `(PML.21)` and `(PML.23)`,

```math
\sup_m\int_{\sigma_0}^{\infty}d\mathfrak C_{N,m}<\infty.
\tag{PML.31}
```

Therefore

```math
d\mathfrak C_{N,m}
\rightharpoonup^\ast
d\mu_{\rm clock}
\tag{PML.32}
```

for a finite positive Radon measure \(d\mu_{\rm clock}\).

Define the visible limiting clock by lower relaxation:

```math
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
\le
d\mu_{\rm clock}.
\tag{PML.33}
```

This is exactly the retained lower-semicontinuous visible part of the positive
prelimit clock.  The missing part is the interface defect:

```math
d\mathcal K_{\rm iface}
:=
d\mu_{\rm clock}
-
dA_{4B,N}
-
C_{log}d[\log(1+\mathcal P_N^{mat})]_+.
\tag{PML.34}
```

By `(PML.33)`,

```math
d\mathcal K_{\rm iface}\ge0,
\tag{PML.35}
```

and

```math
d\mu_{\rm clock}
=
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}.
\tag{PML.36}
```

The relaxed selected clock is not vacuous on the retained quotient.  The
installed zero-loss rigidity theorem gives:

```math
\mathfrak U_N\notin\mathcal G
\quad\Longrightarrow\quad
A_{4B,N}(\mathfrak U_N)>0.
\tag{PML.37}
```

So a non-gauge retained terminal packet cannot lose all selected activity by
relaxation.

## 5. Pass the inequality

Integrate `(PML.21)` from \(\sigma_0\) to \(\Sigma\):

```math
\mathfrak L_{4B,N,m}(\Sigma)
-
\mathfrak L_{4B,N,m}(\sigma_0)
+
\frac c2
\int_{\sigma_0}^{\Sigma}d\mathfrak C_{N,m}
+
\frac12
\int_{\sigma_0}^{\Sigma}d\mathcal L_{4B,N,m}
\le
\int_{\sigma_0}^{\Sigma}dR^0_{N,m}.
\tag{PML.38}
```

Use `(PML.24)`, `(PML.30)`, and `(PML.32)` to pass to the relaxed limit:

```math
\mathfrak L_{4B,N}(\Sigma)
-
\mathfrak L_{4B,N}(\sigma_0)
+
\frac c2
\int_{\sigma_0}^{\Sigma}d\mu_{\rm clock}
+
\frac12
\int_{\sigma_0}^{\Sigma}d\mathcal L_{4B,N}
\le
\int_{\sigma_0}^{\Sigma}dR_{4B,N}.
\tag{PML.39}
```

In differential form,

```math
d\mathfrak L_{4B,N}
+
\frac c2\,d\mu_{\rm clock}
+
\frac12\,d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{PML.40}
```

Substitute `(PML.36)` and absorb constants into \(c_0>0\):

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{PML.41}
```

This is `(PML.1)`.

## 6. Consequence

Because the relaxed storage is nonnegative and \(dR_{4B,N}\) has finite mass,
integrating `(PML.41)` gives

```math
\int_{\sigma_0}^{\infty}
\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
<\infty.
\tag{PML.42}
```

The three gates left by the prelimit master-balance construction are therefore
closed:

1. \(dR_{4B,N}\) is a finite relaxed residual measure.
2. \(\mathfrak L_{4B,N}\) is lower-bounded by relaxed storage.
3. \(d\mathcal K_{\rm iface}\) is left-side clock mass, not a post-limit
   residual.

The branch result is the relaxed same-packet four-body coercive balance
`(PML.41)`.
