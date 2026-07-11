---
theorem_id: forward-gold-c0-two-door-proof-audit-endpoint-gap-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / adversarial audit of the two-door retained-tower proof
status: >-
  Audit and strict reduction. The bad-packet and finite-atom doors are sound,
  while the long-chain endpoint remains the open signed retained-history
  theorem TD.5. Section 5 supersedes the earlier gate claim: TD.2 is a locally
  admissible Navier--Stokes affine state, and restricted Euler supplies an
  altered-law comparison evolution from that state. Neither the affine state
  nor the comparison proves a universal transverse brake, a Part/Field failure,
  or c_0>0.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-recent-deformation-lag-repeller-index-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-causal-lag-commutator-sign-target-20260707.md
completion_truth: >-
  The two-door proof is the cleanest assembly to date and it is not a proof. The
  bad-packet and finite-atom doors are sound; it correctly avoids the refuted
  affine-mismatch charge; its chain decomposition and incompressibility law
  (a'=2a is the affine jet, verified) are correct. The single load-bearing gap is
  the long-chain step: it closes only if the parent-owned endpoint amplitude
  a(rho_+) is charged a uniform fraction of service ("paid at the first non-merge
  collar"). That is asserted, not proved, and it is exactly the open log-endpoint
  turn-off / parent-non-telescoping rigidity. A concrete zero-internal-bill escape
  chain exhibits the gap. Because the endpoint amplitude is an affine value (the
  free Korn/participation mode that sank the previous three routes), it cannot be
  charged by any magnitude bill; the only non-circular closer is the T-odd
  transverse-torque sign theorem. So the two-door proof reduces c_0 to the signed
  profile theorem; it does not independently close it.
---

# Audit: the two-door retained-tower proof, and where it is still open

## 1. What is sound

The two-door split is correct and the first door is genuinely closed:

- **Door A (lost participation):** routes out through Pack/Part/Field. Fine.
- **Door B (retained), bad packets + finite strict atoms:** pay by the uniform
  packet inequality; the zero-payment compactness leaves only the affine/rigid
  kernel, the rigid part has no Vieillefosse service, and a nonzero affine strain
  on a *bounded* atom either extends globally (infinite energy) or turns
  off/attaches/changes owner (payment or route-out). Sound, because the atom is
  bounded in log-length, so Korn-Poincare has a fixed constant.

It also does two things right that killed earlier attempts:

- It **does not charge affine amplitude mismatch** (the refuted §21 null-mode
  step). Correct.
- Its chain ansatz and incompressibility law are exact. With
  `u=a(\rho)\,A\omega/r+w`, `\rho=\log r`,

```math
\nabla\cdot u=[\,a'-2a\,]\,\frac{x^\top A x}{r^4},
\qquad
a'-2a=0\iff a\propto r^2\iff u=Ax ,
\tag{TD.1}
```

verified symbolically. So `w=0` forces the pure affine jet `Ax` (degree `+1`,
global, infinite energy). Good: the affine core is the `w=0` kernel and is
excluded by finite energy.

## 2. The single load-bearing gap: the endpoint charge

The long-chain step concludes "so the log tower cannot carry positive service for
free" from: `w=0 \Rightarrow` affine kernel `\Rightarrow` parent-owned endpoint,
which "must either be paid at the first non-merge collar, become non-finite-energy
global affine, or stop being retained service."

Two of those three sub-cases are genuinely closed (non-finite-energy; not
retained). The third — **paid at the first non-merge collar** — is asserted, not
proved. It is the whole content.

Concrete escape chain exhibiting the gap. Work on a finite log-segment
`I=[\rho_-,\rho_+]` and take the exact affine-law profile

```math
a(\rho)=a_+\,e^{2(\rho-\rho_+)}
\quad\Longrightarrow\quad
La:=a'-2a=0\ \text{on }I,
\tag{TD.2}
```

so by (TD.1) the field is incompressible on `I` with `w=0`, i.e. **zero internal
Hodge/viscous bill**. `a` grows toward the top and decays downward, so the
Vieillefosse service is positive and concentrated near `\rho_+`:

```math
\mathsf S_I\sim\int_I|a|^2\,d\rho=\tfrac14|a_+|^2>0,
\qquad
\int_I|La|^2\,d\rho=0 .
\tag{TD.3}
```

At the top the chain hands off to the parent with amplitude `a(\rho_+)=a_+`. This
is a lawful finite-segment participant with positive service and zero internal
bill. The Hodge-Hardy endpoint inequality (the proved ingredient) reads

```math
\int_I|a|^2\,d\rho
\le
C_{\rm HH}\Big(|a(\rho_+)|^2+\int_I|La|^2\,d\rho\Big)
=
C_{\rm HH}\,|a_+|^2 ,
\tag{TD.4}
```

so the bill does **not** dominate the service — the endpoint term `|a_+|^2` does.
The chain pays a fixed fraction of its service **iff** `|a_+|^2` is charged. The
proof assumes it ("paid at the first non-merge collar"); (TD.2)-(TD.4) show a
profile where the internal bill is exactly zero, so the charge, if it exists, is
entirely the endpoint term.

This is not a new gap. It is the named-open `ParentBorrowingCostNonTelescoping.A`
/ "Hardy cannot supply its own endpoint strictness": `a_+` is the amplitude the
chain hands to the parent, the parent hands to its parent, and whether that
handoff is ever paid or telescopes to zero up the tower is the open log-endpoint
turn-off rigidity.

## 3. Why it cannot be patched with a magnitude argument

`a_+` is an affine amplitude. Charging it is charging a point of the affine
manifold `\mathfrak A` — the free Korn/participation mode that is the kernel of
every legitimate magnitude bill (this is exactly why §13--14 and §20--21 failed,
and why the self-field transverse torque has `\mathfrak A` in its kernel,
recent-deformation note RDL.6). So **no magnitude bill can charge `a_+`**; the
endpoint charge must be a **sign** transverse to `\mathfrak A`.

The only object with that property on the table is the T-odd transverse-torque
signed profile theorem:

```math
L_{\rm ret}(U)\ge \eta\,\mathsf S_{\rm ret}(U),\qquad \eta>0,\quad U\in\mathcal E_{\rm ret}.
\tag{TD.5}
```

## 4. What the two-door proof actually achieves

It is the correct scaffold and it localizes `c_0` to one clean statement:

```math
c_0>0
\iff
\text{the parent-owned handoff endpoint }a_+\text{ of a retained same-affine
chain is charged a uniform fraction of its service.}
\tag{TD.6}
```

By §3, (TD.6) cannot be a magnitude charge; it is (TD.5) evaluated at the
handoff/collar. So the two-door proof and the recent-deformation/transverse-torque
route **compose**: the two-door argument is the compactness+stopping scaffold that
reduces everything to the endpoint charge; (TD.5) is the missing engine that
supplies that charge with a sign. Neither alone closes `c_0`; together they state
exactly one open theorem — the signed endpoint/turn-off rigidity over
`\mathcal E_{\rm ret}`.

Verdict: not a proof; the cleanest reduction to the one signed theorem. Honest
prior unchanged — the stall is at the log endpoint, now named to the sign of
(TD.5) at the collar.

## 5. Gate correction: TD.2 state admissibility versus comparison evolution

Physical sentence first. The affine TD.2 state is locally realizable inside
smooth finite-energy divergence-free Navier--Stokes data. Restricted Euler
supplies a comparison evolution from that geometry by imposing an altered
pressure closure. The state is therefore admissible; the comparison trajectory
is not automatically the same Navier--Stokes history.

By this note's own identity (TD.1), `w=0` on the whole segment is *equivalent* to
`u=Ax` with a single constant `A` there — the pure affine strain. The local jet fixes
only the trace of the pressure Hessian; its trace-free harmonic completion belongs
to the surrounding field and cannot be inferred from `w=0`. The finite-energy
localized affine state is an admitted same-solution initial state. What remains
unproved is its persistence as an exactly affine full log-segment in one evolving
Navier--Stokes history.

So the TD.2 object has two typed roles. The localized affine state is an
admitted Navier--Stokes state. Its restricted-Euler continuation is a comparison
surface showing what the local quadratic strain law does after the nonlocal
trace-free pressure, spatial-coupling, and viscous rows are removed. That
comparison has mechanism-discrimination weight and no direct Part/Field or
Silver exit weight. The endpoint question for Navier--Stokes is whether the
same solution can retain the affine geometry through material time once the
whole-field pressure, collar, and viscosity are restored.

What the comparison leaves open. A nontrivial retained forward-arrow chain may
depart from one affine jet across scale and material time. The same anisotropy
then changes the whole-field pressure source, but neither finite-energy
localization nor participation alone proves that the pressure Hessian rotates
off the strain frame with a favorable sign at every rung. Restricted Euler
shows the runaway comparison when the trace-free nonlocal pressure row is
removed; exact shear-cell banks show that the full local pressure Hessian can be
aligned or transverse. The missing statement is the signed retained-history
theorem (TD.5), not an already-present universal brake.

The honest terminal, both sides held:

- **As physics (admission gate):** the localized affine state is admissible, and
  restricted Euler gives a comparison evolution from it. The full
  Navier--Stokes history restores viscosity, the globally slaved pressure, the
  collar, and material-time evolution. Whether that complete participation law
  permits a retained positive-service chain with no signed transverse response
  is open.
- **As a proof on paper:** the scale-uniform lower bound `\eta>0` on that present
  transverse rotation is exactly the signed profile theorem (TD.5), and by rule 13 no
  magnitude bill can supply it. VPL.234g and the two-door Hodge charge are valid
  **reductions** to (TD.5), not closures. Any surface that reads "installed" and
  demotes the T-odd transverse-rotation rows to "support diagnostics" inverts this:
  (TD.5) is the engine, not a diagnostic.

Endpoint and interior are one response, not two ledgers. On a real chain the handoff
amplitude at `\rho_+` is carried by the *same* transported rotation that brakes the
interior — the slaved pressure is one non-local instantaneous response over the whole
segment including its ends. So §2's split into "internal bill" versus "endpoint term"
is itself an artifact of the frozen (`w=0`, constant-`A`) decomposition; it does not
survive on an admissible `w\neq0` chain, where there is a single T-odd account. This
tightens (TD.6):

```math
c_0>0
\iff
\text{on every reachable }(w\neq0)\text{ retained chain the present transverse
rotation of the slaved pressure frame off the transported strain frame carries a
scale-uniform braking sign.}
\tag{TD.7}
```

That is one sentence about the one fluid, T-odd, and it is what remains to be written
— not an open freedom the object possesses.
