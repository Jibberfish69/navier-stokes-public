# Learned Navier–Stokes chain: reciprocal columns on one whole interval

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. The reciprocal prefix is a sufficient consumer input; no infinite prefix is demanded of the original producer. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


2026-10-06. Mathematical source verification, extending the endpoint audit. This record derives the actual finite reverse operation and its composition with the forward spatial-column and completed-height operations; it does not use an status label as evidence for datum-generated membership.

Primary producing source: [native forced assembly, Section 7](../SOURCES.md#S152), equations R1–R10, lines 789–934. Its explicit predecessor is [forced temporal-column backward reconstruction](../SOURCES.md#S013), 153 lines. The latter proves the all-orders operation; the assembly sharpens it to a finite-prefix budget. The source history is explained in the [one-fluid spine, Sections 2–5](../SOURCES.md#S160). Mathematical conclusions below rest on the displayed equations and the checked operations.

**Verified result:** for the specified same classical history and source on a fixed whole finite interval, the complete temporal velocity tower, complete spatial velocity column, full mixed intersection, and all finite norm rectangles are equivalent. The completed-height representation is also equivalent when it retains every work term, the actual velocity jet, and the stated integrability domains. These equivalences are operations on this history. They preserve any already supplied whole-interval membership at its scope; they do not silently substitute compact-subinterval bounds.

## 1. Exact object, domains, and finite input

Let $I=(0,T)$, $0<T<\infty$, $\nu>0$. The actual pressure-normalized incompressible history is classical on every strict $[0,S]$, $S<T$. Its prescribed force is smooth through $T$, with every mixed derivative rapidly decreasing in space uniformly on $[0,T]$. Set

\[
 V_r=\partial_t^ru,\quad F_r=\partial_t^rf,\quad G_r=\mathbb PF_r,\qquad
 B_r=\sum_{a=0}^r\binom ra(V_a\cdot\nabla)V_{r-a}.
\]

The original complete equation and pressure are

\[
 V_{r+1}+B_r+\nabla Q_r=\nu\Delta V_r+F_r,\qquad
 Q_r=R_iR_j\sum_{a=0}^r\binom raV_{a,i}V_{r-a,j}
       -(-\Delta)^{-1}\nabla\cdot F_r,
\]

where $Q_r=\partial_t^rp$. The projected equation is an equivalent velocity identity, with the original pressure recovered by this exact formula; it does not omit the gradient force component.

For a finite integer $N\ge1$, the reverse operation takes the actual membership

\[
 u\in H^{N+1}(I;L^2_x).
 \tag{R1}
\]

It returns

\[
 V_j\in C([0,T];H^{2(N-j)}_x),\qquad0\le j\le N.
 \tag{R2}
\]

The following reconstruction verifies that implication rather than treating it as a slogan about parabolic order.

## 2. Time traces precede nonlinear spatial reconstruction

For each $j\le N$, $V_j,V_{j+1}\in L^2(I;L^2)$, so $V_j\in H^1(I;L^2)$ and has a unique continuous representative through both endpoints. Choosing one time at or below the quadratic mean, then integrating the next row, gives

\[
 b_j:=\sup_{[0,T]}\|V_j(t)\|_2
 \le T^{-1/2}\|V_j\|_{L^2(I;L^2)}
       +\sqrt T\,\|V_{j+1}\|_{L^2(I;L^2)}.
 \tag{R3}
\]

The force norms $d_j=\sup_{[0,T]}\|G_j\|_2$ are finite by the prescribed source class. All following equations are first used at strict classical times; their bounds remain fixed as time approaches $T$.

Pairing the original equation with $u$, incompressibility cancels transport and pressure and gives

\[
 \nu\|\nabla u\|_2^2
 =\operatorname{Re}\langle G_0-V_1,u\rangle
 \le b_0(b_1+d_0).
 \tag{R4}
\]

Thus $a_0^2:=\nu^{-1}b_0(b_1+d_0)$ bounds the gradient. The full original transport term satisfies

\[
 \|(u\cdot\nabla)u\|_2
 \le\|u\|_6\|\nabla u\|_3
 \le C\|\nabla u\|_2^{3/2}\|\Delta u\|_2^{1/2}.
\]

The first factor uses homogeneous $H^1\to L^6$; the second uses interpolation between $\nabla u\in L^2$ and $\nabla u\in L^6$, with the latter controlled by $D^2u$ and $\|D^2u\|_2=\|\Delta u\|_2$. Consequently, for $X=\|\Delta u\|_2$,

\[
 \nu X\le b_1+d_0+C a_0^{3/2}X^{1/2}.
\]

Young's inequality absorbs $\nu X/2$ and gives

\[
 \sup_{t<T}\|\Delta u(t)\|_2
 \le2(b_1+d_0)/\nu+C a_0^3/\nu^2.
 \tag{R5}
\]

Together with $b_0$, the low-frequency-complete elliptic estimate yields a uniform $H^2$ bound for $u$. This bound is obtained from the positive temporal prefix, not from the energy-level negative spatial norm of $u_t$.

## 3. Reconstruct the first spatial level of every retained temporal row

For $1\le r<N$, isolate the two endpoint allocations and retain the entire middle sum:

\[
 \nu\Delta V_r=V_{r+1}
 +\mathbb P\bigl((u\cdot\nabla)V_r+(V_r\cdot\nabla)u\bigr)
 +R_r-G_r,
\]
\[
 R_r=\mathbb P\sum_{a=1}^{r-1}\binom ra
                     (V_a\cdot\nabla)V_{r-a}.
 \tag{R6}
\]

The sum is empty for $r=1$. Suppose lower rows have been reconstructed uniformly in $H^2$. Since $H^2(\mathbb R^3)\hookrightarrow L^\infty$, each middle allocation is uniformly $L^2$. Define

\[
 g=\sup_{t<T}\|\nabla u(t)\|_3,\qquad
 L_r=b_{r+1}+d_r+\sup_{t<T}\|R_r(t)\|_2.
\]

The already reconstructed $u\in L^\infty_tH^2_x$ makes $g$ finite. In the $V_r$ pairing, the advecting-$u$ term cancels. The remaining top interaction is bounded by

\[
 |\langle(V_r\cdot\nabla)u,V_r\rangle|
 \le\|\nabla u\|_3\|V_r\|_6\|V_r\|_2
 \le Cg\,b_r\|\nabla V_r\|_2.
\]

Hence

\[
 \nu\|\nabla V_r\|_2^2
 \le L_rb_r+Cg\,b_r\|\nabla V_r\|_2,
\]

and Young's inequality gives the first estimate in R7. Taking the norm of the full equation, with both endpoint transport allocations retained, gives

\[
 \nu\|\Delta V_r\|_2
 \le L_r+\bigl(\|u\|_\infty+C\|\nabla u\|_3\bigr)
                              \|\nabla V_r\|_2.
 \tag{R7}
\]

The elliptic estimate then gives $V_r$ uniformly in $H^2$. Induction reconstructs $V_0,\ldots,V_{N-1}$ in $H^2$. The top available row $V_N$ remains continuous in $L^2$.

## 4. Two spatial gains consume one temporal row

Suppose the prefix $V_0,\ldots,V_K$ is uniformly in $H^m$, $m\ge2$. For every $r<K$, incompressibility gives

\[
 B_r=\nabla\cdot
       \sum_{a=0}^r\binom ra(V_{r-a}\otimes V_a).
\]

The whole tensor sum is $H^m$ by the spatial algebra estimate, so $B_r\in H^{m-1}$. The adjacent row $V_{r+1}\in H^m$ and $G_r\in H^m$. The first elliptic pass gives $V_r\in H^{m+1}$ for all $r<K$.

Every factor in the complete sum $B_r$ has index at most $r<K$. Thus every such factor has just gained $H^{m+1}$, and the second pass gives $B_r\in H^m$, then $V_r\in H^{m+2}$. Both passes use

\[
 \|v\|_{H^{q+2}}
 \le C_q\bigl(\|v\|_2+\|\Delta v\|_{H^q}\bigr),\qquad q\ge0.
\]

The $L^2$ term is essential at low frequency. This proves the actual finite rule

\[
 (V_0,\ldots,V_K)\in L^\infty_tH^m_x
 \ \Longrightarrow\
 (V_0,\ldots,V_{K-1})\in L^\infty_tH^{m+2}_x.
 \tag{R8}
\]

Start at $m=2$, $K=N-1$, and iterate. The result is the triangular budget $V_j\in L^\infty_tH^{2(N-j)}_x$ for all $j\le N$.

## 5. The top spatial orders are continuous through the endpoint

No small spatial loss remains in R2. Uniform $H^h$ bounds plus $C_tL^2$ give $C_tH^{h-\varepsilon}$ by interpolation, for any $0<\varepsilon<h$. Choose $\varepsilon=1/4$. Descend from $V_N\in C_tL^2$. At row $j<N$, let $h=2(N-j)\ge2$.

Every factor of $B_j$ has index at most $j$, so it is continuous in at least $H^{h-\varepsilon}$. This is a spatial algebra because $h-\varepsilon>3/2$. The complete tensor sum is continuous there; its divergence is continuous in $H^{h-1-\varepsilon}\subset H^{h-2}$. The adjacent row $V_{j+1}$ is already continuous in $H^{h-2}$ by descent, and the force has that continuity. Therefore

\[
 \nu\Delta V_j=V_{j+1}+\mathbb PB_j-G_j
            \in C([0,T];H^{h-2}).
\]

Apply the low-frequency elliptic estimate to $V_j(t)-V_j(s)$, also using its $L^2$ continuity. This upgrades the row to $C([0,T];H^h)$ exactly. The argument gives a compatible extension of the original distribution and does not construct a different solution.

## 6. Pressure and exact finite consequences

For $j<N$, all factors in $Q_j$ are continuous in $H^{2(N-j)}$, an algebra. For $j=N$, the two endpoint products use $u\in C H^{2N}\subset C L^\infty$ and $V_N\in C L^2$; every interior factor is at least $C H^2$. Their products therefore converge in $L^2$. The unprojected source potential obeys

\[
 \|(-\Delta)^{-1}\nabla\cdot F_j\|_{H^m}
 \le C_m\bigl(\|F_j\|_{L^1_x}
              +\|F_j\|_{H^{\max(m-1,0)}}\bigr).
\]

The $L^1_x$ bound controls low frequency, where the squared multiplier has integrable singularity $|\xi|^{-2}$ in dimension three. The high-frequency multiplier has order minus one. The force hypotheses make this map continuous through $T$. Thus the precise pressure output is

\[
 Q_j\in C([0,T];H^{2(N-j)}),\qquad0\le j\le N.
 \tag{R10}
\]

The top pressure row uses the unprojected $F_N$. The finite velocity reconstruction uses $G_0,\ldots,G_{N-1}$. This distinction is retained.

For each $0\le a\le N$, all actual derivatives $V_0,\ldots,V_a$ lie in $L^2(I;H^{2(N-a)})$. Similarly, $Q_0,\ldots,Q_a$ lie there. Hence

\[
 u,p\in H^a(I;H^{2(N-a)}).
 \tag{R9/R10}
\]

The exact rectangle

\[
 \mathfrak R_{n,m}(I)
 =\sum_{j=0}^n
  \bigl(\|V_j\|_{L^2H^{m+1}}^2+
        \|V_{j+1}\|_{L^2H^{m-1}}^2\bigr)
\]

is finite whenever

\[
 2(N-n)\ge m+1
 \quad\Longleftrightarrow\quad
 N\ge n+\left\lceil\frac{m+1}{2}\right\rceil .
\]

This condition pays both faces: the next row has regularity $2(N-n-1)\ge m-1$. It also implies $n<N$, so that next row is inside the recovered prefix. This is the source's sufficient finite budget, without an assertion of optimality.

## 7. Reciprocal all-orders operations on this same interval

Define

\[
 \mathscr T_\infty(I)=\bigcap_{q\ge0}H^q(I;L^2),\qquad
 \mathscr S_0(I)=\bigcap_{m\ge0}L^2(I;H^m),\qquad
 \mathscr X_\infty(I)=\bigcap_{r,m\ge0}H^r(I;H^m).
\]

For this actual equation and prescribed source:

\[
 u\in\mathscr T_\infty(I)
 \ \Longleftrightarrow\
 u\in\mathscr S_0(I)
 \ \Longleftrightarrow\
 u\in\mathscr X_\infty(I)
 \ \Longleftrightarrow\
 \text{every finite norm rectangle on }I\text{ is finite}.
\]

The time-to-space direction follows by taking arbitrarily long finite prefixes in R1–R10. For any requested mixed order $(r,m)$, choose $N\ge\max\{1,r+\lceil m/2\rceil\}$; a separate sufficient choice above gives any requested rectangle.

The reverse space-to-time operation uses the original equation:

\[
 \|u_t\|_{L^1(I;H^m)}
 \le\nu\sqrt T\,\|u\|_{L^2H^{m+2}}
 +C_m\|u\|_{L^2H^{m+2}}^2+\|\mathbb Pf\|_{L^1H^m}.
\]

Thus $u\in W^{1,1}(I;H^m)\subset C([0,T];H^m)$ for every finite $m$. The complete binomial velocity and normalized pressure recurrences then inductively give every $V_j,Q_j\in C([0,T];H^m)$, and therefore every finite mixed norm. This is the checked direct operation in [the unified framework, equation 48a](../SOURCES.md#S162), current unforced source 01:624–714, and forced source 02:508–570. The mixed-to-time and mixed-to-space directions simply select their actual coordinates. Rectangles and mixed norms are equivalent by the finite derivative-sum norm with sufficiently high spatial indices. No infinite sum or common all-order radius is used.

## 8. Connection to the original completed-height and cofinal rectangle constructions

The complete pressure/force height balance on temporal row $r$ is

\[
 E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\qquad
 E_{r,s}'=-2\nu E_{r,s+1}+\mathcal G_{r,s},
\]
\[
 \mathcal G_{r,s}
 =-\operatorname{Re}\langle\Lambda^sV_r,
      \Lambda^s(B_r+\nabla Q_r)\rangle
  +\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\]

Every global pressure pairing vanishes by divergence freedom, while $Q_r$ remains fixed in the field equation. Repeated differentiation and substitution give the exact completed readout

\[
 E_{r,s+k}
 =\frac{\partial_t^kE_{r,s}
 -\sum_{\ell=0}^{k-1}(-2\nu)^\ell
            \partial_t^{k-1-\ell}\mathcal G_{r,s+\ell}}
 {(-2\nu)^k}.
\]

Every differentiated work term is retained. The full temporal Gram contraction is

\[
 \partial_t^kE_{r,s}
 =\tfrac12\sum_{a=0}^k\binom ka
       \langle\Lambda^sV_{r+a},\Lambda^sV_{r+k-a}\rangle.
\]

For the base nonlinear work, its derivatives retain the complete allocations

\[
 \partial_t^q\mathcal P_{0,s}
 =-\sum_{a+b+c=q}\frac{q!}{a!\,b!\,c!}
       \operatorname{Re}\langle
       \Lambda^s((V_a\cdot\nabla)V_b),\Lambda^sV_c\rangle,
\]

and the force work retains

\[
 \partial_t^q\mathcal W_{0,s}
 =\sum_{a=0}^q\binom qa
       \operatorname{Re}\langle\Lambda^sF_a,\Lambda^sV_{q-a}\rangle.
\]

These are verified in unified framework 285–396, equations 24–31a, and assembly 72–99. The original unforced completed height is the specialization $F_r=0$, with $H=E_{0,1/2}$ and

\[
 R_k=\frac{H^{(k)}-
       \sum_{\ell=0}^{k-1}(-2\nu)^\ell
                      \partial_t^{k-1-\ell}\mathcal P_{0,\ell+1/2}}
                   {(-2\nu)^k}
     =E_{0,k+1/2}.
\]

The forced completed readout replaces $\mathcal P$ by $\mathcal P+\mathcal W$. On this same jet, retaining the kinetic low-frequency coordinate, the domain statement is

\[
 u\in L^2(I;L^2),\quad R_k\in L^1(I)\ \forall k
 \ \Longleftrightarrow\
 u\in\mathscr S_0(I).
\]

Indeed $\int_I R_k=\frac12\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2$; arbitrarily high half-integer weights plus $L^2$ control each finite inhomogeneous spatial norm. The reciprocal operation above then recovers the velocity-time tower, all mixed rows and the endpoint. Conversely, a time-only velocity tower produces the full spatial/mixed jet by R1–R10, hence the full completed readouts and their domains.

The scalar temporal regularity of $H$ alone is a different statement. The original representation retains its complete work graph and actual velocity jet; a signed temporal Gram anti-diagonal is not an individual diagonal norm. No scalar height is used to reconstruct an unrelated velocity.

The cofinal rectangle operation is the other finite direction, [unified framework, equations 43–47](../SOURCES.md#S162):

\[
 \mathfrak R_{0,M+2N}(I)
 \Rightarrow\mathfrak R_{1,M+2N-2}(I)
 \Rightarrow\cdots\Rightarrow\mathfrak R_{N,M}(I).
\]

At step $(n,m)$, let $R=\mathfrak R_{n-1,m+2}(I)$ and $I_0=\sum_{j<n}\|V_j(0)\|_{H^{m+2}}^2$. Adjacent trace pairing gives lower rows in $L^\infty_tH^{m+2}_x$, bounded by $I_0+R$, while the last next-time face gives $V_n\in L^2_tH^{m+1}_x$. The complete binomial sum gives

\[
 \|\mathbb PB_n\|_{L^2H^{m-1}}
 \le C_m2^n\sqrt{(I_0+R)R}.
\]

The equation retains the force and yields

\[
 \mathfrak R_{n,m}(I)
 \le(2+3\nu^2)R
   +3C_m^24^n(I_0+R)R
   +3\|\mathbb PF_n\|_{L^2H^{m-1}}^2.
\]

Thus the cofinal direction spends two spatial levels to acquire the next time row; the reverse temporal-prefix direction uses the same viscous equation to recover two spatial levels while shortening the time prefix. Both act on the same history and exact interval, with the nonlinear allocations and original pressure retained. They are reciprocal finite regularity operations; neither is replaced by a schematic linear heat relation.

## 9. Verification scope and preserved identities

The reverse implication R1–R10, its exact finite losses/gains, terminal continuity, pressure reconstruction, all-orders reciprocal composition, complete-height domain correspondence, and displayed cofinal substitution were executed and checked. The ensuing common endpoint/restart is covered in endpoint.md.

Whether the original datum-to-history producer supplies the whole-interval membership is determined by its own actual source derivation, which the parent is separately reading. This record neither reclassifies that prior producer from missing recall nor establishes it merely by these equivalences. The checked operations use the full $I=(0,T)$ exactly; statements on all strict subintervals retain that narrower interval scope until their original producer supplies more.

Source SHA-256 identities:

| Source | SHA-256 |
|---|---|
| Native forced assembly, 1,795 lines | 15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5 |
| Forced temporal-column backward reconstruction, 153 lines | 9a0699ebf307b6cf60f74a0ee71300d6e0ce3261a2530c3e4249bcfbccec8243 |
| Unified forced/unforced framework | a269e5bf10e85086a8f52833a368e84043140a5f1c9b932e6b0887a12bcf378e |
| One-fluid reversible-intersection spine | 2b3821c4ae91cb8843f3192196dcbb2a7c67cfeb7814e2e04611a924c85e90a4 |
