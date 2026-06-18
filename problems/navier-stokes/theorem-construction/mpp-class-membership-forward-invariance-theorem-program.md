# MPP Class-Membership Forward-Invariance Theorem Program

## Status

Theorem-facing compression note.

Role: state the preferred compression route for the live class-membership
program.

This note does **not** delete the still-live manifestation bridge in
[mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md).
It records the stronger hope that the bridge can be compressed into one more
primitive theorem:

```math
\boxed{
\text{lawful class membership is forward-invariant under the same-fluid Navier--Stokes evolution, until visible surviving class-violation has already appeared.}
}
\tag{CFI.0}
```

So the live question is no longer merely how to reconstitute a classical field
from non-degeneration data. It is whether the MPP class law itself already
contains the missing coercive content in seed form.

## Governing Reading

The installed exact witness is

```math
\mathrm{CM}_{N,r,Q}(u,p,\Phi)
=
\mathrm{Pack}_Q(u,\Phi)
\wedge
\mathrm{Part}_{N,Q}(u,p)
\wedge
\mathrm{Field}_{N,r,Q}(u,p).
\tag{CFI.1}
```

The primitive relation being propagated is
`\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})` from the object
package. At present, the witness family `(CFI.1)` does four things:

1. it does **not** define lawful local membership itself;
2. it is the installed analytic witness currently used to certify lawful local
   membership on still-live windows;
3. on disk, it is locally admitted on classical still-live windows, which is
   just the pre-terminal installation step on approach windows rather than a
   separate global smoothness program;
4. it conflicts with dead / blown / jump class-exit geometry.

The proposed upgrade is one sentence stronger:

```math
\boxed{
\text{if lawful class membership is installed on a still-live window, then the same-fluid NS evolution keeps that lawful membership installed on evolved still-live windows unless blown or jump has already manifested.}
}
\tag{CFI.2}
```

That is the exact conditional role of the primitive class law: if `(CFI.2)` is
proved, then `(CFI.1)` is the installed witness family being propagated by the
coercive law.

## Installed Inputs

This compression route uses only already-installed class-membership surfaces.

1. exact class-membership witness:
   [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
2. still-live smooth window admission:
   [mpp-still-live-smooth-window-implies-class-membership-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md)
3. shared participation no-drop:
   [mpp-shared-participation-no-drop-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-no-drop-theorem.md)
4. Law 2 survivor reduction:
   [mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md)
5. CM tethering / neighboring participation response:
   [mpp-cm-tethering-and-neighboring-participation-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-cm-tethering-and-neighboring-participation-theorem.md)
6. surviving-manifestation language:
   [mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md)

The route consequence of those installed surfaces is fixed:

```math
\boxed{
\text{dead failure is already removed on still-live windows, so the only surviving visible class-violation types are blown and jump.}
}
\tag{CFI.3}
```

## Exact Theorem Target

Fix a finite depth `N`, an initial still-live window `Q_0`, and an evolved
still-live family `\{Q_s\}_{0\le s\le \sigma}` carried by the same NS solution
and the same material transport `\Phi`.

The direct target is:

### Theorem `CFI.A` (Forward-invariance of lawful class membership)

Assume:

1. `\mathrm{CM}_{N,r_0,Q_0}(u,p,\Phi)` holds for some `r_0>0`;
2. the evolved family `\{Q_s\}` remains still-live and belongs to the same
   transported fluid carrier;
3. no blown manifestation occurs on the family;
4. no jump manifestation occurs on the family.

Then there exists `r_{N,\sigma}>0` such that

```math
\mathrm{CM}_{N,r_{N,\sigma},Q_s}(u,p,\Phi)
\qquad
\text{for every }0\le s\le \sigma.
\tag{CFI.4}
```

Hence, by `CMW.A`,

```math
\mathrm{Member}(Q_s;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
\qquad
\text{for every }0\le s\le \sigma.
\tag{CFI.4a}
```

Equivalently,

```math
\boxed{
\text{lawful class membership, once installed on a still-live window, is forward-invariant along the same-fluid evolution until a surviving class-violation has already become visible.}
}
\tag{CFI.5}
```

This is the primitive dynamic closure statement now supplied conditionally by
the `ACT.KX` terminal packet recorded below.

## Current Conditional Terminal Packet

The live theorem-facing compression no longer treats `CFI.A` as an isolated
opaque sentence. Its authority is the conditional completion packet
[mpp-act-kx-conditional-route-completion-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-act-kx-conditional-route-completion-packet.md),
so older receiver/source fragments in this note are subordinate local support:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.X\text{-Readout}
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A,
\tag{CFI.5a}
```

```math
FCC.C1
\Longrightarrow
FSCR.C
\Longrightarrow
FPCR.C
\Longrightarrow
FCI.5f,
\tag{CFI.5b}
```

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A,
\tag{CFI.5c}
```

and the endpoint packet

```math
DTC\text{-to-TowerBound}
+
END.Exh
+
END.Cross
+
END.Pack
+
END.Field
\Longrightarrow
\mathsf{End}_{NS}.
\tag{CFI.5d}
```

Thus

```math
CFI.A + \mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{CFI.5e}
```

The statement is conditional lane closure under `RSCB.NKF`, the bounded pack
gauge, the finite required parameter set, the post-`LCI.A` source closure, and
the accepted endpoint certificate maps. TPS / `SG.4`, exact-potential, Hodge /
normal-covector, and Euclidean strict-shadow branches remain downstream context,
not prerequisites for this class-membership terminal packet. The claim level is
not unconditional full closure outside those named hypotheses.

## Installed Lemma Decomposition

The internal decomposition of `CFI.A` is one carrier definition plus three
forward-preservation lemmas.

### Definition `CFI.B0` (Same-fluid evolved still-live family)

Fix a seed still-live window `Q_0\Subset\Omega\times[0,T_\ast)` and a time
interval `[0,\sigma]`.

For each still-live window `Q`, write

```math
Q_t:=\{x\in\Omega:(x,t)\in Q\},
\qquad
A_Q(t):=\{a\in\Omega:\Phi(a,t)\in Q_t\}.
\tag{CFI.10a}
```

A family `\{Q_s\}_{0\le s\le \sigma}` is called a **same-fluid evolved
still-live family from `Q_0`** if:

1. each `Q_s` is a still-live spacetime window;
2. all `Q_s` are carried by the same flow map `\Phi` and the same deformation
   field `F=\nabla_a\Phi`;
3. there exists one compact label collar `A_\sharp` with

```math
A_{Q_s}(t)\subset A_\sharp
\qquad
\text{for every }s\in[0,\sigma]
\text{ and every time-slice meeting }Q_s;
\tag{CFI.10b}
```

4. successive windows overlap on a nontrivial still-live collar, so the same
   field/lawful carrier is being re-read rather than replaced.

Equivalently: every `Q_s` is read on one common transported label collar under
the same `\Phi`, and the family moves through overlap rather than by replacing
the carrier.

So `\{Q_s\}` is not an arbitrary family of windows. It is one same-fluid
window-family inside one transported evolution.

### Lemma `CFI.B1` (Packing-side forward preservation)

Assume:

1. `\mathrm{Pack}_{Q_0}(u,\Phi)` holds;
2. `\{Q_s\}` is a same-fluid evolved still-live family from `Q_0`;
3. no blown manifestation occurs on `\{Q_s\}` in the sense already fixed by
   `(MBR.3)`.

Then

```math
\mathrm{Pack}_{Q_s}(u,\Phi)
\qquad
\text{for every }0\le s\le \sigma.
\tag{CFI.11}
```

Plainly: if one common carrier starts lawful and the blown side never becomes
visible, then the common deformation / packing law stays installed.

### Lemma `CFI.B2` (Participation-side forward preservation)

Assume:

1. `\mathrm{Part}_{N,Q_0}(u,p)` holds;
2. `\{Q_s\}` is a same-fluid evolved still-live family from `Q_0`;
3. the shared participation law and the CM tethering theorem remain the active
   Law 2 engine on that family;
4. no dead or blown manifestation occurs on `\{Q_s\}`.

Then

```math
\mathrm{Part}_{N,Q_s}(u,p)
\qquad
\text{for every }0\le s\le \sigma.
\tag{CFI.12}
```

This is the route-native statement that the participation side is
self-propagating inside one still-live same-fluid family.

### Lemma `CFI.B3` (One-field forward preservation)

Assume:

1. `\mathrm{Field}_{N,r_0,Q_0}(u,p)` holds;
2. `\{Q_s\}` is a same-fluid evolved still-live family from `Q_0`;
3. no jump manifestation occurs on `\{Q_s\}` in the sense already fixed by
   `(MBR.4)`.

Then there exists `r_{N,\sigma}>0` such that

```math
\mathrm{Field}_{N,r_{N,\sigma},Q_s}(u,p)
\qquad
\text{for every }0\le s\le \sigma.
\tag{CFI.13}
```

Plainly: if neighboring towers start as one field and no coherence fracture
becomes visible, then one positive coherence regime survives along the family.

### Corollary `CFI.B4` (Assembly of forward-invariance)

Assume the hypotheses of `CFI.A`.

Since `\mathrm{CM}_{N,r_0,Q_0}` is exactly

```math
\mathrm{Pack}_{Q_0}
\wedge
\mathrm{Part}_{N,Q_0}
\wedge
\mathrm{Field}_{N,r_0,Q_0},
\tag{CFI.14}
```

the three preservation lemmas `CFI.B1`--`CFI.B3` yield

```math
\mathrm{CM}_{N,r_{N,\sigma},Q_s}(u,p,\Phi)
\qquad
\text{for every }0\le s\le \sigma,
\tag{CFI.15}
```

which is exactly `CFI.A`.

So the proof of `CFI.A` is reduced to three route-native preservation claims,
not one monolithic theorem wall.

## Exact Dynamic Proof Engine

There is one correction that must be stated plainly.

If `CFI.B1`--`CFI.B3` are read with raw hypotheses such as
"no blown manifestation occurs" or "no jump manifestation occurs," then they
are too close to reformulations of the manifestation definitions themselves.

So the real nontrivial route is not to rest there. The real route is to feed
`CFI.B1`--`CFI.B3` from PDE-native dynamic laws that propagate the relevant
regimes from the same-fluid evolution itself.

### Proposition `CFI.C1` (Packing-side transport law on one common label collar)

Retain the compact label collar `A_\sharp` from `(CFI.10b)` and define

```math
\Gamma_\sharp(t)
:=
\sup_{a\in A_\sharp}
\max\{|F(a,t)|,\ |F(a,t)^{-1}|\}.
\tag{CFI.16}
```

Then for every `0\le t_1\le t_2<T_\ast`,

```math
\Gamma_\sharp(t_2)
\le
\Gamma_\sharp(t_1)
\exp\!\Big(
\int_{t_1}^{t_2}
\|\nabla u(\tau)\|_{L^\infty(\Phi(A_\sharp,\tau))}
\;d\tau
\Big).
\tag{CFI.17}
```

#### Proof

On the common carrier, the deformation gradient obeys

```math
\partial_tF(a,t)=(\nabla u)(\Phi(a,t),t)\,F(a,t),
\tag{CFI.18}
```

so

```math
\frac{d}{dt}|F(a,t)|
\le
\|\nabla u(t)\|_{L^\infty(\Phi(A_\sharp,t))}\,|F(a,t)|.
\tag{CFI.19}
```

Likewise,

```math
\partial_tF(a,t)^{-1}
=
-F(a,t)^{-1}(\nabla u)(\Phi(a,t),t),
\tag{CFI.20}
```

so

```math
\frac{d}{dt}|F(a,t)^{-1}|
\le
\|\nabla u(t)\|_{L^\infty(\Phi(A_\sharp,t))}\,|F(a,t)^{-1}|.
\tag{CFI.21}
```

Applying Gronwall on `[t_1,t_2]` and taking the supremum over
`a\in A_\sharp` gives `(CFI.17)`. ∎

This is the exact packing-side engine beneath `CFI.B1`: packing survives along
one same-fluid family as long as the common deformation class does not run into
visible blown-side escape.

For a compact theorem-facing compression of the pack-side chain
`CFI.B1 <- CFI.C1 <- CFI.C1a <- CFI.C1b`, see
[mpp-pack-side-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pack-side-forward-preservation-reduction-note.md).

### Corollary `CFI.C1a` (Exact pack-side interval-integrability burden)

The upgrade from `CFI.C1` to the usable route input

```math
\Gamma_\sharp\in L^\infty(I),
\tag{CFI.17a}
```

is the following interval-integrability burden:

```math
\|\nabla u(\cdot,t)\|_{L^\infty(\Phi(A_\sharp,t))}\in L^1(I).
\tag{CFI.17b}
```

Indeed, `(CFI.17)` yields

```math
\Gamma_\sharp(t)
\le
\Gamma_\sharp(t_0)
\exp\!\Big(
\int_{t_0}^{t}
\|\nabla u(\tau)\|_{L^\infty(\Phi(A_\sharp,\tau))}\,d\tau
\Big)
\qquad
(t\in I),
\tag{CFI.17c}
```

so the pack-side burden is not a vague extra theorem family. It is exactly the
interval-integrability of the deformation-driving gradient on the common label
collar.

### Corollary `CFI.C1b` (Collar stretching-rate reduction)

Define the symmetric strain on the common collar by

```math
D(u):=\frac12\big(\nabla u+\nabla u^\top\big),
\qquad
\Lambda_\sharp(t):=
\|D(u)(\cdot,t)\|_{L^\infty(\Phi(A_\sharp,t))}.
\tag{CFI.17d}
```

If

```math
\Lambda_\sharp\in L^1(I),
\tag{CFI.17e}
```

then

```math
\Gamma_\sharp\in L^\infty(I).
\tag{CFI.17f}
```

#### Proof

For each fixed label `a` and vector `v`,

```math
\frac{d}{dt}|F(a,t)v|^2
=
2\,\big\langle D(u)(\Phi(a,t),t)\,F(a,t)v,\ F(a,t)v\big\rangle,
\tag{CFI.17g}
```

because the antisymmetric part of `\nabla u` drops out of the quadratic form.
Hence

```math
\frac{d}{dt}|F(a,t)v|^2
\le
2\,\Lambda_\sharp(t)\,|F(a,t)v|^2,
\tag{CFI.17h}
```

so Gronwall gives

```math
\|F(t)\|_{L^\infty(A_\sharp)}
\le
\|F(t_0)\|_{L^\infty(A_\sharp)}
\exp\!\Big(\int_{t_0}^{t}\Lambda_\sharp(\tau)\,d\tau\Big).
\tag{CFI.17i}
```

Likewise, since `\partial_tF^{-1}=-F^{-1}(\nabla u)(\Phi(a,t),t)`, one has

```math
\frac{d}{dt}|F(a,t)^{-1}w|^2
=
-2\,\big\langle D(u)(\Phi(a,t),t)\,F(a,t)^{-1}w,\ F(a,t)^{-1}w\big\rangle,
\tag{CFI.17j}
```

and therefore

```math
\frac{d}{dt}|F(a,t)^{-1}w|^2
\le
2\,\Lambda_\sharp(t)\,|F(a,t)^{-1}w|^2.
\tag{CFI.17k}
```

Applying Gronwall again and taking suprema in `a`, `v`, and `w` yields
`(CFI.17f)`. ∎

### Corollary `CFI.C1c` (Packet-local stretching-rate reduction)

Fix a compactly supported packet `\psi` and a scale window `|r|\le \rho`.
Define the packet label halo

```math
A_{\rho,\psi}^{lab}
:=
\big\{
a+r:
a\in\operatorname{supp}\psi,\ |r|\le \rho
\big\},
\tag{CFI.17l}
```

the packet-local strain ledger

```math
\Lambda_{\rho,\psi}^{pkt}(t)
:=
\|D(u)(\cdot,t)\|_{L^\infty(\Phi(A_{\rho,\psi}^{lab},t))},
\tag{CFI.17m}
```

and the corresponding packet-local deformation gauge

```math
\Gamma_{\rho,\psi}^{pkt}(t)
:=
\|F(t)\|_{L^\infty(A_{\rho,\psi}^{lab})}
+
\|F(t)^{-1}\|_{L^\infty(A_{\rho,\psi}^{lab})}.
\tag{CFI.17n}
```

If

```math
\Lambda_{\rho,\psi}^{pkt}\in L^1(I),
\tag{CFI.17o}
```

then

```math
\Gamma_{\rho,\psi}^{pkt}\in L^\infty(I).
\tag{CFI.17p}
```

#### Proof

Repeat the proof of `CFI.C1b` with `A_\sharp` replaced by
`A_{\rho,\psi}^{lab}`. The identities `(CFI.17g)` and `(CFI.17j)` are pointwise
in the label, so the same Gronwall argument yields uniform control of `F` and
`F^{-1}` on the smaller packet label halo. ∎

### Law `CFI.C2` (Participation-side transport and tethering engine)

For each rung `k\ge 0`, the same-fluid carrier law is

```math
D_tU_k=K_k+B_k.
\tag{CFI.22}
```

The installed CM tethering theorem then upgrades this from a bare identity to a
route-native propagation law:

```math
\text{local tower escalation}
\Longrightarrow
\text{neighboring participation response or prior class exit.}
\tag{CFI.23}
```

So the participation side is not supposed to be propagated by a new external
norm package. Its route-native engine is already the shared participation law
plus the installed tethering/no-drop spine.

### Law `CFI.C3` (One-field finite-difference defect-energy engine)

For a cutoff `\phi`, increment `h`, and finite depth `N`, define the localized
finite-difference defect energy

```math
E_{N,h,\phi}(t)
:=
\sum_{k=0}^{N}\lambda_k\int \phi^2|\delta_hU_k|^2\,dx.
\tag{CFI.24}
```

The PDE-native finite-difference tower law yields the triangular defect-energy
inequality

```math
\frac{d}{dt}E_{N,h,\phi}(t)
+2\nu\sum_{k=0}^{N}\lambda_k\int \phi^2|\nabla\delta_hU_k|^2\,dx
\le
C_{N,\phi}\int
\Big(
|S|+\sum_{j=1}^{N}|U_j|
\Big)
\sum_{k=0}^{N}\lambda_k|\delta_hU_k|^2\,dx
+\mathrm{Flux}_{N,h,\phi}(t).
\tag{CFI.25}
```

This is the exact one-field engine beneath `CFI.B3`. The hard question is
therefore no longer vague "coherence preservation." It is:

```math
\boxed{
\text{can the strain/cascade channel in `(CFI.25)` be kept from turning finite-difference defect into visible jump manifestation while the same fluid law remains installed?}
}
\tag{CFI.26}
```

That is the likely real theorem wall on the forward-invariance route.

The exact theorem-facing expansion of that wall is now isolated in:

1. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)

and the honest reduction there is now: the one-field wall is carried by the
paired supplier debts already isolated in
[mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md).

## Route Consequence

If `CFI.A` lands, then the manifestation bridge and the chronological
first-time class-exit shell both become corollaries rather than the primary
theorem wall.

Indeed, assume a purported PDE non-smooth scenario approaches
`(x_\ast,T_\ast)` without blown or jump manifestation on the still-live
approach, and assume `CFI.A` has been proved on that approach family. Then
`CFI.A` keeps class membership installed there. Since dead failure is already
discharged by `(CFI.3)`, the purported non-smooth scenario has no surviving
class-exit geometry available under those hypotheses.

So proved `CFI.A`, together with `(CFI.3)`, compresses the present bridge burden
to:

```math
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{visible blown or jump manifestation.}
\tag{CFI.6}
```

That is exactly the bridge target, but derived from dynamic closure of the
class law itself rather than from a separate compactness-first reconstitution
program.

On the chronological shell, the same consequence reads:

```math
\text{genuine PDE non-smoothness at }(x_\ast,T_\ast)
\Longrightarrow
\text{first remaining class exit at }T_\ast
\Longrightarrow
\text{blown or jump.}
\tag{CFI.6a}
```

Again this is existential rather than exclusive: proved `CFI.A` forces the
first remaining exit onto the surviving Law 1 / Law 3 side, but it does not by
itself prove that exactly one of blown or jump occurs there.

## Optional Compressed Realization

The direct predicate theorem `CFI.A` is the primitive target.

A sharper optional realization is to build one nonnegative
same-fluid defect

```math
\mathfrak D_{N,r,Q}\ge 0
\tag{CFI.7}
```

such that

```math
\mathfrak D_{N,r,Q}=0
\Longleftrightarrow
\mathrm{CM}_{N,r,Q}(u,p,\Phi).
\tag{CFI.8}
```

The dream compressed law is then a one-sided zero-set propagation statement of
the form

```math
\partial_t\mathfrak D
\le
C\,\mathfrak D,
\tag{CFI.9}
```

or an equivalent integral inequality preserving the zero set.

In that language:

1. `\mathrm{CM}` is the zero set;
2. forward-invariance is zero-set propagation;
3. blown or jump require `\mathfrak D>0`.

So the one-defect route is **not** a different theorem target. It is the
compressed realization of `CFI.A`.

## Guardrail

This note does **not** promote a generic witness bundle back to primary status.

The defect route is acceptable only if the defect is derived from the exact
`Pack / Part / Field` predicates and preserves their meaning:

```math
\text{one common deformation carrier}
\;+\;
\text{one common participation law}
\;+\;
\text{one common neighboring-tower law.}
\tag{CFI.10}
```

If no such closed defect law can be extracted honestly, the route stays in the
direct predicate language `CFI.A` rather than forcing a bad compression.

## Exact Live Queue

The live queue under this compression route is:

1. prove the exact hypotheses in `CFI.B0` needed for unambiguous use;
2. use `CFI.C1` to isolate the exact nontrivial packing-side burden;
3. feed `CFI.B2` from the installed Law 2 tethering/no-drop spine `CFI.C2`;
4. close the one-field wall now isolated in `OFP.A`, in the installed order:
   first attack the receiver side inside the collar-Sobolev supplier `CSP.A`;
   on the transported-center realization the sharp oscillation-side route is
   already finer than `(EOC.23)`: the explicit pointwise factorization still
   runs through the Eulerian increment envelope, the label-halo first-rung
   carrier, and the thickened collar envelope; `OFP.C1i`--`OFP.C1j` make the
   pack-oscillation modulus downstream of those three inputs, and `OFP.C1k`
   isolates the dedicated geometric wall as the variable-radius center-ball
   theorem `VCB.A` in
   [mpp-lci-a-variable-radius-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-center-ball-note.md)
   for the halo carrier `\mathfrak U_{1,\rho}^{halo,ctr}`; on the actual
   transported-center receiver package the bounded pack-side gauge is already
   imported, so the exact next-form theorem beneath `VCB.A` there is the fixed halo-shell
   propagation `HSP.A` in
   [mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md),
   and that halo-shell theorem is itself reduced on disk to the fixed-scale
   transported-center increment theorem `FEI.A` in
   [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md);
   but once the widened receiver-side return `(EOC.27)` is granted, the new
   halo-gradient return theorem `U2H.A` pairs it with the anchored-center
   ledger to close the pulled-back `\nabla_xU_1` segment residue; with the
   already-separated `OFP.C1e2` first-rung and initial deformation-gradient
   inputs this gives `(OFP.10cb)`. Corollaries `EOC.C`--`EOC.Ca` then make the old
   halo/increment supplier pair downstream, so the honest `EOC`-surface
   receiver is now exactly the route-native package
   `CSP.A_{\delta+\delta_{seg}}` together with that widened return package,
   not `VCB.A` by itself; the direct still-live receiver-admission note
   [mpp-lci-a-pre-csp-still-live-receiver-admission-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-still-live-receiver-admission-note.md)
   now supplies the pulled-back `\nabla_xU_1` segment residue, the thickened
   collar consumer, and `(EOC.27)` on retained still-live receiver windows, so
   Theorem `EOC.D` closes `EOC.A` on that non-circular retained-window route;
   more sharply, `FEI.B3`, `FEI.C7`, and the pressure reductions
   `FPR.C3`--`FPR.C10` reduce that wall to the direct fixed-ball Holder theorem
   `FPC.H` on the pressure side, with the larger-radius transported-center
   envelope `\mathfrak e_{N,5\Lambda}^{Eul,ctr}` and the oscillation half
   already downstream of `FPC.H` by `LRE.C1`, with the widened collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}` as the
   coefficient-side companion, with `FPL.C` the branch-local direct sufficient
   theorem on that side, with `FPL.B` and `FPL.Ba` the installed implications
   into that lower packet and with `(FPS.H0)` / `FPC.A` only intermediate
   sufficient routes inside that pressure-side stack, while `FPC.Bc` already
   exposes the frontier-level collar return and `FPL.G` the same return from the
   deeper local pressure stack to `CSP.B3a1`;
   on the top-viscous side the remaining direct branch runs through the
   fixed-radius top-rung Sobolev theorem `FVR.F`, whose first readout
   corollaries are `FVR.D` and `FVR.A`, with `FTL.C` the branch-local direct
   sufficient theorem on that side, with `FTS.C` only the intermediate
   one-rung-lower Sobolev route, with `(FTL.Bc0)` the sharper route-native
   moving-collar corollary and `FTL.B` / `FTL.Ba` the coarser collar
   implications into that local supplier stack, with `FVR.G` already exposing
   the frontier-level collar return and `FTL.G` the same return from the deeper
   local stack to `CSP.B3a1`, and with the coarser adjacent bypasses `FVR.B`
   and `FVR.C` skipping it; one step deeper `FCL.C` is the
   exact common still-local floor beneath both branch-local packets, with
   `(FTR.A2)` splitting that common floor relative to the pressure branch into
   `FPL.C` plus the enlarged-radius top-tail residue `FTR.C`, with
   `(FTSR.A0)` sharpening that top residue relative to the top-viscous branch
   into `FTL.C` plus the annular shell theorem `FTSR.C`, with its companion
   `FTOC.C` rewriting that shell as a finite shifted-center cover theorem,
   then more sharply through the shifted-center slab theorem `FTOC.D` and the
   shifted-center top-rung Sobolev slab theorem `FTOC.E` to the one-rung-lower
   shifted-slab Sobolev theorem `FTOC.F`, with `(FTOC.Bf0)` the sharper
   route-native moving-collar packet supplier from `CSP.B3a1` for the honest
   current wall, with `(FTOC.Bc0)` only the weaker predecessor-side corollary,
   and with `(FTOC.B0)` only the coarser widened-thickness collar fallback
   there, and the older frozen-family packet line is only adjacent context and
   not the sharp direct route;
   because `(FTOC.Bf0)` is exactly `CSP.B3a1` at thickness
   `\delta+5\Lambda_{\delta,\rho}^{halo}`, this shifted-slab branch no longer
   leaves an independent live local wall and has returned to the receiver-side
   collar burden `CSP.B3a1`; on the transported-center oscillation side that
   burden now enters through `EOC.Ca`, so route-natively it returns to `CSP.A`
   once `(FCI.5f)` is paired with that receiver-side theorem, while the
   still-live receiver-admission route bypasses that fixed point through
   `EOC.D`;
   once that package closes `EOC.A`, the first-center-rung side is attacked
   through the affine-frame defect core `AFD.A`, then the theorem-facing bridge
   `AFD.B`, then the residual center-forcing theorem `RCF.A`, then `LCI.A`;
   `AFD.B` is already closed in stronger form by
   [mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md),
   so the live lower-order first-rung debt is the exact supplier split beneath
   `AFD.A`; once the ordinary energy ledger is imported, the far-tail half is
   already downstream by
   [mpp-lci-a-pressure-tail-energy-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pressure-tail-energy-supplier-note.md),
   so the honest upstream reopening is the explicit supplier split `(AFS.A0)`
   beneath `AFD.A`, while the exact energy-conditioned remaining lower-order
   theorem-facing supplier inside that split is `VCS.A`, the first-rung
   viscous-center theorem isolated in
   [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md);
   under that imported energy ledger, the first-center branch sharpens to
   `VCS.A \Longrightarrow AFD.A \Longrightarrow AFD.B \Longrightarrow RCF.2`;
   under `m\ge 3`, the sharper imported route is already
   `HSP.A0a \Longrightarrow AFS.C \Longrightarrow AFB.A \Longrightarrow RCF.1b`,
   so the frozen first-center item is downstream on that energy-conditioned
   halo-shell branch;
   when `m\ge 3`, the stronger lower-order halo-shell packet `HSP.A0a` then
   gives one non-circular discharge of `VCS.A`, and with the imported ordinary
   energy ledger plus the remaining `AFD.A` inputs Corollary `AFS.C` feeds
   `AFD.A` directly, so the sharper next-form theorem target on that branch is
   not `VCS.A` in isolation but `HSP.A0a`; because `(HSP.A0a)` is the
   installed stronger form beneath `HSP.A`, the branch does not stop there:
   its honest direct successor is already the fixed-increment source law
   `FEI.C7`, with the sharper route-native nonlocal return
   `(HSP.Bc0)\equiv(FEI.Bc0)`; the companion return note
   [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
   now makes the terminal continuation explicit: via those exact FEI return
   instances, this energy-conditioned branch reopens only the returned
   lower-carrier reads and feeds back into the already-installed `LCI.A`
   route rather than opening a new external supplier family; the companion
   center-ball readout note
   [mpp-lci-a-first-rung-center-ball-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-center-ball-readout-note.md)
   now isolates the direct transported-center-ball readout beneath `VCS.A`; the
   companion `U_3` reduction note
   [mpp-lci-a-first-rung-u3-center-ball-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-u3-center-ball-reduction-note.md)
   records that the stronger sufficient `U_3` ball-readout branch is already
   route-internal; and the companion Laplacian-ball reduction note
   [mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md)
   records that the exact Laplacian-ball branch is itself already downstream
   of the old widened-shell oscillation packet when `m\ge 3`;
   more generally the remaining
   receiver-side wall inside that
   collar-first route is the lower-carrier package in
   [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md):
   either the sharper coefficient closure `(LCI.3c3x)`, or on the coarser
   direct-readout subroute the shell bridge `(LCI.3c3k0)` followed by
   Proposition `LCI.B3a`, which recovers `(LCI.3c5f)` from the absolute
   anchored-center ledger `(LCI.3c5k)` and the explicit transported-center
   oscillation ledger; on the transported-center realization with bounded
   pack-side gauge `(LCI.3c3y0)`, local Holder oscillation `(LCI.3c3z20)`, and
   first center-rung bound `(LCI.3c3z22)` frozen as package inputs, that same
   receiver wall is compressed to the residual center-forcing theorem `RCF.A`,
   but the companion enlarged-shell calculation is now only a bounded side
   test because one-step shell enlargement reopens the oscillation coefficient
   on a larger radius rather than closing `EOC.A`;
   the exact same-depth frozen-family source-only ledger `(FCI.5f)` in
   `mpp-fixed-family-and-collar-interval-propagation.md`, which is the source
   side needed through `CSP.B3b` and on the fixed finite packet family on the
   reference branch, remains parallel rather than downstream of an already
   closed `CSP.A`; on the installed strengthened source branch, the companion
   closure note
   [mpp-frozen-family-source-sufficient-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-sufficient-closure-note.md)
   already organizes that source input as `(FFSRC.A)`, with the exact
   remaining pressure theorem still isolated on the companion note; the
   companion note
   [mpp-frozen-family-source-ledger-split-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-ledger-split-note.md)
   records the sharpest exact source-side structural split currently on disk as
   frozen-net pressure, strain/cascade, and cutoff channels; the companion
   cutoff note
   [mpp-frozen-family-cutoff-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-cutoff-channel-reduction-note.md)
   already gives `(FCC.C1)`, absorbing the cutoff channel into the
   viscous/coefficient side once the explicit packet-factor coefficient ledger
   `\mathfrak b_{\psi}^{cut}` is in `L^1(I)`, while the explicit packet
   commutator writeup in
   [mpp-frozen-family-packet-cutoff-commutator-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-packet-cutoff-commutator-note.md)
   records via `(PCC.Ca)` that the first direct packet bounds still self-loop
   through the same fixed-family propagation; on the installed ordinary
   interval energy ledger, the companion pressure note
   [mpp-frozen-family-pressure-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-pressure-channel-reduction-note.md)
   sharpens the pressure channel to the frozen-net resonant packet sum
   `\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}`, whose exact
   smaller wall is now isolated as `(FIRP.A0)` and whose bounded exact
   self-attempt does not lower further on current installed surfaces; the adjacent
   stronger sufficient pressure export is now isolated in
   [mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md)
   as `FFPR.C2`, rejoining the installed fixed-radius pressure stack through
   `FPC.H -> FPL.C`; the bounded exact pressure self-attempt now records that
   the exact branch still bottoms out at `(FPCR.C)`, whose exact smaller wall
   is now isolated as `(FIRP.A0)` and does not lower further on current
   installed surfaces, while on the stronger
   pressure branch the first sharper packet-side theorem is now isolated as
   `(FFPLB.A0)`, whose exact smaller wall is `(FFPLB.B0)` and whose bounded
   single-increment test does not lower further on the current exact surfaces,
   while on the coarser energy-conditioned branch the terminal packet-to-center
   bridge `(FIPCB.A0)` is still absent on disk and its bounded coarser
   self-attempt does not lower further on the current installed surfaces; the
   new
   companion strain/cascade note
   [mpp-frozen-family-strain-cascade-channel-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-channel-reduction-note.md)
   records the exact nonpressure sibling `(FSCR.C)`, namely
   `\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(\cdot;I)\in L^1(I)`, with no
   sharper frozen-family descendant currently on disk; the bounded exact
   subchannel test on that companion exact note now records that splitting
   `FSCR.1e` into frozen-net strain and cascade does not lower the exact route
   beneath `(FSCR.C)`, and that only the adjacent sufficient companions
   `(FSCR.B2a)` / `(FSCR.B2b)` separate further; the adjacent stronger
   sufficient nonpressure export is now isolated in
   [mpp-frozen-family-strain-cascade-sufficient-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-strain-cascade-sufficient-reduction-note.md)
   as `(FFSC.B1)` / `(FFSC.C1)`, exporting that whole channel to the common
   collar envelope and the frozen-family packet aggregate; the companion
   closure note
   [mpp-frozen-family-source-sufficient-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-frozen-family-source-sufficient-closure-note.md)
   now combines the exact remaining pressure bridge `(FFPB.A0)` with
   `(FFSC.B1)` / `(FFSC.C1)` and `(FCC.C1)` into the organized stronger
   source-side package `(FFSRC.A)`, with the exact remaining pressure-side
   theorem there still isolated as `(FFPB.A0)`; once that strengthened source
   package is granted, the live one-field burden returns entirely to the
   receiver side;
   once `LCI.A` and `(FCI.5f)` are both in hand, `CSP.A` closes, its common
   collar envelope feeds the next-rung segment side, the weighted-segment
   packet, and the finite-net reference discharge, and the route returns to
   the fixed-family reference branch;
5. assemble `CFI.A` through `CFI.B4`;
6. derive the manifestation bridge `(CFI.6)` and chronological shell `(CFI.6a)`
   as corollaries;
7. only then return to excluding blown and jump themselves.

The corrected receiver-to-class certificate map is now recorded in
[mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md).
It preserves the final endpoint as the conditional certificate
`CFI.A + \mathsf{End}_{NS}`: the receiver side is compressed to the
parameter-stable `LCI` theorem family plus `(FCI.5f)`, `AFD.A`, and `RCF.A`,
while the endpoint-exclusion matrix still has open Pack, Field, blown, and
cross-entry cells.

## Honest Position

This note records the preferred compression direction.

Standing alone, this note does **not** prove `CFI.A`, and it does **not** yet
define an accepted defect `\mathfrak D`. Its terminal use of `CFI.A` is licensed
only through the `ACT.KX` conditional completion packet under `RSCB.NKF`, the
bounded pack gauge, the finite required parameter set, and the accepted endpoint
certificate maps.

The compactness-and-reconstitution route remains available as a fallback
checkpoint if this forward-invariance extraction fails. The live theorem
pressure is placed here first because this route directly tests whether the MPP
class law is already the coercive law in seed form.
