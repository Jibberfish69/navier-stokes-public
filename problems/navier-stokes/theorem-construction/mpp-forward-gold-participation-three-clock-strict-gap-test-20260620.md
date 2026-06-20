# MPP Forward-Gold Participation Three-Clock Strict-Gap Test

Date: 2026-06-20

## Status

Direct test complete.  The participation law gives the correct three-clock
accounting, but it does not by itself give the strict gap needed for a
heat-scale descent contradiction.

The missing coercive statement is:

```math
\boxed{
\text{same-fluid participation}
\quad\Longrightarrow\quad
\text{feed is strictly smaller than drain/return on terminal heat scales.}
}
\tag{PTG.1}
```

At current inputs `(PTG.1)` is not proved.  The exact Navier-Stokes heat scaling
allows neutral balance: feed, viscous drain, pressure response, and return can
all live on the same \(r^2/\nu\) clock.

## 1. The three clocks

For a selected packet at radius \(r\), the relevant clocks are:

```math
\tau_{\rm heat}(r)\simeq {r^2\over\nu},
\qquad
\lambda_{\rm feed}(r)\simeq {\nu\over r^2},
\qquad
\lambda_{\rm drain}(r)\simeq {\nu\over r^2}.
\tag{PTG.2}
```

Thus on one heat window

```math
\tau_{\rm heat}(r)\lambda_{\rm feed}(r)\simeq1,
\qquad
\tau_{\rm heat}(r)\lambda_{\rm drain}(r)\simeq1.
\tag{PTG.3}
```

This is the physical reason the fixed-radius throttle works and the shrinking
heat-scale throttle does not.  At fixed radius, the rate is bounded while the
terminal time window shrinks.  At heat scale, the rate grows by the reciprocal
amount.

## 2. The exact normalized participation balance

In heat-scale variables

```math
s={t-t_j\over r_j^2},
\qquad
y={x-x_j\over r_j},
\qquad
u(t,x)=r_j^{-1}v_j(s,y),
\tag{PTG.4}
```

the local packet energy

```math
M_R(s)=\int {1\over2}|v_j(s,y)|^2\rho_R(y)\,dy
\tag{PTG.5}
```

satisfies the exact same-fluid identity

```math
\begin{aligned}
M_R'(s)
&+
\nu\int |\nabla v_j|^2\rho_R\,dy
\\
&=
{1\over2}\int |v_j|^2v_j\cdot\nabla\rho_R\,dy
+
\int q_jv_j\cdot\nabla\rho_R\,dy
\\
&\quad
+
{\nu\over2}\int |v_j|^2\Delta\rho_R\,dy
+
{1\over4}\int |v_j|^2\rho_R\,dy
+
{1\over4}\int |v_j|^2y\cdot\nabla\rho_R\,dy .
\end{aligned}
\tag{PTG.6}
```

This is the actual participation law at the packet level.  It is a coupled
interface identity, not a one-sided inequality.

## 3. The strict-gap theorem one would need

A scale-descent proof would need a genuine gap.  In normalized form, it would
look like

```math
M_R'(s)
+\gamma A_R(s)
\le
R_{\rm legal}(s),
\qquad
\gamma>0,
\tag{PTG.7}
```

or after integration over a selected heat slab \(I\),

```math
\int_I A_R(s)\,ds
\le
C\left(M_R(s_-)-M_R(s_+)\right)
+
C\int_I R_{\rm legal}(s)\,ds.
\tag{PTG.8}
```

Then repeated terminal recurrence would force finite total drop or finite
unweighted action.  This is the desired coercive clock comparison.

But `(PTG.6)` gives only

```math
M_R'(s)+D_R(s)=F_R(s),
\tag{PTG.9}
```

where \(F_R\) is the sum of convection, pressure, cutoff-viscous exchange, and
dilation terms.  The term \(F_R\) has no fixed sign, and the identity does not
imply

```math
F_R(s)\le (1-\gamma)D_R(s)+R_{\rm legal}(s).
\tag{PTG.10}
```

That missing strict inequality is exactly the unweighted reserve/no-waste
problem.

## 4. Neutral heat-scale balance is not excluded

The route-native scalar normal form for the selected feed is

```math
{d\over ds}A(s)+c_{\rm d}A(s)
\le
c_{\rm f}(s)A(s)+R(s),
\tag{PTG.11}
```

where \(c_{\rm d}\) is the normalized drain rate and \(c_{\rm f}\) is the
normalized selected feed rate.

A strict descent would require

```math
c_{\rm f}(s)\le c_{\rm d}-\gamma
\tag{PTG.12}
```

on terminal recurrent slabs, after legal terms.  The participation law supplies
only that both rates are on the same heat clock:

```math
c_{\rm f}(s)\simeq1,
\qquad
c_{\rm d}\simeq1.
\tag{PTG.13}
```

It does not provide the strict sign of \(c_{\rm d}-c_{\rm f}\).  The neutral
case

```math
c_{\rm f}(s)=c_{\rm d}
\tag{PTG.14}
```

has no descent in `(PTG.11)`.  It is exactly the source-balanced terminal pulse
model in normalized variables.

## 5. Donor drain and peak return do not add the missing sign

Finite donor chains are paid because the obligation eventually reaches a
retained signed partner, a legal exit, or a finite depletion term.

An infinite terminal Zeno donor chain can keep repeating the same neutral
heat-scale balance:

```math
r_{j+1}\ll r_j,
\qquad
\tau_j\simeq r_j^2/\nu,
\qquad
c_{{\rm f},j}\simeq c_{{\rm d},j}.
\tag{PTG.15}
```

The physical donor cost then carries the same radius discount:

```math
\sum_j r_j A_j<\infty
\tag{PTG.16}
```

while the normalized recurrence can keep

```math
A_j\ge c_0.
\tag{PTG.17}
```

Peak-backoff gives a payment only when the packet returns before the terminal
face.  The terminal pulse branch is precisely the case where the return is
pushed onto \(t=T^*\).  Forcing that return back into preterminal time is the
terminal trace-modulus theorem, not a consequence of peak-backoff alone.

## 6. Exact proof effect

The participation law proves:

```math
\boxed{
\text{a selected packet is never private; its feed, drain, pressure response,
neighbor exchange, and dilation are one balance.}
}
\tag{PTG.18}
```

It does not prove:

```math
\boxed{
\text{the balance has a strict positive drain gap on terminal heat scales.}
}
\tag{PTG.19}
```

So the strict scale-descent route closes only after one supplies a real
strict-gap theorem, such as:

```math
\boxed{
\text{ParticipationStrictClockGap.A}
}
\tag{PTG.20}
```

or one of its equivalent forms:

```math
\begin{gathered}
\text{same-carrier source-square reserve},\\
\text{selected critical-strain endpoint reserve},\\
\text{normalized CKN terminal Carleson reserve},\\
\text{strict rescaled no-waste Lyapunov drop},\\
\text{selected polar saturation plus no-free terminal Zeno donor chain}.
\end{gathered}
\tag{PTG.21}
```

## Verdict

The three-clock participation picture is the right ontology, but the clock
comparison is currently neutral at heat scale.  To make it coercive, the proof
must show a strict inequality between selected feed and drain/return on the
same carrier.

Absent that strict gap, participation gives exact visibility of the terminal
heat-scale pulse, not its forward-gold exclusion.
