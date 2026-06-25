---
theorem_id: forward-gold-rectified-force-action-vs-native-material-stack-audit-20260625
status: rectified-variation-demoted-to-sufficient-coordinate-native-target-is-full-positive-material-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits whether finite rectified annular force-action variation is the native
  theorem or an overstrong coordinate. The result is: the native physical object
  is the original smooth solution's one material spike-wave history and its
  signed oriented material-stack stress/strain return. That signed stack is
  enough for attachment and net energy/storage bookkeeping. It is not enough for
  fixed H^s continuation, because H^s continuation needs finite positive
  variation of the material record. Rectified annular force-action variation is
  therefore a valid sufficient coordinate for the full positive material clock,
  but it must not be promoted as the only native object. The live edge is the
  finite full same-material positive action clock; rectified |F'| is one
  admissible representation of that clock, not the governing ontology.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-total-variation-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-annular-flux-force-action-direct-attack-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Rectified Force-Action vs Native Material Stack Audit

Date: 2026-06-25

## 0. Result

The rectified annular force-action theorem is overstrong if it is read as the
native physical object.

The native physical object is the one original smooth material history. Its
annular layers carry a signed oriented stress/strain return. On nested material
layers, signed stress-work is the object that telescopes. That is the actual
pay-it-back-later bookkeeping.

The rectified quantity is still useful. It is a sufficient positive coordinate
for the full material clock needed by the continuation proof. It should be read
as one way to measure back-and-forth material action after net signed exchange
has already been separated, not as the only possible route.

So the live proof target is not the bare statement

```math
\int |F_\phi'(s)|\,ds<\infty .
\tag{RMS.1}
```

The live target is

```math
\int d\Omega_N^{full}<\infty,
\tag{RMS.2}
```

where the full clock controls the positive material-record variation required
for fixed-coordinate continuation:

```math
d\Omega_N^{full}
\supset
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+.
\tag{RMS.3}
```

Rectified force-action variation may prove `(RMS.2)`, but `(RMS.2)` is the
actual theorem.

## 1. Native signed stack

For a transported material region \(\Omega(t)\), the exact stress identity is

```math
{d\over dt}E_{\Omega}(t)+D_{\Omega}(t)=-F_{\partial\Omega}(t),
\tag{RMS.4}
```

with

```math
E_{\Omega}(t)=\int_{\Omega(t)}{1\over2}|u|^2\,dx,
\qquad
D_{\Omega}(t)=2\nu\int_{\Omega(t)}|S|^2\,dx,
\tag{RMS.5}
```

and

```math
F_{\partial\Omega}(t)=\int_{\partial\Omega(t)}u\cdot Tn\,dS,
\qquad
T=-pI+2\nu S.
\tag{RMS.6}
```

For a nested material stack, adjacent interfaces appear with opposite
orientations. Therefore the signed internal stress-work cancels in the stack
sum. Schematically,

```math
\sum_k \int_I F_{k,k+1}(t)\,dt
\quad\text{telescopes to outer boundary and endpoint storage terms.}
\tag{RMS.7}
```

This is the native material-stack return. It is exact and does not require
rectifying the interface flux.

## 2. What signed stack proves

The signed stack proves attachment and net bookkeeping.

For the transported cutoff form,

```math
{d\over dt}M_\phi(t)+D_\phi(t)=-F_\phi(t),
\tag{RMS.8}
```

so a center storage drop satisfies

```math
[M_\phi(a)-M_\phi(b)]_+
\le
\int_a^b D_\phi(t)\,dt+
\int_a^b |F_\phi(t)|\,dt.
\tag{RMS.9}
```

If the material stack is used with signed orientation, the internal interface
terms cancel before one asks for absolute total exchange. That is exactly the
physical later-payback picture: the annular layers are not independent packet
events; they are one same-fluid stress/strain history.

This proves the center pulse cannot be detached from the annular history. It
also proves fixed-annulus terminal absolute continuity. It does not by itself
control the positive high-order material-record variation needed for continuation.

## 3. Why H^s continuation still needs a positive clock

A fixed-coordinate \(H^s\) relaunch is controlled by the continuation-depth
material record:

```math
\|u(t)\|_{H^s_x}
\le
C_s(\mathcal P_N^{mat}(t)).
\tag{RMS.10}
```

Thus the proof needs

```math
\int d[\log(1+\mathcal P_N^{mat})]_+<\infty .
\tag{RMS.11}
```

Signed net annular work can vanish while material deformation, strain-frame
turning, pressure service, and tower growth still have positive variation. This
is the net-versus-positive-record distinction. A cycle can return net energy
through the annular stack and still leave a positive deformation/tower clock.

Therefore the signed material stack is the native conservation/return object,
but the continuation proof needs a positive material-action clock.

## 4. Role of rectified force-action

The rectification step

```math
\int_J |F_\phi|\,ds
\le
\left|\int_JF_\phi\,ds\right|+
\int_J|F_\phi'|\,ds
\tag{RMS.12}
```

is a sufficient way to convert back-and-forth stress-work into positive clock
mass. The derivative \(F_\phi'\) is a same-packet quantity by the material flux
identity, so this route preserves participation.

But `(RMS.12)` is not the only possible expression of the positive clock. The
same proof role could also be filled by any same-material positive action
density \(d\Omega_N^{act}\) satisfying

```math
d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{ann,+}
\le
C\,d\Omega_N^{act}+dR_N^0,
\qquad
\int d\Omega_N^{act}<\infty .
\tag{RMS.13}
```

The governing object is therefore

```math
\boxed{
\text{finite full same-material positive action clock}
}
\tag{RMS.14}
```

with rectified annular force-action variation as one admissible coordinate.

## 5. Patch to the live edge

The live edge should say:

```math
\text{original smooth material spike-wave history}
\Longrightarrow
\int d\Omega_N^{full}<\infty .
\tag{RMS.15}
```

It should not say that the route is committed uniquely to

```math
\int |F_\phi'|<\infty
\tag{RMS.16}
```

as the native theorem.

The correct hierarchy is:

```math
\text{signed oriented material stack}
\quad\Rightarrow\quad
\text{attachment and net annular return},
\tag{RMS.17}
```

```math
\text{finite full positive material clock}
\quad\Rightarrow\quad
\text{uniform material record and fixed }H^s\text{ continuation},
\tag{RMS.18}
```

and

```math
\text{finite rectified force-action variation}
\quad\Rightarrow\quad
\text{one sufficient proof of the finite full positive material clock}.
\tag{RMS.19}
```

This removes the overstrong reading while preserving the continuation demand.