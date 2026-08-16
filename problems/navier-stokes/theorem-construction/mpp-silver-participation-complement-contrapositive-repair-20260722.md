# Silver VPI participation-complement audit

Date: 2026-07-22

Status: exact logical classification retained; **not an independent proof of
global regularity**.

Fix one smooth divergence-free datum, one positive viscosity, and the maximal
no-reset classical Navier--Stokes history issuing from that datum. In the
installed vocabulary, full VPI participation includes transport, simultaneous
nonlocal pressure response, viscosity, incompressibility, material ancestry,
and coherent field realization. \`Member(Q)\` is the retained smooth
continuation-class predicate.

The Silver line is

\`\`\`math
\neg\operatorname{Smooth}(Q)
\Longrightarrow
\neg\operatorname{Member}(Q)
\Longrightarrow
\neg\operatorname{VPIParticipation}(Q),
\`\`\`

and its contrapositive is

\`\`\`math
\operatorname{VPIParticipation}(Q)
\Longrightarrow
\operatorname{Member}(Q)
\Longrightarrow
\operatorname{Smooth}(Q).
\`\`\`

Both lines are valid for those definitions. They say that a genuinely
nonsmooth terminal object is not a member of the smooth continuation class and
does not retain the full coherent-field participation package.

## What the terminal inventory proves

The endpoint names classify presentations of participation loss:

- \`Dead\` is direct loss of participation.
- \`Part\` failure is loss of the same transport, pressure, viscosity, and
  incompressibility participation.
- \`Field\` failure or \`Jump\` is loss of coherent field realization.
- \`Blown\` is a Part or Field/tower failure.
- Pack remains outside CM and may provide Field-window evidence.
- A limiting Euler, defect, Reynolds, or forced system may describe how the
  original Navier--Stokes participation was lost.

This inventory can exhaust the negative side without excluding it.

## The missing implication

The original history has full classical VPI participation on every compact
subinterval \([0,T]\) with \(T<T_*\). A finite-time breakdown candidate is
exactly a possible loss of the coherent-field or class-membership properties at
\(T_*\). Therefore the statement

\`\`\`math
\text{the preterminal history is the original VPI participant}
\`\`\`

does not prove

\`\`\`math
\operatorname{VPIParticipation}(Q_*)\quad\text{at the candidate terminal time}.
\`\`\`

To use the contrapositive as an MPP proof, one must independently prove that
terminal participation is retained, or prove that every classified loss is
impossible for the original smooth-data history. The installed Part/Field
inventory does neither: it names the possible loss.

Accordingly, Silver is preserved as a precise failure-classification grammar.
It cannot be counted as a second global-regularity proof and cannot discharge
the datum-to-whole-terminal estimate in the direct route.
