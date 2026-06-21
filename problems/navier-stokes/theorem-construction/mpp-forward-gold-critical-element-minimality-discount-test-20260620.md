# MPP Forward-Gold Critical-Element Minimality Discount Test

Date: 2026-06-20

## Status

Direct test complete.  Critical-element minimality does not remove the
heat-scale radius discount from the current inputs.  It organizes the surviving
terminal pulse, but it does not by itself turn radius-weighted physical control
into an unweighted heat-scale action reserve.

The exact missing assertion is:

```math
\boxed{
\text{minimal terminal obstruction}
\quad\Longrightarrow\quad
\text{unweighted terminal critical-action tightness.}
}
\tag{CMD.1}
```

At current resolution `(CMD.1)` is not installed.  Proving it would be a new
gold theorem, not a consequence of ordinary compactness or of choosing the
smallest packet.

## 1. The discount-removal question

For selected terminal heat-scale packets

```math
Q_j
=
B_{r_j}(x_j)\times(t_j-r_j^2,t_j],
\qquad r_j\downarrow0,
\tag{CMD.2}
```

write the normalized critical action as

```math
A_j
:=
\int_{-1}^{0}\int_{B_R}
\left(
|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}
\right)\,dy\,ds.
\tag{CMD.3}
```

The retained terminal pulse branch is exactly

```math
A_j\ge c_0>0
\quad\text{on infinitely many selected packets.}
\tag{CMD.4}
```

Physical energy, dissipation, local-energy defect, and stress-work ledgers give
only radius-weighted control of this kind of normalized object:

```math
\sum_j r_j A_j<\infty
\quad\text{or}\quad
\sum_j r_j^2\mathcal C(Q_j)<\infty.
\tag{CMD.5}
```

The forward-gold anti-atom needs an unweighted statement:

```math
\sum_j A_j<\infty,
\tag{CMD.6}
```

or the moving endpoint modulus

```math
\lim_{\varepsilon\downarrow0}\limsup_j
\mu_j^{ren}
\left(B_R\times[-\varepsilon,0]\right)
=0.
\tag{CMD.7}
```

So the mathematical question is whether minimality can upgrade `(CMD.5)` to
`(CMD.6)` or `(CMD.7)`.

## 2. Minimal normalized size does not count scales

Minimality can choose the smallest surviving normalized obstruction size, for
example

```math
\inf\{A_j:\ Q_j\text{ is selected and retained}\}=c_0.
\tag{CMD.8}
```

That choice is scale invariant.  It is indifferent to whether the same
normalized obstruction occurs once or on a dyadic Zeno stack.

The scalar bookkeeping countermodel is

```math
r_j=2^{-j},
\qquad
A_j=1.
\tag{CMD.9}
```

Then

```math
\sum_j r_jA_j<\infty,
\qquad
\sum_j A_j=\infty.
\tag{CMD.10}
```

This is not being used as an exact Navier-Stokes solution.  It proves the
logical point: no argument using only scale-invariant minimal size plus
radius-weighted physical control can imply unweighted heat-scale summability.
Navier-Stokes scaling preserves the normalized profile, so the equation must
add a strict cross-scale mechanism before `(CMD.10)` can be ruled out.

## 3. Minimal physical cost selects nothing

One might instead minimize physical packet cost.  For a critical packet

```math
u_j(t,x)
=
a_jr_j^{-1}
V\!\left({t-t_j\over r_j^2},{x-x_j\over r_j}\right),
\tag{CMD.11}
```

there are fixed profile-dependent constants \(0<c_{phys}(V)\le C_{phys}(V)<\infty\)
such that

```math
c_{phys}(V)a_j^2r_j
\le
E_j+D_j+\mu_{LE}^{phys}(Q_j)
\le
C_{phys}(V)a_j^2r_j,
\tag{CMD.12}
```

while the normalized critical currencies have fixed-profile homogeneous powers

```math
\mathcal C_{L^3/CKN}(u_j)=C_3(V)a_j^3,
\qquad
\mathcal C_{L^5}(u_j)=C_5(V)a_j^5,
\qquad
\mathcal C_{src^2}(u_j)=C_{src^2}(V)a_j^2
\quad\text{or higher.}
\tag{CMD.13}
```

For any fixed normalized size interval \(0<a_-\le a_j\le a_+<\infty\), the
physical cost tends to zero as \(r_j\downarrow0\).  Thus physical-cost
minimality does not select a rigid critical object; it drives the selected
packet toward the terminal scale where the physical ledger is cheapest.

## 4. Soft compactness loses the count

Rescaling each packet by

```math
x=x_j+r_jy,
\qquad
t=t_j+r_j^2s,
\qquad
u(t,x)=r_j^{-1}v_j(s,y)
\tag{CMD.14}
```

can extract a local suitable limit on fixed normalized cylinders.  That
compactness is local in \(j\).  It remembers the selected packet profile, but it
does not remember the unweighted number of prior heat-scale packets.

The endpoint layer can still converge to

```math
\mu_*^{src}(B_R\times\{0\})>0,
\qquad
\mu_*^{src}(B_R\times[-R^2,-a])=0
\quad(a>0).
\tag{CMD.15}
```

So the ancient object on open negative-time strips may be regular, trivial, or
nonstationary while the retained obstruction lives on the terminal boundary
face.  Compact ancient rigidity cannot kill a boundary defect that has not been
evacuated into the interior orbit.

## 5. What would actually remove the discount

There are only three noncircular ways for minimality to become useful here.

### Strict scale descent

One could prove that every retained terminal packet produces a strictly smaller
same-class retained packet:

```math
A_{j+1}
\le
\theta A_j+\mathrm{Legal}_j,
\qquad
0<\theta<1,
\qquad
\sum_j\mathrm{Legal}_j<\infty.
\tag{CMD.16}
```

Then an infinite Zeno chain would contradict \(A_j\ge c_0\).  Current inputs do
not give such a strict factor.  The exact Navier-Stokes heat scaling is neutral
at this exponent, so a strict descent theorem would need a new asymmetry:
first-creation charge, same-carrier source-square gain, selected polar
saturation, or a genuine no-waste drop.

### Selected-carrier decoupling plus compact orbit

One could prove lower semicontinuity and decoupling for the actual selected
positive carrier:

```math
\left|
\mu_{terminal}^{src,+}(u_m)
-
\sum_{\alpha\in A_m}
\mu_{terminal}^{src,+}(U^\alpha)
\right|
\to0,
\tag{CMD.17}
```

after localization, projection, lifting, packet selection, and positive-part
extraction.  Together with uniqueness of the minimal profile, this would
produce compact orbit control.  Current profile decomposition supplies energy
orthogonality, not `(CMD.17)`.  The missing content is the same selected-carrier
stability / same-shadow trace identity already exposed on Door 1.

### Rescaled no-waste drop

One could construct a lower-bounded rescaled functional satisfying

```math
-{d\over ds}L(s)
\ge
c\,A_{\rm crit}(s)-R_{\rm legal}(s),
\qquad
\inf_sL(s)>-\infty,
\qquad
\int R_{\rm legal}<\infty.
\tag{CMD.18}
```

That would give unweighted action summability directly.  Current pressure-
corrected quadratic, commutator, pressure-memory, and local nonlinear-corrector
tests do not produce `(CMD.18)`.  They all return to the same unweighted
critical reserve.

## 6. Exact proof effect

Critical-element minimality is still useful as an organizing principle:

```math
\text{finite-time breakdown}
\Longrightarrow
\text{least retained heat-scale obstruction}
\Longrightarrow
\text{test for compact/no-waste rigidity.}
\tag{CMD.19}
```

But it does not by itself prove the action reserve:

```math
\boxed{
\text{minimality}
+\sum_j r_jA_j<\infty
+A_j\ge c_0
\not\Longrightarrow
\sum_jA_j<\infty.
}
\tag{CMD.20}
```

The missing theorem has to add one of:

```math
\boxed{
\text{StrictScaleDescent.A}
}
\tag{CMD.21}
```

or

```math
\boxed{
\text{SelectedCarrierProfileDecoupling.A}
+\text{CompactOrbitProduction.A}
}
\tag{CMD.22}
```

or

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
}
\tag{CMD.23}
```

or an equivalent source-square / selected critical-strain / normalized CKN
terminal reserve.

## Verdict

The critical-element route cannot be spent as a solved gold supplier until it
proves discount removal.  Minimality chooses the least normalized obstruction;
it does not count how many heat-scale copies occur and it does not give terminal
endpoint tightness.

Thus the forward-gold frontier remains the same but sharper:

```math
\boxed{
\text{remove the heat-scale radius discount by a strict equation mechanism,}
}
\tag{CMD.24}
```

not by compactness language alone.  Without that strict mechanism, the retained
terminal heat-scale pulse remains visible but not excluded by forward gold, and
must be routed as a CM Part/Field witness object.
