# Projected Generator And Sector Invariance

## Status

This is the next theorem-bearing bridge after the NC Leray / Hodge projection.
It packages the projected flow as a single operator on the physical sector and
sets up the semigroup lift used by the next bridge layer.

## Purpose

The projected-flow route should not remain a loose rewritten equation. It needs
a single operator on the physical sector, together with sector invariance,
positive-time support preservation, and semigroup consistency.

The working-note companion is
[`/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-generator-sector-invariance.md`](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-generator-sector-invariance.md).

## Physical Sector

Work on

```text
\mathcal V_D := \{X \in \operatorname{Dom}(\mathbb P_D) : X = \mathbb P_D X\}.
```

The projected flow lives on this carrier. Pressure is auxiliary and is
reconstructed from the exact-sector complement.

## Projected Generator

Define

```text
\mathcal L_D(X)
:=
\mathbb P_D\big(\delta_\omega X + N_D(X) - \nu \Delta_{D,\omega}X\big).
```

The projected ontic evolution is

```text
\partial_t X + \mathcal L_D(X) = 0,
\qquad
X(0)=X_0 \in \operatorname{Dom}(\mathcal L_D).
```

The intended domain is

```text
\operatorname{Dom}(\mathcal L_D)
:=
\mathcal V_D
\cap
\operatorname{Dom}(\delta_\omega)
\cap
\operatorname{Dom}(\nabla_{D,\omega})
\cap
\operatorname{Dom}(\Delta_{D,\omega}),
```

with the admissibility requirement

```text
N_D(X)\in \operatorname{Dom}(\mathbb P_D).
```

The graph norm for closure work is

```text
\|X\|_{\mathcal L}
:=
\|X\| + \|\mathcal L_D(X)\|.
```

## Sector Invariance Theorem

### Statement

Assume

```text
[\mathbb P_D,\delta_\omega]=0,
\qquad
[\mathbb P_D,\Delta_{D,\omega}]=0,
```

and

```text
N_D(\mathcal V_D)\subseteq \operatorname{Dom}(\mathbb P_D).
```

Then every admissible solution of

```text
\partial_t X + \mathcal L_D(X) = 0
```

with initial condition

```text
X(0)\in \mathcal V_D
```

satisfies

```text
X(t)\in \mathcal V_D
```

for all admissible `t`.

### Proof sketch

Because `\mathbb P_D` commutes with the linear parts and `\mathcal L_D` is
already projected, the projected and unprojected evolutions agree on the
physical sector. Thus

```text
\partial_t(\mathbb P_DX - X)=0.
```

The initial condition gives `\mathbb P_DX(0)-X(0)=0`, hence
` \mathbb P_DX(t)=X(t)` for all admissible `t`.

So the physical sector is dynamically preserved by the ontic flow.

This is the first theorem in the bridge into the T3 package.

## Generator Identification

Define the linear generator

```text
A_D := -\nu\,\mathbb P_D \Delta_{D,\omega}.
```

From the carrier energy estimate, `A_D` is dissipative on the physical sector.
In the sector-invariant regime it is maximal dissipative, hence generates a
contraction semigroup

```text
P_t = e^{-tA_D}.
```

The mild equation becomes

```text
X(t)
=
P_tX_0
-\int_0^t P_{t-s}\big(\mathbb P_DN_D(X(s))+\delta_\omega X(s)\big)\,ds.
```

## Positive-Time Support Preservation

Let `\mathcal A_+` be the positive-time algebra.

Show

```text
P_t(\mathcal A_+) \subseteq \mathcal A_+.
```

This follows from:

- `A_D` is built from `\Delta_{D,\omega}` and `\mathbb P_D`;
- both preserve the lane filtration / causal ordering;
- hence `P_t` preserves positive-time support.

Record:

```text
\tau_t F(A) := F(P_tA)
```

as a well-defined action on `\mathcal A_+`.

## OS-Form Contraction

For OS inner product

```text
\langle F,G\rangle_{OS} := \langle \Theta F, G\rangle,
```

show

```text
\langle \tau_tF,\tau_tF\rangle_{OS}
\le
\langle F,F\rangle_{OS}.
```

This is the contraction of the semigroup on the OS Hilbert structure.

So

```text
\boxed{\tau_t \text{ is OS-contractive}.}
```

## Semigroup Law

```text
\tau_t\tau_sF(A)
=
F(P_t(P_sA))
=
F(P_{t+s}A)
=
\tau_{t+s}F(A).
```

Hence

```text
\boxed{\tau_t\tau_s=\tau_{t+s}.}
```

## Honest Status

This is not a discharged theorem. It is the exact theorem-bearing bridge that
promotes the projected generator / sector invariance step into the next bridge
layer.
