# LaTeX-Safe Four Lemma Statements

## Status

Closed lemma-statement audit.

## Lemma statements checked

The manuscript contains four `lemma` environments:

```text
Moving-cylinder regularity and affine excess
Terminal good-cover dichotomy and globalization
Endpoint contradiction
Terminal readout and continuation
```

The statements use only manuscript-level PDE language, with internal labels reserved for the appendix.

## LaTeX syntax check

The displayed equations in the lemma statements use standard `amsmath` syntax:

```text
D^+X_R+cN_R <= B_RX_R+C X_R^{1/2}N_R+F_R
X_R in L^infty, N_R in L^1, K_{<=m}^{avg,R} in L^1
sup_{t<T_*} ||u(t)||_{H^s(T^3)} < infinity
```

The theorem conclusion uses `u`, while `nu` is reserved for viscosity.

## Scope check

Each lemma is stated on the periodic manuscript surface and supports the periodic theorem on `T^3`.

## Verdict

The four lemma statements are LaTeX-safe and match the compressed proof spine.