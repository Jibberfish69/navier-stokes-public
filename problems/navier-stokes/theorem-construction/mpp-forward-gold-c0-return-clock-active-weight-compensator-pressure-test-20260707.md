---
theorem_id: forward-gold-c0-return-clock-active-weight-compensator-pressure-test-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / return-clock admission / active-weight pressure test
status: checked-obstruction-and-strict-reduction-no-c0-closure
target_object:
  - ReturnClockParentAnnouncedRNDerivative.A
  - ReturnClockActiveNumeratorLowerGate.A
  - StoppedPredictableActiveWeightCompensator.A
  - PredictableRootWeightMartingaleRealization.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-return-clock-active-density-rn-split-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
completion_truth: >-
  Strict reduction and checked obstruction only. The stopped active-weight/root-weight
  compensator machinery does not prove ReturnClockParentAnnouncedRNDerivative.A.
  It controls the reciprocal square currency H_I||D||^2 and the paid upcrossing
  compensator for H_I, where H_I=|I|^2/int_I w^{-1}. The return-clock theorem asks
  for the inverse clock int_I w^{-1} itself to be parent-announced as a bounded
  Radon-Nikodym submeasure of R_P^+ d mathfrak m_P. That requires a lower
  active-numerator / same-parent route-measure gate, recorded here as
  ReturnClockActiveNumeratorLowerGate.A. No proof of uniform cascade termination,
  epsilon_* > 0, c_0 > 0, or MPP closure is claimed.
---

# Return-clock active-weight compensator pressure test

## 1. Direct attempt

The attempted shortcut is:

\[
\texttt{StoppedPredictableActiveWeightCompensator.A}
+\texttt{PredictableRootWeightMartingaleRealization.A}
\stackrel{?}{\Longrightarrow}
\texttt{ReturnClockParentAnnouncedRNDerivative.A}.
\tag{AWPT.1}
\]

This is tempting because both sides use the same inverse-weight interval clock.
For a retained interval \(I\), set

\[
A_I:=\int_I w(\sigma,t)^{-1}\,d\sigma,
\qquad
H_I(t):={|I|^2\over A_I}.
\tag{AWPT.2}
\]

The active-weight notes prove square/reset control in the \(H_I\)-geometry. The
return-clock RN theorem asks for \(A_I\) itself, after pushforward to the parent
fibre, to be dominated by the before-clipping active numerator
\(R_P^+d\mathfrak m_P\).

## 2. What the active-weight surfaces actually prove

The reset derivative representation and weighted Cauchy give

\[
H_I\|D_I\|^2
\lesssim
\int_I w(\sigma,t)\|G_I(\sigma,t)\|^2\,d\sigma
+R_I^{legal}.
\tag{AWPT.3}
\]

The stopped compensator then asks for original-history payment of

\[
\int dA_P^{wt}
+\sum_{e\subset P}
\int H_{e^-}(t)\|D_e^{vis}+D_e^{sil}+D_e^{ex}\|_{\mathcal H_{\rm lift}}^2\,dt .
\tag{AWPT.4}
\]

This controls high active-weight upcrossings and square reset currency. It is
the right theorem for the high-weight escape side:

\[
H_I\text{ large}
\quad\Longleftrightarrow\quad
\int_I w^{-1}\text{ small relative to }|I|^2.
\tag{AWPT.5}
\]

It is not a theorem about large inverse-clock mass \(A_I\).

## 3. Countercheck: reciprocal control does not imply clock domination

Take disjoint parent fibres \(F_\ell\), let the parent active numerator have
finite total mass, for instance

\[
\int_{F_\ell}R_P^+\,d\mathfrak m_P={2^{-\ell}\over \ell+1},
\tag{AWPT.6}
\]

and choose retained interval data

\[
|I_\ell|={1\over(\ell+1)^2},
\qquad
A_\ell=\int_{I_\ell}w^{-1}\,d\sigma={1\over\ell+1}.
\tag{AWPT.7}
\]

Then

\[
H_\ell={|I_\ell|^2\over A_\ell}={1\over(\ell+1)^3}.
\tag{AWPT.8}
\]

Even with a fixed normalized first-exit size \(\|D_\ell\|\simeq 1\),

\[
\sum_\ell H_\ell\|D_\ell\|^2<\infty,
\qquad
\sum_\ell A_\ell=\infty.
\tag{AWPT.9}
\]

The active-weight compensator sees no unpaid high-\(H\) upcrossing and the
square reset charge is summable. The pushed inverse clocks still fail any
uniform domination by the finite parent active numerator:

\[
\lambda_\ell(F_\ell)=A_\ell
\not\le
C_N\int_{F_\ell}R_P^+\,d\mathfrak m_P
\quad\text{uniformly in }\ell .
\tag{AWPT.10}
\]

So the active-weight theorem cannot imply
\(\lambda_I\le C_NR_P^+d\mathfrak m_P\). It controls the reciprocal square
coordinate, not the linear clock measure.

## 4. The smaller theorem that remains

The nonduplicate missing producer is:

\[
\boxed{\texttt{ReturnClockActiveNumeratorLowerGate.A}.}
\tag{AWPT.11}
\]

It states that for every retained return interval, after the parent clock map is
built and singular entry is paid/routed, the inverse-clock pushforward is
already carried by the before-clipping active numerator:

\[
\pi_{I\#}(w^{-1}d\sigma|_I)
\le
C_N R_P^+d\mathfrak m_P
+Paid_I+Legal_I+Stop_I+RouteOut_I .
\tag{AWPT.12}
\]

Equivalently, the parent active numerator may not vanish down a shrinking
low-\(H\), large-\(A_I\) tube before child clipping. In the older half-tail
language, this is the same-parent route-measure size line: \(MA(Q)<C\,Ep(Q)\) /
\(\texttt{WLF.60}\), not a raw Bessel or active-weight square estimate.

Thus the sharpened route is

\[
\begin{aligned}
&\texttt{ReturnClockParentKnownCoarea.A}\\
&+\texttt{ReturnClockNoSingularEntryOrPaidRouteOut.A}\\
&+\texttt{ReturnClockActiveNumeratorLowerGate.A}\\
&\Longrightarrow
\texttt{ReturnClockParentAnnouncedRNDerivative.A}.
\end{aligned}
\tag{AWPT.13}
\]

The active-weight compensator remains useful on the reset/high-\(H\) branch. It
does not pay the low-\(H\), large inverse-clock admission gate.

## 5. Proof truth

This note does not advance the route by proving \(\varepsilon_*>0\). It advances
it by ruling out a false shortcut and locating the exact remaining producer:
parent-known active numerator must dominate the inverse return clock before
clipping. That is the return-clock form of the same weighted linear service gap
that the \(H^s\leftrightarrow L^p\) continuum isolates as the \(\ell^2\to\ell^1\)
borderline.
