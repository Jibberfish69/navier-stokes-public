# Modernized Four-Body Schema Under Torus / Tower / Deformation Geometry

## Purpose

Record the updated four-body proof schema after translating the legacy
classical packet through the newer languages now active in the lane:

- torus as compact spectral derivation lab,
- derivative tower as visible classical bookkeeping,
- YM-heat / carrier language for the governing dissipative law,
- Lagrangian deformation geometry as the primary geometric continuation object.

This note does **not** discard the classical four-body packet.
It does **not** change the job of any body.
It now does fix one branch choice explicitly:

```text
the current live lane runs this schema on the periodic torus branch first,
and treats Euclidean whole-space closure as a downstream export problem.
```

Its purpose is narrower:

```text
keep the four classical bodies fixed,
translate each one through the newer torus/tower/geometry languages,
and then retest the obstruction on that upgraded reading.
```

Nothing in this modernization makes `\mathbb R^3` mandatory.
The relevant requirement is:

```text
stay on one fixed accepted classical incompressible theorem surface,
and do not silently switch surfaces mid-argument.
```

This schema is run on the torus branch in the current lane, so the torus is not
merely a diagnostic lab. It is the chosen classical surface for the internal
proving branch.

## 1. Legacy packet versus modern packet

The legacy classical packet is

```math
\mathcal P_{\mathrm{cl}}(T)=
\bigl(
S_{\mathrm{cl}}(T),
Q_{\mathrm{cl}}(T),
C_{\mathrm{cl}}(T),
G_{\mathrm{cl}}(T)
\bigr)
\tag{1}
```

with circuit

```math
S_{\mathrm{cl}}\to Q_{\mathrm{cl}},\qquad
(S_{\mathrm{cl}},Q_{\mathrm{cl}})\to C_{\mathrm{cl}},\qquad
C_{\mathrm{cl}}\to G_{\mathrm{cl}},\qquad
G_{\mathrm{cl}}\to S_{\mathrm{cl}}.
\tag{2}
```

The modernized packet keeps the same loop and the same body jobs, but each
body is re-read through the newer theorem surfaces:

```math
\boxed{
\text{torus = chosen internal classical surface and derivation lab,}
\quad
\text{tower = classical visible bookkeeping,}
\quad
\text{deformation geometry = primary continuation object.}
}
\tag{3}
```

So the four-body packet is no longer best read as:

```text
four isolated classical tricks on one fixed accepted classical domain.
```

It is better read as:

```text
one control mechanism, seen on four coupled theorem surfaces,
without changing the classical body assignments.
```

## 1A. The literal propagated packet still exists

The modernization should **not** be read as four separate relabelings.

The old four-body strategy was a propagated packet with a live defect handoff:

```text
\mathcal P_cl(T), live defect
-> pass through Bodies 1,2,3,4
-> \mathcal P_cl(T^+), refined live defect.
```

That same literal relay is still the right model here.

The modernized packet should therefore be read as

```math
\mathcal P_{\mathrm{mod}}(T)
:=
\bigl(
S_{\mathrm{tail}}(T),
Q_{\mathrm{drain}}(T),
C_{\mathrm{exact}}(T),
G_{\mathrm{geo}}(T);
\mathcal E_{\mathrm{live}}^{(n)}(T)
\bigr),
\tag{3a}
```

where:

- `S_{\mathrm{tail}}(T)` is the Body I scale-and-derivative-depth barrier,
  seen through dyadic tails `E_N,D_N` and tower tails
  `\mathfrak T_R,\mathfrak S_r`;
- `Q_{\mathrm{drain}}(T)` is the Body II drain ledger, either in Eulerian
  shadow form
  `(\mathcal K_r^{\mathrm{Eul}},\mathcal D_r^{\mathrm{Eul}},\mathcal F_r^{\mathrm{Eul}})`
  or in primary deformation form
  `(\mathcal K_r^{\mathrm{Lag}},\mathcal D_r^{\mathrm{Lag}},\mathcal C_r^{\mathrm{Lag}})`;
- `C_{\mathrm{exact}}(T)` is the Body III exact-object-production packet,
  classically
  `u^{(n)}\to u` and `u^{(n)}\otimes u^{(n)}\to u\otimes u`;
- `G_{\mathrm{geo}}(T)` is the Body IV geometry-evolving heat packet on
  `(v,G)`;
- `\mathcal E_{\mathrm{live}}^{(n)}(T)` is the currently exposed survivor /
  defect carrier being passed around the loop.

The literal relay law we still want is

```math
\boxed{
\bigl(\mathcal P_{\mathrm{mod}}(T),\mathcal E_{\mathrm{live}}^{(n)}(T)\bigr)
\Longrightarrow
\bigl(\mathcal P_{\mathrm{mod}}(T^+),\mathcal E_{\mathrm{live}}^{(n+1)}(T^+)\bigr),
}
\tag{3b}
```

not merely a verbal reinterpretation of the four bodies.

The important modernization is that the same live defect now has three linked
readouts:

```math
\boxed{
\text{Body I: dyadic/tower tail readout}
\;\leftrightarrow\;
\text{Body II: flux/debt readout}
\;\leftrightarrow\;
\text{Body IV: deformation-geometry readout.}
}
\tag{3c}
```

So the upgrade is not "change the argument."
It is:

```text
keep the same propagated packet, but let the live defect be expressed in the
torus/tower/deformation languages at the right stages of the loop.
```

### Explicit modern relay map

The old route really did pass a live packet forward.
The modernized route must do the same:

1. **Body I -> Body II**
   Body I exports not only a tail barrier but the current tail-side survivor
   `\mathcal E_{\mathrm{live}}^{(n)}`.
   In the new language, the same object should reappear as the Body II
   flux/debt packet:

   ```math
   \mathcal E_{\mathrm{live}}^{(n)}
   \rightsquigarrow
   \mathcal F_r^{\mathrm{Eul}}
   \quad\text{or deeper}\quad
   \mathcal C_r^{\mathrm{Lag}}.
   \tag{3d}
   ```

2. **Body II -> Body III**
   Whatever drain law Body II claims has to survive exact same-surface passage.
   Otherwise it has not really fed the next body:

   ```math
   u^{(n)}\to u,
   \qquad
   \mathcal E_{\mathrm{live}}^{(n)}\to \mathcal E_{\mathrm{live}}[u].
   \tag{3e}
   ```

3. **Body III -> Body IV**
   Body III hands the exact object to the geometry side:

   ```math
   u
   \mapsto
   (v,G),
   \qquad
   \mathcal E_{\mathrm{live}}[u]
   \mapsto
   \mathcal C_\alpha(A,G;v,q).
   \tag{3f}
   ```

4. **Body IV -> Body I**
   Body IV must return more than a continuation norm.
   It must return a sharpened same-surface tail theorem, i.e. a recertified
   Body I packet:

   ```math
   \frac{d}{dt}E_N + c\,D_N
   \le
   \Gamma_N E_N + C_*2^{-2\delta N}
   \Longrightarrow
   \Pi_{\ge N}(T)\le C_*2^{-2\delta N},
   \tag{3g}
   ```

   and in tower language the same shape would have to be made as an exact
   inequality of the form

   ```math
   \frac{d}{dt}\mathfrak T_R + c\,\mathfrak D_R
   \le
   \text{lower-order / absorbable defect},
   \tag{3h}
   ```

   so the next Body I packet is stronger than the previous one.

This is the point of the modernization:

```math
\boxed{
\text{the defect exposed by Body IV must be fed back into Body I as the next,
sharper no-escape theorem on the same surface.}
}
\tag{3i}
```

That literal relay was present in the old packet, and it remains mandatory in
the upgraded one.

## 2. Body I modernized: scale barrier becomes spectral / tower tail barrier

### Legacy reading

Body I is the scale barrier.

### Modern reading

Body I should now be read in two layers:

1. **torus / carrier lab face**
   spectral tail barrier, persistent/nonpersistent split, coercive floor on the
   nonpersistent sector;
2. **classical tower face**
   high-rung / high-frequency tail barrier in the derivative tower.

The crucial upgrade is:

```math
\boxed{
\text{Body I should be read not just as “no escape across scales,” but as “no escape across scales and derivative depth.”}
}
\tag{4a}
```

Those are two faces of the same barrier:

- **dyadic face**: no runaway leakage into the high-frequency tail;
- **tower face**: no runaway leakage into higher and higher derivative rungs.

They are not literally the same estimate, but they are the same control
problem seen in different coordinates.

The torus role is exactly the one recorded in
[working-notes/torus-derivation-lab-versus-continuum-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/torus-derivation-lab-versus-continuum-target.md):

```text
continuum ontology
-> compact spectral model
-> derive exact operator mechanism
-> lift back to continuum.
```

So modern Body I is:

```math
\boxed{
\text{discover the no-escape tail mechanism in the torus spectral lab and read it classically as a scale-and-derivative-depth barrier.}
}
\tag{4}
```

On the chosen classical surface this is still expressed through objects like
`E_N`, `D_N`, `P_{\ge N}`, and the recertification surface in
[route-b-euclidean-closure-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/route-b-euclidean-closure-theorem.md).

In tower language, let

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u.
\tag{4b}
```

Then the corresponding high-depth tail should be stated as a precise family,
for example

```math
\mathfrak T_R(t)
:=
\sum_{m+|\alpha|\ge R}
w_{m,\alpha}\,\|J_{m,\alpha}(t)\|_{L^2}^2,
\tag{4c}
```

or, on the purely spatial tower,

```math
\mathfrak S_r(t)
:=
\sum_{|\alpha|\ge r}
a_\alpha\,\|\partial_x^\alpha u(t)\|_{L^2}^2.
\tag{4d}
```

So the upgraded Body I statement is:

```math
\boxed{
\text{the solution cannot keep escaping either into finer Fourier scales or into higher derivative depths without paying a barrier cost.}
}
\tag{4e}
```

That is the modern tower reading of the scale barrier.

### 2A. Why the dyadic language still exists

The dyadic language should **not** be treated as the deep engine of the route.

In the modernized packet, the preferred reading is:

```math
\boxed{
\text{tower / deformation geometry = engine,}
\qquad
\text{dyadic tail language = exact interface layer.}
}
\tag{4f}
```

Its remaining value is concrete, not rhetorical.

1. **exact shell geometry of the live survivor**

   The current open packet is still localized on the frequency geometry

   ```math
   N+M<k<j-4,
   \tag{4g}
   ```

   and that geometry is most naturally seen in dyadic variables.

2. **compactness interface**

   The compactness package is currently written to consume the same-surface
   high-frequency smallness

   ```math
   \int_0^T \|P_{\ge N}u^{(n)}(t)\|_{L^2_x}^2\,dt
   \le
   C_*2^{-2\delta N},
   \tag{4h}
   ```

   on a classical approximation family.

3. **`4 -> 1` recertification interface**

   The current same-surface return arrow is written on the tail-energy packet

   ```math
   T_N,\ E_N,\ D_N,\ \Pi_{\ge N},
   \tag{4i}
   ```

   because the available coercive damping is still phrased there as

   ```math
   Q_N(t)\ge c_Q\,2^{2N}T_N(t).
   \tag{4j}
   ```

So the honest verdict is:

```math
\boxed{
\text{the dyadic language is still valuable only where the theorem surface is genuinely shell-local or tail-local.}
}
\tag{4k}
```

Outside those exact interfaces, the tower is the better language.

### 2B. Did the tower solve most of the loop?

Very nearly, yes.

The tower already does most of the conceptual heavy lifting:

- it gives the exact derivative-family balance;
- it shows viscosity's one-derivative advantage;
- it exposes the off-diagonal mixed-source matrix;
- it is the natural visible surface for the drain-law search;
- it is the natural place to compare transport-created roughness against
  dissipation.

So the modernized route should now be read as:

```math
\boxed{
\text{the tower handles most of Bodies I and II conceptually,}
\text{ while dyadic tails remain as the exact current interface to Body III and the same-surface `4 -> 1` theorem.}
}
\tag{4l}
```

Equivalently:

```text
if the tower eventually proves a same-surface no-escape theorem strong enough
to replace the tail package and still feed compactness and recertification,
then the dyadic layer can be demoted from theorem engine to archival interface.
```

At the present route state, that replacement has **not** yet been proved.
So the tails still survive, but in a much narrower role than before.

## 3. Body II modernized: monotonicity becomes coercive dissipative law

### Legacy reading

Body II is the monotone functional `Q(t)`.

### Modern reading

This is still the monotonicity / coercive-energy body.
The update is about **language**, not body reassignment.

There are now three nested versions:

1. **carrier / torus face**
   D.2 coercive energy on the projected NC flow, as in
   [d2-global-coercive-energy-estimate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d2-global-coercive-energy-estimate.md);
2. **classical tower shadow**
   transport-assisted dissipation inequality on the derivative family;
3. **deep geometric face**
   deformation-geometry dissipation law on `(v,G)`.

So Body II should now be read as:

```math
\boxed{
\text{the monotone/coercive body, now upgraded from a named scalar bridge to the search for the real one-sided drain law.}
}
\tag{5}
```

In the newer language, the point is not the literal identity

```math
\nu\Delta u = -(\text{gradient})
\tag{5a}
```

and not “viscosity alone saves us.”

The sharper reading is:

```math
\boxed{
\text{transport + viscosity + constraint should reorganize into a one-sided drain law on the dangerous derivative geometry.}
}
\tag{5b}
```

Equivalently, Body II is the place where one asks whether the **full NS
dynamics** behave like a gradient flow after choosing the correct functional
and variables.

This is exactly where the recent shift matters:

- bare quadratic weighted-Gram Eulerian energies are too weak as primary
  objects;
- the stronger candidate is the deformation-geometry law on `(v,G)`.

## 4. Body III modernized: compactness stays compactness, with shadow as an overlay

### Legacy reading

Body III is compactness of the approximation family.

### Modern reading

Body III must stay the compactness / exact-object-production body.

The role played by compactness in the legacy packet was:

```text
produce the exact same-surface classical object on which the bridge acts.
```

That role does **not** disappear.

The correct upgrade is:

```math
\boxed{
\text{compactness remains the classical same-surface object-production mechanism;}
}
\tag{6a}
```

and, in the parallel projected-flow language,

```math
\boxed{
\text{D.3 shadow/descent is the analogous object-production step on the NC route.}
}
\tag{6b}
```

So the correct modernization is **not**:

```text
replace compactness by D.3.
```

It is:

```text
read compactness and shadow/descent as parallel exact-object-production languages on the classical and NC routes.
```

D.3
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
therefore belongs here only as an overlay/comparison surface, not as a literal
replacement of Body III.

The shadow theorem says the derivation-lab / carrier law descends to
the classical incompressible NS law with either:

- strict shadow and no remainder, or
- a named shadow defect packet that must be killed or absorbed.

So the modernized third body is:

```math
\boxed{
\text{exact same-surface object production, with compactness classical and shadow/descent parallel on the NC route.}
}
\tag{7}
```

In the newer language, this can be sharpened one step further:

```math
\boxed{
\text{Body III is the body that produces the exact field carrying the dangerous derivative/deformation geometry,}
\text{ so that the upgraded Body IV law acts on a real same-surface object rather than on a surrogate.}
}
\tag{7a}
```

Compactness therefore remains theorem-primary for the source-faithful
four-body packet.
The shadow theorem is a modern parallel surface, not a body swap.

## 5. Body IV modernized: regularized curvature becomes deformation geometry

### Legacy reading

Body IV was the curvature-based regularity bridge, historically using positive
Ricci geometry.

### Modern reading

This is where the biggest update happens.

The old Ricci-based fourth bridge is no longer the live best reading.
The new primary object is the Lagrangian deformation geometry:

```math
\partial_t v + A^\top \nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
G=AA^\top.
\tag{8}
```

Here:

- advection disappears exactly;
- viscosity becomes a geometry-modified heat operator;
- the geometry evolves by strain:

  ```math
  \partial_t G
  =
  -A\big((\nabla u)+(\nabla u)^\top\big)A^\top;
  \tag{9}
  ```

- the higher-order burden is the coefficient-commutator packet
  `\mathcal C_\alpha(A,G;v,q)`.

So Body IV now becomes:

```math
\boxed{
\text{prove a deformation-geometry dissipation law whose Eulerian shadow is the transport-assisted dissipation law on the tower.}
}
\tag{10}
```

This can be compressed even further into the newer language:

```math
\boxed{
\text{NS is not “viscosity plus nuisance transport”; at the deep level it is geometry-evolving heat.}
}
\tag{10a}
```

Then Body IV is the body where that statement must become theorem-grade.

This is the modern replacement for the old “positive Ricci damping” idea.

On the torus side, the geometric coercion is seen not as positive Ricci but as
the spectral/carrier face of the YM heat operator:

```math
\text{YM heat on carrier}
\to
\text{torus spectral heat law}
\to
\text{classical viscous shadow}.
\tag{11}
```

So the new fourth bridge candidate is:

```text
deformation-geometry heat law, replacing the old positive-Ricci mechanism only if it can be pulled back to the same chosen classical theorem surface.
```

## 6. Modernized loop

Under the newer language, the four-body circuit becomes:

### 1 -> 2

The torus/carrier tail barrier gives the setting in which a coercive drain law
can even be formulated without runaway nonpersistent leakage.

### 2 -> 3

Once the primary coercive law is in place, Body III must still produce the
exact classical object on the same chosen classical surface.

On the classical route this is compactness / exact nonlinear closure.
On the projected-flow route this is the parallel D.3 shadow/descent theorem.

### 3 -> 4

The exact classical field is then fed into the modernized fourth bridge:
ideally the deformation-geometry regularity bridge, rather than the old
Ricci-only mechanism.

### 4 -> 1

The modernized fourth bridge must then re-certify the derivative tail barrier /
scale barrier on the classical surface.

So the loop is now:

```math
\boxed{
\text{tail barrier}
\to
\text{coercive drain law}
\to
\text{exact object production}
\to
\text{modernized regularity bridge}
\to
\text{tail re-certification.}
}
\tag{12}
```

Equivalently, the modern loop should be read as the propagated packet law

```math
\boxed{
\bigl(\mathcal P_{\mathrm{mod}}(T),\mathcal E_{\mathrm{live}}^{(n)}\bigr)
\to
\bigl(\mathcal P_{\mathrm{mod}}(T^+),\mathcal E_{\mathrm{live}}^{(n+1)}\bigr),
}
\tag{12b}
```

where the new insight is not only that the packet propagates, but that the
survivor defect is re-read at each body in the modern language:

- as tail leakage in Body I,
- as flux/debt in Body II,
- as exact same-surface carrier in Body III,
- as deformation/commutator geometry in Body IV.

In the upgraded language, that same loop can be read as:

```math
\boxed{
\text{no escape across scales}
\to
\text{full-dynamics drain law}
\to
\text{exact same-surface field}
\to
\text{geometry-evolving heat continuation}
\to
\text{no escape re-certified.}
}
\tag{12a}
```

## 7. Retest of the old obstruction

### Old obstruction

In the legacy packet, the obstruction was often phrased as:

```text
the fourth bridge is not same-surface clean.
```

### Modern retest

After translation into the new language, that obstruction changes shape.

The torus and tower upgrades do **not** remove the obstruction by themselves.
They sharpen it.

The surviving obstruction is now best stated as:

```math
\boxed{
\text{upgrade the fourth bridge to deformation geometry without losing same-surface closure of Bodies I--III on the chosen classical branch.}
}
\tag{13}
```

More concretely, the live burdens are:

1. **primary drain law not yet proved**
   on `(v,G)` one still needs the actual one-sided coercive law
   `\mathcal K_r^{Lag} + \mathcal D_r^{Lag} + \mathcal C_r^{Lag}`;
2. **same-surface object-production step still theorem-bearing**
   on the classical route this remains compactness/nonlinear closure;
   on the projected route it is D.3/D.4 shadow/exact-lift;
3. **torus-first branch still needs explicit export if whole-space closure is desired**
   on the current route, torus is already the chosen internal classical branch,
   so no same-stage whole-space rewrite is required inside the proof chain; a
   separate Euclidean export theorem is only needed if whole-space discharge is
   still demanded downstream.

So yes, the obstruction is still there.
But it is now much more focused and much more plausible.

### 7A. Exact current survivor after modernization

The modernization does **not** give a blank new obstruction.
It inherits the exact live survivor already exposed by the classical packet.

On the current torus-first theorem-primary stack, the live Body IV obstruction
is still the lifted high-side remainder on the exact shell geometry

```math
N+M<k<j-4.
\tag{13a}
```

This is the packet isolated in
[referee-hard-upgraded-body4-packet-subsection.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/referee-hard-upgraded-body4-packet-subsection.md):

```math
|\mathcal N_{N,\mathrm{grad}}^{\mathrm{lift}}(t)|
\le
\varepsilon \nu D_N(t)+C_*2^{-2\delta N}
\qquad\text{(target only; still open).}
\tag{13b}
```

That packet is distinct from:

- the strict low-mode packet;
- the threshold-local spill collar;
- the genuine near-diagonal high-high packet.

When that same obstruction is fed back upstream into Body I, the equivalent
repair target becomes the kernelized lifted-band leakage barrier on the same
lifted shell geometry, and the current integration audit still leaves the
residual lower-shell weight

```math
2^k.
\tag{13c}
```

So the modernization inherits a very sharp equivalence:

```math
\boxed{
\text{Body IV lifted remainder not closed}
\quad\Longleftrightarrow\quad
\text{Body I stronger lifted-band theorem not yet proved.}
}
\tag{13d}
```

This is exactly the old defect relay, now stated in the modern packet.

### 7B. What is genuinely new

The new theorem language does add one real insight.

The same open packet should now be read simultaneously in three ways:

1. **Body I face**
   unresolved no-escape theorem on a lifted shell / tower tail carrier;
2. **Body II face**
   unresolved flux/debt law for the transport-created derivative packet;
3. **Body IV face**
   unresolved deformation-coefficient / geometry-commutator packet in
   `\nu\,\mathrm{div}_a(G\nabla_a v)`.

So the modernization does not merely rename the old obstruction.
It says:

```math
\boxed{
\text{the lifted remainder, the tower flux/debt packet, and the geometry commutator packet should be three readouts of the same survivor family.}
}
\tag{13e}
```

That is the main new insight gained by carrying the old packet through the new
languages.

### 7C. Exact success criterion for the new geometry route

The deformation-geometry route counts as a real upgrade only if it does at
least one of the following:

1. proves a primary drain law on `(v,G)` whose Eulerian shadow directly absorbs
   the lifted remainder packet `(13b)`;
2. proves a stronger Body I no-escape theorem on the lifted shell carrier,
   which then passes through Body III and closes Body IV noncircularly;
3. proves that the geometric defect packet is shadow-invisible on the chosen
   classical surface.

If none of those happen, then the geometry route has only redescribed the
survivor.

So the correct modern test is:

```math
\boxed{
\text{does the geometry-evolving heat law kill the old lifted survivor,
or merely give it a better interpretation?}
}
\tag{13f}
```

## 8. Can the new geometric argument be the thing that handles it?

Yes. This is exactly why the schema needed modernization.

The new geometric argument is the only candidate currently on the table that
can do all of the following at once:

1. replace the old Ricci-only Body IV by a same-problem geometry law;
2. explain the YM cubic/self-geometry analogy honestly;
3. make the derivative tower a shadow rather than the primary battlefield;
4. connect torus spectral heat coercion to classical viscosity;
5. potentially convert the old unsigned transport-versus-dissipation tension
   into a transport-assisted or geometry-assisted drain law.

So the modernized verdict is:

```math
\boxed{
\text{yes: the deformation-geometry heat argument is the best current candidate for upgrading Body IV and sharpening Body II,}
\text{provided Bodies I and III stay same-surface faithful.}
}
\tag{14}
```

In other words:

```text
the obstruction survives, but now it is concentrated exactly where the new
geometric argument is strongest.
```

## 9. Net update

So the four-body packet should now be read as:

- **Body I**:
  torus/carrier-derived spectral tail barrier with classical tower readout;
- **Body II**:
  primary coercive drain law, ideally on deformation geometry;
- **Body III**:
  compactness / exact same-surface object production,
  with D.3 shadow/descent as the parallel NC analogue;
- **Body IV**:
  deformation-geometry continuation / regularity bridge whose shadow
  re-certifies Body I.

That is a drastic update, but it should be read as a modernization of the
classical packet, not as permission to replace the packet by the projected
D-route wholesale.

## Source anchors

- [NS working note - four body problem and braided ontology.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/NS%20working%20note%20-%20four%20body%20problem%20and%20braided%20ontology.md)
- [route-b-euclidean-closure-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/route-b-euclidean-closure-theorem.md)
- [working-notes/torus-derivation-lab-versus-continuum-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/torus-derivation-lab-versus-continuum-target.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [d4-shadow-continuation-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d4-shadow-continuation-theorem.md)
- [tower-rewrite-under-ym-heat-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tower-rewrite-under-ym-heat-shadow-bridge.md)
- [spatial-derivative-curvature-dissipation-theorem-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md)
- [ym-heat-to-torus-heat-to-classical-shadow-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md)
