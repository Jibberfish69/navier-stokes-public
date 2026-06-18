# Spectral Gap Rigidity And Projector Identification Note

## Status

Candidate theorem-facing clarification note.

Role: isolate the exact mathematical role of a spectral gap on the live
exact-potential / SG.4 route and distinguish rigidity from the deeper
projector-identification burden.

Lawful start/import: this clarification sits below `EWI.A` in
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md).
The synchronization, surrogate, gap, and SSC packets discussed here are
branch-local consumers of the installed exact-potential readout packet; they
are not primitive branch starts.

This note does **not** claim that a spectral gap by itself yields
Navier-Stokes smoothness. Its job is narrower: explain why a gap is a
legitimate rigidity mechanism, where it enters the live route, and exactly
which theorem burdens still remain after the gap enters.

## Core Judgment

Once `EWI.A` has installed the exact-potential readout packet, the legitimate
part of the idea is this:

```math
\boxed{
\text{a spectral gap can make a top line or rank-one projector stable under perturbation.}
}
\tag{SGR.0}
```

That is a real mathematical role. It is exactly where Davis--Kahan belongs.

The route does **not** become legitimate by saying “spectral gap implies
smoothness.” The route becomes legitimate only if the downstream
exact-potential branch can discharge the much harder identification theorem:

```math
\boxed{
\text{recover a projective object from signless pair-defect data and prove a projector-error bound that yields the one-sided angle ledger.}
}
\tag{SGR.1}
```

So the gap is a rigidity device, not the whole proof.

## 1. What the spectral gap can legitimately do

Let `\Sigma_J(a,b,t)` be an observable symmetric surrogate on the transported
good family, and suppose it has top projector

```math
\widehat P_J(a,b,t):=\Pi_{\max}\bigl(\Sigma_J(a,b,t)\bigr).
\tag{SGR.2}
```

If

```math
\lambda_1\bigl(\Sigma_J(a,b,t)\bigr)-\lambda_2\bigl(\Sigma_J(a,b,t)\bigr)
\ge g_J(a,b,t)>0,
\tag{SGR.3}
```

then the top eigenspace is stable. Quantitatively, if
`\widetilde\Sigma_J` is a comparison surrogate on the same pair family, then a
Davis--Kahan type estimate has the form

```math
\bigl\|
\Pi_{\max}(\Sigma_J)-\Pi_{\max}(\widetilde\Sigma_J)
\bigr\|_F
\le
C_{DK}
\frac{\|\Sigma_J-\widetilde\Sigma_J\|_{\mathrm{op}}}{g_J}.
\tag{SGR.4}
```

This is the serious mathematical content of the spectral-gap idea.

It says:

```math
\text{gap}
\Longrightarrow
\text{stable projector from coarse symmetric data}.
\tag{SGR.5}
```

That part is legitimate.

## 2. What the gap does **not** do by itself

The gap does not identify the surrogate projector with the true target
projector.

The live target on the exact-potential branch is the instantaneous top-strain
projector

```math
P_{J,\top}^{seg}(a,b,t)
:=
n_J(a,b,t)\otimes n_J(a,b,t),
\tag{SGR.6}
```

and the live directional ledger is

```math
\Xi_J^{ang}(a,b,t)
:=
1-\bigl(e_{ab}(t)\cdot n_J(a,b,t)\bigr)^2
=
\frac12\|P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)\|_F^2.
\tag{SGR.7}
```

Even if a gap gives a stable surrogate projector `\widehat P_J`, the route
still needs:

```math
\|\widehat P_J-P_{J,\top}^{seg}\|_F^2
\le
\mathrm{Err}_{J,\mathrm{id}}.
\tag{SGR.8}
```

That is the identification burden.

So the exact logical split is:

```math
\text{gap}
\Longrightarrow
\text{stability of }\widehat P_J,
\tag{SGR.9a}
```

but

```math
\text{gap}
\not\Longrightarrow
\|\widehat P_J-P_{J,\top}^{seg}\|_F^2\le \mathrm{Err}_{J,\mathrm{id}}.
\tag{SGR.9b}
```

That second implication is the hard theorem.

## 3. The five-step path that would make the route legitimate

The route becomes legitimate only if it is factorized into the following exact
theorem chain.

### Step 1. Construct an observable symmetric surrogate

From the signless pair-defect packet `W_J`, build a symmetric observable
surrogate `\Sigma_J` or local projector-moment tensor `\widetilde S_J` on the
transported good family:

```math
W_J
\Longrightarrow
\Sigma_J
\quad\text{or}\quad
\widetilde S_J.
\tag{SGR.10}
```

This step is not automatic. The live no-go statements already say that
`W_J` plus the current PDE coercive bounds do not by themselves force the
one-sided directional deficit. So Step 1 needs extra synchronization structure,
kernel structure, or packet structure.

### Step 2. Prove a simple-top gap packet on the right object

One needs a gap on the actual surrogate or on an object theorem-safely tied to
it:

```math
g_J(a,b,t)
:=
\lambda_1(\Sigma_J(a,b,t))-\lambda_2(\Sigma_J(a,b,t))
\ge \gamma_\ast>0
\quad\text{on the active family.}
\tag{SGR.11}
```

At the current live edge, YM-heat/deformation geometry is best read as an
upstream supplier of this kind of spectral floor / coherence packet. It is not
yet the whole SG.4 theorem.

### Step 3. Use the gap to recover a stable projector

Once Step 2 holds, the top projector

```math
\widehat P_J=\Pi_{\max}(\Sigma_J)
\tag{SGR.12}
```

is stable and measurable on the active family. This is the precise
rigidity pay-off of the gap:

```math
\Sigma_J\text{ close}
\Longrightarrow
\widehat P_J\text{ close}
\quad\text{provided }g_J\ge\gamma_\ast.
\tag{SGR.13}
```

This is the point where Davis--Kahan enters honestly.

### Step 4. Prove selector-strain compatibility

This is the actual wall:

```math
\|\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)\|_F^2
\le
C_{id}
|W_J(a,b,t)|^2+\operatorname{Err}_J(a,b,t).
\tag{SGR.14}
```

Once `(SGR.14)` holds, the angle ledger follows:

```math
\Xi_J^{ang}(a,b,t)
\le
C_{ang}
|W_J(a,b,t)|^2+\operatorname{Err}_J(a,b,t).
\tag{SGR.15}
```

This is exactly where the route stops being a rigidity story and becomes a true
identification theorem.

### Step 5. Feed the one-sided angle ledger into `SG.4`

With `(SGR.15)` in hand, the pairwise directional deficit becomes observable,
and the residual pairwise closure can be written in the live form

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le
C_{RPC}
\mathcal E_J^{obs}+\operatorname{Err}_J.
\tag{SGR.16}
```

That then feeds the one-sided lower-envelope packet

```math
[\lambda_J-\mathfrak s_J]_+
\tag{SGR.17}
```

and yields the SG.4-side export. Only after this downstream package lands does
the spectral-gap mechanism touch continuation and smoothness.

So the legitimate chain is:

```math
\text{surrogate construction}
\Longrightarrow
\text{gap packet}
\Longrightarrow
\text{stable projector}
\Longrightarrow
\text{projector identification}
\Longrightarrow
\text{SG.4 directional ledger}.
\tag{SGR.18}
```

## 4. Exact formal package on the live lane

The live lane requires a more explicit package than the five-step sketch above.
In the notation of the current SG.4-facing route, let `W_J` be the signless
pair-defect packet on the transported good family, let
`P_{J,\top}^{seg}` denote the instantaneous top-strain projector, let `n_J`
be its top direction where the top eigenvalue is simple, and let

```math
g_J^{str}:=\lambda_{J,\top}-\lambda_{J,2}
\tag{SGR.18a}
```

be the relevant top-gap quantity on the good family.

Then the live route requires the following linked statements.

### Package 1. A usable gap/coherence regime on the good family

One needs a spacetime region where the top direction is isolated strongly
enough to define a stable rank-one projector. In practice the route uses either
the explicit simple-top packet or a reference-gap persistence statement. The
formal shape is:

```math
g_J^{str}(x,t)\ge g_\ast>0
\tag{SGR.18b}
```

on the selector-good set, together with the downstream transport-coherence
packet installed below `EWI.A`.

### Package 2. An observable symmetric surrogate on the right route data

One needs a symmetric tensor field that is actually observable from the
installed route data. On the exact-potential branch, the live on-disk surrogate
candidate is the localized projector-moment tensor `\widetilde S_J`. On the
measurable-derivative branch, the alternate candidate is
`\widetilde{\mathcal C}_J^N`.

The exact burden is **not** that these come from `W_J` alone. The burden is
that the route data carried on the transported good family imply the projector
recovery and projector comparison estimates used downstream.

### Package 3. A projector-recovery / pair-to-cocycle synchronization theorem

On the exact-potential branch, once `EWI.A` has installed the constitutive
import on the transported good family, the lane still needs a transported
rank-one projector or projective line field `\Pi_J`. This is the first
genuinely new theorem. The safe theorem shape is:

```math
(\text{EWI.A},\ \text{exact-potential branch-local projector packet})
\Longrightarrow
\Pi_J,
\qquad
\|\Pi_J-\Pi_J^{ref}\|
\le
\mathrm{Err}_{J,\mathrm{sync}},
\tag{SGR.18c}
```

for some transported reference projector `\Pi_J^{ref}` on the good family.

The raw stronger form

```math
\Pi_J=\mathcal R(W_J)
\tag{SGR.18d}
```

is exactly what the current no-go statements block.

### Package 4. A selector-strain compatibility theorem

Once `\Pi_J` exists, the route needs comparison with the true top-strain
projector. This is where the spectral gap becomes useful. On the
projector-moment side, the formal shape is:

```math
\|\widetilde S_J-S_J^{seg}\|
\le
\varepsilon_J,
\qquad
\bigl\|P_{\top}(\widetilde S_J)-P_{\top}(S_J^{seg})\bigr\|
\le
C_{DK}
\frac{\varepsilon_J}{g_J^{str}}.
\tag{SGR.18e}
```

On the measurable-derivative / Cauchy--Green side, the route already isolates
explicit residual budgets of the form

```math
|m_J(t_0)|,\qquad
\int |Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J|,\qquad
\int |\mathcal C_J^N|\,|\partial_t S_J^N|/g_J^{str}.
\tag{SGR.18f}
```

This is still the same theorem burden: compare the recovered projective object
to the true instantaneous top-strain projector by a displayed error bound small
enough to make the one-sided angle ledger observable.

### Package 5. A directional observability estimate

This is the SG.4-facing heart of the route. The lane needs a theorem turning
projector control into one-sided angle-defect control. On the simple-top
branch, the desired form is

```math
1-(e_{ab}\cdot n_J)^2
\le
C_{dir}
|W_J|^2+\mathrm{Err}_J,
\tag{SGR.18g}
```

or abstractly

```math
\Xi_J
\le
C_\Phi
\Phi(W_J)+\mathrm{Err}_J.
\tag{SGR.18h}
```

The theorem-shape side is already fixed on disk:

```math
\Xi_J^{ang}=1-(e_{ab}\cdot n_J)^2
\tag{SGR.18i}
```

on the simple-top branch, equivalently the angular-forcing budget

```math
\beta_J^2/g_J,
\tag{SGR.18j}
```

and on the normal-covector branch

```math
\Xi_J^{\perp}=|n_J(a)\cdot e_{ab}|^2.
\tag{SGR.18k}
```

### Package 6. Residual pairwise closure and the SG.4 bridge

The exact pair-defect-facing theorem in the live lane is the residual pairwise
closure `(PD.70q)` / `(PD.70s)`:

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le
C_{PD}
\mathcal E_J^{obs}.
\tag{SGR.18l}
```

Once that closes, the route still needs the SG.4-facing lower-envelope control,
that is, a spacetime bound on

```math
[\lambda_J-\mathfrak s_J]_+.
\tag{SGR.18m}
```

That is the exact lower-envelope packet consumed by the live SG.4 slot.

### Package 7. The final continuation bridge

Even after the SG.4 lower-envelope theorem lands, the route still needs the
continuation handoff. On the primary branch, the live theorem edge explicitly
keeps

```math
BR.lambda2
\tag{SGR.18n}
```

plus local strong-solution entry on the time window as the downstream bridge.

So the exact formal chain is

```math
(\text{EWI.A},\ \text{branch-local surrogate packet},\ \text{simple-top / coherence packet})
\Longrightarrow
\widetilde S_J\ \text{or}\ \widetilde{\mathcal C}_J^N
\Longrightarrow
\Pi_J
\Longrightarrow
\|\Pi_J-P_{J,\top}^{seg}\|
\Longrightarrow
\Xi_J
\Longrightarrow
\mathcal E_J^{dir}+\mathcal E_J^{loop}\le C_{PD}\mathcal E_J^{obs}
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
\text{continuation}.
\tag{SGR.18o}
```

The exact open theorem slots the lane still treats as live are:

```math
PSJ+,
\qquad
(PD.70q)/(PD.70s),
\qquad
PD.70z,
\tag{SGR.18p}
```

together with the measurable-derivative selector-strain compatibility theorem
and the sufficient normal-covector routes `(CN.13j)`, `(CN.13q)`,
`(CN.13ab)`-`(CN.13ad)`.

The sharpest single theorem requirement remains:

```math
W_J
\Longrightarrow
\text{transported projective object }\Pi_J
\Longrightarrow
1-(e_{ab}\cdot n_J)^2\le C_W|W_J|^2+\mathrm{Err}_J.
\tag{SGR.18q}
```

That is the exact live wall.

## 5. Exact failure modes

In the present Navier--Stokes route, a failure mode means: one arrow in the
intended chain stops being true.

The relevant chain is

```math
\text{spectral gap}
\Longrightarrow
\text{stable top projector}
\Longrightarrow
\text{directional observability}
\Longrightarrow
\text{SG.4 control}
\Longrightarrow
\text{continuation}.
\tag{SGR.18r}
```

So the real question is not whether the story sounds coherent in prose. The
real question is where one implication can fail as mathematics.

### Failure 1. Surrogate failure

One may build a symmetric observable surrogate from the signless pair-defect
packet, and that surrogate may carry a clean top eigendirection. The real
question then becomes:

```math
\text{does the recovered top eigendirection track the true top-strain direction?}
\tag{SGR.18s}
```

If the answer is weak, then the recovered projector is simply the wrong
projector. The route has succeeded at geometry on the surrogate while failing
at the actual Navier--Stokes target.

### Failure 2. Comparison failure

Davis--Kahan gives stability only when two operators are close and a genuine
gap is present. So the route still needs closeness

```math
\|\Sigma_J-\Sigma_J^{target}\|_{\mathrm{op}}\le \varepsilon_J^{target}
\tag{SGR.18t}
```

in the right norm, on the right spacetime set, for the right object. If that
comparison never materializes, then the gap buys very little.

### Failure 3. One-sidedness failure

Signless data naturally controls unsigned angles or quadratic defects. The live
`SG.4` slot wants a one-sided directional lower-envelope control. So the route
can fail here even when the projector story looks elegant:

```math
\text{stable unsigned projector control}
\not\Longrightarrow
\text{one-sided directional deficit control}.
\tag{SGR.18u}
```

This is exactly why the live frontier keeps the selector-adapted one-sided
defect-to-strain theorem as the irreducible wall.

### Failure 4. Transport failure

A projector may exist at one time or on one local patch and still fail to
remain coherent along the transported good family. It may drift, branch, or
decohere exactly where the ledger needs continuity across the strip. Then the
route loses the global directional packet required downstream.

### Failure 5. Gap-persistence failure

A frozen-time or local gap is not enough. The route needs a gap that persists
on the actual spacetime set where observability is supposed to act. If the gap
collapses on that relevant set, then the rigidity mechanism disappears exactly
where it is needed.

### Failure 6. Wrong-object rigidity

One can have a perfectly good gap on a mathematically nearby object and still
miss the theorem target. This is the precise danger on the Cauchy--Green side:
finite-time stretching and instantaneous top strain are different objects. So a
good gap on the wrong object can produce real geometry and still fail to
produce the control the route needs.

## 6. Final verdict

The exact verdict is:

```math
\boxed{
\text{spectral gap is a legitimate rigidity mechanism,}
}
```

```math
\boxed{
\text{but the route lives or dies on projector identification, not on stabilization alone.}
}
\tag{SGR.19}
```

So the right theorem ambition is not

```math
\text{spectral gap} \Longrightarrow \text{Navier--Stokes smoothness}.
\tag{SGR.20a}
```

It is

```math
\text{spectral gap}
\Longrightarrow
\text{stable surrogate projector}
\Longrightarrow
\text{if identification lands, SG.4 can fire.}
\tag{SGR.20b}
```

In the shortest brutal form:

```math
\boxed{
\text{the idea can succeed as geometry and still fail as control.}
}
\tag{SGR.20c}
```

That is the strongest version of the idea that still matches the live frontier.

## Successor Discharge Surfaces

The live discharge sequence downstream of this clarification note is the
current-strength route form

```math
(\text{EWI.A},\ \text{branch-local synchronization packet})
\Longrightarrow \Pi_J
\Longrightarrow
\|\Pi_J-P_{J,\top}^{seg}\|
\Longrightarrow
\Xi_J
\Longrightarrow
\mathcal E_J^{dir}+\mathcal E_J^{loop}\le C_{PD}\mathcal E_J^{obs}
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4.
\tag{SGR.20d}
```

The clean downstream split is into four exact theorem burdens.

### Burden A. Observable surrogate construction

Build one symmetric observable object on the transported good family:

```math
\Sigma_J
\quad\text{or}\quad
\widetilde S_J
\quad\text{or}\quad
\widetilde{\mathcal C}_J^N,
\tag{SGR.20e}
```

with the first target theorem

```math
(\text{EWI.A},\ \text{exact-potential branch-local projector packet})
\Longrightarrow
(\Sigma_J,\Pi_J^{ref}).
\tag{SGR.20f}
```

Until this object exists, the spectral-gap discussion is only slogan-level.

### Burden B. Gap and stable projector

Once `\Sigma_J` exists, the rigidity slot is:

```math
\Sigma_J\ \text{simple-top}
\Longrightarrow
\widehat P_J:=\Pi_{\max}(\Sigma_J)\ \text{well-defined and stable},
\tag{SGR.20g}
```

with Davis--Kahan comparison

```math
\|\widehat P_J-\Pi_J^{ref}\|_F
\le
C_{DK}
\frac{\|\Sigma_J-\Sigma_J^{ref}\|_{\mathrm{op}}}{g_J^{str}}.
\tag{SGR.20h}
```

This is the rigidity part only.

### Burden C. Projector identification

This is the actual wall. The route needs

```math
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2
\le
C_{ssc}
|W_J|^2+\mathrm{Err}_{J,\mathrm{ssc}},
\tag{SGR.20i}
```

and then the triangle split

```math
\|\widehat P_J-P_{J,\top}^{seg}\|_F
\le
\|\widehat P_J-\Pi_J^{ref}\|_F
+
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F.
\tag{SGR.20j}
```

The spectral gap only buys the first term.

### Burden D. SG.4 feed and continuation

After projector identification, the route runs through

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le
C_{RPC}
\mathcal E_J^{obs}+\mathrm{Err}_J,
\tag{SGR.20k}
```

then lower-envelope control for

```math
[\lambda_J-\mathfrak s_J]_+,
\tag{SGR.20l}
```

then `SG.4`, then `BR.\lambda2`, and finally local strong-solution entry /
continuation.

On the exact-potential Cauchy--Green branch, the current on-disk discharge
chain is already sharper:

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
\text{the }D.7ma4\text{ slot, realized concretely by }D.7mq,
\tag{SGR.20m}
```

```math
D.7mp + D.7mo + D.7mm
\quad\text{or}\quad
D.7mf + D.7mk
\Longrightarrow
\text{one selector-strain sufficiency packet},
\tag{SGR.20n}
```

and then the branch-facing export `D.7mr2` yields the angular ledger packet
directly:

```math
\Xi_J^{ang}
\le
C\,|W_J|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}
+
C\,\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}.
\tag{SGR.20o}
```

So on this branch the abstract discharge surfaces specialize as follows:

```math
\text{OPS.B}
\Longrightarrow
\text{the surrogate slot is realized by }
\Sigma_J=\widehat P_{J,\varepsilon}^{pair},
\tag{SGR.20p}
```

```math
\text{SGS.B}+\text{DK.B}
\Longrightarrow
\text{the surrogate simple-top and stable-projector slots carry no extra theorem debt},
\tag{SGR.20q}
```

```math
\text{SSC.B}\ \text{or}\ \text{SSC.C}
\Longrightarrow
\|\Pi_J^{ref}-P_{J,\top}^{seg}\|_F^2\le C_{ssc}\mathrm{Err}_{J,\mathrm{ssc}},
\tag{SGR.20r}
```

```math
\text{DO.B}
\Longrightarrow
D.7mr2.
\tag{SGR.20s}
```

So the exact remaining live burden on that branch is now concentrated in three
packets:

```math
\text{PTC-Lin},
\qquad
\text{PTC-Shape},
\qquad
\text{one selector-strain sufficiency packet.}
\tag{SGR.20t}
```

Everything after `D.7mr2` is downstream assembly.

The live discharge surfaces, in that exact order, are:

1. `observable-projector-surrogate-construction.md`
2. `simple-top-gap-for-observable-surrogate.md`
3. `stable-projector-recovery-via-davis-kahan.md`
4. `selector-strain-compatibility-for-synchronized-projector.md`
5. `directional-observability-from-projector-identification.md`
6. `residual-pairwise-closure-from-directional-ledger.md`
7. `sg4-lower-envelope-and-continuation-handoff.md`

So the discharge stack keeps the same route truth as the clarification note:
the spectral gap stabilizes the recovered projector, but the route closes only
when the synchronized reference projector is compared to the true top-strain
projector strongly enough to force the one-sided directional ledger.

The burden split across those surfaces is:

1. `observable-projector-surrogate-construction.md`
   and
   `selector-strain-compatibility-for-synchronized-projector.md`
   carry the hard theorem debt;
2. `directional-observability-from-projector-identification.md`
   is the observability realization of that debt;
3. `residual-pairwise-closure-from-directional-ledger.md`
   and
   `sg4-lower-envelope-and-continuation-handoff.md`
   are downstream assembly once the projector-identification wall is crossed.

On the exact-potential selector-strain side, the first concrete branch-local
attack is now written as the five-note micro-stack

1. [restricted-cg-reference-gap-persistence.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/restricted-cg-reference-gap-persistence.md)
2. [reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md)
3. [exact-potential-angular-ledger-from-selector-strain.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md)
4. [exact-potential-residual-pairwise-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-residual-pairwise-closure.md)
5. [lower-envelope-sg4-continuation-exact-potential.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-envelope-sg4-continuation-exact-potential.md)

with the explicit correction that the three `D.7mb` strip budgets do not by
themselves preserve the Cauchy--Green gap: the honest gap floor comes from the
reference persistence packet `E_{J,t_0}^{CG}`, and the `D.7mb` budgets then
convert that floor into the projector comparison needed by selector-strain
compatibility.

The cleanest branch-local simplification is to take

```math
\Pi_J^{ref}:=P_J^{CG}(t,a),
\tag{SGR.20u}
```

so that the exact-potential closure route compresses to

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
D.7mq,
\tag{SGR.20v}
```

```math
\text{SSC-EP.A}
\Longrightarrow
\|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)\|_F^2
\le C_{EP}\eta_J^{mb}(t,a,b)^2/g_0^2,
\tag{SGR.20w}
```

```math
D.7mq + \text{selector-strain compatibility}
\Longrightarrow
D.7mr2
\Longrightarrow
RPC.3
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2.
\tag{SGR.20x}
```

Here `SSC-EP.A` is the minimal branch-local selector-strain theorem:

```math
E_{J,t_0}^{CG}\le g_0/4
\quad\text{and}\quad
\eta_J^{mb}\ \text{controlled}
\Longrightarrow
\|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)\|_F^2
\le
C_{EP}
\eta_J^{mb}(t,a,b)^2/g_0^2.
\tag{SGR.20y}
```

The larger installed packet

```math
D.7mp + D.7mo + D.7mm
\tag{SGR.20z}
```

is one sufficient route to the hypotheses and bootstrap control behind
`SSC-EP.A`, rather than the minimal logical statement of the branch-local
selector-strain theorem itself.

So the exact live debt on the branch is best summarized as:

```math
\text{PTC-Lin},
\qquad
\text{PTC-Shape},
\qquad
\text{SSC-EP.A}
\ \text{(or one installed sufficient packet for it).}
\tag{SGR.20za}
```

More sharply: upstream of `SSC-EP.A`, the projective exact-potential branch is
now waiting on one selector-good differentiability-exceptional-set theorem and
one selector-shape isotropy theorem. For either declared selector realization
`\xi_{ab}=b-a` or `\xi_{ab}=(b-a)/\ell_J`, the bounded-collar side of
`PTC-Lin.A` is already imported by the installed active-pair scale packet, and
`TPS.4u` is one exact sufficient realization of that remaining exceptional-set
step. So the live linearization debt is the exceptional-set pricing step rather
than a separate support theorem. Once those are installed, the
`D.7mq -> D.7mr2 -> RPC.3 -> SG.4 -> BR.\lambda2` side is downstream assembly.

There is now also a sharper alternate upstream route on disk:

```math
\text{quadratic interiority of selector-good directions}
\Longrightarrow
\text{finite balanced selector frame}
\Longrightarrow
\text{finite-frame linearization}
\Longrightarrow
\|\mathcal K_J^{frame}-W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast\|_{\mathrm{op}}
\le \mathrm{Err}_{J,\mathrm{frame}}.
\tag{SGR.20zb}
```

That slogan is only safe when read together with the two installed branch
packets:

```math
\text{exact-potential comparison packet}
+\text{ reference simple-top gap}
\Longrightarrow
D.7mq.
\tag{SGR.20zc}
```

The scalar normalization factors in the tensor closure remain part of the
selector-good normalization packet and should not be silently dropped when this
route is summarized.

This route avoids a full selector-weighted pair-average theorem. Its two new
debt surfaces are:

1. [selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md)
2. [finite-frame-linearization-on-selector-good-strips.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-frame-linearization-on-selector-good-strips.md)

The sharper supplier notes behind those two surfaces are now:

1. [selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md)
2. [segment-collar-derivative-continuity-on-balanced-frame.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md)
3. [exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md)

Those three live-debt surfaces are now materialized explicitly as:

1. [ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
2. [ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md)
3. [selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)

The most novel theorem debt is concentrated in `PTC-Lin` and `PTC-Shape`. The
selector-strain packet remains live theorem debt too, but its required
Cauchy--Green branch statement is now the explicit gap comparison

```math
\|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)\|_F^2
\le C_{EP}\eta_J^{mb}(t,a,b)^2/g_0^2,
```

together with the reference gap floor supplied by `E_{J,t_0}^{CG}`.  No
perturbative/bootstrap step is counted unless it proves that displayed
inequality with the stated gap floor.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-packet.yaml`
2. `problems/navier-stokes/source-frontier.yaml`
3. `problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md`
4. `problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md`
5. `problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md`
