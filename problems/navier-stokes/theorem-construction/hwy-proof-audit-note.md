# HWY Proof Audit Note

## Status

Public-source audit only. This note separates:

1. what the Hou-Wang-Yang preprint publicly claims;
2. what a full validation would have to certify;
3. what cannot be checked without reproducing the computer-assisted package.

This note does not verify the theorem. It only audits the proof-side
architecture from public sources.

## Public-source ledger

**Fact 1 (claim level).** Public mirrors and summaries of
[arXiv:2509.25116](https://arxiv.org/abs/2509.25116) say the paper claims a
computer-assisted proof of nonuniqueness for Leray-Hopf solutions of the
unforced incompressible 3D Navier-Stokes equations.

**Fact 2 (strategy level).** Public summaries also say the strategy is:

- construct a self-similar Leray-Hopf solution or profile;
- analyze the linearized operator around that profile;
- certify an unstable perturbation or unstable eigenpair;
- use a coercive-plus-compact decomposition plus finite-rank approximation and
  small tail control;
- verify invertibility on the relevant truncated image by computer-assisted
  means;
- conclude a second solution, and in the claimed result infinitely many
  Leray-Hopf solutions, with the same initial datum.

The public summaries that support this ledger include the arXiv abstract and
public mirrors such as [Cool Papers](https://papers.cool/arxiv/2509.25116) and
[Gist.Science](https://gist.science/paper/2509.25116).

**Fact 3 (context, not validation).** Nearby public results support the route
architecture but do not validate HWY:

- [Galeati 2025](https://arxiv.org/abs/2406.12788) gives almost-everywhere
  uniqueness of deterministic and stochastic Lagrangian trajectories for Leray
  solutions;
- the [middle-eigenvalue continuation criterion](https://www.sciencedirect.com/science/article/abs/pii/S0893965924003744)
  shows that control of `lambda_2^+` in the critical Besov endpoint
  `L_t^2 dot B^{-1}_{infty,infty}` extends local strong solutions;
- [Lei-Yuan](https://academic.oup.com/imrn/article/2024/20/13417/7769704)
  provide a weighted backward-uniqueness mechanism for 3D Navier-Stokes.

These are route-relevant comparators, not proof certificates for HWY.

## Package availability audit

**Proposition (publicly retrievable package as of April 9, 2026).** The
publicly retrievable HWY materials currently located on standard public surfaces
are:

1. the arXiv abstract page, PDF, and HTML page for
   [arXiv:2509.25116](https://arxiv.org/abs/2509.25116);
2. the arXiv `TeX Source` tarball at `https://arxiv.org/e-print/2509.25116`;
3. the Caltech-hosted PDF
   [Nonuniqueness-NSE-2025.pdf](https://users.cms.caltech.edu/~hou/papers/Nonuniqueness-NSE-2025.pdf).

On the standard public discovery surfaces checked in this audit, no separate
public code repository, data archive, interval-certificate bundle, or
reproducibility script package was found.

**Audit evidence.**

- The arXiv abstract page exposes `View PDF`, `HTML (experimental)`, and
  `TeX Source` as the paper-access surfaces.
- The arXiv `e-print` tarball is publicly downloadable, but its contents reduce
  to `00README.json`, `main.tex`, `ref.bib`, and the figure directory; it does
  not contain numerical scripts, interval-arithmetic certificates, or a proof
  data bundle.
- The Caltech paper index exposes the HWY PDF entry, but this audit did not
  locate a companion code/data package for the paper on that public surface.

**Conclusion.** From the public web surfaces currently located, one can get the
paper and its TeX source, but not the full computer-assisted package.

## Validation schema

**Proposition (minimal validation certificate).** To validate the HWY
preprint, one must independently certify all four of the following:

1. a self-similar background `U` satisfying the claimed PDE and Leray-Hopf
   admissibility;
2. a rigorously enclosed unstable eigenpair for the linearized operator
   `L_U`;
3. finite-rank and tail estimates that reduce the infinite-dimensional operator
   to a verified coercive-plus-compact calculation;
4. a nonlinear branching argument showing that the unstable mode produces a
   second Leray-Hopf branch with the same initial datum.

**Proof sketch.** Public summaries identify exactly this architecture. That is
the logical dependency chain a computer-assisted nonuniqueness proof of this
type must satisfy. What public sources do not expose are the interval-arithmetic
enclosures, the truncation scale, the tail bounds, and the exact nonlinear
continuation argument. So the architecture is auditable from public sources,
but the theorem itself is not.

## Source-backed versus inference

**Source-backed facts.**

- The preprint publicly claims a computer-assisted proof of Leray-Hopf
  nonuniqueness.
- The public strategy description includes a self-similar profile, linearized
  stability analysis, an unstable perturbation or eigenpair, and a
  coercive-plus-compact / finite-rank verification step.
- The result is still presented through public preprint and mirror pages rather
  than as a settled peer-reviewed theorem.

**Inferences.**

- Any fully valid proof of this type must include explicit tail bounds and
  numerical-enclosure certificates.
- Any passage from linear instability to a second Leray-Hopf solution must be
  justified by a nonlinear branching argument, not by the linear spectrum
  alone.
- The public sources do not suffice to confirm or refute correctness of the
  computer-assisted package.

## What remains unverifiable without the full package

The following are not certifiable from public abstracts or summaries alone:

- the exact self-similar profile and its residual;
- rigorous interval bounds for the linearized spectrum;
- finite-rank approximation accuracy and the tail control behind it;
- the exact invertibility region used by the computer-assisted proof;
- the nonlinear passage from the unstable eigenpair to a distinct Leray-Hopf
  branch;
- whether the localized common datum lies inside or outside the known Barker
  critical uniqueness classes;
- reproducibility of the code, data, and proofs that certify the numerical
  step.

## Audit conclusion

Public sources are enough to audit the proof architecture, but not enough to
validate the theorem. The current public record supports the claim that HWY
propose a computer-assisted instability-based nonuniqueness proof, and it
supports the need for the four certificates listed above. It does not, by
itself, certify any one of those certificates.
