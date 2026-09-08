# Carrier-Commutator Coercive Lemma

## Status

This is the exact same-surface object formalization now sitting under the D.2
boundary. It packages the bilinear hinge that the projected NC-flow route must
discharge before the lane can advance beyond bridge-pending status.

## Object

- `object_id`: `formal-object-d2-carrier-commutator-coercive-lemma`
- `object_name`: `carrier_commutator_coercive_lemma`
- `object_role`: mediating bridge object
- `primary_target`: `Prove D.2 global coercive energy estimate`

## Fixed quantities

Set

```text
\mathcal E_D(X):=\|\Delta_D^{1/2}X\|^2+\|\Omega_D(X)\|^2,
\qquad
\Omega_D(X):=[\nabla_D,X],
```

and

```text
\mathcal D_D(X):=\|\Delta_DX\|^2+\|\Delta_D^{1/2}\Omega_D(X)\|^2.
```

The projected energy identity has the form

```text
\frac{d}{dt}\mathcal E_D(X)
+
2\nu\,\mathcal D_D(X)
=
\mathcal N_1(X)+\mathcal N_2(X),
```

with

```text
\mathcal N_1(X):=2\langle \Delta_DX,\mathbb P_DN_D(X)\rangle,
```

and

```text
\mathcal N_2(X):=2\langle \Omega_D(X),[\nabla_D,\mathbb P_DN_D(X)]\rangle.
```

## Hypothesis H

Assume there exists a carrier projector `\mathbb H_D` such that

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

with

```text
N_{\mathrm{coh}}(X)\in K_D,
\qquad
N_{\mathrm{rem}}(X)\in K_D^\perp,
```

and

```text
\|N_{\mathrm{rem}}(X)\|
+
\|[\nabla_D,N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

Assume in addition that the coherent commutator is carrier-controlled:

```text
\|[\nabla_D,N_{\mathrm{coh}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

## Theorem H.1

Under Hypothesis H,

```text
|\langle \Delta_DX,\mathbb P_DN_D(X)\rangle|
+
|\langle \Omega_D(X),[\nabla_D,\mathbb P_DN_D(X)]\rangle|
\le
\varepsilon\,\mathcal D_D(X)
+
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

This is the exact carrier-commutator coercive estimate needed by `D.2`.

## Theorem D.2

If `\Psi` is chosen on the same surface so that the right-hand side closes
uniformly in time, then

```text
\frac{d}{dt}\mathcal E_D(X)
+
c_D\,\mathcal D_D(X)
\le
C\,\Psi(\mathcal E_D(X)).
```

That is the formal D.2 discharge surface on the current lane.

