# READ.COVER Strict-Margin Finite Cover

Status: conditional readout-cover theorem.

## Statement

```math
READ.COVER:
End_{NS,avg}
\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}.
```

## Proof

Use the strict margin threshold `\varepsilon_m/2`. The bad material set is

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}
:=
\{(a,t):\forall r>0,
\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m/2\}.
```

The averaged bad-set row gives

```math
CAVG.J_{\varepsilon_m/2}:
\mathcal B_{\varepsilon_m/2}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

`End_NS_avg` removes `Jump_avg`, so

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Every material point in the retained approach window therefore has a positive same-fluid cylinder satisfying

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2.
```

The strict margin gives local stability: after shrinking the radius if needed, nearby material centers and nearby admissible radii still satisfy the `\varepsilon_m` threshold. Thus these cylinders form an open cover by `\varepsilon_m`-good same-fluid cylinders.

Compactness of the retained approach window yields finitely many cylinders:

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

This proves the uniform positive-scale finite SCF-good cover.

## Output

`READ.COVER` is available for

```math
Field.Read,
\qquad
DTC.Read.
```