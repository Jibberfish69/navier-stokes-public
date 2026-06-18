# MPP Scalarized Material-Packet Tower And Packing Note

## Status

Candidate leading-edge update.

Role: developmental predecessor into the material-packet program.

This note should be read as stepping-stone context now that
`mpp-material-packet-closure-program.md` carries the live packet-program
surface and `mpp-transported-material-packet-bridge-lemma.md` carries the exact
fusion identities.

This note corrects the earlier scalarized neighboring-tower defect surface. The
fixed Eulerian cutoff version was too weak for the current route because it did
not yet carry:

1. one genuine material packet;
2. one absolute packing ledger;
3. one relative packing mismatch ledger;
4. the exact bridge between label increments and physical-space tower defects.

The present note replaces that weaker surface by a material-packet closure
program.

## Purpose

The point is to carry the three primitive class laws on one common packet:

1. one shared field law through tower-defect energy;
2. one finite packing class through deformation control;
3. one shared local packing law through relative deformation coherence.

The candidate packet should therefore combine:

```math
\text{tower coherence defect}
\quad+\quad
\text{absolute packing distortion}
\quad+\quad
\text{relative packing mismatch.}
\tag{MP.0}
```

## Flow-Map Setup

Let `X(a,t)` be the Lagrangian flow map:

```math
\partial_t X(a,t)=u(X(a,t),t),
\qquad
X(a,0)=a.
\tag{MP.1}
```

Let `Y_t:=X_t^{-1}` be the inverse map, and let

```math
F(a,t):=D_a X(a,t),
\qquad
A(a,t):=F(a,t)^{-1}.
\tag{MP.2}
```

Incompressibility gives

```math
\det F(a,t)=1.
\tag{MP.3}
```

Fix a smooth compactly supported label cutoff `\psi(a)` and push it forward to
physical space by

```math
\phi_t(x):=\psi(Y_t(x)).
\tag{MP.4}
```

Then `\phi_t` tracks one material packet.

## Tower-Defect Side

Define the tower rungs

```math
U_k(x,t):=\nabla_x^k u(x,t),
\qquad
k=0,1,\dots,N,
\tag{MP.5}
```

and the physical-space increment

```math
\delta_h f(x,t):=f(x+h,t)-f(x,t).
\tag{MP.6}
```

Choose positive rung weights `\lambda_k` with

```math
\lambda_{k+1}\le \theta\,\lambda_k,
\qquad
0<\theta<1,
\tag{MP.7}
```

for example `\lambda_k=\theta^k`.

Define the scalarized tower-defect energy on the material packet

```math
E_N(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}\phi_t(x)^2\,|\delta_h U_k(x,t)|^2\,dx.
\tag{MP.8}
```

Its viscous dissipation partner is

```math
D_N(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}\phi_t(x)^2\,|\nabla\delta_h U_k(x,t)|^2\,dx.
\tag{MP.9}
```

This is the one-field coherence part of the packet.

Because `\phi_t` is transported by `u(x,t)` while the defect law is transported
by `u(x+h,t)`, the exact localized evolution of `(MP.8)` contains an additional
packet-transport mismatch term coming from

```math
(\delta_h u)\cdot \nabla \phi_t.
\tag{MP.10}
```

That mismatch is not an objection to the packet. It is one of the exact lower-
rung coupling terms the packet must carry honestly.

## Packing Side

Define the absolute packing distortion

```math
A_F(t;\psi)
:=
\int_{\mathbf R^3}\psi(a)^2
\Big(
|F(a,t)|^2+|A(a,t)|^2
\Big)\,da.
\tag{MP.11}
```

This tracks whether each parcel in the packet still lives inside one finite
incompressible deformation class.

Next define the relative packing mismatch across a label increment `r`:

```math
\Delta_r F(a,t):=F(a+r,t)-F(a,t),
\qquad
\Delta_r A(a,t):=A(a+r,t)-A(a,t),
\tag{MP.12}
```

and

```math
P_F(r,t;\psi)
:=
\int_{\mathbf R^3}\psi(a)^2
\Big(
|\Delta_r F(a,t)|^2+|\Delta_r A(a,t)|^2
\Big)\,da.
\tag{MP.13}
```

This measures whether neighboring parcels still share one local packing law.

If one wants a more geometric readout, let

```math
G(a,t):=F(a,t)^\top F(a,t),
\tag{MP.14}
```

and define

```math
Q_F(r,t;\psi)
:=
\int_{\mathbf R^3}\psi(a)^2\,|\Delta_r G(a,t)|^2\,da.
\tag{MP.15}
```

The quantity `Q_F` is the direct shared-packing observable. Algebraically,
`P_F` is easier to propagate.

Pointwise one has

```math
\Delta_r G
=
F(a+r,t)^\top \Delta_r F
+
(\Delta_r F)^\top F(a,t).
\tag{MP.16}
```

So on packets where `F` and `A` are controlled in a stronger pointwise or mixed
distortion sense, `Q_F` is dominated by the same absolute/relative packing
ledger carried by `A_F` and `P_F`.

## Unified Material Packet

The packet carried by the current route should therefore be

```math
\mathcal H_N(h,r,t;\psi)
:=
E_N(h,t;\psi)
+\alpha\,A_F(t;\psi)
+\beta\,P_F(r,t;\psi),
\qquad
\alpha,\beta>0.
\tag{MP.17}
```

If the geometric readout `Q_F` is also recorded, one may write

```math
\mathcal G_N(h,r,t;\psi)
:=
\mathcal H_N(h,r,t;\psi)+\gamma\,Q_F(r,t;\psi),
\qquad
\gamma>0,
\tag{MP.18}
```

with the understanding that `\mathcal H_N` is the propagating engine and `Q_F`
is the cleaner semantic packing observable.

Each piece has a direct class-membership meaning:

1. `E_N` says the packet still behaves like one shared field at tower depth
   `N`;
2. `A_F` says each parcel still sits in one finite incompressible deformation
   regime;
3. `P_F` says neighboring parcels still share that deformation regime;
4. `Q_F` says the induced local parcel geometry remains coherent.

## Exact Bridge Between Label And Space

The packet does not become one proof surface until the label increment `r` is
connected to the physical-space increment seen by the tower defects.

Define the transported separation

```math
h(a,r,t):=X(a+r,t)-X(a,t).
\tag{MP.19}
```

Then for every rung `k`,

```math
\Delta_r^X U_k(a,t)
:=
U_k(X(a+r,t),t)-U_k(X(a,t),t)
=
\delta_{h(a,r,t)}U_k(X(a,t),t).
\tag{MP.20}
```

So the label-space tower defect and the Eulerian finite-difference defect are
the same object once the increment is chosen to be the transported separation.

Also,

```math
h(a,r,t)
=
\int_0^1 F(a+\theta r,t)\,r\,d\theta,
\tag{MP.21}
```

hence

```math
h(a,r,t)-F(a,t)\,r
=
\int_0^1 \big(F(a+\theta r,t)-F(a,t)\big)\,r\,d\theta.
\tag{MP.22}
```

This is the exact place where relative packing mismatch enters the coherence
story: if `P_F` is small, then transported parcel separation is well
approximated by the local deformation.

## Exact Deformation Laws

The absolute deformation laws are

```math
\partial_t F(a,t)=(\nabla u)(X(a,t),t)\,F(a,t),
\tag{MP.23}
```

and

```math
\partial_t A(a,t)=-A(a,t)\,(\nabla u)(X(a,t),t).
\tag{MP.24}
```

Therefore

```math
\frac{d}{dt}A_F(t;\psi)
\le C_{\mathrm{MP25}}
\int \psi(a)^2\,|(\nabla u)(X(a,t),t)|
\Big(
|F(a,t)|^2+|A(a,t)|^2
\Big)\,da.
\tag{MP.25}
```

The relative deformation laws are

```math
\partial_t \Delta_r F(a,t)
=
(\nabla u)(X(a+r,t),t)\,\Delta_r F(a,t)
+
\Delta_r^X(\nabla u)(a,t)\,F(a,t),
\tag{MP.26}
```

and

```math
\partial_t \Delta_r A(a,t)
=
-\Delta_r A(a,t)\,(\nabla u)(X(a+r,t),t)
-A(a,t)\,\Delta_r^X(\nabla u)(a,t),
\tag{MP.27}
```

where

```math
\Delta_r^X(\nabla u)(a,t)
:=
(\nabla u)(X(a+r,t),t)-(\nabla u)(X(a,t),t).
\tag{MP.28}
```

So the relative packing mismatch is driven by two things:

1. ordinary packet strain;
2. the first-rung strain defect across nearby labels.

The formal packet estimate is

```math
\frac{d}{dt}P_F(r,t;\psi)
\le C_{\mathrm{MP29}}
\text{packet strain}\cdot P_F(r,t;\psi)
+
\int \psi(a)^2\,|\Delta_r^X \nabla u(a,t)|^2
\Big(
|F(a,t)|^2+|A(a,t)|^2
\Big)\,da.
\tag{MP.29}
```

This is the exact bridge from tower coherence to packing coherence.

## Exact Tower-Defect Side Of The Packet

The finite-difference tower law from
`mpp-shared-participation-and-tower-coherence-law.md` does not yet give the
material-packet defect evolution for free. The imported theorem target is the
localized triangular closure estimate after differentiating the defect energy,
integrating the viscous term by parts, keeping cutoff and packet-transport
commutators, and placing pressure into a legal flux functional. In material
packet form the required estimate is:

```math
\frac{d}{dt}E_N(h,t;\psi)
+2\nu D_N(h,t;\psi)
\le
\mathrm{Flux}_{N,h,\psi}(t)
+\mathrm{PackErr}_{N,h,\psi}(t)
+
C_{N,\psi}
\int
\Big(
|S|+\sum_{j=1}^{N}|U_j|
\Big)
\sum_{k=0}^{N}\lambda_k |\delta_h U_k|^2\,\phi_t^2\,dx,
\tag{MP.30}
```

where `\mathrm{PackErr}_{N,h,\psi}` denotes the packet-transport mismatch from
`(MP.10)`. This inequality is usable only together with legal bounds on
`\mathrm{Flux}_{N,h,\psi}` and `\mathrm{PackErr}_{N,h,\psi}` on the same packet,
for example an `L^1_t` bound or an absorbable boundary/cutoff estimate. Until
those bounds are proved, `(MP.30)` is a named packet-closure burden, not a
delivered consequence of the shared tower law.

So the whole packet now splits the class-membership burden into two exact tasks:

1. propagate the tower coherence defect `E_N`;
2. show the rung-1 defect control is strong enough to keep `P_F` small and
   `A_F` finite.

## First-Exit Theorem Shape

The first real theorem target should now be stated on one material packet.

For each finite depth `N` and each material packet `\psi`, finite-time class
exit should force at least one of the following failures:

```math
A_F(t;\psi)\to\infty,
\tag{MP.31}
```

```math
P_F(r,t;\psi)\not\to 0
\quad\text{as }r\to 0,
\tag{MP.32}
```

or

```math
E_N(h,t;\psi)\not\to 0
\quad\text{as }h\to 0.
\tag{MP.33}
```

That is the first-exit theorem shape in packet language.

## Real Frontier

The route now points to one precise frontier question:

```math
\boxed{
\text{what exact rung-1 strain-defect control is sufficient to keep both }E_N\text{ and }P_F\text{ small on a material packet?}
}
\tag{MP.34}
```

That is the sharp bridge between one shared field and one shared packing law.

The exact bridge identities and the fused transported packet
`\widetilde E_{N,r,\psi}` are recorded separately in
`mpp-transported-material-packet-bridge-lemma.md`.

The live packet-program surface itself is now
`mpp-material-packet-closure-program.md`.

## Boundary

This note does **not** yet prove:

1. a closed differential inequality for `\mathcal H_N`;
2. the exact quantitative bridge from `P_F` small to two-sided packet control
   `c_F|F(a,t)||r|\le |h(a,r,t)|\le C_F|F(a,t)||r|` on every packet;
3. a closure theorem excluding coherence fracture;
4. that the packet-level first-exit theorem upgrades directly to full global
   regularity.

What it does claim is narrower:

```math
\boxed{
\text{the scalarized neighboring-tower defect note should be corrected into a material-packet closure surface carrying }E_N,\ A_F,\text{ and }P_F.
}
\tag{MP.35}
```

## Source Surfaces

Primary source surfaces behind this corrected update:

1. `problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md`
2. `problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
3. `problems/navier-stokes/theorem-construction/mpp-shared-packing-exact-predicate-draft.md`
4. `problems/navier-stokes/theorem-construction/lagrangian-material-package-preliminary-verdict.md`
