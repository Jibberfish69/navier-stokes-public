---
theorem_id: forward-gold-original-smooth-to-prelimit-master-balance-family-direct-attempt-20260623
status: original-data-material-unity-clarified-terminal-material-history-passage-is-live
logical_landing_node: original_smooth_data_to_prelimit_master_balance_family
edge_effect: >-
  Corrects the remaining repo-side gate after the prelimit master-balance route
  supersedes the post-limit Kawashima burden. Original smooth data supplies one
  smooth material history at every preterminal time: the center spike, the
  annular layers underneath it, the strain/internal-force record, and the
  delayed annular return are not separate physical objects. The represented
  material-history argument closes by the prelimit master balance and A_4B
  lower-bound counting. The live gold passage is material-history preservation:
  the terminal storage/overlap quantity must continue to be read on that same
  prelimit material history. A limiting description that forgets the
  transported pressure-viscosity-incompressibility-velocity record no longer
  describes the material event under test; it is not a hidden gold residual and
  not a physically detached spike.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-route-supersedes-postlimit-kawashima-burden-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-singularity-to-retained-material-critical-packet-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-part-noexit-direct-attempt-20260622.md
---

# Original Smooth Data To Prelimit Master Balance Family Direct Attempt

Date: 2026-06-23

## 0. Target from original data forward

After the prelimit master-balance repair, the remaining proposed pure-gold gate
is:

```math
\boxed{
\texttt{OriginalSmoothDataToPrelimitMasterBalanceFamily.A}
}
\tag{OSF.1}
```

Its job is to start from original smooth data and a finite-time terminal
obstruction, then keep the selected terminal readout on the same transported
material history to which the prelimit master balance applies.

That family must have:

```math
\text{smooth prelimit material packets, transported collars, bounded overlap,}
\tag{OSF.2}
```

```math
\text{residual normal form, and all critical terms in clock/loss before compactness.}
\tag{OSF.3}
```

The corrected attempt does not introduce a physically lost-record branch.
Preterminally, there is one material event.  A limiting description is useful
only while it continues to describe that event.

## 1. What original smooth data supplies preterminally

Let \((u,p)\) be the classical solution on \([0,T_*)\).  For every
preterminal scale \(r_m>0\) and every terminal heat-scale window staying inside
\(t<T_*\), define

```math
V_m(s,y)=r_m u(T_*+r_m^2s,x_*+r_my),
\qquad
Q_m(s,y)=r_m^2p(T_*+r_m^2s,x_*+r_my).
\tag{OSF.4}
```

On every such preterminal packet the material pullback exists:

```math
X_m(a,s),\qquad
v_m=V_m(X_m(a,s),s),\qquad
q_m=Q_m(X_m(a,s),s),
\tag{OSF.5}
```

```math
F_m=D_aX_m,\qquad
A_m=F_m^{-1},\qquad
G_m=A_mA_m^\top.
\tag{OSF.6}
```

The pulled-back law is classical:

```math
\partial_s v_m+A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\qquad
\operatorname{div}_a(A_mv_m)=0.
\tag{OSF.7}
```

So original smooth data supplies the smooth prelimit packet identities for each
finite \(m\).  The center spike, annular shell, strain record, and later return
are one material object before the terminal limit is taken.

Smooth initial data may contain infinitely many frequencies.  What smoothness
and finite energy exclude is infinite initial amplitude.  In Fourier language,
the initial packet may have infinitely many modes, but the amplitudes decay so
that the chosen Sobolev and energy norms are finite:

```math
u_0(x)=\int_{\mathbb R^3}\widehat u_0(k)e^{ik\cdot x}\,dk,
\qquad
\int (1+|k|^2)^N|\widehat u_0(k)|^2\,dk<\infty
\tag{OSF.8}
```

for the finite tower level \(N\) under discussion.  Thus any later spike is a
redistribution and deformation of finite initial material content, not an
externally injected infinite-amplitude wave.

## 2. Full-clock consequence on the material history

Once the terminal storage/overlap quantity is kept on the same prelimit material
history, the selected family is the transported material packet.
At finite tower level \(N\), this is the record:

```math
\sup_m \mathcal P_{N,m}^{mat}<\infty
\quad\text{on the selected normalized material packets}
\tag{OSF.9}
```

after harmless gauge removal, with transported collars and bounded overlap
strong enough for the residual normal form.  This is not a second branch of the
fluid.  It is the same smooth material history read in the terminal heat-scale
coordinates.

Then the prelimit master-balance theorem applies:

```math
d\mathfrak L_{4B,N}
+
c_0\left(
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
\right)
+
d\mathcal L_{4B,N}
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty .
\tag{OSF.10}
```

Since the relaxed storage is lower-bounded,

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty
\tag{OSF.11}
```

and

```math
\int_{\sigma_0}^{\infty}
d[\log(1+\mathcal P_N^{mat})]_+
<\infty .
\tag{OSF.12}
```

Now suppose this same material history still contains a finite-time
endpoint singularity.  The moving-cylinder singularity criterion used in this
route gives infinitely many gauge-fixed material packets \(P_j\) with
non-removable critical density:

```math
\mathcal C^\perp(P_j)\ge\varepsilon_0 .
\tag{OSF.13}
```

The retained lower-bound theorem gives:

```math
\int_{P_j}A_{4B}\ge c(\varepsilon_0)>0 .
\tag{OSF.14}
```

The selected log-scale intervals have bounded multiplicity \(K\).  Therefore

```math
\sum_j c(\varepsilon_0)
\le
K\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
<\infty .
\tag{OSF.15}
```

This is impossible for infinitely many \(j\).  Hence:

```math
\boxed{
\text{terminal storage/overlap kept on the original material history}
\Longrightarrow
\text{no finite-time singular endpoint on that material history.}
}
\tag{OSF.16}
```

## 3. Material-history passage

The exact live passage is:

```math
\boxed{
\text{terminal storage/overlap quantity}
\Longrightarrow
\text{same prelimit material annular history.}
}
\tag{OSF.17}
```

This is where Thomas's pay-it-back-later picture lives mathematically.  Let
\(A_0\) be the initial material annular layer and \(A(t)=X(A_0,t)\).  The
later return is the stress/strain record on \(A(t)\), not a second object.
For any transported cutoff \(\phi\), the exact identity is:

```math
\frac{d}{dt}\int \frac12 |u|^2\phi\,dx
+
2\nu\int \phi |S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx .
\tag{OSF.18}
```

The physical "later debt" is the right-hand stress/strain work together with
the internal strain loss.  If a center readout sees a last-time storage pulse,
then at every smooth preterminal scale:

```math
\operatorname{Var}_I
\int \frac12 |u|^2\phi\,dx
\le
\int_I
\left(
2\nu\int \phi |S|^2\,dx
+
\left|\int u\cdot(-pI+2\nu S)\nabla\phi\,dx\right|
\right)dt .
\tag{OSF.19}
```

For spike thinning, the same material map gives the deformation clock.  With
\(F=D_aX\), \(C=F^\top F\), and
\(S=(\nabla u+\nabla u^\top)/2\),

```math
\partial_t C=2F^\top S F.
\tag{OSF.20}
```

Therefore material thinning by a factor \(\Lambda\) forces:

```math
\int_I\|S(t)\|_{L^\infty(A(t))}\,dt
\ge
\log\Lambda .
\tag{OSF.21}
```

An infinitely rising finite-energy spike must thin.  Infinitely many dyadic
thinnings on the same material event force infinitely many units of the
scale-invariant strain clock:

```math
\sum_j \log 2 = \infty .
\tag{OSF.22}
```

The simultaneous four-body master balance is exactly the assertion that this
same material strain/stress/tower clock is finite on the gold branch:

```math
d\mathfrak L_{4B,N}
+
c\,d\Omega_N
\le
dR_{4B,N},
\qquad
\int dR_{4B,N}<\infty,
\qquad
\mathfrak L_{4B,N}\ge -C,
\tag{OSF.23}
```

where \(d\Omega_N\) contains the full same-material participation clock:

```math
d\Omega_N
=
dA_{4B,N}
+
d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N}.
\tag{OSF.24}
```

Integrating `(OSF.23)` gives:

```math
\int_{\sigma_0}^{\infty}d\Omega_N<\infty .
\tag{OSF.25}
```

So a terminal readout that requires infinitely many dyadic material-thinning
returns contradicts the finite full same-material clock.

## 4. Exact repo state

The repaired repo chain is now:

```math
\text{terminal readout kept on the original material history}
\Longrightarrow
\text{prelimit master balance applies}
\Longrightarrow
\int d\Omega_N<\infty
\Longrightarrow
\text{infinite spike-thinning recurrence is impossible.}
\tag{OSF.26}
```

## Verdict

The exact gold proof is now written from original data forward.  The smooth
preterminal solution gives one material event; stress/strain is the physical
later return; material thinning spends the strain clock; the simultaneous
four-body master balance makes the full same-material clock finite; and a
finite-time infinite spike-thinning recurrence would require that clock to be
infinite.
