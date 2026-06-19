# MPP Fixed-Family And Collar Interval Propagation

## Status

Candidate theorem-facing successor note.

Role: exact interval-propagation queue surface beneath
`mpp-finite-net-reference-envelope-discharge.md`
and
`mpp-packet-collar-next-rung-control.md`
on the standalone class-membership branch.

This note does **not** replace those two notes. Its job is narrower:

1. isolate the two exact interval-propagation burdens that remain on the
   defended common-object route;
2. record the exact downstream corollary once those two burdens are discharged;
3. pin the next-note queue so the class-membership branch does not drift back
   into architecture prose.

## Purpose

The exact burden here is:

```math
\boxed{
\text{reduce the common-object route to exactly two interval-propagation theorems:}
}
```

```math
\boxed{
\text{(i) the fixed finite Eulerian packet family,}
\qquad
\text{(ii) the collar Sobolev packet.}
}
\tag{FCI.0}
```

The route has already been reduced far enough that these are the two next
successor burdens. Once they are available, this surface supplies the exact
handoff data in `(FCI.13)`--`(FCI.16)`. Closure packaging and first-exit work may
spend only those displayed bounds with the hypotheses that produced them; the
word "formal" carries no proof force.

## Setup

Fix:

1. a compactly supported material packet `\psi`;
2. a finite depth `N`;
3. a time interval `I`;
4. a scale window `0<|r|\le \rho`;
5. a collar thickness `\delta>0`;
6. a Sobolev index `m` large enough for the local embedding used in `(PC.14)`.

Retain the interval-uniform reference radius
`\Lambda_{\rho,\psi}^{ref}(I)` and a finite `\varepsilon`-net
`\Xi_{\rho,\psi}^{\varepsilon}(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon}`
from `(FN.2)`--`(FN.5)`.

Define the fixed finite Eulerian packet family aggregate

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon} E_N(\eta^\ell,t;\psi).
\tag{FCI.1}
```

Retain the collar Sobolev packet from `(PC.9)`:

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t).
\tag{FCI.2}
```

Retain also the common collar envelope and the direct segment envelope:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t),
\qquad
\mathfrak N^{seg}_{N+1,\rho,\psi}(t),
\tag{FCI.3}
```

and define the corresponding scale-window weighted-segment packet

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
:=
\sup_{0<|r|\le \rho}
\mathcal M^{wseg}_{N+1,r,\psi}(t).
\tag{FCI.3a}
```

as well as the packet-side bridge control
`P_F^\ast(r,t;\psi)`.

## Exact Successor Target 1

### Target FCI.A (interval propagation of the fixed finite Eulerian packet family)

The first exact successor theorem to write and prove is:

```math
\sup_{t\in I}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)
<
\infty.
\tag{FCI.4}
```

This target is exact because the increments `\eta^\ell` are fixed on the whole
interval `I`. So the fixed-increment packet law `(MP.12)` may be applied to each
member of the family without introducing extra time-derivative terms for the
increments.

The exact role of `(FCI.4)` is:

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}
\Longrightarrow
\text{the finite-net side of }(FN.13).
\tag{FCI.5}
```

It does **not** by itself discharge the Eulerian envelope, because the collar
error term in `(FN.9)` still remains.

Define the frozen-family neighboring-response density by

```math
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\mathcal N_{N,\eta^\ell,\psi}^{resp}(t),
\tag{FCI.5a}
```

and the corresponding cumulative frozen-family response ledger on
`[t_1,t_2]\subset I` by

```math
\mathfrak N_{N,\rho,\psi}^{resp,\varepsilon}[t_1,t_2;I]
:=
\int_{t_1}^{t_2}
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(s;I)\,ds
=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak N_{N,\eta^\ell,\psi}[t_1,t_2].
\tag{FCI.5b}
```

### Lemma `FCI.A1` (Summed `NRW` control for the frozen finite family)

For every interval `[t_1,t_2]\subset I`,

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_2;I)
\le
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_1;I)
+
\mathfrak N_{N,\rho,\psi}^{resp,\varepsilon}[t_1,t_2;I].
\tag{FCI.5c}
```

In particular, if

```math
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_0;I)<\infty,
\qquad
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(\cdot;I)\in L^1(I),
\tag{FCI.5d}
```

then

```math
\sup_{t\in I}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)
\le
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_0;I)
+
\int_I
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(s;I)\,ds
<
\infty.
\tag{FCI.5e}
```

So the fixed-family interval theorem `(FCI.4)` is reduced to the `L_t^1`
integrability of the summed neighboring-response density on the frozen family.

### Proof

Apply `(NRW.11b)` to each fixed increment `\eta^\ell` on `[t_1,t_2]`:

```math
E_N(\eta^\ell,t_2;\psi)
\le
E_N(\eta^\ell,t_1;\psi)
+
\mathfrak N_{N,\eta^\ell,\psi}[t_1,t_2].
```

Summing in `\ell=1,\dots,M_\varepsilon` gives `(FCI.5c)`, and `(FCI.5e)`
follows by taking `t_1=t_0` and integrating `(FCI.5a)`. ∎

### Corollary `FCI.A1a` (Reduction to the frozen-family source-only ledger)

Define the summed source-only frozen-family density by

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\Big(
|\mathcal P_N^{red}(\eta^\ell,t;\psi)|
+
|\mathcal F_N^{press}(\eta^\ell,t;\psi)|
+
|\mathcal S_N(\eta^\ell,t;\psi)|
+
|\mathcal R_N(\eta^\ell,t;\psi)|
+
|\mathcal C_N^{cut}(\eta^\ell,t;\psi)|
\Big).
\tag{FCI.5ea}
```

Then for every interval `[t_1,t_2]\subset I`,

```math
\mathfrak N_{N,\rho,\psi}^{resp,\varepsilon}[t_1,t_2;I]
\le
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_1;I)
+
2\int_{t_1}^{t_2}
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(s;I)\,ds.
\tag{FCI.5eb}
```

Consequently, the frozen-family response side is already reduced to the
strictly smaller sufficient source-only condition

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I).
\tag{FCI.5ec}
```

### Proof

Apply `(NRW.8)` to each fixed increment `\eta^\ell`:

```math
E_N(\eta^\ell,t_2;\psi)-E_N(\eta^\ell,t_1;\psi)
+
\int_{t_1}^{t_2}\mathcal N_{N,\eta^\ell,\psi}^{visc}(s)\,ds
=
\int_{t_1}^{t_2}
\mathcal N_{N,\eta^\ell,\psi}^{src}(s)\,ds,
```

where `\mathcal N_{N,\eta^\ell,\psi}^{src}` denotes the source-only sum inside
`(FCI.5ea)` for that fixed increment. Since `E_N(\eta^\ell,t_2;\psi)\ge 0`,

```math
\int_{t_1}^{t_2}\mathcal N_{N,\eta^\ell,\psi}^{visc}(s)\,ds
\le
E_N(\eta^\ell,t_1;\psi)
+
\int_{t_1}^{t_2}\mathcal N_{N,\eta^\ell,\psi}^{src}(s)\,ds.
```

Adding the source contribution itself and summing in `\ell` gives `(FCI.5eb)`.
Hence `(FCI.5ec)` is a sufficient exact source-side discharge. ∎

### Exact Source-Side Obstruction

At this point the fixed-family source side is no longer blocked by the finite
summation step itself. The exact remaining source-side burden is the
source-only interval-integrability statement

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I),
\tag{FCI.5f}
```

which is stronger than needed for `(FCI.5eb)` and therefore sufficient to
control the packet-level response ledger entering `(NRW.11b)` on each fixed
frozen increment. No second fixed-family summation wall remains below `FCI.A1`.
The companion note
[mpp-frozen-family-source-ledger-split-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-ledger-split-note.md)
now records the sharpest exact structural split currently visible on disk:
`(FCI.5f)` is the frozen-net sum of a pressure channel, a strain/cascade
channel, and a cutoff-commutator channel; the companion cutoff note
[mpp-frozen-family-cutoff-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-cutoff-channel-reduction-note.md)
now proves that the cutoff piece is absorbed by the viscous/coefficient side
once the explicit packet-factor coefficient ledger `\mathfrak b_{\psi}^{cut}`
is integrable, while the explicit packet commutator writeup in
[mpp-frozen-family-packet-cutoff-commutator-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-packet-cutoff-commutator-note.md)
records via `(PCC.Ca)` that the first direct packet bounds still self-loop
through the same fixed-family propagation. On the pressure side, the companion note
[mpp-frozen-family-pressure-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-pressure-channel-reduction-note.md)
already sharpens the same-depth source survivor further: under the installed
ordinary interval energy ledger, the genuinely same-depth pressure object is
the frozen-net resonant packet sum
`\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}`, so the next exact
pressure-side move is the interval-integrability target `(FPCR.C)` on that
note, while the adjacent stronger sufficient export is now isolated in
[mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md)
as `(FFPR.C2)`, and that sufficient branch already rejoins the installed
fixed-radius pressure stack through `FPC.H -> FPL.C`, then returns by `FPL.G`
to the receiver-side collar burden `CSP.B3a1`. The new companion note
[mpp-frozen-family-strain-cascade-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-channel-reduction-note.md)
now records the matching nonpressure sibling exactly: after cutoff Young-margin reduction,
the remaining same-depth source theorem is `(FSCR.C)`, namely
`\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(\cdot;I)\in L^1(I)`, while the
new adjacent sufficient note
[mpp-frozen-family-strain-cascade-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-sufficient-reduction-note.md)
already exports that whole channel to the common collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta}` and the frozen-family aggregate
`\mathcal F_{N,\rho,\psi}^{\varepsilon}` via `(FFSC.B1)`, with the
coefficient-side differential-law form recorded in `(FFSC.C1)`.
The new companion closure note
[mpp-frozen-family-source-sufficient-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-sufficient-closure-note.md)
now combines the stronger pressure and nonpressure exports with the cutoff
coefficient into one installed combined stronger sufficient source-side package
`(FFSRC.A)`, with the exact remaining source-side pressure wall isolated
separately as `(FFPB.A0)`.

## Exact Successor Target 2

### Target FCI.B (interval propagation of the collar Sobolev packet)

The second exact successor theorem to write and prove is:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
<
\infty.
\tag{FCI.6}
```

This is the exact next-rung collar burden recorded in
`mpp-packet-collar-next-rung-control.md`.

On the lower-carrier / one-field route, the thicker instance
`\delta_\ast:=\delta+\delta_{seg}` also has a second exact role: it is the
packet-theorem form of the stronger non-circular oscillation-side bypass
isolated as `(PCC.3)` in
[mpp-lci-a-pre-csp-common-consumer-bypass-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-common-consumer-bypass-note.md).
So `FCI.B` is not only part of the older common-object branch. At the widened
thickness it is also the exact pre-`CSP.A` packet theorem that would feed
`EOC.A` through `PCC.B`. Since the collar theorem surface already identifies
`CSP.A` with this same supplier object, that stronger bypass is also exactly
`CSP.A_{\delta+\delta_{seg}}` read at the enlarged thickness.

Its exact role is:

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}
\Longrightarrow
\mathfrak C_{N+1,\rho,\psi}^{\delta}
\Longrightarrow
\mathfrak N^{seg}_{N+1,\rho,\psi}
\Longrightarrow
\mathcal M^{wseg}_{N+1,\rho,\psi},
\tag{FCI.7}
```

where the first implication is the already-isolated collar-embedding slot
`(PC.14)`, and the later implications are `(PC.11)`--`(PC.13)`.

So `(FCI.6)` is the exact common-object supplier theorem on the next-rung side.

## Exact Downstream Corollary

### Corollary FCI.C (paired interval propagation supplies the common-object handoff)

Assume:

```math
\Lambda_{\rho,\psi}^{ref}(I)<\infty,
\tag{FCI.8}
```

```math
\sup_{t\in I}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t;I)<\infty,
\tag{FCI.9}
```

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty,
\tag{FCI.10}
```

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\le
C_{\mathrm{FCI}}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
\qquad
\text{for }t\in I,
\tag{FCI.11}
```

and

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
P_F^\ast(r,t;\psi)<\infty.
\tag{FCI.12}
```

Then:

```math
\sup_{t\in I}
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)<\infty,
\tag{FCI.13}
```

```math
\sup_{t\in I}
\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}(t)<\infty,
\tag{FCI.14}
```

```math
\sup_{t\in I}
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)<\infty,
\tag{FCI.15}
```

```math
\sup_{t\in I}
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)<\infty.
\tag{FCI.16}
```

Thus the defended common-object route has the following exact handoff data:

```math
\widehat{\mathcal E}^{Eul,ref}_{N,\rho,\psi}
\quad\text{and}\quad
\mathfrak N^{seg}_{N+1,\rho,\psi}
\tag{FCI.17}
```

are both propagated on `I`. The class-membership branch may hand off to the
closure-packaging layer only by carrying `(FCI.8)`--`(FCI.12)` and the outputs
`(FCI.13)`--`(FCI.16)` as the downstream hypotheses.

### Proof

From `(FCI.10)` and `(FCI.11)` one gets `(FCI.13)`.

Then `mpp-finite-net-reference-envelope-discharge.md` gives `(FN.13)`, hence
`(FCI.14)`, from `(FCI.9)` and `(FCI.13)`.

Also `(PC.11)` gives
`\mathfrak N^{seg}_{N+1,\rho,\psi}(t)\le \mathfrak C_{N+1,\rho,\psi}^{\delta}(t)`,
so `(FCI.15)` follows from `(FCI.13)`.

Finally `(PC.13)` together with `(FCI.12)` and `(FCI.13)` yields `(FCI.16)`. ∎

## Exact Feed Order

Once the two successor targets are discharged, the exact feed order is:

1. `(FCI.4)` feeds
   `mpp-finite-net-reference-envelope-discharge.md`.
2. `(FCI.6)` feeds
   `mpp-packet-collar-next-rung-control.md`.
3. Corollary `(FCI.C)` feeds
   `mpp-reference-and-weighted-segment-propagation-lemma.md`
   and
   `mpp-packet-local-propagation-lemma.md`.
4. The closure-packaging handoff then feeds the packet first-exit surfaces in
   `mpp-material-packet-closure-program.md`
   and the downstream endpoint-exclusion/class-membership stack.

So the class-membership branch queue is now exact:

```math
\text{fixed-family interval propagation}
\;\;+\;\;
\text{collar-Sobolev interval propagation}
\Longrightarrow
\text{common-object discharge}
\Longrightarrow
\text{closure packaging}
\Longrightarrow
\text{first-exit / rigidity / endpoint exclusion}.
\tag{FCI.18}
```

## Exact Execution Priority

The two successor targets are not symmetric in leverage.

The collar-Sobolev packet should be attacked first:

```math
\boxed{
CSP.A
\Longrightarrow
\text{common collar envelope first.}
}
\tag{FCI.18a}
```

Reason: that one common collar envelope feeds the next-rung segment side, the
weighted-segment packet, and the finite-net discharge on the reference side.

Only after that common collar envelope is available should the route return to
the frozen-family theorem `FCI.A` and its source-only reduction `(FCI.5f)`,
because the fixed-family side closes only the reference branch once the collar
error is already controlled.

So the honest execution order on this note is:

```math
\boxed{
\text{collar-Sobolev interval propagation}
\Longrightarrow
\text{common collar envelope}
\Longrightarrow
\text{frozen-family/source-only propagation}
\Longrightarrow
\text{common-object discharge.}
}
\tag{FCI.18b}
```

## Boundary

This note does **not** yet prove:

1. the interval propagation theorem `(FCI.4)` for the fixed finite Eulerian
   packet family;
2. the interval propagation theorem `(FCI.6)` for the collar Sobolev packet;
3. the interval-setup bound `(FCI.8)` from the packet distortion ledger;
4. the moving-collar Sobolev step `(FCI.11)` beyond the already-isolated
   theorem shape `(PC.14)`;
5. the first-exit theorem, the dead/jump rigidity layer, or the final
   reduction to packing failure or coherence fracture.

It isolates only the exact two-note interval-propagation queue that now sits
between the common-object geometry and the packet closure layer.

## Source Surfaces

Primary source surfaces for this queue note:

1. `problems/navier-stokes/theorem-construction/mpp-finite-net-reference-envelope-discharge.md`
2. `problems/navier-stokes/theorem-construction/mpp-packet-collar-next-rung-control.md`
3. `problems/navier-stokes/theorem-construction/mpp-local-eulerian-reference-envelope-lemma.md`
4. `problems/navier-stokes/theorem-construction/mpp-rung1-to-weighted-segment-control-lemma.md`
5. `problems/navier-stokes/theorem-construction/mpp-reference-and-weighted-segment-propagation-lemma.md`
6. `problems/navier-stokes/theorem-construction/mpp-packet-local-propagation-lemma.md`
7. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
