---
ns_viewer:
  theorem_id: forward-gold-clarkson-minkowski-mahler-norm-coercion-direct-test-20260620
  status: direct-test-complete-norm-convexity-not-independent-terminal-source-square-supplier
  proof_role: forward_gold_norm_convexity_and_geometric_mean_coercion_test
  logical_landing_node: unweighted_terminal_critical_action_reserve
  edge_effect: "Tests whether Clarkson uniform convexity, Minkowski triangle/integral inequalities, or Mahler geometric-mean superadditivity can turn participation mass, finite packet sums, or shell sharing into the missing terminal square/source reserve. They cannot produce the reserve from L1 participation data. They are useful after an Lp p>1 reserve, near-equality norm structure, separability, or a uniform positive shell floor has already been paid."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-post-nowaste-equivalence-closeout-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-square-budget-direct-attempt-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-law-square-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-mode-lobe-carrier-expansion-direct-test-20260620.md
  downstream_consequence: "Do not respawn Clarkson, Minkowski, Mahler, uniform convexity, triangle equality cases, integral norm exchange, or geometric means as independent gold suppliers. They are consumer lemmas for already-produced p>1/source-square control, finite lobe summability, profile-alignment diagnostics, or shell-floor hypotheses."
---

# MPP Forward-Gold Clarkson / Minkowski / Mahler Norm Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Clarkson, Minkowski, and Mahler do not produce the
missing terminal source-square reserve from current Navier--Stokes inputs.

They can sharpen structure after a stronger norm, near-equality condition, or
uniform shell floor is already available.  They cannot turn finite \(L^1\)
participation mass into the missing same-carrier \(L^2\)-in-time payment.

The exact obstruction is still:

```math
\boxed{
\text{linear participation}
\not\Longrightarrow
\text{same-carrier square participation}.
}
\tag{CMM.1}
```

## 1. Clarkson: uniform convexity after \(L^p\) is already present

For \(2\le p<\infty\), Clarkson gives a uniform convexity inequality of the
form

```math
\left\|{f+g\over2}\right\|_p^p
+
\left\|{f-g\over2}\right\|_p^p
\le
{1\over2}
\left(\|f\|_p^p+\|g\|_p^p\right).
\tag{CMM.2}
```

For \(1<p<2\), the dual-exponent version gives the corresponding uniform
convexity estimate.  This is useful if the proof already controls an
\(L^p\) norm with \(p>1\).  It can then convert a small convexity defect into
alignment of two functions.

That is a consumer role:

```math
\boxed{
\text{same-carrier }L^p\text{ bound}
+
\text{small Clarkson defect}
\Longrightarrow
\text{profile alignment / no hidden splitting}.
}
\tag{CMM.3}
```

It is not a production role:

```math
\boxed{
\text{finite }L^1\text{ carrier mass}
\not\Longrightarrow
\text{same-carrier }L^p\text{ bound for }p>1.
}
\tag{CMM.4}
```

The terminal pulse

```math
\rho_\tau(s,x)
=
\tau^{-1}{\bf 1}_{(-\tau,0]}(s)\varphi(x),
\qquad
\int\varphi=1,
\tag{CMM.5}
```

has fixed \(L^1\) mass:

```math
\int\rho_\tau=1,
\tag{CMM.6}
```

while

```math
\|\rho_\tau\|_{L^p}^{p}
=
\tau^{1-p}\int \varphi(x)^p\,dx
\longrightarrow\infty
\qquad(p>1).
\tag{CMM.7}
```

Clarkson sees the cost only after \(p>1\) control is assumed.  It does not
produce that control.

## 2. Clarkson does not stop time-separated profile switching by itself

Uniform convexity compares two functions in the same norm space at the same
level of observation.  The Zeno packet can switch profiles in disjoint
renormalized time windows:

```math
u_m(s)
=
U_1\,{\bf 1}_{I_{m,1}}(s)
+
U_2\,{\bf 1}_{I_{m,2}}(s),
\qquad
I_{m,1}\cap I_{m,2}=\varnothing.
\tag{CMM.8}
```

Clarkson can compare \(U_1\) and \(U_2\) after the proof places them inside one
common \(L^p\) orbit with a near-equality defect.  The current gold obstruction
is earlier: it has not yet produced the unweighted \(L_s^p\) orbit control on
the actual selected carrier.

So the real prerequisite is:

```math
\boxed{
\text{compact renormalized }L^p\text{ orbit or same-carrier source-square}
}
\tag{CMM.9}
```

not Clarkson alone.

## 3. Minkowski: finite summation and norm exchange, not lower coercion

Minkowski is the triangle inequality in \(L^p\):

```math
\|f+g\|_p
\le
\|f\|_p+\|g\|_p.
\tag{CMM.10}
```

The integral version gives

```math
\left(
\int_{S_2}
\left|
\int_{S_1}F(x,y)\,d\mu_1(x)
\right|^p
d\mu_2(y)
\right)^{1/p}
\le
\int_{S_1}
\left(
\int_{S_2}|F(x,y)|^p\,d\mu_2(y)
\right)^{1/p}
d\mu_1(x).
\tag{CMM.11}
```

This is useful for finite lobe summability and for exchanging an already-known
\(L^p\) bound through a finite packet or mode decomposition:

```math
\boxed{
\sum_{\ell=1}^{L} \|a_\ell\|_{L^p}
\text{ finite}
\Longrightarrow
\left\|\sum_{\ell=1}^{L}a_\ell\right\|_{L^p}
\text{ controlled}.
}
\tag{CMM.12}
```

It does not give the reverse estimate needed for hidden positive-part mass.
For signed pieces,

```math
f=A{\bf 1}_{I_1},
\qquad
g=-A{\bf 1}_{I_1},
\tag{CMM.13}
```

one has

```math
\|f+g\|_p=0,
\qquad
\|f_+\|_p=A|I_1|^{1/p}.
\tag{CMM.14}
```

Thus a norm of the sum cannot recover positive-part source unless the proof has
a polar/signed-saturation identity that keeps the positive and negative
partners on the same ledger.

Minkowski is therefore a legal summability consumer for the already installed
finite lobe expansion.  It is not a same-carrier positive-source producer.

## 4. Minkowski equality cases are alignment diagnostics, not anti-atoms

For \(1<p<\infty\), equality in Minkowski requires positive linear dependence
of the summands.  This could diagnose profile alignment if the proof already
knows that a packet decomposition nearly saturates the triangle inequality:

```math
\left\|\sum_i f_i\right\|_p
\approx
\sum_i\|f_i\|_p.
\tag{CMM.15}
```

The gold route does not currently have `(CMM.15)` for the terminal selected
positive source.  It has an \(L^1\)-type participation ledger and a missing
superlinear square ledger.  Equality-case rigidity cannot start before the
norm whose equality is being tested has been produced.

## 5. Mahler: geometric means need a positive shell floor

Mahler's inequality for positive sequences says

```math
\left(\prod_{k=1}^{n}(x_k+y_k)\right)^{1/n}
\ge
\left(\prod_{k=1}^{n}x_k\right)^{1/n}
+
\left(\prod_{k=1}^{n}y_k\right)^{1/n},
\qquad
x_k,y_k>0.
\tag{CMM.16}
```

The tempting interpretation is shell sharing: if every shell participates
positively, a multiplicative average might force a global payment.  The problem
is that the terminal obstruction does not give a positive lower floor in every
shell/time slot.

Take

```math
x_1=1,\qquad x_k=\varepsilon\quad(2\le k\le n).
\tag{CMM.17}
```

Then the arithmetic mass is bounded below:

```math
\sum_{k=1}^{n}x_k
=
1+(n-1)\varepsilon,
\tag{CMM.18}
```

but the geometric mean collapses:

```math
\left(\prod_{k=1}^{n}x_k\right)^{1/n}
=
\varepsilon^{(n-1)/n}
\longrightarrow0.
\tag{CMM.19}
```

So Mahler cannot turn total participation mass into a uniform shell payment
unless the proof already has a lower bound

```math
x_k\ge c>0
\quad\text{for every active shell/time slot}.
\tag{CMM.20}
```

That lower bound is stronger than the participation law and is not installed.
It would be a source-residence or no-free-refill theorem in different
language.

## 6. Mahler does not survive Zeno sparsity

The terminal Zeno schedule can make the active shell/time entries sparse:

```math
x_k^{(m)}
=
\begin{cases}
1,&k=k_m,\\
\varepsilon_m,&k\ne k_m,
\end{cases}
\qquad
\varepsilon_m\downarrow0.
\tag{CMM.21}
```

For each fixed \(m\), all entries are positive, so Mahler applies formally.
But the geometric mean tends to zero:

```math
\left(\prod_{k=1}^{n}x_k^{(m)}\right)^{1/n}
=
\varepsilon_m^{(n-1)/n}
\longrightarrow0.
\tag{CMM.22}
```

Thus the inequality has no coercive lower output in the terminal limit.  To get
one, the proof must install a uniform residence/floor condition, which is
exactly what the terminal pulse is denying.

## 7. Exact route classification

Clarkson can be used only as:

```math
\boxed{
\text{same-carrier }L^p\text{ reserve}
+
\text{convexity defect}
\Longrightarrow
\text{alignment / no profile splitting}.
}
\tag{CMM.23}
```

Minkowski can be used only as:

```math
\boxed{
\text{already-paid }L^p\text{ family bounds}
\Longrightarrow
\text{finite lobe / packet summability}.
}
\tag{CMM.24}
```

Mahler can be used only as:

```math
\boxed{
\text{uniform positive shell floor}
\Longrightarrow
\text{multiplicative participation lower bound}.
}
\tag{CMM.25}
```

None of these hypotheses is supplied by current finite \(L^1\) participation
control, local energy, pressure recovery, finite packet overlap, or finite
mode rank.

## Verdict

The norm-convexity and geometric-mean branch is exhausted as an independent
gold supplier.

It returns to the same exact wall:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{CMM.26}
```

or one of its concrete equivalents: same-carrier source-square, selected
critical-strain/normalized CKN carrier UI, strict no-waste with a real critical
action, selected polar saturation/no-free Zeno donor chain, or a source
residence theorem strong enough to supply a positive shell floor.
