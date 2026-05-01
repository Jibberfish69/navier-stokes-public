# SCFBase Defect To Jump_avg Typing

## Status

Conditional endpoint-grammar typing theorem.

## Statement

Let `(a_*,T_*)` be an active terminal material point. Suppose the terminal SCF defect is epsilon-level:

```math
\forall r>0,
\quad
SCF_{base}(Q_r^\Phi(a_*,T_*))>\varepsilon_m.
```

Then

```math
Jump_{avg}.
```

## Proof

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

The epsilon-level terminal SCF defect places the active terminal point in this set:

```math
(a_*,T_*)\in\mathcal B_{\varepsilon_m}^{\Phi}.
```

The averaged endpoint grammar contains the row

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\cap Q^\Phi([t_0,T_*),A_\sharp)\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Since `(a_*,T_*)` is active, the intersection is nonempty. Therefore

```math
Jump_{avg}.
```

## Output

```math
\boxed{
\text{epsilon-level active SCF terminal defect}
\Longrightarrow
Jump_{avg}.
}
```

## Boundary

This note uses only the averaged endpoint grammar. The tower-blown upgrade and pressure-defect compatibility are separate theorem notes.