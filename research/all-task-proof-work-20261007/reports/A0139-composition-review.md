# Independent check of the executed proof composition

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. N90 is an independently sufficient later route, not an upstream requirement of the original producer. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This review checks equations (10)–(17) of [the composition note](A0609-source-proof-composition.md), the original completed-height formula, the full first-binomial nonlinear-functional equation, and the associated positive Gram contractions. All original sources were read only. The checks below concern one actual history on each strict prefix (0<S<T_*), and explicitly identify the inputs needed to pass to (I=(0,T_*)).

**Result.** Equations (10)–(17) have the correct signs, coefficients and nonlinear weights. The newly executed quadratic criterion (17) is valid at its stated separated-root scope. The original N90 equation is indeed a simultaneous coercive contraction that supplies a single terminal (D) entry once its upper intrinsic prefix is bounded. The checked positive Gram contractions do not remove that prefix or the intrinsic nonlinear square in (13).

## Full second temporal row and pressure square

Write (B(v,w)=\mathbb P[(v\cdot\nabla)w]), (B=B(u,u)), (g=\mathbb Pf),

\[
K=\nu\Delta u-B,
\qquad \mathcal A_uh=\nu\Delta h-B(u,h)-B(h,u).
\]

For solenoidal (u,h), integration by parts, with both nonlinear allocations retained, gives

\[
\langle u,B(u,h)\rangle=-\langle B,h\rangle,
\qquad \langle u,B(h,u)\rangle=0,
\]

hence

\[
\langle u,\mathcal A_uh\rangle
=\langle\nu\Delta u+B,h\rangle.
\tag{R1}
\]

Substituting the complete (h=K) yields precisely

\[
\langle u,\mathcal A_uK\rangle
=\nu^2\|\Delta u\|_2^2-\|B\|_2^2.
\tag{R2}
\]

For (S_2=\mathcal A_ug+g_t) and (u_t=K+g), the same adjoint identity gives

\[
\langle u,S_2\rangle
=\frac d{dt}\langle u,g\rangle+2\langle B,g\rangle-\|g\|_2^2.
\tag{R3}
\]

Combining these with the actual Gram anti-diagonal

\[
E_0''=\|u_t\|_2^2+\langle u,u_{tt}\rangle,
\qquad E_0'=-\nu\|\nabla u\|_2^2+\langle u,g\rangle
\]

gives exactly

\[
\|u_t\|_2^2+\nu^2\|\Delta u\|_2^2
+\nu\frac d{dt}\|\nabla u\|_2^2=\|g-B\|_2^2.
\tag{R4}
\]

Pressure is restored by orthogonality: since (\nabla p=(I-\mathbb P)(f-(u\cdot\nabla)u)),

\[
\|f-(u\cdot\nabla)u\|_2^2
=\|g-B\|_2^2+\|\nabla p\|_2^2.
\]

Thus (R4), integrated on (0<S<T_*), proves both composition (12) and (13), with the displayed pressure square intact. These operations are the actual complete temporal/Gram operations in [native assembly J10–J13d, physical LF1583–1726](../SOURCES.md#S152), and the pressure-complete square in [N16, LF440–500](../SOURCES.md#S153).

## Positive Gram contractions and their direction

In the unforced case the kinetic (2\times2) Gram matrix has entries

\[
C_{00}=\|u\|_2^2,\quad
C_{01}=\langle u,u_t\rangle=-\nu\|\nabla u\|_2^2,
\quad C_{11}=\|u_t\|_2^2.
\]

Its positivity gives

\[
\|u\|_2^2\|u_t\|_2^2\ge\nu^2\|\nabla u\|_2^4.
\tag{R5}
\]

This supplies a lower bound for the temporal square. If (Q=\int_I\|u_t\|_2^2) is supplied, it pays a fourth-power gradient integral; positivity alone does not give an upper (Q) bound.

For any fixed finite coefficient vector (z), put (W=\sum_Az_AJ_A). The full J10 contraction is

\[
\frac12\frac d{dt}\|W\|_2^2+\nu\|\nabla W\|_2^2
=-\Big\langle\sum_Az_A\mathcal B_A,W\Big\rangle
+\Big\langle\sum_Az_AF_A,W\Big\rangle.
\tag{R6}
\]

Each complete mixed nonlinear allocation is present. Integrated pressure vanishes by solenoidality; before integration the pressure flux is exactly the J13a flux. Replacing each full row (\mathcal B_A+\nabla\Pi_A=\nu\Delta J_A-J_{A+\text{time}}+F_A) in J10 returns

\[
C'_{AB}=\langle J_{A+\text{time}},J_B\rangle
+\langle J_A,J_{B+\text{time}}\rangle.
\tag{R7}
\]

Consequently this substitution is the actual Gram derivative, without a new upper terminal norm estimate. Equations (R2)–(R4) execute its central second-row contraction rather than discarding the higher corner.

## Complete heights and the simultaneous nonlinear-functional contraction

The original short source, [equations (9)–(16), physical LF42–68](../SOURCES.md#S289), has (E_s=\tfrac12\|\Lambda^su\|_2^2), (H=E_{1/2}), and

\[
E_s'=-2\nu E_{s+1}+\mathcal P_s,
\qquad H^{(n)}=(-2\nu)^nE_{n+1/2}
+\sum_{j<n}(-2\nu)^j\partial_t^{n-1-j}\mathcal P_{j+1/2}.
\]

Integrating the second equation and substituting the lower completed boundary row gives exactly

\[
2\nu\int_0^S E_{n+1/2}
=E_{n-1/2}(0)-E_{n-1/2}(S)+\int_0^S\mathcal P_{n-1/2}.
\tag{R8}
\]

All lower boundary derivatives cancel through their actual completed identities; the last production prefix has the sign shown. At (n=1), a bounded upper (\int_0^S\mathcal P_{1/2}) gives the single (D=\int_I\|\Lambda^{3/2}u\|_2^2) entry directly.

For the complete nonlinear source (q=-B), [N46, physical LF1173–1199](../SOURCES.md#S153) gives in the unforced case

\[
q_t+\nu\Lambda^2q=Dq(u)[q]+2\nu\mathcal C(u),\qquad
r_Q'+\nu b_Q^2=J_{\rm int},
\]

\[
r_Q=\tfrac12\|\Lambda^{-3/2}q\|_2^2,\quad
b_Q^2=\|\Lambda^{-1/2}q\|_2^2,\quad
J_{\rm int}=\langle Dq(u)[q]+2\nu\mathcal C(u),\Lambda^{-3}q\rangle.
\]

The negative powers and the coefficient (2\nu\mathcal C(u)) pass an independent product-rule check: (Dq(u)[\Lambda^2u]=\Lambda^2q-2\mathcal C(u)).

The critical (2\times2) Gram matrix of (\Lambda^{-1/2}q) and (\Lambda^{3/2}u) gives (J^2\le b_Q^2D(t)), with (J=\langle q,\Lambda u\rangle), and its exact difference square is

\[
Z^2=b_Q^2+\nu^2D(t)-2\nu J,
\qquad Z=\|\Lambda^{-1/2}u_t\|_2.
\]

Together with (H'+\nu D(t)=J), the actual simultaneous combination is

\[
(r_Q+2\nu^2H)'+\nu^3D(t)+\nu Z^2=J_{\rm int}.
\tag{R9}
\]

This is the original [N89–N90, physical LF2323–2363](../SOURCES.md#S153), and verifies composition (15). It is coercive, and **one upper prefix bound** (\sup_{S<T_*}\int_0^S J_{\rm int}<\infty) pays (D). The kinetic datum pays (\int_Ir_Q), a different coordinate from this upper prefix. Using the full (q) equation to complete (J_{\rm int}) reproduces (R9). In the forced case the same equation retains (J_g+2\nu^2\langle g,\Lambda u\rangle); N47/N91–N92 pay those source insertions at arbitrary admitted force amplitude.

Finally, the complete first weak kinetic square is

\[
\|u_t\|_{\dot H^{-1}}^2
=\nu^2\|\nabla u\|_2^2+\|q\|_{\dot H^{-1}}^2,
\tag{R10}
\]

because its cross term is (-2\nu\langle q,u\rangle=0\). This verifies composition (16) pointwise on the actual smooth prefixes. The supplied (q\in L^2\dot H^{-3/2}\cap L^1B^{-1/2}_{2,1}) interpolates to time exponent (4/3) at spatial order (-1); it does not supply the time exponent two at that order in (R10).

## Check of the improved finite criterion

Let (X(S)=\int_0^S(\|u_t\|_2^2+\nu^2\|\Delta u\|_2^2)), (y_0=\|\nabla u_0\|_2^2), and (K_T=\|u_0\|_2+\int_I\|g\|_2\). The prescribed source remainder is exactly

\[
\mathcal R_g(S)=\int_0^S(\|g\|_2^2-2\langle B,g\rangle)
=\langle u(S),g(S)\rangle-\langle u_0,g(0)\rangle
-\int_0^S\langle u,S_2\rangle.
\]

Both proposed upper bounds forming (A_g\) follow from this identity. The bound involving (S_2) uses only its displayed datum/source-paid (L^2L^2) norm. The second uses (\langle B,g\rangle=-\int u_i u_j\partial_jg_i), hence the symmetric gradient operator norm. Both bounds are nonnegative: for the first, (K_T\sup_I\|g\|_2-\langle u_0,g(0)\rangle\ge0); for the second this is explicit.

With the Fourier (H^2) norm, Cauchy–Schwarz gives (\|u\|_\infty^2\le(8\pi)^{-1}\|u\|_{H^2}^2). Also

\[
\sup_{t\le S}\|\nabla u(t)\|_2^2\le y_0+X(S)/\nu,
\]

\[
\int_0^S\|u\|_{H^2}^2\le L+X(S)/\nu^2,
\quad L=T_*K_T^2+K_T^2/\nu.
\]

The latter uses the exact forced kinetic bound (\int_I\|\nabla u\|_2^2\le K_T^2/(2\nu)), obtained by integrating the time-dependent bound (\|u(t)\|_2\le\|u_0\|_2+\int_0^t\|g\|_2\), not by multiplying a terminal force integral twice. Combining with the undoubled projected nonlinear square proves composition (17):

\[
X(S)\le\nu y_0+A_g+
\frac{(y_0+X(S)/\nu)(L+X(S)/\nu^2)}{8\pi}.
\]

The continuity trap applies when (b<1\) and ( (1-b)^2>4ac\), with (a,b,c\) as defined in the composition. Since (c\ge0\), (X(0)=0\) starts on the lower branch. Thus this criterion really supplies a finite (Q\), followed by the established single-entry continuation. Its scope is the stated quantitative horizon/datum/source condition; it does not establish that condition for arbitrary data.

Two notation clarifications would make the parent note fully explicit: (q\in\mathbb N_0\) in its temporal-entry equation (1), and (y_m=\|\Lambda^m u\|_2^2\) in (3). The weighted multinomial summation in [BPF10–BPF13, physical LF105–237](../SOURCES.md#S316) verifies that energy definition and its critical commutator estimate.

## Source hashes rechecked

The following SHA-256 values were rechecked after this review and match the prior baseline for the four previously hashed sources:

| Source | SHA-256 |
|---|---|
| Original short attachment short-original | `b38542d20b7e931dd3f53298c0f593194b3f41ae3b4fdf9f63b8b8850243f037` |
| Original full attachment complete-original-compilation-2 | `eb4e2e6c471e60606a9925fc3f88f51fb9722d86109d9cdfb26c931a4f875b40` |
| Native assembly | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` |
| Native proof custody | `be26593f79929a37c9d88ce48ea00a0c5b2f9af919717f2bf9c7d5777d5cc311` |
| First signed-prefix construction, newly recorded here | `2d9dae4ad91b5e9bf934aeed82a9d5acf82d79d3f69a1d26fb88089278e89901` |

No source-access blocker occurred. Coverage is the named equations and executed contractions; it is not a claim that every possible further contraction of the original infinite family has been exhausted.
