# MPP Forward-Gold Interior Square-Reserve Rezoom Test

Date: 2026-06-20

## Status

Direct test complete.  An interior first-created square-reserve atom in
normalized time does not automatically become a smaller heat-scale child packet.

The rezoom idea is correct only after an additional spatial child-extraction
theorem is proved.  Without that theorem, the interior square pulse becomes a
large active-height / strong-source-norm readout, not a paid forward-gold
reserve.

## 1. Interior square pulse at a base scale

Work on a selected terminal packet with spatial radius \(r\), base frequency
\(\lambda=r^{-1}\), and normalized time \(s\in[-1,0]\).  Let \(J_m\subset[-1,0]\)
be an interior interval with

```math
|J_m|=h_m\downarrow0,
\qquad
\operatorname{dist}(J_m,\{0,-1\})\ge c_0>0.
\tag{ISR.1}
```

The first-created square-reserve model is

```math
\int_{J_m}\lambda D_m(s)^2\,ds\simeq1,
\tag{ISR.2}
```

while the first moment may vanish:

```math
\int_{J_m}D_m(s)\,ds\to0.
\tag{ISR.3}
```

By Cauchy--Schwarz, `(ISR.2)` is compatible with `(ISR.3)` exactly because
\(|J_m|\to0\):

```math
\int_{J_m}D_m(s)\,ds
\le
h_m^{1/2}
\left(\int_{J_m}D_m(s)^2\,ds\right)^{1/2}
\simeq
\left({h_m\over\lambda}\right)^{1/2}.
\tag{ISR.4}
```

This is the square-reserve version of the last-instant pulse, but placed at an
interior normalized time instead of at \(s=0\).

## 2. The heat-ratio test at the base scale

At the base spatial radius \(r\), the normalized interval \(J_m\) has heat ratio

```math
\Theta_m=h_m.
\tag{ISR.5}
```

Thus \(h_m\downarrow0\) is subheat relative to the base packet.  The heat-ratio
trichotomy says that a subheat window cannot carry order-one normalized feed if
the selected feed coefficient stays scale-compatible:

```math
\lambda^+(s)\le C{\nu\over r^2}.
\tag{ISR.6}
```

Indeed,

```math
\int_{J_m}\lambda^+(s)\,ds
\le
C h_m
\to0.
\tag{ISR.7}
```

Therefore an order-one square reserve on \(J_m\) must violate the bounded
base-scale coefficient picture.  It appears as a large active-height or
strong-source event:

```math
H_m(J_m)\to\infty.
\tag{ISR.8}
```

This is a real readout.  It is not yet a payment.

## 3. Rezooming needs a spatial child

The tempting move is to declare \(J_m\) to be a heat-scale window at the smaller
radius

```math
r_m' = r\,h_m^{1/2}.
\tag{ISR.9}
```

Then \(r_m'^2\simeq r^2h_m\), so the time length of \(J_m\) is a heat time for
the smaller radius.  But this is valid only if the solution actually contains a
retained spatial packet at radius \(r_m'\), or equivalently active frequency

```math
\lambda_m'=\lambda h_m^{-1/2}.
\tag{ISR.10}
```

The square-reserve atom at the base shell does not by itself prove that.  A
base-frequency packet can be sharply localized in time while remaining a
base-frequency spatial packet.

The linear model from the Duhamel/maximal-regularity test gives the obstruction:

```math
u_m(s)=b_m\chi((s-s_m)/h_m)\phi_\lambda,
\tag{ISR.11}
```

where \(\phi_\lambda\) stays at frequency \(\lambda\).  The time support has
length \(h_m\), but the spatial frequency does not move to
\(\lambda h_m^{-1/2}\).  Rezooming time alone would create a fake child packet.

## 4. Exact missing child-extraction theorem

A successful rezoom route would need:

```math
\boxed{
\text{InteriorSquareReserveChildExtraction.A}
}
\tag{ISR.12}
```

meaning:

```math
\begin{gathered}
\int_{J_m}\lambda D_m(s)^2\,ds\ge c_0,\qquad |J_m|=h_m\downarrow0,\\
\text{legal exits and retained base-scale inheritance removed}
\\
\Longrightarrow
\text{there exists a retained child packet at scale }r h_m^{1/2}
\text{ with normalized action }\ge c_1.
\end{gathered}
\tag{ISR.13}
```

Current inputs do not prove `(ISR.13)`.  The active-height consequence gives a
large coefficient, but not a spatial child.  Duhamel gives same-window refill,
but only in a weak source norm.  Frequency travel-time gives no shell-by-shell
obligation because shallow-band feed can act on the same heat clock.

## 5. Consequence for the interior branch

The interior first-created square reserve now has a clean split:

```math
\boxed{
\text{child packet extracted at }r h_m^{1/2}
}
\tag{ISR.14}
```

which returns the problem to the terminal heat-scale/Zeno branch at a smaller
spatial scale, or

```math
\boxed{
\text{no child packet extracted; only active height / strong source is visible.}
}
\tag{ISR.15}
```

The first branch still needs strict scale descent, source-square, no-free Zeno,
or compact-profile rigidity to stop infinite repetition.  The second branch is
a CM-facing Field/height readout only after Pack/Part admission, or a
forward-gold payment only after an active-height cap or strong source-norm
theorem is proved.

## Verdict

The rezoom route is not an independent closure of the interior first-created
reserve.

It proves a useful refinement:

```math
\boxed{
\text{interior square atom}
\Longrightarrow
\text{subheat at the base scale}
\Longrightarrow
\text{large active height or a genuine smaller-scale child.}
}
\tag{ISR.16}
```

Current inputs do not turn either alternative into a forward-gold contradiction.
The branch returns to:

```math
\text{InteriorSquareReserveChildExtraction.A}
```

plus strict scale descent/no-free Zeno if the child exists, or to

```math
\text{ActiveWindowHeight.A / strong source-norm / Field readout}
```

if only large base-scale height is visible.
