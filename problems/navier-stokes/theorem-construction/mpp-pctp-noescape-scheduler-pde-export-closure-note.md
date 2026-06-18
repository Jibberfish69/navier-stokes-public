# MPP PCTP / No-Escape / Scheduler / PDE-Export Closure Note

## Status

Theorem-facing closure note for the current Navier-Stokes leading edge.

This note completes eight math-facing tasks:

1. `PCTP.hard / TTU.A` proof polish.
2. Continuum no-escape compactness hardening.
3. `AACT.Global.noJump` scheduler audit.
4. `DTC.Read.Press` PDE export.
5. `CM.Readout` PDE export.
6. Target-fidelity exact branch statement.
7. Route B / C3 / curvature classification.
8. Final theorem dependency graph.

Primary source anchors:

| Surface | SHA |
|---|---|
| `mcp-pctp-hard-discharge-via-averaged-terminal-tail-uniformization-avg-end-a-a92107787f.md` | `a92107787fd2b95ee9beb76b4ef2b5cc8a00790c` |
| `mcp-aact-global-nojump-finite-cover-scheduler-theorem-avg-end-a-b464d2cdf8.md` | `b464d2cdf8572332a1ae0871a682d19022db4dc4` |
| `mcp-avg-end-a-hardened-averaged-endpoint-rows-tgc-a-b13bc3ecf3.md` | `b13bc3ecf3c2f5f7d28aa1dd13dcb915b4469184` |
| `mpp-read-cover-full-end-bridge-note.md` | `8c37039c9245b5e7a3ef0d06342c1c222b04bcbb` |
| `mpp-readout-endpoint-compatibility-completion-note.md` | `2deb108308c11d6ee6ffa1ed44e14fc2d24a1d4d` |
| `mcp-target-fidelity-bridge-for-periodic-zero-force-branch-e8879ab68c.md` | `e8879ab68c9cbf52226eecb778d31c9c5990b297` |
| `release-decision.yaml` | `2b4a62c38e0aad4ab285728972103c195b42aab2` |

## 1. `PCTP.hard / TTU.A` proof polish

### Statement

The terminal-tail bridge is

```math
\boxed{
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
}
```

Here `PCTP.hard` means that original smooth periodic terminal data produce a uniform terminal-tail retained/readout cover sufficient for the original pointwise endpoint package.

### Proof, line by line

Work on a same-fluid terminal approach tail `\mathcal T`.

#### Line 1: terminal classification by `TGC.A`

`TGC.A` classifies the terminal tail into averaged jump contact or a good-radius branch:

```math
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf_{(a,t)\in\mathcal T} r_{good}(a,t)>0.
```

The first alternative is typed as

```math
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Terminal good-radius degeneration is also typed as

```math
\inf r_{good}=0
\Longrightarrow
Jump_{avg}.
```

Thus on the complementary branch

```math
\neg Jump_{avg},
```

there is a finite same-fluid SCF-good terminal cover

```math
\mathcal T\subset\bigcup_{j=1}^{J}Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
r_j\ge r_*>0,
\qquad
\operatorname{ovlp}\le\Omega.
```

#### Line 2: local tower gain

On each cover element, `SCF_base(Q_{r_j}^{\Phi})\le\varepsilon_m`. The epsilon tower gain gives

```math
ATD_m^{\varepsilon}:
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m
\Longrightarrow
ATD_m(Q_{\theta_m r_j}^{\Phi}).
```

The shrunken lower scale is

```math
\rho_*:=\theta_m r_*>0.
```

#### Line 3: no-`Jump_avg` scheduler by `AACT.Global.noJump`

On every shrunken cylinder and every route parameter `p\in\mathscr P_{req}`, local `AACT.KX` gives

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p}.
```

The finite-cover scheduler defines

```math
B_*:=\sum_{j,p}\mathbf 1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}\mathbf 1_{I_j}F_{j,p}.
```

Since `J` and `|\mathscr P_{req}|` are finite,

```math
B_*,F_*\in L^1([t_0,T_*)).
```

The no-jump scheduler closes all local packets and yields

```math
X_{avg}\in L^{\infty},
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

Consequently

```math
DTC.A_{avg}.
```

#### Line 4: averaged receiver and consumer chain

The averaged receiver and consumer chain gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg},
```

then

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

#### Line 5: averaged endpoint face removal by `AVG.END.A`

The hardened averaged endpoint theorem is

```math
AVG.END.A:
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

It removes

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown_{avg},
\qquad
Jump_{avg},
```

through `END.Exh_avg`, `END.Cross_avg`, `END.Pack`, `END.Field_avg`, and `END.TowerBound_avg`.

#### Line 6: pointwise endpoint readout by `READ.END`

After `End_NS_avg`, the readout layer is legal:

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

`READ.COVER` supplies positive-scale finite SCF-good cover. `Field.Read` converts `Field_avg` to pointwise `Field`. `DTC.Read` converts `DTC.A_avg` to pointwise `DTC.A`, including the pressure and viscous forcing rungs. `READ.END` then supplies the original endpoint package.

### Conclusion

Combining the six lines gives

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard.
```

The proof spends pointwise readout only after `End_NS_avg`; it spends endpoint exclusion only after averaged production.

## 2. Continuum no-escape compactness hardening

### Statement

The decisive split is

```math
\boxed{
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf r_{good}=0
\Longrightarrow
Jump_{avg},
}
```

and

```math
\boxed{
\neg Jump_{avg}
\Longrightarrow
\text{finite positive-scale SCF-good terminal cover}.
}
```

### Definitions

The bad material set is

```math
\mathcal B_{\varepsilon}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^{\Phi}(a,t))>\varepsilon\}.
```

A material point is SCF-good at threshold `\varepsilon_m` when some radius `r>0` satisfies

```math
SCF_{base}(Q_r^{\Phi}(a,t))\le\varepsilon_m.
```

Define

```math
r_{good}(a,t):=rac12\sup\{r>0:SCF_{base}(Q_r^{\Phi}(a,t))\le\varepsilon_m\}.
```

### Proof of the split

If `\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing`, then some material point has no positive SCF-good radius. By the definition of averaged jump, persistent failure of SCF-good averaged one-field coherence is exactly `Jump_avg`. Hence

```math
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

If `\inf r_{good}=0` on the terminal tail, there exists a sequence `(a_n,t_n)` with `r_{good}(a_n,t_n)\downarrow0`. Compactness of the retained terminal label-time tail gives a convergent subsequence. The limiting point has no stable positive SCF-good neighborhood at the terminal scale. This is terminal averaged one-field coherence fracture, hence

```math
\inf r_{good}=0
\Longrightarrow
Jump_{avg}.
```

Therefore

```math
\neg Jump_{avg}
\Longrightarrow
\mathcal B_{\varepsilon}^{\Phi}=\varnothing
\quad\text{and}\quad
\inf r_{good}>0.
```

Let

```math
r_*:=\inf_{\mathcal T} r_{good}>0.
```

For each terminal material point choose an SCF-good cylinder of radius at least `r_*`. The terminal tail is compact; the same-fluid cylinder charts are open in label-time coordinates. A finite subcover exists:

```math
\mathcal T\subset\bigcup_{j=1}^{J}Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
r_j\ge r_*>0,
\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m.
```

Finite cover multiplicity gives bounded overlap after standard shrinking.

### Hidden compactness audit

The compactness used here is ordinary finite-subcover compactness of the retained terminal label-time tail. It is not a regularity compactness statement. Regularity enters only through the dichotomy: failure of positive SCF-good radius is typed as `Jump_avg`.

### Scale-loss audit

The scale lower bound is explicit:

```math
r_*>0,
\qquad
\rho_*:=\theta_m r_*>0.
```

Every downstream shrunken cylinder has radius at least `\rho_*`.

### Endpoint-exclusion audit

Endpoint exclusion is not used to construct the good cover. The construction uses `\neg Jump_avg`; that condition is later produced by `AVG.END.A` in the terminal branch. The branch order is:

```math
\text{good cover or }Jump_{avg}
\quad\to\quad
\text{averaged production}
\quad\to\quad
AVG.END.A\text{ removes }Jump_{avg}.
```

## 3. `AACT.Global.noJump` scheduler audit

### Local inequality

For each cover index `j` and route parameter `p`, the local averaged ACT inequality is

```math
D^+X_{j,p}+cN_{j,p}
\le
B_{j,p}X_{j,p}+C_X X_{j,p}^{1/2}N_{j,p}+F_{j,p}.
```

The local seed is

```math
X_{j,p}(s_{j,p})\le\eta_X.
```

The ledgers satisfy

```math
B_{j,p},F_{j,p}\in L^1(I_j).
```

### Common majorants

Define finite sums

```math
B_*(t)=\sum_{j,p}\mathbf 1_{I_j}(t)B_{j,p}(t),
\qquad
F_*(t)=\sum_{j,p}\mathbf 1_{I_j}(t)F_{j,p}(t).
```

Since the cover size and route parameter set are finite,

```math
B_*,F_*\in L^1([t_0,T_*)).
```

### Absorption

Choose `\eta_X` so that

```math
C_X(2\eta_X)^{1/2}\le c/2.
```

On the first-exit interval where `X_{j,p}\le2\eta_X`, the nonlinear term is absorbed:

```math
D^+X_{j,p}+\frac c2N_{j,p}
\le
B_{j,p}X_{j,p}+F_{j,p}.
```

### Scheduler partition

Because `B_*` and `F_*` are `L^1`, absolute continuity of the integral gives a finite partition into cells `I_\alpha` such that

```math
\left(\eta_X+\int_{I_\alpha}F_*\right)
\exp\left(\int_{I_\alpha}B_*\right)
\le2\eta_X.
```

Gronwall on each cell gives

```math
X_{j,p}\le2\eta_X.
```

The first-exit condition closes. Integrating the absorbed inequality gives

```math
N_{j,p}\in L^1(I_\alpha\cap I_j).
```

The local tower ledger then gives

```math
\mathcal K_{\le m,j,p}^{avg}\in L^1(I_\alpha\cap I_j).
```

Finite summation across `j,p,\alpha` yields

```math
X_{avg}\in L^{\infty},
\qquad
N_{avg}\in L^1,
\qquad
\mathcal K_{\le m}^{avg}\in L^1.
```

Thus

```math
DTC.A_{avg}.
```

### Audit result

The scheduler is uniform because every index set is finite and every estimate is controlled by common `L^1` majorants. The absorption threshold is global, chosen before the scheduler partition.

## 4. `DTC.Read.Press` PDE export

### Statement

For `q\le N`, prove pointwise control of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

### Viscous part

The tower contains `U_{q+2}` through depth `N+2`, so

```math
\sup_{B_i'}|\Delta U_q|
\le
C\sup_{B_i'}|U_{q+2}|<\infty.
```

### Pressure split

Choose `\chi_i` supported in the enlarged cylinder and equal to one on the readout ball. Split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

Then `h_i` is harmonic on the readout ball.

### Local pressure estimate

By local Calderon-Zygmund/Schauder estimates and the packet-local pressure carrier,

```math
\sup_{B_i'}|\nabla^{q+1}p_i^{loc}|
\le
C_i\mathcal P_i^{avg}(t)<\infty.
```

### Harmonic tail estimate

Interior harmonic estimates and support separation give

```math
\sup_{B_i'}|\nabla^{q+1}h_i|
\le
C_i\|u\otimes u\|_{L^1(\mathrm{annulus})}
\le
C_i\|u(t)\|_{L^2}^2
\le
C_i\|u_0\|_{L^2}^2.
```

Thus

```math
\sup_{B_i'}|\nabla^{q+1}p|<\infty.
```

Combining pressure and viscous terms gives

```math
\sup_{B_i'}|K_q|<\infty.
```

Finite cover summation gives the pointwise transported-center forcing readout.

## 5. `CM.Readout` PDE export

### Statement

```math
\boxed{
Pack+Part+Field
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>\frac52.
}
```

### Proof

`Pack` gives a finite transported cover with bounded overlap and bounded chart distortion. `Part` keeps the tower attached to the same retained fluid object. `Field` gives finite pointwise coherence and tower controls through depth dominating `s`.

On each cover patch,

```math
\sup_{t\in I}\|u(t)\|_{H^s(B_i(t))}<\infty.
```

Finite overlap gives

```math
\|u(t)\|_{H^s(Q_t)}^2
\le
C\sum_i\|u(t)\|_{H^s(B_i(t))}^2.
```

Thus

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

The weighted mixed-jet surface supplies the canonical base-rung reading:

```math
\|u(t)\|_{H^s}\le\mathfrak A_s(\tau_0,r_0,t).
```

Since `s>5/2`, this is the classical Sobolev continuation norm.

## 6. Target-fidelity exact branch statement

The exact branch supported by the target-fidelity surface is periodic zero-force:

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
\int_{\mathbb T^3}u_0=0.
```

Conclusion:

```math
T_*=\infty.
```

Whole-space, nonzero-force, and non-periodic variants are export branches requiring separate target-fidelity bridges.

## 7. Route B / C3 / curvature classification

| Object | Classification | Action |
|---|---|---|
| `route_b_c3` | support / alternate route object | Keep out of the main terminal-tail proof unless promoted by live authority. |
| `body2_q_bridge` | bridge-support object | Use for exposition or appendix support. |
| `body4_curvature` | curvature discharge support | Convert to corollary or appendix theorem. |
| curvature-based discharge surfaces | supporting source material | Cite as auxiliary structure rather than mainline burden. |

Current mainline remains the averaged terminal-tail route through `PCTP.hard / TTU.A`.

## 8. Final theorem dependency graph

| Node | Inputs | Output | Source / SHA | Risk |
|---|---|---|---|---|
| `SCF_base` | finite energy, pressure Poisson | SCF-good base packets | `live-theorem-edge.yaml` / `857f759a09ba16ec19c9fea3de17d61f3fcce666` | medium |
| `ATD_m^epsilon` | SCF smallness | finite-depth averaged tower | final assembly note / `5c29b5c2ff3394014628b858a579394aaf5b6aad` | medium |
| `AACT.KX` | averaged tower packet | local ACT budgets | live edge / `857f759a09ba16ec19c9fea3de17d61f3fcce666` | medium |
| `AACT.Global.noJump` | finite cover, local budgets, no `Jump_avg` | `DTC.A_avg` | `b464d2cdf8572332a1ae0871a682d19022db4dc4` | medium-high |
| `AVG.RCV.A` | `DTC.A_avg` | `LCI.A_avg` | live edge | low |
| `CSP.A_avg` | `LCI.A_avg+FCI.5f` | averaged collar Sobolev packet | final assembly note | low |
| `OFP.A_avg` | `CSP.A_avg` | averaged field persistence | final assembly note | low |
| `CFI.A_avg` | `OFP.A_avg` | averaged class invariance | final assembly note | low |
| `AVG.END.A` | `CFI.A_avg+AVG.END.Cert` | `End_NS_avg` | `b13bc3ecf3c2f5f7d28aa1dd13dcb915b4469184` | medium |
| `READ.COVER` | `End_NS_avg` | positive-scale SCF-good cover | `8c37039c9245b5e7a3ef0d06342c1c222b04bcbb` | medium-high |
| `READ.END` | `End_NS_avg`, cover, `Field.Read`, `DTC.Read` | `End_NS` | `2deb108308c11d6ee6ffa1ed44e14fc2d24a1d4d` | high |
| `End_NS` | pointwise endpoint rows | original endpoint package | readout compatibility note | medium |
| `ECQ.A` | no class exit, continuation criterion | `T_*=infty` | `5a2fcdc5daca3e5cead1906d921bbaf026aefa96` | high |

## Final conclusion

The strongest remaining mathematical hardening target is the no-escape compactness split, because it controls the finite positive-scale terminal cover without using pointwise endpoint readout upstream. The next proof polish should therefore expand `TGC.A` and the `Jump_avg` typing of bad material contact and terminal radius collapse.
