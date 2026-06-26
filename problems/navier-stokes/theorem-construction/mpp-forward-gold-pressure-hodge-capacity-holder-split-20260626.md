# Pressure-Hodge capacity Holder split

Status: capacity Carleson route narrowed; unconditional closure still open.

## 1. Candidate from previous note

The pressure-Hodge capacity Bellman route proposes a nonnegative reserve

```math
B_{cap}(Q)=\operatorname{Cap}_{A,G}(U_Q;A_Q)
```

for the gauge-reduced pressure-Hodge-stress potential on each laminar collar.
The desired root estimate is a Carleson bound for this capacity reserve over the laminar high-ratio tree.

## 2. Holder split

The native trilinear carrier has the pointwise Holder price

```math
[\langle \Sigma W,W\rangle]_+
\le
C|\Sigma|^{5/2}+C|W|^{10/3}.
```

Thus the capacity root can be split into a velocity part and a strain/pressure-Hessian part:

```math
B_{cap}(Q_{root})
\lesssim
\int |W|^{10/3}
+
\int |\Sigma|^{5/2}
+R_{legal}.
```

The velocity term is compatible with the energy class by the standard interpolation from

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x
\quad\Rightarrow\quad
u\in L^{10/3}_{t,x}.
```

So the velocity side is not the active obstruction.

## 3. Remaining obstruction

The strain/pressure-Hessian side is

```math
\int |\Sigma|^{5/2}.
```

No installed original-data ledger gives the selected terminal-family reserve for this term. This is stronger than raw enstrophy and sits at continuation strength.

Therefore the pressure-Hodge capacity Carleson theorem reduces to:

```math
\boxed{\text{SelectedCriticalStrainCapacityReserve.A}}
```

Statement:

For the original smooth Navier-Stokes material history, prove a selected laminar high-ratio capacity reserve controlling the critical strain/pressure-Hessian contribution

```math
\int_{\mathcal F_{lam}}|\Sigma|^{5/2}\,d\mathcal R_{cap}<\infty
```

with only original data and legal ledgers as input.

## 4. Result

The pressure-Hodge capacity Bellman route gives a concrete PDE representation for the desired root reserve, but the current installed estimates close only the velocity part. The surviving hard piece is the selected critical-strain capacity reserve. This is the next exact hinge, not a completed proof.