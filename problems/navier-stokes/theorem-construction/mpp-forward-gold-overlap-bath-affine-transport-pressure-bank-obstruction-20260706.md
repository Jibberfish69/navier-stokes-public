---
theorem_id: forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706
status: strict-reduction-affine-same-fluid-transport-stays-q-four-fifths
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.AffineTransportCustody.NO-ORDER-ONE-FLOOR
  - SameFluidPressureBank.TransportCost = q-four-fifths
  - NonAffineCrowdTransport.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-schwartz-pressure-template-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-coupling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
completion_truth: >-
  Strict reduction and affine transport obstruction, not a dynamic bath
  construction, not a dense-crowd theorem, and not a confinement-constant
  decision. After the finite-energy pressure-template note, the remaining
  pressure-service question is whether the same realized fluid can carry the
  service bank with the producer. This note prices the affine part of that
  custody. On one producer clock, a trace-free affine background B with |B|~s
  transports a pressure-service bank by a bounded volume-preserving frame. The
  bank energy stays comparable to |K|D^5, and all affine transport/projection
  work is at power s|K|D^5, hence |K|D^5 over one producer clock. The supplied
  Hessian changes at rate O(s|K|), so the fixed-bank tracking note again gives
  |K|D^5. Self-evolution contributes only (sqrt(|K|)/s)|K|D^5, and viscosity
  contributes (nu/(sD^2))|K|D^5. For the overlap row
  |K|~s^2 beta^(4/5), affine same-fluid transport remains beta^(4/5)E_prod,
  with smaller self term and the already named Reynolds edge. Thus affine
  dynamic custody of the pressure bank does not restore an order-one payer.
  What remains is non-affine/broadband crowd transport, Reynolds-edge failure,
  fixed-density compensator/residue, or construction/exclusion.
---

# Overlap bath: affine-transport pressure-bank obstruction

## 1. Kill question

The Schwartz pressure-template note gives a finite-energy pressure-service bank
whose velocity and velocity gradient vanish at the producer while it supplies
any prescribed trace-free pressure Hessian \(K\) at cost
\[
  E_{\rm ph}\lesssim |K|D^5.
  \tag{ATP.1}
\]

The next possible payer is same-fluid custody. The pressure bank is not an
external actuator; it must be carried by the same velocity field as the
producer. The kill question here is whether affine transport by the producing
strain already forces an order-one cost.

The checked answer is no.

## 2. Affine producer frame

Let the producing velocity near the pressure bank be
\[
  u_p(t,x)=B(t)(x-X(t)),
  \qquad
  \operatorname{tr}B(t)=0,
  \qquad
  |B(t)|\sim s.
  \tag{ATP.2}
\]

Let \(L(t)\) be the incompressible affine frame
\[
  \dot L(t)=B(t)L(t),
  \qquad
  L(0)=I.
  \tag{ATP.3}
\]

On one producer clock \(0\le t\le s^{-1}\),
\[
  \det L(t)=1,
  \qquad
  \|L(t)\|+\|L(t)^{-1}\|\le C.
  \tag{ATP.4}
\]

Transporting the finite pressure bank by this bounded frame changes all fixed
template constants by only \(C\). In particular its energy remains
\[
  E_{\rm bank}(t)\sim |K(t)|D^5.
  \tag{ATP.5}
\]

## 3. Affine transport work

The affine producer acts on the pressure bank through three terms:

- transport of the bank's support and covectors;
- stretching/projection of the bank velocity to remain divergence-free;
- pressure projection needed by the linearized incompressibility constraint.

Each term has size \(s\) times the bank velocity at the same scale. Therefore
the work power is bounded by
\[
  P_{\rm aff}
  \lesssim
  sE_{\rm bank}
  \lesssim
  s|K|D^5.
  \tag{ATP.6}
\]

Over one producer clock,
\[
  W_{\rm aff}
  \lesssim
  |K|D^5.
  \tag{ATP.7}
\]

This is the pressure row itself, not an added order-one tax.

## 4. Hessian motion induced by affine transport

The supplied pressure Hessian is a trace-free tensor at the carried producer
station. Under a bounded affine frame, it is transformed by a bounded linear
map on \(\operatorname{Sym}_0(3)\). Since \(\dot L=BL\),
\[
  |\dot K_{\rm aff}|\lesssim s|K|.
  \tag{ATP.8}
\]

The fixed-bank tracking note then gives
\[
  W_{\rm track}
  \lesssim
  \int_0^{s^{-1}}|\dot K_{\rm aff}|D^5\,dt
  \lesssim
  |K|D^5.
  \tag{ATP.9}
\]

So the affine-frame turning of the pressure bank also stays inside the existing
pressure-service row.

## 5. Self-evolution and viscosity

Let
\[
  a:=|K|^{1/2}
  \tag{ATP.10}
\]
be the bank's own gradient scale. The time-persistence note gives relative
self-drift rate
\[
  a+{\nu\over D^2}.
  \tag{ATP.11}
\]

Thus over one producer clock,
\[
  W_{\rm self}
  \lesssim
  {a\over s}|K|D^5,
  \qquad
  W_{\rm visc}
  \lesssim
  {\nu\over sD^2}|K|D^5.
  \tag{ATP.12}
\]

For the overlap row,
\[
  |K|\sim s^2\beta^{4/5},
  \qquad
  a\sim s\beta^{2/5}.
  \tag{ATP.13}
\]

Therefore
\[
  W_{\rm self}
  \lesssim
  \beta^{2/5}|K|D^5,
  \tag{ATP.14}
\]
and viscosity is exactly the already named Reynolds-edge factor.

## 6. Overlap substitution

The producer currency at the pressure-bank scale is
\[
  E_{\rm prod}(D)\sim s^2D^5.
  \tag{ATP.15}
\]

Since
\[
  |K|\sim s^2\beta^{4/5},
  \tag{ATP.16}
\]
the affine transport, projection, and tracking costs all satisfy
\[
  W_{\rm aff}+W_{\rm track}
  \lesssim
  |K|D^5
  \sim
  \beta^{4/5}E_{\rm prod}(D).
  \tag{ATP.17}
\]

The bank's self-evolution is smaller:
\[
  W_{\rm self}
  \lesssim
  \beta^{6/5}E_{\rm prod}(D),
  \tag{ATP.18}
\]
and the viscous term remains
\[
  W_{\rm visc}
  \lesssim
  {\nu\over sD^2}\beta^{4/5}E_{\rm prod}(D).
  \tag{ATP.19}
\]

## 7. What this kills

This kills the affine same-fluid custody shortcut:
\[
  \text{pressure bank carried by affine producer flow}
  \Rightarrow
  \text{order-one pressure payer}.
  \tag{ATP.20}
\]

Affine transport is not free, but it costs only
\[
  |K|D^5,
  \tag{ATP.21}
\]
which is the already installed \(q=4/5\) pressure row for overlap.

## 8. What remains

This is not a dynamic bath construction and not a dense-crowd theorem. It only
prices one producer-clock affine custody window.

The remaining pressure-row burdens are:

- non-affine or broadband crowd transport of the pressure-service bank;
- bank-bank and bank-producer interactions beyond the affine-curvature
  subcell regime;
- Reynolds-edge failure, where the pressure-bank scale falls below the viscous
  clock;
- fixed-density compensator/residue if an order-one retained tax is demanded;
- or construction/exclusion of a summability-valid dynamic pressure bath.

## 9. Four-sentence result

Affine same-fluid transport of the pressure-service bank does not restore the
confinement floor. A trace-free affine producer \(B\) with \(|B|\sim s\) changes
the bank energy and supplied pressure Hessian at rate \(s\), so one producer
clock costs only \(|K|D^5\). For the overlap row
\[
  |K|\sim s^2\beta^{4/5},
\]
this is \(\beta^{4/5}E_{\rm prod}\); the bank's own nonlinear drift is smaller
by \(\beta^{2/5}\), and viscosity is the named Reynolds edge. The surviving
pressure branch is non-affine/broadband crowd transport, Reynolds-edge failure,
fixed-density compensator/residue, or construction/exclusion.
