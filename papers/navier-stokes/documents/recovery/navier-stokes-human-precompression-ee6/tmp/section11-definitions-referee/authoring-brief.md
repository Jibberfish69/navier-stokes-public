Referee-audit and rewrite only the Definitions block in Section 1.1, from the `\divider{Definitions}` line through the end of the file.

Preserve the exact definition order: Smoothness, Continuation, Regularity.
Preserve all three formal definition environments and their labels.
Keep the discussion at the level already earned by the Clay statement.
Do not introduce named failure types, later proof machinery, historical results, or Section 3 compatibility language.

The repaired block must do four things as the reader moves through it:

1. Define smoothness directly as all finite mixed spatial and temporal derivatives existing and remaining continuous through a finite endpoint, and state the equivalent `C^\infty` condition.
2. Define continuation as an extension that solves the same equations, retains the stated class, and agrees with the earlier solution on its original interval; specialize the class to `C^\infty` for the Clay problem.
3. Define regularity as a scale: `C^0` is continuity, `C^k` adds continuous derivatives through order `k`, and `C^\infty` is smoothness.
4. Explain finite loss of regularity without claiming that unboundedness is the only failure: a required derivative may become unbounded near the endpoint or remain bounded while failing to approach a continuous limit.

The prose must make the relationship among the terms explicit before the block closes.
The final lines must hand naturally into Section 1.2, which begins from local smooth existence and the need to continue it through every finite time.
Use Canadian English, one sentence per source line, normal mathematical prose, and no retrospective summary that supplies the first meaning of the definitions.

Preserve the live mathematical referents: velocity, pressure, viscosity, and the Navier--Stokes equations.
