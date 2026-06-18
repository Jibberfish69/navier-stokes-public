# Gold stress-flux bridge and Landau-Liouville test

Status: exploratory gold-route direct test, not an installed proof.

2026-06-18 repair: the sharpened current-frontier form is recorded in
`mpp-forward-gold-two-door-sharp-form-repair-20260618.md`.  That repair proves
the finite vector-selector sublemma and records the zero-flux Landau-class
Liouville consumer as conditional downstream; the two remaining production
bridges are `ProjectedStressFluxNativeCarrierIdentification.A` and
`ZenoCriticalProfileProduction.A`.

This note continues the June 17 free-agency pursuit after the Mellin stress-flux
residue test. It tests the two missing pieces left by that note:

```math
\text{StressFluxAtomToNativeSource.A}
```

and

```math
\text{zero-flux critical-profile Liouville}.
```

## 1. Current gold wall

The current gold obstruction is the terminal time-face atom:

```math
TerminalTimeFaceAntiAtom.A
\quad\text{or}\quad
TerminalNewProductionTheorem_{B_{ASAC}}.A.
```

The installed source-wall records show that finite terminal \(L^1_t\) source
mass permits the model layer

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds\rightharpoonup\delta_0,
```

and no current input supplies the required super-\(L^1_t\) or terminal
time-slab modulus.

The Mellin stress-flux test changed the object from a time-layer density to a
critical annular flux:

```math
\Phi(r,t)
=
\int_{\partial B_r(x_*)}
\bigl(u\otimes u+pI-\nu\nabla u\bigr)n\,dS.
```

For a critical \(r^{-1}\) pole, \(\Phi\) is scale-invariant.

## 2. Direct bridge attempt: stress flux to native positive source

The desired bridge is:

```math
\boxed{
\text{StressFluxAtomToNativeSource.A}
}
```

Namely, a nonzero limiting critical stress flux should force a terminal
native source/new-production atom:

```math
\lim_{r\downarrow0}\Phi(r,t)\neq0
\Longrightarrow
\mu_*^{src,+}(Q_1^-)>0.
```

The local distributional identity supports only a vector residue:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
\Phi_0\,\delta_0.
```

This proves that a nonzero stress flux is a point-force/momentum-source
residue. It does not by itself prove that the selected native positive source
measure used in the source-wall records is nonzero.

The obstruction is sign and projection. A vector flux can cancel in a chosen
direction, and the native positive source is a one-sided selected object. The
bridge needs a selector or absolute-value statement such as

```math
\mu_*^{src,+}(Q_1^-)
\gtrsim
|\Phi_0|,
```

or a finite family of selector directions \(\{\ell_a\}\) with

```math
\mu_*^{src,+}(Q_1^-)
\gtrsim
\max_a |\ell_a\cdot\Phi_0|.
```

Without this one-sided projection bridge, the stress-flux atom is a sharper
diagnostic than the native source atom, but not yet the same gold obstruction.

After checking the native source definition, this bridge is genuinely missing.
The source-wall native measure is not defined as the full momentum stress
divergence. It is the one-sided local pre-Cauchy source carrier:

```math
\mu_{src,N}^+(P)
:=
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+\,dxdt.
```

The existing source-measure decomposition records that current pressure,
cutoff, energy, dissipation, signed-reserve, local, and legal ledgers do not
dominate the singular native positive component. Therefore a vector point-force
residue cannot simply be renamed as \(\mu_*^{src,+}\).

The exact missing form is:

```math
\boxed{
\text{StressFluxSelectorDomination.A}
}
```

For every terminal critical stress-flux atom, produce a bounded-overlap
same-fluid active family and selector directions such that the positive local
pre-Cauchy source carrier dominates a nonzero projection of the stress flux:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\gtrsim
\max_a |\ell_a\cdot\Phi_0|.
```

This is the real Door 1 burden. It is narrower than the old generic
`NativeSourceAC.A` problem, because it starts from a critical stress-flux atom,
but it is still a new theorem.

## 3. Direct Liouville attempt: zero flux plus exact critical profile

The second missing theorem is:

```math
\boxed{
\text{ZeroFluxCriticalProfileLiouville.A}
}
```

The clean target is:

```math
\begin{aligned}
&U \text{ is } (-1)\text{-homogeneous},\\
&-\nu\Delta U+(U\cdot\nabla)U+\nabla P=0
\quad\text{on }\mathbb R^3\setminus\{0\},\\
&\nabla\cdot U=0,\\
&U \text{ is smooth on } S^2,\\
&\Phi_0=0,
\end{aligned}
\qquad
\Longrightarrow
\qquad
U=0.
```

This is a conditional route through the Landau/Sverak classification theorem:
if the Zeno extraction produces a smooth-on-sphere \((-1)\)-homogeneous
stationary Navier--Stokes profile on \(\mathbb R^3\setminus\{0\}\) with zero
point force, then the classification reduces the candidate to the zero-force
Landau member, hence to \(U=0\).

The theorem is not yet installed for the Zeno branch because the Zeno extraction
does not currently produce all of the hypotheses above. It produces an ancient
local suitable source-residue limit with positive native residue, not an exact
smooth-on-sphere \((-1)\)-homogeneous stationary no-force profile.

Therefore the Landau-Liouville route needs a production theorem:

```math
\boxed{
\text{ZenoCriticalProfileProduction.A}
}
```

with a statement like:

```math
\text{terminal Zeno critical Mellin pole}
\Longrightarrow
\text{precompact exact }(-1)\text{-homogeneous stationary profile}
```

after quotienting by translations, rotations, and scale.

## 4. Where the route breaks

The route would close if all three arrows were installed:

```math
\text{terminal annular Zeno collapse}
\Longrightarrow
\text{critical Mellin pole}
\Longrightarrow
\left\{
\begin{array}{ll}
\Phi_0\neq0 &\Longrightarrow \text{native source atom},\\
\Phi_0=0 &\Longrightarrow \text{zero Landau force} \Longrightarrow U=0.
\end{array}
\right.
```

The current pressure test has only the first structural arrow and the
conditional external Liouville intuition. The missing installed arrows are:

```math
\text{StressFluxSelectorDomination.A}
```

and

```math
\text{ZenoCriticalProfileProduction.A}.
```

## 5. Consequence for the gold pursuit

The best gold continuation is not a generic terminal time-thickness attempt.
It is a two-door stress-flux packet:

```math
\boxed{
\textbf{TerminalStressFluxAntiAtom packet}
}
```

Door 1:

```math
\Phi_0\neq0
\Longrightarrow
\text{StressFluxSelectorDomination.A}
\Longrightarrow
\text{TerminalNewProductionTheorem}_{B_{ASAC}}\text{ obstruction}.
```

Door 2:

```math
\Phi_0=0
\Longrightarrow
\text{ZenoCriticalProfileProduction.A}
\Longrightarrow
\text{ZeroFluxCriticalProfileLiouville.A}
\Longrightarrow
\text{no terminal critical pole}.
```

This does not prove the gold theorem. It sharpens the remaining work from
"exclude terminal source atoms" to two concrete production bridges.

## 6. External theorem candidate

The external theorem candidate for Door 2 is Sverak's Landau classification
program:

```text
Vladimir Sverak, "On Landau's Solutions of the Navier-Stokes Equations",
arXiv:math/0604550.
```

Use it only after the repo produces the exact hypotheses:
\((-1)\)-homogeneity, stationary equation on \(\mathbb R^3\setminus\{0\}\),
smooth sphere profile, and zero point force.
