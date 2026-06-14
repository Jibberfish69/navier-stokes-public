# Lifted-Band Upper-Boundary Packet

## Purpose

This note isolates the first of the two genuinely new analytic burdens left
after the collar-class reduction on the signed continuous-scale route.

After
`lifted-band-collar-class-reduction-lemma.md`,
the lifted-band problem is reduced modulo the accepted collar class to

```math
\text{upper boundary packet}
\quad+\quad
\text{mesoscopic residual}.
```

This note defines the upper boundary packet exactly and records the barrier
estimate it must satisfy for the signed route to advance.

## Definition

Let `s=\log \ell` and let

```math
\chi_{nose}+\chi_{mid}+\chi_{tail}=1
```

be the smooth partition used in
`lifted-band-collar-class-reduction-lemma.md`.

The upper-boundary interface term is

```math
\mathcal I^{nose}(s,t)
:=
(\partial_s\chi_{mid})(s)\,\Psi(s,t),
```

where `\Psi` is the chosen glued scalar representative on the signed route.

Since `\partial_s\chi_{mid}` is supported in a `C_\chi`-width transition collar
near the top scale `c_N2^{-N}\le\ell_N\le C_N2^{-N}`, this term is supported only on the
upper boundary slab of the logarithmic scale interval.

Define the scalar upper-boundary packet by

```math
\mathfrak B_N^{upper}(t)
:=
\int \mathcal I^{nose}(s,t)\,ds
=
\int (\partial_s\chi_{mid})(s)\,\Psi(s,t)\,ds.
\tag{UB}
```

Equivalently, in the original scale variable,

```math
\mathfrak B_N^{upper}(t)
=
\int_0^{\ell_N}
(\partial_s\chi_{mid})(\log\ell)\,\Psi_\ell(t)\,\frac{d\ell}{\ell}.
```

## Structural role

By
`lifted-band-collar-class-reduction-lemma.md`,

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \chi_{mid}\mathcal W
\quad \mod \mathscr A_{collar}.
```

So after the lower fixed-collar and same-scale spill terms are folded back
into the accepted collar class, the only remaining boundary contribution is
the top interface packet `\mathfrak B_N^{upper}`.

## Exact theorem target

The upper-boundary packet closes once one proves the barrier estimate

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\frac{\eta\nu}{8}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{UB-Barrier}
```

This is the exact boundary theorem now needed on the signed route.

## Why this is not already covered

The lower collar and same-scale spill packets are already absorbed into
`\mathscr A_{collar}`. The upper-boundary packet is different:

1. it is not a fixed-cutoff family centered at `N+M`;
2. it is not a same-scale spill packet created by `\ell\partial_\ell
   b_\ell^{meso}`;
3. it sits at the top edge of the active high-scale window and depends on the
   scale-boundary behavior of the glued potential `\Psi`.

So this packet is genuinely new.

## Honest boundary

This note is only a boundary isolation note. It does **not** prove
`(UB-Barrier)`.

What it does settle is the exact remaining boundary theorem on the signed
route: after collar-class reduction, every non-new boundary/collar effect has
already been pushed into accepted packet classes, and the only new boundary
term left is `\mathfrak B_N^{upper}`.

The companion interior note
`lifted-band-mesoscopic-residual-reduction-lemma.md`
shows that the remaining non-boundary piece is a localized middle-band
stress-strain flux packet `\Pi_N^{mid}`, not an undefined residual.
