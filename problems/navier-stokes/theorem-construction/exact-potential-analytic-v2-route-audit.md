# Exact-Potential Analytic-Coefficient `V2` Route Audit

## Status

Active theorem-facing audit note for the stronger adiabatic continuation on the
exact-potential branch.

Role: test the third and last `V2` import route after `EP.11d`, namely the
analytic-coefficient measurable-set route.

## Purpose

The note
[exact-potential-v2-import-menu-after-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-import-menu-after-ep11d.md)
records that after `EP.11d`, the stronger adiabatic continuation stops at a
three-way `V2` operator-class choice.

This note audits the last branch in that menu:

```math
\texttt{analytic-coefficient measurable-set route}.
\tag{EVA.0}
```

## Audit Result

On the current installed localization, the analytic-coefficient route is also
**not yet reached**.

What is on disk is still the variable-diffusion chart equation from `F.11d`,

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k,
\tag{EVA.1}
```

with coefficient control only at the uniformly elliptic / bounded level
`(F.11d12)`-`(F.11d13)`.

The analytic route named in `EP.12` requires a **stronger analytic
normalization** of the localized operator. No on-disk theorem currently
supplies:

1. space-time analyticity of the selector-chart coefficients for the localized
   defect operator;
2. an analytic change of variables reducing the installed chart equation to the
   coefficient class needed by the measurable-set observability theorem for
   analytic parabolic evolutions;
3. a proof that the localized source ledger remains admissible under that
   analytic normalization.

So the analytic route is still purely conditional on one stronger operator-class
theorem.

## Literature Check

The external import is real:

- Escauriaza--Montaner--Zhang establish observability from measurable sets for
  parabolic evolutions with analytic coefficients; see
  [arXiv:1509.04053](https://arxiv.org/abs/1509.04053).

But that source applies only after the localized operator is placed into the
analytic class. The current installed packet does not do that.

## Corollary `EVA.A` (the analytic `V2` route is not yet closed on the installed localization)

On the current exact-potential stronger adiabatic branch, the installed
localization `F.11d` does not by itself place the localized defect into the
analytic operator class required for the Escauriaza--Montaner--Zhang import.

Therefore the analytic route remains open at one stronger analytic-normalization
theorem.

### Proof

`F.11d` yields the variable-diffusion divergence-form equation `(EVA.1)` with
bounded coefficient control, not analytic coefficient control. `EP.12` only
lists the analytic route conditionally, and no on-disk theorem upgrades
`(EVA.1)` to an analytic evolution. So the analytic import remains conditional
on one new normalization theorem. ∎

## Interpretation

This last bounded self-attempt closes the current `V2` menu:

```math
\boxed{\texttt{current localization }F.11d}
\not\Longrightarrow
\boxed{\texttt{analytic parabolic evolution class}}.
\tag{EVA.2}
```

So after `EP.11d`, all three currently named `V2` import routes have now been
audited:

1. Stokes route: blocked by missing Stokes-preserving localization;
2. convex product-set parabolic route: blocked by missing gauge-normalization to
   `(F.11g2)`-`(F.11g3)`;
3. analytic route: blocked by missing analytic normalization.

This is therefore the honest termination boundary for the stronger adiabatic
exact-potential continuation on current hypotheses.
