# MPP Forward-Gold Terminal Cumulative Source-Curve Compactness Test

Date: 2026-06-19

## Status

Direct curve-compactness test complete.

The family-of-curves formulation is useful, but the compactness theorem needed
at the terminal time face is not Weierstrass approximation.  The needed object
is a uniform terminal modulus for the cumulative selected source curves.

Finite \(L^1\) source mass gives bounded variation and Helly compactness.  It
does not rule out an endpoint jump.  A source-square, reverse-Holder, Orlicz, or
equicontinuity theorem would rule it out.

## 1. Cumulative terminal source curves

For a selected moving heat-scale packet, write normalized terminal time as

```math
s\in[-1,0],
```

and let \(a_m(s)\ge0\) be the selected nonlegal positive source density after
retained signed partners, finite donor trees, legal exits, and nonselected
leakage have been removed.

Define the cumulative terminal curve

```math
A_m(\theta)
:=
\int_{-\theta}^{0}a_m(s)\,ds,
\qquad
0\le\theta\le1.
\tag{CSC.1}
```

The desired no-terminal-atom statement is exactly

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_{m\to\infty}A_m(\theta)=0.
}
\tag{CSC.2}
```

This is the precise curve version of the terminal moving-packet trace modulus.

## 2. What finite \(L^1\) gives

Assume only

```math
\int_{-1}^{0}a_m(s)\,ds\le M.
\tag{CSC.3}
```

Then each \(A_m\) is increasing, nonnegative, and has total variation at most
`M`.  Helly selection gives a subsequence converging pointwise at continuity
points to a monotone function \(A_\infty\).

This is compactness, but not no-jump.  The endpoint layer

```math
a_m(s)=m\,{\bf 1}_{(-1/m,0]}(s)
\tag{CSC.4}
```

satisfies `(CSC.3)` with \(M=1\), while

```math
A_m(\theta)=\min(1,m\theta).
\tag{CSC.5}
```

Therefore, for every fixed \(\theta>0\),

```math
\lim_{m\to\infty}A_m(\theta)=1,
\tag{CSC.6}
```

and hence

```math
\lim_{\theta\downarrow0}\limsup_{m\to\infty}A_m(\theta)=1.
\tag{CSC.7}
```

So finite \(L^1\) control produces the exact wrong compactness: the curves
converge to a limiting monotone curve with a jump at the terminal endpoint.

## 3. Why Weierstrass approximation is not the missing theorem

Weierstrass approximation can approximate each fixed continuous curve by
polynomials.  The curves in `(CSC.5)` are not the issue because they are hard to
approximate pointwise.  The issue is that their slopes blow up near
\(\theta=0\):

```math
\sup_{\theta}|A_m'(\theta)|=m.
\tag{CSC.8}
```

Approximating each \(A_m\) by a smooth or polynomial curve does not give a
uniform modulus.  The terminal jump survives because the approximation degree
or Lipschitz constant is allowed to grow with \(m\).

The needed compactness is Arzela-type equicontinuity at \(\theta=0\), namely a
modulus \(\omega(\theta)\downarrow0\) such that

```math
A_m(\theta)\le\omega(\theta)
\quad\text{for all }m.
\tag{CSC.9}
```

This is exactly `(CSC.2)`.

## 4. Source-square gives the modulus

If the selected normalized source density satisfies a uniform \(L_s^2\) bound

```math
\int_{-1}^{0}a_m(s)^2\,ds\le C_2,
\tag{CSC.10}
```

then Cauchy--Schwarz gives

```math
A_m(\theta)
\le
\theta^{1/2}
\left(\int_{-\theta}^{0}a_m(s)^2\,ds\right)^{1/2}
\le
C_2^{1/2}\theta^{1/2}.
\tag{CSC.11}
```

Thus `(CSC.10)` implies `(CSC.2)` with

```math
\omega(\theta)=C_2^{1/2}\theta^{1/2}.
\tag{CSC.12}
```

More generally, any \(p>1\) bound

```math
\|a_m\|_{L_s^p(-1,0)}\le C_p
\tag{CSC.13}
```

gives

```math
A_m(\theta)
\le
C_p\theta^{1-1/p}.
\tag{CSC.14}
```

An Orlicz/de la Vallee-Poussin uniform-integrability bound would also give
`(CSC.2)`, with the corresponding Orlicz modulus.

## 5. Relation to the Navier-Stokes source-square reserve

The curve lemma is a consumer theorem.  It says:

```math
\boxed{
\text{uniform source-square / reverse-Holder / Orlicz source residence}
\Longrightarrow
\text{terminal source anti-atom.}
}
\tag{CSC.15}
```

To use it in the current Navier-Stokes packet route, the selected source density
must first be identified with the source-square density on the same packet:

```math
a_m(s)
\le
C_{\rm car}G_m(s)+\ell_m(s),
\tag{CSC.16}
```

with legal residue satisfying

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\ell_m(s)\,ds=0.
\tag{CSC.17}
```

Then the proved bridge
`mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md` applies.

Without `(CSC.16)`, source-square may control a different tail, sign, packet,
projection, or donor channel than the selected positive source curve \(A_m\).
That is the selected-carrier saturation problem.

## 6. Verdict

The curve route is exact:

```math
\boxed{
\text{TerminalMovingPacketTraceModulus.A}
\equiv
\text{uniform endpoint equicontinuity of }A_m.
}
\tag{CSC.18}
```

Finite \(L^1\) source mass gives only Helly/BV compactness and permits
endpoint jumps.  Weierstrass approximation does not supply the missing
uniform modulus.  The working suppliers are:

```math
\text{SourceSquareReserve.A}
+\text{SelectedSourceSquareCarrierDomination.A},
\tag{CSC.19}
```

```math
\text{TerminalSourceReverseHolder.A / PositiveSourceTraceAC.A},
\tag{CSC.20}
```

or an equivalent strict no-waste/critical-element rigidity theorem that proves
the same endpoint equicontinuity in normalized moving-packet variables.

