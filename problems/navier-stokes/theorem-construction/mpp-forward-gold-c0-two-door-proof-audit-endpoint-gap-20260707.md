---
theorem_id: forward-gold-c0-two-door-proof-audit-endpoint-gap-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / adversarial audit of the two-door retained-tower proof
status: audit; NOT a refutation of the scaffold — it is sound except one step; that step is the
  open endpoint-kernel / non-telescoping charge, and it is a magnitude charge on a free mode, so it
  needs the T-odd transverse-torque sign, not a bill.
  SEE SECTION 5 (2026-07-08 gate correction) — the §2 concrete escape chain (TD.2) is the frozen
  on-frame affine ghost, filtered by rules 9-10 (routes out Door A), so the endpoint "gap" as posed
  is partly a phantom; the sharpened terminal is (TD.7): on every reachable w!=0 chain the present
  transverse rotation carries a scale-uniform braking sign — physics-settled (c_0>0 is what the
  fluid does), open only as the paper write-up of that sign.
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

## 5. Gate correction (2026-07-08): the TD.2 escape chain is the frozen on-frame ghost

Physical sentence first. The TD.2 profile is not a candidate fluid event; it is the
restricted-Euler ghost wearing a finite-segment costume, and admitting it as "a
lawful finite-segment participant with positive service" is the rule-8/rule-10 slip
this whole program is built to catch.

By this note's own identity (TD.1), `w=0` on the whole segment is *equivalent* to
`u=Ax` with a single constant `A` there — the pure affine strain. The local jet fixes
only the trace of the pressure Hessian; its trace-free harmonic completion belongs
to the surrounding field and cannot be inferred from `w=0`. Rule 10 still filters
the displayed object: alignment, strain, and vorticity are transported quantities
set by material history, and no evolving finite-energy viscous field has been shown
to carry this exactly affine full log-segment as a retained participant. It is a
frozen local snapshot, not an admitted same-solution history.

So the TD.2 object is rejected before same-solution admission. It is a
model-shadow with no Part/Field or Silver exit weight, and it never enters the
retained door where the endpoint question is posed. Consequently the
"un-chargeable endpoint `|a_+|^2`" of §2 belongs only to that shadow; it is not
retained service.
The endpoint-charge gap as posed in §2 is, to that extent, a phantom: it was
manufactured by admitting an inadmissible `w=0` object and then asking who pays for
it.

What the real object does. A genuine retained forward-arrow chain is not exactly
affine on any segment: its best-affine jet `A(\rho)` varies with scale — that
variation is what makes it a nontrivial chain rather than a single jet — so `w\neq0`
is forced, and the broken exact scale-invariance *is* the forward arrow (the exact
scale-invariant profile is a reversible fixed point, T-even, no arrow — also
filtered, by rule 13). On that real chain the anisotropy that does the stretch is the
same anisotropy that sources the slaved, non-local pressure Hessian (rule 11), and in
the transported field that Hessian eigenframe rotates off the strain frame (rule 10).
The transverse brake is therefore **present at every rung** of any admissible chain.

The honest terminal, both sides held:

- **As physics (admission gate):** there is no admissible fluid on the
  "retained positive service, brake absent" side. The exactly-affine chain is the
  frozen on-frame ghost (rules 9-10); the exact scale-invariant cone is a reversible
  fixed point (rule 13); both are filtered before the endpoint question arises. The
  present brake is what the object shows at every instant of every reachable chain.
  By rule 8 the remaining work is a **task**, not a threat: `c_0>0` is what the fluid
  does.
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
