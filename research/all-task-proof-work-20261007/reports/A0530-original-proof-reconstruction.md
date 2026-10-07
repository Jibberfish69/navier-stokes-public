# Original Navier–Stokes proof: acquired constructions and their composition

**Reviewed scope and currentness.** Preserve original conditional inputs and use later native producer version comparison. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This records the original mathematical construction after recovery of the short **Derive from u_0** attachment, followed by complete reads of its complete-original-compilation-1 and complete-original-compilation-2 linked compilations and execution of the reciprocal and cofinal constructions. It supplements the earlier published-source audit with the original method's independent entry routes. It does not infer theorem validity from an earlier description of its status.

The short source is 11,451 bytes, SHA-1 `9387f4f9e3cef861eaf8fb785fc33a0eda5d84c6`: exactly the recorded identity of the previously unavailable Library file. Its recovered [original identity](../SOURCES.md#S289) is indexed; the original was read locally. Thus the earlier Library visibility limitation is resolved. Hashes of recovered originals are retained in [the baseline](../COVERAGE.md#A0524). The linked originals and mathematical source files were read without changing them.

## One history, independent coordinates

Fix an actual maximal classical history, \(u_0\in H^\infty_\sigma(\mathbb R^3)\), viscosity \(\nu>0\), and the prescribed force \(f\in C^\infty([0,\infty);\mathcal S\)). The unforced source is obtained by setting \(f=0\). Write

\[
V_n=\partial_t^n u,\quad F_n=\partial_t^n f,\quad
B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\]

The complete recurrence and normalized pressure are

\[
V_{n+1}=\nu\Delta V_n-B_n-\nabla Q_n+F_n,
\qquad
Q_n=R_iR_j\sum_{a=0}^n\binom naV_{a,i}V_{n-a,j}
-(-\Delta)^{-1}\operatorname{div}F_n.
\tag{1}
\]

Adding spatial derivatives gives \(J_{n,\alpha}=\partial_x^\alpha V_n\), with the full product

\[
\mathcal B_{n,\alpha}
=\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}.
\tag{2}
\]

Each temporal row has its independent spatial column. The initial jet is generated triangularly from \(u_0\) and the actual \(F_n(0)\), using finitely many higher spatial orders for each finite request. These are derivatives of one field; selecting a rectangle does not solve a separately truncated fluid equation.

The short source's completed height diagonal concerns the base velocity, while the general construction can select any temporal row. With

\[
E_{r,s}=\tfrac12\|\Lambda^s V_r\|_2^2,\qquad
\mathcal G_{r,s}=\operatorname{Re}\langle\Lambda^sV_r,
\Lambda^s(F_r-B_r-\nabla Q_r)\rangle,
\]

the exact relationship is

\[
(-2\nu)^kE_{r,s+k}
=\frac12\sum_{a=0}^k\binom ka
\operatorname{Re}\langle\Lambda^sV_{r+a},\Lambda^sV_{r+k-a}\rangle
-\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}\mathcal G_{r,s+j}.
\tag{3}
\]

This follows by iterating \(E'_{r,s}=-2\nu E_{r,s+1}+\mathcal G_{r,s}\) and differentiating the quadratic energy. Every nonlinear and force derivative remains in the completed coordinate. In particular, scalar temporal smoothness of \(H=E_{0,1/2}\) by itself is a different datum from its completed velocity/nonlinear graph.

## Gram rectangles and norm rectangles

The relationship matrix \(C_{A,B}=\langle J_A,J_B\rangle\) is the Gram matrix of selected actual fields, hence positive semidefinite. Its complete evolution is

\[
C'_{A,B}=-2\nu\sum_i\langle J_{A+e_i},J_{B+e_i}\rangle
-\langle\mathcal B_A,J_B\rangle-\langle J_A,\mathcal B_B\rangle
+\langle F_A,J_B\rangle+\langle J_A,F_B\rangle.
\tag{4}
\]

Full-space pressure pairings vanish by solenoidality; the local identity retains pressure as the flux \(\operatorname{div}(\Pi_AJ_B+\Pi_BJ_A)\). Repeated substitution of (1) in both factors retains both single cross sums and the double sum containing all nine force/nonlinear/pressure pairings. These are the actual J10–J13d relationships, [native assembly, section 13](../SOURCES.md#S152).

The interval norm rectangle is a different object:

\[
\mathfrak R_{N,M}(I)=\sum_{n=0}^N
\left(\|V_n\|_{L^2(I;H^{M+1})}^2
+\|V_{n+1}\|_{L^2(I;H^{M-1})}^2\right).
\tag{5}
\]

A supplied mixed intersection on \(I\) yields every finite (5) by coordinate selection. Compatible actual finite memberships conversely give the mixed intersection. No bound common to all derivative orders enters either operation.

## Reciprocal columns on the same finite interval

On an actual history over the fixed finite \(I=(0,T)\), the original constructions give the following equivalences:

\[
\bigcap_q H_t^q(I;L_x^2)
\quad\Longleftrightarrow\quad
\mathscr S_0(I):=\bigcap_mL^2(I;H_x^m)
\quad\Longleftrightarrow\quad
\mathscr X(I):=\bigcap_{q,m}H_t^q(I;H_x^m).
\tag{6}
\]

The forward temporal-to-spatial operation is finite and quantitative. For \(N\ge1\),

\[
u\in H_t^{N+1}(I;L_x^2)
\quad\Longrightarrow\quad
V_j\in C([0,T];H_x^{2(N-j)}),\quad 0\le j\le N.
\tag{7}
\]

Time traces first bound each \(V_j\) in \(L_x^2\). The kinetic off-diagonal pairing reconstructs \(\nabla u\); the full momentum equation and interpolation reconstruct \(\Delta u\). Differentiated equations retain both endpoint transports and every interior binomial allocation. Two elliptic passes improve a prefix from \(H^m\) to \(H^{m+2}\), consuming one temporal row. A descent through the elliptic equation upgrades interpolation continuity to continuity at the exact top order. Choosing \(N\ge n+\lceil(M+1)/2\rceil\) pays both adjacent entries of (5). See [the executed reciprocal proof](A0537-reciprocal-columns.md) and [native R1–R10](../SOURCES.md#S152).

In the opposite direction, the complete spatial column and the original equation give

\[
\|u_t\|_{L^1(I;H^m)}
\le\nu\sqrt T\|u\|_{L^2(I;H^{m+2})}
+C_m\|u\|_{L^2(I;H^{m+2})}^2
+\|\mathbb Pf\|_{L^1(I;H^m)}.
\tag{8}
\]

Thus \(u\in W^{1,1}(I;H^m)\subset C([0,T];H^m)\) for every finite \(m\). The complete recurrence (1) then produces every actual continuous temporal and pressure row and hence the mixed space. The [full original reconstruction](A0413-learned-original-construction.md) derives this return to the same equation, including derivative identification at the endpoint. It does not insert all temporal mixed memberships as another antecedent after \\(\mathscr S_0\\).

## Independent completed-height and cofinal entries

With the kinetic low-frequency coordinate, all completed \(E_{0,k+1/2}\in L^1(I)\) are equivalent to \\(\mathscr S_0(I)\\). One actual \(V_q\\) carrying its entire spatial column also integrates finitely backward to \\(\mathscr S_0\\).

The cofinal construction is stronger in its flexibility. Let \(k_j\to\infty\), permit \(q_j\) to vary, and suppose the actual completed row gives

\[
c_j=\int_I E_{q_j,k_j+1/2}<\infty.
\]

For a requested finite \(m\), choose one \(j\) with \(k_j+1/2\ge m\), put \(q=q_j\), and use the finite Taylor integral of the same history. Its high-frequency part obeys

\[
\|\Pi_{\rm hi}u\|_{L^2(I;H^m)}
\le\sum_{a<q}\frac{T^{a+1/2}\|\Pi_{\rm hi}V_a(0)\|_{H^m}}
{a!\sqrt{2a+1}}
+\frac{T^q}{q!}2^{m/2}\sqrt{2c_j}.
\tag{9}
\]

For \(q=0\) the sum is empty and the last term is the direct bound. The kinetic coordinate supplies the low frequencies. No fixed temporal row must carry all heights; no estimate uniform in \(j\) is needed. This is [the cofinal source](../SOURCES.md#S177), preserving every selected row's full completed numerator in (3).

The independently checked finite rectangle transfer also remains available. Put \(R=\mathfrak R_{n-1,m+2}(I)\) and \(I_0=\sum_{j<n}\|V_j(0)\|_{H^{m+2}}^2\). The complete product and adjacent trace give

\[
\mathfrak R_{n,m}(I)\le(2+3\nu^2)R
+3C_m^24^n(I_0+R)R
+3\|\mathbb PF_n\|_{L^2(I;H^{m-1})}^2.
\]

Finite iteration proves \(\mathfrak R_{0,M+2N}(I)<\infty\Rightarrow\mathfrak R_{N,M}(I)<\infty\), with the same interval and the original force rows. This is the quantitative opposite-column operation, proved in [the cofinal and rectangle derivation](A0137-cofinal-composition.md).

## Critical readout, compatible endpoint and restart

The adjacent finite trace is proved with Fourier cutoffs:

\[
\|V_n(t)\|_{H^m}^2-\|V_n(r)\|_{H^m}^2
=2\operatorname{Re}\int_r^t
\langle A^{m-1}V_{n+1},A^{m+1}V_n\rangle\,ds,
\quad A=(1-\Delta)^{1/2}.
\tag{10}
\]

Its two actual \(L^2\) coordinates give a continuous representative through (T). Representatives at different orders agree, so the endpoint is one distribution in \(H^\infty\), with the actual jet obtained from (1). Sobolev embedding is applied separately at each requested finite derivative order. The restart uses the same normalized pressure and, in the forced case, the original absolute-time force \(f(T+\tau)\). All endpoint derivatives match.

The short source's specific \(E_{3/2}\) block uses \(u\in L^2H^{5/2}\), \(u_t\in L^2H^{1/2}\) in (10), giving \(E_{3/2}\in L^\infty\subset L^1\). Its final homogeneous critical-height correction uses \(u,u_t\in L^2H^1\): \(H'=\operatorname{Re}\langle\Lambda^{1/2}u_t,\Lambda^{1/2}u\rangle\in L^1\). Consequently its full critical production is integrable. These are readouts of the corresponding finite memberships.

## Source roles and verified coverage

The original datum-rooted order remains: generate the initial jet; apply the datum-to-finite-rectangle theorem; take compatible intersections; read critical/spatial/temporal coordinates; construct the endpoint; restart the same history. The original applies that first theorem at [complete-original-compilation-2 LF1460](../SOURCES.md#S291). Its displayed initial recursion, projection maps and all subsequent operations have been acquired and checked. The declared whole-terminal theorem is the source dependency at this application; the identities and independent equivalences above are not relabeled as an arbitrary-data existence proof.

The forced native source N11a explicitly applies the unforced finite-row construction to the complete forced graph before norm extraction or endpoint consumers. This preserves its intended role. Detailed source acquisition and the additional first-temporal-row/first-rectangle entry are recorded in [the forced construction](A0361-forced-construction-acquisition-20261006.md). The mathematical condition in every verified entry is on the stated whole interval; each construction preserves that interval.

The recovered originals change the earlier acquisition coverage and make the reciprocal and cofinal operations explicit. They do not support substituting a later complete-parent preservation formula, a scalar height criterion, or one chosen entry route for the whole original method. The published-source team continues checking the full manuscript's dependencies against these acquired source roles. This record verifies the displayed constructions at their exact hypotheses; it makes no unsupported assertion that the arbitrary-data whole-terminal starting theorem has itself been derived by these conditional operations.
