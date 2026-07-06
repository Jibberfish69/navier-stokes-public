---
theorem_id: forward-gold-overlap-bath-terminal-frequency-escape-fork-20260706
status: strict-reduction-terminal-wkb-frequency-escape-to-field-readout-or-high-factor-source-branch
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - TerminalWKBFrequencyEscape.Fork
  - NonvanishingMoment.FieldReadout
  - VanishingOrIntermittentMoment.HighFactorSourceAlias
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-high-re-log-reservoir-persistence-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-atom-forces-frequency-escape-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-fourier-band-source-endpoint-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627.md
completion_truth: >-
  Strict reduction only. The high-Re log-room note shows that repeated
  fixed-population WKB active service telescopes to terminal material
  carrier-frequency travel unless reset by refresh/reassembly or bank motion.
  This note identifies the terminal-frequency horn. A Beltrami WKB packet at
  carrier frequency lambda with pressure-Hessian moment size K has velocity
  amplitude squared a^2 comparable to K/lambda^2. Thus its kinetic energy can
  vanish as lambda -> infinity, but every H^m readout with m>1 scales like
  K lambda^(2m-2), up to the occupied fraction. Therefore any terminal
  frequency-escape branch retaining a nonvanishing active pressure moment on a
  nonvanishing occupied fraction is a high-Sobolev Field/readout witness, not a
  hidden smooth supplier. If the retained moment or occupied fraction vanishes
  enough to avoid that readout, then the branch is not a fixed retained WKB
  pressure bath; it is an intermittent/high-factor source-flux object. The
  bounded Fourier-band endpoint UI and terminal source atom notes already place
  such surviving terminal source mass in the high-frequency factor
  N_hi^(K), and the fresh paired-carrier note names the remaining theorem as
  no-free-upcascade positive flux variation. This proves no high-factor source
  estimate, no Field admission theorem, no WKB construction/exclusion, and no
  MPP closure.
---

# Terminal WKB frequency escape fork

## 1. Object

The high-Re log-room reduction says that a fixed material WKB population can
reuse endpoint room only by terminal carrier-frequency travel:
\[
  \lambda(t)\to\infty
  \tag{TWF.1}
\]
on the material carriers that keep supplying active service. This note asks
what that terminal-frequency horn is.

It is not a new reservoir. It is a fork:
\[
  \hbox{nonvanishing retained moment}
  \quad\hbox{or}\quad
  \hbox{vanishing/intermittent high-frequency source}.
  \tag{TWF.2}
\]

## 2. WKB scaling readout

For a Beltrami WKB packet with carrier frequency \(\lambda\), velocity amplitude
\(a\), and occupied fraction \(\phi\) in a \(D\)-bank, the pressure-Hessian
moment scales as
\[
  |K|\sim a^2\lambda^2.
  \tag{TWF.3}
\]

Thus
\[
  a^2\sim {|K|\over\lambda^2}.
  \tag{TWF.4}
\]

The kinetic energy in the bank scales as
\[
  E_{\rm WKB}\sim \phi D^3 a^2
  \sim
  \phi D^3 {|K|\over\lambda^2}.
  \tag{TWF.5}
\]

So terminal frequency escape can hide from energy. This is why finite energy
does not kill the branch.

But the higher Sobolev readouts scale differently. For \(m>1\),
\[
  \| \nabla^m u_{\rm WKB}\|_2^2
  \sim
  \phi D^3 a^2\lambda^{2m}
  \sim
  \phi D^3 |K|\lambda^{2m-2}.
  \tag{TWF.6}
\]

Therefore, if along the terminal branch
\[
  \phi |K|\not\to0,
  \tag{TWF.7}
\]
then every \(m>1\) readout diverges as \(\lambda\to\infty\).

This is the first horn:
\[
  \hbox{retained nonvanishing WKB moment}
  \Rightarrow
  \hbox{high-Sobolev terminal readout}.
  \tag{TWF.8}
\]

In CM language this is not a smooth supplier. It is Field/readout material once
the terminal object is admitted to the CM test. This note does not prove that
admission.

## 3. The vanishing horn is not a fixed retained bath

The only way terminal frequency escape avoids (TWF.8) is
\[
  \phi |K|\to0
  \tag{TWF.9}
\]
or enough intermittency that no terminal nonvanishing moment remains on the
retained row.

Then the object has stopped being a fixed retained WKB pressure bath. The
active service, if it still contributes to the record, must come from terminal
source flux, repeated fresh crossing, reset, or intermittent high-frequency
arrival.

That is exactly the older frequency-escape branch.

## 4. Alias to the installed high-factor source branch

The bounded Fourier-band endpoint UI theorem says a terminal selected source
atom with bounded energy cannot live in a fixed Fourier band. The quantitative
contrapositive gives
\[
  K\gtrsim \theta^{-2/5}
  \tag{TWF.10}
\]
for order-one terminal source mass on a strip of length \(\theta\), in the
finite-band estimate.

For a general field, the low-low source is removed at every fixed cutoff:
\[
  N
  =
  N_{\le K,\le K}
  +
  N_{\rm hi}^{(K)},
  \tag{TWF.11}
\]
and every term of \(N_{\rm hi}^{(K)}\) contains at least one high-frequency
factor.

Thus a terminal WKB frequency branch whose retained moment vanishes enough to
avoid direct Field readout is not a separate WKB supplier. It lands in the same
high-factor source branch:
\[
  N_{\rm hi}^{(K)}
  \quad\hbox{and}\quad
  \hbox{fresh positive upcascade flux}.
  \tag{TWF.12}
\]

The fresh paired-carrier note names that remaining theorem as no-free-upcascade
positive flux variation. This note does not prove that theorem; it only
prevents terminal WKB frequency escape from being counted as a new branch in
addition to it.

## 5. Consequence for the overlap bath

The terminal-frequency horn of the WKB high-Re reservoir is now typed:
\[
  \hbox{terminal WKB frequency escape}
  \Rightarrow
  \begin{cases}
  \phi|K|\not\to0:
    \hbox{high-Sobolev Field/readout witness},\\
  \phi|K|\to0\hbox{ or intermittent}:
    \hbox{high-factor source / no-free-upcascade branch}.
  \end{cases}
  \tag{TWF.13}
\]

So the remaining live work is not a fourth reservoir. It is one of the already
named proof surfaces:

1. admit the nonvanishing terminal WKB moment to the CM test and land the
   Field/readout face;
2. prove the high-factor source / no-free-upcascade estimate;
3. price the reset through refresh/reassembly or bank-custody;
4. build or exclude the full dynamic WKB construction.

## 6. Four-sentence result

A terminal WKB carrier can keep pressure-Hessian moment \(K\) at frequency
\(\lambda\) with energy of size \(K/\lambda^2\), so finite energy alone does
not kill it. But for \(m>1\), its \(H^m\) readout scales like
\(\phi K\lambda^{2m-2}\), so a nonvanishing retained moment is terminal
Field/readout material, not a hidden smooth supplier. If the moment or occupied
fraction vanishes enough to avoid that readout, the branch is no longer a fixed
retained WKB bath; it is an intermittent high-frequency source-flux object. The
installed finite-band endpoint UI and frequency-escape notes route that object
to the high-factor source / no-free-upcascade branch.
