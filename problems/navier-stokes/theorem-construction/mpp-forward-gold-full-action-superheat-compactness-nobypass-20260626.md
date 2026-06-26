---
theorem_id: forward-gold-full-action-superheat-compactness-nobypass-20260626
status: compactness-no-bypass-installed; finite-action-theorem-still-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-pls-finite-action-minimal-burst-attempt-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-critical-sample-compactness-rigidity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitivegraphdriver-compactness-noselfbirth-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Full-Action Superheat Compactness No-Bypass

The active Gold object is the finite full same-material action estimate

```math
\int_0^{T_*} d\Omega_N^{PLS,full}<\infty .
\tag{FSC.1}
```

Here the legacy word "clock" may only mean this nonnegative action measure.
It is not a second object and it is not supplied by a detached producer.  The
action is read on the original smooth solution's transported material history:
velocity, pressure, incompressibility, viscosity, strain/frame motion,
Hodge/projector motion, collar motion, annular Cauchy stress-work, and the
graph-compatible pressure/collar service are one packet.

## 1. Proof method tested here

The method tested is compactness/minimal counterexample after all installed
sector reductions.  It asks whether failure of `(FSC.1)` automatically creates
a rigid limiting object that contradicts the zero-loss/gauge rigidity already
installed.

Assume `(FSC.1)` fails.  The minimal-burst reduction gives disjoint or
bounded-overlap first-hitting intervals \(I_k\) with

```math
\int_{I_k} d\Omega_N^{PLS,full}=1.
\tag{FSC.2}
```

The installed reductions remove the following sectors from a minimal burst:

```math
\text{center endpoint atom, pressure/collar lobe, viscosity-only drain,
scalar endpoint pulse, finite jet, subheat refill, and return recirculation}.
\tag{FSC.3}
```

The remaining density is the one-way superheat material residence

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}},
\tag{FSC.4}
```

with

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}.
\tag{FSC.5}
```

This is still the same participation-law--strain transaction.  It is not a
pressure-only or viscosity-only residue.

## 2. Retained-coefficient compactness branch

On a normalized burst sequence, add the retained-material-coefficient
hypothesis

```math
\sup_k
\int_{I_k}\|\mathcal M_{<j-C,N,k}(t)\|_{\mathcal X_N}\,dt<\infty ,
\tag{FSC.6}
```

where \(\mathcal M_{<j-C,N}\) is the low material coefficient containing
strain, pressure Hessian through the strain equation, coefficient/frame
motion, Hodge/projector motion, transported collar motion, and annular stress
service.

Then the already installed compactness/no-zero-mode attack applies.  The
retained same-material packet has enough compactness to pass the graph-driver
quadratic form.  If all already-paid losses vanish on the normalized sequence,
the limiting retained high-shell packet is gauge/null in the quotient, hence
the limiting positive graph-driver readout is zero.  This contradicts the
unit normalization `(FSC.2)`.

So the retained-coefficient branch is closed.

## 3. Why compactness does not bypass the remaining theorem

If `(FSC.6)` fails, the low material coefficient does not remain in the
retained compactness class.  That failure is exactly positive continuation-depth
material-record growth:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\,d\Omega_N^{PLS,full}+dR_N^0 .
\tag{FSC.7}
```

The unit residence measure `(FSC.4)` by itself does not give compactness.  It
controls only a product:

```math
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}},
\tag{FSC.8}
```

not the material rate \(\Theta_j^{mat}\), not the shell energy \(e_j\), and
not the coefficient/Hodge/collar record separately.  Thus a normalized burst
can lose compactness by sending the material rate to the terminal face while
the state variables do not converge in the continuation-depth topology.  The
missing information is precisely the bounded material record, equivalently
finite superheat residence.

The fixed-\(H^s\) equivalence note makes this exact:

```math
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt<\infty
\quad\Longleftrightarrow\quad
\text{bounded continuation-depth material record}
\tag{FSC.9}
```

up to the fixed finite depth required by the readout.

Therefore compactness closes only the retained-coefficient branch.  The
unretained branch is not a new terminal object and not a CM-style exit inside
this Gold route; it is the same one-way superheat material-record growth.

## 4. Exact remaining invariant

The Gold route now has no compactness shortcut around the finite-action
theorem.  The remaining noncircular theorem is

```math
\boxed{
\exists\,\mathcal B_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathcal B_N
+c_N\mathcal R_{sh,N}(t)\,dt
\le
dR_N^{legal}.
}
\tag{FSC.10}
```

Equivalently, prove directly

```math
\boxed{
\int_0^{T_*}\mathcal R_{sh,N}(t)\,dt\le C_N(u_0).
}
\tag{FSC.11}
```

This invariant is the finite-action theorem for the original transported
material history.  It is stronger than a retained-packet compactness argument
and exactly equivalent to the continuation-depth bound needed for restart.

## 5. Result

Compactness is a valid proof method only on the retained-coefficient branch.
It does not produce the finite full same-material action estimate from current
inputs.  After all installed reductions, the live Gold theorem is still the
bounded-below depletion invariant `(FSC.10)`, or the direct finite residence
estimate `(FSC.11)`, for the one-way superheat material residence.

This note is a no-bypass result, not a smoothness proof.
