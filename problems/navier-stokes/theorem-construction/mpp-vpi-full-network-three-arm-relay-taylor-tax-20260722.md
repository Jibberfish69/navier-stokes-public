---
theorem_id: vpi-full-network-three-arm-relay-taylor-tax-20260722
date: 2026-07-22
problem: navier-stokes
route: forward-gold / full-network successor service / exact periodic Euler Taylor jet
status: proved-exact-full-network-branching-reconvergence-and-selected-relay-tax; pathwise-no-recount-demoted; signed-prefix-open
authority_state: theorem-construction; exact route refinement, not continuation
completion_truth: >-
  Restoring the full Fourier nonlinearity to the MF.35 datum generates three
  equal first-order daughter pairs, not the single daughter retained by the
  five-mode truncation. The complete Taylor recurrence produces three equal
  corner successors and six additional outer modes at second order. Relative
  to the isolated relay, the full network depletes the chosen predecessor at
  order t^2 and suppresses the chosen successor at the first feedback order.
  The omitted daughters also reconverge into the original predecessor at that
  first feedback order, and later network modes reconverge into the retained
  daughter. Thus literal no-reconvergence is false. Multi-generation positive
  ancestry is not an invariant after amplitudes merge; only the total signed
  Fourier source is canonical. The same Taylor jet shows that total critical
  height still rises. No datum-finite upper prefix bound for the signed
  current, continuation, Gold closure, or Silver Part/Field failure is proved.
---

# Full-network completion branches, reconverges, and taxes the selected relay while total critical height rises

## 1. One full periodic field, not a collection of mechanisms

Take the real periodic Euler datum from (MF.35):

\[
\begin{array}{c|c}
 p=(1,0,0)&\widehat u_p=(0,-1,1)\\
 q=(0,-1,0)&\widehat u_q=(-1,0,1)\\
 r=(0,0,-1)&\widehat u_r=(-1,1,0),
\end{array}
\qquad
\widehat u_{-m}=\overline{\widehat u_m}.
\tag{FN.1}
\]

All other coefficients initially vanish.  Unlike the five-mode comparison,
this note does not discard any Fourier output when computing the time jet.
Every coefficient below is a coordinate of the one local smooth periodic
Euler evolution through (FN.1).  It remains comparison-only and is not the
decaying \(\mathbb R^3\) Clay participant.

## 2. Exact full-equation Taylor recurrence

Write

\[
 \widehat u_m(t)=\sum_{n\ge0}U_m^{[n]}t^n.
\tag{FN.2}
\]

The full Euler equation gives, for every nonzero Fourier mode \(m\),

\[
 (n+1)U_m^{[n+1]}
 =-i\,\mathbb P_m
 \sum_{j=0}^{n}
 \sum_{\alpha+\beta=m}
 \bigl(U_\alpha^{[j]}\!\cdot\!\beta\bigr)
 U_\beta^{[n-j]}.
\tag{FN.3}
\]

At each finite order the support is finite, so (FN.3) is an exact algebraic
recurrence.  It includes every newly generated mode needed at the next order;
there is no Galerkin boundary in this calculation.

## 3. The first jet is a three-arm relay

Besides the retained daughter \(k=q+r\), reality supplies two equally strong
difference interactions:

\[
 k=q+r=(0,-1,-1),\qquad
 j=p-r=(1,0,1),\qquad
 h=p-q=(1,1,0).
\tag{FN.4}
\]

Direct use of (FN.3) gives

\[
\begin{aligned}
 \partial_t\widehat u_k(0)&=(-2i,0,0),\\
 \partial_t\widehat u_j(0)&=(0,-2i,0),\\
 \partial_t\widehat u_h(0)&=(0,0,2i).
\end{aligned}
\tag{FN.5}
\]

These and their conjugates are the only nonzero first-order output pairs.
The \(p+q\), \(p+r\), and \(q-r\) outputs vanish after Leray projection, but
their sign-reflected partners in (FN.4) do not.  Thus the five-mode truncation
retains one of three equal leading daughters and removes the other two.

With pair kinetic energy normalized by
\(E_m=|\widehat u_m|^2\), the three parents and three daughters obey

\[
\begin{aligned}
 E_p=E_q=E_r&=2-4t^2+O(t^4),\\
 E_k=E_j=E_h&=4t^2+O(t^4).
\end{aligned}
\tag{FN.6}
\]

The total parent loss \(12t^2\) is exactly the total daughter gain.  The
omitted arms are leading-order energy channels, not perturbative errors.

## 4. Second-generation completion

At order \(t^2\), the full recurrence contains twelve conjugate pairs: three
parent corrections, three equal corner successors, and six additional outer
modes.  The corner successors are

\[
\begin{array}{c|c}
 \ell_1=p+k=(1,-1,-1)&U_{\ell_1}^{[2]}=(0,1,-1)\\
 \ell_2=q+j=(1,-1,1)&U_{\ell_2}^{[2]}=(-1,0,1)\\
 \ell_3=r+h=(1,1,-1)&U_{\ell_3}^{[2]}=(1,-1,0).
\end{array}
\tag{FN.7}
\]

The other six new pairs have wave vectors

\[
 (0,1,2),(0,2,1),(1,0,2),(1,2,0),(2,0,1),(2,1,0)
\tag{FN.8}
\]

up to conjugation, each with a unit-norm second-order coefficient.  Therefore
the exact completion is not one relay plus a small correction.  It is an
immediately branching interaction network.

## 5. Exact selected-relay Taylor tax

Let \(a_F,b_F\) be the full-equation coefficients defined by

\[
 \widehat u_p=(0,-a_F,a_F),
 \qquad
 \widehat u_{\ell_1}=(0,b_F,-b_F)
\tag{FN.9}
\]

to the displayed orders.  Recurrence (FN.3) gives

\[
\begin{aligned}
 a_F(t)&=1-t^2+\frac12t^4+O(t^6),\\
 b_F(t)&=t^2-\frac94t^4+O(t^6).
\end{aligned}
\tag{FN.10}
\]

For the isolated five-mode solution (GR.8), the corresponding coefficients
are

\[
\begin{aligned}
 a_G(t)&=1-\frac12t^4+O(t^6),\\
 b_G(t)&=t^2-\frac16t^4+O(t^6).
\end{aligned}
\tag{FN.11}
\]

Hence full-network completion first depletes the selected predecessor at
order \(t^2\) and first suppresses the selected successor at order \(t^4\):

\[
 a_F-a_G=-t^2+t^4+O(t^6),
 \qquad
 b_F-b_G=-\frac{25}{12}t^4+O(t^6).
\tag{FN.12}
\]

At the pair-energy level,

\[
\begin{aligned}
 E_p^F&=2-4t^2+4t^4+O(t^6),
 &E_p^G&=2-2t^4+O(t^6),\\
 E_{\ell_1}^F&=2t^4-9t^6+O(t^8),
 &E_{\ell_1}^G&=2t^4-\frac23t^6+O(t^8).
\end{aligned}
\tag{FN.13}
\]

Thus the first full-network feedback changes selected-successor energy by

\[
 E_{\ell_1}^F-E_{\ell_1}^G
 =-\frac{25}{3}t^6+O(t^8).
\tag{FN.14}
\]

This is the exact local tax absent from the triangular five-mode normal form.
It comes from simultaneous side-network participation, not from delayed
return of the isolated \(k\)-oscillator.

## 6. Why this still does not pay total critical growth

Let \(H_F=\sum_m |m|E_m\) over one representative of each conjugate pair.
The three parent, three edge-daughter, three corner, and six outer-mode rows
give

\[
\begin{aligned}
 H_F(t)
 &=6+12(\sqrt2-1)t^2\\
 &\quad+
 \bigl(12-24\sqrt2+6\sqrt3+6\sqrt5\bigr)t^4
 +O(t^6).
\end{aligned}
\tag{FN.15}
\]

Both displayed growth coefficients are positive.  Full-network branching
taxes one selected relay while the same field sends total kinetic energy
outward and raises its critical height.  Branch competition is therefore not
itself a signed-current contraction.

## 7. Reconvergence is already active at the first feedback order

For the Taylor recurrence (FN.3), define the contribution of one ordered
degree/mode pair by

\[
 \mathcal C_m^{[j,n-j]}(\alpha,\beta)
 :=-{i\over n+1}\mathbb P_m
 \left[(U_\alpha^{[j]}\!\cdot\!\beta)
 U_\beta^{[n-j]}\right],
 \qquad \alpha+\beta=m.
\tag{FN.16}
\]

At \(n=1\), the two omitted first-generation daughters \(h=p-q\) and
\(j=p-r\) return through the two active diamonds \(q+h=p\) and \(r+j=p\).
The only nonzero terms in the second-order \(p\)-coefficient are

\[
\begin{aligned}
 \mathcal C_p^{[0,1]}(q,h)&=(0,0,-1),\\
 \mathcal C_p^{[0,1]}(r,j)&=(0,1,0).
\end{aligned}
\tag{FN.17}
\]

Therefore

\[
 \boxed{
 U_p^{[2]}=(0,1,-1)=-U_p^{[0]}.}
\tag{FN.18}
\]

This is not a hypothetical later collision.  The full field branches at first
order and reconverges into an already occupied parent mode at the next order.
The reconvergent work has the depletion sign recorded in (FN.10) and (FN.13).

The retained daughter is also revisited.  The full and isolated third-order
\(k\)-coefficients are respectively

\[
 U_{k,F}^{[3]}=(2i,0,0),
 \qquad
 U_{k,G}^{[3]}=\left({2i\over3},0,0\right),
\tag{FN.19}
\]

so restored-network paths change the coefficient by

\[
 U_{k,F}^{[3]}-U_{k,G}^{[3]}
 =\left({4i\over3},0,0\right).
 \tag{FN.20}
\]

Hence a literal full-network no-reconvergence theorem is false even for the
comparison datum that exposed the selected-path tax.

The selected corner itself also receives reconvergent work.  At degree four,
the ten nonzero ordered source terms for \(\ell_1\) come from the five mode
pairs

\[
 \{-q,(1,-2,-1)\},\quad
 \{-r,(1,-1,-2)\},\quad
 \{h,(0,-2,-1)\},\quad
 \{j,(0,-1,-2)\},\quad
 \{k,p\},
 \tag{FN.20a}
\]

with the degree split deciding which orders are nonzero.  Their exact Leray
sum is

\[
 \boxed{U_{\ell_1}^{[4]}=(0,-9/4,9/4).}
 \tag{FN.20b}
\]

Thus the branch paths merge into the selected receiver before modal energy or
positive ancestry is read.

The local tax is also too late to pay any fixed fraction of the simultaneous
signed current.  By symmetry across the three corner rows,

\[
 \sum_{i=1}^3\bigl(E_{\ell_i}^G-E_{\ell_i}^F\bigr)
 =25t^6+O(t^8),
 \tag{FN.20c}
\]

whereas (FN.15) and
\(\mathfrak J_{\rm sing}=P_H/2=H_F'/2\) give

\[
 \mathfrak J_{\rm sing}(t)
 =12(\sqrt2-1)t+2c_4t^3+O(t^5),
 \qquad
 c_4=12-24\sqrt2+6\sqrt3+6\sqrt5>0.
 \tag{FN.20d}
\]

After critical weighting, the aggregate corner diagnostic divided by the
actual height gain is

\[
 {25\sqrt3\,t^6+O(t^8)\over H_F(t)-H_F(0)}
 ={25\sqrt3\over12(\sqrt2-1)}t^4+O(t^6)\longrightarrow0.
 \tag{FN.20e}
\]

The sum in (FN.20c) compares three actual corner rows with three rotated
counterfactual isolated Galerkin systems.  It is a lawful one-time diagnostic,
not an additive same-field action or payer.

## 8. Positive ancestry after merging is not a canonical current

At one time and target mode \(m\), the canonical nonlinear object is the
complete Leray source

\[
 N_m=-i\sum_{\alpha+\beta=m}
 \mathbb P_m\bigl[(\widehat u_\alpha\!\cdot\!\beta)
 \widehat u_\beta\bigr].
\tag{FN.21}
\]

Its modal kinetic work is

\[
 T_m=2\operatorname{Re}(\overline{\widehat u_m}\cdot N_m).
\tag{FN.22}
\]

An ancestry description may split \(N_m=\sum_\gamma N_{m,\gamma}\) and write
\(T_m=\sum_\gamma T_{m,\gamma}\).  The signed sum is unchanged, but the
positive ancestry count

\[
 \mathcal A_{m,\Gamma}:=\sum_{\gamma\in\Gamma}[T_{m,\gamma}]_+
\tag{FN.23}
\]

depends on the partition.  Algebraically, replacing one scalar work entry
\(x\) by \(x+A\) and \(-A\) leaves the total \(x\) unchanged while making the
sum of positive parts arbitrarily large as \(A\to\infty\).  Such an arbitrary
split is not licensed as a new physical triad decomposition; it proves the
opposite point.  A multi-generation ancestry charge has no invariant meaning
until a canonical, same-field decomposition is proved.  The reconvergences
(FN.18)--(FN.20) show that tree histories do merge before energy and positivity
are read.

Thus a Fourier branch is not a separately conserved parcel that can be
recognized and forbidden from being counted again.  The one field adds all
amplitudes entering \(m\), then its total work is evaluated.  The canonical
route object is therefore the signed complete source, exactly as in the
q-face cancellation and singleton-helicity current; pathwise positive ancestry
is a coordinate-dependent majorant.

## 9. New exact route boundary

The two calculations now separate cleanly:

1. the isolated five-mode relay proves that return/detuning supplies no
   geometry-only deficit;
2. the full Taylor jet proves that omitted interactions immediately branch
   the relay and locally tax a selected successor;
3. the same full jet proves that branches reconverge immediately and that the
   selected-path tax coexists with positive total critical-height growth;
4. multi-generation positive ancestry is not invariant after that merge.

Consequently, no-reconvergence/no-recount is not an independent Gold supplier.
Literal reconvergence already occurs, while ancestry counting is noncanonical.
Any lawful full-network theorem must sum the reconvergent triad work with its
signs intact before positivity and then bound every upper prefix primitive of
that aggregate.  This is the existing signed singleton-helicity
current/overlap supplier, not a third route.  Its datum-finite prefix bound
remains unproved.

## 10. Reproduction

The full Taylor recurrence, exact coefficients through sixth order, first
reconvergent diamond, selected Galerkin comparison, positive-part partition
countercheck, and energy cancellation are regression-checked by

```text
ruby problems/navier-stokes/tools/check_full_network_three_arm_taylor_test.rb
```

## Dependencies

- [five-mode triangular successor-relay countertest](mpp-vpi-five-mode-triangular-successor-relay-countertest-20260722.md)
- [moving-front autocatalytic successor-service direction](mpp-zeno-moving-front-autocatalytic-successor-service-direction-20260717.md)
- [homochiral envelope kernel and singleton-helicity current](mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md)
