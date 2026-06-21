---
theorem_id: forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621
status: abstract-compactness-rigidity-principle-proved-ns-compact-orbit-not-installed
logical_landing_node: fourbody_compactness_rigidity_coercivity_principle
edge_effect: "Proves the exact abstract principle needed to turn lossless-cycle rigidity into strict four-body payment. On a compact same-carrier normalized packet space, if the full-cycle loss is lower semicontinuous, selected activity is continuous, and every zero-loss packet has zero selected activity, then every packet with activity at least eta pays a positive loss quantum c_eta. The Navier-Stokes work still needed is the same-carrier compact orbit/no-loss identification and the rigidity hypothesis for the actual selected activity."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-cycle-viscous-rigidity-sublemma-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-no-loss-relay-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
---

# Four-Body Compactness/Rigidity Coercivity Principle

Date: 2026-06-21

## 0. Aim

The upgraded four-body frontier is:

```math
\boxed{
\text{strict same-carrier four-body cycle payment}
}
\tag{CRC.1}
```

or

```math
\boxed{
\text{rigidity of every lossless four-body cycle.}
}
\tag{CRC.2}
```

This note proves the exact abstract bridge between those two statements.

The bridge is:

```math
\boxed{
\text{compactness}
+
\text{zero-loss rigidity}
\Longrightarrow
\text{strict positive loss away from zero activity.}
}
\tag{CRC.3}
```

This is the standard compactness/rigidity coercivity mechanism, written in the
same-carrier four-body language.

## 1. Abstract compact packet space

Let \((\mathcal K,d)\) be a compact metric space of normalized selected packets,
after quotienting by the harmless symmetries that the selected activity is
supposed to ignore, such as Galilean mean modes.

Let

```math
A:\mathcal K\to[0,\infty)
\tag{CRC.4}
```

be the selected activity, and let

```math
\mathcal L:\mathcal K\to[0,\infty]
\tag{CRC.5}
```

be the full-cycle loss.

Assume:

```math
A\text{ is continuous on }\mathcal K,
\tag{CRC.6}
```

```math
\mathcal L\text{ is lower semicontinuous on }\mathcal K,
\tag{CRC.7}
```

and the zero-loss rigidity condition

```math
\boxed{
\mathcal L(X)=0
\Longrightarrow
A(X)=0
\qquad
\text{for every }X\in\mathcal K.
}
\tag{CRC.8}
```

Then for every \(\eta>0\), define

```math
c_\eta
:=
\inf\{\mathcal L(X):X\in\mathcal K,\ A(X)\ge\eta\}.
\tag{CRC.9}
```

The set \(\{A\ge\eta\}\) is compact.  Therefore the infimum is attained.

If \(c_\eta=0\), there is \(X_\eta\in\mathcal K\) with

```math
A(X_\eta)\ge\eta,
\qquad
\mathcal L(X_\eta)=0.
\tag{CRC.10}
```

This contradicts `(CRC.8)`.

Hence

```math
\boxed{
c_\eta>0.
}
\tag{CRC.11}
```

Equivalently,

```math
\boxed{
A(X)\ge\eta
\Longrightarrow
\mathcal L(X)\ge c_\eta.
}
\tag{CRC.12}
```

This is the compactness-rigidity coercivity principle.

## 2. Four-body specialization

For the upgraded four-body loop, the normalized packet is

```math
X
=
\left(
V,Q,
\mathcal T,
\mathcal P,
G,
\mathcal S_{\rm sel}
\right),
\tag{CRC.13}
```

where:

```math
\mathcal T
\quad
\text{is the mixed derivative tower packet,}
\tag{CRC.14}
```

```math
\mathcal P
\quad
\text{is the pressure/participation packet,}
\tag{CRC.15}
```

```math
G
\quad
\text{is the deformation-gradient metric packet,}
\tag{CRC.16}
```

and

```math
\mathcal S_{\rm sel}
\quad
\text{is the selected carrier/selector record.}
\tag{CRC.17}
```

The selected activity is

```math
A(X)=A_{\rm sel}(X).
\tag{CRC.18}
```

The full-cycle loss is the sum of all nonnegative loss and mismatch channels:

```math
\mathcal L(X)
=
D_S^{\rm rad}(X)
+
D_Q^{\rm vis}(X)
+
K_{\rm sel}(X)
+
K_C^+(X)
+
K_G^+(X)
+
R_{\rm legal}(X).
\tag{CRC.19}
```

Here:

```math
D_S^{\rm rad}
\quad
\text{is Body-I tower-radius spend,}
\tag{CRC.20}
```

```math
D_Q^{\rm vis}
\quad
\text{is Body-II normalized viscous/tower loss,}
\tag{CRC.21}
```

```math
K_{\rm sel}
\quad
\text{is selector polar-retention failure,}
\tag{CRC.22}
```

```math
K_C^+
\quad
\text{is Body-III compactness/no-loss relay failure,}
\tag{CRC.23}
```

and

```math
K_G^+
\quad
\text{is Body-IV geometry/strain-clock failure.}
\tag{CRC.24}
```

If the same-carrier compactness theorem supplies a compact packet space
\(\mathcal K\), if \(A_{\rm sel}\) is continuous on that space, if
\(\mathcal L\) is lower semicontinuous, and if lossless-cycle rigidity holds:

```math
\boxed{
\mathcal L(X)=0
\Longrightarrow
A_{\rm sel}(X)=0,
}
\tag{CRC.25}
```

then `(CRC.12)` gives, for every \(\eta>0\),

```math
\boxed{
A_{\rm sel}(X)\ge\eta
\Longrightarrow
\mathcal L(X)\ge c_\eta>0.
}
\tag{CRC.26}
```

This is the strict full-cycle payment quantum.

## 3. Relation to the viscous rigidity sublemma

The viscous rigidity sublemma proves one piece of `(CRC.25)`.

It shows that if

```math
D_Q^{\rm vis}(X)=0
\tag{CRC.27}
```

and the selected activity is controlled by Galilean-invariant strain,
projected-source, or tower-variation readouts, then

```math
A_{\rm sel}(X)=0.
\tag{CRC.28}
```

The full lossless rigidity statement `(CRC.25)` still needs the other zero-loss
clauses:

```math
K_{\rm sel}(X)=0,
\qquad
K_C^+(X)=0,
\qquad
K_G^+(X)=0,
\qquad
R_{\rm legal}(X)=0,
\tag{CRC.29}
```

and it needs the selected activity to be the same Galilean-invariant singular
participation activity throughout the loop.

## 4. How this supplies the unweighted reserve once installed

Suppose a terminal recurrence has infinitely many normalized packets
\(X_j\in\mathcal K\) with

```math
A_{\rm sel}(X_j)\ge\eta>0.
\tag{CRC.30}
```

Then `(CRC.26)` gives

```math
\mathcal L(X_j)\ge c_\eta>0
\tag{CRC.31}
```

for every \(j\).

If the four-body accounting gives finite total full-cycle loss on the terminal
tail,

```math
\sum_j\mathcal L(X_j)<\infty
\tag{CRC.32}
```

or in continuous log-scale form

```math
\int_{\sigma_0}^{\infty}\mathcal L(X(\sigma))\,d\sigma<\infty,
\tag{CRC.33}
```

then infinitely many packets satisfying `(CRC.30)` are impossible.

This is the exact route from compactness-rigidity to the unweighted terminal
reserve.

## 5. What remains unproved for Navier-Stokes

This note proves the abstract coercivity principle.  It does not prove the
Navier-Stokes hypotheses.

The remaining NS production statements are:

```math
\boxed{
\text{same-carrier compactness of the normalized four-body packet modulo
harmless symmetries;}
}
\tag{CRC.34}
```

```math
\boxed{
\text{continuity of }A_{\rm sel}\text{ on that compact packet space;}
}
\tag{CRC.35}
```

```math
\boxed{
\text{lower semicontinuity of the full-cycle loss }\mathcal L;
}
\tag{CRC.36}
```

and

```math
\boxed{
\text{zero-loss rigidity for the actual selected Navier-Stokes activity.}
}
\tag{CRC.37}
```

Those four hypotheses are exactly the mathematical content behind the phrase:

```math
\boxed{
\text{lossless four-body cycle rigidity.}
}
\tag{CRC.38}
```

They are not solved by the abstract compactness lemma.  The lemma tells exactly
what they would buy: a strict same-carrier payment quantum for every nonzero
terminal selected activity packet.
