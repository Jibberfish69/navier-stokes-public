# Noncoherent Leakage Export Theorem

## Status

This note isolates the third post-refactor theorem debt:

```text
off-support carrier leakage
\longrightarrow
lower-order classical readout remainder.
```

Unlike the older bridge prose, this note works directly from the exact carrier
leakage identity and reduces the classical readout bound to a precise carrier
commutator theorem on the same support/readout/selector stack.

## Definitions

Fix a localization `Q_i`, a carrier mode `e_\beta\in K_D`, and define the
off-support leakage field

```math
L_{i,\beta}(X)
:=
P_\perp Q_i\mathbb P_D N_D(X)e_\beta.
```

By the exact carrier leakage identity,

```math
L_{i,\beta}(X)
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp
[\Delta_D,\;Q_i\mathbb P_D N_D(X)]e_\beta.
```

## Theorem NLE

Assume:

1. `s>\frac52`;
2. the inherited readout Sobolev comparison

   ```math
   \|\rho(Z)\|_{H^s(\mathbb R^3)}
   \le
   C_s\|Z\|_{H_D^s}
   ```

   holds on the bridge surface;
3. the reduced resolvent extends boundedly on `H_D^s`:

   ```math
   \|(\Delta_D-\lambda_\beta)^{-1}P_\perp Z\|_{H_D^s}
   \le
   g_{\beta,s}^{-1}\|Z\|_{H_D^s}.
   ```

Then

```math
\|\nabla \rho(L_{i,\beta}(X))\|_{L^\infty_x}
\le
C_s g_{\beta,s}^{-1}
\|P_\perp[\Delta_D,\;Q_i\mathbb P_D N_D(X)]e_\beta\|_{H_D^s}.
```

Using the exact commutator split

```math
[\Delta_D,Q_i\mathbb P_D N_D(X)]
=
[\Delta_D,Q_i]\mathbb P_D N_D(X)
+
Q_i\mathbb P_D[\Delta_D,N_D(X)],
```

one further obtains

```math
\|\nabla \rho(L_{i,\beta}(X))\|_{L^\infty_x}
\le
C_s g_{\beta,s}^{-1}
\Big(
\|[\Delta_D,Q_i]\mathbb P_D N_D(X)e_\beta\|_{H_D^s}
+
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|_{H_D^s}
\Big).
```

## Proof

By Sobolev embedding with `s>\frac52`,

```math
\|\nabla \rho(L_{i,\beta}(X))\|_{L^\infty_x}
\le C_s
\|\rho(L_{i,\beta}(X))\|_{H^s_x}.
```

Apply the inherited readout comparison:

```math
\|\rho(L_{i,\beta}(X))\|_{H^s_x}
\le
C_s\|L_{i,\beta}(X)\|_{H_D^s}.
```

Now use the exact leakage identity and the `H_D^s` reduced-resolvent bound:

```math
\|L_{i,\beta}(X)\|_{H_D^s}
\le
g_{\beta,s}^{-1}
\|P_\perp[\Delta_D,\;Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}.
```

Combining the three displayed inequalities proves the first estimate.

For the second, expand the commutator:

```math
[\Delta_D,Q_i\mathbb P_D N_D(X)]
=
[\Delta_D,Q_i]\mathbb P_D N_D(X)
+
Q_i[\Delta_D,\mathbb P_D]N_D(X)
+
Q_i\mathbb P_D[\Delta_D,N_D(X)].
```

On the inherited Hodge-compatible carrier surface,

```math
[\Delta_D,\mathbb P_D]=0,
```

so only the displayed two terms remain. Apply the triangle inequality. `\square`

## Corollary NLE\_H1

If, on the same bridge surface, the carrier commutator package is upgraded to
an `H_D^s` estimate of the form

```math
\|[\Delta_D,Q_i]\mathbb P_D N_D(X)e_\beta\|_{H_D^s}
+
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|_{H_D^s}
\le
\varepsilon\,\Xi_D(X)+C_{\varepsilon,i,\beta,s}\,\Phi(\mathcal E_D(X)),
```

then

```math
\|\nabla \rho(L_{i,\beta}(X))\|_{L^\infty_x}
\le
C_s g_{\beta,s}^{-1}
\big(
\varepsilon\,\Xi_D(X)+C_{\varepsilon,i,\beta,s}\,\Phi(\mathcal E_D(X))
\big).
```

So leakage export is reduced exactly to the carrier commutator theorem on the
readout-compatible Sobolev scale.

## Meaning

This is the honest third bridge surface after the ontology refactor.

The important point is that the leakage export problem no longer has to be
asked as a vague classical remainder question. The exact off-support term is
already known, and after readout it is controlled by:

1. one readout Sobolev comparison,
2. one reduced-resolvent bound on `H_D^s`,
3. one carrier commutator estimate.

So the only real remaining work is to lift the already-existing carrier
commutator package to the readout-compatible `H_D^s` scale strongly enough to
make the remainder lower-order at the classical viscous scale.

## Interfaces

- [carrier-block-closure-and-commutator-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/carrier-block-closure-and-commutator-reduction.md)
- [h1-carrier-leakage-direct-completion.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/h1-carrier-leakage-direct-completion.md)
- [carrier-commutator-coercive-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-commutator-coercive-lemma.md)
- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
