# Forced Navier–Stokes source verification

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. The inhomogeneous absorption issue concerns the older wording and is repaired in recovered v3. Arbitrary amplitude means the stated Schwartz spatial force class. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Audit date: 6 October 2026. This audit checks the actual forced finite-rectangle producer, its source payment, and its linked pressure and source-work consequences. It does not certify the entire combined paper. Originals were read without editing; the manuscript source identities are recorded in [forced-source-baseline.json](../COVERAGE.md#A0366).

The pressure-complete jet, prescribed-force budgets, and several conditional whole-terminal implications are verified. The decisive production of whole-terminal velocity memberships remains unverified at the exact invocation identified below. This is a limitation of the supplied producing argument, not a counterexample to the global theorem.

## 1. Source and version identities

The current combined paper root is the indexed mathematical source witness. Its forced setting file is [parts/forced/01-setting-mixed-jet.tex](../SOURCES.md#S117), .

The separately recovered [v3 forced setting file](../COVERAGE.md#A0651) is separately identified in the source and report indices. Its mathematical change in this passage correctly retains the inhomogeneous lower-order energy remainder, adding seven lines. The producing invocation otherwise remains the same.

The earlier standalone forced [01-setting-mixed-jet.tex](../SOURCES.md#S166) is separately identified in the source and report indices. Its lines 482–601 state the whole-terminal intersection directly; lines 533–535 invoke a columnwise construction by reference. The combined version instead states a finite-rectangle producing theorem and then exhausts its mixed indices. These are different source formulations and should not be silently identified.

## 2. Exact claim and dependency map

The forced datum is one prescribed triple

\[
u_0\in H^\infty_\sigma(\mathbb R^3),\qquad \nu>0,\qquad
f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3)).
\]

The history definition assumes every velocity and pressure derivative is continuous in every finite Sobolev order on each closed strict horizon \([0,S]\), \(S<T_*\). This does not assert the corresponding time-integral memberships on \(I=(0,T_*)\).

| Source location in the current combined paper | Role and verification |
| --- | --- |
| Forced 01, lines 4–56 and 116–164 | Pressure normalization and full mixed recurrences: verified. |
| Forced 01, lines 214–266 and 432–481 | Initial jet and strict-horizon intersection: verified at their stated scope. |
| Forced 01, theorem `f:thm:datum-finite-blocks`, lines 497–692 | Asserts whole-terminal adjacent memberships for every finite \((N,M)\). The producing invocation at 642–650 is the unresolved transition. In v3 it is at 649–657. |
| Forced 01, lines 656–691 and 700–727 | Finite norm, monotone exhaustion, pressure membership, and mixed-index exhaustion: valid if the preceding memberships have been produced. |
| Forced 02, lines 442–505 | Critical-height integrability is obtained from the producing theorem's rectangle bounds. It supplies no independent datum-to-terminal membership. |
| Forced 02, proposition `f:prop:forced-spatial-column-reconstruction`, lines 508–570 | Whole-terminal spatial column implies the complete temporal/pressure intersection: verified conditionally. |
| Refutation `forced-domain-propagation.tex`, lines 6–185 | The same conditional spatial-height-to-mixed-jet-to-endpoint/restart chain, with the full prescribed force: verified. |
| Refutation `body.tex`, lines 116–143 | Finite-horizon forced intersection explicitly consumes the Part II global theorem. |

No constant common to infinitely many derivative orders is needed. The question is whole-terminal finiteness at each fixed finite pair.

## 3. Verified full pressure and jet algebra

With \(V_n=\partial_t^nu\), \(F_n=\partial_t^nf\), and

\[
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},
\]

the exact equations are

\[
\begin{aligned}
V_{n+1}&=\nu\Delta V_n-B_n-\nabla Q_n+F_n,\\
Q_n&=R_iR_j\sum_{a=0}^n\binom na(V_a)_i(V_{n-a})_j
-(-\Delta)^{-1}\operatorname{div}F_n,\\
\nabla Q_n&=(I-\mathbb P)(F_n-B_n).
\end{aligned}
\]

Spatial Leibniz differentiation gives precisely the two binomial allocations in the manuscript. Derivatives commute with the constant Fourier multipliers. Incompressibility gives \(\operatorname{div}J_{n,\alpha}=0\). The finite dependency cover in forced 01, lines 578–615, retains both transport factors, the adjacent temporal coordinate, viscous coordinates, normalized pressure, and every relevant force coordinate. It is a finite cover of selected equations, as the manuscript says; it is not a claim that recursively prolonging every retained equation terminates at finite order.

The force potential has multiplier \(i\xi\cdot\widehat F_n/|\xi|^2\). On \(|\xi|\le1\), its magnitude is at most \(|\xi|^{-1}|\widehat F_n|\), and
\(\int_{|\xi|\le1}|\xi|^{-2}\,d\xi=4\pi\). On \(|\xi|>1\), the inverse derivative is bounded. Schwartz data therefore supply the potential continuously in every \(H^m\) on every prescribed finite horizon. The zero-frequency pressure issue is paid: an \(L^2\) harmonic difference vanishes. There is no pressure-potential obstruction here.

The finite-row pressure estimates follow from Sobolev multiplication, Riesz contraction, and time Cauchy–Schwarz. For example,

\[
\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}
\le C_M^p\sum_{a=0}^n\binom na
\|V_a\|_{L^2H^{M+1}}\|V_{n-a}\|_{L^2H^{M+1}}
+\mathfrak F^p_{n,0,M}.
\]

The force budget is independently finite; the velocity factors retain their displayed premise.

## 4. Source payment and the exact unresolved inference

The source inequality at label `f:eq:forced-finite-row-source-payment` is valid:

\[
2|\langle F_n,V_n\rangle_{H^M}|
\le\nu\|V_n\|_{H^{M+1}}^2+\nu^{-1}\|F_n\|_{H^{M-1}}^2.
\]

Let \(A=(1-\Delta)^{1/2}\), \(Y=\|V_n\|_{H^M}^2\), and
\(D=\|\nabla V_n\|_{H^M}^2\). The true viscous term is \(D\), and \(\|V_n\|_{H^{M+1}}^2=D+Y\). The current source's lines 633–635 claim full absorption into viscosity; v3 lines 633–642 correctly retain \(\nu Y\). Accordingly, the corrected full equation yields

\[
Y'+\nu D\le
-2\operatorname{Re}\langle A^MV_n,A^MB_n\rangle
+\nu Y+\nu^{-1}\|F_n\|_{H^{M-1}}^2.
\]

Pressure cancels in this pairing because \(A^MV_n\) is solenoidal. The full nonlinear response remains; force finiteness supplies the last term, not a bound on that response. The appendix `source-work-appendix.tex`, lines 163–177, also gives the correct inhomogeneous remainder.

Immediately after the source and pressure payments, current forced 01, lines 642–650, states that these inputs form the input to a forced columnwise construction and that the construction supplies

\[
V_n\in L^2(I;H^{M+1}),\qquad
V_{n+1}\in L^2(I;H^{M-1}).
\]

This is the theorem's essential output, not a consequence derived in those lines from the preceding graph and source inequalities. The displayed proof does not construct a member of those whole-terminal Sobolev domains or prove a theorem that an arbitrary prescribed complete source jet preserves their membership. Restriction compatibility verifies equality of common coordinates; it does not establish their defining whole-interval integrals. No alternative estimate is imposed by this audit: a direct construction could supply the output, but the invocation itself does not show that construction.

Once these memberships are assumed, summing their defining norms and taking monotone limits is correct. Monotone convergence permits an infinite limit unless finiteness has already been supplied. The later height recovery in forced 02, lines 480–488, explicitly consumes the same memberships, so it cannot independently discharge this invocation.

## 5. Verified conditional continuation through spatial heights

Suppose, on the actual forced history and the complete finite horizon,

\[
\int_0^{T_*}\tfrac12\|\Lambda^{m+1/2}u\|_2^2\,dt<\infty
\quad\text{for every finite }m.
\]

The kinetic estimate gives \(\sup\|u\|_2\le K\), where
\(K=\|u_0\|_2+\int_0^{T_*}\|\mathbb Pf\|_2\,dt\). Splitting Fourier space at radius one then gives every \(S_m=\|u\|_{L^2H^m}<\infty\). Sobolev multiplication and the actual projected equation give

\[
\|u_t\|_{L^1H^m}
\le\nu\sqrt{T_*}S_{m+2}+C_mS_{m+2}^2
+\|\mathbb Pf\|_{L^1H^m}.
\]

Hence \(u\) has a continuous \(H^m\) representative through the endpoint, with a finite supremum \(M_{0,m}\). The full binomial recurrence then inductively supplies

\[
M_{n+1,m}=\nu M_{n,m+2}
+C_m\sum_{a=0}^n\binom naM_{a,m+2}M_{n-a,m+2}
+\sup\|\mathbb PF_n\|_{H^m}<\infty.
\]

Every earlier temporal row is available at every finite spatial order, so this recursion uses matching already supplied inputs. Pressure continuity follows from the full Riesz formula and force potential. Integrating the uniform temporal bounds produces the mixed intersection. Integrating \(\partial_tV_n=V_{n+1}\) gives compatible endpoint limits; the original absolute-time force supplies \(F_n(T_*)\) in every endpoint row. Forced local theory then restarts the same history. This conditional chain is verified without inserting an unforced solution or changing the force.

## 6. Source-work appendix and an independently proved restricted criterion

For \(h_s=\Lambda^{2s}\mathbb Pf\), the base source work is \(W_s=\langle u,h_s\rangle\). The exact tested momentum identity is

\[
W_s'=\langle u,(\partial_t+\nu\Delta)h_s\rangle
+\int u_i u_j(\operatorname{Sym}\nabla h_s)_{ij}
+\langle f,h_s\rangle.
\]

Kinetic energy and prescribed force norms bound both \(W_s\) and \(W_s'\). The integration formulas in `source-work-appendix.tex`, lines 54–100, correctly bound the signed integrated source correction after \(k-2\) integrations, including the finite initial polynomials. The all-row binomial cancellation in `all-row-source-primitives.tex`, lines 12–29, and its repeated-integration formulas are likewise verified. They control the direct source contribution; the completed height still contains the full nonlinear production and energy derivative. Lines 198–226 of the source-work appendix explicitly preserve this distinction, including the terminal weight in higher Volterra integrals.

The appendix [first-rectangle.tex](../SOURCES.md#S129), lines 11–87, proves a useful datum-dependent sufficient criterion. With

\[
X(S)=\int_0^S(\|u_t\|_2^2+\nu^2\|\Delta u\|_2^2)\,dt,
\]

the squared full momentum equation gives
\(X(S)+\nu\|\nabla u(S)\|_2^2=\nu\|\nabla u_0\|_2^2+\int_0^S\|\mathbb P(f-B_0)\|_2^2\,dt\).
Its subsequent estimates yield \(aX^2+(b-1)X+c\ge0\) with the manuscript's finite data constants. If \(b<1\) and \((1-b)^2>4ac\), continuity from \(X(0)=0\) prevents crossing the interval between the two positive roots and bounds the first rectangle uniformly through the terminal time. That argument is verified under its stated root-separation hypotheses. It does not cover arbitrary smooth force amplitudes.

## 7. Whole-terminal graph completion and time-domain check

The Stokes decomposition in `source-response.tex`, lines 6–44, retains the original nonlinear problem exactly. On a fixed finite horizon, its prescribed lift \(z\) has all mixed Sobolev norms. Setting \(v=u-z\) gives

\[
v_t-\nu\Delta v+B(v,v)+B(z,v)+B(v,z)+B(z,z)=0,
\qquad B(a,b)=\mathbb P[(a\cdot\nabla)b].
\]

Every temporal differentiation retains all four corresponding binomial sums. The source's finite-order lift estimate at lines 46–110 bounds the terms containing prescribed lift factors and explicitly retains the signed self-production from \(B(v,v)\).

To test a completion argument directly, let
\(X_T=\bigcap_{r,m\ge0}H^r(0,T;H^m_\sigma)\).
The map

\[
v\longmapsto
\bigl(v(0),v_t-\nu\Delta v+B(v,v)+B(z,v)+B(v,z)+B(z,z)\bigr)
\]

is continuous from \(X_T\) to \(H^\infty_\sigma\times X_T\): adjacent temporal orders give each required uniform spatial norm, and Sobolev multiplication controls every finite product allocation. Its prescribed-data preimage is therefore closed in \(X_T\). This proves preservation under convergence in the whole-terminal topology; it does not prove that the preimage is nonempty. Convergence in that topology already entails finite bounds in each of its whole-terminal coordinate norms.

The exact interval distinction can also be proved without introducing a second flow. Let \(S_j\uparrow T\) and let \(u_j\) be compatible restrictions of this same forced history on \((0,S_j)\). Compactly supported testing glues them and their full nonlinear/pressure equations on \((0,T)\). For every fixed \(r,m\), monotone convergence gives

\[
\sum_{n=0}^r\|\partial_t^nu\|_{L^2(0,T;H^m)}^2
=\sup_j\sum_{n=0}^r\|\partial_t^nu_j\|_{L^2(0,S_j;H^m)}^2
\quad\text{in }[0,\infty].
\]

Consequently the glued history belongs to \(X_T\) exactly when each displayed supremum is finite. This is the image of the whole-terminal restriction map; compatible strict-horizon histories form a larger space. A direct whole-terminal producer could avoid time exhaustion, but the source's compatibility and closedness alone do not establish that producer.

## Conclusion at this audit's scope

The full forced jet and source payment are real mathematical results, and the whole-terminal spatial-column-to-intersection-to-endpoint chain is valid with its exact input. The arbitrary-data producing claim is not verified: the necessary whole-terminal velocity memberships are asserted at current forced 01 lines 642–650, and v3 lines 649–657, without the producing operation being established by the preceding graph compatibility and force budgets. The v3 correction fixes the local absorption error; it does not itself establish that remaining producing step.
