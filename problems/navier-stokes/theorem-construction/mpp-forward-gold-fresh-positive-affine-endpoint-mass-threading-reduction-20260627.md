# Fresh positive affine endpoint-mass threading reduction

Status: conditional reduction, not a closure.

## Governing parent

The governing Gold hinge remains:

\[
\texttt{TerminalFullPacketNoResiduePayment.A}.
\]

The fresh-potential branch is only a concrete producer under the unweighted same-carrier visible-readout branch. It does not replace the full-packet no-residue theorem.

## Checked branch

The current concrete branch is:

\[
\texttt{FreshPotentialAverageKillAndPositiveTransfer.A}
\]

or equivalently

\[
\texttt{FreshPositiveStressSecondOrderExactness.A}.
\]

The installed signed scale descent gives only first-order exactness before positivity:

\[
Y^{fresh}
=
\partial_\sigma\Psi^{fresh}
+
S^{spill}
+
E .
\]

After the positive-source extraction, the surviving obstruction is the scale-average potential

\[
\mathcal P_{avg}^{fresh}
=
|J|^{-1}\int_J\Psi^{fresh}\,d\sigma .
\]

The needed fresh AQK estimate is:

\[
\int H_w\|c_F^{fresh}\|_2^2
\le
{\eta\nu\over C}\int D_N
+
C_*2^{-2\delta N}
+
R_{\rm legal}.
\]

At the affine quotient level,

\[
c_F^{fresh}
=
A_\kappa M_0^{fresh}
+
B_\kappa M_1^{fresh}.
\]

The positive-carrier order gives the same reduction as the retained branch:

\[
0\le c_F^{fresh}
\le
{|J|\over |I|}\,M_0^{fresh}.
\]

Therefore the branch reduces to the weighted endpoint theorem

\[
\int H_w\|M_0^{fresh}\|_2^2
\le
{\eta\nu\over C}\int D_N
+
C_*2^{-2\delta N}
+
R_{\rm legal}.
\]

## Moment equation

The positive affine moments satisfy the exact fresh analogue of the retained moment law:

\[
\partial_tM_q^{fresh}
-
\nu\Delta M_q^{fresh}
+
2\nu\mathfrak D_q^{fresh}
=
\mathfrak N_q^{fresh}
+
\nabla\cdot\mathfrak Q_q^{fresh},
\qquad q=0,1.
\]

This identity is exact but not closed by itself: the defect, nonlinear, and flux terms are not functions of
\((M_0^{fresh},M_1^{fresh})\) alone.

## Correct lower target

The current fresh-potential branch is therefore equivalent to one of the following producer forms:

1. Fresh positive affine endpoint mass:

\[
\texttt{FreshPositiveAffineEndpointMassKill.A}.
\]

2. Fresh \(\mu_N\)-Carleson endpoint threading:

\[
\mu_N^{fresh}(I)
\le
\varepsilon\nu\int_I D_N
+
C_\varepsilon 2^{-2\delta N}
+
R_{\rm legal}(I).
\]

3. A closed coercive evolution for
\[
(M_0^{fresh},M_1^{fresh})
\]
on the same full packet.

4. A compactness/rigidity theorem for the affine survivor on the same full packet:

\[
\text{persistent weighted affine survivor}
\Longrightarrow
\text{nonzero full-packet no-residue violation}.
\]

## Consequence

Direct positive second-order exactness is not installed. Treating it as closed would relabel the endpoint-mass theorem rather than prove it.

The live hierarchy is:

\[
\texttt{TerminalFullPacketNoResiduePayment.A}
\]

with subordinate producer:

\[
\texttt{FreshPotentialAverageKillAndPositiveTransfer.A}
\]

which reduces to:

\[
\texttt{FreshPositiveAffineEndpointMassKill.A}
\quad\text{or}\quad
\texttt{FreshMuNCarlesonEndpointThreading.A}.
\]

This preserves the full-packet parent and prevents the fresh potential branch from becoming a detached scalar target.
