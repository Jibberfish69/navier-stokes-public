# MPP Retained Lifted-Band Flux Transfer Direct Attempt

## Status

`RetainedLiftedBandFluxTransfer.A` is not proved by the current theorem stack.

This pass checks the exact target left by
`mpp-retained-carrier-tail-input-direct-attempt-20260609.md`: prove enough
lifted-band flux to supply the fixed scale-barrier tail and then transfer that
tail to the retained terminal charts for the same tested object `Q`.

## Target

The retained tail input needs two things in order:

```math
\text{fixed classical }(L\text{-}Flux)
\quad+\quad
\text{retained-terminal chart transfer}
\Longrightarrow
\text{retained scale-normalized tail smallness}.
```

The fixed piece is the barrier-scale estimate

```math
\sup_n
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt
\le
\frac{\eta\nu}{4}\sup_n \int_0^T D^{(n)}_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{L-Flux}
```

The retained transfer cannot be used as a substitute for `(L-Flux)`. It is a
downstream localization and same-object transfer step after the fixed lifted
packet has been paid.

## Checked installed route

The fixed classical scale-barrier note proves the high-frequency tail only
conditional on `(L-Flux)`. The lifted-band repair note proves the coupled
commutator reduction

```math
\mathfrak P^{scale,lift}_{N}[u^{(n)}]
\le C_{\mathrm{lift}}
\int_0^T \Pi^{lift,\mathrm{dy}}_{N}[u^{(n)}](t)\,dt,
```

and identifies `(L-Flux)` as the exact missing theorem.

The signed continuous-scale translation then refines the target:

```math
\text{signed commutator density}
\Longrightarrow
\text{scale descent / telescoping}
\Longrightarrow
\text{signed lifted estimate}
\Longrightarrow
\text{positive flux theorem}.
```

After collar reduction and profile renormalization, the open lifted packet is
reduced to

```math
\text{upper boundary packet}
\quad+\quad
\text{middle-band flux packet}.
```

The middle-band flux splits into a bounded-width moving-spill packet and a
far-corona packet with the exact two-scale density

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell.
```

The direct far-corona attack records the sufficient chain

```math
\mathrm{LPAS}
\Longrightarrow
\mathrm{CTS}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\Pi_N^{mid,far,L}.
```

The local dyadic theorem produced by this route is

```math
\textbf{(LPAS)}
\qquad
\int_0^T
\sum_{j\ge N}
\mathcal P_j^{\downarrow}(t)\,
2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
```

where

```math
\mathcal P_j^{\downarrow}(t)
:=
\sum_{k\le j-C_1}E_k(t).
```

This is the lower-prefix active-square theorem. It is not one of the installed
upper-tail queues.

## Direct attempt

There are three tempting shortcuts, and each fails.

First, the shellwise lifted-band shortcut fails because the lifted geometry has
`N+M<k<j-4`. The coefficient shell can sit far below the output shell. The
near-diagonal high-high absorption theorem does not apply to that geometry.

Second, raw energy cannot prove the retained tail input. Energy gives an
integrated dissipation ledger, not the scale-normalized tail modulus needed on
the retained terminal charts. Using the desired high-tail conclusion as an
input would be circular.

Third, the installed one-sided square queue has the wrong orientation for the
far-corona dyadic object. It controls upper-tail objects. LPAS asks for a lower
prefix of `H^1` energy multiplying an active-shell square:

```math
\mathcal P_j^{\downarrow}(t)\,2^{-j}D_j(t)^2.
```

Dualizing the lower prefix reduces LPAS to active-square upper-tail control,
which in turn needs a shell-amplitude gain on active intervals. That gain is
not installed.

## Verdict

`RetainedLiftedBandFluxTransfer.A` is reduced, not proved.

The fixed `(L-Flux)` part is still blocked by the far-corona active-square
theorem. The retained chart-transfer part remains downstream; it cannot close
the fixed lifted flux theorem and cannot be counted as a retained tail input
until the far-corona side is paid.

The exact next work surface is:

```math
\textbf{RetainedLPASActiveSquare.A}
\quad
\text{prove LPAS / CTS with the retained-terminal localization errors carried,}
```

or split it into:

```math
\text{direct CTS on } \mathcal A_{\ell,r},
\quad
\text{direct LPAS lower-prefix active-square control,}
\quad
\text{active-shell amplitude gain on LPAS intervals,}
\quad
\text{retained chart-transfer error control after fixed }(L\text{-}Flux).
```

## Closure impact

This pass narrows the retained tail obstruction by one layer:

```math
\text{RetainedCarrierTailInput.A}
\Longleftarrow
\text{RetainedLiftedBandFluxTransfer.A}
\Longleftarrow
\text{RetainedLPASActiveSquare.A / CTS / far-corona Carleson}.
```

No PDF-facing finality follows from this note. It preserves the CM
contrapositive route by keeping the retained tail input as a Part-row proof
obligation for `Q`, not as a positive smoothness replacement for
`Exit(Q):=\neg Member(Q)`.
