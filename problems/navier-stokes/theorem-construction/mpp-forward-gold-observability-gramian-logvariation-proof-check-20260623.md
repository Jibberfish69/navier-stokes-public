---
theorem_id: forward-gold-observability-gramian-logvariation-proof-check-20260623
status: corrected-conditional-gramian-route-installed-live-burden-remains-same-packet-envelope
logical_landing_node: simultaneous_material_fourbody_packet_coercivity
edge_effect: >-
  Checks the supplied Gramian/log-variation proof against the installed
  four-body frontier. The useful core is correct only for the infinite-time
  stable full-packet Gramian: stable no-return plus retained finite-time
  observability gives a positive symmetrizer, and Duhamel differentiation reduces
  moving H_sigma to relative variation of L_sigma and W_sigma. Fixed terminal
  gauge locates that relative variation in the same finite mixed material tower.
  The supplied proof is not an unconditional closure because the finite-time
  Gramian has an endpoint readout term, and the step that invokes the
  simultaneous four-body identity at level Nsharp is circular unless the
  same-packet defect envelope/summability theorem is already installed. Thus the
  route contributes a corrected conditional theorem, not a new independent
  producer. The live burden remains SimultaneousMaterialFourBodyPacketCoercivity.A
  through the same-packet interface-defect envelope.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-symmetrizer-log-variation-absorption-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-full-packet-dissipative-noreturn-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-quotient-spectral-stability-equivalence-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-interface-defect-envelope-after-qc-cg-gs-corrections-20260622.md
---

# Observability Gramian Log-Variation Proof Check

Date: 2026-06-23

## 0. Verdict

The supplied proof has the right shape after one correction.

The correct construction is not the finite-time observable Gramian

```math
G_{\sigma,T}
=
\int_0^T
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt .
\tag{OGL.1}
```

That object is positive by finite-time observability, but it satisfies

```math
\mathcal L_\sigma^\ast G_{\sigma,T}
+G_{\sigma,T}\mathcal L_\sigma
=
e^{T\mathcal L_\sigma^\ast}\mathcal W_\sigma e^{T\mathcal L_\sigma}
-\mathcal W_\sigma .
\tag{OGL.2}
```

The endpoint term in `(OGL.2)` is positive and prevents the instantaneous
four-body sign. This is exactly the obstruction already recorded in the
Gramian-to-\(X\)-term test.

The corrected construction is the stable infinite-time Gramian

```math
H_\sigma
:=
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt ,
\tag{OGL.3}
```

and `(OGL.3)` is available only after frozen quotient no-return/stability is
proved on the same material packet.

## 1. Conditional construction of \(H_\sigma\)

Assume the frozen quotient packet has uniform stable no-return:

```math
\|e^{t\mathcal L_\sigma}Z\|_{\mathcal H_N/\mathcal G}
\le
M e^{-\gamma t}
\|Z\|_{\mathcal H_N/\mathcal G},
\qquad
\gamma>0 .
\tag{OGL.4}
```

Then `(OGL.3)` is finite. Differentiating the integrand in \(t\) gives the
Lyapunov identity

```math
\mathcal L_\sigma^\ast H_\sigma
+H_\sigma\mathcal L_\sigma
=
-\mathcal W_\sigma .
\tag{OGL.5}
```

Retained finite-time observability supplies the lower bound:

```math
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z)\,dt
\ge
c\|Z\|_{\mathcal H_N/\mathcal G}^2 .
\tag{OGL.6}
```

Since `(OGL.3)` integrates over \([0,\infty)\), `(OGL.6)` gives

```math
\langle Z,H_\sigma Z\rangle
\ge
c\|Z\|_{\mathcal H_N/\mathcal G}^2 .
\tag{OGL.7}
```

The upper bound follows from `(OGL.4)` and boundedness of the frozen readout on
the retained packet class. Thus

```math
c_0I\le H_\sigma\le C_0I
\tag{OGL.8}
```

on the gauge quotient.

So the attached Gramian construction is correct in this conditional form:

```math
\boxed{
\text{stable no-return}
+\text{retained finite-time observability}
\Longrightarrow
\text{positive full-packet symmetrizer }H_\sigma .
}
\tag{OGL.9}
```

## 2. Differentiating the stable Gramian

Duhamel gives

```math
\partial_\sigma e^{t\mathcal L_\sigma}
=
\int_0^t
e^{(t-r)\mathcal L_\sigma}
(\partial_\sigma\mathcal L_\sigma)
e^{r\mathcal L_\sigma}
\,dr .
\tag{OGL.10}
```

Therefore

```math
\begin{aligned}
\partial_\sigma H_\sigma
= {}&
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
(\partial_\sigma\mathcal W_\sigma)
e^{t\mathcal L_\sigma}
\,dt                                                   \\
&+
\int_0^\infty\int_0^t
e^{r\mathcal L_\sigma^\ast}
(\partial_\sigma\mathcal L_\sigma)^\ast
e^{(t-r)\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}
\,dr\,dt                                               \\
&+
\int_0^\infty\int_0^t
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{(t-r)\mathcal L_\sigma}
(\partial_\sigma\mathcal L_\sigma)
e^{r\mathcal L_\sigma}
\,dr\,dt .
\end{aligned}
\tag{OGL.11}
```

Define the operator log-variation density

```math
\Theta_H(\sigma)
:=
\left\|
H_\sigma^{-1/2}
(\partial_\sigma H_\sigma)
H_\sigma^{-1/2}
\right\| .
\tag{OGL.12}
```

Under `(OGL.4)`--`(OGL.8)`, `(OGL.11)` gives

```math
\Theta_H(\sigma)
\le
C_{\gamma,M,c_0,C_0}
\left(
\|\partial_\sigma\mathcal W_\sigma\|_{\rm rel}
+
\|\partial_\sigma\mathcal L_\sigma\|_{\rm rel}
\right),
\tag{OGL.13}
```

where the relative norms are the norms in the same retained packet Hilbert
geometry generated by \(H_\sigma\) and \(\mathcal W_\sigma\). This is not an
outside estimate; it is the exact Duhamel sensitivity of the full-packet
Gramian.

## 3. Fixed-terminal gauge places the variation inside the same tower

For

```math
V_\sigma(s,y)
=
r\,u(T^\ast+r^2s,x^\ast+ry),
\qquad
r=e^{-\sigma},
\tag{OGL.14}
```

the fixed-terminal scale derivative is

```math
\partial_\sigma V_\sigma
=
-V_\sigma-y\cdot\nabla V_\sigma-2s\,\partial_sV_\sigma .
\tag{OGL.15}
```

Using

```math
\partial_sV_\sigma
+(V_\sigma\cdot\nabla)V_\sigma
+\nabla Q_\sigma
=
\nu\Delta V_\sigma ,
\tag{OGL.16}
```

this is equivalently

```math
\partial_\sigma V_\sigma
=
-V_\sigma-y\cdot\nabla V_\sigma
+2s\left(
(V_\sigma\cdot\nabla)V_\sigma
+\nabla Q_\sigma
-\nu\Delta V_\sigma
\right).
\tag{OGL.17}
```

The pressure variation is

```math
\partial_\sigma Q_\sigma
=
-2Q_\sigma-y\cdot\nabla Q_\sigma-2s\,\partial_sQ_\sigma ,
\tag{OGL.18}
```

with \(\partial_sQ_\sigma\) determined by the differentiated pressure equation.

Thus \(\partial_\sigma\mathcal L_\sigma\) and
\(\partial_\sigma\mathcal W_\sigma\) are generated by a finite inflation of the
same mixed material tower:

```math
v,\quad q,\quad A,\quad G,\quad
D_a^\alpha v,\quad D_a^\alpha q,\quad
D_a^\alpha A,\quad D_a^\alpha G
\qquad (|\alpha|\le N^\sharp).
\tag{OGL.19}
```

The finite inflation \(N^\sharp>N\) is fixed by the chosen \(N\)-rung Hilbert
packet: scale differentiation contributes scaling derivatives, one time
derivative, and the viscous second spatial derivative.

## 4. The actual producer needed

The useful estimate in the supplied proof is exactly this:

```math
\boxed{
\|\partial_\sigma\mathcal W_\sigma\|_{\rm rel}
+
\|\partial_\sigma\mathcal L_\sigma\|_{\rm rel}
\le
C\,{d\over d\sigma}[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
+R_\sigma .
}
\tag{OGL.20}
```

If `(OGL.20)` holds with \(R\in L^1_\sigma\), then `(OGL.13)` gives

```math
\Theta_H(\sigma)
\le
C\,{d\over d\sigma}[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
+R_\sigma .
\tag{OGL.21}
```

Integrating,

```math
\int_{\sigma_0}^{\infty}\Theta_H(\sigma)\,d\sigma
\le
C\int_{\sigma_0}^{\infty}
d[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
+\int_{\sigma_0}^{\infty}R_\sigma\,d\sigma .
\tag{OGL.22}
```

So the proof of finite operator log-variation is reduced to two same-packet
inputs:

```math
\boxed{
\text{stable no-return for the frozen full packet}
}
\tag{OGL.23}
```

and

```math
\boxed{
\text{relative operator/readout variation controlled by material record
log-growth.}
}
\tag{OGL.24}
```

## 5. Where the supplied proof becomes circular

The supplied proof then invokes the simultaneous four-body packet identity at
level \(N^\sharp\):

```math
d[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
\le
C\,dA_{4B,N^\sharp}.
\tag{OGL.25}
```

and then invokes

```math
\int_{\sigma_0}^{\infty}dA_{4B,N^\sharp}<\infty .
\tag{OGL.26}
```

This is legitimate only after the simultaneous packet coercivity theorem has
already been installed at level \(N^\sharp\). It cannot be used as an independent
proof of that theorem.

The installed material-record note proves `(OGL.25)` as a channel identity when
\(A_{4B,N^\sharp}\) is defined as the full tower-level same-carrier activity. It
does not prove that this full tower-level activity is already controlled by the
oriented four-body cancellation loop from original smooth data.

Thus the supplied proof does not close the pure-gold wall by itself.

## 6. Corrected result

The corrected theorem is:

```math
\boxed{
\begin{array}{l}
\text{stable no-return for the frozen full packet}\\
+\text{relative operator/readout variation controlled by material record}\\
+\text{summable same-packet material-record envelope}
\end{array}
\Longrightarrow
\int_{\sigma_0}^{\infty}\Theta_H(\sigma)\,d\sigma<\infty .
}
\tag{OGL.27}
```

Then the moving symmetrizer is absorbed by the integrating factor. Indeed,

```math
\left|
\langle
\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\rangle
\right|
\le
\Theta_H(\sigma)
\langle\mathfrak U_\sigma,H_\sigma\mathfrak U_\sigma\rangle .
\tag{OGL.28}
```

So

```math
{d\over d\sigma}\mathfrak L_\sigma
+\mathcal W_\sigma
\le
\Theta_H(\sigma)\mathfrak L_\sigma
+R_\sigma
\tag{OGL.29}
```

becomes, after multiplication by

```math
\exp\left(
-\int_{\sigma_0}^{\sigma}\Theta_H(\tau)\,d\tau
\right),
\tag{OGL.30}
```

an ordinary dissipative inequality. Since `(OGL.22)` makes the integrating
factor bounded above and below by positive constants,

```math
\int_{\sigma_0}^{\infty}\mathcal W_\sigma\,d\sigma<\infty .
\tag{OGL.31}
```

This gives the desired unweighted same-packet four-body clock once the three
inputs in `(OGL.27)` are genuinely proved.

## 7. Current proof state after the check

The attachment is therefore useful, but it does not add an independent gold
supplier.

What is already installed:

```math
\text{kernel rigidity}
+\text{retained compact quotient}
\Longrightarrow
\text{finite-time frozen observability}.
\tag{OGL.32}
```

What remains unavailable as an independent input:

```math
\text{finite-time frozen observability}
\Longrightarrow
\text{stable no-return}.
\tag{OGL.33}
```

The existing no-return direct test already shows `(OGL.33)` is false as an
abstract implication and circular for the Navier--Stokes packet unless the
simultaneous \(X\)-term/envelope theorem is supplied.

The exact live PDE construction is still:

```math
\boxed{
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}
}
\tag{OGL.34}
```

with the sharpened interface form:

```math
\boxed{
\text{all named interface defects are zero, strict same-packet loss, or
summable same-packet residual.}
}
\tag{OGL.35}
```

This is the same object as the finite operator-log variation route. The Gramian
calculation shows how \(H_\sigma\) would move once the same-packet stability and
defect envelope are proved; it does not replace that proof.
