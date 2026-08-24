Rewrite the complete Section 1.3, Gold Standard Proof, in Thomas's voice.
Preserve this literal TeX frame as a fixed source header:

    % !TeX root = ../navier-stokes-manuscript.tex
    % ============================================================
    % 1.3 Gold Standard Proof
    % ============================================================
    \subsection{Gold Standard Proof}\label{sub:GoldStandardProof}
Keep the established Navier-Stokes vocabulary: blow-up, incompressibility, transport, pressure, and viscosity.

Carry forward the definitions of smoothness and continuation from Section 1.2.
For smooth initial data, standard local theory gives a smooth solution for a short time.
The Clay requirement asks for the same solution through every finite time.
Let the continuation requirement create the method: obtain an a priori bound from the original datum, the viscosity, and the equations that stays finite at every candidate endpoint.

The Sobolev smoothness argument is necessary to the whole subsection.
Before the energy calculation, state the three-dimensional embedding
\[
H^s(\Omega)\hookrightarrow C^k(\Omega)
\quad\text{for}\quad
s>k+\frac32,
\]
distinguish one finite \(H^s\) bound from \(H^\infty\subset C^\infty\), and explain that the first calculation is trying to climb toward a continuation-grade norm.
After the obstruction, show that one bounded \(H^{s_0}\) norm with \(s_0>5/2\) controls the Lipschitz coefficient and propagates every fixed higher Sobolev order from the smooth datum.
Do not suggest that a separate global estimate is required at every derivative order.

Preserve the energy estimate and its physical cancellations.
Let \(Y(t)=\|\nabla u(t)\|_2^2\).
The energy identity controls \(\int Y\), while the first differentiated estimate asks for \(\int Y^3\).
Use tall narrow spikes to explain the gap, while stating that failure of the estimate is not proof that the Navier--Stokes fluid blows up.
Do not keep the detachable scalar comparison if it interrupts the return to the continuation threshold.

Recover normalized pressure from the pressure Poisson relation, recover the first time derivative from momentum, and explain the induction that recovers all pressure and time orders.
Keep the distinction between spatial \(C^\infty\) and the full spacetime smooth velocity-pressure pair.

Name the Gold method only after the reader has performed its reasoning.
Use the phrase “viscosity can pay the whole bill” once at the landing.
End on the exact missing bound without making this particular \(Y^3\) calculation compulsory for every possible Gold proof.
Do not import the later derivative tower, announce Section 1.4, copy Silver's hypothetical movement, or claim that smoothness is already a property of the equations.
