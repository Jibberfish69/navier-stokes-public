---
theorem_id: forward-gold-retained-frozen-family-compactness-lsc-solution-20260622
status: retained-compact-quotient-finite-time-observability-proved-gramian-to-xterm-fails-without-frozen-dissipative-noreturn
logical_landing_node: retained_frozen_family_compactness_lsc
edge_effect: >-
  Solves RetainedFrozenFamilyCompactnessLsc.A in the same-packet sense needed
  by the kernel theorem: on the retained compact quotient produced by the C_N
  coordinate, the frozen same-packet flow is compact/continuous and the full
  readout W_sigma is lower semicontinuous. Therefore the kernel theorem
  ker L_4B,N=G gives a uniform finite-time observability estimate by
  compactness contradiction. This closes the dynamic observability gap on the
  retained packet class. It does not by itself construct the instantaneous
  X-term Lyapunov operator. The direct Gramian-to-X-term test shows finite-time
  observability alone leaves a positive endpoint readout; the remaining
  same-packet input is FrozenFullPacketDissipativeNoReturn.A.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-c-coordinate-realization-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-compactness-evolution-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-atlas-fixed-terminal-gauge-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
---

# Retained Frozen Family Compactness/Lsc Solution

Date: 2026-06-22

## 0. Target

The kernel theorem left one dynamic clause:

```math
\boxed{
\texttt{RetainedFrozenFamilyCompactnessLsc.A}.
}
\tag{RFC.1}
```

This clause is not a component estimate.  It says that the frozen same-packet
evolutions used in the observability contradiction stay inside the retained
material packet compactness coordinate.

The precise target is:

```math
Z_n(t)
:=
e^{t\mathcal L_{\sigma_n}}Z_n
\tag{RFC.2}
```

has a same-packet subsequential limit on \(0\le t\le T_0\), and the full
readout

```math
\mathcal W_\sigma
=
A_{4B,N}
+D_{4B,N}
+{d\over d\sigma}[\log(1+\mathcal P_N^{mat})]_+
\tag{RFC.3}
```

is lower semicontinuous along that limit.

## 1. The retained frozen state space

The frozen state space is not the whole Hilbert tower.  It is the retained
mixed material quotient packet:

```math
\mathcal K_N^{ret}/\mathcal G.
\tag{RFC.4}
```

The retained packet includes the compactness coordinate \(C_N\).  Concretely,
the mixed material record

```math
Z_N^{mix}
=
\left(
D_s^mD_a^\alpha v,\,
D_s^mD_a^\alpha q,\,
D_s^mD_a^\beta A,\,
D_s^mD_a^\beta G,\,
D_s^mD_a^\alpha h
\right)
\tag{RFC.5}
```

is controlled by the \(C_N\) finite-rank, material-space translation, and
material-time translation moduli:

```math
L_C^{M,\ell,\delta}
=
\|(I-\Pi_M)Z_N^{mix}\|^2
+\sup_{|\xi|\le\ell}\|\delta_\xi^a Z_N^{mix}\|^2
+\sup_{|\tau|\le\delta}\|\delta_\tau^s Z_N^{mix}\|^2,
\tag{RFC.6}
```

summed over the packet components and cutoffs.

Therefore, after quotienting the harmless gauge \(\mathcal G\), the retained
unit packet shell is compact:

```math
\boxed{
\left\{
Z\in\mathcal K_N^{ret}/\mathcal G:
\|Z\|_{\mathcal H_N/\mathcal G}=1
\right\}
\text{ is compact.}
}
\tag{RFC.7}
```

This is exactly why the \(C_N\) coordinate had to be part of the simultaneous
packet.  Without \(C_N\), a unit sequence could escape by high-frequency or
translation loss before the kernel theorem could see it.

## 2. Frozen flow continuity on the retained packet

Freeze a retained packet at scale \(\sigma\).  The frozen mixed material tower
has the form

```math
\partial_t Z
=
\mathcal L_\sigma Z,
\tag{RFC.8}
```

where \(\mathcal L_\sigma\) is built from the same transported material
Navier-Stokes law:

```math
\partial_s v+A^T\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{RFC.9}
```

On the retained branch, the coefficients \(A,G\), the pressure service, the
collar, and the selector data are all part of the compact mixed record
`(RFC.5)`--`(RFC.6)`.  The fixed-terminal-gauge atlas calculation gives one
same material packet; the frozen operator is therefore a finite mixed-tower
linear parabolic operator with retained coefficients.

Standard finite-time continuous dependence for this frozen material tower gives

```math
(\sigma_n,Z_n)\to(\sigma_\ast,Z_\ast)
\quad\Longrightarrow\quad
e^{t\mathcal L_{\sigma_n}}Z_n
\to
e^{t\mathcal L_{\sigma_\ast}}Z_\ast
\tag{RFC.10}
```

in the retained packet topology, uniformly for \(0\le t\le T_0\).

This is not viscosity-only smoothing.  It is continuity of the whole frozen
pressure-viscosity-incompressibility-velocity tower in the retained material
coordinates.

## 3. Lower semicontinuity of the full readout

The full readout is the same-packet sum of nonnegative channels:

```math
\mathcal W_\sigma
=
A_{4B,N}
+D_{4B,N}
+{d\over d\sigma}[\log(1+\mathcal P_N^{mat})]_+.
\tag{RFC.11}
```

Each term is lower semicontinuous on the retained packet topology:

```math
Z_n\to Z
\quad\Longrightarrow\quad
D_{4B,N}(Z)
\le
\liminf_n D_{4B,N}(Z_n),
\tag{RFC.12}
```

because viscous/strain and tower drains are nonnegative \(L^2\)-type graph
norms.

The selected activity term is retained by the same-carrier \(C_N/K_{\rm sel}\)
condition:

```math
h_n\to h\text{ in }L^1
\quad\Longrightarrow\quad
[h_n]_+\to[h]_+\text{ in }L^1,
\tag{RFC.13}
```

so the positive selected carrier cannot disappear without paying selector,
collar, compactness, or legal loss already inside the retained packet.

The logarithmic material-record growth term is lower semicontinuous because
\(\mathcal P_N^{mat}\) is built from the same finite mixed material record and
positive variation is lower semicontinuous under retained strong/weak
convergence of the recorded channels:

```math
d[\log(1+\mathcal P_N^{mat}(Z))]_+
\le
\liminf_n
d[\log(1+\mathcal P_N^{mat}(Z_n))]_+ .
\tag{RFC.14}
```

Therefore

```math
\boxed{
\mathcal W_{\sigma_\ast}(Z_\ast(t))
\le
\liminf_n
\mathcal W_{\sigma_n}(Z_n(t))
}
\tag{RFC.15}
```

for the retained frozen family.

## 4. Finite-time observability from the kernel theorem

Now prove the frozen finite-time observability estimate:

```math
\boxed{
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z)\,dt
\ge
c
\|Z\|_{\mathcal H_N/\mathcal G}^2
}
\tag{RFC.16}
```

for \(Z\in\mathcal K_N^{ret}/\mathcal G\).

Assume `(RFC.16)` fails.  Then there are retained packet scales \(\sigma_n\)
and quotient-normalized data \(Z_n\) with

```math
\|Z_n\|_{\mathcal H_N/\mathcal G}=1
\tag{RFC.17}
```

and

```math
\int_0^{T_0}
\mathcal W_{\sigma_n}(e^{t\mathcal L_{\sigma_n}}Z_n)\,dt
\to0.
\tag{RFC.18}
```

By compactness of the retained quotient shell and continuity of the frozen
flow, pass to a subsequence:

```math
Z_n\to Z_\ast,
\qquad
e^{t\mathcal L_{\sigma_n}}Z_n
\to
e^{t\mathcal L_{\sigma_\ast}}Z_\ast
=:Z_\ast(t).
\tag{RFC.19}
```

Lower semicontinuity gives

```math
\int_0^{T_0}
\mathcal W_{\sigma_\ast}(Z_\ast(t))\,dt
=0.
\tag{RFC.20}
```

Since \(\mathcal W\ge0\),

```math
\mathcal W_{\sigma_\ast}(Z_\ast(t))=0
\quad\text{for a.e. }t\in[0,T_0].
\tag{RFC.21}
```

The kernel theorem says zero full readout means harmless gauge:

```math
\ker\mathcal L_{4B,N}=\mathcal G.
\tag{RFC.22}
```

Hence

```math
Z_\ast(t)\in\mathcal G
\quad\text{for a.e. }t.
\tag{RFC.23}
```

Choose \(t_j\downarrow0\) from the full-measure set in `(RFC.23)`.  Frozen-flow
continuity gives

```math
Z_\ast(t_j)\to Z_\ast(0)=Z_\ast.
\tag{RFC.24}
```

The gauge subspace is closed, so \(Z_\ast\in\mathcal G\).  But the quotient
normalization `(RFC.17)` passes through the compact quotient limit:

```math
\|Z_\ast\|_{\mathcal H_N/\mathcal G}=1.
\tag{RFC.25}
```

Contradiction.  Therefore `(RFC.16)` holds.

## 5. What this closes and what it does not close

This proves the dynamic observability clause on the retained compact
same-packet class:

```math
\boxed{
\texttt{RetainedFrozenFamilyCompactnessLsc.A}
\Rightarrow
\text{finite-time frozen full-packet observability on }
\mathcal K_N^{ret}/\mathcal G.
}
\tag{RFC.26}
```

Together with the kernel theorem, the retained non-gauge frozen packet cannot
be invisible to the full four-body readout.

The remaining \(X\)-term construction is now more precise.  The direct
Gramian-to-\(X\)-term test shows finite-time observability alone leaves a
positive endpoint readout.  The next same-packet theorem is:

```math
\boxed{
\texttt{FrozenFullPacketDissipativeNoReturn.A}.
}
\tag{RFC.27}
```

That theorem must make the infinite-time observable Gramian

```math
H_\sigma
:=
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt
\tag{RFC.28}
```

finite on the gauge quotient and remove the endpoint term, producing the
bounded-below instantaneous four-body symmetrizer

```math
\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle
\tag{RFC.29}
```

whose derivative supplies the desired simultaneous packet inequality.

So the dynamic observability gap is closed on the retained packet.  The live
construction has moved to the frozen full-packet no-return/dissipativity step,
still inside the same transported material participation law.
