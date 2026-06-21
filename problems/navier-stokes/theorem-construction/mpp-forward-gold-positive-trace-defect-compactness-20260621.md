---
theorem_id: forward-gold-positive-trace-defect-compactness-20260621
status: compactness-lemma-proved-ns-rigidity-not-closed
logical_landing_node: positive_trace_ac_failure_produces_terminal_defect
edge_effect: "Proves the exact Body-II to Body-III compactness handoff for the upgraded four-body program. For bounded positive trace measures, failure of uniform positive absolute continuity near s=0 produces a weak-* subsequential limit with a positive atom on the terminal face. Thus the last-instant pulse is no longer invisible: it is either killed by uniform AC, paid by unbounded positive trace mass, or retained as a terminal compactness/no-loss defect. The remaining gold step is to charge or rigidly consume that terminal atom inside the four-body loop."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-positive-ac-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
---

# Positive Trace Defect Compactness

Date: 2026-06-21

## 0. Aim

The terminal trace criterion proved that positive terminal growth is controlled
by the positive part of the trace integrand.

This note proves the next exact handoff in the upgraded four-body program:
failure of uniform positive trace absolute continuity becomes a retained
terminal defect measure.

So the participation-to-compactness arrow now has an exact fork:

```math
\boxed{
\text{uniform positive trace AC}
}
\quad\text{or}\quad
\boxed{
\text{positive terminal trace defect at }s=0.
}
\tag{PTD.1}
```

This is still not full gold closure.  It is the precise Body-II to Body-III
no-loss upgrade: the last-instant pulse cannot disappear between participation
and compactness.

## 1. Measure setup

Let \(H_j\in L^1((-1,0))\), and define the positive trace measures

```math
d\mu_j(s)=[H_j(s)]_+\,ds
\quad\text{on }[-1,0].
\tag{PTD.2}
```

Assume the positive trace masses are uniformly bounded:

```math
\sup_j \mu_j([-1,0])<\infty.
\tag{PTD.3}
```

Then, by weak-* compactness of finite Radon measures on the compact interval
\([-1,0]\), a subsequence satisfies

```math
\mu_{j_k}\stackrel{*}{\rightharpoonup}\mu_\ast
\quad\text{in }\mathcal M([-1,0]).
\tag{PTD.4}
```

Here \(\mu_\ast\) is a nonnegative finite Radon measure.

## 2. Failure of uniform terminal AC produces an atom

Uniform positive terminal absolute continuity is the statement

```math
\lim_{\theta\downarrow0}
\sup_j \mu_j((-\theta,0])
=0.
\tag{PTD.5}
```

Suppose `(PTD.5)` fails.  Then there are \(\varepsilon>0\), a sequence
\(\theta_n\downarrow0\), and indices \(j_n\) such that

```math
\mu_{j_n}((-\theta_n,0])\ge\varepsilon.
\tag{PTD.6}
```

Using `(PTD.3)`, pass to a subsequence, still denoted \(j_n\), so that

```math
\mu_{j_n}\stackrel{*}{\rightharpoonup}\mu_\ast.
\tag{PTD.7}
```

Fix \(k\).  For all sufficiently large \(n\), \(\theta_n<1/k\), hence

```math
\mu_{j_n}([-1/k,0])\ge\varepsilon.
\tag{PTD.8}
```

Since \([-1/k,0]\) is closed, weak-* convergence gives

```math
\limsup_{n\to\infty}\mu_{j_n}([-1/k,0])
\le
\mu_\ast([-1/k,0]).
\tag{PTD.9}
```

Therefore

```math
\mu_\ast([-1/k,0])\ge\varepsilon
\qquad\text{for every }k.
\tag{PTD.10}
```

By continuity from above for finite measures,

```math
\mu_\ast(\{0\})
=
\lim_{k\to\infty}\mu_\ast([-1/k,0])
\ge
\varepsilon.
\tag{PTD.11}
```

Thus failure of uniform positive terminal absolute continuity produces a
positive atom at the terminal face.

## 3. Exact dichotomy

For the positive trace integrands produced by the local energy or mixed tower
trace identity, exactly one of the following holds along a terminal family:

```math
\boxed{
\sup_j\int_{-1}^{0}[H_j(s)]_+\,ds=\infty;
}
\tag{PTD.12}
```

```math
\boxed{
\lim_{\theta\downarrow0}
\sup_j
\int_{-\theta}^{0}[H_j(s)]_+\,ds=0;
}
\tag{PTD.13}
```

or, after subsequence extraction,

```math
\boxed{
[H_j]_+\,ds
\stackrel{*}{\rightharpoonup}
\mu_\ast,
\qquad
\mu_\ast(\{0\})>0.
}
\tag{PTD.14}
```

The first branch is already positive trace mass blowup.  The second branch
kills positive terminal growth by the criterion proved in the previous note.
The third branch is the retained terminal trace defect.

There is no fourth measure-theoretic escape.

## 4. Four-body interpretation

The upgraded four-body loop is

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{PTD.15}
```

This lemma sharpens the second arrow.

Participation produces the trace integrand \(H_j\).  Then:

1. unbounded positive trace mass is a Body-II loss/readout;
2. uniform positive trace AC removes positive terminal growth;
3. failure of uniform positive trace AC produces a Body-III terminal defect
   measure \(\mu_\ast\) with \(\mu_\ast(\{0\})>0\).

So a last-instant pulse cannot be hidden by passing from Body II to Body III.
It either pays as positive trace mass, disappears by uniform AC, or survives as
an explicit terminal defect measure.

## 5. What remains after this handoff

This compactness result does not prove smoothness by itself.

It proves that the four-body program has reduced the terminal-face obstruction
to a concrete retained object:

```math
\boxed{
\mu_\ast(\{0\})>0.
}
\tag{PTD.16}
```

The next exact gold step is to charge or consume this atom inside the same
four-body loop:

```math
\boxed{
\text{terminal trace atom}
\Longrightarrow
\text{legal four-body loss, geometry/tower rigidity contradiction, or
CM Pack/Part/Field face failure.}
}
\tag{PTD.17}
```

## Verdict

The Body-II to Body-III no-loss handoff is now exact at the measure level.

Failure of positive terminal trace absolute continuity is not a vague missing
payment.  Under bounded positive trace mass it produces a positive terminal
Radon atom.  If the positive trace mass is unbounded, that is already a
Body-II loss branch.

The remaining work is no longer to locate the last-instant pulse.  It is to
charge or rigidly consume the explicit terminal atom produced by this compactness
handoff.
