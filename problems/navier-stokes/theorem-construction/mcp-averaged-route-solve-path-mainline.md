# Averaged Route Solve Path Mainline

## Status

Conditional averaged finite-energy mainline.

This note records the solve path for the finite-energy-native route. It uses averaged packets through the receiver and endpoint stages, then invokes pointwise recovery only at terminal readout.

## 1. Local finite-energy gain: `ATD_m^epsilon`

On a CKN-admissible same-fluid moving cylinder with bounded distortion, assume

```math
SCF_{base}(Q_r^\Phi(a_0,t_0))\le\varepsilon_m.
```

Then the local epsilon theorem gives a shrunken cylinder

```math
Q_{\theta_m r}^\Phi(a_0,t_0)
```

where the finite-depth averaged affine tower packet holds:

```math
ATD_m(Q_{\theta_m r}^\Phi).
```

Equivalently,

```math
SCF_{base}\le\varepsilon_m\Longrightarrow ATD_m^\varepsilon.
```

The proof uses CKN epsilon regularity after converting the bounded-distortion same-fluid cylinder to a CKN-compatible frame. Interior parabolic bootstrapping supplies every finite tower rung required by the route, including the averaged seed, excess packet, dissipation packet, pressure readout, and mollified center-forcing ledgers.

Thus

```math
SCF_{base}+ATD_m^\varepsilon\Longrightarrow SCF_{avg}^m.
```

## 2. Averaged ACT.KX absorption

The averaged first-exit inequality is

```math
D^+X_R+c_\nu N_R
\le
(1+A_R+V_R+P_R)X_R
+C_\ast(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})N_R
+F_R.
```

Choose the averaged smallness threshold so that, on the first-exit interval,

```math
C_\ast(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})\le c_\nu/2.
```

Then

```math
D^+X_R+(c_\nu/2)N_R
\le
(1+A_R+V_R+P_R)X_R+F_R.
```

The scheduler bound and Gronwall yield

```math
X_R\in L^\infty(I_R),
\qquad
N_R\in L^1(I_R).
```

Testing the tower equations against transported mollifiers gives

```math
\mathcal K_{\le m}^{avg,R}\in L^1(I_R).
```

Therefore

```math
SCF_{avg}^m\Longrightarrow AACT.KX.
```

## 3. Averaged transported-center packet

The finite same-fluid cover transfer gives

```math
AACT.KX+RWS.C_{scale}\Longrightarrow DTC.A_{avg}.
```

The averaged packet includes

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1,
```

plus averaged pressure, viscous, and residual readouts.

This is an averaged object. It enters pointwise endpoint analysis only through `DTC.Read`.

## 4. Averaged receiver closure

The averaged receiver bridge is

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

For each averaged packet instance, `DTC.A_avg` supplies

```math
\Omega^{avg}\in L^2(I),
\qquad
\mathfrak D_1^{aff,avg}\in L^1(I),
\qquad
\mathfrak F^{ctr,res,avg}\in L^1(I).
```

The averaged lower-carrier Gronwall coefficient lies in `L^1(I)`, and the finite required parameter set gives uniform closure:

```math
LCI.A_{avg}.
```

Then

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

## 5. Bad material set and averaged endpoint typing

Define

```math
\mathcal B_{\varepsilon_m}^{\Phi}
=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

The averaged jump grammar is

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing\Longrightarrow Jump_{avg}
```

on the relevant same-fluid terminal approach tail.

Good material regions are covered by

```math
SGC.A_{a.e.}+ATD_m^\varepsilon,
```

and the bad material set is assigned to the averaged endpoint face. Hence

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{good averaged cover or }Jump_{avg}.
```

## 6. Averaged endpoint and main conclusion

The averaged endpoint package is

```math
End_{NS,avg}.
```

It removes `Dead`, `packing-detached`, `tower-blown_avg`, and `Jump_avg` inside the averaged endpoint grammar. Therefore

```math
CFI.A_{avg}+End_{NS,avg}\Longrightarrow\text{no averaged finite-time class exit}.
```

The compressed averaged main theorem is

```math
AVG.MAIN.A:
SCF_{base}+ATD_m^\varepsilon+CAVG.J+AVG.RCV.A+AVG.END.A+FFSRC.A
\Longrightarrow
\text{no averaged finite-time class exit}.
```

## 7. Terminal readout to pointwise endpoint

Pointwise endpoint recovery is terminal:

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A,
```

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

`DTC.Read` supplies the pointwise tower input needed for

```math
DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

`Field.Read` supplies the pointwise field row needed for `END.Field`. `Pack` and `Part` are shared rows. `END.Exh` and `END.Cross` then apply to the pointwise endpoint matrix.

Thus terminal readout recovers

```math
End_{NS}.
```

## 8. Exact branch status

The exact same-depth pressure branch is

```math
FIRP.A0:
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

This remains a separate exact branch. The finite increment repair fails because finite frozen increments cannot control fixed-radius Holder seminorms. The main finite-energy solve path therefore proceeds through the averaged route and terminal readout, while the strengthened retained source branch proceeds through

```math
FPC.H\Longrightarrow FFPB.A0\Longrightarrow FFSRC.A\Longrightarrow FCI.5f.
```

## 9. Final solve path

The finite-energy-native solve path is:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
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
CFI.A_{avg}
\Longrightarrow
End_{NS,avg}
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

This is the route to pursue as the main solution path. Pointwise objects are used only after the terminal readout bridge.
