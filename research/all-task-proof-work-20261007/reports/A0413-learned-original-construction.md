# Original Navier–Stokes construction, acquired in its own order

**Reviewed scope and currentness.** Qualified original reconstruction, later native source/domain comparison preferred for supplying step. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


2026-10-06. This note reconstructs the actual mathematical operations in the complete original complete-original-compilation-2 compilation and the newly recovered short `Derive from u_0` source. It keeps one unforced history, its complete pressure response, independent temporal/spatial indices, and the source's several entry routes. All cited line numbers are physical LF lines.

The complete fresh read covered complete-original-compilation-2 LF1–1677 and the short source LF1–143, including its Unicode-separated mathematical lines. The short source is [short-original/pasted-text.txt](../SOURCES.md#S289); SHA-1 `9387f4f9e3cef861eaf8fb785fc33a0eda5d84c6`, . The complete source is [complete-original-compilation-2/pasted-text.txt](../SOURCES.md#S291); .

## The one object and the forward operations

Fix \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), and its maximal classical unforced history \((u,p)\) on \([0,T_*)\), with

\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad\nabla\cdot u=0,
\qquad p=R_iR_j(u_i u_j).
\]

Pressure has no independent datum. For \(V_n=\partial_t^n u\) and \(Q_n=\partial_t^n p\), the original equation generates

\[
Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j},
\]

\[
V_{n+1}=\nu\Delta V_n
-\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}-\nabla Q_n.
\tag{1}
\]

At the initial face this is an actual finite recursion: \(A_0=u_0\); compute the pressure polynomial of \(A_0,\ldots,A_n\); then compute \(A_{n+1}\). For each finite target spatial order the available higher orders of the same initial datum control differentiation and multiplication. Therefore every \(A_n\) and initial pressure derivative lies in \(H^\infty\). No all-orders sum or common norm is used.

Spatial differentiation supplies the independent mixed coordinates

\[
J_{n,\alpha}=\partial_x^\alpha V_n,
\qquad \Pi_{n,\alpha}=\partial_x^\alpha Q_n,
\]

\[
J_{n+1,\alpha}
+\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
+\nabla\Pi_{n,\alpha}=\nu\Delta J_{n,\alpha},
\]

\[
\Pi_{n,\alpha}=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
J_{a,\beta,i}J_{n-a,\alpha-\beta,j}.
\tag{2}
\]

Thus each fixed temporal row has its own complete spatial column. Temporal depth \(n\) and spatial depth \(\alpha\) are independent. This is short-source equations (2)–(8), [LF13–41](../SOURCES.md#S289).

The next operation contracts the velocity jet into scalar height coordinates. Put \(E_s=\tfrac12\|\Lambda^su\|_2^2\), \(H=E_{1/2}\), and retain the complete nonlinear/pressure-completed current

\[
\mathcal P_s=-\operatorname{Re}\langle\Lambda^su,
\Lambda^s\mathbb P[(u\cdot\nabla)u]\rangle.
\]

The original equation gives \(E_s'=-2\nu E_{s+1}+\mathcal P_s\). Repeated substitution yields

\[
H^{(n)}=(-2\nu)^nE_{n+1/2}
+\sum_{j=0}^{n-1}(-2\nu)^j
\partial_t^{n-1-j}\mathcal P_{j+1/2}.
\]

The backward coordinate operation is therefore

\[
R_n=
\frac{H^{(n)}-\sum_{j=0}^{n-1}(-2\nu)^j
\partial_t^{n-1-j}\mathcal P_{j+1/2}}{(-2\nu)^n}
=E_{n+1/2}.
\tag{3}
\]

Every differentiated current stays in this operation. Its velocity realization is the quadratic anti-diagonal

\[
H^{(n)}=\frac12\sum_{a=0}^n\binom na
\operatorname{Re}\langle\Lambda^{1/2}V_a,
\Lambda^{1/2}V_{n-a}\rangle.
\tag{4}
\]

The highest new spatial energy in (3) concerns the base velocity \(u\). The correspondence is triangular: (4) uses \(V_0,\ldots,V_n\), while (3) also retains the lower differentiated currents. It does not identify \(V_n\) with a single \(H^{n+1/2}\) row. The short source explicitly preserves the richer mixed lattice. Locations: short-source equations (9)–(21), [LF42 onward](../SOURCES.md#S289).

## Datum-rooted rectangle order

The later original block gives its intended datum-rooted order at [complete-original-compilation-2 LF1453–1475](../SOURCES.md#S291): initial jet from \(u_0\); apply the note's datum-to-finite-rectangle theorem; form actual finite records with every pressure-explicit row retained; restrict common coordinates; take the projective intersection; read spatial, temporal and height regularity; obtain the endpoint and restart.

Its whole-terminal finite-row output, on \(I=(0,T_*)\), is

\[
V_n\in L^2(I;H^{m+1}),\qquad
V_{n+1}=\partial_tV_n\in L^2(I;H^{m-1}),
\qquad n\le N,\ m\le M,
\tag{5}
\]

for each finite \(N,M\). This is the first theorem applied by the original closure block; [complete-original-compilation-2 LF1342–1345](../SOURCES.md#S291) and LF1525–1529 state its interval and quantifiers.

Given these theorem outputs, the intersection is a concrete compatible collection, not a limit of separate fluid solutions. Define the coordinate projections by deleting indices outside a smaller rectangle. Every common coordinate remains the same distributional derivative of the original \(u\); the pressure formulas and the finite differentiated equations restrict with it. For any fixed requested temporal/spatial index choose one finite rectangle containing it. This gives

\[
\mathcal I[u_0;I]=\varprojlim_{N,M}\mathcal R_{N,M}[u_0]
\cong\bigcap_{r,m\ge0}H^r(I;H^m).
\tag{6}
\]

The identification follows in both directions by finite coordinates: every fixed Bochner Sobolev seminorm uses finitely many temporal rows at one finite spatial order; conversely such all-orders Sobolev membership includes each adjacent pair (5). Pressure entries are fixed by their product formulas. Constants may depend on the selected finite indices. No norm uniform over all \(N,M\) is needed.

The spatial and temporal intersections can then be read separately. A fixed temporal row intersected in all spatial orders gives its \(H_x^\infty\) column; a fixed spatial level intersected in temporal orders gives its vector-valued temporal Sobolev intersection. The completed height is a contraction/readout of this mixed object. This is the source's order at LF1463–1470. It places the critical-current estimates after the intersection.

## Independent entry through the complete spatial or height column

The early original block begins with the completed height intersection

\[
\mathfrak I_H(I)=\bigcap_{n\ge0}\{R_n\in L^1(I)\}.
\]

With the kinetic \(L^2\) coordinate, (3) supplies the complete spatial column

\[
\mathscr S_0(I)=\bigcap_{m\ge0}L^2(I;H^m).
\tag{7}
\]

For a fixed requested \(m\), choose \(n+\tfrac12\ge m\). Fourier comparison gives

\[
\int_I\|u\|_{H^m}^2
\le C_{m,n}\left(T_*\|u_0\|_2^2
+2\int_I R_n\right)<\infty.
\tag{8}
\]

Conversely, (7) projects to every \(R_n=E_{n+1/2}\in L^1(I)\) by choosing an integer spatial order above \(n+\tfrac12\). Thus the completed height intersection and (7) are two norm-domain readings of the same velocity, after its low-frequency coordinate is included. Source: [complete-original-compilation-2 LF5–25](../SOURCES.md#S291), LF990–1009 and LF1278–1286. At a single fixed time the analogous statement uses finite \(R_n(t)\), rather than time integrals.

The return to the original equation acts on (7) directly. Write the simultaneous transport-pressure response

\[
\mathcal B(u,u)=(u\cdot\nabla)u+\nabla p
=\mathbb P\nabla\cdot(u\otimes u).
\]

For every finite \(m\), the already-present deeper spatial coordinate gives

\[
\int_I\|\mathcal B(u,u)\|_{H^m}
\le C_m\|u\|_{L^2(I;H^{m+2})}^2,
\qquad
\int_I\|\Delta u\|_{H^m}
\le\sqrt{T_*}\|u\|_{L^2(I;H^{m+2})}.
\]

Substituting the complete response into the original equation produces

\[
u_t\in L^1(I;H^m),\qquad
u\in W^{1,1}(I;H^m)\subset C([0,T_*];H^m).
\tag{9}
\]

The actual endpoint is constructed by the Cauchy estimate

\[
\|u(t)-u(r)\|_{H^m}\le\int_r^t\|u_t(s)\|_{H^m}\,ds.
\]

The limits at different spatial orders agree under inclusion, since they are limits of the same velocity. This constructs one \(u_*\in H^\infty\). Starting from \(V_0=u\in C([0,T_*];H^\infty)\), recurrence (1) generates each next row and each pressure row in that same space. At each induction step its right side is the actual \(\partial_tV_n\) before \(T_*\); integrating it and passing to the endpoint identifies the extension as the actual derivative. Hence

\[
V_n,Q_n\in C([0,T_*];H^\infty),\quad
u\in C^\infty([0,T_*];H^m)\ \forall m,
\quad u\in\bigcap_{r,m}H^r(I;H^m).
\tag{10}
\]

This produces the full mixed temporal intersection from (7); it does not require it as an additional entry condition. Source: [complete-original-compilation-2 LF891–949](../SOURCES.md#S291), especially LF920–938. Therefore, on this actual NS history and the same finite interval,

\[
\mathfrak I_H(I)+\text{kinetic coordinate}
\ \Longleftrightarrow\ \mathscr S_0(I)
\ \Longleftrightarrow\ \mathcal I[u_0;I].
\tag{11}
\]

The scalar temporal Sobolev intersection of \(H\) and the pressure/VPI-completed height intersection remain distinct definitions. The completed coordinate in (3), with its full current terms, is the operation that carries spatial energy information.

## Independent backward entry through one actual higher temporal row

For any finite \(q\ge1\), assume the same history's actual derivative satisfies

\[
V_q\in\bigcap_mL^2(I;H^m).
\]

Its lower initial jet values were already generated from \(u_0\). For each fixed \(m\), compute

\[
V_{q-1}(t)=V_{q-1}(0)+\int_0^tV_q(s)\,ds,
\]

\[
\sup_{t\le T_*}\|V_{q-1}(t)\|_{H^m}
\le\|V_{q-1}(0)\|_{H^m}
+\sqrt{T_*}\|V_q\|_{L^2(I;H^m)}.
\]

This constructs its continuous lower row through the endpoint, and hence its \(L^2\) membership on the finite interval. Repeat finitely many times to reach \(V_0=u\), then apply (9)–(10). All rows remain derivatives of the original history. Source: [complete-original-compilation-2 LF867–890](../SOURCES.md#S291). This is a separate entry route; it does not make a higher temporal-row input a prerequisite for the datum-rooted rectangle theorem.

## Adjacent trace route and the specific critical block

The source also constructs traces directly from any indicated adjacent pair. With \(A=(1-\Delta)^{1/2}\),

\[
\|V_n(t)\|_{H^m}^2-\|V_n(r)\|_{H^m}^2
=2\operatorname{Re}\int_r^t
(A^{m-1}V_{n+1},A^{m+1}V_n)\,ds.
\tag{12}
\]

Fourier cutoffs make this an ordinary Hilbert-valued differentiation identity. Their differences are Cauchy in \(C([0,T_*];H^m)\), because the two cutoff tails vanish in their defining \(L^2\) coordinates and at one available initial/interior time. Passing to the limit constructs the continuous representative and the compatible endpoint. Source: [complete-original-compilation-2 LF403–419](../SOURCES.md#S291).

The highlighted critical block applies this operation to its own fractional adjacent coordinates:

\[
u\in L^2(I;H^{5/2}),\quad u_t\in L^2(I;H^{1/2})
\quad\Longrightarrow\quad
E_{3/2}\in L^\infty(I)\cap L^1(I),
\]

\[
\sup_{t<T_*}E_{3/2}(t)
\le E_{3/2}(0)+
\|u_t\|_{L^2H^{1/2}}\|u\|_{L^2H^{5/2}}.
\]

For the homogeneous critical height the final source correction uses the stronger coordinates \(u,u_t\in L^2(I;H^1)\), so

\[
H'=\operatorname{Re}(\Lambda^{1/2}u_t,\Lambda^{1/2}u)\in L^1(I),
\quad H\in W^{1,1}(I),
\quad\mathcal P_{1/2}=H'+2\nu E_{3/2}\in L^1(I).
\tag{13}
\]

This avoids the low-frequency question in the discarded homogeneous negative-order pairing. The critical production prefix is consequently bounded by its \(L^1\) norm. Source: [short LF113–140](../SOURCES.md#S289); [complete-original-compilation-2 LF1654–1676](../SOURCES.md#S291). This block is a coordinate consequence of its rectangle/intersection input. It is not placed before that input as a universal critical-current supplier requirement.

## Return to the original fluid and restart

Either endpoint route produces one divergence-free \(u_*\in H^\infty\) and the original pressure-complete jet. Recurrence (1) passes to the endpoint in sufficiently high finite Sobolev orders. A local restart from \(u_*\) has exactly that same recursively determined pressure and temporal jet. Thus all old and new mixed derivatives match, the pieces glue smoothly, and uniqueness preserves the same history. The extension contradicts an alleged finite maximal time. The original complete execution of this route is [complete-original-compilation-2 LF1371–1444](../SOURCES.md#S291).

The acquired proof order is therefore

\[
u_0\ \longrightarrow\ \text{actual initial jet and finite rectangles}
\ \longrightarrow\ \text{compatible projective intersection}
\ \longrightarrow\ \mathscr S_0(I)
\ \longrightarrow\ u_*,\text{ actual complete jet}
\ \longrightarrow\ \text{same-history restart}.
\]

The original also allows entry through completed height coordinates or one complete actual temporal row, as derived above. The datum-to-finite-rectangle theorem is explicitly applied at complete-original-compilation-2 LF1460; this acquisition records its source role and exact whole-terminal output (5). It does not replace that theorem with a critical-energy bound, a linear graph inverse, a late complete-parent inversion, or a higher-temporal-prefix requirement. All constructions in this note retain the actual hypotheses and interval of their entry.

## The independent aligned-action calculation

The original explicitly separates this calculation from entry through \(\mathscr S_0\). On every strict classical interval define \(\omega=\nabla\times u\), \(S=(\nabla u+\nabla u^T)/2\), and the positive/negative spectral parts \(S=S_+-S_-\). Put

\[
y=\|\omega\|_2^2=\|\nabla u\|_2^2,
\quad z=\|\nabla\omega\|_2^2,
\quad A=\int\omega\cdot S_+\omega,
\quad C=\int\omega\cdot S_-\omega.
\]

Transport cancels in the original vorticity pairing; stretching is retained. Thus

\[
\frac12 y(t)+\nu\int_0^t z+\int_0^t C
=\frac12y(0)+\int_0^t A.
\]

Fourier Cauchy–Schwarz and the unforced kinetic coordinate give

\[
2H(t)\le\|u_0\|_2\sqrt{y(t)},
\quad
\int_0^tA\ge\frac{2H(t)^2}{\|u_0\|_2^2}
-\frac12\|\nabla u_0\|_2^2
\qquad(u_0\ne0).
\]

Consequently a sequence \(t_j\uparrow T_*\) with \(H(t_j)\to\infty\) forces \(\int_0^{T_*}A=\infty\) and \(\limsup_{t\uparrow T_*}A(t)=\infty\). It does not force monotonicity or unbounded \(A\) along that same sequence. For zero datum the zero solution follows from uniqueness. This is the separate original implication at [complete-original-compilation-2 LF950–989](../SOURCES.md#S291), rather than an estimate used to construct the rectangle intersection.

After the closed-slab intersection has been obtained, the source also derives two geometric consequences: \(H_{>K}(t)\le\tfrac12K^{1-2m}\|u(t)\|_{\dot H^m}^2\) for \(m>1/2\), giving a uniformly vanishing critical ultraviolet tail; and the material separation bound \(|X(a,t)-X(b,t)|\ge|a-b|\exp(-\int_0^t\|\nabla u\|_\infty)\). These are consequences of the completed compatible history, not additional production conditions. Locations: complete-original-compilation-2 LF734–743 and LF1105–1113.
