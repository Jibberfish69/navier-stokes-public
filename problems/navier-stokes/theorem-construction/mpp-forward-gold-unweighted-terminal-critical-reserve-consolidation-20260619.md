# MPP Forward Gold Unweighted Terminal Critical Reserve Consolidation

Date: 2026-06-19

## Status

Consolidation complete.  The heat-scale terminal branch has one common
mathematical demand: an unweighted terminal critical-action reserve on the
selected same-fluid packet family.

The existing candidate suppliers are not independent mysteries.  They are
different readouts of this same demand.  Current inputs do not prove the
unweighted reserve; they prove only weighted physical versions or visibility of
the retained critical packet.

## 1. The selected heat-scale family

Let the surviving terminal family be

```math
\mathcal F=\{Q_j\}_{j\ge j_0},
\qquad
Q_j=B_{r_j}(x_j)\times(t_j-r_j^2,t_j],
\qquad
r_j\downarrow0.
\tag{UTC.1}
```

In normalized variables on each packet,

```math
x=x_j+r_jy,
\qquad
t=t_j+r_j^2s,
\qquad
u(t,x)=r_j^{-1}v_j(s,y),
\qquad
p(t,x)=r_j^{-2}q_j(s,y).
\tag{UTC.2}
```

The recurrent terminal branch gives infinitely many packets with a positive
normalized lower quantum:

```math
\mathcal A_j
:=
\int_{-1}^{0}\int_{B_R}
\left(
|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}
\right)\,dy\,ds
\ge c_0>0.
\tag{UTC.3}
```

The gold anti-atom needs an upper/tail theorem in the same unweighted currency:

```math
\sum_{j\ge j_0}\mathcal A_j<\infty
\tag{UTC.4}
```

or at least terminal tail depletion

```math
\lim_{N\to\infty}
\sum_{\substack{j\ge j_0\\ r_j\le2^{-N}}}
\mathcal A_j
=0
\tag{UTC.5}
```

after legal exits and already visible CM readouts are removed.

Equations `(UTC.4)` and `(UTC.5)` are the common reserve.

## 2. What physical energy supplies instead

Physical cubic-pressure mass gives

```math
\int_{Q_j}\left(|u|^3+|p|^{3/2}\right)\,dxdt
=
r_j^2
\int_{-1}^{0}\int_{B_R}
\left(|v_j|^3+|q_j|^{3/2}\right)\,dy\,ds.
\tag{UTC.6}
```

Thus finite physical cubic-pressure mass controls

```math
\sum_j r_j^2\,\mathcal C_j,
\qquad
\mathcal C_j
:=
\int_{-1}^{0}\int_{B_R}
\left(|v_j|^3+|q_j|^{3/2}\right)\,dy\,ds,
\tag{UTC.7}
```

not \(\sum_j\mathcal C_j\).

Physical dissipation gives

```math
\int_{Q_j}|\nabla_xu|^2\,dxdt
=
r_j
\int_{-1}^{0}\int_{B_R}
|\nabla_yv_j|^2\,dy\,ds.
\tag{UTC.8}
```

So finite dissipation controls

```math
\sum_j r_j\,\mathcal D_j,
\tag{UTC.9}
```

not \(\sum_j\mathcal D_j\).

Material stress work has the same one-radius weight:

```math
W_j^{phys}=r_jW_j^{ren}.
\tag{UTC.10}
```

So finite material stress accounting controls

```math
\sum_j r_j[W_j^{ren}]_+,
\tag{UTC.11}
```

not \(\sum_j[W_j^{ren}]_+\).

These weighted bounds are compatible with one order-one normalized packet at
each dyadic scale:

```math
r_j=2^{-j},
\qquad
\sum_j r_j<\infty,
\qquad
\sum_j r_j^2<\infty,
\qquad
\sum_j1=\infty.
\tag{UTC.12}
```

## 3. Why critical strain has the right exponent

The strain exponent \(5/2\) is special because it is unweighted under the
heat-scale transform:

```math
\int_{Q_j}|S_x(u)|^{5/2}\,dxdt
=
\int_{-1}^{0}\int_{B_R}
|S_y(v_j)|^{5/2}\,dy\,ds.
\tag{UTC.13}
```

Thus `SelectedCriticalStrainCarleson.A` is exactly a version of `(UTC.4)`.

The installed energy inequality gives only

```math
S\in L^2_{t,x},
\tag{UTC.14}
```

which is the weighted statement `(UTC.8)`.  It does not give the unweighted
\(L^{5/2}\) count in `(UTC.13)`.

## 4. Why CKN has the right visibility but not the reserve

The normalized CKN charge is

```math
\mathcal C(Q_j)
=
r_j^{-2}
\int_{Q_j}
\left(|u|^3+|p|^{3/2}\right)\,dxdt.
\tag{UTC.15}
```

CKN epsilon regularity gives the visibility lower bound at a singular endpoint:

```math
\limsup_{j\to\infty}\mathcal C(Q_j)\ge\varepsilon_{CKN}.
\tag{UTC.16}
```

But ordinary physical integrability gives only

```math
\sum_j r_j^2\mathcal C(Q_j)<\infty.
\tag{UTC.17}
```

The missing CKN supplier is exactly

```math
\sum_j\mathcal C(Q_j)<\infty
\tag{UTC.18}
```

or terminal-tail decay of that sum.

## 5. Why source-square is the native packet version

The source-square or scale-critical tree reserve asks for a quadratic payment
on the selected positive source carrier.  In the route's source-balanced
heat-scale packet regime, its role is to charge one unit of normalized critical
mass per retained terminal packet:

```math
\sum_{P\in\mathcal F}
{(\mu_{src}^{+}(P))^2\over\operatorname{cap}(P)}
\le C.
\tag{UTC.19}
```

When the selected source packet is comparable to the retained critical
heat-scale feed, `(UTC.19)` supplies `(UTC.4)`.  When that comparability is not
proved, the missing step is exactly the native-carrier identification /
polar-saturation problem:

```math
\text{SelectedPositivePolarSaturation.A}
\quad\text{or}\quad
\text{NoFreeTerminalZenoDonorChain.A}.
\tag{UTC.20}
```

## 6. Why pressure-corrected Lyapunov returns to the same reserve

For a localized pressure-corrected quadratic functional

```math
L_A(s)={1\over2}\langle v,A_sv\rangle,
\tag{UTC.21}
```

the derivative has the form

```math
-L_A'(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-\text{unsigned localized critical commutator}
+\text{dilation/operator terms}.
\tag{UTC.22}
```

The commutator is controlled by the same local critical currency:

```math
|\text{commutator}|
\le
C_A
\int_{\operatorname{collar}(A_s)}
\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right).
\tag{UTC.23}
```

So a strict Lyapunov drop follows only after proving that this critical collar
currency is dominated by dissipation plus legal/visible terms.  That is

```math
\text{ProjectedLocalizedFluxCommutatorCoercivity.A}
\tag{UTC.24}
```

and, at this route resolution, it is another form of `(UTC.4)` or `(UTC.5)`.

## 7. Single exact reserve statement

The common target can be stated as:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A}
}
\tag{UTC.25}
```

For every selected same-fluid terminal heat-scale family \(\mathcal F\) left
after legal exits, finite donor depletion, retained signed partners, and
CM-facing visible critical readouts have been removed,

```math
\sum_{Q_j\in\mathcal F}
\int_{-1}^{0}\int_{B_R}
\left(
|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}
\right)\,dy\,ds
<\infty,
\tag{UTC.26}
```

or the corresponding terminal tail tends to zero.

This one statement is supplied by any of the following, if proved in the
selected packet setting:

```math
\begin{gathered}
\text{SelectedCriticalStrainCarleson.A},\\
\text{NormalizedCKNCarleson.A},\\
\text{SourceSquareReserve.A / ScaleCriticalTreeCarleson.A},\\
\text{UnweightedMaterialStressWorkCarleson.A},\\
\text{ProjectedLocalizedFluxCommutatorCoercivity.A},\\
\text{StrictRescaledNoWasteLyapunov.A}.
\end{gathered}
\tag{UTC.27}
```

Current inputs prove none of `(UTC.27)` in the needed unweighted terminal form.
They prove visibility and weighted physical control.

## 8. Continuation-strength warning

The unweighted critical reserve is not a harmless estimate.  A global terminal
version of the strain branch,

```math
\int_{T_\ast-\varepsilon}^{T_\ast}
\int_{\mathbb R^3}
|\nabla u|^{5/2}\,dxdt
<\infty,
\tag{UTC.28}
```

is at the Navier-Stokes critical regularity threshold:

```math
{2\over 5/2}+{3\over 5/2}=2.
\tag{UTC.29}
```

So an argument that simply assumes `(UTC.28)`, or proves it by a route that
already presupposes terminal regularity, has not supplied an independent gold
estimate.  The selected-packet reserve must be produced from a smaller
mechanism: source-square, no-free terminal donor chain, strict no-waste
Lyapunov, or a genuine compact-rigidity theorem.

## Verdict

The forward-gold heat-scale branch has been reduced to one exact reserve:

```math
\boxed{
\text{weighted physical control}
\not\Rightarrow
\text{unweighted terminal critical-action control}.
}
\tag{UTC.30}
```

The remaining mathematical work is not to rename the supplier.  It is to prove
one unweighted terminal critical reserve, or to route the retained pulse through
the CM Part/Field witness machinery.
