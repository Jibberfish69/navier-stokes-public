# Direct M_Q To Sobolev Readout Constants

Status: conditional readout theorem.

## Statement

Assume the pointwise class witness on the retained cover:

```math
M_Q(u,p)
\quad\text{witnessed by}\quad
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q},
```

and assume `DTC.Read` supplies pointwise tower and forcing rungs through depth `N`. If `N>=ceil(s)` for some `s>5/2`, then

```math
\|u(t)\|_{H^s(T^3)}
\le C(M_Q)
```

for every time slice in the retained terminal window.

## Constant dependencies

The constant has the form

```math
C(M_Q)=C\big(
T^3,s,N,
\Omega,
\Gamma_{pack,Q},
\mathfrak P_{N,Q},
\mathfrak C_{N,r,Q},
\mathfrak A_{N,Q}^{DTC}
\big),
```

where `Omega` is the finite-cover overlap, `Gamma_pack,Q` is the pack distortion gauge, `mathfrak P_N,Q` is the participation/forcing envelope, `mathfrak C_N,r,Q` is the field coherence modulus, and `mathfrak A_N,Q^DTC` is the pointwise tower readout from `DTC.Read`.

## Proof

Choose a partition of unity subordinate to the retained finite cover. `Pack_Q` controls the distortion of each chart and the derivatives of the partition at the retained scale. `DTC.Read` gives pointwise bounds for the velocity tower through depth `N`, and `Part_N,Q` gives the corresponding participation/forcing compatibility.

On each chart,

```math
\|\chi_j u(t)\|_{H^s}
\le C_j\sum_{k\le N}\|\nabla^k u(t)\|_{L^2(Q_j)}.
```

The local tower bounds give a uniform finite value for the right-hand side. `Field_N,r,Q` ensures that the local tower fields agree on overlaps as one global velocity field. Finite overlap gives

```math
\|u(t)\|_{H^s(T^3)}^2
\le C\sum_j\|\chi_j u(t)\|_{H^s}^2
\le C(M_Q)^2.
```

Thus

```math
M_Q(u,p)+DTC.Read
\Longrightarrow
\|u(t)\|_{H^s(T^3)}\le C(M_Q).
```

## Continuation use

Taking the supremum over the terminal window gives the `H^s`, `s>5/2`, norm
bound required by the classical continuation criterion.
