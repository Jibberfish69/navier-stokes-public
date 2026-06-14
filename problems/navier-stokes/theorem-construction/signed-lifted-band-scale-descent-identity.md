# Signed Lifted-Band Scale-Descent Identity

## Purpose

This note records the correct way to prove the descent/cocycle theorem at the
**signed commutator layer**, before any absolute values or positive majorants
are introduced.

The point is to avoid this false order of operations:

```math
\text{take } |\mathcal J_N^{lift}| \Longrightarrow \Pi_N^{lift}
\Longrightarrow \text{look for descent structure}.
```

Instead, the theorem must run in the opposite direction:

```math
\text{signed lifted commutator density}
\Longrightarrow
\text{scale-descent identity}
\Longrightarrow
\text{global exactness / cocycle triviality}
\Longrightarrow
\text{L-Flux}.
```

This note does not close the route from the inherited Euclidean inputs alone.
It fixes the only coherent signed-layer mechanism by which the cocycle language
could actually feed the scale barrier.

## Continuous-scale setup

Replace the dyadic shell projector `\Delta_j` by a smooth continuous
Littlewood-Paley family:

```math
P_{\le \ell} := \varphi(\ell D),
\qquad
Q_\ell := -\,\ell\partial_\ell P_{\le \ell},
```

where `\varphi` is a smooth low-pass symbol and `Q_\ell` is the corresponding
band-pass operator supported where
`c_Q\ell^{-1}\le |\xi|\le C_Q\ell^{-1}`.

Write

```math
u_\ell := Q_\ell u,
\qquad
b_\ell^{meso} := P_{\le c/\ell}u - P_{\le 2^{N+M}}u.
```

So `b_\ell^{meso}` is the lifted mesoscopic transport field seen by the scale
`\ell`.

The signed lifted-band commutator density is then

```math
\mathfrak c_\ell(x,t)
:=
\ell^{-2}\,
u_\ell(x,t)\,
[Q_\ell,b_\ell^{meso}(t)\cdot\nabla]u(x,t).
\tag{SC}
```

Its integrated counterpart is the continuous-scale version of the signed
lifted functional:

```math
\mathcal J_N^{lift}(t)
:=
\int_0^{c2^{-N}}\int_{\mathbb R^3}\mathfrak c_\ell(x,t)\,dx\,\frac{d\ell}{\ell}.
```

## Cumulative commutator potential

Define the cumulative low-pass commutator energy density

```math
\mathcal A_\ell(x,t)
:=
\ell^{-2}\,
\big([P_{\le \ell},b_\ell^{meso}(t)\cdot\nabla]u(t)\big)(x)\,
\big(P_{\le \ell}u(t)\big)(x).
\tag{A}
```

This is the right signed potential because `Q_\ell = -\ell\partial_\ell P_{\le
\ell}` converts scale refinement into a literal derivative of the cumulative
quantity `\mathcal A_\ell`.

## Scale-descent identity

Differentiate `(A)` in logarithmic scale:

```math
\ell\partial_\ell \mathcal A_\ell
=
\mathfrak c_\ell
+
\mathfrak c_\ell^{transpose}
+
\mathfrak s_\ell^{edge}
+
\mathfrak w_\ell.
\tag{SD1}
```

Here:

1. `\mathfrak c_\ell` is the signed lifted commutator density `(SC)`;
2. `\mathfrak c_\ell^{transpose}` is the symmetric partner coming from the
   derivative hitting the second low-pass factor;
3. `\mathfrak s_\ell^{edge}` is the term created when `\ell\partial_\ell`
   falls on `b_\ell^{meso}`;
4. `\mathfrak w_\ell` is the harmless derivative-of-weight correction from
   `\ell^{-2}` and the smooth cutoff profile.

The main point is not the exact constants. It is the structural support of the
four terms.

### Why `(SD1)` is the right identity

Because

```math
Q_\ell = -\,\ell\partial_\ell P_{\le \ell},
```

the derivative of the cumulative commutator automatically produces the
band-pass commutator. This is the signed exactness in the refinement
direction that was completely invisible in the dyadic shellwise algebra.

## Edge term is not a new obstruction

The term `\mathfrak s_\ell^{edge}` is the derivative of the mesoscopic drift:

```math
\ell\partial_\ell b_\ell^{meso}
=
\ell\partial_\ell P_{\le c/\ell}u.
```

This is supported only at the **top edge** of the mesoscopic band.
So it is not another long lifted interaction. It is a threshold-local same-scale
packet.

That means:

```math
\mathfrak s_\ell^{edge}
\quad\text{belongs to the spill/near-diagonal collar geometry,}
```

not to the true lifted high-side obstruction.

So the new continuous-scale derivative does something decisive:

```math
\text{it converts the hard lifted bulk into a scale derivative,}
```

while the derivative of the drift falls only on the already-isolated collar.

## Signed local balance form

After symmetrizing the transpose term and moving the edge contribution into the
already-controlled collar packet, `(SD1)` takes the form

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\mathcal S_\ell^{spill}
+
\mathcal W_\ell,
\tag{SD2}
```

where:

- `\Psi_\ell` is a signed cumulative commutator potential,
- `\mathcal S_\ell^{spill}` is threshold-local and should be absorbed by the
  existing spill packet,
- `\mathcal W_\ell` is a soft remainder coming from smooth weight/profile
  differentiation.

To match the PDE evolution, one then applies the Navier-Stokes equation to
`P_{\le \ell}u`, which introduces the standard local time derivative and
divergence terms:

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+
\nabla_x\cdot J_\ell
+
\partial_t R_\ell
+
\mathcal S_\ell^{spill}
+
\mathcal E_\ell.
\tag{SD3}
```

This is the signed-layer theorem shape that the cocycle language was trying to
name.

## Descent / cocycle interpretation

Local versions of `(SD3)` may be built on overlapping scale-space-time windows
`U_\alpha`.
Each local representation carries a potential triple

```math
A_\alpha := (\Psi_\alpha,J_\alpha,R_\alpha).
```

On overlaps, the differences

```math
\Theta_{\alpha\beta}:=A_\beta-A_\alpha
```

form the refinement-transport mismatch cocycle.

The theorem-bearing question is now precise:

```math
\text{does }[\Theta]\text{ vanish on the NS-valid lifted-band regime?}
```

If yes, the local signed potentials glue to a global potential triple and the
lifted signed commutator channel is exact modulo:

- the already-controlled spill collar,
- the soft remainder `\mathcal E_\ell`.

So the right exactness statement is not about the positive majorant
`\Sigma_\ell^{meso}\tau_\ell^{H^1}`.
It is about the signed density `\mathfrak c_\ell`.

## Pushdown to the signed lifted estimate

Once `(SD3)` is globally valid on the signed layer, integrate it over
`x,t,\ell` on the high-scale window `0<\ell\le c2^{-N}`.

Then:

1. `(\ell\partial_\ell)\Psi_\ell` telescopes in scale;
2. `\nabla_x\cdot J_\ell` is a space boundary term;
3. `\partial_t R_\ell` is a time boundary term;
4. `\mathcal S_\ell^{spill}` is returned to the existing spill packet;
5. `\mathcal E_\ell` is the true barrier-scale tail.

Only **after this signed telescoping step** should one pass to the positive
stress-strain majorant. At that point the majorant is used to control the
residual tail, not to generate the theorem mechanism.

So the pushdown chain is:

```math
\textbf{(Signed Descent)}
\Longrightarrow
\textbf{(Signed Telescoping)}
\Longrightarrow
\textbf{(Signed Lifted Bound)}
\Longrightarrow
\textbf{(Residual Majorant Corollary)}
\Longrightarrow
\textbf{(L-Flux)}.
```

This is the correct order.

The immediate conclusion of the signed telescoping step is the scalar signed
estimate

```math
\left|
\int_0^T\int_0^{c2^{-N}}
\int_{\mathbb R^3}
\mathfrak c_\ell(x,t)\,dx\,\frac{d\ell}{\ell}\,dt
\right|
\le
\eta\nu\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{L-Signed}
```

This is the first theorem yielded by the descent route itself.

The positive flux theorem `(L-Flux)` is not identical to `(L-Signed)`. It is a
downstream corollary only if the remaining boundary and residual terms are
dominated by the positive majorant `\Pi_N^{lift}` or by an equivalent
barrier-scale stress-strain estimate.

## Collar-class reduction of the middle band

The new note
`lifted-band-collar-class-reduction-lemma.md`
pushes the signed route one more honest step. After choosing a smooth
partition of the logarithmic scale variable,

```math
\chi_{nose}+\chi_{mid}+\chi_{tail}=1,
```

the middle-band identity is

```math
\chi_{mid}\mathfrak c
=
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \mathcal I^{tail}
+ \chi_{mid}\mathcal S^{spill}
+ \chi_{mid}\mathcal W.
```

That note proves the two reduction lemmas:

1. the lower interface `\mathcal I^{tail}` reduces to a finite fixed-cutoff
   lower-collar family modulo admissible collar errors;
2. the spill term `\chi_{mid}\mathcal S^{spill}` reduces, in the scalarized
   pairing, to the same-scale edge packet modulo admissible collar errors.

So the signed lifted-band route now satisfies

```math
\chi_{mid}\mathfrak c
\equiv
-\partial_s(\chi_{mid}\Psi)
+ \mathcal I^{nose}
+ \chi_{mid}\mathcal W
\quad \mod \mathscr A_{collar}.
```

This is the sharpest honest reduction now on record: the genuinely new
analytic burdens are no longer "the whole lifted band", but only the upper
boundary packet and the mesoscopic residual.

The note `lifted-band-upper-boundary-packet.md` then isolates the first of
those two terms exactly: the top interface contribution

```math
\mathfrak B_N^{upper}(t)
:=
\int (\partial_s\chi_{mid})(s)\,\Psi(s,t)\,ds,
```

and records the exact barrier estimate it must satisfy on the signed route.

The companion note
`lifted-band-mesoscopic-residual-reduction-lemma.md`
attacks the second term. It shows that the interior residual
`\chi_{mid}\mathcal W` is not a new undefined object: after profile
renormalization it reduces to a localized middle-band stress-strain flux
packet `\Pi_N^{mid}` modulo the same accepted collar class.

## What has to be proved next

The route is therefore split into three exact subclaims.

### 1. Signed scale-descent identity

Prove `(SD1)` / `(SD3)` for a smooth continuous LP family with

```math
\mathfrak s_\ell^{edge}
```

landing only in the threshold-local collar.

### 2. Triviality of the transportable mismatch class

Show the overlap cocycle `[\Theta]` vanishes on the NS-valid lifted-band
regime, so the signed potentials glue globally.

### 3. Boundary and remainder control

Show the scale boundary, time boundary, and residual tail terms generated by
the signed telescoping argument satisfy the same barrier estimate used by the
Euclidean scale barrier.

If all three hold, the coupled lifted-band route closes without flattening the
hard obstruction first.

## Honest boundary

This note proves the right theorem shape and the right order of proof.
It does **not** yet prove the crucial analytic input that the cocycle class
vanishes, nor the barrier control of the signed boundary/remainder terms.

What it does settle is the methodology:

```math
\text{prove descent exactness on the signed commutator channel first,}
```

and only then pass to the positive flux theorem `(L-Flux)`.
