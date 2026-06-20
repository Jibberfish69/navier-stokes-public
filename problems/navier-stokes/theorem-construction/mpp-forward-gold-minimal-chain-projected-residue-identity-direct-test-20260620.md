# MPP Forward-Gold MinimalChainProjectedResidueIdentity.A Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The minimal-chain version of the projected residue
identity is sharper than the original Door 1 identity, but it still does not
close from the installed Navier-Stokes inputs.

Minimal donor-chain reduction removes retained signed partners, legal exits,
pair-weight defects, and finite donor trees only under the already conditional
finite-graph package.  After that removal, the projected residue identity is
equivalent to a source-resolved same-shadow saturation theorem.  The only
remaining obstruction is the infinite terminal Zeno donor chain, in the form of a
selected positive terminal source layer whose signed partner never reappears in
the same selected shadow before the terminal face.

## 1. Target after minimal-chain reduction

The parent Door 1 identity was

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
=
\ell\cdot\Phi_0-\mathrm{Legal}_N-o_N(1).
\tag{MCPRI.1}
```

After the minimal terminal Zeno donor-chain reduction, the same requirement can
be written on the selected source/stress shadow as

```math
\boxed{
\left\|
q_m\,d\mu_m
-
\ell\cdot\Sigma_m\xi_m\,d\mu_m
\right\|_{\mathcal S_m^{sel}}
\le
\mathrm{Legal}_m+o_m(1).
}
\tag{MCPRI.2}
```

Here:

```text
q_m d\mu_m:
  the signed local pre-Cauchy source density on the selected minimal shadow;

Sigma_m xi_m:
  the same-shadow conormal stress trace;

ell:
  the finite selector direction for the nonzero projected stress-flux residue;

S_m^{sel}:
  the selected minimal terminal source/stress shadow after legal exits, finite
  donors, retained partners, and pair-weight defects have been removed.
```

Thus `MinimalChainProjectedResidueIdentity.A` is not a statement about an
arbitrary annular current.  It is a same-shadow identity between the signed
pre-Cauchy source and the projected conormal stress record.

## 2. Conditional closure of the nonzero-flux branch

Assume `(MCPRI.2)` and suppose the minimal trace defect has nonzero projected
stress flux:

```math
\Phi_\ast\ne0.
\tag{MCPRI.3}
```

Choose the finite selector direction so that

```math
[\ell\cdot\Phi_\ast]_+
\ge
c_{sel}|\Phi_\ast|,
\qquad
c_{sel}>0.
\tag{MCPRI.4}
```

The stress-flux limit gives

```math
\int_{\mathcal S_m^{sel}}
\ell\cdot\Sigma_m\xi_m\,d\mu_m
\longrightarrow
\ell\cdot\Phi_\ast
\tag{MCPRI.5}
```

after the already declared legal exits are removed.  Combining `(MCPRI.2)` and
`(MCPRI.5)` gives

```math
\int_{\mathcal S_m^{sel}}q_m\,d\mu_m
\ge
\ell\cdot\Phi_\ast-\mathrm{Legal}_m-o_m(1).
\tag{MCPRI.6}
```

Since

```math
\int_{\mathcal S_m^{sel}} q_{m,+}\,d\mu_m
\ge
\left[
\int_{\mathcal S_m^{sel}} q_m\,d\mu_m
\right]_+,
\tag{MCPRI.7}
```

the selected positive native source carrier satisfies

```math
\int_{\mathcal S_m^{sel}}q_{m,+}\,d\mu_m
\ge
c_{sel}|\Phi_\ast|
-\mathrm{Legal}_m-o_m(1).
\tag{MCPRI.8}
```

Therefore `(MCPRI.2)` would close the nonzero-flux side of the minimal Zeno trace
defect fork.

## 3. Direct identity attempt

The raw stress equation supplies a signed distributional identity.  On a
collapsing annular test with selector direction `ell`,

```math
-\int \Sigma_m:\nabla(\chi_m\ell)
\longrightarrow
\ell\cdot\Phi_\ast.
\tag{MCPRI.9}
```

This is before the terminal proof operations are applied.  The native selected
source is after those operations:

```text
localization,
pressure/Leray projection,
cutoff and collar decomposition,
weighting and lifting,
active-window selection,
same-fluid packet selection,
positive-part extraction.
```

The direct proof would have to show that these operations preserve the signed
same-shadow identity modulo legal ledgers:

```math
q_m\,d\mu_m
=
\ell\cdot\Sigma_m\xi_m\,d\mu_m
d\mathcal D_m^{legal}
o_m(1)
\quad
\text{on } \mathcal S_m^{sel}.
\tag{MCPRI.10}
```

The installed inputs do not prove `(MCPRI.10)`.

## 4. What minimality pays

Minimal-chain selection is still useful.  Under the conditional finite-graph
package, it removes four sources of mismatch:

```math
\mathcal E_m^{legal}
+\mathcal E_m^{partner}
+\mathcal E_m^{pairweight}
+\mathcal E_m^{finite\ donor}
\longrightarrow0.
\tag{MCPRI.11}
```

These are precisely the exits already paid by retained signed partners, declared
legal ledgers, ASAC/positive-pair-weight charge, local donor balance, and
entrance-leaf decay.

After these terms are removed, the remaining mismatch is

```math
\mathcal E_m^{Zeno}
:=
q_m\,d\mu_m
-
\ell\cdot\Sigma_m\xi_m\,d\mu_m
\quad\text{on }\mathcal S_m^{sel}.
\tag{MCPRI.12}
```

So the minimal-chain test reduces the projected residue identity to

```math
\boxed{
\|\mathcal E_m^{Zeno}\|_{\mathcal S_m^{sel}}\to0.
}
\tag{MCPRI.13}
```

This is exactly the no-free terminal Zeno donor-chain assertion in source/stress
shadow language.

## 5. Countermodel shape to the direct proof

Let the selected positive source layer be

```math
q_m^+(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{MCPRI.14}
```

Let the signed partner sit on the same-fluid donor side but outside the selected
minimal shadow until the next smaller terminal packet:

```math
q_m^-(s)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)
\quad\text{on the donor shadow }D_{m+1}.
\tag{MCPRI.15}
```

The assembled signed source-current may remain balanced across the full donor
graph, but the selected receiver shadow records only `q_m^+`.  Thus

```math
\int q_m^+\,d\mu_m=a,
\qquad
\int_{\mathcal S_m^{sel}}
\bigl(q_m^+-q_m^-\bigr)\,d\mu_m=a,
\tag{MCPRI.16}
```

while the missing negative partner is pushed to the next terminal donor.  A
finite donor chain eventually exposes that partner or pays legal cost.  An
infinite Zeno chain has no last preterminal leaf, so the same telescoping leaves
a terminal endpoint trace.

This is not a construction of a Navier-Stokes solution.  It is the exact
mechanism not excluded by the installed ledgers.  Minimality removes earlier and
finite exits; it does not force the terminal donor partner to re-enter the same
selected shadow before `s=0`.

## 6. Exact reduction

The direct test proves the useful conditional implication

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}
\Longrightarrow
\text{nonzero-flux minimal Zeno trace defect is seen by the native positive
source carrier.}
}
\tag{MCPRI.17}
```

The identity itself is not installed.  It reduces to the following genuinely
same-carrier assertions:

```math
\boxed{
\text{SourceResolvedPairedTraceCompactness.A}
+\text{SourceWeightedPolarSaturation.A}
+\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{MCPRI.18}
```

Equivalently, after the conditional finite donor-graph package has removed the
paid cases,

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}
\ \Longleftrightarrow_{\rm current\ resolution}\
\text{selected-shadow terminal signed saturation.}
}
\tag{MCPRI.19}
```

## Verdict

`MinimalChainProjectedResidueIdentity.A` is now no longer a vague nonzero-flux
bridge.  Its conditional payoff is proved, and its unpaid content is identified:
the selected positive terminal source layer must keep its projected conormal
stress partner in the same minimal shadow.

Current inputs do not prove that.  The failure is exactly the infinite terminal
Zeno donor chain, or else it must be consumed as a CM Pack/Part/Field
witness-face branch rather than as a forward-gold no-jump proof.
