# Periodic Clay Terminal-Promotion Math Frontier

## Purpose

This note records the exact mathematical boundary behind the attempted periodic
Clay terminal promotion.  The repo can assemble the class-membership endpoint
route, but the previous terminal formulation used a premise that was too weak:
class-membership on every compact subinterval of `[0,T_*)` is only pre-endpoint
regularity for a maximal classical solution.  It is not a continuation bound.

The active branch remains the periodic zero-force branch on `T^3`.  The valid
promotion statement is conditional on uniform terminal-tail class-membership
readout, and the remaining Clay-level theorem is the analytic exclusion of the
endpoint faces for arbitrary smooth periodic data.

## Valid Theorem `PCTP.cond` (continuation from terminal-tail readout)

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`, and let `f=0`.
Let `(u,p)` be the maximal classical Navier-Stokes solution on `[0,T_*)`.
Assume there is a terminal approach tail `[t_0,T_*)` on which the retained
class-membership witness supplies a uniform continuation readout:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty
\qquad\text{for some }s>5/2.
```

Equivalently, assume the terminal tail has uniformly finite retained
`Pack/Part/Field/tower` data strong enough for `CM.Readout` and `ECQ.A`.
Then `T_* = infinity`.

### Proof

Choose `t_j\uparrow T_*`.  The uniform `H^s`, `s>5/2`, bound and the periodic
`H^s` local well-posedness/relaunch theorem give a common lifespan
`\tau=\tau(\sup_{t<T_*}\|u(t)\|_{H^s})>0` for data launched at every `t_j`.
Choose `j` with `T_*-t_j<\tau`.  Then `t_j+\tau>T_*`.  Classical uniqueness identifies the
relaunched solution with `(u,p)` on the overlap, extending `(u,p)` beyond
`T_*`, contradicting maximality.  Hence `T_*=\infty`.

This is the exact continuation conversion used here.  The hard Clay step is
the endpoint-tail uniformization that supplies the uniform `H^s` readout.

## Remaining Theorem `PCTP.hard` (endpoint-tail uniformization)

To promote the periodic branch to a Clay-level theorem, one still has to prove
one of the following equivalent endpoint-tail statements from the original
periodic Navier-Stokes dynamics:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}
```

or

```math
\text{no first finite classical endpoint realizes }
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

The installed endpoint matrix proves a witness-grammar implication:

```math
\neg CM_{N,r,Q}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

It does not, by itself, prove that the original PDE dynamics cannot realize one
of those faces.  That is the surviving mathematical burden.

## What This Pass Proves

The endpoint/readout audit now separates two local bridge facts from the
Clay-level theorem.

First, `READ.COVER` is noncircular as an averaged-to-pointwise bridge.  The
averaged route reaches `End_NS_avg` before `READ.COVER`; after `End_NS_avg`
removes `Jump_avg`, the strict-margin bad-set row
`CAVG.J_{\varepsilon_m/2}` gives an empty bad set, local stability gives open
SCF-good neighborhoods, and compactness gives a finite positive-scale readout
cover.  This bridge is downstream of `AVG.MAIN.A`; it is not used to build the
averaged endpoint package.

Second, the pressure component of `DTC.Read` is locally closed on any such
fixed cover by the Poisson split in
`mpp-dtc-read-pressure-local-poisson-estimate.md`.

These two facts do not prove `PCTP.hard`.  They only remove local readout
obstructions after the terminal-tail averaged endpoint package has already been
produced.

## Current Analytic Sub-burdens

The hard theorem can be attacked through the existing route only after the named
analytic suppliers are genuinely proved, not merely assembled:

1. `LCI.A` receiver supplier: close `RCF.A` without reading back the desired
   continuation control.  The current receiver-side reduction sharpens this to
   the affine-defect supplier split.  With the ordinary energy ledger imported,
   the far pressure tail is downstream, so the first explicit lower-order wall is

   ```math
   VCS.A:\qquad
   \mathfrak K_{1,\rho,\psi}^{visc,ctr}
   =
   \nu\sum_j|\Delta U_1(c_j(t),t)|
   \in L^1(I).
   ```

   The visible discharge routes below this wall are the stronger halo-shell /
   fixed-increment return (`HSP.A0a -> FEI.C7`) and the direct
   transported-center-ball readout.  Neither may be replaced by a generic
   "`LCI.A` is installed" assertion.
2. Source supplier: the exact post-`LCI.A` source route is not proved by the
   terminal assembly note itself.  It reduces to the pressure/nonpressure pair
   `FIRP.A0 + FSCR.C`, with `FCC.C1` contributing only through the Young-margin
   cutoff estimate plus the weighted cutoff-defect input
   `\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.  The stronger
   route `FFSRC.A => FCI.5f` may be used only with the current `FFSRC.A`
   hypotheses, including that cutoff-defect input; it does not prove the exact
   same-depth branch `FPCR.C + FSCR.C`.
3. Endpoint/readout supplier: prove `DTC-to-TowerBound` / `DTC.Read`, including
   the pressure component of
   `K_q=-\nabla^{q+1}p+\nu\Delta U_q`.  The missing readout estimate is the
   fixed-cover local Poisson carrier:

   ```math
   p=p_i^{loc}+h_i,\qquad
   -\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b),
   ```

   with `\chi_i=1` on the readout ball and supported in the enlarged fixed-cover
   ball, followed by

   ```math
   \|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
   \le
   C_{q,\alpha,R_i}
   \|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}
   ```

   for `0<=q<=N`, plus the harmonic-tail energy bound
   `\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}\le C_{q,R_i}\|u_0\|_{L^2}^2`.
   The local Poisson estimate and its fixed-cover product-source carrier are now
   isolated in `mpp-dtc-read-pressure-local-poisson-estimate.md`: on every fixed
   SCF-good readout cover where `ATD_m^\varepsilon` applies at depth
   `m>=N+1`, the pressure part of `DTC.Read` follows.  The cover bridge is also
   locally noncircular once `End_NS_avg` is already available; see
   `mpp-pctp-hard-endpoint-face-audit.md`.

   What remains in this endpoint/readout family is not the local pressure
   estimate or the downstream `READ.COVER` compactness step.  It is the global
   terminal-tail uniformization problem: prove that the original PDE dynamics
   supplies the retained tail inputs, or prove directly that a first finite
   endpoint cannot realize `Dead`, `packing-detached`, `tower-blown`, or `Jump`.
4. Class-membership-to-continuation readout: ensure the retained
   `Pack/Part/Field/tower` controls give a global periodic `H^s`, `s>5/2`,
   continuation norm on a terminal tail.

## Boundary

Compact-subinterval class membership is insufficient for terminal promotion.
The theorem-packet can remain a complete internal candidate only if it records
`PCTP.hard` as an actual analytic theorem to be proved.  Until that theorem is
proved, this surface is a precise math frontier, not a full-MPP terminal proof.
