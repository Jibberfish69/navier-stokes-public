---
ns_viewer:
  theorem_id: forward-gold-selected-cross-profile-terminal-strip-modulus-direct-test-20260620
  status: direct-cross-profile-strip-modulus-test-complete-not-proved
  proof_role: forward_gold_supplier_direct_test
  logical_landing_node: selected_cross_profile_terminal_strip_modulus
  edge_effect: "Tests whether the selected cross-profile Pack/source carrier has terminal strip uniform integrability from current inputs. It does not; finite selected L1 mass, strict negative-time profile orthogonality, and two-frame domination still allow an endpoint pulse."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-pack-positive-part-decoupling-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-endpoint-uniform-integrability-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-reverse-holder-production-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-scale-normalized-cross-profile-square-reserve-direct-attempt-20260609.md
  downstream_consequence: "SelectedCrossProfileTerminalStripModulus.A is not an independent closure. It is the cross-profile copy of the selected carrier endpoint UI / terminal heat-scale pulse obstruction unless a same-selector source-square, terminal Morrey, low-high decorrelation, one-profile localization, strict no-waste, or unweighted reserve theorem is installed."
---

# MPP Forward-Gold Selected Cross-Profile Terminal Strip Modulus Direct Test

Date: 2026-06-20

## Status

Direct production test complete; production does not close from current inputs.

The tested theorem is:

```math
\text{SelectedCrossProfileTerminalStripModulus.A}.
\tag{SCPTM.1}
```

It is the same-selector cross-profile version of endpoint uniform
integrability.  Let \(c_m(s)\ge0\) be the selected positive cross-profile
Pack/source density on the normalized terminal interval \((-1,0]\).  The target
is:

```math
\boxed{
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\int_{-\theta}^{0}c_m(s)\,ds
=0.
}
\tag{SCPTM.2}
```

## 1. Why this is the missing cross term

The positive-part decoupling note gives the conditional algebra:

```math
P_{\sigma_m}(u_m)
\le
\sum_\alpha P_{\sigma_m}(U_{\alpha,m})
+ |C_{\sigma_m}^{cross}|
+ |R_{\sigma_m}|.
\tag{SCPTM.3}
```

Ordinary profile orthogonality can remove separated cross terms before terminal
positive selection.  The selected Pack/source carrier is formed after the
terminal window, localization, pressure/Leray projection, scale normalization,
packet choice, and positive-part extraction.  Thus the required input is not raw
orthogonality.  It is the terminal strip modulus for the actual selected
cross-profile density \(c_m\) extracted from \(C_{\sigma_m}^{cross}\).

The consumer statement is exact.  If strict negative-time profile orthogonality
removes the cross term on every fixed strip \((-1,-\theta]\), and `(SCPTM.2)'
holds on \((-\theta,0]\), then the selected cross contribution vanishes in the
terminal record:

```math
\limsup_{m\to\infty}\int_{-1}^{0}c_m(s)\,ds
\le
\limsup_{m\to\infty}\int_{-\theta}^{0}c_m(s)\,ds,
\qquad
\theta\downarrow0,
\tag{SCPTM.4}
```

so the right side goes to zero by `(SCPTM.2)'.

## 2. What current inputs actually give

The current cross-profile inputs give visibility and domination, not endpoint
uniform integrability.  The terminal-timeface supplier exhaustion note records
two-frame domination:

```math
d\mu_{\alpha\beta,j}^{+}
\le
{1\over2}\chi_j^{sel}|S_{<j}^{loc}|\,|U_{\alpha,<j}|^2\,dxdt
+
{1\over2}\chi_j^{sel}|S_{<j}^{loc}|\,|U_{\beta,j}|^2\,dxdt.
\tag{SCPTM.5}
```

This proves the selected cross atom is not invisible.  It does not prove
uniform terminal spreading in \(s\), and it does not assign the atom to one
profile.  The near-resonant low-high molecule can still have one frame supply
the selected low strain, another frame supply the high packet, and the positive
source selected only after their product is formed.

The earlier cross-profile reverse-Holder and scale-normalized square-reserve
attempts tested the obvious stronger estimates.  They did not install a
same-selector source-square reserve, parent-density floor, terminal Morrey
decay, or cross-profile anti-diffusion theorem.

## 3. Endpoint pulse obstruction

Finite selected \(L^1_s\) mass does not imply `(SCPTM.2)'.  Take
\(\tau_m\downarrow0\) and

```math
c_m(s)
=
{c_0\over \tau_m}\mathbf 1_{(-\tau_m,0]}(s),
\qquad c_0>0.
\tag{SCPTM.6}
```

Then

```math
\int_{-1}^{0}c_m(s)\,ds=c_0
\tag{SCPTM.7}
```

for every \(m\), while for every fixed \(\theta>0\),

```math
\limsup_{m\to\infty}
\int_{-\theta}^{0}c_m(s)\,ds
=c_0.
\tag{SCPTM.8}
```

Hence

```math
\lim_{\theta\downarrow0}
\limsup_{m\to\infty}
\int_{-\theta}^{0}c_m(s)\,ds
=c_0\ne0.
\tag{SCPTM.9}
```

This is exactly the terminal time-face atom.  On every strict negative-time
strip \((-1,-\theta]\) the pulse eventually disappears, so strict interior
profile compactness sees no cross-profile source.  The mass remains entirely at
the endpoint.

## 4. The cross-profile algebraic model

The obstruction is compatible with the selected positive cross algebra.  Use the
same trace-free off-diagonal strain from the positive-part decoupling test:

```math
S_0=
\begin{pmatrix}
0&1&0\\
1&0&0\\
0&0&0
\end{pmatrix}.
\tag{SCPTM.10}
```

Let

```math
W^{(1)}=\psi(y)e_1,
\qquad
W^{(2)}=\psi(y)e_2.
\tag{SCPTM.11}
```

Then the individual diagonal readings vanish:

```math
\langle S_0W^{(1)},W^{(1)}\rangle=0,
\qquad
\langle S_0W^{(2)},W^{(2)}\rangle=0,
\tag{SCPTM.12}
```

while the cross reading satisfies

```math
\langle S_0W^{(1)},W^{(2)}\rangle
+
\langle S_0W^{(2)},W^{(1)}\rangle
=2\psi(y)^2.
\tag{SCPTM.13}
```

Multiplying `(SCPTM.13)' by the endpoint pulse factor in `(SCPTM.6)' and
normalizing \(\psi\) gives a selected positive cross-profile carrier with fixed
terminal mass and zero individual diagonal profile readings.

This is not asserted to be an exact Navier--Stokes solution.  Its role is
precise: it disproves the inference

```math
\text{finite selected }L^1_s
+ \text{strict-strip orthogonality}
+ \text{two-frame domination}
\Longrightarrow
\text{SelectedCrossProfileTerminalStripModulus.A}.
\tag{SCPTM.14}
```

## 5. Exact sufficient upgrades

Any one of the following same-selector upgrades would prove `(SCPTM.2)'.

First, a super-\(L^1_s\) estimate on the selected cross carrier:

```math
\sup_m\int_{-1}^{0}c_m(s)^p\,ds<\infty,
\qquad p>1.
\tag{SCPTM.15}
```

Second, a source-square or Carleson reserve on the same selected cross carrier:

```math
c_m(s)\le C G_m(s)+\ell_m(s),
\qquad
\sup_m\int_{-1}^{0}G_m(s)^2\,ds<\infty,
\tag{SCPTM.16}
```

with endpoint-uniform legal residue:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\ell_m(s)\,ds=0.
\tag{SCPTM.17}
```

Third, a cross-profile terminal Morrey or residence estimate:

```math
\sup_m\int_{-\theta}^{0}c_m(s)\,ds
\le \omega(\theta),
\qquad
\omega(\theta)\downarrow0.
\tag{SCPTM.18}
```

Fourth, selected low-high positive strain decorrelation strong enough to prevent
the high packet from remaining aligned with the expanding low strain on the same
terminal windows.

Fifth, `OneProfilePackDefectLocalization.A' with an actual selected-positive
estimate that assigns every nonzero terminal cross carrier to one profile or
pays it as a legal residual.

Sixth, a strict rescaled no-waste Lyapunov inequality on the selected
cross-profile carrier:

```math
-{d\over ds}L_m(s)
\ge
\gamma c_m(s)-\operatorname{legal}_m(s),
\qquad
L_m(s)\ge -C,
\tag{SCPTM.19}
```

with endpoint-uniform legal residue.

These are not installed by the current inputs.

## 6. Verdict

`SelectedCrossProfileTerminalStripModulus.A' is not proved from the installed
forward-gold inputs.

The direct test reduces it to the same non-aliased terminal heat-scale pulse
obstruction:

```math
\boxed{
\text{SelectedCrossProfileTerminalStripModulus.A}
\Longleftarrow
\text{same-selector source-square / terminal Morrey / low-high decorrelation}
}
\tag{SCPTM.20}
```

or to

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{or}\quad
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{SCPTM.21}
```

on the actual selected positive cross carrier.

Thus the cross-profile branch gives no independent forward-gold closure.  It
sharpens the obstruction: cross-profile selection does not add a new escape
class, but it also does not remove the terminal endpoint-pulse problem.
