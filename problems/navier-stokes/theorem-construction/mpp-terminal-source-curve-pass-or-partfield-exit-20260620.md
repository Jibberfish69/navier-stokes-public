# MPP Terminal Source Curve Pass Or Part/Field Exit

Date: 2026-06-20

## Status

Theorem-facing proof for the terminal source-curve obstruction exposed by the
forward-gold heat-scale branch.

This note proves the actual mathematical alternative:

```text
endpoint uniform integrability
or
subsequential terminal atom, hence that Part/Field failure on the same-solution branch.
```

It uses the terminal source-curve compactness test and the installed
`TerminalAtomOriginalParticipationAuditExit.A` / uniform service-topology certification
package.  It does not try another positive estimate for the endpoint modulus.

## 1. Measure lemma

Let

```math
\mu_m(ds)=a_m(s)\,ds,
\qquad
a_m\ge0,
\qquad
s\in[-1,0],
\tag{PSC.1}
```

with

```math
\sup_m \mu_m([-1,0])<\infty.
\tag{PSC.2}
```

Exactly one of the following two alternatives holds after passing to a
subsequence.

First, the endpoint masses are uniformly integrable:

```math
\lim_{\theta\downarrow0}\limsup_m \mu_m((-\theta,0])=0.
\tag{PSC.3}
```

Second, there is a nonzero terminal atom in a weak-* limit:

```math
\mu_m \stackrel{*}{\rightharpoonup} \mu,
\qquad
\mu(\{0\})>0.
\tag{PSC.4}
```

### Proof

If `(PSC.3)` holds, this is the first alternative.

Assume `(PSC.3)` fails.  Then there is an \(\varepsilon>0\), a sequence
\(\theta_k\downarrow0\), and indices \(m_k\to\infty\) such that

```math
\mu_{m_k}((-\theta_k,0])\ge\varepsilon.
\tag{PSC.5}
```

By `(PSC.2)` and weak-* compactness of finite positive measures on the compact
interval `[-1,0]`, pass to a subsequence, still denoted \(m_k\), with

```math
\mu_{m_k}\stackrel{*}{\rightharpoonup}\mu.
\tag{PSC.6}
```

Let \(\eta>0\).  Choose any continuous test function \(\varphi\) with
`0 <= varphi <= 1` and \(\varphi(0)=1\).  For all large \(k\),
\(\varphi\ge 1-\eta\) on `[-theta_k,0]`.  Therefore

```math
\int\varphi\,d\mu_{m_k}
\ge
(1-\eta)\varepsilon.
\tag{PSC.7}
```

Passing to the weak-* limit gives

```math
\int\varphi\,d\mu
\ge
(1-\eta)\varepsilon.
\tag{PSC.8}
```

Now choose \(\varphi\) supported in `[-delta,0]` with \(\varphi(0)=1\).  Since
\(\delta>0\) and \(\eta>0\) are arbitrary,

```math
\mu(\{0\})\ge\varepsilon.
\tag{PSC.9}
```

So failure of endpoint uniform integrability is not a vague compactness defect.
It is exactly a terminal atom after subselection.

## 2. Navier-Stokes terminal source curve consequence

Apply the lemma to the selected same-solution terminal source curve from the
heat-scale packet route:

```math
A_m(\theta)=\int_{-\theta}^{0}a_m(s)\,ds.
\tag{PSC.10}
```

The first branch is the forward-gold no-jump branch:

```math
\lim_{\theta\downarrow0}\limsup_m A_m(\theta)=0.
\tag{PSC.11}
```

This is exactly `TerminalMovingPacketTraceModulus.A` for the selected carrier.

The second branch produces a terminal atom:

```math
\mu(\{0\})\ge\varepsilon>0.
\tag{PSC.12}
```

On the same-solution terminal branch, this is the object covered by the
`TerminalAtomOriginalParticipationAuditExit.A` package in its service-certification
reading.  Namely, after same-witness admission, a valid `Part` or `Field`
survivor must carry the uniform service budget for that service, not merely a
weak terminal measure.  The terminal atom has no endpoint window modulus, so
the certified service test gives

```math
\text{terminal atom}
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{PSC.13}
```

The atom is therefore not a new positive-forward target and not a fourth
terminal branch.  It is a Part or Field Part/Field failure before `Pack_Q` is used as
an exclusion test.

This is a CM-facing service-topology conclusion.  It is not a proof of a new
Navier--Stokes terminal anti-atom estimate.

## 3. No-third-branch statement

For the terminal source-curve obstruction, a finite nonsmooth terminal branch
cannot have all three properties:

```text
same-solution terminal admissibility,
failure of endpoint uniform integrability,
and Member(Q).
```

Indeed, failure of endpoint uniform integrability gives a nonzero terminal atom
by the measure lemma.  After same-witness admission, the same-solution atom
fails the uniform service topology required by `Part_{N,Q}` or
`Field_{N,r,Q}`.  Since `Member(Q)` requires the relevant Part/Field
services, that branch cannot remain `Member(Q)`.

Thus the source-curve obstruction has the required pass-or-exit form:

```math
\boxed{
\text{endpoint modulus}
\quad\text{or}\quad
\text{Part/Field failure supporting } Exit(Q):=\neg Member(Q).
}
\tag{PSC.14}
```

## 4. Relation to the Stirling / factorial tower branch

The Stirling/factorial tower branch becomes relevant only through the terminal
source curve it produces.  Absorbing binomial coefficients gives a local
analytic or factorial tower control.  The unresolved terminal event is the same
question:

```math
\text{does the selected tower-radius/source curve satisfy `(PSC.11)`?}
\tag{PSC.15}
```

If yes, the gold branch has the no-jump modulus.  If no, the failed modulus
extracts the terminal atom `(PSC.12)`, and the same-solution branch exits
through Part or Field by `(PSC.13)`.

So the smarter use of the Stirling failure is not to keep estimating binomial
growth.  The binomial growth is absorbed locally.  The terminal failure is
resolved by the source-curve pass-or-Part/Field alternative above.

## Verdict

The terminal source-curve problem is solved at the pass-or-exit level:

```math
\boxed{
\text{finite }L^1\text{ terminal mass}
\Longrightarrow
\text{endpoint UI or terminal atom;}
}
\tag{PSC.16}
```

and on the same-solution terminal branch,

```math
\boxed{
\text{terminal atom}
\Longrightarrow
\neg Part_{N,Q}\text{ or }\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{PSC.17}
```

Therefore the endpoint layer left by the failed forward-gold attempts is not a
surviving in-class nonsmooth branch.  It either has the gold endpoint modulus
or it is the Part/Field fail branch of the CM contrapositive engine.
