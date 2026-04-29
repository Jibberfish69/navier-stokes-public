# H1-H6 Unconditionalization Audit for `TCM.6`

## Claim level

This note records a visible theorem-surface audit for the current Navier-Stokes class-membership edge. The six burdens

```math
LCI.A,\quad CJ.A_{low}.7,\quad FCI.5f,\quad OFP.A,\quad CFI.A,\quad End_{NS}
```

are terminally closed at the retained H1-H6 packet level. Current repo surfaces support conditional closure. Unconditional Clay-level discharge remains unsupported by the read surfaces.

## Source cut

Read surfaces:

- `problems/navier-stokes/live-theorem-edge.md`
- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/theorem-construction/mpp-terminal-class-membership-six-burden-closure-note.md`
- `problems/navier-stokes/theorem-construction/mpp-act-kx-conditional-route-completion-packet.md`
- `problems/navier-stokes/proof-obligation-matrix.yaml`

The live edge names the primary frontier as the conditional terminal class-membership lane closure packet. The obligation matrix records standalone status `revise`, review verdict `conditional-pass`, and `all_discharged: false`.

## Six-burden status

Under H1-H6, the terminal packet gives the ordered discharge

```math
RSCB.NKF
\Rightarrow NKF.Native
\Rightarrow ACT.KX
\Rightarrow ACT.X\text{-Readout}
\Rightarrow ACT.A
\Rightarrow RCF.A
\Rightarrow LCI.A
\Rightarrow FCI.5f
\Rightarrow OFP.A
\Rightarrow CFI.A
\Rightarrow End_{NS}.
```

The named burden closures are:

1. `LCI.A`: supplied by the retained receiver chain through `ACT.KX + ACT.X-Scale + RWS.C_scale => ACT.X-Readout => ACT.A => RCF.A => LCI.A`.
2. `CJ.A_low.7`: supplied as the lower-carrier converse supplier on a fixed same-fluid transported cover; the installed result is `ACT.KX + Field^{<=C} => Gamma_low in L^1(I)`.
3. `FCI.5f`: supplied after `LCI.A` by `FPCR.C + FSCR.C + FCC.C1`.
4. `OFP.A`: supplied by `LCI.A + FCI.5f => CSP.A => OFP.A`.
5. `CFI.A`: supplied by `OFP.A + CFI.B1 + CFI.B2 => CFI.A`.
6. `End_NS`: supplied by `DTC-to-TowerBound + END.Exh + END.Cross + END.Pack + END.Field => End_NS`.

## H1-H6 audit

### H1: `RSCB.NKF`, retained-window admission

On a compact classical interval, H1 follows from classical local regularity near finitely many transported centers. The mollified center forcing has a retained smooth point-recovery limit, giving

```math
RSCB.NKF \Rightarrow NKF.Moll + NKF.Point \Rightarrow NKF.Native.
```

Unconditional endpoint discharge requires a proof that retained windows persist up to any first finite class endpoint, or that every first failure reduces to a proved endpoint face. Current surfaces record this through `ORIGIN.Retain` and accepted endpoint maps; they do not supply an independent raw finite-energy proof of retained-window admission through the endpoint.

### H2: bounded pack gauge

On a compact classical interval, the flow equation

```math
\partial_t D_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t)
```

and `\nabla u\in L^1_t L^\infty_x` give bounded deformation and bounded inverse deformation by Gronwall. This supplies the local pack gauge and finite same-fluid cover.

Unconditional endpoint discharge requires a source-backed proof that loss of the pack gauge is excluded, or that its loss is already one of the endpoint faces killed by `End_NS`. Current surfaces keep that bridge in the accepted class-membership vocabulary.

### H3: `ACT.KX` differential budget

H3 is the strongest internally proved analytic block once H1-H2 are available. The pressure, cutoff, middle, and top-viscous blocks combine into

```math
dX+c_\nu N\le (L_0+C A_{core})X+C_X X^{1/2}N+F_0,
```

```math
dA_{core}\le \mathcal K_{\le m}^{ctr}+\mathcal T_{tri}(A_{core}),
```

```math
\mathcal K_{\le m}^{ctr}\le C(X^{1/2}N^{1/2}+X)+F_K.
```

This closes by small `X` absorption and triangular center propagation on each scheduler interval. The proof is conditional on the retained native forcing and cover inputs from H1-H2.

### H4: scheduler and scale seeds

On compact classical intervals, scale seeds follow from affine-excess shrinkage at the transported centers. Absolute continuity of the `L^1` coefficients gives a finite partition satisfying the scheduler bound

```math
\left(\eta_X+\int_{I_a}(F_0+F_K)\right)
\exp\left(\int_{I_a}(L_0+C A_{core}+1)\right)\le 2\eta_X.
```

The unconditional burden is the same endpoint burden as H1-H2: the scheduler persists only while retained windows, finite covers, and local coefficient ledgers persist.

### H5: post-receiver source inputs

H5 is downstream of `LCI.A`. Once `LCI.A` is installed, the pressure source split, strain/cascade coefficient, and cutoff coefficient give

```math
LCI.A \Rightarrow FPCR.C+FSCR.C+FCC.C1 \Rightarrow FCI.5f.
```

Thus H5 is conditionally solved inside the packet after H1-H4 deliver `LCI.A`. It is not an independent raw-data input at the unconditional level.

### H6: tower and endpoint certificates

The finite DTC cover with depth at least `N+2` gives the tower readout. The endpoint conclusion also spends the accepted maps

```math
\neg Part\Rightarrow Dead,
\quad
\neg Pack\Rightarrow packing\text{-}detached\vee tower\text{-}blown,
\quad
\neg Field\Rightarrow Jump,
```

plus the blown split and cross-entry reductions. Conditional `End_NS` closes after these maps are accepted.

The unconditional burden is the proof of certificate exhaustiveness and cross-entry maps directly from the PDE/class-membership definitions. Current surfaces record those maps as accepted endpoint certificates inside H6, while the proof-obligation matrix still reports unresolved, bridge-pending, and frontier obligations.

## Conclusion

The six-burden stack is conditionally terminally closed under H1-H6. H3-H5 are internally closed once H1-H2 and the retained packet are available. H1, H2, and H6 carry the remaining unconditional burden: retained-window admission through endpoint, bounded pack-gauge persistence through endpoint, and endpoint certificate exhaustiveness/cross-entry proof.

The next theorem target is therefore:

```math
\text{Original smooth data}
\Rightarrow H1+H2+H6
```

with H3-H5 replaying as packet-internal consequences and the existing terminal chain then yielding

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

Until those endpoint and certificate bridges are proved from source-backed PDE statements, the correct repo status is conditional closure rather than unconditional Clay-level closure.