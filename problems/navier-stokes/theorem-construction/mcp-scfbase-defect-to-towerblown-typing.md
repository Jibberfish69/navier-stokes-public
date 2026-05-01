# SCFBase Defect To Tower-Blown Typing

## Status

Conditional endpoint-typing theorem.

## Statement

Let `(a_*,T_*)` be an active terminal material point with an epsilon-level SCF defect:

```math
\forall r>0,
\quad
SCF_{base}(Q_r^\Phi(a_*,T_*))>\varepsilon_m.
```

Assume the finite tower/readout alternative holds on a terminal neighborhood:

```math
\mathfrak A_{N,Q}\in L^\infty([t_0,T_*)).
```

Assume the endpoint depth controls the velocity, viscous, and pressure terms appearing in `SCF_base`. Then a contradiction follows. Hence the finite tower/readout alternative fails, and the endpoint face is

```math
tower\text{-}blown.
```

## Proof

The tower bound supplies uniform control of the velocity rungs on the active terminal packet. The forcing rungs are

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The viscous part is controlled by the velocity tower at depth `k+2`. The pressure part is controlled by the local split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The local product source is controlled by the tower/readout hypothesis. The harmonic tail is controlled by the energy ledger.

Together with `Pack.TTU`, same-fluid cylinders are uniformly comparable with CKN cylinders. Therefore the normalized SCF packet decays on sufficiently small cylinders:

```math
SCF_{base}(Q_r^\Phi(a_*,T_*))\to0
\qquad(r\downarrow0).
```

For small enough `r`, this gives

```math
SCF_{base}(Q_r^\Phi(a_*,T_*))\le\varepsilon_m,
```

contradicting the epsilon-level SCF defect.

Therefore the tower/readout alternative fails:

```math
\sup_{t<T_*}\mathfrak A_{N,Q}(t)=\infty.
```

This is the endpoint face

```math
tower\text{-}blown.
```

## Output

```math
\boxed{
\text{epsilon-level active SCF terminal defect}
+
\text{tower/readout compatibility}
\Longrightarrow
 tower\text{-}blown.
}
```

## Boundary

This note types the defect into the tower endpoint face. It does not prove `TowerBound.Upstream`. The pressure defect compatibility note supplies the remaining relation between local pressure concentration and the SCF defect carrier.