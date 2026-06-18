# MPP Genuine CM Exit Equivalence

## Status

Theorem-facing bridge note.

Role: answer the Clay-referee pressure question for the CM contrapositive
program.

The result installed here is not the blunt pointwise converse

```math
\neg CM_{N,r,Q}\Longrightarrow \neg Member(Q;\mathfrak O_{NS}^{work}).
```

That converse remains too strong at a selected depth, scale, or cover.  A
single failed certificate can be a bad gauge, bad scale, bad cover, or missing
readout choice.

The theorem-grade object is the continuation-complete terminal packet:

```math
\text{smooth continuation through }T_*
\quad\Longleftrightarrow\quad
\text{no genuine continuation-complete CM exit at }T_*.
```

Equivalently,

```math
\text{finite terminal non-continuation at }T_*
\quad\Longleftrightarrow\quad
\text{genuine continuation-complete CM exit at }T_*.
```

## Installed Inputs

This note uses the existing installed surfaces:

1. `mpp-exact-class-membership-witness-theorem.md`, which fixes
   `CM_{N,r,Q}=Pack_Q \wedge Part_{N,Q}\wedge Field_{N,r,Q}`.
2. `mpp-still-live-smooth-window-implies-class-membership-theorem.md`, which
   proves that every classical still-live window supplies a positive scale
   `r_Q` with `CM_{N,r_Q,Q}` for every finite `N`.
3. `mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md`, which
   proves the all-depth CM witness gives smoothness and yields the
   Pack/Part/Field witness-face split for nonsmoothness.
4. `mpp-continuation-packet-generated-cm-contrapositive-20260514.md`, which
   fixes the continuation packet:
   carrier/cover = Pack, participation/forcing = Part, one-field coherence =
   Field, and the `H^s`, `s>5/2`, readout as the bridge to classical
   continuation.
5. `mpp-cm-certificate-direction-correction-20260506.md`, which records that
   `CM=>Member` is installed while the raw converse `not CM=>not Member` is not
   installed.

## Definitions

Let `(u,p)` be the maximal classical Navier-Stokes solution on
`[0,T_*)`, and let `T_*<\infty`.

Fix `s>5/2` and choose a finite depth `N_s` high enough for the installed
`H^s` continuation readout.

### Continuation-Complete CM Packet

`ContCM(T_*)` means that on some admissible retained same-fluid terminal cover
approaching `T_*`, there is a positive scale `r>0` such that the following
packet persists through depth `N_s`:

```math
Pack_Q(u,\Phi)
\quad\wedge\quad
Part_{N_s,Q}(u,p)
\quad\wedge\quad
Field_{N_s,r,Q}(u,p),
```

and the installed readout bridge turns that witness into

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

This is CM as a continuation packet, not CM as an arbitrary selected
certificate.

### Genuine CM Exit

`GenuineCMExit(T_*)` means `ContCM(T_*)` fails for every admissible retained
same-fluid terminal cover, every legal positive scale choice, and every
depth high enough for the classical readout.

Equivalently, there is no surviving continuation-complete Pack/Part/Field
witness packet on the same solution near `T_*`.

## Theorem `GenuineCMExit.Equiv.A`

For a maximal classical Navier-Stokes solution on `[0,T_*)` with `T_*<\infty`,

```math
\boxed{
T_*\text{ is a finite terminal non-continuation time}
\Longleftrightarrow
GenuineCMExit(T_*).
}
```

The equivalent positive form is

```math
\boxed{
\text{classical continuation through }T_*
\Longleftrightarrow
ContCM(T_*).
}
```

## Proof

### 1. `ContCM(T_*) =>` classical continuation

By definition, `ContCM(T_*)` supplies a retained terminal Pack/Part/Field packet
through a depth `N_s` high enough for the classical readout, together with the
installed `H^s`, `s>5/2`, readout bridge.

Thus

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

The classical Navier-Stokes `H^s`, `s>5/2`, local theory gives a lifespan
depending only on the displayed bound. Thus the lifespans from times
`t_j\uparrow T_*` have a common positive lower bound, and relaunching the
classical solution from those times extends `(u,p)` past `T_*`.

So a continuation-complete CM packet rules out finite terminal
non-continuation.

### 2. Classical continuation `=> ContCM(T_*)`

Assume `(u,p)` extends classically through `T_*`.  Choose a small spacetime
window `Q` around the terminal point whose closure remains inside the extended
classical interval.

The still-live smooth-window theorem gives a positive scale `r_Q>0` such that
for every finite depth `N`,

```math
CM_{N,r_Q,Q}(u,p,\Phi).
```

In particular this holds at the continuation depth `N_s`.

Since the solution is classical on a collar beyond `T_*`, the corresponding
`H^s` norm is finite on that collar.  The installed readout bridge is therefore
available, and the Pack/Part/Field witness packet is continuation-complete.

Thus `ContCM(T_*)` holds.

### 3. Contrapositive form

The two implications above give

```math
ContCM(T_*)\Longleftrightarrow
\text{classical continuation through }T_*.
```

Negating both sides gives

```math
GenuineCMExit(T_*)
\Longleftrightarrow
\text{finite terminal non-continuation at }T_*.
```

This proves the theorem.

## Referee-Facing Consequence

The correct CM claim is:

```math
\text{nonsmooth terminal behavior}
\Longleftrightarrow
\text{failure of the continuation-complete CM packet}.
```

This is strong enough to base a contrapositive smoothness argument on, because
CM is no longer merely a detector.  It is exactly the continuation packet.

The unsafe claim remains forbidden:

```math
\neg CM_{N,r,Q}
\Longrightarrow
\text{nonsmoothness}.
```

A single failed selected witness can be an artifact.  A genuine CM exit must
mean that no admissible same-fluid terminal Pack/Part/Field packet, with the
installed `H^s` readout, survives.

## Repo Consequence

This is not the final Clay step by itself.  It installs the equivalence that
makes the CM contrapositive program legitimate.

A possible positive no-exit formulation is:

```math
\text{original smooth data}
\Longrightarrow
\neg GenuineCMExit(T_*)
\quad\text{for every finite }T_*.
```

This formulation names the whole no-exit problem and should not be promoted as
a local CM branch-law burden. Inside the corrected pass/fail engine, the local
work is instead obstruction-by-obstruction: prove CM-test entry, derive the
first Pack/Part/Field face failure on the fail branch, and keep the pass branch
as the in-class continuation branch. Equivalence makes CM the right terminal
criterion; it does not by itself prove that original data never exits it.
