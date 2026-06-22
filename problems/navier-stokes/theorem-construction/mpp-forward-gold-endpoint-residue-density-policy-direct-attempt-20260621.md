---
theorem_id: forward-gold-endpoint-residue-density-policy-direct-attempt-20260621
status: direct-attempt-reduces-to-channelwise-super-l1-or-absorption-policy
logical_landing_node: endpoint_residue_density_policy
edge_effect: "Attacks EndpointResidueDensityPolicy.A, the first clause required by EndpointReverseHolderFullPacket.A. The result is exact: current selector/collar stabilization, signed-saturation routing, terminal trace atom routing, geometry routing, and legal routing give visibility, finite mass, stabilization, or branch classification, but they do not upgrade arbitrary endpoint residue measures to densities with super-L1/Hardy/Orlicz terminal control. The gold endpoint measure may include a residue channel only after that channel is made absolutely continuous with L_s^(1+epsilon) control, carries a Hardy/Orlicz endpoint modulus, or is absorbed before endpoint measure formation. Otherwise the residue remains a naked finite endpoint measure and the terminal L1 pulse survives."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-reverse-holder-full-packet-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-endpoint-measure-moments-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
---

# Endpoint Residue Density Policy Direct Attempt

Date: 2026-06-21

## 0. Target

`EndpointReverseHolderFullPacket.A` needs a density

```math
d\mu_m=\rho_m(s)\,ds
\tag{ERP.1}
```

or a direct endpoint modulus for every part of \(d\mu_m\).  The residue-policy
clause is:

```math
\boxed{
\texttt{EndpointResidueDensityPolicy.A}
}
\tag{ERP.2}
```

For each endpoint residue channel

```math
\Lambda_j\in
\{\Lambda_{legal},\Lambda_{sel},\Lambda_{sgn},
\Lambda_{term},\Lambda_{geom}\},
\tag{ERP.3}
```

prove one of:

```math
d\Lambda_{j,m}=\lambda_{j,m}(s)\,ds,
\qquad
\sup_m\|\lambda_{j,m}\|_{L_s^{1+\varepsilon_j}}<\infty,
\tag{ERP.4}
```

or

```math
\sup_m\int_{-1}^{0}(-s)^{-\alpha_j}\,d\Lambda_{j,m}(s)<\infty,
\tag{ERP.5}
```

or the channel is absorbed before the endpoint packet measure is formed.

Finite mass alone is not an endpoint policy.

## 1. Common obstruction

The model endpoint residue is

```math
d\Lambda_m(s)
=
a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)\,ds,
\qquad
\tau_m\downarrow0.
\tag{ERP.6}
```

It satisfies

```math
\Lambda_m((-1,0])=a,
\tag{ERP.7}
```

but

```math
\|\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}\|_{L_s^{1+\varepsilon}}
=
\tau_m^{-\varepsilon/(1+\varepsilon)}
\to\infty,
\tag{ERP.8}
```

and, for every \(\alpha>0\),

```math
\int_{-1}^{0}(-s)^{-\alpha}\,d\Lambda_m(s)
=
{a\over 1-\alpha}\tau_m^{-\alpha}
\to\infty
\quad(0<\alpha<1).
\tag{ERP.9}
```

Therefore any proof that leaves a residue as a finite endpoint measure leaves
the pulse alive.

## 2. Selector and collar channel

The selector/collar stabilization note defines

```math
\begin{aligned}
d\Lambda_{sel}
:={}&
\|d_\sigma\chi_\sigma\|_{C^2}\,d\sigma
\|d_\sigma\Phi_\sigma\|_{\mathcal T}\,d\sigma\\
&+
dN_{label}
dN_{sgn}
d\Lambda_{collar}.
\end{aligned}
\tag{ERP.10}
```

That solves same-carrier stabilization versus visible selector/collar loss.  It
does not by itself give endpoint uniform integrability.

The gold endpoint policy for this channel is:

```math
\boxed{
\|d_\sigma\chi_\sigma\|_{C^2}
+\|d_\sigma\Phi_\sigma\|_{\mathcal T}
+\lambda_{collar}
\in L_s^{1+\varepsilon}
}
\tag{ERP.11}
```

on the retained terminal family, with endpoint Hardy/Orlicz alternatives
allowed.

Label and sign jumps cannot remain as naked counting measures near \(s=0\).
They must either stabilize before the endpoint layer or be charged before
\(d\mu_m\) is formed:

```math
dN_{label}+dN_{sgn}
\quad\text{is absorbed or endpoint-excluded.}
\tag{ERP.12}
```

## 3. Signed and donor channel

Finite signed-saturation graphs pay finite donor chains through retained
partners or legal exits.  That is a finite routing theorem.

For endpoint uniform integrability, the signed channel needs the stronger
statement:

```math
\boxed{
d\Lambda_{sgn,m}
=
\lambda_{sgn,m}(s)\,ds,
\qquad
\lambda_{sgn,m}\in L_s^{1+\varepsilon},
}
\tag{ERP.13}
```

or a Hardy/Orlicz endpoint modulus, or absorption into retained signed partners
before the endpoint packet measure is defined.

The infinite terminal donor-chain branch is exactly the case where finite
routing does not supply `(ERP.13)`.  It must be closed by a super-\(L^1\)
donor-chain density theorem, a no-free-Zeno theorem that absorbs the channel,
or a CM endpoint-face consumption theorem.

## 4. Terminal trace channel

Terminal trace atom routing proves:

```math
\text{positive terminal trace atom}
\Rightarrow
\text{negative countertrace, visible loss, or storage jump}.
\tag{ERP.14}
```

This prevents the atom from being hidden.  It does not produce a density for
the atom.

For the gold endpoint measure, a terminal trace residue must satisfy:

```math
d\Lambda_{term,m}
=
\lambda_{term,m}(s)\,ds,
\qquad
\lambda_{term,m}\in L_s^{1+\varepsilon},
\tag{ERP.15}
```

or carry a Hardy/Orlicz endpoint modulus, or be consumed before the endpoint
measure is formed.  Otherwise the terminal trace branch is exactly the
endpoint no-jump problem.

## 5. Geometry channel

Body-IV geometry defects are visible as geometry/collar/Field loss.  Visibility
is not density control.

The endpoint policy requires a geometry action density:

```math
d\Lambda_{geom,m}
=
\lambda_{geom,m}(s)\,ds,
\qquad
\lambda_{geom,m}\in L_s^{1+\varepsilon},
\tag{ERP.16}
```

or a Hardy/Orlicz endpoint modulus.  In concrete terms, the geometry branch
needs a super-\(L^1\) endpoint bound for the selected deformation/frame/collar
action that is currently only routed as a visible geometry defect.

## 6. Legal channel

The legal channel collects allowed cutoff, collar, tail, endpoint,
admissibility, pressure-memory, and selector residues.  The word `legal` means
the residue has a permitted destination.  It does not mean the residue has the
terminal modulus needed for no-jump.

The endpoint policy requires:

```math
d\Lambda_{legal,m}
=
\lambda_{legal,m}(s)\,ds,
\qquad
\lambda_{legal,m}\in L_s^{1+\varepsilon},
\tag{ERP.17}
```

or a Hardy/Orlicz modulus, or absorption before \(d\mu_m\) is formed.

## 7. Result

`EndpointResidueDensityPolicy.A` is not proved by the current finite routing
surfaces.

It reduces to the channelwise theorem:

```math
\boxed{
\text{every endpoint residue channel is super-}L^1\text{, Hardy/Orlicz
controlled, or absorbed before }d\mu_m.
}
\tag{ERP.18}
```

This is exactly the residue-side half of endpoint uniform integrability.  Once
`(ERP.18)` is installed, the remaining endpoint density problem is the smooth
full-packet trace density:

```math
[H_m^U]_+
```

and the harmonic pressure-memory trace inside it.
