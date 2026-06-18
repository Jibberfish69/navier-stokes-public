# Exact Segment Transport Collapses Pair-Projector Error

## Status

Active theorem-facing reduction note for the localized-projector exact-potential
subbranch.

Role: discharge the localized pair-projector error slot `(LPMR.19)` from the
installed exact segment-transport law.

## Purpose

In the honest localized-projector dynamics packet

```math
\texttt{Projector concentration}
+
\texttt{CoefficientDrift}
+
\texttt{PairProjectorError}
+
\texttt{LocalizationTail}
\Longrightarrow
\texttt{LPMC.26},
\tag{PPE.0}
```

the pair-projector error term only appears because the general projector ODE
`(PSJ+.25)` allows a direction-transport residual `E_{ab}`. On the exact-
potential simple-top branch, Proposition `PSJ+.5` already upgrades the pair
separation law to the exact segment transport

```math
\partial_s\xi_{ab}(s)
=
\mathcal M_J(a,b,s)\,\xi_{ab}(s),
\qquad
\mathcal M_J=\mathcal S_J+K_J^{seg},
\tag{PPE.1}
```

with no residual forcing. This note records the resulting exact projector
transport and the collapse of `(LPMR.19)`.

## Exact Pair-Projector Transport

Let

```math
e_{ab}(s):=\frac{\xi_{ab}(s)}{|\xi_{ab}(s)|},
\qquad
P_{ab}(s):=e_{ab}(s)e_{ab}(s)^\top.
\tag{PPE.2}
```

Assume `(PPE.1)` holds on one active window.

### Proposition `PPE.A`

Then `P_{ab}` obeys the exact Riccati-type law

```math
\partial_s P_{ab}
=
[K_J^{seg},P_{ab}]
+
\mathcal S_J P_{ab}
+
P_{ab}\mathcal S_J
-2\,\operatorname{tr}(\mathcal S_J P_{ab})\,P_{ab},
\tag{PPE.3}
```

with no residual error term.

#### Proof

Differentiate `e_{ab}=\xi_{ab}/|\xi_{ab}|` under `(PPE.1)`:

```math
\partial_s e_{ab}
=
(I-P_{ab})\mathcal M_J e_{ab}
=
(I-P_{ab})(\mathcal S_J+K_J^{seg})e_{ab}.
\tag{PPE.4}
```

Now

```math
\partial_s P_{ab}
=
(\partial_s e_{ab})e_{ab}^\top
+
e_{ab}(\partial_s e_{ab})^\top.
\tag{PPE.5}
```

Insert `(PPE.4)` and use `P_{ab}=e_{ab}e_{ab}^\top`. The symmetric part gives

```math
(I-P_{ab})\mathcal S_J P_{ab}
+
P_{ab}\mathcal S_J(I-P_{ab})
=
\mathcal S_J P_{ab}
+
P_{ab}\mathcal S_J
-2\,\operatorname{tr}(\mathcal S_JP_{ab})\,P_{ab},
\tag{PPE.6}
```

while the skew part gives

```math
(I-P_{ab})K_J^{seg}P_{ab}
+
P_{ab}(K_J^{seg})^\top(I-P_{ab})
=
[K_J^{seg},P_{ab}],
\tag{PPE.7}
```

because `(K_J^{seg})^\top=-K_J^{seg}`. Combining `(PPE.5)`-`(PPE.7)` yields
`(PPE.3)`. ∎

## Collapse Of The Localized Pair-Projector Error

In
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md),
the pair-projector residual enters through

```math
\partial_t P_J
=
[\Omega_J^{seg},P_J]
+
S_J^{seg}P_J+P_JS_J^{seg}
-2\,\operatorname{tr}(S_J^{seg}P_J)\,P_J
+
E_J^{pair}.
\tag{PPE.8}
```

### Corollary `PPE.B`

On the exact-potential subbranch supplied by Proposition `PSJ+.5`,

```math
E_J^{pair}\equiv 0,
\qquad
R_J^{pair}
=
\int a_JE_J^{pair}\,d\bar\nu_{J,x}
\equiv 0.
\tag{PPE.9}
```

Hence the weighted pair-projector budget

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
a_J\|E_J^{pair}\|_{\mathrm{op}}^2\,d\bar\nu_{J,x}\,dx\,dt
=
0,
\tag{PPE.10}
```

so `(LPMR.19)` is automatic on this subbranch.

#### Proof

Proposition `PSJ+.5` verifies Assumption `PSJ+.SST` with `\eta=0`, because the
pair separation law is exact. Therefore the residual term `E_{ab}` in
`(PSJ+.25)` vanishes. Rewriting that exact pair ODE in the localized notation
gives `(PPE.8)` with `E_J^{pair}=0`, and then `(PPE.9)`-`(PPE.10)` follow by direct substitution. ∎

## Interpretation

The localized-projector wall shrinks again on the exact-potential simple-top
branch. The pair-projector error supplier is no longer live. Combined with
[localized-projector-weighted-psj-plus-22-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-weighted-psj-plus-22-suppliers.md),
the honest local packet is now

```math
\boxed{
\texttt{Weighted coefficient drift}
+
\texttt{Weighted localization tail}
+
\texttt{Weighted theorem-safe entrance}
+
\texttt{Weighted corotational drift}.
}
\tag{PPE.11}
```

Once those suppliers hold, `(LPMR.22)` and then `(LPMC.26)` are formal, feeding
the already installed exact-potential splice
`SSC => D.7mr2 => RPC.3 => SG.4B`.
