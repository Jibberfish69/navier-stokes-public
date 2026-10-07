# Exact finite joined balance and normalized distributional passage

**Reviewed scope and currentness.** Current finite cancellation/distributional execution; later joined endpoint report composes and adds stronger response L²/cutoff traces. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a bounded verification of the original reciprocal sums. It checks every factor of \(N\), both pressure-complete parent insertions, prescribed-force terms, and the admissible terminal test functions. It does not change the earlier audit reports or draw an overall global-regularity verdict.

The main equations are [PRM.1–PRM.17](../SOURCES.md#S229), [PRM.32a–32j](../SOURCES.md#S229), and [FIH.10–FIH.14](../SOURCES.md#S212). The force convention is the original [F1–F4](../SOURCES.md#S154) and [F24–F25](../SOURCES.md#S154).

## 1. Exact definitions and pressure custody

Let \(I=(0,T_*)\), with \(T_*<\infty\), and retain the actual smooth maximal history. Put
\[
Q=-\mathbb P((u\cdot\nabla)u),\qquad G=\mathbb Pf,\qquad
u_t+\nu\Lambda^2u=Q+G,\qquad
w=u-e^{-\nu t\Lambda^2}u_0.
\]
Thus \(w\) is the total response to \(Q+G\). In physical variables the complete right side is \(f-(u\cdot\nabla)u-\nabla p\), with both the nonlinear and force pressure fixed by F24–F25.

At output \(k\ne0\), use the original critical normalization
\[
\gamma=\nu|k|^2,\quad c=|k|/\nu,\quad
g=\widehat Q(k)/|k|,\quad h=\widehat G(k)/|k|,\quad
z=\gamma\widehat w(k)/|k|.
\]
Here \(z\) is the PRM **forward scaled response**, not the backward field \(z_T\) of the earlier causal-Gram audit. Its equation is
\[
z'=\gamma(g+h-z).
\]
For zero force set \(h=0\).

Retain the actual ordered velocity parents \(p+q=k\), with
\[
\delta_p=\nu(|p|^2+|q|^2),\qquad
\Theta_p=-ic_{\mathcal F}|k|^{-1}\mathbb P_k
[(\widehat u(p)\cdot q)\widehat u(q)],\qquad g=\int\Theta_p\,dp.
\]
Their complete evolution is
\[
\Theta_p'=-\delta_p\Theta_p+\mathcal N_p,
\]
\[
\mathcal N_p=-ic_{\mathcal F}|k|^{-1}\mathbb P_k
\left[
(\widehat{Q+G}(p)\cdot q)\widehat u(q)
+(\widehat u(p)\cdot q)\widehat{Q+G}(q)
\right].
\]
The two inner projected \(Q+G\) responses and the outer \(\mathbb P_k\) remain distinct. Incompressibility gives \(\widehat u(p)\cdot q=\widehat u(p)\cdot k\), and likewise for the full solenoidal \(Q+G\). The zero output has the source's zero-mode interpretation.

Write real Hilbert pairings below; summation/integration over all outputs and helicities is understood when taking a global stock.
\[
r_a=\frac{\delta_a}{\gamma+\delta_a},\quad
a_N(\delta_a)=1-r_a^N,\quad
g_N=\int a_N\Theta_a,\quad
S_N=\int\delta_a a_N\Theta_a,\quad
\mathcal N_N=\int a_N\mathcal N_a.
\]
The filter is time-independent. Therefore
\[
g_N'=-S_N+\mathcal N_N.
\]

## 2. Complete finite sums with every \(N\) factor

Use the original PRM definitions
\[
X_m=\int\frac{r_a^m}{\gamma+\delta_a}\Theta_a,\quad
Y_m=\int r_a^m\Theta_a,\quad
F_m=c\langle z,Y_m\rangle,\quad B_m=c\langle z,X_m\rangle,
\]
\[
E=\frac c{2\gamma}\|z\|^2,\qquad I=c\|z\|^2.
\]
The exact finite geometric sums give
\[
\sum_{m<N}X_m=g_N/\gamma,\qquad
\sum_{m<N}Y_m=g_N+S_N/\gamma.
\]
Consequently
\[
\overline B_N=\frac c\gamma\langle z,g_N\rangle,\qquad
\overline F_N=c\langle z,g_N\rangle+\frac c\gamma\langle z,S_N\rangle.
\]
The complete joined parent storage is
\[
\overline C_N=
\frac c2\iint\frac{a_N(\delta_a)+a_N(\delta_b)}
{\delta_a+\delta_b}\langle\Theta_a,\Theta_b\rangle\,da\,db.
\]
Define the two-leg insertion exactly:
\[
\mathcal I_N=
\frac c2\iint\frac{a_N(\delta_a)+a_N(\delta_b)}
{\delta_a+\delta_b}
\bigl(\langle\mathcal N_a,\Theta_b\rangle+
\langle\Theta_a,\mathcal N_b\rangle\bigr)\,da\,db.
\]
Differentiating both parents gives
\[
\overline C_N'=-c\langle g,g_N\rangle+\mathcal I_N.
\]
Separate the complete parent insertion remainder from the direct prescribed-source cross:
\[
\overline R_N^{\,\mathrm{full}}
:=\frac c\gamma\langle z,\mathcal N_N\rangle+\mathcal I_N,\qquad
D_N:=c\langle h,g_N\rangle.
\]
For zero force, \(\overline R_N^{\,\mathrm{full}}\) is precisely
\(\sum_{m<N}R_{{\rm NL},m}\) of PRM.17.

The exact forced finite homological equation is
\[
\boxed{
\overline F_N
=-(\overline B_N+\overline C_N)'
+\overline R_N^{\,\mathrm{full}}+D_N.}
\]
The direct \(D_N\) term is necessary: it comes from the \(h\) contribution in \(z'\), separately from the two force-parent insertions already inside \(\mathcal N_a\).

## 3. Calculate the coupled remainder before any estimate

Set \(A_N=\overline B_N+\overline C_N\). Substitute
\(\mathcal N_N=g_N'+S_N\) and
\(\mathcal I_N=\overline C_N'+c\langle g,g_N\rangle\):
\[
\begin{aligned}
\overline R_N^{\,\mathrm{full}}-\overline F_N+D_N
={}&\frac c\gamma\langle z,g_N'+S_N\rangle
+\overline C_N'+c\langle g,g_N\rangle\\
&-c\langle z,g_N\rangle-\frac c\gamma\langle z,S_N\rangle
+c\langle h,g_N\rangle\\
={}&\overline C_N'+\frac c\gamma\langle z,g_N'\rangle
+c\langle g+h-z,g_N\rangle\\
={}&\overline C_N'+\frac c\gamma
\bigl(\langle z,g_N'\rangle+\langle z',g_N\rangle\bigr)
=A_N'.
\end{aligned}
\]
Thus
\[
\boxed{
\overline R_N^{\,\mathrm{full}}-\overline F_N+D_N=A_N'.}
\]
For zero force \(D_N=0\). The \(S_N\) terms cancel exactly; no estimate or independent first-parent-rate payment has been inserted.

The complete finite response sum is
\[
\widetilde K_N:=\sum_{m<N}(E+B_m+C_m)=NE+A_N.
\]
Put \(F_0=c\langle z,g\rangle\) and \(F_h=c\langle z,h\rangle\). Then
\[
E'=F_0+F_h-I,
\]
\[
\boxed{
\widetilde K_N'
=N(F_0+F_h-I)
+\overline R_N^{\,\mathrm{full}}-\overline F_N+D_N.}
\]
The dissipation coefficient is \(N\), the two base source currents have coefficient \(N\), and the complete joined remainder has coefficient one.

## 4. Paid storage bounds and the normalized derivative

The previous [joined-kernel calculation](A0405-joined-parent-age-uniformity-20261006.md) proves from PRM.32g–h
\[
0\le\overline C_N\le2C_\infty,\qquad
\overline C_N\ge\frac c{2N\gamma}\|g_N\|^2,
\]
\[
\widetilde K_N\ge\frac c{2N\gamma}\|Nz+g_N\|^2,\qquad
|\overline B_N|\le2\sqrt{NE\,\overline C_N}.
\]
These inequalities remain valid after joining every output.

For the admitted force put
\[
K=\|u_0\|_2+\int_I\|G\|_2,\quad
E_1=\sqrt2K^2\sqrt{T_*/\nu},\quad
C_1=\frac{K^4}{3\pi^2\nu^3}.
\]
The actual kinetic budget and source Sobolev constants give
\[
\int_I E\le E_1,\qquad
\sup_N\int_I\overline C_N\le C_1.
\]
It follows that
\[
\boxed{
\|A_N/N\|_{L^1(I)}
\le\varepsilon_N:=
\frac2{\sqrt N}\sqrt{E_1C_1}+\frac{C_1}{N}\to0.}
\]
Define \(r_N=\overline R_N^{\,\mathrm{full}}-\overline F_N+D_N\).
For every \(\phi\in C_c^\infty(I)\),
\[
\boxed{
\left\langle r_N/N,\phi\right\rangle
=-\int_I (A_N/N)\phi',\qquad
|\langle r_N/N,\phi\rangle|
\le\|\phi'\|_\infty\varepsilon_N.}
\]
Thus \(r_N/N\to0\) in \(\mathcal D'(I)\), with a datum-controlled rate. Consequently
\[
\widetilde K_N/N\to E\quad\hbox{in }L^1(I),\qquad
(\widetilde K_N/N)'\to E'=F_0+F_h-I\quad\hbox{in }\mathcal D'(I).
\]
The signed identity and the storage estimate are different statements: the former is exact finite cancellation, and the latter supplies the distributional limit.

## 5. Which individual normalized terms are identified?

### Compact interior tests

On each fixed \(J\Subset[0,T_*)\), the actual history and its full \(Q+G\) row have bounded fixed Sobolev norms. Since \(0\le a_N\le1\), actual Fourier convolution gives bounds independent of \(N\). For example, after retaining all phases for the cancellation above, absolute domination for this local passage yields
\[
|\overline F_N|
\le6c_{\mathcal F}\|w\|_2\|\widehat u\|_1\|\Lambda^2u\|_2.
\]
Indeed its full parent factor is
\(|\widehat w(k)|(|k|^2+|p|^2+|q|^2)
|\widehat u(p)||\widehat u(q)|\), and
\(|k|^2\le2(|p|^2+|q|^2)\).

For \(H=Q+G\), the first insertion term is bounded by
\[
\left|\frac c\gamma\langle z,\mathcal N_N\rangle\right|
\le\frac{c_{\mathcal F}}{\nu}\|w\|_2
\bigl(\|\widehat H\|_1\|u\|_2+
\|\widehat u\|_1\|H\|_2\bigr).
\]
The complete two-leg term satisfies
\[
|\mathcal I_N|\le4\sqrt{C_\infty(\Theta)C_\infty(\mathcal N)}.
\]
This follows from positivity and \(\overline C_N\le2C_\infty\) applied to the bilinear parent form. Here
\[
C_\infty(\mathcal N)
=\nu^{-1}\int_0^\infty
\|\Lambda^{-1/2}DQ(e^{-\nu s\Lambda^2}u)
[e^{-\nu s\Lambda^2}H]\|_2^2ds
\]
is uniformly bounded on \(J\). Explicitly, the source's dual Sobolev/Hölder estimates give
\[
C_\infty(\mathcal N)
\le\frac{4}{3\pi^2\nu^2}
\min\{\|\nabla u\|_2^2\|H\|_2^2,
\|\nabla H\|_2^2\|u\|_2^2\}.
\]
These are finite fixed-order local bounds; none assumes a whole-terminal high row.

Therefore the individual terms do have the local conclusions
\[
\overline F_N/N\to0,\qquad
\overline R_N^{\,\mathrm{full}}/N\to0
\quad\text{strongly in }L^1_{\rm loc}(I),
\]
and hence separately in \(\mathcal D'(I)\). Their existence should not be confused with separately datum-bounded \(L^1(I)\) norms or separate terminal signed primitives.

### A prescribed term has an additional global estimate

The direct force cross is separately controlled on all of \(I\). The positive kernel lower bound gives, after output integration,
\[
\frac{|D_N|}{N}
\le\sqrt{\frac2N}\,
\sqrt{\overline C_N\,\|\Lambda^{1/2}G\|_2^2}.
\]
Consequently
\[
\boxed{
\|D_N/N\|_{L^1(I)}
\le\sqrt{\frac{2C_1}{N}}\,
\|\Lambda^{1/2}G\|_{L^2(I;L^2)}\to0.}
\]
The actual force class pays this norm at arbitrary amplitude. Also
\[
F_h=\langle w,\Lambda G\rangle,\qquad
|F_h|\le2K\|\Lambda G\|_2,
\]
so the unnormalized base force work is globally integrable and prescribed-source controlled.

Thus \((\overline R_N^{\,\mathrm{full}}-\overline F_N)/N\to0\) in distributions as well. Whole-terminal control of this signed difference follows from the aggregate identity and the separate \(D_N/N\) bound; it does not assert whole-terminal control of its two summands separately.

## 6. Exact strict-prefix endpoints

For every \(S<T_*\) and \(\phi\in C^1([0,S])\),
\[
\boxed{
\int_0^S\phi\,r_N/N
=\phi(S)A_N(S)/N-\phi(0)A_N(0)/N
-\int_0^S\phi'A_N/N.}
\]
The initial response is zero, so
\[
A_N(0)=\overline C_N(u_0),\qquad
0\le A_N(0)\le2C_\infty(u_0).
\]
At every fixed \(S<T_*\),
\[
|A_N(S)|/N
\le2\sqrt{2E(S)C_\infty(S)/N}+2C_\infty(S)/N\to0.
\]
Taking \(N\to\infty\) with \(S\) fixed is therefore justified even when \(\phi(S)\ne0\). This is not a uniform statement in \(S\uparrow T_*\).

## 7. Terminal weights that are justified

Take \(\phi\in C^1([0,T_*])\) with \(\phi(T_*)=0\). Let
\(\chi_\eta=1\) below \(T_*-2\eta\), zero above \(T_*-\eta\), and
\(|\chi_\eta'|\le C/\eta\). Define the signed terminal passage by a cutoff:
\[
\mathfrak R_N(\phi)
:=\lim_{\eta\downarrow0}\int_I\phi\chi_\eta r_N.
\]
The exact identity gives
\[
\int_I\phi\chi_\eta r_N
=-\phi(0)A_N(0)-\int_I A_N(\phi\chi_\eta)'.
\]
Because \(|\phi(t)|\le\|\phi'\|_\infty(T_*-t)\), the derivative-of-cutoff term is bounded by a constant times
\(\|\phi'\|_\infty\int_{T_*-2\eta}^{T_*}|A_N|\), which tends to zero. Hence
\[
\boxed{
\mathfrak R_N(\phi)
=-\phi(0)A_N(0)-\int_I\phi'A_N.}
\]
In particular,
\[
\boxed{
|\mathfrak R_N(\phi)/N|
\le\frac{2|\phi(0)|C_\infty(u_0)}N
+\|\phi'\|_\infty\varepsilon_N\to0.}
\]
This is a canonical cutoff-regularized signed aggregate passage. It does not assert absolute integrability of the separate remainder/current terms.

The same operation on the normalized complete balance gives
\[
\lim_{N\to\infty}\lim_{\eta\downarrow0}
\int_I\phi\chi_\eta\,\widetilde K_N'/N
=-\int_I\phi'E.
\]
The aggregate estimate is uniform in the cutoff parameter: \((\phi\chi_\eta)'\) is uniformly bounded when \(\phi(T_*)=0\). Thus the two limits can also be interchanged for the normalized aggregate. The surviving source identity is
\[
\lim_{\eta\downarrow0}\int_I\phi\chi_\eta(F_0+F_h-I)
=-\int_I\phi'E.
\]
For the concrete weight \(\phi(t)=T_*-t\),
\[
\mathfrak R_N(\phi)/N
=-T_*\overline C_N(u_0)/N+\int_I A_N/N\to0,
\]
\[
\lim_{\eta\downarrow0}
\int_I(T_*-t)\chi_\eta(F_0+F_h-I)=\int_I E.
\]
These equalities retain the complete signed currents. Finite signed difference does not independently identify the positive \(I\) integral.

There is also a common cofinal sequence of strict endpoints giving the same weighted aggregate value. Since \(E+C_\infty\in L^1(I)\), choose \(S_j\uparrow T_*\) with
\((T_*-S_j)(E(S_j)+C_\infty(S_j))\to0\).
The pointwise bound for \(A_N/N\) then makes
\(\phi(S_j)A_N(S_j)/N\to0\), uniformly in \(N\ge1\).
This cofinal statement is weaker than an ordinary upper-face limit along every \(S\uparrow T_*\).

## 8. Terminal weights not established by these bounds

When \(\phi(T_*)\ne0\), the exact strict-prefix formula retains
\(\phi(S)A_N(S)/N\). The proved \(L^1(I)\) storage bounds do not give that upper-face trace or a uniform-in-\(S\) bound. A cutoff derivative now has size \(1/\eta\) multiplying a nonvanishing terminal weight; its term is not controlled by the existing \(L^1\) statement.

Likewise, the separate \(\overline R_N^{\,\mathrm{full}}/N\) and
\(\overline F_N/N\) terminal weighted integrals have not been identified by the paid aggregate bound. Their local distributional limits are verified, and the normalized direct prescribed-force cross has a separate whole-terminal \(L^1\) limit. Those are the precise distinct conclusions.

No factor of \(N\), pressure coordinate, force-parent insertion, base force work, or terminal face is suppressed in this passage.
