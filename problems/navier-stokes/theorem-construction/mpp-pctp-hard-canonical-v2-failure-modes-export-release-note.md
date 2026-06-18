# MPP PCTP.hard Canonical v2, Failure Modes, PDE Export, And Release Graph Note

## Status

Canonical v2 theorem surface for the current Navier-Stokes terminal-tail route.

This surface consolidates:

1. `PCTP.hard.CANONICAL.v2`.
2. `AACT.Global.noJump.FAILURE-MODES`.
3. `DTC.Read.Press.EXPORT.v2`.
4. `CM.Readout.EXPORT.v2`.
5. `TARGET.FIDELITY.CLEAN`.
6. `RELEASE.SOURCE-GRAPH`.
7. `APPENDIX.CURVATURE`.

## Source anchors

| Surface | SHA |
|---|---|
| `mpp-tgc-a-noescape-jumpavg-hardening-note.md` | `b8cec81477bdfbaf538219bf0af567c1bab2ebb7` |
| `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md` | `aeede1f67e0bae7a2692ca7a16dc222c8844adca` |
| `mpp-tgc-a-upstream-spending-audit-note.md` | `a0c50b8687fd29dd4e102bdb4a393965a31c412f` |
| `mpp-pctp-tgc-integrated-terminal-tail-bridge-note.md` | `8d96b470a23b55b3eca1b185557046f30a3fc4f1` |
| `mpp-aact-global-nojump-deep-and-release-closure-note.md` | `7dd70c85454bd1fd507444dd1d8270bc9744d9e7` |
| `mcp-aact-global-nojump-finite-cover-scheduler-theorem-avg-end-a-b464d2cdf8.md` | `b464d2cdf8572332a1ae0871a682d19022db4dc4` |
| `mcp-avg-end-a-hardened-averaged-endpoint-rows-tgc-a-b13bc3ecf3.md` | `b13bc3ecf3c2f5f7d28aa1dd13dcb915b4469184` |
| `mpp-readout-endpoint-compatibility-completion-note.md` | `2deb108308c11d6ee6ffa1ed44e14fc2d24a1d4d` |
| `mcp-target-fidelity-bridge-for-periodic-zero-force-branch-e8879ab68c.md` | `e8879ab68c9cbf52226eecb778d31c9c5990b297` |
| `release-decision.yaml` | `2b4a62c38e0aad4ab285728972103c195b42aab2` |

---

## 1. `PCTP.hard.CANONICAL.v2`

### Canonical theorem

```math
\boxed{
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard/TTU.A.
}
```

### Expanded meaning of `TGC.A`

`TGC.A` is the terminal-good-cover dichotomy:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf r_{good}=0
\Longrightarrow
Jump_{avg},
```

and

```math
\neg Jump_{avg}
\Longrightarrow
\text{finite positive-scale SCF-good terminal cover with scheduler-ready }L^1\text{ majorants}.
```

The terminal cover has

```math
\mathcal T\subset\bigcup_{j=1}^J Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
r_j\ge r_*>0,
\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
\qquad
\operatorname{ovlp}\le\Omega<\infty.
```

After the fixed local gain shrink,

```math
\rho_*:=\theta_m r_*>0.
```

### Canonical route proof

On the terminal tail, `TGC.A` gives either `Jump_avg` or a finite positive-scale SCF-good terminal cover.

On the cover branch, `ATD_m^\varepsilon` gives the finite-depth averaged tower packet on each shrunken cylinder. Local `AACT.KX` gives, for each cover element `j` and route parameter `p`,

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p}.
```

`AACT.Global.noJump` globalizes this finite family and yields

```math
DTC.A_{avg}.
```

The averaged receiver and consumer chain gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg},
```

with `FCI.5f` spent at the collar step.

`AVG.END.A` gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The averaged endpoint package removes the averaged faces:

```math
Dead,
\quad
packing\text{-}detached,
\quad
tower\text{-}blown_{avg},
\quad
Jump_{avg}.
```

The pointwise compatibility layer starts after `End_NS_avg`:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Thus `PCTP.hard/TTU.A` follows.

### Legal-order statement

The route order is:

```math
\text{terminal classification}
\to
\text{averaged finite-cover production}
\to
\text{averaged endpoint}
\to
\text{pointwise readout}
\to
PCTP.hard.
```

---

## 2. `AACT.Global.noJump.FAILURE-MODES`

### Failure mode 1: uniform `\eta_X`

Risk: the absorption threshold could depend on `j` or `p`.

Discharge: the local inequality uses common constants `c` and `C_X` after the finite family has been normalized to the route scale. Choose

```math
C_X(2\eta_X)^{1/2}\le c/2.
```

This single `\eta_X` works for every cover element and every route parameter.

### Failure mode 2: `B_*,F_*\in L^1`

Risk: summing local ledgers could lose integrability.

Discharge: the cover size `J` and route parameter set `\mathscr P_{req}` are finite. Define

```math
B_*:=\sum_{j,p}\mathbf 1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}\mathbf 1_{I_j}F_{j,p}.
```

Finite sums of `L^1` functions stay in `L^1`, so

```math
B_*,F_*\in L^1([t_0,T_*)).
```

### Failure mode 3: finite partition on `[t_0,T_*)`

Risk: a single finite partition may fail on a half-open terminal interval.

Discharge: on every finite subtail `[t_0,T_\ell]`, absolute continuity gives finitely many scheduler cells satisfying

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le2\eta_X.
```

The bounds are independent of `\ell`; passing to `T_\ell\uparrow T_*` gives the terminal interval statement. The route uses uniform estimates on all compact terminal subtails and terminal exhaustion.

### Failure mode 4: first-exit closure

Risk: the nonlinear term could reopen at the barrier `2\eta_X`.

Discharge: on the first-exit interval, absorption gives

```math
D^+X_{j,p}+\frac c2N_{j,p}
\le
B_{j,p}X_{j,p}+F_{j,p}.
```

Gronwall and the scheduler-cell condition give `X_{j,p}\le2\eta_X`; strict exit is impossible, and right-continuity closes contact cases.

### Failure mode 5: `N\in L^1`

Risk: bounded `X` alone might fail to integrate dissipation.

Discharge: integrating the absorbed inequality gives

```math
\int N_{j,p}
\le
C\left(\eta_X+2\eta_X\int B_*+\int F_*\right)<\infty.
```

Finite summation gives

```math
N_{avg}\in L^1.
```

### Failure mode 6: `\mathcal K_{\le m}^{avg}\in L^1`

Risk: the affine tower ledger could contain extra terms outside the scheduler.

Discharge: the local tower ledger is bounded by

```math
\mathcal K_{\le m,j,p}^{avg}
\le
C(N_{j,p}+B_{j,p}X_{j,p}+F_{j,p})
```

plus route-fixed lower-order ledgers included in `F_*`. Hence it is integrable; finite summation gives

```math
\mathcal K_{\le m}^{avg}\in L^1.
```

---

## 3. `DTC.Read.Press.EXPORT.v2`

### PDE lemma

Let `B_i'\Subset B_i\Subset Q_{r_i}^{\Phi}` be a readout ball inside a same-fluid good cylinder. Choose `\chi_i\in C_c^\infty(B_i)` with `\chi_i=1` on `B_i'`. Split the pressure by

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Then `h_i` is harmonic on `B_i'`.

### Local pressure estimate

The packet-local pressure carrier in `DTC.A_{avg}` supplies the derivative-depth control required at `q+1`. Interior Calderon-Zygmund or Schauder estimates give

```math
\sup_{B_i'}|\nabla^{q+1}p_i^{loc}|
\le
C_i\mathcal P_i^{avg}(t).
```

Here `C_i` depends on the fixed shrink ratio and the bounded same-fluid geometry. The finite cover gives a finite maximum of these constants.

### Harmonic tail estimate

Since `h_i` is harmonic on `B_i'`, interior harmonic estimates give

```math
\sup_{B_i'}|\nabla^{q+1}h_i|
\le
C_i\|h_i\|_{L^1(B_i\setminus B_i')}.
```

The far part is generated by the separated source `u\otimes u`, so

```math
\sup_{B_i'}|\nabla^{q+1}h_i|
\le
C_i\|u\otimes u\|_{L^1(\operatorname{supp}\nabla\chi_i)}
\le
C_i\|u(t)\|_{L^2}^2
\le
C_i\|u_0\|_{L^2}^2.
```

Therefore

```math
\sup_{B_i'}|\nabla^{q+1}p|<\infty.
```

Since `\Delta U_q` is read from the `U_{q+2}` rung, tower depth `N+2` yields

```math
\sup_{B_i'}|K_q|<\infty,
\qquad
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

---

## 4. `CM.Readout.EXPORT.v2`

### PDE continuation theorem

Assume the pointwise class witness persists:

```math
CM=Pack\wedge Part\wedge Field.
```

Choose route depth `N` above a classical index `s>5/2`.

`Pack` gives bounded transported finite-cover geometry. `Part` keeps tower data on the same retained fluid object. `Field` gives pointwise finite-depth tower and one-field coherence through depth dominating `s`.

On each cover patch,

```math
\sup_{t<T_*}\|u(t)\|_{H^s(B_i(t))}<\infty.
```

Finite overlap gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

For the weighted tower formulation, the base rung gives

```math
\|u(t)\|_{H^s}\le\mathfrak A_s(\tau_0,r_0,t).
```

Since `s>5/2`, this is the classical Sobolev continuation norm. Thus the
route-native class witness exports to the PDE continuation criterion.

---

## 5. `TARGET.FIDELITY.CLEAN`

The exact theorem branch is periodic zero-force:

```math
M=\mathbb T^3,
\qquad
f=0,
\qquad
\nu>0,
\qquad
u_0\in C^{\infty}(\mathbb T^3;\mathbb R^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{\mathbb T^3}u_0\,dx=0.
```

The conclusion is

```math
T_*=\infty.
```

Whole-space, nonzero-force, and non-periodic variants are export branches requiring separate target-fidelity bridges.

---

## 6. `RELEASE.SOURCE-GRAPH`

| Source claim | Theorem surface | Output | Release role |
|---|---|---|---|
| Terminal no-escape split | `mpp-tgc-a-noescape-jumpavg-hardening-note.md` | `Jump_avg` or positive-scale branch | terminal classification |
| Terminal positive cover | `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md` | finite scheduler cover | averaged production input |
| Scheduler globalization | `mpp-aact-global-nojump-deep-and-release-closure-note.md` | `DTC.A_avg` | analytic engine |
| Averaged endpoint | `mcp-avg-end-a-hardened-averaged-endpoint-rows...md` | `End_NS_avg` | averaged endpoint closure |
| Readout compatibility | `mpp-readout-endpoint-compatibility-completion-note.md` | `End_NS` | pointwise endpoint bridge |
| Terminal-tail canonical theorem | this surface | `PCTP.hard/TTU.A` | local theorem-facing closure |
| Target fidelity | `mcp-target-fidelity-bridge-for-periodic-zero-force-branch...md` | periodic zero-force branch lock | manuscript branch alignment |
| Release decision | `release-decision.yaml` | `submission-candidate`, `export-ready` | release-management state |

---

## 7. `APPENDIX.CURVATURE`

Route B / C3 / curvature material is support-level under the current authority edge.

| Object | Treatment |
|---|---|
| `route_b_c3` | appendix background or alternate-route context |
| `body2_q_bridge` | support lemma when cited by exposition |
| `body4_curvature` | curvature-discharge corollary or appendix theorem |
| curvature-based discharge surfaces | supporting sources for manuscript explanation |

These objects are not active blockers for `PCTP.hard/TTU.A` under the current terminal-tail route.

## Final canonical statement

```math
\boxed{
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard/TTU.A.
}
```

with target fidelity restricted to the periodic zero-force branch and release posture recorded as submission-candidate / export-ready.
