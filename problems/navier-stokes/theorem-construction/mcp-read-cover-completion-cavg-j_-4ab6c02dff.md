# READ.COVER Completion

Status: conditional finite-cover theorem.

## Statement

```math
READ.COVER:
End_{NS,avg}
\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}.
```

## Proof

Work at strict margin threshold `epsilon_m/2`. Define

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}
:=
\{(a,t):\forall r>0,
\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m/2\}.
```

The strict-margin averaged jump row gives

```math
CAVG.J_{\varepsilon_m/2}:
\mathcal B_{\varepsilon_m/2}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Since `End_NS_avg` removes `Jump_avg`, we get

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Thus every material point in the retained approach window has a positive same-fluid cylinder satisfying

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2.
```

The strict margin gives local stability of `SCF_base`: after shrinking the radius, nearby centers and admissible nearby radii remain below `epsilon_m`. These stable cylinders form an open cover of the retained approach window.

Compactness gives finitely many cylinders

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

Set

```math
r_*:=\min_i r_i>0.
```

This is the uniform positive-scale SCF-good finite cover.

## Output

`READ.COVER` supplies the fixed finite cover used by

```math
Field.Read,
\qquad
DTC.Read.
```