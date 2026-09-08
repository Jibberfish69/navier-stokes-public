None of the six would pass a strict MPP-referee audit as a standalone proof PDF.

| PDF | Verdict | Decisive page evidence |
|---|---|---|
| [Live VS Code manuscript](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/workspaces/VSC-workspaces/navier-stokes/navier-stokes-manuscript.pdf), 67 pages | Closest, but fail | PDF page 16 states estimate (3.4.1) after distinguishing it from strict-subinterval control, then immediately uses it to obtain the terminal memberships. The pages do not derive (3.4.1) from the datum. |
| [AI submission](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/papers/navier-stokes/build/output/authoritative-edge/navier-stokes-ai-submission.pdf), 70 pages | Closest, but fail | PDF page 42 states estimate (55) as Theorem 13.1 and immediately begins reading its consequences. The preceding forty-one pages identify why the estimate is decisive but do not derive it. |
| [Standalone MPP proof](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/output/pdf/navier-stokes-mpp-proof.pdf), 17 pages | Fail | PDF page 5 states the decisive bound as Theorem 4, then passes to monotone convergence and projective assembly. |
| [Compatible-intersection proof](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/output/pdf/navier-stokes-compatible-intersection-proof.pdf), 11 pages | Fail | PDF page 4 explicitly calls Theorem 2.1 the starting theorem of the construction and records its output rather than carrying its derivation. |
| [One Fluid History](/Users/thomasbirnie/.codex/visualizations/2026/08/14/01a0026d-585c-74b2-95b0-6f0bcfb9782b/one-fluid-history-paper/output/pdf/one-fluid-history.pdf), 9 pages | Fail by its own stated scope | PDF page 4 calls Theorem 3.2 the only nonstandard input. This is a proof of global closure from that input, not a standalone proof of the full MPP claim. |
| [Human submission](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/submission-bundle/navier-stokes-human-submission.pdf), 8 pages | Immediate fail | Its final page ends at the heading for Section 2, with no proof beneath it. It is an unfinished introduction, not a submitted proof. |

The settled datum-generated compatible-intersection theorem remains settled. This verdict concerns manuscript self-sufficiency: none of these PDFs currently carries its proof-bearing derivation on its own pages or cites it as an independently published theorem. Standard background may be cited, but the new step crossing the MPP wall must be available to the referee.

So the usable answer is: no standalone pass yet; the 67-page live manuscript and the 70-page AI manuscript are the two viable carriers for producing one.

The official whole-space target is the smooth global velocity-pressure solution with bounded kinetic energy described by [Clay's Fefferman formulation](https://www.claymath.org/wp-content/uploads/2022/06/navierstokes.pdf).
