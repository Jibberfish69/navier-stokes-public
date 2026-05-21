# Direct `no Jump_avg => READ.COVER` strict-margin theorem

## Status

Theorem-grade finite-cover bridge, independent of `End_NS_avg`.

## Target

Prove

```math
Jump_{avg}\Rightarrow\bot
\Longrightarrow READ.COVER.
```

## Definitions

For `\varepsilon>0`, define the averaged SCF-bad material set

```math
\mathcal B_{\varepsilon}^{\Phi}
:=\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon\}.
```

The endpoint typing row is

```math
CAVG.J_{\varepsilon}:
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow Jump_{avg}.
```

Fix the local CKN threshold `\varepsilon_m` and work at strict margin `\varepsilon_m/2`.

## Proof

Assume `Jump_avg=>bot`. By contrapositive use of `CAVG.J_{\varepsilon_m/2}`,

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Therefore every point `(a,t)` in the retained same-fluid approach window has some positive radius `r(a,t)>0` such that

```math
SCF_{base}(Q_{r(a,t)}^\Phi(a,t))\le\varepsilon_m/2.
```

By strict-margin stability of `SCF_base`, there exists a material neighborhood `U_{a,t}` and a smaller radius `\rho(a,t)>0` such that every nearby center `(\tilde a,\tilde t)\in U_{a,t}` satisfies

```math
SCF_{base}(Q_{\rho(a,t)}^\Phi(\tilde a,\tilde t))\le\varepsilon_m.
```

The neighborhoods `U_{a,t}` cover the retained same-fluid approach window. Compactness gives a finite subcover

```math
U_1,\dots,U_M.
```

Let the corresponding cylinders be

```math
Q_{r_i}^{\Phi}(a_i,t_i),
\qquad 1\le i\le M.
```

Set

```math
r_*:=\min_{1\le i\le M}r_i>0.
```

Then

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m,
\qquad
r_i\ge r_*.
```

This is exactly `READ.COVER`.

## Theorem

```math
\boxed{
Jump_{avg}\Rightarrow\bot
+CAVG.J_{\varepsilon_m/2}
+SCF\text{-strict-margin stability}
+\text{compact retained approach window}
\Longrightarrow READ.COVER.
}
```

## Noncircularity

The proof derives `READ.COVER` from no averaged jump directly. It does not use `End_NS_avg` and therefore does not spend `END.Pack` or any pointwise endpoint row upstream.

## Claimed status

Discharged at theorem-construction level under the retained-window compactness and strict-margin SCF stability already used by the lane's `READ.COVER` surfaces.