# CAVG.J Sequencing Audit For AACT.Global

## Status

Sequencing audit for the averaged `PCTP.hard` route.

This note checks the role of the bad material set and the averaged jump face in the chain

```math
SGC.A_{a.e.}+CAVG.J+TGC.A+AACT.Global.noJump.
```

## Definitions

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

The averaged jump face on a terminal same-fluid tail `\mathcal T` records loss of positive SCF-good same-fluid scale:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
```

plus the strict terminal scale-degeneration clause supplied by `TGC.A`.

## Lemma 1: bad set enters the averaged endpoint matrix

For the relevant same-fluid terminal tail,

```math
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}(\mathcal T).
```

Proof. Pick `(a,t)` in the intersection. By definition of the bad set, every positive same-fluid cylinder centered at `(a,t)` violates the `SCF_base <= epsilon_m` threshold. Therefore the terminal tail contains a point with zero positive SCF-good scale. This is exactly the averaged jump endpoint face.

## Lemma 2: SGC supplies only the good-region cover

`SGC.A_{a.e.}` supplies finite `SCF_base` good subcovers on compact subsets of

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi\setminus\mathcal B_{\varepsilon_m}^{\Phi}.
```

It supplies coverage of the good region. The complement is routed to `Jump_avg` by Lemma 1.

## Lemma 3: no-Jump branch supplies the AACT cover domain

On a branch satisfying

```math
\neg Jump_{avg}(\mathcal T),
```

the tail avoids the bad material set and avoids terminal SCF-good radius degeneration by `TGC.A`. Hence the terminal tail lies in the strict averaged-good finite-cover branch. Therefore `AACT.Global.noJump` applies and gives

```math
DTC.A_{avg}.
```

## Lemma 4: Jump_avg removal is not supplied by the good-branch production

`Jump_avg` can be removed as an endpoint face inside the averaged endpoint
theorem only after the averaged field chain has produced `CFI.A_avg`:

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

The valid route order is

```math
SGC.A_{a.e.}+CAVG.J
\Longrightarrow
(DTC.A_{avg}\ \vee\ Jump_{avg}),
```

then the averaged consumer chain builds

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg},
```

and the endpoint theorem removes the averaged faces on that produced averaged
endpoint package.

This does not by itself eliminate a branch that has already entered `Jump_avg`
before `CFI.A_avg` is produced. The CM source-pulse branch is consumed by
`SourcePulseCMExit.A`. The downstream positive `PCTP.hard` route requires a
no-pulse/AWG-style supplier for literal no-`Jump_avg` terminal-tail production.

After that,

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

## Sequencing verdict

The role split is valid with the following boundary:

1. `SGC.A_{a.e.}` covers the good region.
2. `CAVG.J` types the bad region as `Jump_avg`.
3. `TGC.A` types terminal good-radius collapse as `Jump_avg`.
4. `AACT.Global.noJump` proves `DTC.A_{avg}` on the complementary branch.
5. `AVG.END.A` removes `Jump_avg` only after `CFI.A_avg` exists on the averaged
   endpoint package.
6. `READ.COVER` appears only after `End_NS_avg`.

Thus the averaged route avoids the previous pointwise-readout circularity, but
it does not by itself discharge the `Jump_avg` branch. That branch must be
consumed by CM exit or killed by a separate no-pulse/no-jump supplier.
