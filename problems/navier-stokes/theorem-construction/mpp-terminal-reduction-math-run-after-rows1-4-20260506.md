# MPP Terminal Reduction Math Run After Rows 1--4

## Purpose

This note does the direct math run that rows 1--4 actually permit.  It does not
rename the remaining obstruction.  It starts from finite terminal
non-continuation, spends the first four table rows, and records the exact
quantity that still has to be proved impossible.

## Step 1: terminal non-continuation forces selected \(H^s\) high-tail blow-up

Assume a first finite classical endpoint `T_*`.

Fix the classical continuation norm actually used on the surface, \(H^s\) with
`s>5/2`. If

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
```

then local `H^s` theory supplies `\tau(\nu,s,M_s)>0`, relaunch from times
approaching `T_*`, and uniqueness on the overlap. Hence finite terminal
non-continuation forces

```math
\limsup_{t\uparrow T_*}\|u(t)\|_{H^s}=+\infty.
\tag{1}
```

Let

```math
e_j^{(s)}(t):=2^{2sj}\|\Delta_j u(t)\|_2^2,
\qquad
E_{N,s}(t):=\sum_{j\ge N}e_j^{(s)}(t).
```

For every fixed `N`,

```math
\sum_{j<N}e_j^{(s)}(t)
\le
C_{N,s}\|u(t)\|_2^2.
\tag{2}
```

Energy bounds the right-hand side.  Therefore `(1)` implies:

```math
\boxed{
\forall N\text{ fixed},\qquad
\limsup_{t\uparrow T_*}E_{N,s}(t)=+\infty.
}
\tag{3}
```

This is the first real purchase of rows 1 and 4: terminal failure cannot be
confined to any fixed low-frequency block in the selected continuation norm.

But `(3)` is not a contradiction.  Energy gives only

```math
\int_0^{T_*}\sum_{j\ge N}D_j(t)\,dt\to0
\qquad (N\to\infty),
\tag{4}
```

where `D_j` is the energy/enstrophy dissipation scale.  A function can have
arbitrarily large pointwise \(H^s\) high-tail peaks while its available
energy-level time integral tends to zero.  So rows 1--4 push the endpoint into
terminal high-frequency concentration in the selected continuation norm; they
do not exclude it.

## Step 2: the selected \(H^s\)-tail inequality would exclude the high-tail blow-up

The required high-tail differential inequality must be written for
`E_{N,s}`, not for the energy-level `H^1` tail:

```math
{d\over dt}E_{N,s}(t)
+c\nu D_{N,s}(t)
\le
A_{N,s}(t)E_{N,s}(t)+R_{N,s}(t),
\tag{5}
```

with

```math
A_{N,s}\in L^1(0,T_*),
\qquad
\int_0^{T_*}R_{N,s}(t)\,dt=o_N(1).
\tag{6}
```

If `(5)`--`(6)` hold for a fixed threshold chosen after the smooth initial
tail, Gronwall and the scheduler give

```math
\sup_{t<T_*}E_{N,s}(t)+\int_0^{T_*}D_{N,s}(t)\,dt<\infty,
\tag{7}
```

contradicting `(3)` once the threshold is chosen in the terminal tail regime.

Thus the real Row 5 mathematical burden is not a slogan.  It is exactly:

```math
\boxed{
\text{prove all non-low-frequency source terms fit into }R_{N,s}
\text{ with } \int R_{N,s}=o_N(1).
}
\tag{8}
```

The fixed low-mode term is not the issue only after it is written at the same
selected derivative level:

```math
LowMode_{N,s}(t)\le C\Lambda_{N,s}(t)E_{N,s}(t),
\qquad
\Lambda_{N,s}\in L^1(0,T_*)\text{ for fixed }N.
\tag{9}
```

So the remaining term is the high/source part of the commutator/source packet
at the selected \(H^s\) derivative level.

## Step 3: absolute high/source control produces the square reserve

The source-wall packet left after low-mode extraction and diffuse-parent Bessel
embedding has the donor-tail form

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
\tag{10}
```

The positive source contribution is controlled by the scale-critical square
reserve

```math
\mathcal R_N
:=
\int_0^{T_*}
\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{11}
```

The Hardy expansion is:

```math
\sum_{k>N}2^kT_k^2
=
\sum_{\ell,m>N+4}D_\ell D_m
\sum_{N<k<\min(\ell,m)-4}2^k
\le C_H
\sum_{\ell,m>N}2^{\min(\ell,m)}D_\ell D_m.
\tag{12}
```

Equivalently, after splitting the double sum,

```math
\sum_{k>N}2^kT_k^2
\le C_H
\sum_{\ell>N}2^\ell D_\ell
\left(\sum_{m>\ell+L_0}D_m\right).
\tag{13}
```

This is the actual mathematical object that appears when the positive high
source is estimated without sign cancellation.  It is stronger than the
first-moment tail `(4)`.

Therefore the direct path is:

```math
\boxed{
\mathcal R_N=o_N(1)
\Longrightarrow
R_{N,s}\text{ in }(5)\text{ is legal}
\Longrightarrow
\text{no terminal }H^s,\ s>5/2,\text{ blow-up in the selected norm}.
}
\tag{14}
```

This is exactly `ScaleCriticalTreeCarleson.A`.

## Step 4: why rows 1--4 do not prove the reserve

Rows 1--4 give fixed-low admissibility and force the obstruction into high
frequency.  They do not control the height of terminal high-frequency pulses.

The scalar ledger obstruction is explicit.  On a terminal window `I_m` of
length `h_m`, let

```math
D_{m+5}(t)=A_m h_m^{-1}{\bf 1}_{I_m}(t),
\qquad
D_\ell(t)=0\text{ otherwise}.
\tag{15}
```

Then the first moment is

```math
\int_{I_m}D_{m+5}(t)\,dt=A_m.
\tag{16}
```

But the `k=m` term of the square reserve is

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^m A_m^2h_m^{-1}.
\tag{17}
```

Choosing

```math
A_m\to0,
\qquad
h_m:=2^mA_m^2
\tag{18}
```

makes the first moment vanish while the square reserve stays bounded below by
the fixed value `1`.

This is not a Navier--Stokes counterexample.  It is the exact mathematical
reason rows 1--4 plus energy do not prove source-wall closure.

## What is left from the original table

After doing the math, the original six-row table has not left rows 1--4 as
independent proof burdens.  Their closure columns reduce into the same high
source problem:

```math
H^s,\ s>5/2,\text{ blow-up impossible in the selected norm}
\Longleftarrow
\text{high-tail/source packet impossible}
\Longleftarrow
ScaleCriticalTreeCarleson.A
\text{ or an equivalent signed/Zeno theorem}.
```

The remaining actual proof targets are:

```math
\boxed{
\text{Row 5: prove the full non-low source/commutator packet gives legal }R_{N,s}
\text{ in }(5).
}
```

and

```math
\boxed{
\text{Row 6: prove }ScaleCriticalTreeCarleson.A
\text{, or replace it by a genuine Zeno rigid-class contradiction.}
}
```

Any attempt to close rows 1--4 beyond this is just another presentation of
Row 5 or Row 6.
