# Original datum-to-R(0,1) derivation

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Bounded supplier coverage is stated at the actual invocation, not inferred from an alternative later closure criterion. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. Bounded reconstruction of the original upstream argument using already recovered sources. No alternative regularity criterion, new proof branch, manuscript edit or historical search is used.

The exact target, for a proposed finite maximal time \(T_*\) and \(I=(0,T_*)\), is
\[
\mathfrak R_{0,1}(u;T_*)
=\int_0^{T_*}\bigl(\|u(t)\|_{H^2}^2+\|u_t(t)\|_2^2\bigr)\,dt<\infty.
\tag{UR1}
\]
This is the \(N=0,M=1\) case of the original adjacent-row statement. Its source definition of a [maximal classical history, LF63–89](../SOURCES.md#S139) assumes continuity of every fixed derivative in every finite Sobolev space on each \([0,S]\), \(S<T_*\). It does not assume those memberships at \(S=T_*\).

## Operations actually executed before the membership assertion

1. **Initial jet at time zero.** [Initial-jet lemma, LF209–258](../SOURCES.md#S139) and the proof's LF457–475 form
\[
A_0=u_0,\quad
P_n=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j,\quad
A_{n+1}=\nu\Delta A_n-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n.
\tag{UR2}
\]
Finite induction using Sobolev products and Riesz multipliers puts every selected initial coordinate in each finite spatial Sobolev order. This constructs the initial face; it supplies no time-integral over \(I\).

2. **One full nonlinear local realization.** [Quantitative local restart, LF662–695](../SOURCES.md#S136) and its [actual fixed point, LF790–860](../SOURCES.md#S136) use the complete map
\[
\Phi(v)=e^{\nu t\Delta}u_0-\int_0^te^{\nu(t-s)\Delta}\mathbb P\nabla\cdot(v\otimes v)(s)\,ds.
\]
Pressure is normalized by \(p=R_iR_j(u_i u_j)\). The product estimate is \(\|\mathbb P\nabla\cdot(v\otimes z)\|_{H^2}\le C_q\|v\|_{H^3}\|z\|_{H^3}\). With
\[
0<\delta\le\min\{1,c_\nu(1+\|u_0\|_{H^3})^{-2}\},\qquad
c_\nu=(8C_qL_\nu^2)^{-2},
\]
the map contracts a ball of radius \(R=2L_\nu\|u_0\|_{H^3}\) in
\[
X_\delta=CH^3\cap L^2H^4,\quad u_t\in L^2H^2,\qquad
\|u\|_{X_\delta}=\|u\|_{CH^3}+\|u\|_{L^2H^4}+\|u_t\|_{L^2H^2}.
\]
Consequently this actual construction proves
\[
\mathfrak R_{0,1}(u;\delta)
\le\bigl(\|u\|_{L^2H^4}+\|u_t\|_{L^2H^2}\bigr)^2
\le4L_\nu^2\|u_0\|_{H^3}^2.
\tag{UR3}
\]
The interval is \((0,\delta)\), not \((0,T_*)\). The zero datum is handled separately by the source's zero fixed point.

3. **Every finite higher row on that same local interval.** Framework LF891–1013 uses higher spatial energy estimates with coefficient \(\|\nabla u\|_\infty\), bounded by the constructed \(CH^3\) norm on \([0,\delta]\). Fourier approximation and weak limits identify these rows with the fixed point. The complete velocity-pressure recurrence then generates all finite temporal and mixed rows on the same \(\delta\). This does not require a constant uniform over all derivative orders.

4. **Compatibility and maximal union on strict windows.** [Framework LF1014–1017](../SOURCES.md#S136) uses uniqueness and restriction to join the local histories. [PUB01 LF381–400](../SOURCES.md#S139) supplies finite fixed-order norms for every strict \(S<T_*\), and expressly says this strict-horizon statement is not the whole-terminal producing result. A restart at \(t_0\) has the displayed radius/time depending on the actual \(\|u(t_0)\|_{H^3}\); no terminal bound for this quantity is supplied here.

5. **Complete governing graph of the actual selected rows.** [PUB01 LF478–519](../SOURCES.md#S139) retains both ordered transport parents, adjacent temporal rows, viscous coordinates, and every simultaneous pressure-product factor:
\[
\mathscr E_{n,\alpha}
=J_{n+1,\alpha}
+\sum_{a=0}^n\sum_{\beta\le\alpha}\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
+\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}=0.
\tag{UR4}
\]
The pressure coordinate remains
\(\Pi_{n,\gamma}=R_iR_j\sum_{a,\beta}\binom na\binom\gamma\beta J_{a,\beta,i}J_{n-a,\gamma-\beta,j}\).
The source explicitly identifies every entry with a derivative of the original maximal history; it does not construct an autonomous finite fluid. This step supplies all governing identities and their finite dependency cover.

## Exact unsupported transition in the printed proof

Immediately after UR4, [PUB01 LF521–527](../SOURCES.md#S139) says that the construction acts on this record and “it supplies”
\[
V_n\in L^2(I;H^{M+1}),\qquad V_{n+1}\in L^2(I;H^{M-1}).
\tag{UR5}
\]
For \(n=N=0,M=1\), UR5 is exactly UR1's two memberships. No intervening construction or existence argument yields a member of those whole-\(I\) spaces, no earlier lemma is invoked that yields them, and no independent terminal bound for these two target norms has been derived in the preceding operations. The only constructed member so far is the local \(X_\delta\) fixed point and its compatible strict-window continuation.

The next step, [LF533–550](../SOURCES.md#S139), defines \(C_{N,M}\) as the sum of the very norms in UR5 and marks it finite because each membership asserts finiteness. That is valid after UR5; it does not independently establish UR5. Restriction and monotone convergence then correctly identify the strict-cutoff supremum with the whole-terminal integral. On the actually constructed history the exhaustion statement itself is
\[
\mathfrak R_{0,1}(u;T_*)=\sup_{S<T_*}\mathfrak R_{0,1}(u;S)
\quad\text{in }[0,\infty].
\tag{UR6}
\]
The original [E18–19, LF196–223](../SOURCES.md#S157) explicitly retains that extended-value domain. Finiteness of each strict-window integral does not provide the finite supremum asserted in UR1.

Thus the unsupported inference in this checked derivation is **smooth initial face and complete governing graph of the maximal strict-window history → whole-terminal adjacent membership**, at UR5. This conclusion identifies the missing construction step; it does not demand a different a priori route.

## Full nonlinear/height operations do not change that dependency

The [complete commutator, equations 2–6, LF36–84](../SOURCES.md#S156) retains
\[
\partial_t^k\mathcal P_{0,s}
=-\tfrac12\sum_{a+b+c=k}\frac{k!}{a!b!c!}
\langle[\Lambda^{2s},V_a\cdot\nabla]V_b,V_c\rangle.
\]
Its actual norm estimate in equation 8 explicitly takes \(\mathfrak R_{k,2}(I)<\infty\) as input. No parent allocation or sign is removed.

The [completed-height identity, unforced02 LF90–168](../SOURCES.md#S140) is
\[
R_k=\frac{H^{(k)}-\sum_{j<k}(-2\nu)^j\partial_t^{k-1-j}\mathcal P_{j+1/2}}
{(-2\nu)^k}=E_{k+1/2}.
\tag{UR7}
\]
It is exact on strict classical intervals, with every production derivative retained. Its whole-terminal \(L^1\) estimate in LF315–377 begins with the already finite \(\mathfrak R_{0,k}\), explicitly at LF353–361. Using that estimate to establish its own input would reverse the source dependency. The earlier [CMI21, LF460–469](../SOURCES.md#S148) states the premise openly: “Assume the preceding complete height/VPI theorem has proved” every \(R_n\in L^1(0,T_*)\); CMI24 calls it an external premise. The recovered original names no supplier at that handoff.

The pressure-complete momentum square also preserves its actual full right side. At \(n=s=0\), for every \(0<S<T_*\), [forced02 LF189–251](../SOURCES.md#S118) gives
\[
\nu\|\nabla u(S)\|_2^2+\int_0^S
(\|u_t\|_2^2+\nu^2\|\Delta u\|_2^2+\|\nabla p\|_2^2)
=\nu\|\nabla u_0\|_2^2+\int_0^S\|f-(u\cdot\nabla)u\|_2^2.
\tag{UR8}
\]
Its displayed nonlinear right-side estimate, LF254–307, uses already supplied rectangles. The source does not use UR8 to independently produce UR1 before UR5.

For forcing, the actual [native N9–N11a, LF125–165](../SOURCES.md#S153) constructs the common local history with the prescribed source, then applies the unforced finite-row construction method to the complete forced graph and asserts the corresponding whole-terminal output. Every binomial force row and its pressure potential remain in the graph. N11b–c pays fixed-order prescribed-force contributions; the whole-terminal adjacent memberships remain the asserted N11a output. [PUB forced01 LF642–650](../SOURCES.md#S117) makes the corresponding membership assertion. No later source criterion is needed for this finding.

The bounded original upstream reconstruction therefore ends at UR5. All preceding local construction, full derivative identities and stated conditional consumers remain verified at their actual domains. The whole-terminal assertion needed for the claimed conclusion is not established by this recovered argument.
