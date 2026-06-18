# Pack.TTU Non-BKM Strain Mechanism Search

## Status

Failed search.

## Target

Find a mechanism weaker than

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

that still yields

```math
S_{pack,Q}\in L^1([t_0,T_*)).
```

Recall

```math
S_{pack,Q}(t)
=
\sup_{a\in A_Q(t)}
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

## Candidate 1: active-label restriction

The active-label supremum may be smaller than the full spatial supremum:

```math
S_{pack,Q}(t)\le \|\nabla u(t)\|_{L^\infty}.
```

This is a genuine weakening if the active label family avoids high-strain sets. Original data and energy/enstrophy do not give such avoidance. A material label can pass through a small high-strain region while the spacetime `L^2` budget remains finite.

Thus active-label restriction needs an additional geometric avoidance or good-scale theorem.

## Candidate 2: one-sided strain

Forward singular values require only

```math
\sup_a \lambda_{max}(S(\Phi(a,t),t)).
```

The pack gauge also includes inverse deformation. That inverse requires control of

```math
\sup_a -\lambda_{min}(S(\Phi(a,t),t)).
```

The full pack gauge therefore requires the two-sided operator norm of symmetric strain. One-sided strain cannot replace `S_pack,Q` for `\Gamma_pack,Q`.

## Candidate 3: localized Morrey / CKN control

A positive SCF-good cylinder gives local regularity by `ATD_m^\varepsilon`.
That regularity controls the strain on that cylinder.

Finite energy supplies such cylinders material-a.e. The pack ledger needs every active terminal label. The missing input is exactly

```math
GoodScale.TTU:
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

So localized CKN control helps after full good-scale coverage; it does not independently supply `Pack.TTU`.

## Candidate 4: BMO / logarithmic strain control

A logarithmic strain criterion can be weaker than full `L^\infty` gradient control, but it still requires a high-norm or critical-vorticity companion. In the present packet, this becomes a BKM-type continuation criterion rather than an original-data estimate.

## Verdict

No non-BKM original-data mechanism currently supplies

```math
S_{pack,Q}\in L^1([t_0,T_*)).
```

The remaining candidates either reduce to `GoodScale.TTU`, require one-sided/inverse control completion, or become BKM-type continuation assumptions.
