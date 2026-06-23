---
theorem_id: forward-gold-full-packet-observability-gap-direct-attempt-20260622
status: superseded-by-kernel-theorem-static-kernel-proved-dynamic-frozen-family-compactness-lsc-open
logical_landing_node: full_packet_observability_gap
edge_effect: >-
  This direct attempt is superseded by the explicit kernel theorem
  mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md. The
  static quotient gap has been sharpened to ker L_4B,N=G for the whole retained
  material packet: zero full loss forces the packet into harmless gauge and
  selected non-gauge activity vanishes. The dynamic frozen observability needed
  for the Lyapunov/Kawashima H_sigma follows by compactness contradiction once
  the retained frozen evolution family has same-packet compactness and lower
  semicontinuity for the full readout W_sigma. The remaining internal face is
  now RetainedFrozenFamilyCompactnessLsc.A.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-c-coordinate-realization-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md
---

# Full-Packet Observability Gap Direct Attempt

Date: 2026-06-22

## 0. Target

The bounded-below \(X\)-term construction needs a positive full-packet
symmetrizer

```math
\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle,
\qquad
H_\sigma=I+K_\sigma,
\tag{FOG.1}
```

whose derivative gives the simultaneous four-body inequality.  The proposed
noncircular route is a full-packet observability gap on the gauge quotient.

There are two different gaps:

```math
\text{static packet gap}
\tag{FOG.2}
```

and

```math
\text{frozen-evolution observability gap}.
\tag{FOG.3}
```

The first one is now provable from installed ingredients.  The second one is
the one actually needed to construct \(H_\sigma\).

## 1. Static retained quotient gap

Let \(\mathcal K_N^{ret}\) be the retained fixed-terminal-gauge packet class
for the mixed material tower

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N),
\tag{FOG.4}
```

after quotienting the removable Galilean velocity and affine-pressure gauges.
The \(C_N\) compactness coordinate, selector/collar stabilization, and fixed
terminal gauge give compactness on the retained no-loss class.

Let

```math
A_{sel}^\perp(\mathfrak U_N)
\tag{FOG.5}
```

be the selected non-gauge activity.  The activity is continuous on the
same-carrier compact quotient, because the packet density converges strongly
and positive part is Lipschitz in \(L^1\).

Let

```math
\mathcal L_{4B,N}(\mathfrak U_N)
\tag{FOG.6}
```

be the full nonnegative four-body loss: tower-radius loss, viscous/strain
loss, compactness/no-loss defect, geometry/frame loss, selector/collar
variation, and same-packet legal residual.

The installed compactness-rigidity principle says:

```math
\left[
\mathcal K\text{ compact},\
A\text{ continuous},\
\mathcal L\text{ lower semicontinuous},\
\mathcal L=0\Rightarrow A=0
\right]
\Rightarrow
\left[
A\ge\eta\Rightarrow \mathcal L\ge c_\eta
\right].
\tag{FOG.7}
```

The retained gauge-fixed material lower-bound theorem supplies the rigidity
input: if full same-carrier loss vanishes, the packet converges to a
Galilean/affine-pressure gauge, and \(A_{sel}^\perp\) vanishes.

Therefore, for every \(\eta>0\),

```math
\boxed{
A_{sel}^\perp(\mathfrak U_N)\ge\eta
\Longrightarrow
\mathcal L_{4B,N}(\mathfrak U_N)\ge c_\eta>0
}
\tag{FOG.8}
```

on the retained quotient packet class.

This proves the static gap:

```math
\boxed{
\text{no retained non-gauge packet has positive selected activity and zero
full four-body loss.}
}
\tag{FOG.9}
```

## 2. Why the static gap is not yet the \(X\)-term symmetrizer

The \(X\)-term construction needs a differential Lyapunov inequality for the
\(\sigma\)-evolution:

```math
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\le
-cA_{4B,N}-D_{4B,N}
-c\,d[\log(1+\mathcal P_N^{mat})]_+/d\sigma
+R_{4B,N}.
\tag{FOG.10}
```

This is stronger than `(FOG.8)`.  It requires observability along the frozen
mixed material evolution

```math
Z(t)=e^{t\mathcal L_\sigma}Z_0.
\tag{FOG.11}
```

The needed estimate is

```math
\boxed{
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z_0)\,dt
\ge
c\|Z_0\|_{\mathcal H_N/\mathcal G}^2
}
\tag{FOG.12}
```

for all \(Z_0\) in the gauge quotient, with constants uniform on the retained
tail.  Here

```math
\mathcal W_\sigma
=
A_{4B,N}+D_{4B,N}
+d[\log(1+\mathcal P_N^{mat})]_+/d\sigma
\tag{FOG.13}
```

is the full packet loss/activity readout.

The static gap `(FOG.8)` is the \(t=0\) compactness-rigidity statement.  The
Lyapunov construction needs `(FOG.12)`: every non-gauge initial perturbation
must be seen by the full packet readout during the frozen same-packet
evolution.

## 3. Exact remaining obstruction

Assume `(FOG.12)` fails.  Then there exist retained frozen operators
\(\mathcal L_{\sigma_n}\) and quotient-normalized data \(Z_n\) with

```math
\|Z_n\|_{\mathcal H_N/\mathcal G}=1,
\tag{FOG.14}
```

but

```math
\int_0^{T_0}
\mathcal W_{\sigma_n}(e^{t\mathcal L_{\sigma_n}}Z_n)\,dt
\to0.
\tag{FOG.15}
```

To contradict this, one needs compactness of the frozen evolution family:

```math
e^{t\mathcal L_{\sigma_n}}Z_n
\longrightarrow
Z_\ast(t)
\tag{FOG.16}
```

on the same material packet, and lower semicontinuity of \(\mathcal W\) along
that frozen evolution.  Then `(FOG.15)` gives

```math
\mathcal W_\ast(Z_\ast(t))=0
\quad\text{for a.e. }t\in[0,T_0].
\tag{FOG.17}
```

The kernel theorem in
`mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md` forces
\(Z_\ast(t)\) to remain in the harmless gauge kernel.  But `(FOG.14)` and
quotient compactness would give a nonzero quotient limit, contradiction.

Thus the remaining theorem is exactly:

```math
\boxed{
\texttt{RetainedFrozenFamilyCompactnessLsc.A}
}
\tag{FOG.18}
```

with content: compactness of \(e^{t\mathcal L_{\sigma_n}}Z_n\) on the same
retained mixed material packet and lower semicontinuity of the full readout
\(\mathcal W_\sigma\).  Together with the kernel theorem, that gives `(FOG.12)`.

## 4. Direct attempt result

The static full-packet gap is superseded by the exact kernel theorem:

```math
\ker\mathcal L_{4B,N}=\mathcal G.
\tag{FOG.19}
```

That is stronger than the earlier compactness-rigidity statement: lossless
retained packets are precisely harmless gauge packets, and selected non-gauge
activity vanishes on that kernel.

It is not enough by itself to construct the \(X\)-term symmetrizer.  The
symmetrizer needs the dynamic frozen-evolution observability estimate
`(FOG.12)`.  Therefore the live internal face is:

```math
\boxed{
\texttt{RetainedFrozenFamilyCompactnessLsc.A}.
}
\tag{FOG.20}
```

This remains inside the same pressure-viscosity-incompressibility-velocity
material packet.  It is not a component estimate and not a separate supplier.
