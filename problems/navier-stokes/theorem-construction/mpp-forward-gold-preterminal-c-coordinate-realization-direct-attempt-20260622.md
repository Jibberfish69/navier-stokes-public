---
theorem_id: forward-gold-preterminal-c-coordinate-realization-direct-attempt-20260622
status: direct-attempt-reduces-to-cross-scale-material-compactness-evolution-law-not-installed
logical_landing_node: preterminal_c_coordinate_realization
edge_effect: >-
  Attacks the first concrete construction clause inside
  SimultaneousMaterialFourBodyPacketCoercivity.A: C_N must be a preterminal
  same-packet no-loss coordinate, not an after-limit compactness theorem. The
  attempt constructs the correct same-packet compactness-defect modulus from
  finite-rank tails, spatial translation moduli, and time-translation moduli of
  the full material participation packet. This gives a lower-bounded
  preterminal coordinate and preserves the one-fluid packet. The obstruction is
  exact: differentiating this C_N in the four-body log-scale loop requires a
  cross-scale material compactness evolution law for the rescaled transported
  packets. The within-packet material Navier-Stokes equation supplies
  s-evolution, but it does not by itself supply the sigma-evolution needed for
  dL_C, dX_QC, and dX_CG across nested heat-scale packets.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
---

# Preterminal \(C_N\)-Coordinate Realization Direct Attempt

Date: 2026-06-22

## 0. Target

The simultaneous packet theorem needs \(C_N\) as a live coordinate of the same
transported material packet:

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N).
\tag{PCN.1}
```

The compactness/no-loss coordinate must exist before taking a sequence limit,
because the desired full-packet functional contains

```math
L_C,\qquad X_{QC},\qquad X_{CG},
\tag{PCN.2}
```

and the simultaneous inequality differentiates the whole object.

## 1. Same-packet variable

On one retained transported annular packet, collect the full material
participation record into

```math
Z_N
:=
\left(
D_a^\alpha v,\,
D_a^\alpha q,\,
D_a^\beta A,\,
D_a^\beta G,\,
h_\alpha
\right)_{|\alpha|,|\beta|\le N}.
\tag{PCN.3}
```

Here \(h_\alpha\) is the signed selected participation density generated from
the same pressure-viscosity-incompressibility-velocity tower. This is a
coordinate of the same packet, not a scalar substitute for it.

Let \(\mathcal Q_\sharp\) be the fixed material spacetime packet, with fixed
label-space cutoff. Choose a finite-rank projection \(\Pi_M\) on the material
spacetime packet, and write material space/time translations as

```math
\delta_\xi^a Z(a,s)=Z(a+\xi,s)-Z(a,s),
\qquad
\delta_\tau^s Z(a,s)=Z(a,s+\tau)-Z(a,s).
\tag{PCN.4}
```

## 2. Compactness-defect coordinate

For \(M<\infty\), \(\ell>0\), and \(\delta>0\), define

```math
\begin{aligned}
L_C^{M,\ell,\delta}(\sigma)
:={}&
\sum_{\kappa}
\|(I-\Pi_M)Z_{N,\sigma}^{\kappa}\|_{\mathcal X_\kappa(\mathcal Q_\sharp)}^2\\
&+
\sum_{\kappa}
\sup_{|\xi|\le\ell}
\|\delta_\xi^a Z_{N,\sigma}^{\kappa}\|_{\mathcal X_\kappa(\mathcal Q_\sharp^\xi)}^2\\
&+
\sum_{\kappa}
\sup_{|\tau|\le\delta}
\|\delta_\tau^s Z_{N,\sigma}^{\kappa}\|_{\mathcal Y_\kappa(\mathcal Q_\sharp^\tau)}^2 .
\end{aligned}
\tag{PCN.5}
```

The spaces \(\mathcal X_\kappa\) and \(\mathcal Y_\kappa\) are the same local
velocity, pressure, coefficient, and density spaces used by the packet:
\(L^2\)-type spaces for velocity and coefficient rungs, \(L^{3/2}\)- or
dual-tower spaces for pressure and participation densities.

For fixed \(M,\ell,\delta\), `(PCN.5)` is nonnegative and belongs to the same
material packet. It is therefore a legitimate preterminal candidate for
\(L_C\).

The no-loss meaning is exact:

```math
\lim_{M\to\infty}\lim_{\ell,\delta\downarrow0}
L_C^{M,\ell,\delta}=0
\tag{PCN.6}
```

is precisely the same-packet compactness/no-loss condition for the retained
full participation record \(Z_N\).

## 3. Why this is the correct \(C_N\) object

The Body-II to Body-III interface already says the retained object is the
three-measure participation packet

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N.
\tag{PCN.7}
```

The canonical selected-carrier criterion already says that strong \(L^1\)
convergence of the signed full participation density gives total-variation
convergence of its positive part:

```math
h_n\to h
\text{ in }L^1
\quad\Longrightarrow\quad
[h_n]_+\to[h]_+
\text{ in }L^1.
\tag{PCN.8}
```

Thus the live preterminal compactness coordinate has to control the full
density \(h\), together with the velocity, pressure, coefficient, and geometry
records that define it. `(PCN.5)` does exactly that.

## 4. Differentiating \(C_N\) inside one packet

Inside a fixed material packet, the material equation gives

```math
\partial_s v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0.
\tag{PCN.9}
```

and the differentiated tower gives evolution laws for each component of
\(Z_N\). Therefore, for a fixed packet and fixed \(M,\ell,\delta\),
the \(s\)-variation of `(PCN.5)` is generated by the same metric,
coefficient, pressure, viscous/collar, density, and geometry channels already
appearing in the material-record log-growth identity.

This proves a within-packet statement:

```math
d_s[L_C^{M,\ell,\delta}]_+
\le
C\,d_s\mathcal A_{4B,N}^{ann,M,\ell,\delta}.
\tag{PCN.10}
```

Here the right side is the full same-packet channel measure, restricted to the
same \(M,\ell,\delta\) compactness coordinate.

## 5. The log-scale obstruction

The simultaneous four-body loop is a terminal log-scale loop. It needs

```math
d_\sigma L_C,
\qquad
d_\sigma X_{QC},
\qquad
d_\sigma X_{CG}.
\tag{PCN.11}
```

The within-packet material equation `(PCN.9)` supplies \(s\)-evolution. It does
not by itself supply the evolution of the retained packet record as the
microscope changes:

```math
\sigma\mapsto Z_{N,\sigma}.
\tag{PCN.12}
```

Thus `(PCN.10)` is not enough for the simultaneous symmetrizer. The missing
law is a cross-scale material compactness evolution law:

```math
\boxed{
d_\sigma [L_C^{M,\ell,\delta}]_+
\le
C\,d_\sigma A_{4B,N}^{ann,M,\ell,\delta}
}
\tag{PCN.13}
```

with the same transported material carrier and with no detached compactness
ledger.

This is not a new supplier. It is the exact \(C_N\)-coordinate face of the
same simultaneous material packet.

## 6. Direct attempt result

This attempt realizes the right preterminal \(C_N\) coordinate:

```math
C_N
\equiv
\left\{L_C^{M,\ell,\delta}\right\}_{M,\ell,\delta}.
\tag{PCN.14}
```

It is lower-bounded, same-packet, and has the correct no-loss meaning.

The attempt does not complete the four-body symmetrizer because the installed
material equation differentiates the packet in material time \(s\), while the
four-body terminal reserve needs the coordinate differentiated across
log-scale packets \(\sigma\). The remaining construction clause is therefore:

```math
\boxed{
\texttt{CrossScaleMaterialCompactnessEvolution.A}
}
\tag{PCN.15}
```

with content `(PCN.13)`.

Once `(PCN.15)` is installed, \(C_N\) becomes a genuine simultaneous
four-body coordinate and the next remaining clause is the bounded-below
instantaneous construction of

```math
X_{SQ},\quad X_{QC},\quad X_{CG},\quad X_{GS}.
\tag{PCN.16}
```
