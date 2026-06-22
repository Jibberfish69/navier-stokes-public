---
theorem_id: forward-gold-endpoint-uniform-integrability-reserve-main-theorem-20260621
status: main-gold-target-reoriented-to-endpoint-uniform-integrability
logical_landing_node: endpoint_uniform_integrability_reserve
edge_effect: "Reorients the forward-gold terminal branch around Thomas's corrected target. The main theorem is EndpointUniformIntegrabilityReserve.A: prove a uniform terminal tail modulus for the full same-carrier endpoint packet measure, not merely an unweighted integral of A_4B. The note records the exact equivalent usable forms: power tail modulus, L_s^p density with p>1, Hardy moment, and de la Vallee-Poussin/Orlicz uniform integrability after all endpoint residues have been made absolutely continuous or absorbed. It also records the local producer EndpointReverseHolderFullPacket.A, with AnnularPressureReverseHolder.A as the harmonic pressure subtheorem. Finite four-body payment remains support; it is not the endpoint theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-endpoint-trace-lp-reserve-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fullpacket-density-endpoint-trace-identification-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-hardy-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-storage-harmonic-pressure-endpoint-policy-hardstop-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gehring-self-improvement-no-seed-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-trace-lp-coercivity-direct-attempt-20260621.md
---

# Endpoint Uniform Integrability Reserve Main Theorem

Date: 2026-06-21

## 0. Corrected target

The correct endpoint theorem is not a cumulative payment identity followed by
hope at \(s=0\).  The theorem must prove the terminal tail modulus directly.

Define the full same-carrier endpoint packet measure

```math
\begin{aligned}
d\mu_m
:={}&
[H_m(s)]_+\,ds
d\Lambda_{legal,m}
d\Lambda_{sel,m}
d\Lambda_{sgn,m}\\
&+
d\Lambda_{term,m}
d\Lambda_{geom,m}.
\end{aligned}
\tag{EUI.1}
```

The gold target is:

```math
\boxed{
\texttt{EndpointUniformIntegrabilityReserve.A}
}
\tag{EUI.2}
```

with statement

```math
\boxed{
\lim_{\theta\downarrow0}\sup_m\mu_m((-\theta,0])=0.
}
\tag{EUI.3}
```

Equivalently, prove a uniform modulus

```math
\boxed{
\mu_m((-\theta,0])\le C\omega(\theta),
\qquad
\omega(\theta)\downarrow0.
}
\tag{EUI.4}
```

The most usable concrete form is

```math
\boxed{
\mu_m((-\theta,0])\le C\theta^\beta
\qquad
\text{for some }\beta>0.
}
\tag{EUI.5}
```

This is the exact property the terminal heat-scale pulse cannot satisfy.

## 1. Why the four-body payment is support, not the endpoint theorem

The closed four-body loop supplies an unweighted \(L^1\)-level payment for the
order-locked full-packet activity carried by the same four-body packet.  After
endpoint trace identification, this can give an estimate of the form

```math
\int_{-1}^{0}[H_m(s)]_+\,ds
\le C.
\tag{EUI.6}
```

But `(EUI.6)` allows

```math
a_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{EUI.7}
```

Indeed

```math
\int_{-1}^{0}a_m(s)\,ds=a,
\tag{EUI.8}
```

while

```math
\int_{-\theta}^{0}a_m(s)\,ds=a
\qquad
\text{for }0<\tau_m\le\theta.
\tag{EUI.9}
```

Thus the endpoint tail does not vanish uniformly.  This is why
`EndpointUniformIntegrabilityReserve.A` must be the main theorem rather than an
afterthought.

## 2. Equivalent usable forms

### 2.1 Super-\(L^1\) density

If the whole endpoint packet measure is absolutely continuous,

```math
d\mu_m=\rho_m(s)\,ds,
\tag{EUI.10}
```

and

```math
\boxed{
\sup_m\|\rho_m\|_{L_s^p(-1,0)}<\infty
\qquad
\text{for some }p>1,
}
\tag{EUI.11}
```

then Holder gives

```math
\mu_m((-\theta,0])
\le
\theta^{1-1/p}\sup_m\|\rho_m\|_{L_s^p}.
\tag{EUI.12}
```

So `(EUI.3)` holds with

```math
\beta=1-{1\over p}.
\tag{EUI.13}
```

### 2.2 Hardy moment

If, for some \(\alpha>0\),

```math
\boxed{
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\mu_m(s)<\infty,
}
\tag{EUI.14}
```

then

```math
\mu_m((-\theta,0])
\le
\theta^\alpha
\sup_m\int_{-1}^{0}(-s)^{-\alpha}\,d\mu_m(s).
\tag{EUI.15}
```

So `(EUI.3)` holds with \(\beta=\alpha\).

### 2.3 Orlicz / de la Vallee-Poussin form

If all endpoint residues have first been made absolutely continuous or absorbed
before the endpoint step, and \(d\mu_m=\rho_m\,ds\), then a de la
Vallee-Poussin bound is enough:

```math
\boxed{
\sup_m\int_{-1}^{0}\Phi(\rho_m(s))\,ds<\infty,
\qquad
{\Phi(r)\over r}\to\infty.
}
\tag{EUI.16}
```

This gives uniform integrability of \(\{\rho_m\}\), hence `(EUI.3)`.  The
absolute-continuity clause is essential: a naked singular endpoint measure
does not have a density \(\rho_m\) relative to \(ds\).

## 3. Naked endpoint measures are not allowed in the gold route

The full endpoint packet measure in `(EUI.1)` contains smooth trace density and
five residue channels.  The gold endpoint theorem cannot carry those residues
as arbitrary finite measures, because finite measures can concentrate at
\(s=0\).

Therefore every residue channel must satisfy one of the following before the
Hardy/no-jump step:

```math
\boxed{
d\Lambda_{j,m}=\lambda_{j,m}(s)\,ds,
\qquad
\sup_m\|\lambda_{j,m}\|_{L_s^{p_j}}<\infty
\quad(p_j>1),
}
\tag{EUI.17}
```

or

```math
\boxed{
\sup_m\int_{-1}^{0}(-s)^{-\alpha_j}\,d\Lambda_{j,m}(s)<\infty,
\qquad
\alpha_j>0,
}
\tag{EUI.18}
```

or the channel must be absorbed before the endpoint measure is formed.

This applies to

```math
\Lambda_j\in
\{\Lambda_{legal},\Lambda_{sel},\Lambda_{sgn},
\Lambda_{term},\Lambda_{geom}\}.
\tag{EUI.19}
```

Finite routing, visibility, or terminal classification is not enough.

## 4. Reverse-Holder producer

The right local producer is:

```math
\boxed{
\texttt{EndpointReverseHolderFullPacket.A}
}
\tag{EUI.20}
```

After the gauge quotient

```math
U_m=V_m-\langle V_m\rangle_{\eta_m},
\tag{EUI.21}
```

and after endpoint residue channels have been made density-level or absorbed,
let \(\rho_m\) denote the full endpoint density:

```math
\rho_m(s)
=
[H_m(s)]_+
\lambda_{legal,m}(s)
\lambda_{sel,m}(s)
\lambda_{sgn,m}(s)
\lambda_{term,m}(s)
\lambda_{geom,m}(s).
\tag{EUI.22}
```

The target estimate is

```math
\boxed{
\sup_m\int_{-1}^{0}\rho_m(s)^{1+\varepsilon}\,ds<\infty
\qquad
\text{for some }\varepsilon>0.
}
\tag{EUI.23}
```

Equivalently, prove a reverse-Holder seed on terminal intervals
\(I=(-\theta,0]\):

```math
\boxed{
\left(
\fint_I\rho_m^{1+\varepsilon}\,ds
\right)^{1/(1+\varepsilon)}
\le
C\fint_{\lambda I}\rho_m\,ds
\text{controlled lower-order terms}.
}
\tag{EUI.24}
```

Then `(EUI.23)` gives

```math
\mu_m((-\theta,0])
\le
\theta^{\varepsilon/(1+\varepsilon)}
\|\rho_m\|_{L_s^{1+\varepsilon}},
\tag{EUI.25}
```

which proves `(EUI.3)`.

## 5. Harmonic pressure must be a trace density

The harmonic pressure-memory contribution must not remain a routed finite
measure.  After the gauge quotient, the required pressure subtheorem is:

```math
\boxed{
\texttt{AnnularPressureReverseHolder.A}
}
\tag{EUI.26}
```

with output

```math
\boxed{
[Q_m^H U_m\cdot\nabla\chi_m]_+
\in L_s^{1+\varepsilon}(-1,0)
}
\tag{EUI.27}
```

on the retained collar/annulus, or an equivalent Hardy/Orlicz endpoint modulus
for that same trace.

This replaces the weaker statement

```math
Q_m^H U_m\cdot\nabla\chi_m
\quad\text{is a finite collar/legal/terminal measure}.
\tag{EUI.28}
```

The latter still permits the pulse `(EUI.7)`.

## 6. Corrected chain

The corrected forward-gold chain is:

```math
\boxed{
\texttt{EndpointReverseHolderFullPacket.A}
}
\Longrightarrow
\boxed{
\texttt{EndpointUniformIntegrabilityReserve.A}
}
\Longrightarrow
\boxed{
\texttt{FullHodgeStokesEndpointNoJump.A}
}
\tag{EUI.29}
```

and then the existing native bridge yields

```math
A_{\rm native}
\le
C A_{4B}+R_{\rm legal}+T_\sigma
\tag{EUI.30}
```

on the no-exit branch.

The four-body loop is still useful, but it is not the endpoint theorem.  It
provides packet payment and same-carrier bookkeeping.  The terminal pulse is
killed only by endpoint uniform integrability, or by a stronger theorem that
implies it.
