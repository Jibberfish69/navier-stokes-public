# Bounded independent review of the final adaptive quadratic route

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


The requested mathematical review passes. No unresolved sign, factor, endpoint or scope correction remains in AQ1–12, AQ19–23a or the theorem clauses reviewed here. This receipt concerns the stated adaptive coefficient class and its actual-history consequences; it does not assert a general classification of all history-dependent nonlinear identities or a datum-to-terminal producer.

The reviewed [composition report](https://github.com/Jibberfish69/navier-stokes-public/blob/816d77982adbd0f04a12313fded1874787e2d992/research/quadratic-route-20261006/reports/15-adaptive-composition.md) is separately identified in the source and report indices. The review distinguishes the initial snapshot from the final composition.

## Moving rows, Gram and square

With the actual sample speeds \(\lambda_i=\tau_i'\), AQ1 correctly retains the entire row
\[
 U_i'+\lambda_i(\nu LU_i+B_i+\nabla P_i)=\lambda_iF_i.
\]
The canonical pressure includes the force potential. For symmetric \(Q\), the moving energy law has viscosity coefficient \(H=(QD+DQ)/2\), force and nonlinear coefficients \(Q_{ij}\lambda_j\), and coefficient work \(Q':C/2\). The complete square retains
\[
 \nu(H:K)'-\nu H':K+
 \nu\sum_{ij}Q_{ij}(\lambda_j-\lambda_i)
       \langle U_i',LU_j\rangle
\]
as well as the temporal, viscous and pressure Grams and the complete \(DQD\)-weighted \((F-B)\) square. The speed-mismatch term is necessary. Positivity of \(Q\) and forward speeds alone does not make \(H\) positive semidefinite.

AQ3 and AQ5–6 have the correct local flux and integration signs: the diffusion flux uses \(-\nu Q_{ij}\lambda_j U_i\cdot\partial_kU_j\), the pressure flux uses \(Q_{ij}\lambda_jP_jU_i\), the time-selector term is \(+\int\chi'E\), and the space-time selector adds \(\psi_t e+\nabla\psi\cdot J\). Pairings in the local flux are pointwise Euclidean products. The Reynolds boundary is \(v_{\rm boundary}\cdot n\,e-J\cdot n\); the parameter derivative retains both moving ends and every \(\tau_{j,\rho}u_t(\tau_j)\) term.

## Cancellation and the two-time row

AQ7 is correctly limited to complete formal transport-allocation cancellation before valuing coefficient-derivative work on the actual history. For distinct sample times it requires \(Q_{ij}\lambda_i=Q_{ij}\lambda_j=0\) off the diagonal. Zero-speed blocks and reversed action are retained. At repeated times the actual compressed current is \(R^TQD R\); isolated coincidences with different speeds need not produce a symmetric matrix. Persistent groups share their speed and obey the compressed version of AQ7.

The mean/difference calculation in AQ8 is exact:
\[
 W=\left(b-\frac{ah^2}{4}\right)
       \left[\ell S(m,d,d)+\frac{h'}h
                       \langle d,N(m,m)\rangle\right].
\]
Thus cancellation in that class gives physical diagonal weights \(q_0=a/2-c/h\), \(q_1=a/2+c/h\). This does not prohibit an additional identity along a special history.

AQ9–11 correctly retain the \(h'\)-dependent source in each actual row. In particular, the difference source is
\[
 \delta_hf+\frac{h'}h(V_\theta-d),
\]
and the weighted row retains both \(\omega h'\langle d,V_\theta-d\rangle/h\) and \(\omega'\|d\|^2/2\). Setting \(\omega=h^2\) cancels denominator drift but leaves \(h'\langle V_\theta,U_1-U_0\rangle\). The underlying pressure flux is \((\delta_hp)d\); the weighted AQ11 flux is \(\omega(\delta_hp)d\). AQ12 cancels the intrinsic strain through selection work only: the prescribed-force pairing remains, together with the need for an admissible selection and independently paid coercivity and source budget.

## Sharp extraction and actual-history limits

The sharp coefficient
\[
 \kappa=h^2\frac{q_0q_1}{q_0+q_1}\le\frac{Mh^2}{4}
\]
and its zero conventions are correct. The same calculation applies to the compensated pair \(Z_0,Z_1\) with \((Z_1-Z_0)/h\) as receiver. Under \(\kappa\ge\kappa_0\),
\[
 E\ge\frac{\kappa_0}{2h^2}
       \bigl(\|U_0\|+\|U_1\|\bigr)^2,\qquad
 q_i\ge\frac{\kappa_0}{h^2}.
\]
These are actual stock bounds, not a claim that coefficient mass alone forces energy divergence when the sampled kinetic energies vanish.

For a family \(h_\varepsilon(t)\to0\) at every fixed physical time, strict classical continuity gives \(U_i\to u(t)\); the compensated source integral is \(O(h)\) and gives the same limit. Wherever \(u(t)\ne0\), the actual positive stock diverges. A nonzero classical history has an open interval of such times. Fatou therefore excludes a uniform integrated stock bound as well as a uniform pointwise stock bound. No terminal nonzero-energy assumption is used in this family statement.

For a single forward terminal curve at finite \(T\), \(h<T-t\) makes both sample times approach \(T\). If \(e_*>0\), the coefficient is \(\liminf h^2E\ge2\kappa_0e_*\). If \(e_*=0\), no automatic contradiction follows; bounded stock requires \(e(t),e(t+h)\le2Bh^2/\kappa_0\), or the stated compensated norm estimate. Such a curve does not itself recover the distributional first temporal row.

The positive diagonal-measure extension uses the correct diameter estimate \(\|\sigma\|_{\rm TV}\ge2/h\) for zero mass and unit first moment. It therefore gives extraction at most \(Mh^2/4\). Its stock-divergence conclusion correctly requires the support to concentrate at the actual target time.

## Positive payment and signed coefficient work

AQ21–23a retain both endpoint stocks, actual force work and every coefficient derivative. In the positive-action statement, forward means \(\lambda_i\ge0\). If \(e_*>0\), separately paying positive coefficient variations costs at least
\[
 \frac{e_*}{4}\bigl[M(b)-M(a)\bigr],
\]
without assuming monotone weights. The actual normalization \(q_i=c_i/e_i\) instead has the exact work
\[
 \frac12\int q_i'e_i
       =-\frac{c_i}{2}\log\frac{e_i(b)}{e_i(a)}
\]
on strict intervals where the kinetic norm is positive. Neither normalization hides this work.

The quotient normalization and the general Moore–Penrose extraction formula have the stated range and zero conventions. A uniformly positive extraction coefficient remains an actual quotient estimate, beyond bounded normalized stock.

For monotone clocks and bounded positive weights, the signed primitive
\[
 \frac12\int_a^bq_i'e_i
 =E(b)-E(a)+\nu\int_a^bq_i\lambda_iY_i
       -\int_a^bq_i\lambda_i\langle U_i,g_i\rangle
\]
is paid by the original kinetic and prescribed-force rows with absolute prefix bound
\(\sum_i\bar q_i[K^2+K\|g\|_{L^1}]\). This is a bound for the signed primitive; it does not assert absolute integrability of oscillating coefficient work or an endpoint limit for the weights.

## Applied conventions and coverage

The final mathematical editionincorporates the four reviewer clarifications: weighted versus underlying pressure flux; the nonsymmetric isolated-coincidence compression; nonnegative speeds in the positive-action budget; and retention of force work in AQ12. It also includes the other independent review's finite-terminal, mapped-interval, concentrating-support and zero-log-ratio conventions. Those revisions introduce no formula change affecting the pass above.

The [supporting finite derivation](https://github.com/Jibberfish69/navier-stokes-public/blob/816d77982adbd0f04a12313fded1874787e2d992/research/quadratic-route-20261006/reports/12-adaptive-shift-matrix.md), especially AS1–16 and AS18–32, provides the independent algebra used here. AQ13–18's complete force-compensation law and AQ24–26's remaining interval/action formulas belong to the other scoped reviews; this receipt checks their affine-stock uses in the theorem but does not claim a separate full review of those ranges.

The review is bounded to the named formulas and theorem consequences. It assumes neither terminal positive regularity nor a pressure-Hessian sign, and uses no constructed profile or toy history.
