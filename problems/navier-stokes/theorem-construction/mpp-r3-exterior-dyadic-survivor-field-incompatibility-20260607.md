# R3 Exterior Dyadic Survivor Field Incompatibility

Date: 2026-06-07

Status: theorem installed for the CM-facing exterior-source branch; not a proof of vanishing exterior \(H^s\) tail.

## Target

The previous exterior-source reduction proves that any surviving whole-space exterior \(H^s\) Duhamel source must escape to dyadic frequency:

\[
N_j^s\|P_{N_j}W_{R_j}(t_j)\|_{L^2}\ge c>0,\qquad
R_j\to\infty,\qquad N_j\to\infty.
\]

This note proves the missing CM-facing step on the retained Pack+Part branch:

\[
\boxed{\text{dyadic exterior source survivor}+\Pack_Q+\Part_{M,Q}
\Longrightarrow
\forall \rho>0\,\neg\Field_{M,\rho,Q}}
\]

for any terminal field depth \(M>s+2\) used by the readout route.

## Theorem

Let \(s>5/2\). Assume the installed exterior \(L^2\) tightness and the Duhamel split used in
`R3.ExteriorSourceDyadicEscapeToCMFace.A`. Suppose the exterior nonlinear source has a terminal dyadic survivor:

\[
N_j^s\|P_{N_j}W_{R_j}(t_j)\|_{L^2}\ge c>0,\qquad N_j\to\infty.
\]

Let \(Q\) be the terminal CM test object selected by that survivor. If \(\Pack_Q\) and \(\Part_{M,Q}\) are retained, then no fixed positive field scale \(\rho>0\) can satisfy \(\Field_{M,\rho,Q}\).

Thus the retained Pack+Part branch lands in the Field face:

\[
\forall \rho>0\,\neg\Field_{M,\rho,Q}.
\]

## Proof

The only point to prove is that fixed positive field scale is incompatible with the dyadic survivor.

Assume, toward contradiction, that \(\Field_{M,\rho,Q}\) holds for some fixed \(\rho>0\) and some \(M>s+2\). In the CM route, this means that the selected terminal packet has a positive-scale same-fluid readout window with a finite derivative tower through depth \(M\). After choosing a smooth partition of unity subordinate to the retained \(\rho\)-scale field windows, each localized piece \(f\) of the selected packet satisfies a uniform finite-depth bound

\[
\sum_{|\alpha|\le M}\|\partial^\alpha f\|_{L^2}\le C_{\rho,M,Q}.
\]

For a Littlewood--Paley projection at frequency \(N\), the standard cancellation estimate gives

\[
\|P_N f\|_{L^2}\le C_{\rho,M}N^{-M}
\sum_{|\alpha|\le M}\|\partial^\alpha f\|_{L^2}.
\]

Multiplying by \(N^s\) yields

\[
N^s\|P_N f\|_{L^2}\le C_{\rho,M,Q}N^{s-M}\to0
\]

because \(M>s\). The finite number of retained \(\rho\)-scale field windows gives the same limit for the whole selected packet.

The bounded-frequency lemma has already removed the fixed-band response, so the branch under consideration is the selected high-frequency packet. If a surviving piece is outside the retained material address, \(\Pack_Q\) has failed. If it is detached from the same Navier--Stokes equation, pressure, viscosity, and source ancestry, \(\Part_{M,Q}\) has failed. On the branch currently under consideration, Pack and Part are retained, so the survivor must be seen inside the finite \(\rho\)-scale Field windows.

That contradicts the dyadic survivor lower bound

\[
N_j^s\|P_{N_j}W_{R_j}(t_j)\|_{L^2}\ge c>0
\]

as \(N_j\to\infty\). Hence no fixed positive \(\rho\) can satisfy \(\Field_{M,\rho,Q}\) on the retained Pack+Part branch.

## Consequence

The whole-space exterior-source branch now has the CM dichotomy:

\[
\begin{aligned}
&\text{exterior nonlinear source vanishes in }H^s
&&\Rightarrow \text{whole-space tail input is supplied},\\
&\text{exterior nonlinear source survives}
&&\Rightarrow \neg\Pack_Q\vee\neg\Part_{M,Q}\vee
\forall\rho>0\,\neg\Field_{M,\rho,Q}.
\end{aligned}
\]

This closes the previous gap where the dyadic survivor was only described as a possible Pack/Field reading. It is now a first-face CM landing: no material address gives Pack failure; no same-fluid participation gives Part failure; retained Pack+Part forces Field failure.

## Noncircularity Boundary

This argument does not use global \(H^s\), a BKM integral, or a continuation-grade Lipschitz bound. It uses only the installed exterior \(L^2\) tightness, the prior dyadic-survivor reduction, the local meaning of retained Pack and Part, and the finite-depth derivative control supplied by the assumed Field face. The Field assumption is used only to reject the Field branch; it is not used to prove positive smoothness.
