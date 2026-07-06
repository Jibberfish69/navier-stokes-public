---
theorem_id: forward-gold-c0-gate1-pressure-increment-tail-dyadic-reduction-20260706
status: proved-dyadic-tail-estimate-reduces-gate1-to-remote-tower-difference-tail-admission
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 pressure-increment tail
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RetainedPressureIncrementCZTailAdmission.A
  - RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-increment-flux-absorption-20260706.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Gate 1 pressure-increment tail reduction. This proves the standard dyadic
  off-diagonal estimate for the nonlocal part left after local
  Calderon-Zygmund pressure-increment admission: the only surviving pressure
  tail is sourced by remote tower differences, weighted by the elliptic kernel
  decay. Therefore the free collar atom and detached annular route-measure
  models are demoted. Gate 1 is not installed yet: the remaining theorem is
  RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A, saying the dyadic
  remote tower-difference pressure tail is summable/absorbed by Field and
  viscous bills, or it creates a concrete legal/collar/Pack-Part/Field route-out.
---

# Gate 1 pressure-increment tail dyadic reduction

## 1. Physical object

After the pressure-increment absorption pass, the pressure flux has only one
remaining escape. The local part of \(\delta_h\nabla^k p\) is controlled by one
ordinary retained rung times one retained tower difference. What is left is
nonlocal: tower differences outside the enlarged cutoff can create an
elliptic pressure increment inside the collar.

So the pressure tail is not a free pressure atom. It is remote tower
decoherence seen through the pressure kernel.

## 2. Tail split

Write the pressure-increment source schematically as

```math
F_{k,h}
:=
\delta_h\nabla^k(u\otimes u)
=
\sum_{a+b\le k}
\bigl(
U_a(x+h)*\delta_hU_b
+\delta_hU_a*U_b(x)
\bigr).
\tag{PTD.1}
```

Let \(T_k\) be the order-zero pressure Calderon-Zygmund operator, so

```math
\delta_h\nabla^k p=T_kF_{k,h}.
\tag{PTD.2}
```

For cutoffs \(\chi\prec\chi'\), decompose

```math
\chi\,T_kF_{k,h}
=
\chi\,T_k(\chi'F_{k,h})
+\chi\,T_k((1-\chi')F_{k,h}).
\tag{PTD.3}
```

The first term is the local part already absorbed by the Field energy in the
pressure-increment absorption note. The second term is the tail.

## 3. Dyadic off-diagonal estimate

Let \(A_\ell\) be dyadic annuli outside \(\operatorname{supp}\chi'\), with
distance from \(\operatorname{supp}\chi\) comparable to \(2^\ell L\). For
\(x\in\operatorname{supp}\chi\) and \(y\in A_\ell\), the kernel of \(T_k\)
satisfies

```math
|K_k(x-y)|\le C_N(2^\ell L)^{-3}.
\tag{PTD.4}
```

Therefore

```math
|\chi T_k(1_{A_\ell}F_{k,h})(x)|
\le
C_N(2^\ell L)^{-3}
\|F_{k,h}\|_{L^1(A_\ell)}.
\tag{PTD.5}
```

Multiplying by the local tower-difference factor in the pressure flux gives

```math
\left|
\int \phi\nabla\phi\cdot
\delta_hU_k\,
T_k(1_{A_\ell}F_{k,h})\,dx
\right|
\le
C_N
\|\phi\nabla\phi\,\delta_hU_k\|_{L^1}
(2^\ell L)^{-3}
\|F_{k,h}\|_{L^1(A_\ell)}.
\tag{PTD.6}
```

Using Cauchy on the local factor,

```math
\|\phi\nabla\phi\,\delta_hU_k\|_{L^1}
\le
\|\nabla\phi\|_2
\|\chi\,\delta_hU_k\|_2,
\tag{PTD.7}
```

or, on bounded-width collars,

```math
\|\phi\nabla\phi\,\delta_hU_k\|_{L^1}
\le
C_{\phi}\|\chi\,\delta_hU_k\|_2 .
\tag{PTD.8}
```

Finally, by `(PTD.1)',

```math
\|F_{k,h}\|_{L^1(A_\ell)}
\le
C_N
\sum_{a+b\le k}
\bigl(
\|U_a\|_{L^2(A_\ell^h)}
\|\delta_hU_b\|_{L^2(A_\ell^h)}
+\|\delta_hU_a\|_{L^2(A_\ell)}
\|U_b\|_{L^2(A_\ell)}
\bigr),
\tag{PTD.9}
```

with \(A_\ell^h\) denoting the \(h\)-shifted annulus.

Summing `(PTD.6)' over \(\ell\) gives the tail bound

```math
|\mathrm{Tail}^{press}_{N,h,\phi}|
\le
C_N
\sum_{k\le N}
\|\chi\,\delta_hU_k\|_2
\sum_{\ell\ge0}
(2^\ell L)^{-3}
\mathcal M_{N,h}(A_\ell),
\tag{PTD.10}
```

where \(\mathcal M_{N,h}(A_\ell)\) is the ordinary-rung times
tower-difference mass on the remote annulus from `(PTD.9)'.

This is the precise tail currency. A pressure tail survives only if remote
tower differences survive with enough weighted mass to overcome the elliptic
kernel decay.

## 4. Consequence for the Gate 1 theorem

The current Gate 1 pressure theorem reduces to:

```math
\texttt{RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A}.
\tag{PTD.11}
```

For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), the dyadic tail in `(PTD.10)' must satisfy one of:

```math
\begin{array}{ll}
\text{summability:} &
\displaystyle
\sum_{\ell\ge0}(2^\ell L)^{-3}\mathcal M_{N,h_j}(A_{\ell,j})
\to0\ \text{after retained exhaustion},\\[3mm]
\text{absorption:} &
\text{the tail is bounded by }o_L(1)+C\,B(W_j),\\[1mm]
\text{route-out:} &
\text{the remote tower differences define a legal/collar/Pack/terminal-Part/Field face.}
\end{array}
\tag{PTD.12}
```

Together with the local pressure-increment absorption estimate, `(PTD.11)'
implies

```math
\texttt{RetainedPressureIncrementCZTailAdmission.A},
\tag{PTD.13}
```

and hence the pressure part of `RetainedRelayFluxCutoffClosure.A`.

## 5. Verdict

This pass proves a real estimate, not c_0. It removes the unstructured pressure
tail. The only remaining Gate 1 pressure escape is now remote tower decoherence
that is strong enough, after elliptic kernel decay, to produce a nonzero
pressure-increment tail while the retained Field and viscous bills vanish.

Physically: pressure can act at a distance, but it cannot act from nowhere. A
nonzero pressure-increment tail must be sourced by tower differences somewhere
else in the same field. The remaining proof burden is to show that those remote
tower differences are either included in the Field bill, decay summably, or are
not part of the retained relay record.
