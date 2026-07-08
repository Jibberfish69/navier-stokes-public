---
theorem_id: frontier-dissolution-loop-stall-terminal-window-noescape-not-w8-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
status: terminal-window-gate-no-deletion
target_claim: W8 / theta-payer admission supplies W9 terminal-window no-escape
open_walls:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-temporal-thin-theta-payer-lsc-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
---

# Gate on terminal-window no-escape as W8/theta-payer content

Cross-wall failure sentence: W8 is not the W9 terminal-window/no-escape clause,
because W8 is payer admission/payment on the selected same-packet carrier,
while terminal-window no-escape is the compact material-time domain and
shift-room condition needed before payer lower-semicontinuity and shift-hull
invariance can be applied.

Physical sentence: a positive bill carried by the same packet cannot be used to
contradict zero surplus if the material-time window itself escapes, shrinks out
of the compact domain, or loses the interior room needed to shift the certified
path.

## Source check

The temporal-thin theta-payer note proves an atom/lower-semicontinuity lemma
only after the service is admitted as a same-packet nonnegative payer measure
on a compact material-time certificate window. Its branch split is explicit:

\[
\begin{array}{ll}
\text{admitted nonnegative theta payer on compact time window}
  &\Rightarrow \text{thin positive service contradicts zero surplus},\\
\text{no compact terminal window}
  &\Rightarrow \text{terminal-window escape or typed route-out},\\
\text{positive service not admitted before readout}
  &\Rightarrow \text{theta-payer / parent-owned bill wall}.
\end{array}
\]

Thus no compact terminal window is not solved by theta-payer admission. It is a
separate `TerminalWindowNoEscapeCompactness.A` or typed route-out failure.

The zero-surplus closed-graph source also treats terminal-window no-escape as a
separate hypothesis:

\[
\texttt{ZeroSurplusPayerMeasureLift.A}
+
\texttt{ZeroSurplusPayerLowerSemicontinuity.A}
+
\texttt{TerminalWindowNoEscapeCompactness.A}
\Longrightarrow
\texttt{ZeroSurplusCertificateClosedGraph.A}.
\]

It explains why: mass can escape through a noncompact or shrinking terminal
window, so terminal-window no-escape must keep the payer domain compact or the
branch lands in stop, legal, selector, Pack, Part, or Field failure.

The W9 shift-hull source uses the same condition for material-time shifts: if
a shifted approximant leaves the certified interior window, the branch has lost
terminal window/custody room and must pay stop, legal, selector, Pack, Part, or
Field defect before it can be used as a retained invariant profile.

## Gate result

W8 can provide a payer coordinate only on an already compact certified
material-time window. It does not prove that the terminal window is compact,
that shifted paths have interior room for the tested fixed shifts, or that
mass/defect coordinates cannot escape the compact domain.

The terminal-window row remains:

\[
\texttt{TerminalWindowNoEscapeCompactness.A}
\]

or a typed stop/legal/selector/Pack/Part/Field route-out when compact
material-time window room fails.

DELETED: none.
CERTIFICATE: W8/theta-payer admission does not supply terminal-window no-escape. The checked temporal-thin, zero-surplus, and shift-hull sources use compact terminal material-time window/no-escape as a separate input before payer lsc or shift invariance can run; if the compact window or shifted interior room fails, the branch routes to terminal-window escape or typed stop/legal/selector/Pack/Part/Field failure, not to W8 payment.
REMAINING: W3, W7, W8, W9.
