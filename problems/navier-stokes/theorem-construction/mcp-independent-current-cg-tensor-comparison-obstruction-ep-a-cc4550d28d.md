# Independent Current-CG Tensor Comparison Obstruction

## Status

Failed as an unconditional proof from current surfaces.

## Target

The current-CG route requires

```math
\|C_{al}-\mathcal C_J^{CG}\|_{op}=o(\gamma_J),
\qquad
C_{al}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^*.
```

## Gap floor limitation

A simple-top gap floor `gamma_J` gives perturbative stability after an operator-norm tensor comparison is already available. It does not supply proximity between two independently defined symmetric tensors.

A two-dimensional model shows the obstruction:

```math
A=\begin{pmatrix}2&0\\0&1\end{pmatrix},
\qquad
B=\begin{pmatrix}1&0\\0&2\end{pmatrix}.
```

Both have top gap `1`. Their top projectors are orthogonal, and

```math
\|A-B\|_{op}=1.
```

So a shared gap floor alone cannot prove

```math
\|A-B\|_{op}=o(1).
```

## Consequence for BridgeA

The current-CG route needs the source theorem

```math
\|W_J^{coc}\Pi_{N_a}(W_J^{coc})^*-
\mathcal C_J^{CG}\|_{op}=o(\gamma_J).
```

Once that theorem is supplied, Davis-Kahan gives BridgeA.

## Remaining alternatives

```text
prove direct SSC-EP.A with Pi_ref := P_al
```

or

```text
prove ||P_al-P_J^CG||_F -> 0 through an independent projector comparison theorem
```