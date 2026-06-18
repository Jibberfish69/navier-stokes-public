# Lemma `4 -> 1`: Euclidean Scale-Barrier Recertification Packet

## Purpose

This note isolates the exact `4 -> 1` return-arrow packet on the promoted
Route B surface.

Its job is to record, on the same Euclidean theorem surface as Propositions
4.1, 5.1, and 6.1, how the Euclidean gradient-transfer bridge is intended to
recertify the dangerous-scale barrier rather than merely bounding a downstream
continuation norm. Under the stricter audit standard, this note remains a
compressed proof packet until its imported reductions are fully audited inside
the manuscript.

## Fixed Surface And Notation

Work on `[0,T) x R^3` in the classical target class, with the same dyadic
notation already fixed by the closure manuscript.

Let

```math
P_{\ge N} := \sum_{j\ge N} P_j,
```

Define the tail-energy and gradient-tail quantities

```math
T_N(t)
:=
\|P_{\ge N}u(t)\|_{L_x^2}^2,
\qquad
Q_N(t)
:=
\|\nabla P_{\ge N}u(t)\|_{L_x^2}^2.
```

Also define the dyadic tail functional

```math
\Pi_{\ge N}(t)
:=
\int_0^t \|P_{\ge N}u(s)\|_{L_x^2}^2\,ds.
```

Let

```math
E_N(t)
:=
\sum_{j\ge N} 2^{2j}\|P_j u(t)\|_{L_x^2}^2,
\qquad
D_N(t)
:=
\sum_{j\ge N} 2^{4j}\|P_j u(t)\|_{L_x^2}^2.
```

On the dyadic surface, `c_EE_N(t)\le Q_N(t)\le C_EE_N(t)`.

Let `\Gamma_N \in L_t^1` denote an admissible tail-energy coefficient on the
Euclidean `4 -> 1` surface. In the current local tail packet stack, one may
still take `\Gamma_N=\mathcal L_N`, but the theorem-facing return arrow only
needs integrability of `\Gamma_N` together with the coercive damping
`Q_N\ge c_Q2^{2N}T_N`.

## Exact Statement

Assume:

1. `u` is the exact Euclidean limit object furnished by Proposition 5.1, so
   that

```math
u^{(n)} \to u
\quad\text{strongly in } L^2([0,T];L^2_{\mathrm{loc}}(R^3)),
\qquad
u^{(n)} \otimes u^{(n)} \to u \otimes u
\quad\text{in } \mathcal D'((0,T)\times R^3).
```

2. The upgraded Euclidean fourth-bridge inequality of Proposition 6.1 holds for all
   sufficiently large `N`:

```math
\frac{d}{dt}E_N(t) + (1-\eta)\nu D_N(t)
\le
C\,\widetilde\Lambda_N^\sharp(t)\,E_N(t) + C_* 2^{-2\delta N},
\qquad
\widetilde\Lambda_N^\sharp \in L_t^1.
```

3. The same classical energy surface used in Proposition 4.1 holds.

Then, while keeping the same projector `P_{\ge N}`, the same exponent
`\delta`, and the same barrier shape, the remaining open target of the packet
is to show that the exact solution satisfies

```math
\Pi_{\ge N}(T)
\le
C_* 2^{-2\delta N}
\qquad (N \ge N_*).
```

Therefore the packet is intended to recertify the Proposition 4.1 barrier on
the exact Euclidean limit object, and to realize the `4 -> 1` return arrow on
one fixed theorem surface once the imported reductions are fully discharged.

## Compressed Proof Packet

Start from the exact Navier-Stokes equation

```math
\partial_t u + \mathbb P \nabla\!\cdot(u\otimes u) = \nu \Delta u,
\qquad
\nabla\cdot u = 0.
```

Apply `P_{\ge N}` and pair in `L_x^2` with `P_{\ge N}u`. This gives the
tail-energy identity

```math
\frac12 \frac{d}{dt}T_N(t) + \nu Q_N(t)
=
-\big\langle P_{\ge N}(u\cdot\nabla u),\,P_{\ge N}u\big\rangle.
\tag{1}
```

Write

```math
\mathcal N_N^{\mathrm{tail}}(t)
:=
\big|\big\langle P_{\ge N}(u\cdot\nabla u),\,P_{\ge N}u\big\rangle\big|.
```

Decompose this term into the same three packets used by the project route:

```math
\mathcal N_N^{\mathrm{tail}}
\le
\mathcal N_{N,\mathrm{strict}}^{\mathrm{tail}}
+
\mathcal N_{N,\mathrm{spill}}^{\mathrm{tail}}
+
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}.
\tag{2}
```

### Step 1. Strict low-mode reduction onto `\mathcal L_N`

The strict low-mode packet is reduced by
[tail-energy-strict-low-mode-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tail-energy-strict-low-mode-reduction-lemma.md):

```math
\mathcal N_{N,\mathrm{strict}}^{\mathrm{tail}}(t)
\le
C\,\Gamma_N(t)\,T_N(t)
+
\frac{\eta\nu}{4}\,Q_N(t).
\tag{3}
```

This strict low-mode tail component is now materially more explicit on the
exact Euclidean surface. Its packet structure is no longer black-box, but the
coefficient-preserving commutator estimate still remains to be proved: the
route needs a bound that turns `C\Gamma_N(t)T_N(t)` into a paid part of `Q_N(t)`
plus a declared remainder. Until that estimate is installed, it is not safe to
treat this line as fully closed.

### Step 2. Spill reduction on the same admissible surface

The finite-band spill term is reduced by
[tail-energy-spill-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tail-energy-spill-reduction-lemma.md):

```math
\mathcal N_{N,\mathrm{spill}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_N(t).
\tag{4}
```

The spill packet is now explicit on the local tail-energy surface. It is
controlled by the exact large-cutoff condition

```math
C_MK_T2^{-N/2}\le\frac{\eta\nu}{4},
```

where `K_T=\sup_{0\le t<T}\|\nabla u(t)\|_{L^2}` is already available from the
Euclidean fourth bridge. Under that condition it contributes at most
`(\eta\nu/4)Q_N(t)`. No `L^\infty_x` continuation norm enters.

### Step 3. Genuine high-high packet

The remaining high-high component is isolated in
[tail-energy-genuine-high-high-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tail-energy-genuine-high-high-packet.md),
which proves that for every `N\ge N_{\mathrm{HH}}`,

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_{N-M}(t).
\tag{5}
```

After reindexing the fixed dyadic collar into the threshold budget, this gives

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_N(t).
\tag{6}
```

So the genuine high-high packet is now explicit on the local tail-energy
surface. The remaining local issue is not this high-high cutoff payment.

### Step 4. Tail-energy differential inequality

Insert `(2)` through `(4)` and `(6)` into `(1)`. After reindexing
`N-M \rightsquigarrow N` and enlarging `N_*` inside the fixed threshold budget,
we obtain

```math
\frac12 \frac{d}{dt}T_N(t)
+
\frac{\nu}{2}Q_N(t)
\le
C\,\Gamma_N(t)\,T_N(t).
\tag{12}
```

This is the exact same-surface tail-energy inequality: same equation, same
projector `P_{\ge N}`, same large-cutoff regime, and an admissible integrable
tail-energy coefficient surface `\Gamma_N`.

Conditional on the three local tail-energy packet lemmas, this differential
inequality is already a valid local Proposition `6.2` assembly step on the
exact Euclidean surface. The stronger part of the `4 -> 1` theorem is not the
inequality itself, but recovering the same-shape barrier from it without
changing projector, exponent, or threshold regime.

### Step 5. Coercive tail damping and same-shape barrier recovery

From the dyadic tail definition,

```math
Q_N(t)
\ge c_Q
\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2
\ge
c_{\mathrm{LP}}\,2^{2N}T_N(t)
\tag{13}
```

for a fixed Littlewood-Paley constant `c_{\mathrm{LP}}>0`.

Insert `(13)` into `(12)`:

```math
\frac12 \frac{d}{dt}T_N(t)
+
\Big(
\frac{\nu c_{\mathrm{LP}}}{2}2^{2N}
- C\,\Gamma_N(t)
\Big)T_N(t)
\le 0.
\tag{14}
```

By
[classical-low-mode-coefficient-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-low-mode-coefficient-lemma.md),

```math
\mathcal L_N(t)\le 1 + C_0\,2^{3N/2}M
\qquad\text{for almost every }t.
\tag{15}
```

Because `2^{2N}` dominates `2^{3N/2}` for large `N`, choose `N_*` so that for
all `N\ge N_*`,

```math
\frac{\nu c_{\mathrm{LP}}}{2}2^{2N}
- C\big(1 + C_0\,2^{3N/2}M\big)
\ge
\lambda\,2^{2N}
\tag{16}
```

for some `\lambda>0`. Then `(14)` yields

```math
\frac{d}{dt}T_N(t) + 2\lambda\,2^{2N}T_N(t)\le 0.
\tag{17}
```

Hence

```math
T_N(t)\le e^{-2\lambda\,2^{2N}t}T_N(0).
\tag{18}
```

Integrating over `[0,T]`,

```math
\Pi_{\ge N}(T)
=
\int_0^T T_N(t)\,dt
\le
\frac{T_N(0)}{2\lambda\,2^{2N}}.
\tag{19}
```

Because the theorem surface uses smooth compactly supported data, the initial
dyadic tail decays faster than any fixed project rate. In particular, for the
project exponent `\delta>0`, there exists `C_{0,*}` such that

```math
T_N(0)\le C_{0,*}2^{-2\delta N}.
\tag{20}
```

Substituting `(20)` into `(19)`,

```math
\Pi_{\ge N}(T)
\le
C_{1,*}2^{-2(\delta+1)N}
\le
C_*2^{-2\delta N}
\qquad (N\ge N_*),
\tag{21}
```

after enlarging the barrier constant `C_*` inside the same theorem-local
budget.

This is the exact same-shape meaning of "gradient-transfer recertifies the
scale barrier."

### Why bare Gronwall is not enough

If one drops the coercive `Q_N` term from `(12)` and applies Gronwall directly
to `T_N`, one gets at best

```math
T_N(t)\le
\exp\!\Big(C\int_0^t \mathcal L_N(s)\,ds\Big)
\Big(T_N(0)+C_*\,t\,2^{-2\delta N}\Big),
```

which is not by itself sharp enough to recover the same-shape barrier
`\Pi_{\ge N}(T)\le C_\Pi2^{-2\delta N}` on the live theorem surface. The
exact return arrow depends essentially on the coercive tail damping
`Q_N \ge c_Q2^{2N}T_N`; that damping is what upgrades the conditional
tail-energy differential inequality to genuine same-projector, same-exponent
recertification.

## Closure Role

This lemma is the precise missing theorem object between:

- Proposition 6.1: Euclidean gradient-transfer coercivity,
- Proposition 4.1: dyadic scale barrier,
- and the final combined closure theorem `C3`.

In shorthand:

```math
\text{Prop.\ 5.1} \to \text{Prop.\ 6.1} \to \text{this lemma} \to \text{Prop.\ 4.1}.
```

## Honest Status

This note now states the exact missing `4 -> 1` theorem in repo-faithful
notation.

The route is locally explicit rather than compressed. The strict
low-mode estimate on the tail-energy surface is tighter and structurally
expanded, the spill packet is explicit, and the genuine high-high packet is
explicit on the local tail-energy surface.

The local `4 -> 1` packet is now explicit on the exact Euclidean surface: the
spill and local genuine high-high packets are isolated, the strict low-mode
packet is materially tightened but still carries a coefficient-preserving
commutator audit, and the same-shape barrier is recovered by the coercive tail
damping in `(13)`.

So this note no longer hides the local theorem structure, but it still depends
on a strict low-mode coefficient-preserving commutator estimate in addition to
the upstream proposition-level packet alignment in Proposition 4.1 and
Proposition 6.1.

## Audit Boundary

The final Proposition `6.2` assembly must not be rewritten as a bare Gronwall
estimate for `T_N` alone. If one discards the coercive gain

```math
Q_N(t)\ge c_{\mathrm{LP}}\,2^{2N}T_N(t),
```

and argues only from

```math
\frac{d}{dt}T_N(t)\le C_L L_N(t)T_N(t)+C_*2^{-2\delta N},
```

then the resulting bound retains an `N`-dependent exponential budget and does
not recover the Proposition 4.1 barrier in the same sharp dyadic form. The
same-shape recertification on the exact Euclidean surface uses coercive tail
damping, not bare Gronwall.
