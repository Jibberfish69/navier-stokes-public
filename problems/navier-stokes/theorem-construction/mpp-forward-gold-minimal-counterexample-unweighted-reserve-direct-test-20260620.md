# MPP Forward-Gold Minimal-Counterexample Unweighted Reserve Direct Test

Date: 2026-06-20

## Status

Direct minimal-counterexample/descent test complete.  Choosing a minimal failure
of the unweighted terminal critical-action reserve does not by itself prove the
reserve.

The method gives a useful dichotomy:

```math
\boxed{
\text{minimal reserve failure}
\Longrightarrow
\text{terminal endpoint atom}
\quad\text{or}\quad
\text{first-created heat-scale reserve.}
}
\tag{MCUR.0}
```

The first branch is exactly the terminal moving-packet trace-modulus problem.
The second branch is exactly `ReserveCreationCharge.A`.  Current inputs do not
close either branch.

## 1. Target and negation

Let the selected terminal heat-scale packets be

```math
Q_m=B_{r_m}(x_m)\times(T_m-r_m^2,T_m],
\qquad
r_m\downarrow0,
\tag{MCUR.1}
```

with normalized variables

```math
x=x_m+r_my,
\qquad
t=T_m+r_m^2s,
\qquad
u(t,x)=r_m^{-1}v_m(s,y),
\qquad
p(t,x)=r_m^{-2}q_m(s,y).
\tag{MCUR.2}
```

Write the selected normalized critical action density as

```math
a_m(s)
=
\int_{B_R}
\left(
|v_m|^3+|q_m|^{3/2}+|S(v_m)|^{5/2}
\right)(s,y)\,dy,
\qquad
-1\le s\le0.
\tag{MCUR.3}
```

Failure of the unweighted reserve gives, after legal exits and already visible
CM readouts are removed, a sequence with

```math
\int_{-1}^{0}a_m(s)\,ds\ge c_0>0
\tag{MCUR.4}
```

and no summable/tail-depleting upper bound for this same selected family.

The minimal-counterexample idea is to choose such a sequence with minimal
surviving terminal action, or choose the first normalized time at which a fixed
portion of the action appears.

## 2. Time-concentration split

Define the terminal concentration function

```math
\Theta(\varepsilon)
:=
\limsup_m
\int_{-\varepsilon}^{0}a_m(s)\,ds.
\tag{MCUR.5}
```

There are two cases.

### Case A: terminal endpoint concentration

If

```math
\lim_{\varepsilon\downarrow0}\Theta(\varepsilon)>0,
\tag{MCUR.6}
```

then the selected action has a terminal time-face atom.  This is not a compact
ancient profile on \(s<0\).  It is a boundary defect at \(s=0\).

The model is

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{MCUR.7}
```

For every fixed \(a>0\), this layer disappears on \([-1,-a]\), while

```math
a_m(s)\,ds\rightharpoonup\delta_0.
\tag{MCUR.8}
```

Thus compactness on strict negative-time strips sees no forbidden interior
object.  The missing theorem is exactly

```math
\boxed{
\text{TerminalMovingPacketTraceModulus.A}
}
\tag{MCUR.9}
```

or an equivalent same-carrier source-square, reverse-Holder, positive trace AC,
or strict no-waste theorem.

### Case B: interior residence / first appearance

If `(MCUR.6)` fails, then some fixed fraction of the selected action lives away
from the terminal face.  There exist \(\varepsilon_0>0\), \(\eta>0\), and a
subsequence such that

```math
\int_{-1}^{-\varepsilon_0}a_m(s)\,ds\ge\eta.
\tag{MCUR.10}
```

Minimality then lets one choose a first-appearance subwindow \(W_m\) where a
fixed amount of the reserve is born after the past shadow and legal losses have
been removed:

```math
\left[
\mathcal R_N(W_m)
-(1-\delta)\mathcal R_N(\operatorname{Past}(W_m))
-\operatorname{Loss}_{legal}(W_m)
\right]_+
\ge c_\eta.
\tag{MCUR.11}
```

To turn this into a contradiction one needs a charge estimate

```math
\left[
\mathcal R_N(W_m)
-(1-\delta)\mathcal R_N(\operatorname{Past}(W_m))
-\operatorname{Loss}_{legal}(W_m)
\right]_+
\le
\operatorname{Charge}_N(W_m)+o_N(1),
\tag{MCUR.12}
```

with summable or terminal-tail-depleting charge.  This is precisely
`ReserveCreationCharge.A`.

The first-moment charge is not enough.  On a heat-scale first-appearance window

```math
h_m=2^{-2m},
\qquad
D_{m+5}(t)=2^{-3m/2}h_m^{-1}{\bf 1}_{I_m}(t),
\tag{MCUR.13}
```

one has

```math
\int_{I_m}D_{m+5}(t)\,dt=2^{-3m/2}\to0,
\tag{MCUR.14}
```

while

```math
\int_{I_m}2^mD_{m+5}(t)^2\,dt=1.
\tag{MCUR.15}
```

So first-appearance descent removes inherited past mass, but it does not create
the missing unweighted payment.

## 3. Compactness reading

The same dichotomy appears in compactness language.

Case A produces a local suitable ancient limit on \(s<0\) plus a boundary defect
measure on \(s=0\).  Ancient rigidity cannot touch the defect until a no-waste
or terminal-trace theorem identifies it with interior flux, dissipation,
pressure trace, or the selected carrier.

Case B gives nonzero action on a genuine negative-time strip.  Soft compactness
can produce a nonzero local suitable ancient object on that strip, but that is
not a contradiction.  Smooth nonzero ancient local solutions exist unless
additional hypotheses are produced, such as compact orbit, finite unweighted
critical action, Type I/self-similar structure, or a no-waste rigidity condition.

Thus compactness/descent does not replace the reserve.  It only locates the
missing reserve in one of two forms:

```math
\boxed{
\text{endpoint trace tightness}
}
\qquad
\text{or}
\qquad
\boxed{
\text{first-created reserve charge}.
}
\tag{MCUR.16}
```

## 4. Exact consequence

The minimal-counterexample route proves the conditional implication

```math
\boxed{
\text{TerminalMovingPacketTraceModulus.A}
+
\text{ReserveCreationCharge.A}
+
\text{compact/no-waste rigidity for the interior branch}
\Longrightarrow
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\tag{MCUR.17}
```

At current route resolution, the last two inputs are not independent of the
reserve.  `ReserveCreationCharge.A` needs active height, source-square, critical
action, donor lower-frame trace, source residence, or strict no-waste.  Compact
rigidity needs a no-waste compact ancient element, and production of that object
again needs terminal trace tightness or same-carrier reserve control.

## Verdict

The minimal-counterexample pivot is useful but not a closure theorem:

```math
\boxed{
\text{minimality localizes the unpaid reserve; it does not pay it.}
}
\tag{MCUR.18}
```

The remaining forward-gold object is still the same non-alias theorem:

```math
\boxed{
\textbf{UnweightedTerminalCriticalActionReserve.A}
}
\tag{MCUR.19}
```

or a genuinely smaller theorem that creates that unweighted reserve on the
actual selected positive carrier.
