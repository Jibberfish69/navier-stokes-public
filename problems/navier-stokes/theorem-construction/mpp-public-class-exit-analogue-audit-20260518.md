# Public Class-Exit Analogue Audit

Date: 2026-05-18

## Status

Support/import note. This is not a proof-bearing authority surface and it does
not promote any public critical-norm theorem into a CM witness-face bridge.

## Audit verdict

Exact public label: zero public matches for the repo-native MCP/CM phrase.

Mathematical analogue: yes. Public Navier-Stokes regularity theory repeatedly
has the form:

```math
\text{finite-time singularity}
\Longrightarrow
\text{exit from a specified critical regularity class}.
```

The public class is usually a critical norm or compactness class. The repo's
class is sharper: `CM_{N,r,Q}=Pack_Q + Part_{N,Q} + Field_{N,r,Q}`, with
`Member(Q;O_NS^work)` as the class-membership landing predicate.

## Checked analogue stack

| Public program | Public theorem shape | Repo use |
| --- | --- | --- |
| Escauriaza-Seregin-Sverak / Tao | bounded critical `L^3` control excludes singularity; Tao makes the blow-up-rate consequence quantitative | good analogue for "bounded class membership rules out blowup"; not a CM bridge |
| Kenig-Koch | assume critical-space boundedness, extract a compact critical element, then prove rigidity | closest proof choreography for a CM terminal-carrier argument |
| Gallagher-Koch-Planchon | finite singularity forces blow-up of critical Besov norms where strong local theory is known | clean class-exit model; useful as a benchmark for unavoidable-class wording |
| Seregin | potential blowup forces divergence of a critical `H^{1/2}` norm | another necessary-condition class-exit template |
| Barker-Prange / Barker-Fernandez-Dalgo-Prange | potential singularity must show localized/dynamically restricted critical concentration; pressure nonlocality matters | useful for terminal-carrier visibility and Field/readout pressure discipline |
| Feng-He-Wang | Tao-style quantitative regularity/blow-up criterion in critical Lorentz spaces | confirms the active modern status of quantitative critical-class exit |

## Adoption boundary

The useful import is the proof-pattern test:

```math
\text{class-exit proof succeeds only when the class is unavoidable.}
```

For this lane, that becomes:

```math
\text{finite first singularity on }Q
\Longrightarrow
\text{first failure of }Pack_Q\text{ or }Part_{N,Q}\text{ or }Field_{N,r,Q}.
```

The public literature does not supply that implication. The only repo-usable
criterion extracted from the analogues is the following exact bridge shape:

1. a named public class `X`;
2. a terminal sequence or window family `\mathcal W` and a precise readout
   `CritExit_X(\mathcal W)`;
3. a proved repo-local implication from that readout to a first CM witness-face
   failure:
   `\neg Pack_Q(\mathcal W)`, `\neg Part_{N,Q}(\mathcal W)`, or
   `\neg Field_{N,r,Q}(\mathcal W)`.

Without item 3, the public result is supplier/readout support only.

## Adapted repo burden

Use the analogue as a local design criterion for CM-facing theorem candidates.
The unproved required bridge is written in
[mpp-public-critical-exit-to-cm-face-bridge-required-20260519.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-public-critical-exit-to-cm-face-bridge-required-20260519.md).

```math
CMClassUnavoidability.A:
\quad
T_*<\infty
\Longrightarrow
\exists Q,N,r
\text{ with a first }Pack/Part/Field\text{ witness-face failure}.
```

Current status: route proposal / audit burden only.

Promotion requirement: a candidate only enters the CM route when it gives a
typed landing in `Pack_Q`, `Part_{N,Q}`, or `Field_{N,r,Q}`. Critical
`L^3`, Besov, Lorentz, `H^{1/2}`, Type-I, local concentration, or dynamically
restricted norm exit remains supplier/readout support until a repo-local bridge
proves that the public class exit forces a CM witness-face exit.

## Practical use

When a new public or internal theorem is offered as progress, test it this way:

1. What exact class is claimed to persist or exit?
2. What terminal carrier is extracted when membership persists?
3. What rigidity or continuation theorem kills that carrier?
4. Which CM face receives the failure: `Pack`, `Part`, or `Field`?
5. If the answer is only a critical norm, pressure concentration, or local
   quantitative regularity statement, keep it as supplier/readout support.

## Sources checked

- Terence Tao, "Quantitative bounds for critically bounded solutions to the Navier-Stokes equations", arXiv:1908.04958.
- Carlos E. Kenig and Gabriel S. Koch, "An alternative approach to regularity for the Navier-Stokes equations in critical spaces", Ann. IHP C 28 (2011), 159-187.
- Isabelle Gallagher, Gabriel S. Koch, Fabrice Planchon, "Blow-up of critical Besov norms at a potential Navier-Stokes singularity", arXiv:1407.4156 / CMP 343 (2016), 39-82.
- Gregory Seregin, "Necessary conditions of potential blow up for Navier-Stokes equations", arXiv:1101.1869.
- Tobias Barker and Christophe Prange, "Quantitative Regularity for the Navier-Stokes Equations Via Spatial Concentration", CMP 385 (2021), 717-792.
- Tobias Barker, Pedro Gabriel Fernandez-Dalgo, Christophe Prange, "Blow-up of dynamically restricted critical norms near a potential Navier-Stokes singularity", arXiv:2302.06509.
- Wen Feng, Jiao He, Weinan Wang, "Quantitative bounds for critically bounded solutions to the three-dimensional Navier-Stokes equations in Lorentz spaces", DCDS-B 37 (2026), 175-205.
