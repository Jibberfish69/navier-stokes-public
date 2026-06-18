# Weighted Exact-Projection Resonant Shell Theorem Candidate

## Status

Candidate companion theorem to
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md).
The reserve Lemma 4B route is no longer blocked by abstract Hodge reduction or
by source localization. It is blocked by:

1. the low-high commutator theorem `(WEP.2')`, and
2. one same-depth finite-collar resonant shell theorem on the same exact
   weighted-projection carrier.

This note isolates the second theorem.

For the current live route, this reserve theorem is formulated on the
torus-first internal branch. All frequencies below are torus Fourier lattice
modes, and every shell statement is a dyadic shell restriction on that periodic
spectral surface. Any whole-space analogue is downstream export only.

## Carrier

Assume the same metric hypotheses as in `(WEP.A1)`:

```math
\lambda |\eta|^2
\le
\eta\cdot G(a)\eta
\le
\Lambda |\eta|^2,
\qquad
\|G\|_{C_a^{1,1}}
\le
M.
\tag{WERS.0}
```

Let

```math
L_G f:=-\operatorname{div}_a(G\nabla_a f),
\qquad
\Pi_G^{ex}:=-G\nabla_aL_G^{-1}\operatorname{div}_a.
\tag{WERS.0a}
```

Here `L_G^{-1}` denotes the inverse of `L_G` on mean-zero scalar fields on
`\mathbb T^3`.

For shell-localized inputs define the pressure carrier by

```math
|X|_{\mathsf{Press}_j}
:=
|\Pi_G^{ex}X|_{L^2_{G^{-1}}},
\qquad
\mathcal B_G(X,Y)
:=
\langle \Pi_G^{ex}X,\Pi_G^{ex}Y\rangle_{L^2_{G^{-1}}}.
\tag{WERS.0b}
```

The resonant inputs are the finite-collar packets `\mathcal Z_{\alpha,j}^{res}`
coming from the derivative-LP bridge:
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md).
Only this packet is genuinely same-depth and same-scale on the reserve route.

## Projected Resonant Symbol

Let `f_j,g_j` be torus shell-localized fields with Fourier support on lattice
modes `\xi,\eta\in\mathbb Z^3\setminus\{0\}` satisfying
`2^{j-1}\le|\xi|,|\eta|,|\xi+\eta|\le2^{j+1}`. Denote by
`b_G(a,\xi,\eta)` the bilinear symbol seen by the shellwise resonant pressure
interaction after the exact projector carrier has been inserted into
`\mathcal B_G`.

Equivalently, `b_G` is the symbol governing the shellwise form

```math
\mathcal B_G^{res,j}(f_j,g_j)
:=
\mathcal B_G(f_j,g_j)
\qquad
\text{with both inputs restricted to }2^{j-1}\le|\xi|\le2^{j+1}.
\tag{WERS.1}
```

The theorem should not attack `b_G` monolithically. The correct split is

```math
b_G(a,\xi,\eta)
=
b_G^{main}(a,\xi,\eta)
+
b_G^{rem}(a,\xi,\eta),
\tag{WERS.1a}
```

where:

- `b_G^{main}` is the frozen-coefficient exact-projected resonant symbol,
  obtained by inserting the principal projector symbol `p_G(a,\zeta)` into the
  resonant shell interaction and keeping only the genuine finite-collar main
  term;
- `b_G^{rem}` contains exactly the terms with at least one projector remainder
  `R_{G,j}`, one shell/projector commutator, or one extra metric defect beyond
  the frozen projected resonant term, after those terms have been proved to
  satisfy the remainder bound `(WERS.3a)` below.

The point of this split is that `(WEP.2')` demotes projector defects by one
shell factor `2^{-j}` only for terms satisfying the displayed remainder bound.
Any term not satisfying `(WERS.3a)` remains in the same-depth theorem burden
rather than being assigned to `b_G^{rem}` by notation.

## Theorem Pair

The reserve shell theorem should be stated as:

```math
\boxed{
|\mathcal B_G^{res,j}(f_j,g_j)|
\le
\varepsilon D_j
+
C_\varepsilon\,\mathrm{lot}_j,
}
\tag{WERS.2}
```

where `D_j` is the shellwise same-depth dissipation ledger and
`\mathrm{lot}_j` collects admitted coefficient / residual terms.

Equivalently, one may phrase the same reserve burden on the shell-summed
carrier:

```math
\boxed{
\sum_j|\mathcal B_G^{res,j}(f_j,g_j)|
\le
\varepsilon\sum_j D_j
+
C_\varepsilon\sum_j\mathrm{lot}_j.
}
\tag{WERS.2s}
```

The right internal split is:

```math
\mathcal B_G^{res,j}
=
\mathcal B_{G,main}^{res,j}
+
\mathcal B_{G,rem}^{res,j},
\tag{WERS.2a}
```

with targets

```math
\boxed{
|\mathcal B_{G,main}^{res,j}(f_j,g_j)|
\le
\varepsilon D_j
+
C_\varepsilon\,\mathrm{lot}_j,
}
\tag{WERS.2b}
```

and

```math
\boxed{
|\mathcal B_{G,rem}^{res,j}(f_j,g_j)|
\le
C_{rem,G}\,2^{-j}\,
\|f_j\|_{\mathsf{SameDepth}_j}\,
\|g_j\|_{\mathsf{SameDepth}_j},
}
\tag{WERS.2c}
```

where

```math
C_G:=P(\lambda^{-1},\Lambda,\|G\|_{C_a^{1,1}}).
\tag{WERS.2d}
```

After summation, `(WERS.2c)` should fall onto the same coefficient or
lower-order ledger already used on the low-high side. So the genuinely new
theorem debt is `(WERS.2b)`.

## Symbol-Level Targets

The correct symbolic formulation is:

```math
|b_G^{main}(a,\xi,\eta)|
\le
C_G\,\theta_j,
\tag{WERS.3}
```

where `\theta_j` is the shellwise resonant gain supplied by the same-scale /
finite-collar geometry already present in the route, and

```math
|b_G^{rem}(a,\xi,\eta)|
\le
C_G\,2^{-j}.
\tag{WERS.3a}
```

Thus a projector replacement error belongs to `b_G^{rem}` only after the
estimate `(WERS.3a)` has been proved for that term. The split does not assume
that every projector error is residual-admissible; it makes membership in
`b_G^{rem}` a checked shell-symbol estimate.

For a proof-ready shell theorem, the honest live burden is sharper than
`(WERS.3)`: it is one derivative shell-symbol estimate. Namely, for some fixed
`N` large enough for bilinear Coifman-Meyer theory,

```math
\boxed{
|\partial_\xi^\alpha\partial_\eta^\beta b_{G,j}^{main}(a,\xi,\eta)|
\le
C_{\alpha,\beta}\,C_G\,\rho_j\,2^{j(1-|\alpha|-|\beta|)}
\qquad (|\alpha|+|\beta|\le N),
}
\tag{WERS.3R}
```

on the resonant shell `2^{j-1}\le|\xi|,|\eta|,|\xi+\eta|\le2^{j+1}`, where `\rho_j`
is the exact resonant gain carried by the same-scale geometry. Once
`(WERS.3R)` is proved, the pure resonant theorem follows formally.

### Null-factor sufficient mechanism

One concrete route to `(WERS.3R)` is an angular null-factor on the exact
projected transport tensor. Define the complementary frozen projector

```math
\Pi_G^\sigma(a,\xi):=I-p_G(a,\xi).
\tag{WERS.3N0}
```

Since `p_G(a,\xi)` has kernel `\{w:\xi\cdot w=0\}`, one has

```math
\xi\cdot \Pi_G^\sigma(a,\xi)U=0,
\qquad
\eta\cdot \Pi_G^\sigma(a,\eta)V=0.
\tag{WERS.3N1}
```

Suppose the frozen principal resonant transport tensor can be written on the
shell in the factorized form

```math
b_{G,j}^{main}(a,\xi,\eta)
=
\chi_j(\xi)\chi_j(\eta)\chi_j(\zeta)\,
\Pi_G^\sigma(a,\zeta)\,
\mathbf T_G(a,\xi,\eta)\big(\Pi_G^\sigma(a,\xi),\Pi_G^\sigma(a,\eta)\big),
\qquad \zeta=\xi+\eta,
\tag{WERS.3N2}
```

with exactly one transport derivative falling on one projected input. Then one
derivative factor has the shape

```math
\eta\cdot \Pi_G^\sigma(a,\xi)U
\qquad\text{or}\qquad
\xi\cdot \Pi_G^\sigma(a,\eta)V.
\tag{WERS.3N3}
```

By `(WERS.3N1)`,

```math
\eta\cdot \Pi_G^\sigma(a,\xi)U
=
\Big(\eta-\frac{\eta\cdot\xi}{|\xi|^2}\xi\Big)\cdot \Pi_G^\sigma(a,\xi)U,
\tag{WERS.3N4}
```

and therefore

```math
|\eta\cdot \Pi_G^\sigma(a,\xi)U|
\le
|\eta|\,\sin\angle(\xi,\eta)\,|\Pi_G^\sigma(a,\xi)U|.
\tag{WERS.3N5}
```

The same bound holds with `(\xi,\eta)` exchanged. Consequently the principal
resonant symbol obeys the pointwise null-form estimate

```math
|b_{G,j}^{main}(a,\xi,\eta)|
\le
C_G\,2^j\,\sin\angle(\xi,\eta).
\tag{WERS.3N6}
```

If one now defines the angular thinness parameter of the resonant support by

```math
\rho_j
:=
\sup_{(\xi,\eta)\in\operatorname{supp} b_{G,j}^{main}}
\sin\angle(\xi,\eta),
\tag{WERS.3N7}
```

then `(WERS.3N6)` gives the base-size gain

```math
|b_{G,j}^{main}(a,\xi,\eta)|
\le
C_G\,\rho_j\,2^j.
\tag{WERS.3N8}
```

This is already enough to explain the shell coefficient in `(WERS.3B)`.
However, to recover the full derivative estimate `(WERS.3R)` with the same
`\rho_j` factor, one needs more than set-theoretic thinness of the support:
one needs the angular localization itself to be realized by symbol bounds whose
frequency derivatives continue to carry the same `\rho_j` gain. Put
differently, the null-factor route reduces `(WERS.3R)` to the pair of exact
sub-obligations:

```math
\boxed{
\text{(i) the projected transport symbol has the null factor }(WERS.3N3),
\qquad
\text{(ii) the resonant support is angularly thin at the symbol level.}
}
\tag{WERS.3N9}
```

Under `(WERS.3N9)`, the null-factor mechanism upgrades from the pointwise bound
`(WERS.3N8)` to the full derivative shell-symbol estimate `(WERS.3R)`.

### A concrete sufficient mechanism for `(WERS.3R)`

The cleanest candidate route to `(WERS.3R)` is an angular null-factor coming
from the divergence-free complementary projector

```math
\Pi_G^\sigma(a,\xi):=I-p_G(a,\xi).
\tag{WERS.3N0}
```

Because `p_G(a,\xi)` projects onto the exact `G`-gradient direction, one has

```math
\xi\cdot \Pi_G^\sigma(a,\xi)U=0,
\qquad
\eta\cdot \Pi_G^\sigma(a,\eta)V=0.
\tag{WERS.3N1}
```

So if the frozen projected resonant main symbol can be written in the form

```math
b_{G,j}^{main}(a,\xi,\eta)
=
\chi_j(\xi)\chi_j(\eta)\chi_j(\zeta)\,
\Pi_G^\sigma(a,\zeta)\,
\mathbf T_G(a,\xi,\eta)\,
\big(\Pi_G^\sigma(a,\xi),\Pi_G^\sigma(a,\eta)\big),
\qquad \zeta=\xi+\eta,
\tag{WERS.3N2}
```

with the transport tensor `\mathbf T_G` carrying one derivative on one
projected input, the differentiated factors under test have the shape

```math
\eta\cdot \Pi_G^\sigma(a,\xi)U
\qquad \text{or} \qquad
\xi\cdot \Pi_G^\sigma(a,\eta)V.
\tag{WERS.3N3}
```

Using `(WERS.3N1)`, one may rewrite

```math
\eta\cdot \Pi_G^\sigma(a,\xi)U
=
\Big(\eta-\frac{\eta\cdot\xi}{|\xi|^2}\xi\Big)\cdot \Pi_G^\sigma(a,\xi)U,
\tag{WERS.3N4}
```

and therefore obtain the angular gain

```math
|\eta\cdot \Pi_G^\sigma(a,\xi)U|
\le
|\eta|\,\sin\angle(\xi,\eta)\,|\Pi_G^\sigma(a,\xi)U|,
\tag{WERS.3N5}
```

with the symmetric estimate after exchanging `(\xi,\eta)`.

Under that factorization, the zeroth-order symbol bound improves to

```math
|b_{G,j}^{main}(a,\xi,\eta)|
\le
C_G\,2^j\,\sin\angle(\xi,\eta),
\tag{WERS.3N6}
```

on `2^{j-1}\le|\xi|,|\eta|,|\zeta|\le2^{j+1}`. Defining the resonant thinness
parameter

```math
\rho_j
:=
\sup_{(\xi,\eta)\in\operatorname{supp}b_{G,j}^{main}}
\sin\angle(\xi,\eta),
\tag{WERS.3N7}
```

one gets

```math
|b_{G,j}^{main}(a,\xi,\eta)|
\le
C_G\,\rho_j\,2^j.
\tag{WERS.3N8}
```

The correct microlocal realization of the remaining burden is therefore a
cap-localized resonant shell decomposition at angular scale `\rho_j`. Fix a
smooth radial shell cutoff `\chi_j(\xi)=\chi(2^{-j}\xi)` and cover the unit
sphere by finitely overlapping caps `\omega` of angular diameter comparable to
`\rho_j`. Choose a smooth partition of unity `\{\psi_{j,\omega}\}` on the shell
so that

```math
\sum_\omega \psi_{j,\omega}(\xi)=1
\quad\text{on }\operatorname{supp}\chi_j,
\qquad
|\partial_\xi^\alpha \psi_{j,\omega}(\xi)|
\le
C_\alpha\,2^{-j|\alpha|}\rho_j^{-|\alpha|}.
\tag{WERS.3N8a}
```

Define the cap-shell pieces

```math
\Delta_{j,\omega}f
:=
\mathcal F^{-1}\big(\chi_j(\xi)\psi_{j,\omega}(\xi)\widehat f(\xi)\big),
\tag{WERS.3N8b}
```

and write the projected resonant main symbol as the smooth cap-pair sum

```math
b_{G,j}^{main}(a,\xi,\eta)
:=
\sum_{\angle(\omega,\omega')\le C_{\angle}\rho_j}
\chi_j(\xi)\chi_j(\eta)\chi_j(\zeta)\,
\psi_{j,\omega}(\xi)\psi_{j,\omega'}(\eta)\,
\widetilde b_G(a,\xi,\eta),
\qquad \zeta=\xi+\eta,
\tag{WERS.3N8c}
```

where `\widetilde b_G` is the exact projected principal transport symbol.
Because the resonant relation is imposed at the cap level, the angular
localization is now `C^N`-stable rather than merely set-theoretic.

This converts the old vague condition “angle-thin support” into the exact
construction problem:

```math
\boxed{
\text{build the resonant carrier through caps of width }\rho_j
\text{ with derivative bounds }(WERS.3N8a).
}
\tag{WERS.3N8d}
```

Equivalently, the last construction burden can be frozen as the following
microlocal theorem packet:

```math
\boxed{
\begin{gathered}
\text{Choose a shell partition }1=\sum_\omega \psi_{j,\omega}(\xi)
\text{ on }2^{j-1}\le|\xi|\le2^{j+1}
\text{ with cap width }\rho_j,\\
|\partial_\xi^\alpha \psi_{j,\omega}(\xi)|
\le
C_\alpha\,2^{-j|\alpha|}\rho_j^{-|\alpha|},\\
b_{G,j}^{main}(a,\xi,\eta)
=
\sum_{\angle(\omega,\omega')\le C_{\angle}\rho_j}
\chi_j(\xi)\chi_j(\eta)\chi_j(\zeta)\,
\psi_{j,\omega}(\xi)\psi_{j,\omega'}(\eta)\,
\widetilde b_G(a,\xi,\eta),\\
\text{and prove that the active cap-pair region preserves the projected null
factor strongly enough to imply }(WERS.3R).
\end{gathered}
}
\tag{WERS.3Cap}
```

This is the exact cap-construction theorem now sitting between the pointwise
null-form gain `(WERS.3N8)` and the full derivative estimate `(WERS.3R)`.

Under `(WERS.3N8c)`, the pointwise null-factor estimate `(WERS.3N8)` is
automatic on every active cap pair. The full derivative estimate `(WERS.3R)`
then reduces to checking that the cap-cutoff derivative costs
`2^{-j}\rho_j^{-1}` are compatible with the null-factor gain for the fixed
finite derivative order `N`.

This compatibility is the real obstruction. A single first-order angular
vanishing does **not** by itself prove `(WERS.3R)` for all derivatives up to
order `N`. If the only installed information is the model upper bound

```math
\big|b_{G,j}^{main}\big|\le C_G\,2^j\,|\Theta_j|\,|q_G|,
\qquad
|\Theta_j|\le C_\Theta\rho_j,
\tag{WERS.3Cap.a}
```

then differentiating `k` times across `\rho_j`-scale cap cutoffs produces the
naive size

```math
|\partial^k b_{G,j}^{main}|
\le
C_{k,G}\,\rho_j^{1-k}\,2^{j(1-k)},
\tag{WERS.3Cap.b}
```

not the desired

```math
C_{k,G}\,\rho_j\,2^{j(1-k)}.
\tag{WERS.3Cap.c}
```

So a cap partition of width `\rho_j` is the right construction, but it is not
on its own sufficient. To close `(WERS.3R)`, one still needs one of the
following stronger mechanisms:

1. higher-order angular vanishing of the projected transport symbol, strong
   enough to compensate every cap-cutoff derivative up to order `N`;
2. a more rigid cap-pair symbol factorization in which the differentiated
   angular localizer continues to carry the same `\rho_j` gain;
3. a bilinear argument stronger than bare Coifman-Meyer, using capwise
   orthogonality or null-form structure directly instead of requiring all symbol
   seminorms to retain the same `\rho_j` factor.

These three mechanisms should now be treated as the exact theorem-grade upgrade
targets for `(WERS.3Cap)`:

```math
\boxed{
\text{(Cap-HV)}\quad
b_{G,j}^{main}\text{ has angular vanishing order }m\ge N+1.
}
\tag{WERS.3Cap-HV}
```

```math
\boxed{
\text{(Cap-RF)}\quad
b_{G,j}^{main}=\rho_j\,2^j\,\widetilde a_j
\text{ with }
|\partial_\xi^\alpha\partial_\eta^\beta \widetilde a_j|
\le
C_{\alpha,\beta,G}\,2^{-j(|\alpha|+|\beta|)}
}
\tag{WERS.3Cap-RF}
```

uniformly in `\rho_j`, and

```math
\boxed{
\text{(Cap-BO)}\quad
|\mathcal B_{G,j}^{main}(f_j,g_j)|_{\mathsf{Press}_j}
\le
C_G\,\rho_j\,2^j\|f_j\|_{L^2_a}\|g_j\|_{L^2_a}
}
\tag{WERS.3Cap-BO}
```

proved directly from cap-pair geometry, almost-orthogonality, or a `TT^*`
argument without requiring full `C^N` symbol control at the same `\rho_j`
level.

Thus `(WERS.3Cap)` is the correct microlocal construction problem, but the
route is still conditional until one of the three strengthening mechanisms
above is installed.

Among those three upgrades, `(WERS.3Cap-BO)` is now the primary route on the
current theorem surfaces. It bypasses the exact derivative-loss obstruction
behind bare Coifman-Meyer and asks only for a capwise operator theorem on the
exact projected carrier. The symbolic upgrades `(WERS.3Cap-HV)` and
`(WERS.3Cap-RF)` remain sufficient alternate routes because each of them would
reinstall `(WERS.3R)`, but they are no longer the preferred endpoint.

The clean operator-level target is written first as a frozen capwise
operator theorem. Split the same-depth main term as

```math
\mathcal B_{G,main}^{res,j}(f_j,g_j)
=
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
+
\mathcal R_j^{freeze}(f_j,g_j),
\tag{WERS.3Cap-0}
```

where `\Lambda^{frozen}_{j,\omega,\omega'}` is the scalar bilinear form obtained
from the frozen projected principal symbol on one active cap pair, and
`\mathcal R_j^{freeze}` is the coefficient-variation remainder from freezing on
the packet scale. That freezing remainder may be assigned to the
already-budgeted projector / metric defect carrier only after it satisfies the
same remainder test as `b_G^{rem}`, namely a bound of the form

```math
|\mathcal R_j^{freeze}(f_j,g_j)|
\le
C_G 2^{-j}\,\mathcal N_j(f_j,g_j),
\tag{WERS.3Cap-freeze}
```

with `\mathcal N_j` equal to the shell norm product used in the active
same-depth estimate. Until that bound is proved, the freezing error remains
part of the same-depth capwise theorem burden.

Because resonance is imposed by angular neighbors at width `\rho_j`, the active
cap graph has bounded valence:

```math
\sup_\omega \#\{\omega':(\omega,\omega')\in\mathcal R_j\}
+
\sup_{\omega'} \#\{\omega:(\omega,\omega')\in\mathcal R_j\}
\le
N_{\mathrm{cap}}.
\tag{WERS.3Cap-v}
```

With that interpretation, the clean operator-level target can be frozen as

```math
\boxed{
\left|
\sum_{(\omega,\omega')\in\mathcal R_j}
\Lambda^{frozen}_{j,\omega,\omega'}(f_{j,\omega},g_{j,\omega'})
\right|
\le
C_G\,N_{\mathrm{cap}}\,\rho_j\,2^j
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}.
}
\tag{WERS.3Cap-TT}
```

Here `\mathcal R_j` denotes the active cap pairs with
`\angle(\omega,\omega')\le C_{\angle}\rho_j`, and the right-hand side is exactly the
`C_G\,\rho_j\,2^j` gain already visible pointwise from the projected null
factor. The additional theorem content is capwise almost-orthogonality or a
`TT^*`-style bilinear argument strong enough to sum the active packet family
without demanding the full derivative-stable symbol gain `(WERS.3R)`. By
`(WERS.3Cap-v)`, the cap-pair summation is finite-valence rather than a raw
unstructured `\ell^1` sum.

After restoring the freezing remainder, the same shell bound becomes

```math
|\mathcal B_{G,main}^{res,j}(f_j,g_j)|
\le
C_G\,N_{\mathrm{cap}}\,\rho_j\,2^j
\Big(\sum_\omega \|f_{j,\omega}\|_{L^2_a}^2\Big)^{1/2}
\Big(\sum_{\omega'} \|g_{j,\omega'}\|_{L^2_a}^2\Big)^{1/2}
+
|\mathcal R_j^{freeze}(f_j,g_j)|.
\tag{WERS.3Cap-TT'}
```

This is the theorem shape that actually feeds `(WERS.2b)`: one frozen capwise
operator estimate plus one already-budgeted packet-freezing remainder.
That local packet has now been extracted into
[frozen-cap-pair-bilinear-form-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-cap-pair-bilinear-form-lemma.md),
where `(FCP.4)` is the pairwise frozen cap bound, `(FCP-graph)` is the already
discharged finite-valence cap-graph summation to `(FCP.5)`, and `(FCP.3b)` is
the packet-freezing remainder estimate. The capwise square-function step is
reduced to `(FCP-sq)` plus `(FCP-sq')`. The preferred strengthened local
discharge is `(FCP.3c)`, which demotes the freezing remainder onto the same
`2^{-j}` ledger as the projector defects.
Equivalently: after `(WEP.2')` has already removed `b_G^{rem}`, the last local
same-depth discharge is exactly the frozen capwise estimate plus the
packet-freezing remainder on that standalone packet.
On that packet, the freezing remainder is now reduced further to the abstract
cell-scale criterion `M_j^{coeff}r_j^{cell}\le \varepsilon_j`, so the live
local bridge no longer depends on prematurely fixing one exact packet diameter.
That same packet also now records the theorem-grade Hölder sufficient corollary
`M_j^{coeff}(r_j^{cell})^\alpha [a]_{C^\alpha}\le \varepsilon_j` as a concrete
local discharge route for `(FCP.3c)`.
It now also records the sharper dyadic sufficient discharge
`M_j^{coeff}r_j^{cell}\le c\,2^{-2j}`, and its Hölder variant
`M_j^{coeff}(r_j^{cell})^\alpha[a]_{C^\alpha}\le c\,2^{-2j}`, as explicit
routes from `(FCP.3b)` to the same-depth demotion `(FCP.3c)`, now packaged as
the dyadic implication `(FCP-shell)`.
The abstract implication `(FCP-cell)` is now discharged there, so the remaining
local burden is purely hypothesis verification on the chosen carrier.
The lane-local execution contract for that verification work is now recorded in
[closure-execution-contract.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/closure-execution-contract.md):
the local packet is judged only by whether the scalar freezing envelope
`\varepsilon_j^{freeze}` is forced onto the `2^{-2j}` ledger.

So the route remains conditional until the following exact items are checked on
the current theorem surfaces:

1. the projected resonant principal symbol really factors through
   `(WERS.3N2)` on the reserve carrier, and
2. the cap-localized resonant carrier `(WERS.3N8c)` is thin enough that
   `\rho_j` is absorbable or summable on the same reserve ledger, and
3. the chosen upgrade branch really closes:
   `(WERS.3Cap-BO)` by capwise operator geometry, or
   `(WERS.3Cap-HV)` / `(WERS.3Cap-RF)` by restoring `(WERS.3R)`.

Equivalently: cap localization is the right construction, but it only closes
the symbolic branch if the `\rho_j`-scale smoothness budget closes. The cleaner
primary endpoint is now the operator theorem `(WERS.3Cap-BO)` /
`(WERS.3Cap-TT)`. This is the exact place where the route has become purely
microlocal.

One further correction is important: this local operator theorem is still an
unsigned same-depth estimate. By itself it does **not** produce a positive
interaction defect, a coercive Lyapunov functional, or a global rigidity
mechanism. Any later coercivity/compactness-rigidity globalization must install
those objects as new theorem packets; they are not automatic consequences of
`(WERS.3Cap-TT)`.
The first missing globalization theorem is now frozen separately in
[capwise-signed-defect-positivity-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/capwise-signed-defect-positivity-theorem-candidate.md).
The reserve sign and dynamic packets are likewise scalarized there by the sign
margin `m_j^{sign}` and the boundary-transfer coefficient `\beta_J(\eta)`.
The clean bundled verification target for those three scalar gates is now
recorded separately in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md):
it treats the remaining work as one selector/localizer theorem candidate on top
of the classical carrier, rather than as a new carrier ontology.
That selector packet now makes one further distinction explicit: the local and
sign sides are reduced there to deterministic selector refinements, while the
only genuinely bespoke remaining theorem input is the transport-decorrelation
/ nonshadowing burden, now split there into a strong bad-set route and a weaker
shadow-time route. The Lagrangian nonshadowing specialization `(TPS.4h)`-`(TPS.4i)`
remains the strong gate, while the oriented pair-gap / derived-label criteria
`(TPS.4j)`-`(TPS.4q)` and coarea/transversality `(TPS.4x)`-`(TPS.4aa)` now feed
the weaker occupancy endpoint unless supplemented by a no-return theorem. The
strong mechanism is measure-linearized transverse expansion `(TPS.4r)`-`(TPS.4w)`
or any equivalent package, such as `TPS-strain-bundle`, that proves `(TPS.4i)`
directly. The normalized family theorem `(TPS.4ai)`-`(TPS.4am)` therefore now
packages one strong bad-set endpoint and one weak shadow-time endpoint. The
conservative primary target inside that family is now the named good-set theorem
`TPS-ns-good-set`.
Scalar selector labels are treated there only as derived corollaries, chart
refinements, or pair-gap potentials, not as primitive dynamic data. The
remaining NS-specific burden inside `TPS-ns-good-set` is now further reduced to
the lower-bound packets `(GS.15)` or `(GS.21)`.

On the symbolic branch, rescaling to unit frequency turns

```math
\widetilde b_j(\widetilde\xi,\widetilde\eta)
:=
2^{-j}b_{G,j}^{main}(a,2^j\widetilde\xi,2^j\widetilde\eta)
\tag{WERS.3R.a}
```

into a uniformly bounded Coifman-Meyer bilinear symbol on a fixed annulus, so

```math
\boxed{
|\mathcal B_{G,main}^{res,j}(f_j,g_j)|
\le
C\,C_G\,\rho_j\,2^j\,
\|f_j\|_{L^2_a}\,
\|g_j\|_{L^2_a}.
}
\tag{WERS.3B}
```

No additional pressure-output norm is needed here: `\mathcal B_G` is already a
scalar bilinear form on the exact carrier `(WERS.0b)`.

If one defines, on the reserve carrier,

```math
D_j:=\nu\,2^{2j}\|f_j\|_{L^2_a}^2,
\qquad
\mathrm{lot}_j:=\nu^{-1}C_G^2\rho_j^2\|g_j\|_{L^2_a}^2,
\tag{WERS.3C}
```

or any equivalent same-depth ledger pair, then Young's inequality converts
`(WERS.3B)` into

```math
\boxed{
|\mathcal B_{G,main}^{res,j}(f_j,g_j)|
\le
\varepsilon D_j
+
C_\varepsilon\,\mathrm{lot}_j,
}
\tag{WERS.3Y}
```

and summing over `j` yields the shell-summed form `(WERS.2s)`. So the pure
resonant theorem `(WERS.2b)` / `(WERS.2s)` is reduced either to the symbol
estimate `(WERS.3R)` on the symbolic branch, or directly to the capwise
operator estimate `(WERS.3Cap-BO)` / `(WERS.3Cap-TT)` on the preferred
microlocal branch.

In particular:

- every occurrence of `R_{G,j}` belongs to `b_G^{rem}` only after satisfying
  `(WERS.3a)` or the matching operator remainder estimate;
- every occurrence of `[\Delta_j,\Pi_G^{ex}]` belongs to `b_G^{rem}` only after
  satisfying `(WERS.3a)` or the matching operator remainder estimate;
- every extra coefficient variation beyond the frozen projected symbol belongs
  to `b_G^{rem}` only after satisfying `(WERS.3Cap-freeze)`.

This is the resonant analogue of the commutator theorem: all projector defects
must be proved lower-order before they are stripped off from the genuine
same-depth theorem.

## Proof Skeleton

The proof program is now short.

### Step 1. Insert the exact projector at the symbol level

Rewrite the resonant packet directly on the exact carrier and define the
projected resonant symbol `b_G(a,\xi,\eta)` from the start. Do **not** build
the resonant theorem first and insert `\Pi_G^{ex}` later, because that mixes
the true main term with projector defects.

### Step 2. Split main term from projector defects

Replace the full exact projector by the paradifferential principal symbol
`p_G(a,\zeta)` in the resonant interaction. The resulting frozen projected
symbol is `b_G^{main}`. Every leftover term is placed into `b_G^{rem}`.

### Step 3. Feed projector defects into `(WEP.2')`

Use
[weighted-exact-projection-commutator-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-commutator-theorem-candidate.md)
to demote `b_G^{rem}` to the coefficient ledger. This pays for every
low-high / shell-projector defect before the same-depth theorem is attacked.

### Step 4. Isolate one pure resonant theorem

After Step 3, the reserve 4B branch is reduced to proving `(WERS.2b)` for the
pure resonant main term `b_G^{main}`. There are now two sufficient ways to
close that last step on the current carrier:

1. the operator branch `(WERS.3Cap-BO)` / `(WERS.3Cap-TT)`, which proves the
   `C_G\,\rho_j\,2^j` shell bound directly by capwise almost-orthogonality or a
   `TT^*` argument and then feeds it into Young on the reserve ledger; or
2. the symbolic branch `(WERS.3Cap-HV)` / `(WERS.3Cap-RF)`, which reinstalls
   `(WERS.3R)` and then closes through `(WERS.3R)`-`(WERS.3Y)`.

The operator branch is now preferred because it bypasses the exact derivative
loss identified in `(WERS.3Cap.b)`.

On the operator branch, the proof skeleton is packetwise rather than symbolic:

1. freeze the projected principal symbol on each active cap pair and place every
   projector defect into `b_G^{rem}`, already controlled by `(WEP.2')`;
2. decompose `f_{j,\omega}` and `g_{j,\omega'}` into wave packets adapted to the
   shell caps of width `\rho_j`;
3. use the projected transport null factor to gain one factor `\rho_j` on each
   active cap pair;
4. use the bounded-valence cap geometry `(WERS.3Cap-v)` and packet almost-orthogonality
   to prove the frozen capwise operator estimate `(WERS.3Cap-TT)`;
5. absorb the packet-freezing remainder `\mathcal R_j^{freeze}` into the same
   lower-order carrier as `b_G^{rem}`, yielding `(WERS.3Cap-TT')`;
6. apply Young to `(WERS.3Cap-TT')` and reach `(WERS.2b)` / `(WERS.2s)`.

So the operator branch asks for a bilinear packet theorem on the exact carrier,
not for full `C^N` control of the resonant symbol.

## Route Reduction

The reserve Lemma 4B branch is therefore exactly

```math
\text{low-high projector commutator theorem }(WEP.2')
\quad+\quad
\big(
\text{capwise operator theorem }(WERS.3Cap-BO)\text{ / }(WERS.3Cap-TT)
\ \text{or}\
\text{shell symbol estimate }(WERS.3R)
\big)
\Longrightarrow
\text{pure resonant theorem }(WERS.2b)\text{ / }(WERS.2s)
\Longrightarrow
\text{reserve 4B closure.}
\tag{WERS.4}
```

If one prefers the shell-summed carrier, the same conclusion may be read
through `(WERS.2s)` instead of the single-shell coercive form. The operator
branch is now the primary route on disk; the symbolic branch remains a
secondary sufficient route if `(WERS.3Cap-HV)` or `(WERS.3Cap-RF)` can be
installed.
