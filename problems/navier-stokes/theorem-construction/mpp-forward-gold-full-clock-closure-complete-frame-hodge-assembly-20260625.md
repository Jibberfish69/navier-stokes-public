---
theorem_id: forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625
status: candidate-assembly-referee-blocked-finite-total-action-not-certified
logical_landing_node: original_smooth_data_material_history_no_finite_breakdown
edge_effect: >-
  Assembles the corrected Gold-route candidate after the projector-first Hodge
  reduction and the complete-frame trace-free primitive payment.  The assembly
  identifies how pressure, collar, coefficient-frame, annular, and primitive
  driver pieces should be read inside one graph-compatible full action.  A
  June 26 referee sufficiency audit demoted the note from proof-installed to
  candidate-assembly because several parents remain conditional or explicitly
  state that finite total action for the full same-material clock is not
  certified.  The downstream fixed-Hs continuation bridge is valid once the
  finite full same-material action is proved; this note no longer certifies that estimate
  by itself.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-hodge-route-frontier-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-strain-log-storage-recombination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-higher-collar-tower-demoted-to-same-depth-service-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-relativeschurdefectcollapseandlocalizedinterfacesplit-a-globalsamepacketfullclockfromoriginaldata-a-0e99943057.md
  - problems/navier-stokes/theorem-construction/mcp-prelimitmasterbalancegateclosure-a-simultaneousmaterialfourbodypacketcoercivity-a-68f4092fa9.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-full-clock-to-fixed-hs-continuation-bridge-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-terminalsourceantiatom-equivalent-fullclocktail-a-globalsamepacketfullclockfromoriginaldata-a-20260625.md
---

# Candidate Full Clock Closure By Complete Frame And Projector-First Hodge

Date: 2026-06-25

Referee audit update, 2026-06-26: this note is a candidate assembly, not a
referee-certified proof.  The parent surfaces include sector reductions and
conditional consumers, but they do not yet certify the exhaustive finite full
same-material action estimate.  The controlling audit is
`mpp-forward-gold-complete-frame-hodge-referee-sufficiency-audit-20260626.md`.

## 0. Claim

Let \(u\) be a smooth periodic Navier--Stokes solution on \([0,T_*)\), and let
\(X(a,t)\) be its material map.  Fix \(s>5/2\) and choose a continuation depth
\(N=N_s\).  For the transported material packet

```math
v(a,t)=u(X(a,t),t),
\qquad
A=(D_aX)^{-1},
\qquad
G=AA^\top,
\tag{FCA.1}
```

the candidate full graph-compatible
pressure-viscosity-incompressibility-velocity material clock target is

```math
\int_0^{T_*}d\Omega_N^{full}<\infty .
\tag{FCA.2}
```

Once this estimate is proved exhaustively for the original material history,
the continuation-depth material record is bounded, the fixed Eulerian \(H^s\)
norm remains bounded, and the solution restarts past \(T_*\).

The assembly uses already-installed same-packet identities.  The new point is
that the primitive positive pump should be read on the complete retained packet
frame, not on the incomplete velocity/covector pair.  The remaining referee
burden is to show that this complete-frame reading supplies the finite full
clock without importing a conditional or failed support surface as proof.

## 1. Pressure is not a top-order dynamic variable

Use the material divergence and gradient maps

```math
D_Aw=\operatorname{div}_a(Aw),
\qquad
\mathcal G_A\pi=A^\top\nabla_a\pi,
\qquad
L_A=D_A\mathcal G_A,
\tag{FCA.3}
```

and the material Hodge projection

```math
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A .
\tag{FCA.4}
```

Applying \(\mathbb P_A\) to

```math
\partial_t v+\mathcal G_Aq
=
\nu\operatorname{div}_a(G\nabla_av),
\qquad
D_Av=0,
\tag{FCA.5}
```

gives the covariant tangent equation

```math
\nabla_t^Av:=\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
\tag{FCA.6}
```

Thus pressure is eliminated before differentiation.  The motion of the
constraint bundle is

```math
\dot{\mathbb P}_Av
=
-\mathcal G_A L_A^{-1}\dot D_Av
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv),
\tag{FCA.7}
```

with \(B=\nabla u\circ X\), up to the fixed sign convention for \(L_A\).
This term lies in the normal gradient range.  Tangent variation of the material
Stokes form is metric variation:

```math
\dot G=-2ASA^\top.
\tag{FCA.8}
```

So projector/pressure tangent motion is strain/frame/Hodge service of the same
packet, not an autonomous pressure clock.

## 2. Pressure/collar normal defects are already relaxed

For the pressure/collar variables \(Z_N=(q,C_N)\), write

```math
Z_N=\Gamma_N(Y_N)+W_N,
\tag{FCA.9}
```

where \(\Gamma_N(Y_N)\) is the forced material elliptic/collar graph determined
by \((v,A,G,\phi,\mathbb P_A)\).  The Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2
\tag{FCA.10}
```

pays the normal defect clock.  On the global material graph \(W_N=0\).  On
localized annular packets the remaining \(W_N\) is harmonic/collar interface
memory and belongs to annular interface/legal bookkeeping.  Hence the
pressure/collar sector contributes only

```math
d\Omega_N^{rel.defect}
+d\Omega_N^{Hodge/projector}
+d\Omega_N^{strain/frame}
+dD_N^{vis}
+dR_N^{legal}.
\tag{FCA.11}
```

All of these are already clock/loss/legal terms in the relaxed master balance.

## 3. Coefficient and collar motion reduce to strain/frame

The coefficient-frame clock is not independent:

```math
\left\|G^{-1/2}\dot G\,G^{-1/2}\right\|_{op}
\le
4\lambda_+(S),
\tag{FCA.12}
```

because \(\operatorname{tr}S=0\).  Therefore the shell-weighted coefficient
superheat residence is paid by the top-strain logarithmic storage.

For a transported collar \(\phi(X(a,t),t)=\psi(a)\),

```math
\nabla_x\phi=A^\top\nabla_a\psi,
\qquad
{1\over2}D_t|\nabla_x\phi|^2
=
-\nabla_x\phi\cdot S\nabla_x\phi .
\tag{FCA.13}
```

Thus base collar thickness and collar-normal variation are also paid by the
same top-strain/frame clock.  Higher collar derivatives are not separate
sources; on heat windows they demote to same-depth pressure/RHS,
coefficient/strain, viscous commutator, and collar/frame service, all already
kept inside the prelimit clock or strict loss.

## 4. Top-strain superheat has a signed storage

For a selected active shell with energy \(e_j\), let

```math
L_j=\left[\log{\lambda_+(S_{<j-C})\over\delta2^{2j}}\right]_+,
\qquad
B_j=e_jL_j .
\tag{FCA.14}
```

The signed same-packet strain identity gives

```math
{d\over dt}B_j
+
e_j\lambda_+(S_{<j-C})
\mathbf 1_{\{\lambda_+(S_{<j-C})>\delta2^{2j}\}}
=
(m_j-d_j)L_j
+e_j{W_\lambda\over\lambda}.
\tag{FCA.15}
```

Here

```math
W_\lambda
=
|\Omega e|^2-e\cdot\nabla^2p\,e+\nu e\cdot\Delta S\,e
=
D_t\lambda+\lambda^2 .
\tag{FCA.16}
```

This is a signed full-packet identity.  The storage \(B_j\ge0\), and in the
prelimit four-body master balance the right side is an exchange/loss component
of the same packet.  This identifies the correct same-packet channel for
superheat residence.  It does not by itself prove finite residence after
summing shells, because the positive part of the right-side exchange is the
same full material participation clock whose finite mass is under audit.

The subheat part is absorbed by high-shell viscosity:

```math
\lambda_+(S_{<j-C})\le\delta2^{2j}
\quad\Longrightarrow\quad
e_j\lambda_+(S_{<j-C})\le \delta\,2^{2j}e_j
\lesssim \delta\,d_j^{vis}.
\tag{FCA.17}
```

## 5. Complete-frame payment closes the primitive orientation gap

The primitive graph-compatible PLS driver is the positive low-high deformation
action on the active packet:

```math
d\Omega_N^{primitive}
\simeq
\sum_jw_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt .
\tag{FCA.18}
```

After projector-first pressure elimination, skew/gauge removal, Schur normal
defect removal, and lower-order legal demotion, the principal self-adjoint
part is strain acting on a divergence-free rank-one packet.  Such a retained
point-scale packet carries the full orthonormal frame

```math
(p,\widehat\xi,n),
\qquad
n=p\times\widehat\xi,
\tag{FCA.19}
```

where \(p\) is velocity polarization, \(\widehat\xi\) is wave covector, and
\(n\) is the packet collar/envelope normal.  Since \(\operatorname{tr}S=0\),

```math
p\cdot Sp+\widehat\xi\cdot S\widehat\xi+n\cdot Sn=0,
\tag{FCA.20}
```

and therefore

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{FCA.21}
```

The first term is wave-covector/frequency compression:

```math
D_t\log|\xi|
=
-\widehat\xi\cdot S\widehat\xi.
\tag{FCA.22}
```

The second term is collar-normal material compression:

```math
D_t\log|\eta_n|
=
-n\cdot Sn
\tag{FCA.23}
```

up to the transported-collar commutators already typed in the packet.

Both paying directions are now typed on the same retained packet.  Below heat
rate they are absorbed by viscosity.  Above heat rate, the trace-free bound

```math
\|S\|_{op}\le2\lambda_+(S)
\tag{FCA.24}
```

places them under the same top-strain log storage `(FCA.14)`.  Thus the
primitive driver is routed into viscous service or top-strain/frame service:

```math
d\Omega_N^{primitive}
\le
C_N\left(
dD_N^{vis}
+
d\Omega_N^{top\ strain/log}
+
dR_N^{legal}
\right).
\tag{FCA.25}
```

This is a routing/admission estimate, not a standalone finite-action theorem.
The earlier primitive-driver obstruction was created by reading only
\((p,\widehat\xi)\).  The retained material packet also has the annular/collar
normal \(n\), and the trace-free identity forces the activity into one of the
two transverse compression records.  The remaining noncircular burden is to
prove that the resulting full history clock has finite total mass.

## 6. Full clock finiteness

The full graph-compatible same-material action decomposes into the following
same-packet pieces:

```math
d\Omega_N^{full}
\le
C_N\bigl(
d\Omega_N^{primitive}
+d\Omega_N^{press/collar,normal}
+d\Omega_N^{Hodge/projector}
+d\Omega_N^{coef/frame}
+d\Omega_N^{collar/base}
+d\Omega_N^{annular/interface}
+dD_N^{vis}
+dR_N^{legal}
\bigr).
\tag{FCA.26}
```

Sections 1--5 place every term on the right into one of:

```math
dD_N^{vis/rad},
\qquad
d\Omega_N^{top\ strain/log},
\qquad
d\mathcal K_{iface},
\qquad
dR_N^{legal},
\tag{FCA.27}
```

or into bounded-below transported-energy storage for the base annular stress
orientation.

The smooth prelimit master balance and relaxed lower-semicontinuity passage
give

```math
d\mathfrak L_{4B,N}
+c_0\left(
dA_{4B,N}
+C_{log}d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal K_{iface}
\right)
+d\mathcal L_{4B,N}
\le
dR_{4B,N},
\tag{FCA.28}
```

with

```math
\mathfrak L_{4B,N}\ge0,
\qquad
\int_0^{T_*}dR_{4B,N}<\infty.
\tag{FCA.29}
```

If the relaxed master balance `(FCA.28)` is supplied with only genuinely
legal/summable residuals and with every conditional sector hypothesis
discharged, integration gives finite total mass for the relaxed positive clock
and strict loss.  The referee audit records that those hypotheses are not yet
certified by the cited support surfaces.

## 7. Terminal and continuation consequences

The center-to-annulus identity gives, before any terminal limit,

```math
d\mu_C(t)
\le
\rho_A(t)\,dt,
\qquad
\rho_A(t)=\left|\int u\cdot(-pI+2\nu S)\nabla\phi_C\,dx\right|.
\tag{FCA.30}
```

The annular stress transaction is a component of \(d\Omega_N^{full}\) plus
legal residual.  Once `(FCA.2)` is proved, terminal tails vanish:

```math
\lim_{\theta\downarrow0}
\int_{T_*-\theta}^{T_*}d\Omega_N^{full}=0.
\tag{FCA.31}
```

Thus finite full clock implies no positive center endpoint atom and no
last-time terminal pulse.

The full clock contains the positive material-record variation:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_Nd\Omega_N^{full}+dR_N^0.
\tag{FCA.32}
```

Therefore finite full clock implies

```math
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty.
\tag{FCA.33}
```

For \(N=N_s\) sufficiently large, the material record controls the fixed
Eulerian norm:

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2.
\tag{FCA.34}
```

Classical periodic Navier--Stokes local theory then relaunches the solution
past \(T_*\).  This continuation conclusion is conditional on the finite full
clock estimate.

## 8. Boundary of the theorem

This note is a Gold-route candidate closure for the retained complete-frame
material packet.  If a purported terminal packet does not retain the packet
collar/envelope normal, then it is not a counterexample inside this Gold
branch; it is a transported-collar/carrier admission failure already accounted
for by the relaxed interface/legal clock.  In the retained branch, the
complete-frame trace-free payment removes the primitive positive-cone null as a
local orientation gap.  The remaining referee burden is the exhaustive finite
total-action theorem for the full same-material clock, because the cited
support surfaces do not yet certify that global estimate.
