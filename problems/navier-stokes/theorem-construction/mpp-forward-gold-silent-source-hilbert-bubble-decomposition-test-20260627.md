---
theorem_id: forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627
status: reduces-to-hidden-potential-root-reserve-or-source-origin-exchange
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
---

# Silent-source Hilbert bubble decomposition test

## 1. Correct object

The silent source is not a boundary trace object. It is an interior pressure
potential bubble.

On a retained material collar, let

```math
L_A=-\operatorname{div}_a(G\nabla_a),
\qquad
G=AA^\top .
\tag{1}
```

The silent class is

```math
\mathcal K_{\rm sil}(Q)
=
\{f:\ f=L_Aw,\ w\in H^1_{0,A}(Q)\},
\tag{2}
```

where `H^1_{0,A}(Q)` means the pressure potential has zero material trace on
the parent boundary. For smooth boundary-flat representatives this includes

```math
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
\tag{3}
```

The energy of the hidden bubble is

```math
\|w\|_{\mathcal H_A(Q)}^2
:=
\int_Q G\nabla_aw\cdot\nabla_aw\,da .
\tag{4}
```

By integration by parts,

```math
\langle f,w\rangle
=
\|w\|_{\mathcal H_A(Q)}^2 .
\tag{5}
```

So a nonzero silent source is not gauge merely because it is boundary-invisible.
It has positive interior pressure-potential energy.

## 2. The local normal form

The correct local dichotomy is:

```math
f=L_Aw,\quad w\in H^1_{0,A}(Q)
\quad\Longrightarrow\quad
\begin{cases}
\|w\|_{\mathcal H_A(Q)}=0, & \text{unselected/gauge},\\
\|w\|_{\mathcal H_A(Q)}>0, & \text{hidden pressure-potential bubble}.
\end{cases}
\tag{6}
```

Thus the source-origin theorem cannot say that every boundary-flat source is
unselected. Boundary-flat elliptic bubbles exist. The theorem has to say:

```math
A_{\rm sel}(f;Q)
\le
C\|w\|_{\mathcal H_A(Q)}^2
+C\,\mathcal S_{\rm material}(Q)
+R_{\rm legal}(Q).
\tag{7}
```

The first term is the hidden pressure-potential bubble energy. The second term
is the pressure-null material service from the complete-frame trace-free routing.

## 3. Laminar tree decomposition

For a laminar retained tree, define the Hilbert space

```math
\mathcal H_A(Q_0)
=
\overline{C^\infty_c(Q_0)}^{\|\nabla_A\cdot\|_{L^2_G}} .
\tag{8}
```

Let `\mathcal V_k` be the closed span of boundary-flat bubble subspaces carried
by retained nodes at depth `k`, and let `P_k` be the orthogonal projection onto
`\mathcal V_k`. The martingale differences

```math
\Delta_kW:=P_{k+1}W-P_kW
\tag{9}
```

are orthogonal in `\mathcal H_A(Q_0)`. Hence

```math
\sum_k\|\Delta_kW\|_{\mathcal H_A(Q_0)}^2
\le
\|W\|_{\mathcal H_A(Q_0)}^2 .
\tag{10}
```

This is the Hilbert-space version of the selected-density square-function
estimate. Boundary invisibility is no longer a defect; it is exactly the
orthogonal bubble component.

## 4. What would close the square-function theorem

If the selected silent density increments satisfy

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{\rm sel}|^2\,\mathcal R(Q)
\le
C
\sum_Q\|w_Q\|_{\mathcal H_A(Q)}^2
+C\sum_Q\mathcal S_{\rm material}(Q)
+R_{\rm legal}(Q),
\tag{11}
```

and the bubble energies are projections of one root potential `W`, then (10)
gives

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q\rho_{\rm sel}|^2\,\mathcal R(Q)
\le
C\|W\|_{\mathcal H_A(Q_0)}^2
+C\sum_Q\mathcal S_{\rm material}(Q)
+R_{\rm legal}(Q).
\tag{12}
```

So the silent-source route closes if the root quantity

```math
\|W\|_{\mathcal H_A(Q_0)}^2
\tag{13}
```

is a finite original-data reserve, or if its positive growth is paid by the
same top-strain/material exchange service already present in the Gold packet.

## 5. First unsupported line

The installed notes do not yet prove that `(13)` is finite from original data
for the retained selected pressure-Hodge source. Taking `W=L_A^{-1}f_{\rm sel}`
where `f_{\rm sel}` is the selected source tail defines a potential whose
energy can be the same size as the desired selected reserve.

Thus the circular line would be

```math
\|L_A^{-1}f_{\rm sel}\|_{\mathcal H_A(Q_0)}^2
\le
C_N(u_0)+R_{\rm legal}.
\tag{14}
```

unless `(14)` is proved from an independent source-origin equation.

## 6. Correct sharpened theorem

The source-origin normal form should be stated as:

```text
SilentSourceBubbleEnergyCarleson.A
```

For one retained same-material tree, every boundary-flat selected
pressure-Hodge source decomposes into Hilbert bubble increments plus
pressure-null material service, and the bubble increments satisfy the
orthogonal Carleson bound

```math
\sum_Q\|w_Q\|_{\mathcal H_A(Q)}^2
\le
C_N(u_0)+C\sum_Q\mathcal S_{\rm material}(Q)+R_{\rm legal}.
\tag{15}
```

Equivalently, prove the source-origin evolution law:

```math
d\mathcal B_N
+c\,d\Omega_N^{\rm silent,bubble}
\le
C\,d\Omega_N^{\rm top\text{-}strain/exchange}
+dR_{\rm legal},
\qquad
\mathcal B_N\ge -C_N(u_0).
\tag{16}
```

## 7. Result

The better route is real:

```text
do not ask the boundary to see boundary-flat sources;
decompose them as interior pressure-potential bubbles.
```

But this test does not yet close the Gold route. It reduces the current hinge
to a sharper noncircular reserve:

```text
finite original-history Hilbert bubble energy for selected silent sources,
or source-origin exchange control of that bubble energy.
```

That is the exact line needed for `SelectedDensityMartingaleSquareFunctionCarleson.A`
through the silent-kernel route.
