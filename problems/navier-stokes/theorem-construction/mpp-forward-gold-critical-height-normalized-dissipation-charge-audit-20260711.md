# Critical-height normalized-dissipation charge audit

**Date:** 2026-07-11  
**Program:** Gold, direct critical-height continuation  
**Live target:**

\[
\sup_{0\le t<T}\mathcal H_{1/2}(t)<\infty,
\qquad
\mathcal H_{1/2}(t)=\frac12\|\Lambda^{1/2}u(t)\|_2^2.
\tag{NC.1}
\]

**Mathematical status:** the charge calculation below is proved at its stated
scope. Its proposed finite-total theorem is equivalent to the live critical
continuation target on a finite maximal interval, so it is a checked route
obstruction and support only. It is not a smaller Gold theorem.

## 1. Same-fluid physical object

Let \(u\) be one smooth unforced incompressible Navier--Stokes solution with
fixed \(\nu>0\), either decaying on \(\mathbb R^3\) or periodic on
\(\mathbb T^3\). Transport, the pressure response slaved to the whole current
velocity field, and viscosity all remain in the one projected equation. The
quantity \(\mathcal H_{1/2}\) is a global critical readout of that same field;
it is not a packet, shell, source proxy, or independently owned ledger row.

Write

\[
H(t)=\mathcal H_{1/2}(t),
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2,
\tag{NC.2}
\]

and

\[
N(t)=-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{NC.3}
\]

The exact same-field balance is

\[
H'(t)=N(t)-\nu D(t).
\tag{NC.4}
\]

The pressure has no separate scalar-multiplier payment in (NC.4): its action
is already slaved inside the projected nonlinear current. The candidate charge
therefore measures the amount of critical-scale viscous activity accompanying
record growth; it supplies neither a favorable pressure sign nor an
independent brake.

## 2. Exact charge theorem

The standard critical trilinear estimate gives a domain-dependent constant
\(C_K<\infty\) such that

\[
|N(t)|
\le C_K\|\Lambda^{1/2}u(t)\|_2
          \|\Lambda^{3/2}u(t)\|_2^2
=\sqrt2\,C_K\sqrt{H(t)}\,D(t).
\tag{NC.5}
\]

Assume first that \(H(0)>0\), and define the running record and one global
same-trajectory measure by

\[
R(t)=\max\left\{H(0),\sup_{0\le s\le t}H(s)\right\},
\tag{NC.6}
\]

\[
d\mu_*(t)
=
\frac{D(t)}{\sqrt{\max\{H(t),H(0)\}}}\,dt.
\tag{NC.7}
\]

At almost every time when the record grows, \(H=R\) and \(R'=H'>0\).
Consequently, (NC.4)--(NC.5) imply

\[
\frac{d}{dt}\log R(t)
=\frac{H'(t)}{H(t)}
\le
\sqrt2\,C_K\frac{D(t)}{\sqrt{H(t)}}
-\nu\frac{D(t)}{H(t)}
\le
\sqrt2\,C_K\frac{D(t)}{\sqrt{H(t)}}.
\tag{NC.8}
\]

Outside the record-contact set, \(R'=0\). Integration therefore yields

\[
\log\frac{R(t)}{H(0)}
\le \sqrt2\,C_K\,\mu_*([0,t]),
\tag{NC.9}
\]

and hence

\[
H(t)\le R(t)
\le H(0)\exp\!\left(\sqrt2\,C_K\,\mu_*([0,t])\right).
\tag{NC.10}
\]

In particular, every first-record doubling interval \([a,b]\), with
\(R(a)=M\) and \(R(b)=2M\), consumes the fixed charge

\[
\mu_*([a,b])
\ge \frac{\log 2}{\sqrt2\,C_K}.
\tag{NC.11}
\]

The intervals are disjoint and \(\mu_*\) is one measure on the original
trajectory, so (NC.11) contains no interval-by-interval recounting.

If \(H(0)=0\), the decaying or mean-free datum is zero and the solution is
trivial; a constant torus mode is also invisible to \(\Lambda^{1/2}\) and
remains constant. In these cases set \(\mu_*=0\), and there are no record
doublings to charge.

## 3. Structural falsification

### 3.1 Critical scaling survives

Under the exact fixed-viscosity scaling

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t),
\tag{NC.12}
\]

the height \(H\) and its initial value are invariant, while

\[
D_\lambda(t)=\lambda^2D(\lambda^2t).
\tag{NC.13}
\]

Thus \(d\mu_*\) and the charge floor in (NC.11) are invariant. The candidate
passes the cheapest decisive scaling test that destroys a fixed floor charged
in the subcritical Leray dissipation.

### 3.2 Sign and exact-solution tests survive only vacuously

The density in (NC.7) is nonnegative and time-reversal even. It can count
critical activity after the nonlinear current has produced upward record
motion; it cannot create the sign of that motion. Exact constant, shear, or
nonlinearity-free solutions have no critical-height doubling, so (NC.11) is
vacuous on them rather than falsely coercive. No localization, free pressure
bank, isolated-packet amplifier, or independently posed strain field enters the
argument.

### 3.3 The Leray energy budget does not bound this charge

The classical energy inequality controls

\[
\int_0^T\|\Lambda u(t)\|_2^2\,dt,
\tag{NC.14}
\]

one derivative below the numerator in (NC.7). Moreover, (NC.14) scales by
\(\lambda^{-1}\), whereas \(\mu_*\) is invariant. Hence there is no
scale-independent constant comparing \(\mu_*\) from above by the Leray
dissipation alone. The known global energy budget supplies no finite total for
the charge in (NC.11).

## 4. Decisive route obstruction

Equation (NC.10) proves that

\[
\mu_*([0,T))<\infty
\quad\Longrightarrow\quad
\sup_{0\le t<T}H(t)<\infty.
\tag{NC.15}
\]

On the live finite-maximal-time class, the reverse implication also holds.
The bound in (NC.1) is the installed critical continuation target. Once it is
available, the same solution continues smoothly through \(T\); on a compact
subinterval of that smooth extension, \(D\) is integrable and the denominator
in (NC.7) is bounded below by \(\sqrt{H(0)}\). Therefore

\[
\sup_{0\le t<T}H(t)<\infty
\quad\Longrightarrow\quad
\mu_*([0,T))<\infty
\tag{NC.16}
\]

for every nontrivial history, with the zero or constant case already separated.
Thus the proposed theorem asserting a datum-bounded finite total for
\(\mu_*\) is another critical continuation criterion, not a genuinely smaller
theorem implying (NC.1).

The bare existential version has the same defect. For any nondecreasing running
record \(R\), the Stieltjes measure \(d\log R\) assigns exactly \(\log 2\) to
each record doubling, while

\[
(d\log R)([0,T))
=\log\frac{R(T-)}{H(0)}
\tag{NC.17}
\]

is finite exactly when the height remains bounded. Merely asking for some
finite globally non-recounted charge measure therefore repackages the Gold
peak theorem unless an independently proved finite physical resource dominates
that measure.

## 5. Exact effect

- **Proved:** the same-field, scale-critical measure (NC.7) charges each
  first-record height doubling by (NC.11).
- **Decisively refuted:** finite total mass of that measure as a genuinely
  smaller Gold burden; it is equivalent to the installed continuation target.
- **Ontology effect:** no canonical change. The calculation is already governed
  by participation, exact fixed-viscosity scaling, the projected nonlinearity,
  scalar-multiplier pressure cancellation, and the distinction between signed
  transport current and nonnegative dissipation readout.
- **Gold effect:** support only. SHR.7 remains open, and no authority surface is
  eligible for closure synchronization.

