# GraphCompatibleFullClockEntropyAttempt.A

Status: graph-compatible clock replacement installed; pressure/collar lobe obstruction removed; free-material recirculation separated from one-way no-free-upcrossing.

## 0. Graph-compatible clock

After the pressure/collar Schur replacement, the candidate final clock is

```math
d\Omega_N^{PLS,graph}
=
d\Omega_N^{free\ material}
+d\Omega_N^{rel.defect}
+d\Omega_N^{recirc,finite}.
\tag{GFE.1}
```

The old pointwise pressure/collar lobe clock is not included.  Pressure/collar record growth is read from

```math
Z_N=\Gamma_N(Y_N)+W_N,
```

where \(\Gamma_N(Y_N)\) is the elliptic/collar graph driven by free material variables and \(W_N\) is the relative Schur defect.

## 1. Pressure/collar sector

The Schur-complement storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2
```

pays the relative-defect orientation.  If

```math
\|W_N\|_{pc,N}^2
\le
C_N(u_0)+\text{paid lower-rank/top-strain/viscous/annular/legal terms},
\tag{GFE.2}
```

then the pressure/collar sector is closed for the graph-compatible clock.  In the global torus case the pressure graph is exact after gauge choice; localized harmonic/collar memory must be retained as part of the same interface record.  Thus `(GFE.2)` is plausible as a lower-rank/interface theorem, but it is still a theorem and is not discharged here.

## 2. Coefficient/frame and top-strain sector

Installed surfaces prove that coefficient-frame motion is not an independent producer:

```math
\dot G=-2ASA^\top,
\qquad
\|G^{-1/2}\dot G G^{-1/2}\|_{op}\le 4\lambda_+(S).
```

Thus coefficient/frame superheat is paid by the signed top-strain log storage

```math
B_j=e_j\left[\log {\lambda_+\over \delta 2^{2j}}\right]_+.
```

The signed strain-log recombination pays the selected top-strain acceleration coordinate without splitting pressure Hessian, vorticity, viscosity, and shell interface into artificial independent positive residues.

## 3. Annular and collar base sector

The annular stress-work sector has bounded-below storage \(-M_\phi\).  The base transported-collar sector is frame/strain service because

```math
D_t\phi=0,
\qquad
D_t\nabla_x\phi=-(\nabla_xu)^\top\nabla_x\phi .
```

Higher pressure/collar tower components are handled by the graph-compatible pressure/collar replacement above.

## 4. Remaining free-material branch after recirculation separation

After removing pressure/collar lobe overcount, coefficient-frame superheat, selected top-strain superheat, annular stress-work, and wrong-sign recirculation, the remaining hard producer is the rectified positive variation of the free material participation-law--strain interface:

```math
\operatorname{Var}^+_{(0,T^*)}(m^{PLS,free})
=
\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+\,dt .
\tag{GFE.3}
```

The exact weighted shell identity is

```math
{d\over dt}E_w(t)+\nu D_w(t)=m_w^{PLS}(t),
```

hence

```math
d(-E_w)+[m_w^{PLS}]_+dt
=
\nu D_wdt+[-m_w^{PLS}]_+dt .
\tag{GFE.4}
```

This shows the obstruction precisely: positive variation is controlled only if the negative side / rectified exchange is controlled.  Same-fluid donor symmetry gives signed cancellation, but not rectified BV.  The two-shell alternating-transfer model still applies to the free material shell interface.

After the later recirculation closure, this sentence should be read only as
the algebraic warning about signed cancellation.  The oscillatory two-shell
branch itself is not the remaining live branch: bounded-record cycles,
subheat accelerated backscatter, superheat recirculation, and top-shell
regeneration have been routed into already-paid participation cost.  What
remains is the non-oscillatory upcrossing branch, namely one-way growth of the
continuation-depth free material record.

## 5. Verdict

The graph-compatible pressure/collar replacement removes the pressure positive-part CZ obstruction from the continuation readout.  It does not by itself prove the full graph-compatible PLS clock finite.

The final remaining theorem is now sharply the no-free-upcrossing form:

```math
\boxed{
\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+dt
\le
C_N(u_0)+\text{viscous/top-strain/annular/legal finite terms}.
}
\tag{GFE.5}
```

plus the relative Schur-defect lower-rank estimate `(GFE.2)`.  Without `(GFE.5)`, the graph-compatible full-clock entropy is not closed.

Equivalently, after the recirculation branch has been spent, prove a strict
absorption / available-entropy line

```math
d\mathscr A_N^{graph}
+c_Nd\Omega_N^{PLS,graph}
\le dR_N^{legal},
\qquad
\mathscr A_N^{graph}\ge -C_N(u_0),
\tag{GFE.6}
```

or a one-way material-record growth estimate with a genuine coefficient
\(\theta<1\) after all already-paid PLS coordinates are removed.  The
graph-compatible replacement removes the pressure-lobe bridge from the
continuation theorem; it does not by itself construct `(GFE.6)`.
