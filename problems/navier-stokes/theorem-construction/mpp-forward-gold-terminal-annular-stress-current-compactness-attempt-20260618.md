# TerminalAnnularStressCurrentCompactness.A Stress-Current Balance Attempt

Date: 2026-06-18

Status: conditional compactness theorem only.  The installed Navier-Stokes
compactness package does not prove the required moving-current trace passage.
This sharpens the Door 1 blocker; it does not close Door 1.

Role: audit the stress-current balance suggested by the terminal annular flux

```math
\Phi_n
\simeq
\int_{T_n}
\bigl(u_n\otimes u_n+p_nI-\nu\nabla u_n\bigr)n_n\,d\mu_n .
\tag{TASC.1}
```

The point is not to reprove finite vector selection.  The finite vector stress
residue is already available in the Door 1 packet.  The question here is
whether the current/varifold framework passes the stress flux through the
terminal limit without losing it into oscillation, frame curvature,
boundary/cutoff terms, or endpoint trace concentration.

## Conditional theorem

Let

```math
\Sigma_n:=u_n\otimes u_n+p_nI-\nu\nabla u_n
\tag{TASC.2}
```

and let `T_n` be the selected oriented annular current with mass measure
`\mu_n` and normal `n_n`.  For each fixed vector `\ell`, define

```math
\Phi_n(\ell)
:=
\int_{T_n}\ell\cdot\Sigma_n n_n\,d\mu_n .
\tag{TASC.3}
```

A subsequential limit and honest stress-current split follow under the
following extra hypotheses.

1. Oriented current compactness.  The vector measures `n_n\mu_n` are locally
tight and converge to `n_\ast\mu_\ast`, the masses have no hidden collar loss,
the boundary currents either converge or have vanishing/legal mass, and the
moving frames/cutoffs have a controlled first-variation limit.

2. Stress normal-trace compactness.  The normal traces of
`\Sigma_n` on `T_n` exist and the vector measures
`(\Sigma_n n_n)\mu_n` have locally bounded total variation.  Equivalently, the
surface traces satisfy a compactness package strong enough to pass
`u_n\otimes u_n`, `p_nI`, and `\nabla u_n` against the moving singular measures
`n_n\mu_n`.

3. Surface product control.  Either

```math
u_n|_{T_n}\to u_\ast|_{T_\ast}
\quad\text{strongly in }L^2(d\mu_n),
\tag{TASC.4}
```

or the lost product is retained as an explicit surface Reynolds defect.

4. Pressure and viscous conormal trace control.  The measures

```math
p_n\,n_n\mu_n,
\qquad
(\nabla u_n)n_n\mu_n
\tag{TASC.5}
```

converge after subtracting the accepted pressure gauges.  Weak bulk
`L^{3/2}` pressure convergence and weak bulk `L^2` gradient convergence are
not enough to pair with moving codimension-one annular currents.

5. Terminal trace compactness or a terminal anti-atom modulus.  The endpoint
time face must satisfy strong trace convergence, or a modulus such as

```math
\mu_n^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_n(1),
\qquad
\omega_R(\varepsilon)\downarrow0,
\tag{TASC.6}
```

or an equivalent reverse-Holder/super-`L^1_t` native-source estimate.  Without
this, a terminal trace measure can survive while spacetime compactness holds.

Under those hypotheses, after a subsequence,

```math
\Phi_n(\ell)\to\Phi_\ast(\ell)
\tag{TASC.7}
```

and the limit has the decomposition

```math
\begin{aligned}
\Phi_\ast(\ell)
&=
\int_{T_\ast}
\ell\cdot
\bigl(u_\ast\otimes u_\ast+p_\ast I-\nu\nabla u_\ast\bigr)n_\ast
\,d\mu_\ast\\
&\quad
+D_{\mathrm{osc}}(\ell)
+D_{\mathrm{tr}}^{p,\nabla u}(\ell)
+D_{\mathrm{curv/frame}}(\ell)
+D_{\mathrm{bd/cut}}(\ell).
\end{aligned}
\tag{TASC.8}
```

Here `D_osc` is the surface product/Reynolds defect, `D_tr^{p,\nabla u}` is the
pressure and viscous conormal trace defect, `D_curv/frame` is the defect created
by moving frames, normals, and current first variation, and `D_bd/cut` is the
boundary, collar, time-face, and cutoff leakage.

If all four defect terms are legal or vanish, then the annular stress flux
passes to the native limit stress current.

## Proof attempt

For smooth approximants and smooth annular cutoffs `\chi_n` whose gradients
represent the oriented annular current, the flux can be written as

```math
\Phi_n(\ell)
=
-\int \Sigma_n:\nabla(\chi_n\ell)
+B_n(\ell),
\tag{TASC.9}
```

where `B_n` contains the boundary and cutoff faces not represented by the
chosen current.  This is the same distributional stress computation that gives
the vector point-force residue when the annulus collapses.

The conditional compactness proof is then a measure compactness argument.
The trace bound on `(\Sigma_n n_n)\mu_n` gives a weak-* convergent subsequence.
Adding and subtracting the limit stress on the limit current splits the
subsequence limit into the native limit stress current plus the four defect
classes in `(TASC.8)`.

The quadratic term passes without `D_osc` only with strong surface-trace
convergence.  Bulk strong `L^2_{loc}` convergence is enough for fixed smooth
test functions, but the sequence `\nabla\chi_n` is a moving singular annular
test.  A concentration can be invisible to the bulk distributional passage and
visible to `T_n`.

The pressure and viscous terms require their own normal trace compactness.
The pressure is only a bulk `L^{3/2}` object in the installed compactness
package, and `\nabla u_n` is only weak bulk `L^2`.  Neither has a stable
restriction to a moving codimension-one current without extra trace theory.

The frame/current terms are also real.  Passing from a cutoff annulus to a
varifold/current limit introduces first-variation, curvature, changing-normal,
and chart-frame terms.  These are legal only after a uniform geometry and
boundary/collar ledger has made their total contribution vanish or land in an
already paid defect channel.

Thus `(TASC.8)` is the best conditional balance available from this route.

## Installed-input audit

The installed compactness surfaces give, on fixed backward cylinders, local
suitable compactness:

```math
u_n\to u_\ast \text{ strongly in }L^2_{loc},
\qquad
\nabla u_n\rightharpoonup\nabla u_\ast \text{ weakly in }L^2_{loc},
\qquad
p_n\rightharpoonup p_\ast \text{ weakly in }L^{3/2}_{loc}.
\tag{TASC.10}
```

They also allow Radon source-residue limits.  This is enough to pass the
Navier-Stokes equation and the quadratic term against fixed smooth compact
tests.  It is not enough to pass the stress against the moving annular current
in `(TASC.1)`.

The missing installed hypotheses are exactly:

```text
MovingStressNormalTrace.A:
  existence and compactness of normal traces of
  (u_n tensor u_n + p_n I - nu grad u_n) on T_n.

SurfaceL2TraceCompactness.A:
  strong L2 trace convergence of u_n on the selected annular currents, or an
  explicit retained surface Reynolds defect.

PressureConormalTraceCompactness.A:
  convergence of p_n n_n mu_n after gauge normalization.

ViscousConormalTraceCompactness.A:
  convergence of (grad u_n)n_n mu_n as a surface measure or conormal trace.

FrameCurvatureLedger.A:
  controlled first variation / curvature / changing-frame contribution for
  the current or varifold limit.

BoundaryCutoffNoLoss.A:
  vanishing or legal routing of annular boundary, collar, time-face, and cutoff
  leakage.

TerminalNativeSourceTraceContinuity.A:
  endpoint trace compactness or a temporal anti-atom / reverse-Holder /
  super-L1_t modulus for the selected native source carrier.
```

The older terminal trace notes show why the last item cannot be skipped:
local Radon compactness admits a terminal measure

```math
d\mu_\ast^{src}(y,s)=\rho(y)\,dy\otimes\delta_{s=0}.
\tag{TASC.11}
```

That measure is exactly the possible time-face trace defect.  A current or
varifold limit can expose it, but does not make it vanish.

## Door 1 consequence

This attempt does not close Door 1.

It proves only the following conditional sharpening:

```math
\begin{aligned}
&\text{MovingStressNormalTrace.A}
+\text{SurfaceL2TraceCompactness.A}
+\text{PressureConormalTraceCompactness.A}\\
&\quad
+\text{ViscousConormalTraceCompactness.A}
+\text{FrameCurvatureLedger.A}
+\text{BoundaryCutoffNoLoss.A}\\
&\Longrightarrow
\text{TerminalAnnularStressCurrentCompactness.A}
\text{ with split }(TASC.8).
\end{aligned}
\tag{TASC.12}
```

Even after `(TASC.12)`, the output is still a vector/signed stress-current
residue.  Door 1 needs the same-family positive native carrier:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[\mathcal N_{preCauchy}^{loc}(u;P)\right]_+
\,dxdt .
\tag{TASC.13}
```

The conversion from the vector stress-current residue to `(TASC.13)` is still
`ProjectedLocalPreCauchyResidueIdentity.A` before minimality, and
`MinimalChainProjectedResidueIdentity.A` after the minimal Zeno donor-chain
reduction.  The stress-current framework can make the lost residue visible; it
does not identify that residue with the selected positive native pre-Cauchy
carrier.

So the stress-current passage sharpens the blocker as:

```math
\boxed{
\text{stress-current trace compactness and defect visibility}
}
\quad+\quad
\boxed{
\text{native positive carrier identification}
}
\tag{TASC.14}
```

The first box is conditional under the hypotheses above.  The second box is the
same Door 1 wall already isolated by the projected local pre-Cauchy and terminal
signed-saturation notes.
