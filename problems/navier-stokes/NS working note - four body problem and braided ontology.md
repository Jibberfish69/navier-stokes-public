# NS working note - four body problem and braided ontology

Status: active working note

## Scope

This note is the live working surface for reconstructing the Navier--Stokes proof mechanism together with the braided ontology.

The task is not to restate four isolated bodies.
The task is to understand how the four-body regularity circuit and the ontic `NS / YMG / Hodge` braid are the same control problem read on different theorem surfaces.

For the folder-wide layer map showing theorem authority, theorem-primary route,
live frontier, modernization overlays, and cross-folder sidecars, use
[ns-layered-route-graph.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-layered-route-graph.md)
alongside this note.

## Big picture

The proof architecture is:

\[
\text{ontic control of spacetime/carrier}
\;\Longrightarrow\;
\text{braided theorem faces}
\;\Longrightarrow\;
\text{classical NS regularity circuit}.
\]

The classical four-body packet is:

\[
\mathcal P_{\mathrm{cl}}(T)=
\bigl(
S_{\mathrm{cl}}(T),
Q_{\mathrm{cl}}(T),
C_{\mathrm{cl}}(T),
G_{\mathrm{cl}}(T)
\bigr)
\]

with circuit

\[
S_{\mathrm{cl}}\to Q_{\mathrm{cl}},\qquad
(S_{\mathrm{cl}},Q_{\mathrm{cl}})\to C_{\mathrm{cl}},\qquad
C_{\mathrm{cl}}\to G_{\mathrm{cl}},\qquad
G_{\mathrm{cl}}\to S_{\mathrm{cl}}.
\]

The ontic side is being reconstructed body-by-body so the classical circuit, the V6 ontology, and the `YMG / Hodge` braid stay aligned on the same underlying object.

## Governing correction

Do not treat the ontology as commentary on top of a classical PDE proof.

The intended hierarchy is:

1. ontic spacetime/carrier control,
2. braided `NS / YMG / Hodge` theorem faces,
3. classical extraction/readout.

## Current settled points

### 1. What the four bodies are classically

The classical four-body labels are:

1. scale barrier,
2. monotonicity,
3. compactness,
4. regularized curvature.

These are four control burdens in one regularity circuit, not four unrelated tricks.

### 2. What we are doing right now

We are resolving the bodies one at a time, allowing questions until each body is clean, and only then reconstructing the full loop.

### 3. V6 / 11.7 correction on light

In `V6`, especially `Appendix 11.7`, light is not a second carrier and not an external probe standing over against the carrier.

The corrected reading is:

\[
\text{carrier}=\text{persistent projected sector}
\]

\[
\text{light}=\text{that same carrier under a light-coupled sector/readout}
\]

\[
\text{photon}=\text{a symmetry-protected lossless massless mode on that channel}.
\]

So when the note stack talks about light, the live ontic reading is:

\[
\text{the carrier itself, under a specific light-sector defect/transport channel.}
\]

### 4. Four-body corpus located

The direct legacy four-body corpus is present and recoverable.

Core section files:

1. `Section 2- Scale-Barrier Principle`
2. `Section 3- Monotone Functional`
3. `Section 4- Non-Sobolev Compactness`
4. `Section 5- Curvature-Based Regularity`
5. `Section 6- Interdependencies Among Principles`

Companion support files also present:

- `Energy Boundedness via Q(t) for Global Regularity`
- `Strong Convergence in L2 Using Compactness`
- `Gradient Control Through Geometric Arguments`
- `A Rigorous Theoretical Framework for Global Regularity of the Navier-Stokes Equations`
- mature proof-family PDFs and recovered copies in the forensic corpus

Legacy search roots checked directly:

- `Millennium Prize Problems/Navier-Stokes/NS-FORENSIC-CORPUS/Consolidated-NS-TEX-PDF-Corpus`
- `Millennium Prize Problems/Navier-Stokes/NS-FORENSIC-CORPUS/PDFs/Recovered/RecoveredFolderMarker/...`
- `Millennium Prize Problems/Navier-Stokes/NS-FORENSIC-CORPUS/TeX/Recovered/RecoveredFolderMarker/...`
- `Millennium Prize Problems/Navier-Stokes/NS-FORENSIC-CORPUS/problems-navier-stokes/source-forensics`

Older umbrella manuscripts and support texts also confirmed in the old stack:

- `A Framework Toward the Millennium Prize Problem on the Navier-Stokes Equations`
- `A Unified Framework for the Global Regularity of 3D Navier-Stokes Equations...`
- `Global Regularity Framework for Arbitrary Initial Data in L2`
- `Unifying Stability in PDEs- A Single Invariance Perspective`
- `Conclusion- Smooth Solutions for All Time`

### 5. Current proof-status read of the four bodies

The source-family sections exist, but they do not all stand at the same proof level.

- `Body I / Scale barrier`:
  original source is conditional at the section level. `Section 2` assumes the transfer bound `T(k,t) \le C k^{-\alpha}` and then derives spectral decay from that assumption. The lane-local theorem-construction package now contains a much sharper dyadic same-surface replacement package, and in the newer language this body is best read as the **no-escape / tail-barrier law for derivative geometry across scales and derivative depth**. The dyadic high-frequency barrier and the tower high-rung barrier are the two visible coordinate systems for the same body.
- `Body II / Monotone functional`:
  source-grounded and basically straightforward as a named `Q(t)` bridge, but necessary and not sufficient. `Section 3` itself says boundedness of `Q(t)` is obtained under the scale-barrier input. In the updated language this is the **coercive drain-law body**: the place where one seeks a functional under which the full dynamics behave like a one-sided gradient-type drain on the dangerous derivative/deformation roughness.
- `Body III / Compactness`:
  downstream and largely solvable once the scale-tail input is fixed on one approximation family. `Section 4` is structurally downstream because its compactness space `H` is defined using the high-frequency control inherited from the scale side. In the updated language this remains the **exact same-surface object-production body**: the body that produces the actual classical field carrying the derivative/deformation geometry to which Body IV must apply.
- `Body IV / Curvature-based regularity`:
  source-faithful mathematics exists, but on a geometric carrier with positive Ricci hypothesis; the main remaining issue is same-surface status on the declared classical theorem branch. `Section 5` and `Gradient Control Through Geometric Arguments` are genuinely curvature-first, not originally classical continuation theorems. In the updated language, the strongest candidate upgrade is no longer positive Ricci itself but the **deformation-geometry / geometry-evolving heat bridge**.

### 6. Present internal contradiction

The repo still contains a live contradiction about the fourth bridge.

- Some surfaces treat the primary fourth bridge as the original curvature-based route.
- Other surfaces treat a Euclidean gradient-control replacement as already discharged.
- The warrant map currently points to `external-paper/sections/bridge-gradient-control.tex`, but that file is absent in the current checkout.
- The strongest direct legacy companion file actually present, `Gradient Control Through Geometric Arguments`, is still geometric rather than purely Euclidean.

So the four-body proof cannot be called internally clean until one of these is chosen and the other is explicitly subordinated.

### 7. Current solvability verdict

The current internally constrained route candidate is:

1. keep the classical four-body architecture;
2. use the lane-local dyadic same-surface package for `Body I`;
3. keep `Q(t)` as the exact named but insufficient bridge for `Body II`, while upgrading that body conceptually toward the real coercive drain law;
4. treat compactness as downstream of `Body I + Body II`, with compactness remaining the exact-object-production body;
5. resolve `Body IV` by choosing either:
   - the source-faithful curvature route plus an explicit pullback theorem on the chosen classical branch, or
   - a declared deformation-geometry upgrade route that is honestly labeled as replacing the original fourth bridge;
6. then prove the loop-closing warrant explicitly rather than relying on the old diagram alone.

This is not a proof status.  It is a candidate route because the listed bodies
are the only checked surfaces in this note that keep the four-body architecture,
the dyadic same-surface package, the `Q(t)` bridge, compactness, and the return
arrow in one exact closure problem.  Downstream proof force requires the exact
integrated closure theorem named below.

That loop-closing warrant should now be read as a **literal propagated packet**
again, not just as four relabeled burdens:

\[
\bigl(\mathcal P_{\mathrm{mod}}(T),\mathcal E_{\mathrm{live}}^{(n)}\bigr)
\Longrightarrow
\bigl(\mathcal P_{\mathrm{mod}}(T^+),\mathcal E_{\mathrm{live}}^{(n+1)}\bigr).
\]

The exact current source-faithful survivor inherited by that packet is still:

\[
\text{Body IV lifted high-side remainder on } N+M<k<j-4.
\]

Fed back upstream, that same survivor becomes:

\[
\text{Body I stronger lifted-band / no-escape theorem still not yet proved.}
\]

So the modernization has not deleted the old relay.
It has sharpened it and re-read it through three synchronized faces:

1. Body I: tail leakage / no-escape failure,
2. Body II: flux/debt packet in the tower,
3. Body IV: deformation-coefficient / geometry-commutator packet.

The real gain is therefore not “new words.”
It is the sharper test:

\[
\text{does the geometry-evolving heat law actually kill that survivor, or only redescribe it?}
\]

## Active work front

Current body under reconstruction:

\[
\textbf{Scale barrier / coherence barrier}
\]

Current live question:

How the scale barrier, understood ontically as a coherence/resolution law on the carrier, feeds into the rest of the four-body circuit and into the braided `YMG / Hodge` theorem faces.

## Method rule for this note

- Work body by body.
- Let questions stabilize each body before moving on.
- Do not reconstruct the whole loop until the bodies are individually clean.
- Keep the braid and the classical circuit aligned on the same burden.

## Current formalization frontier

After explicit promotion of Route B and deprecation of the old curvature pullback route, the live classical theorem surface for the current branch is now:

\[
u^{(n)} \to u,\qquad
u^{(n)} \otimes u^{(n)} \to u \otimes u,\qquad
E_N,\ D_N,\ \mathcal L_N,\ P_{\ge N}.
\]

The exact remaining theorem burden is no longer "choose the fourth bridge."
It is:

\[
\textbf{prove the final integrated same-surface closed-loop warrant}
\]

on one fixed classical surface.

In the modernized packet language, that means:

\[
\textbf{prove that the live survivor contracts, is absorbed, or is shadow-invisible when passed through } 3 \to 4 \to 1.
\]

The concrete mathematical agenda is:

1. pin the exact same-surface closure statement `C3`;
2. prove the `3 -> 4 -> 1` chain in one theorem packet rather than only as separate local lemmas;
3. prove that the Body IV lifted remainder and the Body I stronger lifted-band theorem are genuinely the same survivor on two faces of the packet;
4. test whether the deformation-geometry / geometry-evolving heat law yields a drain strong enough to absorb that survivor or force a stronger Body I no-escape theorem;
5. certify that the scale-barrier output used in compactness and the modernized fourth bridge is exactly the one already proved;
6. certify that no hidden modified-equation or stronger hidden hypothesis is doing theorem-bearing work;
7. then promote Theorem `2.1` from conditional to discharged.

So the current proof-writing start point selected by this agenda is:

- not Body I alone,
- not Body IV alone,
- but the exact integrated closure theorem that combines:
  - scale barrier,
  - `Q(t)` bridge,
  - nonlinear compactness,
  - Euclidean gradient-transfer,
  - and the return arrow `4 -> 1`.
