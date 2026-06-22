---
theorem_id: forward-gold-order-lock-overlap-fourbody-payment-direct-attempt-20260622
status: terminal-overlap-piece-closed-by-transported-annular-fourbody-counting-on-no-exit-branch
logical_landing_node: order_lock_overlap_fourbody_payment
edge_effect: "Creates the clean surface for OrderLockOverlapFourBodyPayment.A, replacing the stale polar-pair framing. The algebraic channel-overlap split is proved: the native/full-packet mismatch is controlled by the sum over packet channels of min([n]_+,[-b^k]_+), not by an independent scalar source or by the whole partner deficit as the live object. Viscous, harmonic-pressure, selector/legal, finite signed, geometry, local-pressure, transported-collar, and terminal time/storage overlaps are admitted through their same-packet channels inside A_4B. The terminal time/storage overlap is restored to the transported outer-annulus stress/strain carrier; if its uniform tail fails, fixed transported annular atlas counting puts every surviving pulse inside finite A_4B, while selector/collar drift is visible payment. Thus the terminal overlap piece is closed on the no-exit branch; donor-chain/CM-exit handling remains the separate nonlocal branch."
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

## 2. Same-packet channel admission

For every channel, the overlap is bounded by the corresponding partner
overlap:

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

The annular later-on carrier gives the same no-jump mechanism in physical
packet language.  If the storage partner \(M_\sigma\) is the material annular
energy storage of the same spike event, then the exact material identity gives

```math
\left[-\partial_\sigma M_\sigma\right]_+
\le
D_A(\sigma)+|W_A(\sigma)|
+r_{\rm stor}(\sigma),
\tag{OLO.24a}
```

where \(D_A\) is annular strain dissipation, \(W_A\) is annular stress work,
and \(r_{\rm stor}\) is a same-carrier selector/storage error.  Thus

```math
\int_{-\theta}^{0}
\min\{[n_m(s)]_+,[-\partial_sM_m(s)]_+\}\,ds
\le
\int_{-\theta}^{0}
\left(D_{A,m}(s)+|W_{A,m}(s)|+r_{{\rm stor},m}(s)\right)\,ds .
\tag{OLO.24b}
```

On a positive-thickness smooth outer annulus, the right side has ordinary
terminal absolute continuity.  This is the same terminal no-jump theorem stated
without detaching the center pulse from the annular stress/strain carrier.

For the actual localized storage

```math
M_\sigma={1\over2}\int\phi_\sigma |V_\sigma|^2,
\qquad
\phi_\sigma=\eta_\sigma^2,
\tag{OLO.24c}
```

the exact stress-form identity is

```math
\partial_\sigma M_\sigma
+
2\nu\int\phi_\sigma |S(V_\sigma)|^2
=
-\int V_\sigma\cdot T(V_\sigma,Q_\sigma)\nabla\phi_\sigma
+
\int {1\over2}|V_\sigma|^2
(\partial_\sigma+V_\sigma\cdot\nabla)\phi_\sigma .
\tag{OLO.24d}
```

So the storage partner is restored to the material annular carrier when
\((\partial_\sigma+V_\sigma\cdot\nabla)\phi_\sigma=0\).  Otherwise the only
new term is the same-carrier materiality defect

```math
\int {1\over2}|V_\sigma|^2
\left|(\partial_\sigma+V_\sigma\cdot\nabla)\phi_\sigma\right|.
\tag{OLO.24e}
```

That term belongs to the selector/collar channel.  If its terminal tail is
absolutely continuous, the time/storage overlap is admitted into the annular
stress/strain carrier and the endpoint pulse is excluded.

For a same-fluid transported annular cutoff

```math
\phi_\sigma(y)=\psi(Y_\sigma(y)),
\qquad
(\partial_\sigma+V_\sigma\cdot\nabla)\phi_\sigma=0,
\tag{OLO.24f}
```

the materiality defect vanishes and `(OLO.24d)` gives directly

```math
[-\partial_\sigma M_\sigma]_+
\le
2\nu\int\phi_\sigma |S(V_\sigma)|^2
+
\left|\int V_\sigma\cdot T(V_\sigma,Q_\sigma)\nabla\phi_\sigma\right|.
\tag{OLO.24g}
```

Thus the time/storage overlap enters \(A_{4B}\) through transported annular
strain and stress-work.  The endpoint atom is removed only by a uniform terminal
tail for that transported carrier, or by counting every surviving carrier pulse
inside the finite four-body scale budget.

## 5. Result

Combining `(OLO.11)` through `(OLO.20)` gives

```math
\boxed{
\Delta_{\rm ol}
\leadsto
A_{4B}
}
\tag{OLO.25}
```

Here \(A_{4B}\) means the whole oriented same-carrier four-body object.  The
viscous, pressure, sign, selector, legal, geometry, donor, terminal-storage,
collar, tail, and \(T_\sigma\) pieces are not accounts after the four-body
solution.  They are the channel entries through which the overlap is admitted
into \(A_{4B}\).

Therefore `OrderLockOverlapFourBodyPayment.A` is reduced to admission of the
remaining donor-chain place where channel entry can fail:

```math
\boxed{
\texttt{NoFreeTerminalZenoDonorChain.A}
}
\tag{OLO.26}
```

The pressure and terminal terms have been discharged for the order-locked
transported velocity-pressure tower.  Local pressure is a same-cutoff collar
trace because the retained tower rungs are divergence-free.  The terminal
time/storage term is restored to the transported outer-annulus carrier; a
nonzero terminal pulse is either counted in \(A_{4B}\) through the fixed
transported annular atlas or becomes visible selector/collar loss.

The donor term is already typed inside the same full packet.  The remaining
question is whether an infinite same-carrier donor chain can persist without
rank descent, retained signed partner, or legal/collar payment.
