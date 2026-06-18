# Capwise Signed Defect Positivity Theorem Candidate

## Status

First reserve globalization theorem downstream of the live local operator route.

This note should be read only after the local packet in
[frozen-cap-pair-bilinear-form-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-cap-pair-bilinear-form-lemma.md)
and
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).

It is **not** installed. It records the first genuinely new theorem required to
turn the local capwise operator control into a coercivity-rigidity program.

## Motivation

The local frozen packet theorem gives an unsigned estimate

```math
\sum_{(\omega,\omega')\in\mathcal R_j}
\big|
\Lambda^{frozen}_{j,\omega,\omega'}(u_{j,\omega},u_{j,\omega'})
\big|
\le C_{\mathrm{froz}}
C_G\,N_{\mathrm{cap}}\,\rho_j\,2^j
\sum_\omega \|u_{j,\omega}\|_{L^2_a}^2,
\tag{CSD.0}
```

and therefore also

```math
\left|
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{frozen}_{j,\omega,\omega'}(u_{j,\omega},u_{j,\omega'})
\right|
\le C_{\mathrm{froz}}
C_G\,N_{\mathrm{cap}}\,\rho_j\,2^j
\sum_\omega \|u_{j,\omega}\|_{L^2_a}^2,
\tag{CSD.0'}
```

up to the packet-freezing remainder. This controls size, but it does not yet
yield a positive defect, a coercive energy, or a rigidity mechanism.

The first missing globalization theorem is therefore a sign theorem.

## Symmetrized Defect

Represent the frozen cap-pair form by the shell-local kernel operators

```math
\Lambda^{frozen}_{j,\omega,\omega'}(f,g)
:=
\langle K^{(j)}_{\omega,\omega'}f,g\rangle_{L^2_a},
\qquad
K^{(j)}_{\omega,\omega'}=0
\quad\text{for }(\omega,\omega')\notin\mathcal R_j.
\tag{CSD.1a}
```

Then define the symmetrized frozen cap-pair form by

```math
\Lambda^{sym}_{j,\omega,\omega'}(f,g)
:=
\frac12\Big(
\Lambda^{frozen}_{j,\omega,\omega'}(f,g)
+
\overline{\Lambda^{frozen}_{j,\omega',\omega}(g,f)}
\Big).
\tag{CSD.1}
```

Equivalently, the symmetrized kernel is

```math
K^{sym,(j)}_{\omega,\omega'}
:=
\frac12\Big(
K^{(j)}_{\omega,\omega'}
+
(K^{(j)}_{\omega',\omega})^*
\Big).
\tag{CSD.1b}
```

Then define the shell defect functional

```math
\mathfrak D_j(u_j)
:=
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{sym}_{j,\omega,\omega'}(u_{j,\omega},u_{j,\omega'})
\tag{CSD.2}
```

on the same capwise operator carrier.

## Candidate Theorem

The exact signed theorem needed for globalization is:

```math
\boxed{
\mathfrak D_j(u_j)
\ge
\kappa_j
\sum_\omega \|u_{j,\omega}\|_{L^2_a}^2
-
\mathrm{Err}_j^{sign}(u_j)
-
\mathcal R_j^{freeze}(u_j,u_j).
}
\tag{CSD.3}
```

Here:

- `\kappa_j` is the shell-local coercive coefficient on the upgraded carrier;
- `\mathcal R_j^{freeze}` is the same packet-freezing remainder from
  [frozen-cap-pair-bilinear-form-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-cap-pair-bilinear-form-lemma.md);
- `\mathrm{Err}_j^{sign}` collects the skew / non-coercive part of the
  symmetrized cap-pair interaction that is not absorbed by the positive defect.

Unsigned capwise control does not identify the scale of `\kappa_j`.  The scale
law
`c_K2^j\rho_j\le \kappa_j\le C_K2^j\rho_j`, or one of its bridge-normalized
variants, is a separate carrier-normalization theorem to be proved through the
upgraded-carrier bridge measures now tracked elsewhere on the lane.

This theorem is the exact missing bridge from unsigned capwise control to a
coercive quantity.

## Matrix Reduction

Because `\Lambda^{sym}` is carried by the self-adjoint cap graph kernel
`K^{sym,(j)}_{\omega,\omega'}`, the sign problem first reduces to the
shell-local quadratic-form lower bound

```math
\sum_{\omega,\omega'}
\langle
K^{sym,(j)}_{\omega,\omega'}u_{j,\omega},
u_{j,\omega'}
\rangle_{L^2_a}
\ge
\kappa_j
\sum_\omega \|u_{j,\omega}\|_{L^2_a}^2
-
\mathrm{Err}_j^{sign}(u_j).
\tag{CSD.4}
```

This separates the analytic kernel estimates from the positivity mechanism.
On the current theorem surface, the honest sign routes are now exactly:

1. Gershgorin / diagonal-dominance on the finite-valence cap graph;
2. a positive Fourier symbol on the cap adjacency operator;
3. a symmetrized square completion on the frozen carrier.

The first algebraic checkpoint on the Gershgorin route is already explicit.
Define the diagonal coercive scale and the off-diagonal leakage by

```math
d_{j,\omega}
:=
\inf_{\|f\|_{L^2_a}=1}
\langle
K^{sym,(j)}_{\omega,\omega}f,f
\rangle_{L^2_a},
\qquad
o_{j,\omega}
:=
\sum_{\omega'\neq\omega}
\big\|K^{sym,(j)}_{\omega,\omega'}\big\|_{L^2_a\to L^2_a}.
\tag{CSD.5a}
```

If one can prove the cap-graph diagonal-dominance condition

```math
d_{j,\omega}-o_{j,\omega}\ge \kappa_j
\qquad\text{for every active cap }\omega,
\tag{CSD.5}
```

then Gershgorin / Schur-type control yields `(CSD.4)` and hence the signed
theorem reduces to absorbing `\mathrm{Err}_j^{sign}` and
`\mathcal R_j^{freeze}`.

Equivalently, the safest theorem-grade way to package the sign scale is to
define the net cap-graph coercive coefficient

```math
\kappa_j^{net}
:=
\inf_{\omega\ \mathrm{active}}
\big(d_{j,\omega}-o_{j,\omega}\big).
\tag{CSD.5b}
```

Then `(CSD.5)` is exactly the statement `\kappa_j^{net}\ge\kappa_j`, and the
signed theorem can be restated with `\kappa_j:=\kappa_j^{net}`. Only after that
net coefficient is identified should one try to prove a scale law such as
`c_K2^j\rho_j\le \kappa_j^{net}\le C_K2^j\rho_j`.

A convenient theorem-grade sufficient hypothesis is therefore:

```math
\langle H^{(j)}_{\omega,\omega}f,f\rangle_{L^2_a}
\ge
c_{\mathrm{diag}}\Lambda_j\|f\|_{L^2_a}^2,
\tag{CSD.5c}
```

and

```math
\sum_{\omega'\neq\omega}
\|H^{(j)}_{\omega,\omega'}\|_{L^2_a\to L^2_a}
\le
c_{\mathrm{off}}\Lambda_j,
\tag{CSD.5d}
```

with

```math
c_{\mathrm{diag}}-c_{\mathrm{off}}>0.
\tag{CSD.5e}
```

Then

```math
\kappa_j^{net}
\ge
(c_{\mathrm{diag}}-c_{\mathrm{off}})\Lambda_j,
\tag{CSD.5f}
```

and the signed shell-local positivity theorem follows with
`\kappa_j:=(c_{\mathrm{diag}}-c_{\mathrm{off}})\Lambda_j`.

This is better than fixing `\Lambda_j` by a two-sided `2^j\rho_j` scale law too early: the theorem is
stable under route churn, and the exact carrier normalization can be identified
after the diagonal and edge estimates are actually proved.

Equivalently, the exact block-Gershgorin positivity theorem on the cap packet
space is:

```math
\boxed{
\mathfrak D_j[u]
\ge
\kappa_j^{net}
\sum_{\omega\in\Omega_j}\|u_{j,\omega}\|_{L^2_a}^2
}
\qquad\text{with}\qquad
\kappa_j^{net}:=\inf_{\omega\ \mathrm{active}}(d_{j,\omega}-o_{j,\omega}).
\tag{CSD.5g}
```

So the genuine theorem burden is not “prove positivity at scale `2^j\rho_j`”
but rather “prove a positive net cap-graph margin.” Any later scale law is a
separate identification theorem for `\kappa_j^{net}`.

This abstract reduction is already proved. Write
`x_\omega:=\|u_{j,\omega}\|_{L^2_a}`. Because the cap graph kernel is Hermitian,

```math
\mathfrak D_j[u]
=
\sum_\omega
\langle H^{(j)}_{\omega,\omega}u_{j,\omega},u_{j,\omega}\rangle
+
2\sum_{\omega<\omega'}
\Re\langle H^{(j)}_{\omega,\omega'}u_{j,\omega},u_{j,\omega'}\rangle.
\tag{CSD.5h}
```

The diagonal contribution obeys

```math
\sum_\omega
\langle H^{(j)}_{\omega,\omega}u_{j,\omega},u_{j,\omega}\rangle
\ge
\sum_\omega d_{j,\omega}\,x_\omega^2.
\tag{CSD.5i}
```

For each unordered active pair, Cauchy and `2ab\le a^2+b^2` give

```math
2\Re\langle H^{(j)}_{\omega,\omega'}u_{j,\omega},u_{j,\omega'}\rangle
\ge
-2\|H^{(j)}_{\omega,\omega'}\|\,x_\omega x_{\omega'}
\ge
-\|H^{(j)}_{\omega,\omega'}\|\,(x_\omega^2+x_{\omega'}^2).
\tag{CSD.5j}
```

Summing `(CSD.5j)` over `\omega<\omega'` yields

```math
2\sum_{\omega<\omega'}
\Re\langle H^{(j)}_{\omega,\omega'}u_{j,\omega},u_{j,\omega'}\rangle
\ge
-\sum_\omega o_{j,\omega}\,x_\omega^2.
\tag{CSD.5k}
```

Combining `(CSD.5h)`-`(CSD.5k)` gives

```math
\mathfrak D_j[u]
\ge
\sum_\omega (d_{j,\omega}-o_{j,\omega})x_\omega^2
\ge
\kappa_j^{net}\sum_\omega x_\omega^2,
\tag{CSD.5l}
```

which is exactly `(CSD.5g)`. So the theorem `(CSD-net)` is discharged
algebraically; the remaining live burden is only to prove that
`\kappa_j^{net}>0` on the chosen carrier.

There is also a sharper cap-graph reduction that exposes the remaining sign
burden in the exact same weighted-adjacency language as the local operator
packet. Let

```math
\Sigma_{j,\omega}^{edge}
:=
\sum_{\omega'\neq\omega}\Theta_j(\omega,\omega'),
\tag{CSD.5m}
```

where `\Theta_j` is the cap-graph weight from the frozen local operator theorem.
Assume the off-diagonal frozen kernels obey the weighted bound

```math
\|H^{(j)}_{\omega,\omega'}\|_{L^2_a\to L^2_a}
\le
C_{\mathrm{edge}}\Lambda_j\,\Theta_j(\omega,\omega')
\qquad(\omega\neq\omega').
\tag{CSD.5n}
```

Then

```math
o_{j,\omega}
\le
C_{\mathrm{edge}}\Lambda_j\,\Sigma_{j,\omega}^{edge},
\tag{CSD.5o}
```

and therefore

```math
\kappa_j^{net}
\ge
\inf_{\omega\ \mathrm{active}}
\Big(
d_{j,\omega}
-
C_{\mathrm{edge}}\Lambda_j\,\Sigma_{j,\omega}^{edge}
\Big).
\tag{CSD.5p}
```

In particular, if the diagonal blocks satisfy

```math
d_{j,\omega}\ge d_j^{diag}
\qquad\text{for every active cap }\omega,
\tag{CSD.5q}
```

and the weighted cap-neighbor mass is uniformly bounded by

```math
\Sigma_{j,\omega}^{edge}\le \Sigma_j^{edge}
\qquad\text{for every active cap }\omega,
\tag{CSD.5r}
```

then

```math
\kappa_j^{net}
\ge
d_j^{diag}-C_{\mathrm{edge}}\Lambda_j\,\Sigma_j^{edge}.
\tag{CSD.5s}
```

If the chosen cap carrier further satisfies the finite-valence angular bound

```math
\Sigma_j^{edge}\le N_{\mathrm{cap}}\rho_j,
\tag{CSD.5t}
```

then the sign burden reduces to the single diagonal-dominance inequality

```math
d_j^{diag}
>
C_{\mathrm{edge}}N_{\mathrm{cap}}\rho_j\,\Lambda_j,
\tag{CSD.5u}
```

which yields

```math
\kappa_j^{net}
\ge
d_j^{diag}
-
C_{\mathrm{edge}}N_{\mathrm{cap}}\rho_j\,\Lambda_j
>0.
\tag{CSD.5v}
```

So the reserve sign route is now even sharper: it is no longer merely “prove a
positive net cap-graph margin,” but “prove that the diagonal frozen cap
contribution dominates the weighted total mass of neighboring cap couplings.”

It is convenient to package that remaining sign burden into one scalar margin.
Define

```math
m_j^{sign}
:=
d_j^{diag}-C_{\mathrm{edge}}\Lambda_j\,\Sigma_j^{edge}.
\tag{CSD.5w}
```

Then `(CSD.5s)` becomes

```math
\kappa_j^{net}\ge m_j^{sign}.
\tag{CSD.5x}
```

On a finite-valence angular carrier, `(CSD.5t)` further gives the sharper
specialization

```math
m_j^{sign,\rho}
:=
d_j^{diag}-C_{\mathrm{edge}}N_{\mathrm{cap}}\rho_j\,\Lambda_j,
\tag{CSD.5y}
```

with

```math
\kappa_j^{net}\ge m_j^{sign,\rho}.
\tag{CSD.5z}
```

So the reserve sign packet has now collapsed to one exact quantitative gate:
prove that the relevant sign margin is positive on the chosen cap carrier.
The clean bundled geometric verification target for that sign margin is now
recorded separately in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md),
where the selector balancing law `(TPS.3)` / `(TPS.3a)` is designed to force
`m_j^{sign}>0` on the same geometry.

## Honest Burden

Nothing in the current local packet proves `(CSD.3)`. To install it, one still
needs:

1. an exact kernel-level symmetrization identity for the frozen projected
   cap-pair form;
2. a positive lower bound of the form `(CSD.4)` on the symmetrized active-cap
   quadratic form with abstract coercive scale `\kappa_j`;
3. absorption of the packet-freezing remainder and any skew residual on the same
   lower-order carrier.

The carrier normalization question
`c_K2^j\rho_j\le \kappa_j\le C_K2^j\rho_j` comes only after one of those
positivity mechanisms is fixed.

So the present note is a candidate theorem, not a discharge.

## Consequence If Proved

If `(CSD.3)` were installed, then the reserve globalization note
[cap-null-coercivity-rigidity-globalization-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/cap-null-coercivity-rigidity-globalization-program.md)
would become active through its first step `(CNCR.1)`: the capwise operator
carrier would finally support a signed defect, and the next honest burden would
be a renormalized coercive shell energy.

Until then, the live frontier remains local:

```math
\text{WEP.2'}
\quad+\quad
\text{FCP.5 plus the hypothesis verification for }(FCP-cell)\text{ on the same capwise carrier}
\Longrightarrow
\text{WERS.2b / WERS.2s}.
```
