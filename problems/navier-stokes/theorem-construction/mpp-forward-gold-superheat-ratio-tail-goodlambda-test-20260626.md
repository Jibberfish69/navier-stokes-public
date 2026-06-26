---
theorem_id: forward-gold-superheat-ratio-tail-goodlambda-test-20260626
status: direct-test-installed-goodlambda-must-be-weight-beating-tail-law
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dyadic-reduced-identities-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-no-free-acceleration-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-intrinsic-time-shell-ode-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-transactionagefreeupcrossingstorageattempt-a-globalsamepacketfullclockfromoriginaldata-a-b19592bda7.md
---

# Superheat Ratio-Tail Good-Lambda Test

This note tests the exact good-lambda shape needed by the finite full
same-material action problem.

The object is still the original transported material history.  The legacy
symbol \(d\Omega_N^{PLS,full}\) is only notation for the finite full
same-material action measure.

## 1. Tail variables

From the ratio-tail reduction, set

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}}.
\tag{GLT.1}
```

For a fixed superheat threshold \(\delta>0\), define the dyadic ratio bands

```math
E_{j,\ell}
=
\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\ell\ge0,
\tag{GLT.2}
```

and the band masses

```math
\nu_\ell:=\sum_j\mu_j(E_{j,\ell}).
\tag{GLT.3}
```

The raw viscous/tower measure gives only

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
\tag{GLT.4}
```

Finite full same-material action is exactly

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{GLT.5}
```

## 2. Tail form

Let

```math
N_L:=\sum_{\ell\ge L}\nu_\ell.
\tag{GLT.6}
```

Then `(GLT.5)` is equivalent, up to harmless dyadic constants, to

```math
\sum_{L\ge0}2^L N_L<\infty.
\tag{GLT.7}
```

Indeed,

```math
\sum_{L\ge0}2^L N_L
=
\sum_{\ell\ge0}\nu_\ell\sum_{L=0}^{\ell}2^L
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell.
\tag{GLT.8}
```

So the required good-lambda statement is not mere absolute continuity of
the tail.  It must beat the dyadic weight in `(GLT.7)`.

## 3. Good-lambda strength required

A recursive tail estimate of the form

```math
N_{L+1}\le\theta N_L+B_L
\tag{GLT.9}
```

implies `(GLT.7)` only when

```math
2\theta<1
\tag{GLT.10}
```

and

```math
\sum_{L\ge0}2^LB_L<\infty.
\tag{GLT.11}
```

To see this, multiply `(GLT.9)` by \(2^{L+1}\) and sum.  The term
\(2\theta\sum_L2^LN_L\) can be absorbed only under `(GLT.10)`.

Equivalently, a direct distribution estimate must have weight-beating decay:

```math
N_L\le C2^{-(1+\varepsilon)L}+B_L,
\qquad
\sum_{L\ge0}2^LB_L<\infty,
\tag{GLT.12}
```

for some \(\varepsilon>0\), or a comparable summable tail.

This is the exact difference between a temporal non-atom statement and the
finite-action theorem.  A weak \(L^1\)-scale tail \(N_L\sim2^{-L}\) is still
compatible with `(GLT.4)` and still makes `(GLT.7)` diverge.

## 4. Current installed inputs do not supply this tail

The intrinsic-time shell ODE controls shell growth after finite
material-rate time is known.  It does not bound the residence
\(\int e_j\,d\tau_j\).

The interface-variation calculation supplies the stronger second ratio moment

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j<\infty
\tag{GLT.13}
```

only if the acceleration-weighted interface variation is already finite.
That is sufficient for `(GLT.5)`, but not currently produced by the installed
inputs.

The transaction-age split controls genuine return/recirculation events and
reduces fresh one-way births to a native no-reuse or temporal anti-atom
statement.  It does not prove the weight-beating tail `(GLT.12)`.

The dyadic reduced model shows why this gap is real at the level of the
currently installed reduced identities.  One can choose band masses with

```math
\nu_\ell\simeq 2^{-\ell}
\tag{GLT.14}
```

along an infinite terminal subsequence.  Then

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{GLT.15}
```

That model is not a Navier--Stokes solution.  Its role is to show that
energy, heat damping, complete-frame admission, subheat absorption,
recirculation closure, and log-power storage do not by themselves imply the
finite-action tail.

## 5. Exact live theorem after this test

A successful Gold proof must add a Navier--Stokes structural theorem of one of
the following exact strengths:

```math
\sum_{L\ge0}2^LN_L<\infty,
\tag{GLT.16}
```

or the stronger acceleration moment

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j<\infty,
\tag{GLT.17}
```

or a bounded-below same-material storage whose decrease directly pays
`(GLT.5)`.

In good-lambda language, the missing estimate must be a weight-beating
tail law for the material-rate/heat-rate ratio on the original transported
material history:

```math
\boxed{
N_{L+1}\le\theta N_L+B_L,\quad 2\theta<1,\quad
\sum_{L\ge0}2^LB_L<\infty.
}
\tag{GLT.18}
```

Anything weaker is only a non-atom or zeroth-moment statement.  It does not
prove finite full same-material action.

