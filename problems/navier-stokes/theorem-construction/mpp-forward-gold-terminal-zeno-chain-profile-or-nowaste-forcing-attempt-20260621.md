---
theorem_id: forward-gold-terminal-zeno-chain-profile-or-nowaste-forcing-attempt-20260621
status: direct-attempt-sharpens-fork-profile-does-not-consume-positive-endpoint-atom
logical_landing_node: terminal_zeno_chain_profile_or_nowaste_forcing_attempt
edge_effect: "Tests whether the remaining infinite terminal Zeno donor chain can now be forced directly into strict four-body no-waste or MinimalZenoProfileProduction.A. The answer is sharper but not closing: a positive selected source atom at the terminal face is not consumed by profile production, because it can vanish on every compact negative-time strip after parabolic normalization. Thus the Door 1 source-atom branch still requires FourBodyTerminalTraceAC.A, StrictFourBodyNoWasteLyapunov.A, source-square/critical reserve, signed saturation, or charged endpoint/CM consumption. MinimalZenoProfileProduction.A begins only after endpoint residue is evacuated or charged and same-carrier nontriviality is retained in the negative-time Zeno orbit. The direct forcing theorem therefore reduces the infinite chain to terminal trace/no-waste/charged endpoint residue, or to the already isolated zero-residue profile-production stack."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-door1-no-free-terminal-zeno-donor-chain-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-zeno-fourbody-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-minimal-zeno-profile-production-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tuple-endpoint-defect-cm-consumption-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Terminal Zeno Chain Profile-Or-No-Waste Forcing Attempt

Date: 2026-06-21

## 0. Target

The remaining signed-saturation branch is the infinite same-fluid donor chain

```math
\cdots\to P^{-2}\to P^{-1}\to P^0,
\qquad
r_m\downarrow0,
\tag{TZF.1}
```

with inherited selected positive native source after parabolic normalization.
The direct question is whether the upgraded full-tuple/four-body structure now
forces this branch into either

```math
\boxed{
\texttt{StrictFourBodyNoWasteLyapunov.A}
}
\tag{TZF.2}
```

or

```math
\boxed{
\texttt{MinimalZenoProfileProduction.A}.
}
\tag{TZF.3}
```

It does not force either theorem from current inputs.  The useful point is
sharper: the positive endpoint source atom and the profile-production branch
are different branches.  A source atom at \(s=0\) can disappear from every
compact negative-time strip, so it is not killed by producing a negative-time
ancient profile unless endpoint residue has already been evacuated or charged.

## 1. Source marginal dichotomy

Let the normalized selected source time marginal be

```math
\mu_m(ds)=a_m(s)\,ds,
\qquad
a_m\ge0,
\qquad
s\in[-1,0].
\tag{TZF.4}
```

The reduced donor-chain branch carries nontrivial mass

```math
\mu_m([-1,0])\ge c_0>0.
\tag{TZF.5}
```

The endpoint no-free theorem is the uniform terminal modulus

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\mu_m((-\theta,0])=0.
}
\tag{TZF.6}
```

Failure of `(TZF.6)` gives a terminal source atom:

```math
\mu_m\stackrel{*}{\rightharpoonup}\mu,
\qquad
\mu(\{0\})>0.
\tag{TZF.7}
```

The model is

```math
a_m(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{TZF.8}
```

Then

```math
\int_{-1}^{-b}a_m(s)\,ds\to0
\qquad
\text{for every }b>0,
\tag{TZF.9}
```

but

```math
\int_{-\theta}^{0}a_m(s)\,ds\to a
\qquad
\text{for every fixed }\theta>0.
\tag{TZF.10}
```

This is exactly the last-instant source normal form.

## 2. Why profile production does not consume the atom

Profile production is extracted on compact negative-time strips:

```math
K_{R,b}=B_R\times[-R^2,-b],
\qquad
b>0.
\tag{TZF.11}
```

On such a strip, `(TZF.9)` says the selected source atom contributes no retained
mass in the limit.  Therefore the compactness extraction can produce

```math
(U,\Pi)\quad\text{on }s<0
\tag{TZF.12}
```

while the positive selected source residue remains entirely at the missing
endpoint \(s=0\).

Thus the implication

```math
\boxed{
\text{positive terminal source atom}
\Longrightarrow
\text{nontrivial Landau-class profile}
}
\tag{TZF.13}
```

is false at this resolution.  The correct statement is:

```math
\boxed{
\text{profile production requires endpoint residue evacuation or charged
endpoint routing first.}
}
\tag{TZF.14}
```

This matches the full-tuple profile stack: endpoint residue evacuation is the
first line before nontriviality retention, no-drift, stationarity, homogeneity,
defect evacuation, and sphere smoothness.

## 3. What strict no-waste would prove

If the closed same-carrier four-body loop has

```math
dL_{4B,m}
+
dD_{4B,m}
+
c\,d\mu_m
\le
dR_m,
\qquad
c>0,
\tag{TZF.15}
```

then integration on \((-\theta,0]\) gives

```math
c\,\mu_m((-\theta,0])
\le
R_m((-\theta,0])
+
L_{4B,m}(-\theta)-L_{4B,m}(0).
\tag{TZF.16}
```

Therefore the atom is excluded by

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\left(
R_m((-\theta,0])
+
\left[L_{4B,m}(-\theta)-L_{4B,m}(0)\right]_+
\right)
=0.
}
\tag{TZF.17}
```

This is precisely `FourBodyTerminalTraceAC.A`.  A strict no-waste Lyapunov
functional would imply `(TZF.17)`, but the full-tuple recheck shows current
inputs do not produce such a functional.

## 4. Exact forcing fork

After the finite donor graph, legal exits, retained signed partners, and
entrance leaves have been paid under their stated hypotheses, an infinite
terminal donor chain has the following exact fork.

First, terminal trace AC/no-waste holds:

```math
\boxed{
\texttt{FourBodyTerminalTraceAC.A}
\quad\text{or}\quad
\texttt{StrictFourBodyNoWasteLyapunov.A}.
}
\tag{TZF.18}
```

Then `(TZF.6)` follows and the source atom is removed.

Second, terminal trace AC/no-waste fails and the source atom survives:

```math
\boxed{
\mu(\{0\})>0.
}
\tag{TZF.19}
```

Then the branch is not a hidden profile-production input.  It is the already
isolated endpoint residual:

```math
\boxed{
\mathcal R_{\rm sat}
\quad\text{or}\quad
\mathcal R_{\rm jump}
\quad\text{or}\quad
\mathcal R_{\rm legal},
}
\tag{TZF.20}
```

depending on whether the atom is carried by the signed donor chain, a positive
endpoint storage jump, or non-terminal-AC legal/collar mass.  After same-witness
CM admission and service certification, this becomes the existing Part/Field
consumption branch.

Third, endpoint residue is evacuated or charged, and the remaining Zeno orbit
retains nontrivial same-carrier mass on negative-time strips.  Only then can the
rigid branch begin:

```math
\boxed{
\texttt{MinimalZenoProfileProduction.A}
}
\tag{TZF.21}
```

with its full production stack:

```math
\boxed{
\begin{gathered}
\text{same-carrier nontriviality retention,}\\
\text{canonical gauge/no-drift/unique tangent,}\\
\text{unweighted renormalized action and stationarity,}\\
\text{homogeneity extraction,}\\
\text{full-tuple defect evacuation,}\\
\text{sphere smoothness.}
\end{gathered}
}
\tag{TZF.22}
```

## 5. Result

The direct forcing attempt does not prove `NoFreeTerminalZenoDonorChain.A`.

It proves the correct placement of the profile branch:

```math
\boxed{
\text{positive endpoint source atom}
\not\Longrightarrow
\text{profile-production contradiction}.
}
\tag{TZF.23}
```

The infinite terminal donor chain closes only through terminal trace/no-waste or
a same-carrier source-square/critical reserve, or else it is a charged endpoint
residual / certified CM consumption branch.  `MinimalZenoProfileProduction.A`
remains relevant only after the endpoint atom is evacuated or charged and
nontriviality survives in the negative-time Zeno orbit.
