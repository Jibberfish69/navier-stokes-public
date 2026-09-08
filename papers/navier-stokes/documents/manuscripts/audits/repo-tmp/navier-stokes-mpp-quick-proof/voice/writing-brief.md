# Writing brief: new standalone Navier--Stokes MPP quick proof

Write a separate PDF document. Do not alter or summarize the existing 65-page manuscript.

Author: Thomas Birnie.

Audience: expert mathematical readers evaluating a short Millennium Prize Problem proof.

The fixed proof movement is:

1. Fix one smooth divergence-free finite-energy datum `u_0`, one viscosity `nu>0`, and its one maximal pressure-complete Navier--Stokes history `(u,p)` on `[0,T_*)`.
2. Take divergence to recover pressure from that same velocity field.
3. Differentiate the original pressure-complete equation to obtain the pure-time binomial recurrence and the full mixed jet `J_{n,alpha}`.
4. State the established first theorem: for every finite `N,M`, the datum generates one whole-terminal adjacent-row rectangle `R_{N,M}[u_0]`, with its finite coordinate bound and compatibility under restriction.
5. Assemble all finite rectangles into the datum-specific projective intersection `I[u_0]`.
6. Prove the master finite-order projection: every finite temporal derivative is continuous and uniformly bounded in every finite spatial Sobolev norm; Sobolev embedding gives all finite mixed `L_t^q L_x^p` readouts.
7. Show representative consequences: uniform Sobolev and Lipschitz control, Serrin, `L_t^infinity L_x^3`, BKM/vorticity action, critical height, fixed-order dyadic sums, pressure, Type-I products, and ultraviolet tails. Keep these consequences subordinate to the proof.
8. Use the zeroth temporal projection to obtain `u` in every `L_t^2 H_x^m`. The original equation then gives `u_t` in every `L_t^1 H_x^m`, so all traces define one common endpoint `u_*=u(T_*)` in `H^infinity`.
9. Use the pressure and velocity recurrences at `T_*` to reconstruct the complete pressure-compatible endpoint jet in `H^infinity`.
10. Apply smooth local well-posedness and same-datum uniqueness at `u_*`. The restarted solution is the continuation of the same history, contradicting finite maximality and giving `T_*=infinity`.

Governing source order and notation:

- `problems/navier-stokes/target-operating-contract.yaml`, block `proof_program_completion`.
- `problems/navier-stokes/PROOF-PROGRAM.md`, equations PP.1--PP.20.
- `problems/navier-stokes/theorem-construction/thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`, sections 1--6 and 8.
- `problems/navier-stokes/theorem-construction/compatible-intersection-implies-classical-continuation-catalogue-20260815.md` for the finite-order projection catalogue.
- `/Users/thomasbirnie/.codex/attachments/4e08ccc5-e75e-402e-b523-1efba9dd559f/pasted-text.txt` for the requested quick-proof movement.

The source theorem is settled and remains first. The new document presents it; it does not select another route or convert a later criterion into its premise.

Use standard public mathematical language. Do not expose repository status fields, internal proof labels, task language, or workflow narration in the paper.
