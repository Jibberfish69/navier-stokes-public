# H1-H2-H6 / `ORIGIN.Retain` Source-Backed Attack Note

## Claim level

This note attacks the shortest route requested by the active solve queue:

```math
H1+H2+H6+ORIGIN.Retain.
```

The current result is an attempted source-backed reduction. It upgrades the local parts of H1, H2, and H4 on compact classical intervals, and it reduces the endpoint upgrade to three exact remaining primitive theorems:

```math
EndpointFace.Type,
\qquad
PackGauge.Dichotomy,
\qquad
RetainedAdmission.FirstFailure.
```

The six-burden packet remains conditional until those primitive theorems are proved from the PDE/class-membership definitions.

## Source cut

Read surfaces:

- `mpp-retained-window-native-forcing-theorem-program.md`
- `mpp-lci-a-retained-window-small-budget-scheduler-audit-note.md`
- `mpp-class-membership-endpoint-matrix-closure-contract-note.md`
- `mpp-endpoint-source-terminal-conditional-assembly-note.md`
- `mpp-act-kx-conditional-route-completion-packet.md`
- `proof-obligation-matrix.yaml`

## Local theorem 1: H1 on compact classical intervals

Let `(u,p)` be a classical Navier-Stokes solution on a compact interval `I=[a,b]\Subset[0,T_*)`. Fix the finite retained center family

```math
c_j(t)=\Phi(a^j,t).
```

Classical smoothness gives positive retained radii `r_a` with

```math
B(c_j(t),2r_a)\subset Q_t^{rec,+}
```

and finite local norms

```math
\sum_{q\le m+2}\|U_q\|_{L^\infty_t C^2_x(B(c_j(t),2r_a))}
+
\|p\|_{L^1_t C^{m+1,\alpha}_x(B(c_j(t),2r_a))}<\infty.
```

The retained-window native forcing theorem then gives

```math
RSCB.NKF
\Rightarrow ACT.X\text{-}Scale+NKF.Moll+NKF.Point+NKF.Native+RWS.C_{scale}^{geom}.
```

Thus H1 is locally solved on every compact classical interval.

## Local theorem 2: H2 on compact classical intervals

On the same compact interval, the transported flow satisfies

```math
\partial_t D_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t).
```

Since `u` is classical on the retained tube,

```math
\|\nabla u\|_{L^1_tL^\infty_x(I\times Q_t^{rec,+})}<\infty.
```

Gronwall gives bounded `D_a\Phi`. Incompressibility and smooth invertibility give bounded inverse deformation. Therefore the pack gauge satisfies

```math
\Gamma_{pack,Q}\in L^\infty(I),
```

and the label-tube compactness argument supplies the finite dynamic same-fluid cover used by `RWS.C_scale`. Thus H2 is locally solved on every compact classical interval.

## Local theorem 3: H4 scheduler after H1-H2

The scheduler audit separates the easy partition from the seed. H1 supplies the scale seed:

```math
ACT.X\text{-}Scale:
\forall s_a,\forall \eta_X>0,\exists R_a>0\quad X^{exc}(s_a;R_a)\le\eta_X.
```

H3 supplies the coefficient budget form

```math
dX+c_\nu N\le (L_0+C A_{core})X+C_X X^{1/2}N+F_0,
```

with `L_0,F_0,F_K\in L^1` on retained windows. Absolute continuity of these `L^1` budgets refines the retained windows until

```math
\left(\eta_X+\int_{I_a}(F_0+F_K)\right)
\exp\left(\int_{I_a}(L_0+C A_{core}+1)\right)\le 2\eta_X.
```

Thus H4 is locally solved once H1-H3 are available.

## Conditional theorem 4: H6 from endpoint cells

The endpoint matrix note gives the conditional package

```math
END.Pack+END.Field+END.TowerBound+END.Cross+END.Exh\Rightarrow End_{NS}.
```

The analytic tower input is

```math
DTC\text{-}to\text{-}TowerBound\Rightarrow END.TowerAmp\Rightarrow END.TowerBound.
```

The formal endpoint exclusions are:

```math
\Gamma_{pack,Q}\in L^\infty(I)\Rightarrow \neg packing\text{-}detached,
```

```math
OFP.A\Rightarrow \neg Jump,
```

```math
\mathfrak A_{N,Q}\in L^\infty(I)\Rightarrow \neg tower\text{-}blown.
```

The remaining source issue inside H6 is the certificate step

```math
\neg Part\Rightarrow Dead,
\qquad
\neg Pack\Rightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field\Rightarrow Jump,
```

plus the cross-entry reductions. Current surfaces treat these as accepted endpoint certificate definitions/theorems. A full source-backed proof must derive them from the PDE/class-membership definitions.

## `ORIGIN.Retain` reduction

The original-data upgrade is noncircular exactly when the following first-failure theorem is proved.

### Required theorem `RetainedAdmission.FirstFailure`

Let `T_*<\infty` be the first time at which the retained route cannot be continued from smooth initial data. Then the failing object is typed into the endpoint matrix:

```math
\text{first retained-route failure}
\Rightarrow
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

The proof must split into three primitive pieces.

### Primitive 1: `EndpointFace.Type`

Every failure of the class-membership witness

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
```

must land in exactly one of the native endpoint faces or cross bundles. This proves `END.Exh` and the cross grammar from definitions.

### Primitive 2: `PackGauge.Dichotomy`

If the transported pack gauge loses boundedness at the first retained endpoint, then either physical packing detaches or the finite tower amplitude blows:

```math
\Gamma_{pack,Q}\notin L^\infty([0,T_*))
\Rightarrow
packing\text{-}detached\vee tower\text{-}blown.
```

This is the missing source-backed bridge behind the H2 endpoint upgrade.

### Primitive 3: `RetainedAdmission.Persistence`

If pack gauge, participation, field coherence, and tower amplitude stay finite on an approach window, then retained center balls, local smooth norms, and scheduler seeds persist on a shorter continuation window. This supplies H1, H2, and H4 past the alleged first failure.

Combining the three primitives gives `ORIGIN.Retain` without endpoint circularity:

```math
OriginalSmoothData
+EndpointFace.Type
+PackGauge.Dichotomy
+RetainedAdmission.Persistence
\Rightarrow H1+H2+H6.
```

Then H3-H5 replay inside the existing packet and yield

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Audit map for items 5-10

After the three primitives above, items 5-10 become audit checks rather than new route choices:

1. H3 audit: verify `ACT.KX` spends only retained-window geometry, native forcing, pressure/cut/mid/top estimates, and scheduler inputs.
2. H4 audit: verify all scheduler windows arise from `ACT.X-Scale` plus absolute continuity.
3. H5 audit: verify `FPCR.C+FSCR.C+FCC.C1=>FCI.5f` stays post-`LCI.A`.
4. `DTC-to-TowerBound`: verify finite-cover readout for both `U_k` and `K_k`.
5. `END.Exh`: replace accepted certificate maps with `EndpointFace.Type` proof.
6. `END.Cross`: derive cross-entry reductions from the same endpoint grammar.

## Current conclusion

The shortest live route is now reduced to the following exact solve target:

```math
\boxed{
EndpointFace.Type
+PackGauge.Dichotomy
+RetainedAdmission.Persistence
\Rightarrow
H1+H2+H6+ORIGIN.Retain.
}
```

The repository has theorem-grade local H1/H2/H4 machinery and conditional H6 assembly. The remaining work is the three primitive endpoint/admission theorems above.