# Selector-Localized Transport Intertwining Discharge

## Statement

Let

```math
v:=\rho(Y),
\qquad
u_{coh}:=\rho(\mathbb H_DX).
```

Assume the frequency-aligned readout

```math
\rho(\mathbb S_D(j)\mathbb H_DY)=P_{\le j}v_{coh},
\qquad v_{coh}:=\rho(\mathbb H_DY),
```

and assume the carrier localizer reads out as

```math
\rho(Q_iZ)=\widetilde Q_i\rho(Z).
```

Assume the coherent transport operator satisfies the local readout law

```math
\rho(B_i(X)Z)=\widetilde Q_i\big((u_{coh,i}\partial_i)\rho(Z)\big)+R_i^{loc}[X;Z].
```

Then, for `Z=\mathbb S_D(j)\mathbb H_DY`,

```math
\rho(B_i(X)\mathbb S_D(j)\mathbb H_DY)
=
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)v\big)
+R^{collar}_{i,j}[X;Y].
```

## Proof

Apply the local readout law with

```math
Z=\mathbb S_D(j)\mathbb H_DY.
```

This gives

```math
\rho(B_i(X)\mathbb S_D(j)\mathbb H_DY)
=
\widetilde Q_i\big((u_{coh,i}\partial_i)\rho(\mathbb S_D(j)\mathbb H_DY)\big)
+R_i^{loc}[X;\mathbb S_D(j)\mathbb H_DY].
```

Use frequency-aligned readout:

```math
\rho(\mathbb S_D(j)\mathbb H_DY)=P_{\le j}v_{coh}.
```

Now add and subtract the target localized low-pass transport term:

```math
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)v\big).
```

Define

```math
R^{collar}_{i,j}[X;Y]
:=R_i^{loc}[X;\mathbb S_D(j)\mathbb H_DY]
+
\widetilde Q_i\big((u_{coh,i}\partial_i)P_{\le j}v_{coh}\big)
-
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)v\big).
```

Substitution gives the claimed identity.

## Collar expansion

The collar remainder splits as

```math
R^{collar}_{i,j}
=R_i^{loc}
-
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)v_{noncoh}\big)
+
\widetilde Q_i\,[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}
-
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)P_{>j}v_{coh}\big),
```

where

```math
v=v_{coh}+v_{noncoh}.
```

This is the exact target for the lower-order collar estimate.

## Consequence

The selector-localized transport intertwining identity is discharged as an algebraic bridge under frequency-aligned readout and local transport readout. The next theorem target is the lower-order estimate for `R^{collar}_{i,j}`.
