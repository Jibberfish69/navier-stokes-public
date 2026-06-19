# CarrierRealizationNoGhost.A And ResidualPreCauchyAbsorption.A Direct Attempt

Date: 2026-06-18

Status: direct continuation of `MinimalZenoTraceNoEscape.A`; neither bridge is
proved from installed Navier-Stokes inputs.  The attempt sharpens both bridges:
the carrier bridge can be made non-ghost only by using a source-resolved carrier
current, and the residual bridge must be read as residual routing into the
complete annular readout, not as smallness of the terminal source.

Role: continue the no-escape reduction in
`mpp-forward-gold-minimal-zeno-trace-noescape-attempt-20260618.md`.

The previous note reduced the useful YMG-transfer skeleton to

```math
\text{CarrierRealizationNoGhost.A}
+
\text{ResidualPreCauchyAbsorption.A}
+
\text{moving annular trace support}.
\tag{CR.1}
```

This note attacks the first two terms directly.

## 1. Carrier realization

The desired statement is not merely that there is an annular surface.  It is
that the annular object being measured is the same object as the selected
terminal native source/stress carrier:

```math
|\mathcal Z|_Z
\le
C_{\rm car}\Big(
\mathbf M(T_{\rm sel})
+\mathbf M(\partial T_{\rm sel})
+\mu_{src}^{+,sel}
+|\Phi_{\rm sel}|
+\mathcal D_{\rm legal}
\Big),
\tag{CR.2}
```

where `C_car` is independent of the terminal scale and the selected carrier is
the same native source/stress carrier used in the terminal branch.

with no separate ghost geometry.

### Direct surface-current attempt

If `T_sel` is an arbitrary diagnostic annular current, `(CR.2)` is false.
Take `U=0`, `P=0`, zero source, and any nonzero smooth annular surface.  The
geometric current is nonzero, while every Navier-Stokes carrier quantity
vanishes.  Thus a raw current/varifold norm cannot be the defect norm.

If the current is tied only to signed orientation, hidden cancellation remains:
two oppositely oriented sheets over the same annular base can satisfy

```math
T_m\to0,\qquad n_m\mu_m\to0,
\tag{CR.3}
```

while the unsigned selected terminal carrier remains positive.  This is the
same polar-saturation failure recorded in the oriented-varifold note.

So `CarrierRealizationNoGhost.A` is not a consequence of ordinary current
realization.

### Carrier-current repair

The strongest non-ghost formulation is source-resolved.  Let the selected
paired trace be

```math
W_m=(x,s,\xi_m,\Sigma_m\xi_m,q_m,e_m)_\#\mu_m.
\tag{CR.4}
```

Define the selected carrier measure and carrier current by

```math
d\lambda_m:=q_{m,+}\,d\mu_m,
\qquad
T_m^{car}(\varphi)
:=
\int \varphi(x,s)\cdot\xi_m\,d\lambda_m.
\tag{CR.5}
```

Then ghost geometry is removed by construction:

```math
\mathbf M(T_m^{car})\le \lambda_m(X),
\tag{CR.6}
```

and equality holds exactly under source-weighted polar saturation:

```math
\left|\int \xi_m\,d\lambda_m\right|
=
\int d\lambda_m
\quad\text{on the selected terminal carrier}.
\tag{CR.7}
```

This is useful, but it is not yet the desired GMT current package.  `T_m^{car}`
is a vector-measure current built from the selected source carrier.  To use
Federer-Fleming or stress-current compactness, one still needs:

```text
SourceResolvedCarrierCurrent.A:
  the selected native source carrier defines a normal/integral current with
  constants 0<c_car<=C_car<infty, independent of the terminal scale, such that
  c_car lambda_m(X) <= M(T_m^{car}) <= C_car lambda_m(X).

CarrierBoundaryLegalBound.A:
  the boundary mass of that carrier current is retained in the annular readout
  or paid by legal/collar/source ledgers.

SourceWeightedPolarSaturation.A:
  the selected one-sided carrier does not vanish from the signed/current record
  by opposite-sheet cancellation.
```

### Conditional no-ghost theorem

The exact conditional theorem available from this formulation is:

```math
\begin{aligned}
&T_m^{car}\text{ is a normal/integral selected carrier current,}\\
&\mathbf M(\partial T_m^{car})\le \mathcal D_{\rm legal}+C_{\partial},\\
&|\xi_m|\lambda_m=\lambda_m
\quad\text{on the selected terminal carrier},\\
&\left\|
q_m\,d\mu_m-\ell\cdot\Sigma_m\xi_m\,d\mu_m
\right\|_{\rm selected\ shadow}
\le
\mathrm{Legal}_m+o_m(1)
\\
&\Longrightarrow
\mathbf M(T_m^{car})=\lambda_m(X),
\qquad
\lambda_m(X)
\le
\int[\ell\cdot\Sigma_m\xi_m]_+\,d\mu_m
+\mathrm{Legal}_m+o_m(1).
\end{aligned}
\tag{CR.7a}
```

Here `C_{\partial}` is fixed by the annular normalization and is independent of
the terminal scale.  This proves a true no-ghost carrier theorem under
source-resolved current, source-weighted polar saturation, boundary control, and
selected-shadow stress/source identity.  It does not prove those hypotheses from
installed Navier-Stokes inputs.

Thus the no-ghost route does not close the gold obstruction, but it identifies
the right object: a source-resolved carrier current, not a free annular
surface.

## 2. Residual pre-Cauchy absorption

The no-escape note wrote the needed estimate as

```math
|\operatorname{Res}_{preCauchy}(\mathcal Z)|
\le
\varepsilon|\mathcal Z|_Z
+C|B_{\rm ann}\mathcal Z|_Y
+\mathcal D_{\rm legal}.
\tag{CR.8}
```

This cannot mean that the terminal native source becomes small.  The terminal
layer

```math
g_m(s)={a\over\tau_m}1_{(-\tau_m,0]},
\qquad
\tau_m\downarrow0,
\tag{CR.9}
```

has fixed mass `a`, finite `L^1_s` size, and zero heat-time participation.  It
is exactly the residual being tested.  No estimate of the form
`Res <= epsilon*defect + legal` can hold unless the residual is also included
in the readout or identified with an already paid channel.

So the correct content of `ResidualPreCauchyAbsorption.A` is routing:

```math
|\operatorname{Res}_{preCauchy}(\mathcal Z)|
\le
C|B_{\rm ann}^{src/stress}\mathcal Z|
+\mathcal D_{\rm legal},
\tag{CR.10}
```

where the source/stress part of the readout is source-resolved and paired as in
`(CR.4)`.

### Direct identity attempt

The needed identity is

```math
q_m\,d\mu_m
=
\ell\cdot\Sigma_m\xi_m\,d\mu_m
+d\mathcal D_{\rm legal}
+o_m(1)
\tag{CR.11}
```

on the selected minimal shadow.  In norm form:

```math
\left\|
q_m\,d\mu_m-\ell\cdot\Sigma_m\xi_m\,d\mu_m
\right\|_{\rm selected\ shadow}
\to0
\quad\text{modulo legal losses}.
\tag{CR.12}
```

This is precisely the minimal-chain version of the projected local pre-Cauchy
residue identity:

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}.
}
\tag{CR.13}
```

Minimal donor-chain reduction helps only after the conditional finite-graph
package has paid retained partners, legal exits, pair-weight defects, and finite
donor trees.  It still does not identify the signed conormal stress with the
localized signed pre-Cauchy density after weighting, lifting, projection,
positive-part extraction, and selector choice.

### Countermodel to absorption without paired identity

Let the signed residual split as

```math
q_m=q_m^+-q_m^-,
\qquad
\int q_m^+\,d\mu_m=\int q_m^-\,d\mu_m=a.
\tag{CR.14}
```

Arrange the conormal stress to see the signed cancellation, while the selected
native source keeps only `q_m^+`.  Then the signed stress residue can vanish,
or leave only a legal-size vector remainder, while the selected positive
carrier remains `a`.  The terminal Zeno version uses the layer `(CR.9)` on the
positive side and a hidden same-fluid donor side.

This is not removed by finite donor depletion; it is exactly the infinite
terminal Zeno donor-chain branch.  It is removed only by one of:

```text
Terminal source anti-atom / same-window source reserve,
SourceResolvedCarrierCurrent.A + SourceWeightedPolarSaturation.A,
MinimalChainProjectedResidueIdentity.A,
MinimalZenoProfileProduction.A on the zero-flux branch.
```

## Result

The direct bridge-pair attempt gives the sharper conditional route:

```math
\boxed{
\begin{aligned}
&\text{SourceResolvedCarrierCurrent.A}
+\text{CarrierBoundaryLegalBound.A}
+\text{SourceWeightedPolarSaturation.A}\\
&\quad
+\text{ResidualPreCauchyReadoutRouting.A}
+\text{MovingAnnularTraceCompactness.A}
\\
&\Longrightarrow
\text{MinimalZenoTraceNoEscape.A}.
\end{aligned}
}
\tag{CR.15}
```

Here

```math
\text{ResidualPreCauchyReadoutRouting.A}
\equiv
\text{MinimalChainProjectedResidueIdentity.A}
\tag{CR.16}
```

after the conditional minimal donor-chain reduction.

Therefore the two-bridge attack does not close the forward-gold terminal atom.
It replaces the broad carrier/residual words by two exact missing production
bridges:

```math
\boxed{
\text{SourceResolvedCarrierCurrent.A}
+\text{SourceWeightedPolarSaturation.A}
}
\tag{CR.17}
```

and

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}
}
\tag{CR.18}
```

with `MinimalZenoProfileProduction.A` still governing the zero-flux branch.
