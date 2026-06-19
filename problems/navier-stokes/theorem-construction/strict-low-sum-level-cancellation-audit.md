# Strict-Low Sum-Level Cancellation Audit

## Purpose

This note records a bounded self-attempt to rescue the gradient strict low-mode
packet by summing over all shells first and looking for a telescoping or
flux-type cancellation that is invisible at the shellwise level.

The exact question is whether the transport-form strict-low obstruction

```math
\sum_{j\ge N}\bigl(|LH_j^{strict}|+|HL_j^{strict}|\bigr)
```

can become smaller after summation than the shellwise bounds suggest, so that
the weighted factor `\sum_{j\ge N}2^jE_j` disappears at the summed level.

## Summed Operator Form

Let

```math
B_N
:=
\sum_{j\ge N}2^{2j}\Delta_j^\ast\Delta_j,
```

the positive self-adjoint high-frequency enstrophy multiplier. With fixed
Littlewood--Paley constants `c_B,C_B>0`,

```math
c_BE_N\le \langle B_N u,u\rangle\le C_BE_N.
```

Freeze the strict low transport coefficient at

```math
a:=S_{N-4}u.
```

Then the summed strict-low transport contribution is represented by

```math
\mathcal T_N^{strict}
:=
\big\langle B_N\big((a\cdot\nabla)u_{\ge N}\big),u_{\ge N}\big\rangle
+
\big\langle B_N\big((u_{\ge N}\cdot\nabla)a\big),u_{\ge N}\big\rangle,
```

where the finite Littlewood--Paley fattening is included in the definition of
`B_N`; the constants `c_B,C_B` above are the only overlap loss being spent.

## First Cancellation: Transport Against The Summed Energy

Because `a` is divergence-free and `B_N` is self-adjoint,

```math
\langle (a\cdot\nabla)B_N^{1/2}u_{\ge N},\,B_N^{1/2}u_{\ge N}\rangle = 0.
```

So the transport part does cancel after summation. The whole summed strict-low
term therefore collapses to a commutator plus the high-low partner:

```math
\mathcal T_N^{strict}
=
\big\langle [B_N,a\cdot\nabla]u_{\ge N},u_{\ge N}\big\rangle
+
\big\langle B_N((u_{\ge N}\cdot\nabla)a),u_{\ge N}\big\rangle.
\tag{1}
```

This is the only genuine sum-level cancellation available from the transport
structure itself.

## What The Summed Commutator Produces

The multiplier `B_N` has symbol `m_N(\xi)` of order `2` on the high-frequency
region, with the fixed dyadic symbol bounds inherited from the chosen
Littlewood--Paley partition.  The commutator estimate being spent is:

```math
\big|\langle [B_N,a\cdot\nabla]u_{\ge N},u_{\ge N}\rangle\big|
\le
C_{comm}
\|\nabla a\|_{L^\infty_x}\,\langle B_Nu_{\ge N},u_{\ge N}\rangle
\le
C_{comm}C_B
\|\nabla a\|_{L^\infty_x}\,E_N.
\tag{2}
```

This is the Coifman--Meyer commutator bound for that specific multiplier and a
Lipschitz coefficient `a`; it is not a cancellation beyond the displayed
commutator estimate.

Likewise, the high-low partner satisfies

```math
\big|\langle B_N((u_{\ge N}\cdot\nabla)a),u_{\ge N}\rangle\big|
\le
C_{HL}
\|\nabla a\|_{L^\infty_x}\,E_N.
\tag{3}
```

Since

```math
\|\nabla a\|_{L^\infty_x}
\le
\sum_{k\le N-4}2^{5k/2}\|\Delta_k u\|_{L^2_x}
=
\Lambda_N-1,
```

the summed operator route yields only

```math
|\mathcal T_N^{strict}|
\le
C_{strict}
\Lambda_N(t)\,E_N(t).
\tag{4}
```

## Consequence

The sum-level route does produce a real cancellation, but it is exactly the
same one already seen in the shellwise transport cancellation: it removes the
pure transport piece and leaves a commutator controlled by the low-mode strain.

Crucially, it does **not** generate any new telescoping structure between
neighboring dyadic shells, because `B_N` is a positive summed multiplier rather
than a difference of adjacent shell energies. After summation, the strict-low
gate still lands on the low-mode strain coefficient `\Lambda_N`, not on a
smaller flux quantity.

So there is no theorem-grade evidence, on the present Euclidean surface, that a
shell-summed flux identity rescues the strict-low packet.

## Honest Verdict

The summed-shell / flux self-attempt fails to remove the obstruction.

It shows:

1. the only automatic sum-level cancellation is the transport cancellation
   already built into the commutator form;
2. the resulting summed commutator is still controlled by
   `\|\nabla S_{N-4}u\|_{L^\infty_x}E_N\le C_\Lambda \Lambda_NE_N`;
3. no new telescoping identity appears that would convert the strict-low packet
   to `C\,\mathcal L_NE_N+\varepsilon \nu D_N`.

Therefore the live fork remains unchanged:

- either prove a genuinely new low-mode strain theorem or new cancellation,
- or rewrite the gradient bridge on the stronger coefficient/interface whose
  strict low-mode core is `\Lambda_N` and whose minimal coherent full packet
  surface is `\widetilde\Lambda_N^\sharp=\Lambda_N+\Theta_N^\sharp`.
