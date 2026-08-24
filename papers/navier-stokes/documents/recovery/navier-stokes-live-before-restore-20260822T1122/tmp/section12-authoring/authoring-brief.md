Rewrite the complete body of Section 1.2, Historical Background, in Thomas's voice.

The reader has just finished Section 1.1.
They know the Clay requirement, smoothness, continuation, regularity, and the basic ways a finite-time continuation can fail.
They are mathematically informed and do not need a recital of familiar theorem statements.
They need to understand why these particular historical results matter here, how one result changed the problem inherited by the next, and where the publicly established regularity problem sits today.

Restore the subsection's visible internal architecture with these exact dividers and this exact order:

1. `\divider{Leray's Energy Estimate}`
2. `\divider{The Enstrophy Problem}`
3. `\divider{Higher Sobolev Continuation}`
4. `\divider{Caffarelli\textendash Kohn\textendash Nirenberg Partial Regularity}`
5. `\divider{Ladyzhenskaya\textendash Prodi\textendash Serrin Criteria}`
6. `\divider{The Escauriaza\textendash Seregin\textendash \v{S}ver{\'a}k Endpoint}`
7. `\divider{Where the Problem Sits Today}`

Begin from the practical need created by local smooth existence: enough equation-generated control to keep restarting the solution through every finite time.
Do not open with a list of results or an editorial promise about the section.

Let each result enter because the prior discussion has made its job necessary.
The reader should understand each mechanism before receiving its final consequence:

- Leray: transport and pressure cancel in total kinetic energy, viscosity dissipates, the inequality survives the weak limit, and global weak existence separates time-global existence from global smoothness and uniqueness.
- Enstrophy: the energy inequality pays for accumulated vorticity but not its height at each time; the three-dimensional stretching term can replenish what viscosity dissipates; the two-dimensional contrast makes the obstruction visible.
- Higher Sobolev continuation: a uniform \(H^s\) bound with \(s>5/2\), or integrable \(\|\nabla u\|_\infty\), restarts the local solution; this identifies the control that must be preserved without supplying it globally.
- CKN: localize the energy inequality to parabolic cylinders; epsilon regularity forces each possible singular point to retain scale-invariant concentration at every small scale; the zero one-dimensional parabolic Hausdorff measure result still permits one point.
- LPS: explain how the nonlinear estimate produces the exponent \(2q/(q-3)\), why \(2/p+3/q\leq1\) makes that coefficient time-integrable, and how the criterion balances spatial intensity against temporal duration.
- ESS: the direct Serrin estimate degenerates at \(q=3\), yet \(L^3\) is scale invariant; explain the rescaling, compactness, and backward-uniqueness idea before stating the endpoint consequence.

Keep Seregin's full \(L^3\) divergence and Tao's quantitative triple-log refinement as a short continuation of the endpoint story, not as two new survey entries.

End with two or three developed paragraphs on the current public frontier.
Explain the scaling mismatch between global \(L^2\) energy and critical \(L^3\) concentration.
Then give the frequency-doubling or shrinking-scale picture: halving the spatial scale quarters the natural parabolic time, so a geometric sequence of model times can accumulate in finite time.
Mark this as a heuristic from its first sentence.
Use it to state the positive regularity burden: an estimate from the data and equations that remains effective across changing scales and prevents loss of continuation at any finite time.

Do not write a counterexample programme.
Do not introduce Gold, the response tower, compatible intersections, critical-height formalism, or the later proof synthesis.
Do not use one-history bookkeeping language.
Do not touch Section 1.3.

Use Canadian English, one sentence per source line, ordinary causal verbs, a few earned short sentences, and complete mathematical explanations around every display.
Avoid equal theorem capsules, survey cadence, institutional language, abstract verdicts, after-the-fact relevance, ornamental symmetry, stock transitions, and a closing recap that first tells the reader why the section mattered.
