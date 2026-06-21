---
theorem_id: forward-gold-full-hodgestokes-actual-tuple-selector-admissibility-attack-20260621
status: direct-attack-fails-at-transported-selector-admissibility-not-at-transport-skew
logical_landing_node: full_hodgestokes_actual_tuple_selector_admissibility_attack
edge_effect: "Attacks FullLoopCarrierRigidity.A / TransportedFullHodgeStokesSelector.A directly from the actual Navier-Stokes participation tuple. The selected-energy algebra proves the conditional no-residue implication once a transported full-loop selector identity with bounded-below capacity and summable/absorbable/legal remainder is available. The unconditional production fails at an exact compatibility wall: a scalar heat-scale selector cannot be transported through direction-dependent incompressible strain, as shown on the affine local NS model u=Sx with trace S=0; an anisotropic material selector fixes transport but requires an unweighted deformation-return clock to re-enter the heat-scale/tower carrier; and the same anisotropic selector creates viscous Laplacian commutators and harmonic-pressure conormal traces that are not controlled by the actual tuple without terminal trace AC/no-waste or charged defects. Thus the remaining obstruction is the admissibility/return theorem for the transported full Hodge-Stokes selector, not the skew identity."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-full-hodgestokes-selector-payment-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-loop-carrier-rigidity-noresidue-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Actual-Tuple Selector Admissibility Attack

Date: 2026-06-21

## 0. Live theorem

The target is the producer behind the no-residue route:

```math
\boxed{
\texttt{FullLoopCarrierRigidity.A}
\quad/\quad
\texttt{TransportedFullHodgeStokesSelector.A}.
}
\tag{ATA.1}
```

The actual input is the normalized Navier-Stokes participation tuple

```math
\partial_s u+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{ATA.2}
```

Equivalently, on a selected packet, the retained tuple is

```math
R_{\sigma,P}+N_{\sigma,P}+P_{\sigma,P}+V_{\sigma,P}=L_{\sigma,P},
\qquad
I_{\sigma,P}=0,
\tag{ATA.3}
```

where

```math
R_{\sigma,P}=\chi_{\sigma,P}\partial_su,
\quad
N_{\sigma,P}=\chi_{\sigma,P}(u\cdot\nabla)u,
\quad
P_{\sigma,P}=\chi_{\sigma,P}\nabla p,
\quad
V_{\sigma,P}=-\nu\chi_{\sigma,P}\Delta u.
\tag{ATA.4}
```

The theorem must produce the no-residue inequality

```math
\boxed{
\mathcal C_{\sigma}^{full,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+T_\sigma
+R_{\rm legal}(\sigma),
}
\tag{ATA.5}
```

with

```math
T_\sigma,\ R_{\rm legal}\in L^1_\sigma,
\qquad
\inf_{\sigma\ge\sigma_0}\Phi_\sigma>-\infty,
\tag{ATA.6}
```

and without the source-square remainder

```math
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{ATA.7}
```

## 1. Exact selected-energy identity

Let \(G_\sigma(s)\) be the self-adjoint selected velocity metric for the
retained carrier, and define

```math
E_{G}(\sigma,s)
=
{1\over2}\langle G_\sigma u,u\rangle .
\tag{ATA.8}
```

Differentiate in normalized time \(s\) and insert `(ATA.2)`:

```math
{d\over ds}E_G
=
{1\over2}\langle(\partial_sG_\sigma)u,u\rangle
-\langle G_\sigma(u\cdot\nabla u),u\rangle
-\langle G_\sigma\nabla p,u\rangle
+\nu\langle G_\sigma\Delta u,u\rangle .
\tag{ATA.9}
```

Write \(L=u\cdot\nabla\).  In the closed localized pairing, the boundary/cutoff
terms are kept in the packet and incompressibility gives the skew identity

```math
\langle G_\sigma Lu,u\rangle
=
-{1\over2}\langle[L,G_\sigma]u,u\rangle .
\tag{ATA.10}
```

Thus the exact selected-energy identity is

```math
{d\over ds}E_G
=
{1\over2}\langle(\partial_sG_\sigma+[L,G_\sigma])u,u\rangle
-\langle G_\sigma\nabla p,u\rangle
+\nu\langle G_\sigma\Delta u,u\rangle
+\mathcal B_\sigma^{cut}.
\tag{ATA.11}
```

This is the true algebraic starting point.  The transport skew part is solved.
The no-residue theorem needs a full selector identity of the form

```math
\boxed{
\partial_sG_\sigma+[L,G_\sigma]
\mathcal P_\sigma
\mathcal V_\sigma
\mathcal I_\sigma
\mathcal B_\sigma
\mathcal S_\sigma
\mathcal G_\sigma^{geo}
=
\partial_\sigma K_\sigma+R_\sigma,
}
\tag{ATA.12}
```

where pairing `(ATA.12)` with \(u\) converts pressure, viscosity,
incompressibility, cutoff, signed, and geometry channels into the
\(\sigma\)-capacity

```math
\Phi_\sigma={1\over2}\langle K_\sigma u,u\rangle
\tag{ATA.13}
```

plus a remainder satisfying `(ATA.6)`.

If `(ATA.12)` and `(ATA.6)` are available, then `(ATA.5)` follows.  This is a
proof, but it is conditional on selector admissibility.

## 2. Scalar heat-scale transport is algebraically impossible

The first attempt is a scalar heat-scale selector

```math
g_\sigma(s,x,\xi)
=
\gamma(\log|\xi|-\sigma(s)).
\tag{ATA.14}
```

The cotangent material derivative for \(L=u\cdot\nabla\) is

```math
D_s^c
=
\partial_s
+u\cdot\nabla_x
-(\nabla u)^T\xi\cdot\nabla_\xi .
\tag{ATA.15}
```

Hence

```math
D_s^c\log|\xi|
=
-\hat\xi\cdot S\hat\xi,
\qquad
S={1\over2}(\nabla u+\nabla u^T),
\tag{ATA.16}
```

and

```math
D_s^cg_\sigma
=
\gamma'(\log|\xi|-\sigma)
\big(-\hat\xi\cdot S\hat\xi-\sigma_s\big).
\tag{ATA.17}
```

This cannot be killed by one scalar scale speed \(\sigma_s\) on a genuine
packet.  The obstruction is exact even on a smooth local Navier-Stokes model.
Take

```math
u(x)=Sx,
\qquad
S=\operatorname{diag}(a,-a,0),
\qquad
p(x)=-{1\over2}x\cdot S^2x .
\tag{ATA.18}
```

Then

```math
\nabla\cdot u=\operatorname{tr}S=0,
\qquad
\Delta u=0,
\qquad
(u\cdot\nabla)u=S^2x,
\qquad
\nabla p=-S^2x,
\tag{ATA.19}
```

so `(ATA.18)` solves stationary Navier-Stokes locally.

For directions \(\hat\xi=e_1\) and \(\hat\xi=e_2\),

```math
-\hat\xi\cdot S\hat\xi
=
-a
\quad\text{and}\quad
a.
\tag{ATA.20}
```

Therefore, for every scalar \(\sigma_s\),

```math
\max_{\hat\xi\in\{e_1,e_2\}}
\left|
-\hat\xi\cdot S\hat\xi-\sigma_s
\right|
\ge
|a|.
\tag{ATA.21}
```

So a scalar heat-scale selector cannot satisfy

```math
D_s^cg_\sigma=\partial_\sigma k_\sigma+r_\sigma
\tag{ATA.22}
```

with \(r_\sigma\) summable or absorbable uniformly on a packet containing both
directions unless the selected strain is directionally degenerate.  Keeping
the scalar selector fixed recreates the active-strain/source-square residue.
Moving it anisotropically leaves the scalar heat-scale carrier.

Thus:

```math
\boxed{
\text{scalar heat-scale selector}
\not\Rightarrow
\text{TransportedFullHodgeStokesSelector.A}.
}
\tag{ATA.23}
```

## 3. Anisotropic material transport fixes only the transport term

The natural repair is to transport an anisotropic metric.  Let \(X(s,a)\) be
the material map,

```math
{d\over ds}X(s,a)=u(s,X(s,a)),
\qquad
F(s,a)=D_aX(s,a).
\tag{ATA.24}
```

Then

```math
\partial_sF=(\nabla u)(X(s,a),s)F,
\qquad
A=F^{-1},
\qquad
\partial_sA=-A(\nabla u)(X(s,a),s).
\tag{ATA.25}
```

The cotangent metric transported by \(A\) satisfies

```math
G_{mat}=A A^T,
\qquad
\partial_sG_{mat}
=
-A(\nabla u+\nabla u^T)A^T
=
-2ASA^T.
\tag{ATA.26}
```

This is exactly the anisotropic replacement for the direction-dependent term in
`(ATA.17)`.  It removes the principal transport commutator.

But the selected carrier is a heat-scale/tower carrier.  To return the
anisotropic material metric to a uniform heat-scale packet, one needs a
condition-number bound.  From `(ATA.26)`,

```math
{d\over ds}\log |\!A^T\zeta\!|
=
-\left\langle
S\,{A^T\zeta\over |A^T\zeta|},
{A^T\zeta\over |A^T\zeta|}
\right\rangle ,
\tag{ATA.27}
```

so

```math
e^{-2\Gamma(s_0,s)}|\zeta|^2
\le
\zeta^TG_{mat}(s)\zeta
\le
e^{2\Gamma(s_0,s)}|\zeta|^2,
\qquad
\Gamma(s_0,s)=\int_{s_0}^s\|S(\tau)\|_{L^\infty(X(\tau,A_0))}\,d\tau.
\tag{ATA.28}
```

Therefore same-carrier heat-scale return requires an unweighted deformation
clock:

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{\rm geom}(\sigma)\,d\sigma<\infty
}
\tag{ATA.29}
```

or a charged Body-IV geometry defect.  This is the missing unweighted reserve
in geometric form.  It is not produced by `(ATA.2)` alone.

Thus anisotropic transport proves only:

```math
\boxed{
\text{transport commutator can be moved into material metric motion;}
}
\tag{ATA.30}
```

it does not prove:

```math
\boxed{
\text{material metric returns to the selected heat-scale/tower carrier.}
}
\tag{ATA.31}
```

## 4. Viscosity creates an admissibility condition

For a moving selector metric \(G_\sigma\), the viscous channel in `(ATA.11)` is

```math
\nu\langle G_\sigma\Delta u,u\rangle .
\tag{ATA.32}
```

Integrating by parts gives the exact decomposition

```math
\nu\langle G_\sigma\Delta u,u\rangle
=
-\nu\sum_j\langle G_\sigma\partial_j u,\partial_j u\rangle
-\nu\sum_j\langle[\partial_j,G_\sigma]u,\partial_j u\rangle
+\mathcal B_\sigma^{\nu,cut}.
\tag{ATA.33}
```

The first term is dissipative if \(G_\sigma\ge0\).  The second term is the
viscous selector-Laplacian commutator.  For a pseudodifferential selector with
principal symbol \(g_\sigma(x,\xi)\),

```math
\sigma_{\rm pr}\big([\Delta,\operatorname{Op}(g_\sigma)]\big)
=
2i\,\xi\cdot\nabla_x g_\sigma .
\tag{ATA.34}
```

The standard absorption gives

```math
\nu\left|
\sum_j\langle[\partial_j,G_\sigma]u,\partial_j u\rangle
\right|
\le
\varepsilon\nu D_\sigma
+
C_\varepsilon\nu
\int
{|\nabla_x g_\sigma|^2\over g_\sigma}\,|u|^2
+\text{lower/cutoff terms}.
\tag{ATA.35}
```

The last integral is exactly a new residual unless the transported selector has
same-carrier symbol regularity strong enough to turn it into
\(-\partial_\sigma\Phi_\sigma+L^1_\sigma+R_{\rm legal}\).

For the material metric, differentiating `(ATA.26)` in \(x\) shows why this is
not automatic:

```math
D_s(\nabla_xG_{mat})
=
-2\nabla_x(ASA^T)
+\text{transport-frame terms},
\tag{ATA.36}
```

and the right side contains \(\nabla_xS\), hence second spatial derivatives of
the velocity.  The base participation tuple controls the coupled equation, but
it does not by itself give the unweighted same-carrier bound needed to make
`(ATA.35)` disappear without the square-source residue.

Thus viscosity gives the exact admissibility condition:

```math
\boxed{
C_\varepsilon\nu
\int
{|\nabla_x g_\sigma|^2\over g_\sigma}\,|u|^2
\le
-\partial_\sigma\Phi_\sigma^\nu
+T_\sigma^\nu
+R_{\rm legal}^\nu(\sigma),
}
\tag{ATA.37}
```

with \(T_\sigma^\nu\in L^1_\sigma\).  This is not a consequence of `(ATA.2)`;
it is one of the missing return/no-waste hypotheses.

## 5. Pressure creates a nonlocal trace condition

The pressure term in `(ATA.11)` is

```math
-\langle G_\sigma\nabla p,u\rangle .
\tag{ATA.38}
```

Using \(\nabla\cdot u=0\),

```math
-\langle G_\sigma\nabla p,u\rangle
=
\langle p,\nabla\cdot(G_\sigma u)\rangle
+\mathcal B_\sigma^{p,cut}
=
\langle p,[\nabla\cdot,G_\sigma]u\rangle
+\mathcal B_\sigma^{p,cut}.
\tag{ATA.39}
```

The local pressure source is tied to the carrier by

```math
-\Delta p^{loc}
=
\partial_i\partial_j(\zeta u_i u_j),
\tag{ATA.40}
```

and after strong same-carrier transport-product convergence this local part
passes through Calderon-Zygmund.  The remaining pressure part is harmonic on
the packet interior:

```math
p=p^{loc}+H,
\qquad
\Delta H=0\text{ on the retained interior}.
\tag{ATA.41}
```

Its conormal trace is

```math
\langle H,[\nabla\cdot,G_\sigma]u\rangle
+\mathcal B_\sigma^{H,cut}.
\tag{ATA.42}
```

The actual tuple `(ATA.3)` records this term, but it does not force it to be a
\(\sigma\)-capacity derivative or \(L^1_\sigma\) tail.  The harmonic pressure is
set by exterior/collar data and gauge choices.  Therefore the pressure
admissibility condition is

```math
\boxed{
\langle H,[\nabla\cdot,G_\sigma]u\rangle
+\mathcal B_\sigma^{H,cut}
\le
-\partial_\sigma\Phi_\sigma^p
+T_\sigma^p
+R_{\rm legal}^p(\sigma),
}
\tag{ATA.43}
```

with \(T_\sigma^p\in L^1_\sigma\).  This is terminal trace/collar no-waste, not
a consequence of local Calderon-Zygmund pressure recovery alone.

## 6. Direct attack result

The direct attack from the actual participation tuple gives the exact
conditional theorem:

```math
\boxed{
(ATA.12)
+
(ATA.6)
\Longrightarrow
\texttt{ParticipationPreservingNoResidueFullCycle.A}.
}
\tag{ATA.44}
```

The attempt to prove `(ATA.12)`--`(ATA.6)` from `(ATA.2)` fails at the following
explicit system:

```math
\boxed{
\begin{aligned}
D_s^cg_\sigma
&=\partial_\sigma k_\sigma+r_\sigma,
\\
\int_{\sigma_0}^{\infty}A_{\rm geom}(\sigma)\,d\sigma
&<\infty
\quad\text{or charged Body-IV defect},
\\
C_\varepsilon\nu
\int {|\nabla_x g_\sigma|^2\over g_\sigma}|u|^2
&\le
-\partial_\sigma\Phi_\sigma^\nu+L^1_\sigma+R_{\rm legal}^\nu,
\\
\langle H,[\nabla\cdot,G_\sigma]u\rangle+\mathcal B_\sigma^{H,cut}
&\le
-\partial_\sigma\Phi_\sigma^p+L^1_\sigma+R_{\rm legal}^p .
\end{aligned}
}
\tag{ATA.45}
```

The first line cannot hold for scalar heat-scale selectors on a genuine
anisotropic strain packet, by `(ATA.18)`--`(ATA.21)`.  The anisotropic material
repair makes the first line plausible, but then the second, third, and fourth
lines become the true admissibility and return requirements.

Therefore the theorem is not proved by this pass.  The exact obstruction is:

```math
\boxed{
\text{the actual NS tuple preserves participation, but it does not by itself
produce a transported selector that remains an admissible same heat-scale
carrier with viscous commutator and harmonic-pressure trace paid in
unweighted } \sigma\text{-time.}
}
\tag{ATA.46}
```

Equivalently,

```math
\boxed{
\texttt{TransportedFullHodgeStokesSelector.A}
\Longleftrightarrow
\text{anisotropic transported metric}
+
\text{same-carrier heat-scale return}
+
\text{viscous metric admissibility}
+
\text{harmonic pressure trace admissibility}
+
\text{signed/selector no-loss}.
}
\tag{ATA.47}
```

The transport skew identity is solved.  The remaining wall is the admissibility
and return of the transported full selector, which is the same unweighted
four-body no-waste/terminal-trace problem expressed at the operator level.
