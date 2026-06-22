---
theorem_id: forward-gold-order-lock-overlap-fourbody-payment-direct-attempt-20260622
status: direct-attempt-reduces-to-terminal-overlap-nojump-plus-pressure-compatibility
logical_landing_node: order_lock_overlap_fourbody_payment
edge_effect: "Creates the clean surface for OrderLockOverlapFourBodyPayment.A, replacing the stale polar-pair framing. The algebraic channel-overlap split is proved: the native/full-packet mismatch is controlled by the sum over packet channels of min([n]_+,[-b^k]_+), not by an independent scalar source or by the whole partner deficit as the live object. Viscous, harmonic-pressure, selector/legal, finite signed, and geometry overlaps are paid by their same-packet channels using the stronger partner-overpayment estimates. Local pressure requires pressure-compatible same-packet tests. The only live unproduced positive-forward piece remains the terminal time/storage overlap no-jump or a strict no-waste/full-loop substitute; otherwise the overlap routes through the existing terminal trace or donor/Field branches after same-packet admission."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-order-lock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-partner-polar-payment-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-partner-deficit-retention-or-exit-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-discarded-partner-bridge-rework-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Order-Lock Overlap Four-Body Payment Direct Attempt

Date: 2026-06-22

## 0. Object

The channel-first native scalar is

```math
n_\sigma
=
\langle N_\sigma,\varphi_\sigma\rangle .
\tag{OLO.1}
```

The same-packet partner scalar is

```math
b_\sigma
=
\left\langle
P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma
\right\rangle
-cD_\sigma^\nu .
\tag{OLO.2}
```

The full order-locked scalar is

```math
h_\sigma=n_\sigma+b_\sigma .
\tag{OLO.3}
```

The exact order-lock gap is

```math
\Delta_{\rm ol}(\sigma)
=
\int
\left([n_\sigma]_+-[h_\sigma]_+\right)_+ .
\tag{OLO.4}
```

By the scalar formula proved in `FullParticipationOrderLock.A`,

```math
\boxed{
\Delta_{\rm ol}(\sigma)
=
\int
\min\{[n_\sigma]_+,[-b_\sigma]_+\}.
}
\tag{OLO.5}
```

The theorem tested here is

```math
\boxed{
\texttt{OrderLockOverlapFourBodyPayment.A:}
\qquad
\int_{\sigma_0}^{\infty}\Delta_{\rm ol}(\sigma)\,d\sigma<\infty
}
\tag{OLO.6}
```

or a typed terminal trace, donor/saturation, selector/collar, pressure-memory,
geometry, or Field exit after same-packet admission.

This is the correct live object.  Paying

```math
\int[-b_\sigma]_+
\tag{OLO.7}
```

is only a sufficient overpayment.

## 1. Channel-overlap split

Split the same-packet partner into channels:

```math
b_\sigma
=
b_\sigma^p+b_\sigma^v+b_\sigma^t+b_\sigma^i+b_\sigma^l+b_\sigma^s .
\tag{OLO.8}
```

Since

```math
[-b_\sigma]_+
\le
\sum_{\kappa\in\{p,v,t,i,l,s\}}[-b_\sigma^\kappa]_+
\tag{OLO.9}
```

and for \(a,c_\kappa\ge0\),

```math
\min\left\{a,\sum_\kappa c_\kappa\right\}
\le
\sum_\kappa\min\{a,c_\kappa\},
\tag{OLO.10}
```

we get the order-locked channel split:

```math
\boxed{
\Delta_{\rm ol}(\sigma)
\le
\sum_{\kappa\in\{p,v,t,i,l,s\}}
\int
\min\{[n_\sigma]_+,[-b_\sigma^\kappa]_+\}.
}
\tag{OLO.11}
```

This is still one packet.  The native positive factor \([n_\sigma]_+\) remains
inside every channel term.

## 2. Paid same-packet channels

For every channel, the overlap is bounded by the corresponding partner
overpayment:

```math
\int\min\{[n_\sigma]_+,[-b_\sigma^\kappa]_+\}
\le
\int[-b_\sigma^\kappa]_+ .
\tag{OLO.12}
```

Thus the already installed same-packet partner estimates immediately pay the
following overlap channels.

Viscosity:

```math
\int\min\{[n_\sigma]_+,[-b_\sigma^v]_+\}
\le
C\mathfrak M_{\rm vis}+R_{\rm cut/legal}.
\tag{OLO.13}
```

Harmonic pressure memory:

```math
\int\min\{[n_\sigma]_+,[-b_{\sigma,H}^p]_+\}
\le
\mathfrak M_{\rm press}+R_{\rm legal}.
\tag{OLO.14}
```

Selector, legal, finite signed, and geometry channels:

```math
\begin{aligned}
&\int\min\{[n_\sigma]_+,[-b_\sigma^i]_+\}
+\int\min\{[n_\sigma]_+,[-b_\sigma^l]_+\}
+\int\min\{[n_\sigma]_+,[-b_\sigma^s]_+\}\\
&\qquad\le
\Lambda_{\rm sgn}
+\Lambda_{\rm sel}
+\Lambda_{\rm legal}
+K_G^+
+\mathcal Z_{\rm donor}.
\end{aligned}
\tag{OLO.15}
```

Finite signed-saturation/donor trees are paid by retained partners, legal exits,
local donor balance, and entrance-leaf decay.  The residual
\(\mathcal Z_{\rm donor}\) is the already named infinite terminal Zeno donor
branch.

## 3. Local pressure overlap

The local pressure overlap is

```math
\int\min\{[n_\sigma]_+,[-b_{\sigma,loc}^p]_+\}.
\tag{OLO.16}
```

For pressure-compatible retained tests,

```math
\int \chi_\sigma^2\nabla Q_{m,\alpha}\cdot W_{m,\alpha}
=
-\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\chi_\sigma^2),
\tag{OLO.17}
```

so the local pressure partner has no interior retained overlap beyond
cutoff/selector/legal terms:

```math
\boxed{
\int\min\{[n_\sigma]_+,[-b_{\sigma,loc}^p]_+\}
\le
R_{\rm cut/sel/legal}.
}
\tag{OLO.18}
```

If `(OLO.17)` is not available on the retained packet, the failure is not a
hidden source.  It is failure of pressure-compatible same-packet selection, so
it routes to selector/collar, pressure-memory, Pack, or Field according to the
existing branch rules.

Thus local pressure is not a detached pressure-only subproblem.  It is a test
compatibility requirement inside the same full packet.

## 4. Time/storage overlap

The time channel gives

```math
b_\sigma^t
=
\partial_\sigma M_\sigma+R_{\rm sel/time}.
\tag{OLO.19}
```

Hence the overlap is bounded by

```math
\int\min\{[n_\sigma]_+,[-b_\sigma^t]_+\}
\le
\int\min\{[n_\sigma]_+,[-\partial_\sigma M_\sigma]_+\}
+R_{\rm sel/time}.
\tag{OLO.20}
```

This is the live endpoint obstruction in its order-locked form.  Bounded
storage does not rule it out.  The pulse model

```math
[n_\sigma]_+
=
[-\partial_\sigma M_\sigma]_+
=
a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}
\tag{OLO.21}
```

has finite \(L_s^1\) mass and produces a terminal atom while keeping the
overlap equal to the pulse.

Therefore the terminal channel requires a genuine no-jump mechanism:

```math
\boxed{
\texttt{TerminalOverlapNoJump.A}
}
\tag{OLO.22}
```

with statement

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}
\min\{[n_m(s)]_+,[-\partial_sM_m(s)]_+\}\,ds
=0,
}
\tag{OLO.23}
```

or a stronger same-packet substitute such as

```math
\boxed{
\texttt{StrictFourBodyNoWasteLyapunov.A}
}
\tag{OLO.24}
```

or a Hardy/Orlicz/\(L_s^q\), \(q>1\), endpoint-uniform-integrability bound for
the overlap density.

## 5. Result

Combining `(OLO.11)` through `(OLO.20)` gives

```math
\boxed{
\Delta_{\rm ol}
\le
\mathfrak M_{\rm vis}
+\mathfrak M_{\rm press}
+\Lambda_{\rm sgn}
+\Lambda_{\rm sel}
+\Lambda_{\rm legal}
+K_G^+
+\mathcal Z_{\rm donor}
+\int\min\{[n_\sigma]_+,[-\partial_\sigma M_\sigma]_+\}
+T_\sigma .
}
\tag{OLO.25}
```

Therefore `OrderLockOverlapFourBodyPayment.A` is reduced to:

```math
\boxed{
\texttt{PressurePartnerCompatibility.A}
+\texttt{TerminalOverlapNoJump.A}
+\texttt{NoFreeTerminalZenoDonorChain.A}
}
\tag{OLO.26}
```

with `StrictFourBodyNoWasteLyapunov.A` allowed to replace the terminal and donor
pieces if it supplies the same endpoint-uniform-integrable overlap control.

The pressure and donor terms are already typed inside the same full packet.  The
forward-positive live producer is now the terminal overlap no-jump theorem, not
a detached finite-jet, viscous, pressure-only, or scalar source-square estimate.
