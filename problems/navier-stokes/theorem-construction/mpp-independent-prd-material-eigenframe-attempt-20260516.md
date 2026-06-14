# MPP Independent PRD Material-Eigenframe Attempt

Date: 2026-05-16

Status: fresh direct proof attempt; one-dimensional turnover/residence
dichotomy proved; PDE closure still fails at the near-band material
pressure/source-current term.

Purpose: try to prove `IndependentPositiveRemainderDepletion.A` directly from
the localized Navier--Stokes packet equations, not by importing
`ScaleCriticalTreeCarleson.A`, `LocalPositiveSourceCarleson.A`,
`TemporalNonAtomicSource.A`, `TerminalWeightedNoFreeSink.A`, or
`ZenoSourceResidueRigidity.A`.

## 0. Target

For a retained terminal same-fluid packet family `\mathcal F_N`, the positive
source carrier is

```math
D_N(\mathcal F_N)
:=
\sum_{P\in\mathcal F_N}
\int_{I_P}
E_P(t)\,[\sigma_P(t)]_+\,dt,
\tag{MEF.1}
```

where

```math
E_P(t):=\int_{B_P(t)} |w_{j_P}|^2,
\qquad
\sigma_P(t):=
n_P(t)\cdot S^{loc}_{<j_P}(X_P(t),t)n_P(t).
\tag{MEF.2}
```

Here `n_P` is the transported high-vorticity direction and
`tau_P:=(\nu2^{2j_P})^{-1}` is the heat time.

The hoped-for direct theorem is

```math
\boxed{
D_N(\mathcal F_N)
\le
\mathrm{Legal}_{N}(\mathcal F_N)+o_N(1),
}
\tag{MEF.3}
```

with the legal side independent of the source-wall Carleson estimate and
independent of Zeno residue rigidity.

## 1. The fresh mechanism

The source coefficient is a scalar readout of the material strain eigenframe.
On each heat window, a large contribution from `E_P[\sigma_P]_+` has only two
calculus shapes:

1. `\sigma_P` stays above `\eta\tau_P^{-1}` for a real subwindow; this is
   source residence.
2. `\sigma_P` enters and leaves the positive region quickly; this is
   eigenframe/strain turnover and costs material variation.

The elementary form is:

```math
\int_{I_P}E_P[\sigma_P]_+\,dt
\le
\eta\tau_P^{-1}\int_{I_P}E_P\,dt
+C\|E_P\|_{L^\infty(I_P)}\,\tau_P
\operatorname{Var}_{I_P}(\sigma_P^{>\eta\tau_P^{-1}})
+C\,\mathsf{Res}_{P,\eta},
\tag{MEF.4}
```

where `\mathsf{Res}_{P,\eta}` is the part carried by connected subintervals on
which `\sigma_P>\eta\tau_P^{-1}` for a fixed fraction of `\tau_P`.

This is just a one-dimensional covering lemma: if the superlevel set
`\{\sigma_P>\eta\tau_P^{-1}\}` has no heat-scale subinterval, every positive
excursion must cross the threshold, and the sum of the excursion heights is
controlled by total variation.  If it does have such a subinterval, the source
has temporal residence.

Thus the proposed proof splits the bill into

```text
small threshold
+ material eigenframe turnover
+ source residence.
```

The small threshold term is absorbed by taking `\eta` small relative to the
terminal normalization.  The two serious terms are turnover and residence.

## 2. Material derivative of the coefficient

Along the packet path,

```math
D_t\sigma_P
=
n_P\cdot D_tS^{loc}_{<j_P}n_P
+2(D_tn_P)\cdot S^{loc}_{<j_P}n_P
+\mathrm{PathComm}_P.
\tag{MEF.5}
```

The strain equation gives

```math
D_tS^{loc}_{<j}
=
\nu\Delta S^{loc}_{<j}
-P^{loc}_{<j}(S^2+\Omega^2+\nabla^2p)
+\mathrm{Comm}^{flow/cut}_{<j}.
\tag{MEF.6}
```

Split

```math
S^{loc}_{<j}=S^{far}_{j,L}+S^{near}_{j,L},
\qquad
S^{far}_{j,L}:=\sum_{m\le j-L}S_m^{loc},
\quad
S^{near}_{j,L}:=\sum_{j-L<m<j}S_m^{loc}.
\tag{MEF.7}
```

The far-low term has a real gain:

```math
\tau_P\int_{I_P}|D_tS^{far}_{j_P,L}|\,dt
\le
C_{\mathrm{far}}
2^{-2L}\int_{I_P}\|S^{far}_{j_P,L}\|_\infty\,dt
+\mathrm{legal\ commutators}.
\tag{MEF.8}
```

This part is not the wall.  Very low strain cannot oscillate at the high packet
heat rate without the `2^{-2L}` penalty.

## 3. Near-band turnover is the first obstruction

For the near band there is no heat-scale gain:

```math
c_{\mathrm{near}}
\le
\tau_P\nu2^{2m}
\le
C_{\mathrm{near}}
\qquad (|m-j_P|\le C_L).
\tag{MEF.9}
```

The turnover term therefore contains

```math
\sum_P
\|E_P\|_{L^\infty(I_P)}\tau_P
\int_{I_P}
\left|
n_P\cdot
P^{loc}_{j_P,L}(S^2+\Omega^2+\nabla^2p)
n_P
\right|\,dt
\tag{MEF.10}
```

plus the frame-rotation piece

```math
\sum_P
\|E_P\|_{L^\infty(I_P)}\tau_P
\int_{I_P}
|D_tn_P|\,\|S^{near}_{j_P,L}\|\,dt.
\tag{MEF.11}
```

The frame part has a plausible geometric interpretation: a packet rotating
into an expanding eigendirection should spend alignment cost.  The direct
equation gives

```math
D_tn_P
=
(I-n_P\otimes n_P)S^{loc}_{<j_P}n_P
+\mathrm{FrameComm}_P.
\tag{MEF.12}
```

This identifies a genuine turnover charge, but it does not by itself prove
that the charge is legal.  It still needs a theorem saying that terminal
rotation into the expanding strain direction cannot be free.

## 4. Why absolute pressure/source control loops

A direct Calderon--Zygmund/Bernstein bound on `(MEF.10)` gives

```math
\|P^{loc}_{j,L}(S^2+\Omega^2+\nabla^2p)\|_\infty
\le
C_{\mathrm{CZ}}
\|\nabla u\|_\infty^2
\tag{MEF.13}
```

or the corresponding finite-band low-near and near-high products.  Tested
against `E_P\tau_P`, this is scale-critical on terminal packets:

```math
E_P\tau_P\|\nabla u\|_\infty^2.
\tag{MEF.14}
```

That is not lower than the source wall.  It is an absolute positive active
coefficient estimate.

The local algebra has no sign rescue.  A trace-free strain can have an
expanding direction aligned with vorticity, for example the local jet

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
\omega\parallel e_1,
\qquad
e_1\cdot Se_1=2>0.
\tag{MEF.15}
```

The incompressibility constraint fixes the trace, not the sign of the selected
quadratic readout.  The anisotropic part of `\nabla^2p` is also not signed in
the selected direction.

## 5. Why integration by parts loops

The other possible direct move is to keep the sign and integrate the material
coefficient by parts:

```math
\int_{I_P}E_P\,D_tb_P\,dt
=
[E_Pb_P]_{\partial I_P}
-\int_{I_P}(D_tE_P)b_P\,dt,
\tag{MEF.16}
```

where `b_P` is a near-band scalar strain/source readout.  But the packet
energy balance has the native form

```math
D_tE_P
=
2\sigma_PE_P
-c\tau_P^{-1}E_P
+Source_P^{loc}
+Legal_P.
\tag{MEF.17}
```

Substituting `(MEF.17)` into `(MEF.16)` gives

```math
-2\int_{I_P}\sigma_PE_Pb_P\,dt
-\int_{I_P}Source_P^{loc}b_P\,dt
+\mathrm{endpoint/heat/legal}.
\tag{MEF.18}
```

The first term is active eigenframe alignment.  The second is the signed
source-current with one-sided terminal weights.  Positive terminal selection
removes the cancellation that exists in the unweighted closed dyadic exchange.

So integration by parts does not remove the wall.  It moves the wall from
`D_t\sigma_P` to the same selected source-current.

## 6. What this attempt actually proves

The non-installed material-eigenframe route proves the following reduction.

```math
\boxed{
\begin{aligned}
&TerminalEigenframeTurnoverCharge.A\\
&\quad+
TerminalSourceResidenceEvacuation.A\\
&\Longrightarrow
IndependentPositiveRemainderDepletion.A.
\end{aligned}
}
\tag{MEF.19}
```

Here:

```text
TerminalEigenframeTurnoverCharge.A
```

means the near-band material variation and frame-rotation terms in
`(MEF.10)`--`(MEF.11)` are paid by legal packet ledgers, without using the
source-wall Carleson estimate or Zeno residue rigidity.

```text
TerminalSourceResidenceEvacuation.A
```

means any heat-scale subwindow on which a selected terminal packet keeps
`\sigma_P>\eta\tau_P^{-1}` either spends legal drain/donor reserve or cannot
persist to the terminal residue limit.

The proof of `(MEF.19)` is `(MEF.4)` plus the far/near split `(MEF.7)`.
Far-low turnover is absorbed by `(MEF.8)`.  Near-band turnover is exactly
`TerminalEigenframeTurnoverCharge.A`.  Heat-scale positive residence is exactly
`TerminalSourceResidenceEvacuation.A`.  Summing over bounded-overlap terminal
families gives the desired source bill.

## 7. Verdict

This route is a real new attack shape, but it does not close the source wall
unconditionally.

The fresh obstruction is sharper than "prove the installed input":

```text
prove a one-sided material strain BV/source-current estimate for terminal
near-band packets.
```

In theorem labels introduced by this attempt, the missing atom is

```math
\boxed{
TerminalEigenframeTurnoverCharge.A
\quad\text{or}\quad
TerminalSourceResidenceEvacuation.A.
}
```

If either atom is proved directly from the Navier--Stokes packet equations and
original smooth data, then `IndependentPositiveRemainderDepletion.A` follows
without importing `ScaleCriticalTreeCarleson.A` or the existing Zeno rigidity
branch.

The obstruction exposed by the computation is the pressure/source-current
term `(MEF.10)` after positive terminal selection.  Absolute estimates return
to a scale-critical active coefficient bound, and signed integration by parts
returns to the one-sided terminal source-current `(MEF.18)`.

The turnover atom is tested directly in
`mpp-terminal-eigenframe-turnover-charge-direct-attempt-20260517.md`.  That
attempt reduces it further to one-sided near-band material strain BV, with the
pressure-Hessian sustain term as the sharp obstruction.
