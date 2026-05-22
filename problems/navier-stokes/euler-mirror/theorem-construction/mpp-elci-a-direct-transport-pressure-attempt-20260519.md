# MPP ELCI.A Direct Transport-Pressure Attempt (2026-05-19)

## Status

Theorem-facing bounded attempt for the Euler mirror receiver target `ELCI.A`.

Claim level:

1. proves the Euler-only moving-collar packet inequality once the
   center/oscillation/pressure coefficient ledger is available;
2. identifies the exact remaining supplier theorem and, after the May 21
   scenario map, the required split between regularity-conditional integrability
   and base `Member_E` nonsmooth cases;
3. does not import the parent `2nu` lower-collar sink, `c_nu N` absorption, or
   `ACT.X-TopVisc` readout.

Parent comparison authority:

```text
RSCB.NKF -> NKF.Native -> ACT.KX -> ACT.X-Readout -> ACT.A -> RCF.A -> LCI.A
```

Expanded parent break:

```text
NKF.Native + NKF.Ann + NKF.Quad => ACT.X-Press
ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX
ACT.KX + ACT.X-Scale + RWS.C_scale => ACT.X-Readout
```

## Target

The Euler target is the lower-collar packet from `ELCI.A`:

```math
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)
:=
\sum_{q=0}^{m}\sum_{\alpha=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{\delta}\big)^2
|\nabla^\alpha U_q|^2\,dx.
\tag{ETP.1}
```

The goal is to prove, without viscosity,

```math
\sup_{t\in I}\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)<\infty,
\qquad
\Gamma^{low}_{N,m,\rho,\psi}\in L^1(I).
\tag{ETP.2}
```

The allowed Euler coefficient ledger is

```math
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}(t)
:=
1+
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
+
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
+
\Pi^{E,ctr}_{N,m,\rho,\psi}(t).
\tag{ETP.3}
```

Here `A` is transported-center point control, `Omega` is local oscillation on
the same fixed transported cover, and `Pi` is the centered Euler pressure-return
coefficient defined below.

## Step 1: Euler Moving-Collar Identity

For `Z_{\alpha,q}:=\nabla^\alpha U_q`, the differentiated Euler equation gives

```math
D_t Z_{\alpha,q}
=
\mathcal S_{\alpha,q}^{E}
+
\mathcal R_{\alpha,q}^{E}
-
\nabla^{q+\alpha+1}p.
\tag{ETP.4}
```

Multiplying by `(\vartheta_{\rho,\psi,t}^{\delta})^2 Z_{\alpha,q}`, summing over
`0<=q<=m`, `0<=alpha<=2`, and using the same-fluid transport law for the collar
cutoff gives

```math
\frac{d}{dt}\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)
=
\mathcal P^{E,low}_{N,m}(t)
+
\mathcal F^{E,low,press}_{N,m}(t)
+
\mathcal S^{E,low}_{N,m}(t)
+
\mathcal R^{E,low}_{N,m}(t)
+
\mathcal C^{E,low,trans,\delta}_{N,m}(t).
\tag{ETP.5}
```

This is the parent lower-collar identity with the viscous terms removed. There
is no `2nu D^{low}` term on the left and no viscous localization commutator on
the right.

## Step 2: Nonpressure Terms

Assume the finite transported cover from `ELCI.A`:

```math
\mathcal C_{\rho,\psi}^{\delta}(t)
\subset
\bigcup_{j=1}^{J}B(\Phi(a^j,t),r_\delta).
\tag{ETP.6}
```

Then the geometric readout is

```math
\Gamma^{low}_{N,m,\rho,\psi}(t)
\le
C
\big(
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
+
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
\big).
\tag{ETP.7}
```

The strain and cascade terms are exactly the Euler parts of the parent
`LCI.B2a` argument. In every Leibniz summand one velocity factor has order at
most `m` and is bounded by the lower carrier, while the other differentiated
factor is already inside the packet `G`. Hence

```math
|\mathcal S^{E,low}_{N,m}(t)|
+
|\mathcal R^{E,low}_{N,m}(t)|
\le
C
\big(
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
+
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
\big)
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t).
\tag{ETP.8}
```

The pure transport/cutoff terms are lower-order same-fluid commutators. Their
coefficients are `D_t\vartheta`, `nabla vartheta`, `nabla^2 vartheta`, and the
support-shell carrier. The same finite-cover readout controls that carrier by
`A+Omega`, so

```math
|\mathcal P^{E,low}_{N,m}(t)|
+
|\mathcal C^{E,low,trans,\delta}_{N,m}(t)|
\le
C
\big(
1+\Gamma_\sharp(t)
+
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}(t)
+
\Omega^{E,osc}_{N,m,\rho,\psi}(t)
\big)
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t).
\tag{ETP.9}
```

Thus the nonpressure side closes by transport geometry and oscillation only.

## Step 3: Centered Euler Pressure Return

For each transported center `c_j(t)=\Phi(a^j,t)`, choose a fixed enlarged ball
`B_j^*(t)=B(c_j(t),2R_\delta)` and subtract the finite affine pressure normal
form `p_{j,n}^{aff}` that annihilates the affine and affine-linear center-cell
pressure modes at the derivative depth `n=q+alpha`.

Define the pressure coefficient `Pi_E_ctr` by the inequality

```math
\sum_{j,q,\alpha}
\left\|
\nabla^{q+\alpha+1}
\big(p-p_{j,q+\alpha}^{aff}\big)
\right\|_{L^2(B_j^*(t))}
\le
\Pi^{E,ctr}_{N,m,\rho,\psi}(t)
\big(\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)\big)^{1/2}.
\tag{ETP.10}
```

This definition is deliberately coefficient-shaped. It prevents the proof from
pretending that pressure response itself is damping; pressure must arrive as an
integrable readout coefficient on the same transported cover.

The pressure energy contribution is a finite sum of terms

```math
\int
(\vartheta_{\rho,\psi,t}^{\delta})^2
Z_{\alpha,q}
\cdot
\nabla^{q+\alpha+1}(p-p_{j,q+\alpha}^{aff})\,dx.
\tag{ETP.11}
```

By Cauchy-Schwarz on each finite cover patch and `(ETP.10)`,

```math
|\mathcal F^{E,low,press}_{N,m}(t)|
\le
C
\Pi^{E,ctr}_{N,m,\rho,\psi}(t)
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t).
\tag{ETP.12}
```

The Euler Poisson equation

```math
-\Delta p=\partial_i u_j\,\partial_j u_i
\tag{ETP.13}
```

is compatible with this pressure coefficient: after affine normal-form
subtraction, the local part of the source has one low-order `L^\infty` factor
and one packet `L^2` factor, while annular and far-field pieces are exactly what
`Pi_E_ctr` records. This proves the pressure estimate, but it does not prove
that `Pi_E_ctr` is integrable from weak Euler membership alone.

## Step 4: Packet Inequality

Combining `(ETP.8)`, `(ETP.9)`, and `(ETP.12)` in `(ETP.5)` gives

```math
\frac{d}{dt}
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)
\le
C
\big(
1+\Gamma_\sharp(t)
+
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}(t)
\big)
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t).
\tag{ETP.14}
```

This is the Euler replacement for the parent lower-collar packet inequality.
It uses no `2nu D^{low}` sink, no `c_nu N` absorption, and no top-viscous
readout.

## Step 5: Conditional Gronwall Closure

If

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak L^{E,ctr}_{N,m,\rho,\psi}\in L^1(I),
\qquad
\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t_0)<\infty,
\tag{ETP.15}
```

then Gronwall applied to `(ETP.14)` gives

```math
\sup_{t\in I}\mathcal G^{low,\delta}_{N,m,\rho,\psi}(t)<\infty.
\tag{ETP.16}
```

Together with `(ETP.7)` and `A+Omega in L^1(I)`, this gives

```math
\Gamma^{low}_{N,m,\rho,\psi}\in L^1(I).
\tag{ETP.17}
```

So `ELCI.A` is conditionally closed once the Euler center/oscillation/pressure
ledger is integrable.

## Step 6: Receiver Split Closure

The attempted full completion did not prove
`\mathfrak L^{E,ctr}_{N,m,\rho,\psi}\in L^1(I)` from `Member_E` or from the
current lower packet. The May 22 separation theorem closes that gap exactly.

The obstruction is structural. Bounding `A`, `Omega`, or `Pi` only by the same
lower packet feeds `(ETP.14)` back into itself as a growth inequality without a
dissipative sink. On the parent route, this is precisely where `ACT.KX` used
`c_nu N`, the `eta_X` scheduler, and `ACT.X-TopVisc`. Euler has no replacement
for those terms on the current surface.

The closed split form is:

```math
\boxed{
\mathrm{ELCI.CP.A\text{-}Separation}:
\quad
\mathfrak A^{E,ctr}_{N,m,\rho,\psi}
+
\Omega^{E,osc}_{N,m,\rho,\psi}
+
\Pi^{E,ctr}_{N,m,\rho,\psi}
\in L^1(I)
}
\tag{ETP.18}
```

proved on the same finite transported Euler cover under exact additional
Euler-native regularity hypotheses, together with a base `Member_E` witness
where the ledger is not forced.

Scenario authority:
[euler-ns-viscosity-scenario-separation-map-20260521.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md).

Closure authority:
[mpp-elci-cp-a-separation-closure-20260522.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md).

## Verdict

The six-step `ELCI.A` completion route closes the packet inequality and the
conditional Gronwall theorem. The May 22 closure note closes the missing
independent supplier as a split theorem: honest Euler control assumptions give
the transported-center, oscillation, and centered pressure-return ledger, while
base `Member_E` alone fails to give it. The Euler mirror terminal closure treats
any stronger global regularity claim as a new external theorem program.
