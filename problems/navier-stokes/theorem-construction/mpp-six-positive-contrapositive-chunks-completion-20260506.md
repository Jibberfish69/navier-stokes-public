# MPP Six Positive/Contrapositive Chunks Completion

## Status

This note completes the requested six-row table as theorem-facing route work.
Here "complete" means that each row is run to its honest mathematical endpoint:

```math
\text{positive estimate}
\quad\Longleftrightarrow\quad
\text{contrapositive failure mode}
\quad\Longrightarrow\quad
\text{exact installed closure or exact remaining wall}.
```

It does not promote the lane to a proof of global smoothness.  Rows 1--4 are
unconditional implication criteria; see
`mpp-six-chunks-rows-1-4-unconditional-implication-criteria-20260506.md`.  They
prove the reduction/continuation implications, not the global boundedness or
propagation hypotheses.  Row 5 closes only after adding the lifted high-side
remainder that the four-item failure list omits.  Row 6 is the current live
source-wall root:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Thus this pass is a proof-table completion, not a release promotion.

## Theorem `SixChunkTable.A`

Let `u` be a smooth incompressible Navier--Stokes solution on a finite
classical interval below a putative terminal time `T_*`, on the active periodic
or Euclidean theorem surface used by the lane.  Then the six requested positive
chunks have the following exact contrapositive forms.

1. Bounded `H^s`, `s>5/2`, continuation:

```math
\text{terminal non-continuation at }T_*
\Longrightarrow
\limsup_{t\uparrow T_*}\|u(t)\|_{H^s}=+\infty
\quad\text{for the selected }s>5/2\text{ continuation norm.}
```

2. Mixed-jet tower continuation:

```math
\text{terminal non-continuation}
\Longrightarrow
\text{no admissible weighted mixed-jet tower remains closed at }T_*.
```

3. Next-time envelope reduction:

```math
\mathfrak U_s
\le
\nu\tau\mathfrak D_s^{(2)}
+C_s\tau\mathfrak A_s^2
```

implies

```math
\mathfrak U_s\text{ blows up}
\Longrightarrow
\mathfrak D_s^{(2)}\text{ blows up}
\quad\text{or}\quad
\mathfrak A_s^2\text{ blows up}.
```

4. Low-mode packet reduction:

```math
LowMode_N(t)
\le
C\Lambda_N(t)E_N(t)
```

implies

```math
LowMode_N(t)\text{ is bad}
\Longrightarrow
\Lambda_N(t)\text{ is large}
\quad\text{or}\quad
E_N(t)\text{ is large}.
```

For fixed `N`, `\Lambda_N` is admissible on the classical energy surface; hence
a terminal obstruction cannot be a purely fixed low-mode packet.

5. Full commutator estimate to gradient-tail differential inequality:

```math
GC.A+Coeff.A+Sched.A
\Longrightarrow
PST.A.
```

Contrapositively, failure of gradient-tail control forces failure of one of the
commutator inputs, coefficient admissibility, or scheduler propagation.  The
theorem-primary list must include the lifted high-side remainder:

```math
Coeff.A,\ LowMode.A,\ SP.A,\ HH.A,\ LiftedHighSide.A,\ Sched.A.
```

The four-item list

```math
Coeff.A,\ HH.A,\ SP.A,\ Sched.A
```

is not exhaustive unless `LiftedHighSide.A` is already included inside the
declared full commutator estimate.

6. Parent-square source-wall reduction:

```math
ParentSquareEmbed.A
+ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

Since `ParentSquareEmbed.A` is installed under the transported Bessel packet
hypotheses, the legal contrapositive is

```math
\neg LocalPositiveSourceCarleson.A
\Longrightarrow
\neg ScaleCriticalTreeCarleson.A
```

after installed legal-loss and packet-Bessel ledgers are held fixed.

The theorem needed to make source-wall failure impossible is still exactly
`ScaleCriticalTreeCarleson.A`, or the alternate Zeno rigid-class pair.

## Row 1: `bounded H^s, s>5/2 => continuation`

The installed continuation surface is
`classical-h1-continuation-lemma.md`, now corrected to the `H^s`, `s>5/2`,
relaunch theorem.  Assume

```math
M_s:=\sup_{0\le t<T}\|u(t)\|_{H^s}<\infty,\qquad s>5/2.
```

Choose `t_n\uparrow T`.  Local well-posedness from `H^s` data gives a lifespan
`\tau=\tau(\nu,s,M_s)>0` for every datum `u(t_n)`, independent of `n`.  For `n`
large, `t_n+\tau>T`.  Uniqueness in the strong/classical class identifies the
local solution launched at `t_n` with the old solution on `[t_n,T)`, and
therefore extends it past `T`.

This proves:

```math
\boxed{
\text{finite terminal non-continuation}
\Longrightarrow
H^s,\ s>5/2,\text{ blow-up in the selected continuation norm}.
}
```

What it does not prove is the next sentence in the user's closure column:

```math
H^s,\ s>5/2,\text{ blow-up}\Longrightarrow\bot.
```

The correct route reading is narrower.  For any fixed threshold `N`, the selected
Sobolev tail

```math
E_{N,s}(t):=\sum_{j\ge N}2^{2sj}\|\Delta_j u(t)\|_2^2
```

must become unbounded along the terminal approach.  The low part obeys

```math
\sum_{j<N}2^{2sj}\|\Delta_j u(t)\|_2^2
\le
C_{N,s}\|u(t)\|_2^2.
```

The fixed low part is controlled by energy with an `N`-dependent constant.  So
terminal `H^s` blow-up cannot be a purely fixed-low-mode obstruction; it must
force selected high-frequency tail failure for every sufficiently useful
threshold choice.  In the CM route this is a Field-face/source-wall
manifestation only after Pack/Part alternatives and readout/legal-loss
alternatives have been routed.

Thus Row 1 is closed as a continuation theorem and as a contrapositive
high-frequency reduction.  It is not, by itself, a contradiction theorem.

## Row 2: `closed mixed-jet tower => continuation`

The installed surfaces are:

- `weighted-mixed-jet-closure-implies-classical-continuation.md`;
- `mixed-jet-hs-quadratic-convolution-reduction.md`.

For `s>5/2`, define

```math
\mathfrak A_s(\tau,r,t)
:=
\sum_{m,\alpha}
{\tau^m r^{|\alpha|}\over m!\alpha!}
\|\partial_t^m\partial_x^\alpha u(t)\|_{H^s}.
```

If

```math
\sup_{t<T}\mathfrak A_s(\tau,r,t)<\infty,
```

then the base rung `(m,\alpha)=(0,0)` gives

```math
\sup_{t<T}\|u(t)\|_{H^s}
\le
\sup_{t<T}\mathfrak A_s(\tau,r,t)<\infty.
```

Since `s>5/2`, this is a classical continuation norm.  Therefore terminal
non-continuation forces the weighted tower to fail:

```math
\boxed{
\text{terminal non-continuation}
\Longrightarrow
\forall(\tau,r,s)\text{ admissible, }
\sup_{t<T_*}\mathfrak A_s(\tau,r,t)=+\infty
\text{ or the tower is not propagated.}
}
```

The quadratic convolution theorem proves that transport and pressure obey the
same factorially weighted quadratic law:

```math
\mathfrak T_s+\mathfrak P_s
\le
C_s\mathfrak A_s^2.
```

Hence tower failure is not a binomial-counting failure.  The unresolved burden
is a genuine propagation/damping theorem for `\mathfrak A_s`.

## Row 3: next-time envelope failure

The installed source is `weighted-mixed-jet-next-time-envelope-reduction.md`.
It proves

```math
\mathfrak U_s(\tau,r)
\le
\nu\tau\,\mathfrak D_s^{(2)}(\tau,r)
+
C_s\tau\,\mathfrak A_s(\tau,r)^2.
```

The contrapositive is elementary but important:

```math
\boxed{
\mathfrak U_s\text{ unbounded}
\Longrightarrow
\mathfrak D_s^{(2)}\text{ unbounded}
\quad\text{or}\quad
\mathfrak A_s^2\text{ unbounded}.
}
```

Proof: if both right-hand inputs remain bounded, the displayed inequality
bounds `\mathfrak U_s`, contradicting next-time blow-up.

This row therefore does not create a third blow-up channel.  It reduces
next-time failure to the dissipative envelope or the already named quadratic
tower quantity.  Closing both channels globally is the mixed-jet propagation
problem, not a consequence of Row 3 alone.

## Row 4: low-mode packets

The installed strict low-mode surface is `gradient-paraproduct-reduction-lemma.md`.
For fixed `N`,

```math
\Lambda_N(t):=\|\nabla S_{N-4}u(t)\|_\infty,
```

and the strict low-high plus high-low packets obey

```math
\sum_{j\ge N}|LH_j|+\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t).
```

Therefore, for any badness threshold `B>0`,

```math
\sum_{j\ge N}|LH_j|+\sum_{j\ge N}|HL_j|>B
\Longrightarrow
\Lambda_N(t)E_N(t)>B/C.
```

Equivalently, after choosing any splitting parameter `K>0`,

```math
BadLowMode_N(B)
\Longrightarrow
\Lambda_N(t)>K
\quad\text{or}\quad
E_N(t)>B/(CK).
```

For fixed `N`, Bernstein and energy give

```math
\Lambda_N(t)\le C_N\|u(t)\|_2,
```

so the `\Lambda_N` channel is fixed-threshold admissible on finite energy
intervals.  Thus a terminal obstruction cannot be "the low modes" alone.  It
must either be pushed into the high tail `E_N`, into a moving-threshold
scheduler issue, or into a higher source-wall packet.

This closes the requested low-mode contrapositive in the precise fixed-cutoff
sense.  It does not prove that the high tail/source wall is impossible.

## Row 5: full commutator estimate and gradient-tail control

The positive implication is the displayed gradient-control route:

```math
GC.A
\Longrightarrow
{d\over dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C_{\eta,M,\nu}\widetilde\Lambda_N^\sharp(t)E_N(t)
+C_*2^{-2\delta N}.
```

With fixed-threshold coefficient admissibility and the scheduler theorem, this
gives high-tail suppression:

```math
\sup_I E_N+\int_I D_N\le\rho.
```

Thus, if all inputs to this route are installed, gradient-tail failure is
contradictory by Gronwall plus scheduler propagation.

The honest contrapositive is:

```math
\neg PST.A
\Longrightarrow
\neg GC.A
\quad\text{or}\quad
\neg Coeff.A
\quad\text{or}\quad
\neg Sched.A.
```

Expanding `GC.A` by the repaired packet split gives:

```math
\neg GC.A
\Longrightarrow
\neg LowMode.A
\quad\text{or}\quad
\neg SP.A
\quad\text{or}\quad
\neg HH.A
\quad\text{or}\quad
\neg LiftedHighSide.A.
```

Installed/local statuses:

- `Coeff.A` is fixed-threshold admissible by the low-mode and finite-collar
  coefficient estimates.
- `LowMode.A` is installed by the strict paraproduct reduction.
- `SP.A` is installed by the threshold-spill collar reduction.
- `HH.A` is installed under the enstrophy component by the cubic-tail
  coefficient-margin lemma.
- `Sched.A` is installed conditionally once `GC.A` is accepted.
- `LiftedHighSide.A` is not safely removable from the theorem-primary audit.

The older four-channel failure list

```math
\text{coefficient integrability, high-high, spill, scheduler}
```

is therefore incomplete on the theorem-primary surface.  It is valid only if
the phrase "full commutator estimate" already includes a theorem-grade
discharge of the lifted high-side remainder.  The live source pack
`gradient-discharge-source-pack.md` and the exact packet note
`gradient-high-side-remainder-packet.md` keep that lifted remainder as a real
frontier unless a later authority surface explicitly promotes `GC.A` with that
slot included.

So Row 5 is complete in the following exact sense:

```math
\boxed{
GC.A+Coeff.A+Sched.A\Longrightarrow PST.A,
}
```

and

```math
\boxed{
\neg PST.A
\Longrightarrow
\neg LiftedHighSide.A
\text{ or one of the listed installed packets fails.}
}
```

It is not a source-wall discharge unless `LiftedHighSide.A` or an equivalent
native source-control theorem is installed.

## Row 6: `ParentSquareEmbed => ScaleCriticalTreeCarleson`

The installed source is
`mpp-parent-square-embed-and-scalecritical-reserve-reduction-20260505.md`.

For the legal parent-child source kernel

```math
K(P,P^-)=\langle\chi_P,\mathcal M\phi_{P^-}\rangle,
```

the parent-to-child operator is

```math
T=C\mathcal M B,
```

where `B` is parent Bessel synthesis, `C` is child Bessel analysis, and
`\mathcal M` is the bounded source multiplier.  Therefore

```math
\sum_P
\left|
\sum_{P^-\prec P}K(P,P^-)a_{P^-}
\right|^2
\le
C\sum_{P^-}|a_{P^-}|^2+o_N(1).
```

After Cauchy and Young, the positive source term is bounded by

```math
\theta\sum_P D_P
+
C_\theta\sum_{P^-}|A_{P^-}|^2
+Loss_{legal}+o_N(1).
```

For the actual scale-normalized donor factor,

```math
\sum_{P^-}|A_{P^-}|^2
:=
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
```

Thus:

```math
\boxed{
ParentSquareEmbed.A
+
ScaleCriticalTreeCarleson.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
}
```

Contrapositively, holding installed legal losses and `ParentSquareEmbed.A`
fixed,

```math
\boxed{
\neg LocalPositiveSourceCarleson.A
\Longrightarrow
\neg ScaleCriticalTreeCarleson.A.
}
```

This is the exact requested source-wall reduction.

The requested final closure

```math
ScaleCriticalTreeCarleson.A\text{ failure is impossible}
```

is not installed.  The Bellman reserve attempt shows the precise break: the
installed first-moment dissipation

```math
\int\sum_{k>N}D_k(t)\,dt\to0
```

does not imply

```math
\int
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\to0.
```

Short heat-window pulses can preserve the first moment while keeping the
scale-critical square reserve non-small.  That scalar pulse model is not a
Navier--Stokes counterexample; it is a countermodel to the installed scalar
ledgers.  Therefore the source wall remains genuinely open until one proves
`ScaleCriticalTreeCarleson.A` or the alternate Zeno rigid-class pair.

## Completion Table

| Row | Positive chunk | Contrapositive completion | Status |
| --- | --- | --- | --- |
| 1 | `bounded H^s, s>5/2 => continuation` | terminal non-continuation forces selected `H^s` blow-up | unconditional continuation criterion; does not prove bounded `H^s` |
| 2 | `closed mixed-jet tower => continuation` | terminal non-continuation forces tower propagation/closure failure | unconditional sufficiency criterion; propagation still open |
| 3 | `next-time envelope <= dissipation + quadratic tower term` | next-time blow-up forces dissipative-envelope or tower blow-up | unconditional algebraic reduction; right-hand channels still open |
| 4 | `low-mode packets <= Lambda_N E_N` | bad fixed-low packet forces fixed coefficient size or high-tail size | unconditional fixed-threshold estimate; moving/high-frequency obstruction still open |
| 5 | `full commutator estimate => gradient-tail differential inequality` | tail control failure forces failure of `GC.A`, coefficient, scheduler, or an internal packet; exact list includes `LiftedHighSide.A` | conditional; not source-wall closure |
| 6 | `ParentSquareEmbed => source-wall reduced to ScaleCriticalTreeCarleson` | source-wall failure forces `ScaleCriticalTreeCarleson.A` failure once installed packet/legal ledgers are held fixed | installed reduction; `ScaleCriticalTreeCarleson.A` remains open |

## Authority Boundary

This note authorizes the following local claim:

```math
SixChunkTable.A:
\text{the six requested positive chunks have been run to their exact
contrapositive theorem interfaces.}
```

It forbids the following promotion:

```math
SixChunkTable.A
\not\Longrightarrow
OriginalSmoothData\Longrightarrow Smooth.
```

The live theorem frontier remains:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```
