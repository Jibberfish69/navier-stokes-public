# Phi Final Theorem Statement Convention Result

## Target

Final theorem statements need one lower-order ledger symbol carrying all selected lower-order branches.

## Definition

Set

```math
\Phi_{base}:=\Phi.
\tag{PFC.1}
```

If the finite low-shell branch uses ledger extension, set

```math
\Phi_{low}:=\Phi_{base}+\theta_{low}M_{low}.
\tag{PFC.2}
```

If the global Littlewood-Paley tail branch uses ledger inclusion, set

```math
\Phi_{tail}:=\Phi_{low}+\theta_{tail}C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{PFC.3}
```

The final lower-order ledger is

```math
\boxed{
\Phi_{final}:=\Phi_{tail}.
}
\tag{PFC.4}
```

Special cases are obtained by setting the unused extensions to zero:

```math
M_{low}=0\quad\text{or}\quad\theta_{low}=0,
\qquad
\theta_{tail}=0.
\tag{PFC.5}
```

## Propagation

Every lower-order statement of the form

```math
A\le \varepsilon\nu2^{2j}B+C_\varepsilon\Phi_{base}
+C_LM_{low}+C_T\operatorname{Tail}_{j}(Y)
\tag{PFC.6}
```

becomes

```math
A\le \varepsilon\nu2^{2j}B+C'_\varepsilon\Phi_{final}.
\tag{PFC.7}
```

The viscous absorption constant is unchanged.

## Theorem PFC

The final amplitude/speed theorem and final collar theorem must use `\Phi_{final}`. If original-ledger domination and bounded-test tail control are proved later, `\Phi_{final}` may be reduced back to `\Phi`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/original-phi-vs-phi-low-ledger-decision-result.md`
- `problems/navier-stokes/theorem-construction/global-tail-branch-decision-result.md`
- `problems/navier-stokes/theorem-construction/phi-low-ledger-propagation-result.md`
