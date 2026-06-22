---
theorem_id: forward-gold-fourbody-storage-controls-normalized-terminal-packet-direct-test-20260621
status: direct-test-complete-reduces-to-gauge-fixed-storage-coercivity-and-harmonic-pressure-norm
logical_landing_node: fourbody_storage_controls_normalized_terminal_packet_direct_test
edge_effect: "Tests Thomas's proposed gold-only solve theorem FourBodyStorageControlsNormalizedTerminalPacket.A. The relay is correct: if closed four-body storage controls normalized local energy, four-body drain controls base-rung dissipation, local pressure is Calderon-Zygmund licensed by velocity, and harmonic pressure memory has an L^(5/3) coercivity line, then UniformNormalizedLocalEnergyPressure.A follows and Hardy no-jump closes. Current installed inputs do not prove the theorem as stated. The first line is the real obstruction: existing L_4B is a bounded-below four-body capacity/drop for Galilean-invariant selected participation activity, not a positive equivalent of full normalized local kinetic energy. A constant Galilean mode can make the full L_s^infty L_y^2 norm arbitrarily large while A_4B, D_4B, strain, source, and selected singular participation vanish. Thus the storage coercivity must be gauge-fixed or the storage must be enlarged by a base local-energy term whose derivative is paid by the full packet. The second line holds only when the base-rung viscous drain is explicitly included in D_4B. The local pressure line is valid after that. The harmonic pressure line is not installed as an L^(5/3) norm bound; existing notes route harmonic pressure memory as collar flux, terminal trace, legal loss, or selector/collar drift. Therefore the producer reduces to GaugeFixedFourBodyStorageCoercivity.A plus HarmonicPressureMemoryNormCoercivity.A, or to the weaker same-carrier L_s^p endpoint trace reserve."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-reserve-producer-family-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-normalized-local-energy-pressure-bound-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Storage Controls Normalized Terminal Packet Direct Test

Date: 2026-06-21

## 0. Proposed theorem

The proposed gold-only theorem is:

```math
\boxed{
\texttt{FourBodyStorageControlsNormalizedTerminalPacket.A}
}
\tag{FSC.1}
```

For every retained terminal heat-scale packet

```math
V_m(s,y)=r_m u(T_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)=r_m^2p(T_m+r_m^2s,x_m+r_my),
\tag{FSC.2}
```

prove

```math
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2(Q_1)}^2
+
\|\nabla_yV_m\|_{L^2_{s,y}(Q_1)}^2
+
\|Q_m\|_{L^{5/3}_{s,y}(Q_1)}^{5/3}
\right)
<\infty .
\tag{FSC.3}
```

The input is the closed four-body cyclic inequality:

```math
\partial_\sigma L_{4B,m}
+
D_{4B,m}
+
cA_{4B,m}
\le
R_{4B,m}.
\tag{FSC.4}
```

Integrating gives

```math
L_{4B,m}(s)
+
\int_{-1}^{s}D_{4B,m}
+
c\int_{-1}^{s}A_{4B,m}
\le
L_{4B,m}(-1)
+
\int_{-1}^{s}R_{4B,m}.
\tag{FSC.5}
```

So the proposed solve reduces to four coercivity lines.

## 1. Line one: storage controls local energy

The desired first line is

```math
\boxed{
\int_{B_1}\eta^2|V_m(s)|^2\,dy
\le
C L_{4B,m}(s)+R_{\rm legal,m}(s).
}
\tag{FSC.6}
```

This is the hard line, and it is not installed for the existing \(L_{4B}\).

The current four-body notes define \(L_{4B}\) as a bounded-below body storage /
capacity-drop object for the selected same-carrier participation activity
\(A_{4B}\).  That activity was explicitly chosen to be Galilean-invariant:
it should vanish on removable constant-flow profiles.

This creates an exact obstruction to `(FSC.6)` as stated.  Let

```math
V_m(s,y)=c_m,
\qquad
Q_m(s,y)=0,
\tag{FSC.7}
```

with \(c_m\) spatially constant.  Then

```math
\nabla_yV_m=0,
\qquad
(V_m\cdot\nabla_y)V_m=0,
\qquad
\nabla_y\cdot V_m=0.
\tag{FSC.8}
```

Thus strain, projected source, tower variation, viscous drain, and selected
singular participation vanish:

```math
A_{4B,m}=0,
\qquad
D_{4B,m}=0.
\tag{FSC.9}
```

But

```math
\int_{B_1}\eta^2|V_m|^2\,dy
=
|c_m|^2\int_{B_1}\eta^2\,dy,
\tag{FSC.10}
```

which can be arbitrarily large.

Therefore `(FSC.6)` cannot hold for the ungauged velocity unless \(L_{4B}\)
contains a positive base local-energy term that charges Galilean mean energy.
The existing four-body activity deliberately does not do that.

The correct coercivity line is gauge-fixed:

```math
\boxed{
\int_{B_1}\eta^2|V_m(s)-\langle V_m(s)\rangle_\eta|^2\,dy
\le
C L^{gq}_{4B,m}(s)+R_{\rm legal,m}(s),
}
\tag{FSC.11}
```

where \(L^{gq}_{4B}\) is the gauge-quotient four-body storage and
\(\langle V\rangle_\eta\) is the selected local Galilean mode.

Alternatively, one may enlarge the storage:

```math
\widetilde L_{4B}
=
L_{4B}
+
{1\over2}\int\eta^2|V|^2 .
\tag{FSC.12}
```

But then the derivative of the added local energy term brings back the local
energy boundary flux:

```math
{d\over ds}{1\over2}\int\eta^2|V|^2
+
\nu\int\eta^2|\nabla V|^2
=
\int_{\operatorname{collar}}
\left[
{1\over2}|V|^2V\cdot\nabla(\eta^2)
+
QV\cdot\nabla(\eta^2)
-
\nu\nabla{1\over2}|V|^2\cdot\nabla(\eta^2)
\right].
\tag{FSC.13}
```

So the enlarged-storage proof is not free.  It requires the same full-packet
flux, pressure-memory, legal, and terminal trace payment that the gold route is
trying to produce.

Thus line one reduces to:

```math
\boxed{
\texttt{GaugeFixedFourBodyStorageCoercivity.A}
}
\tag{FSC.14}
```

or to an enlarged-storage theorem with the added local-energy boundary flux
paid by the full packet.

## 2. Line two: four-body drain controls local dissipation

The desired second line is

```math
\boxed{
\nu\int_{-1}^{0}\int_{B_1}\eta^2|\nabla_yV_m|^2\,dy\,ds
\le
C\int_{-1}^{0}D_{4B,m}\,ds
+
R_{\rm legal,m}.
}
\tag{FSC.15}
```

This line is valid if \(D_{4B}\) explicitly includes the base-rung viscous
drain on the same cutoff \(\eta\):

```math
D_{4B,m}
\supset
\nu\int_{B_1}\eta^2|\nabla_yV_m|^2\,dy .
\tag{FSC.16}
```

The selected full-packet production note includes a viscous payment channel
\(\mathfrak M_{vis}=\nu\int|\nabla V_\sigma|^2\), so this is compatible with
the current four-body language.  It still depends on line one or another
bounded-initial-storage input to integrate `(FSC.4)` uniformly over the
retained family.

Thus line two is not the main obstruction once base-rung viscosity is included.

## 3. Line three: local pressure is licensed by velocity

Decompose

```math
Q_m=Q_m^{loc}+Q_m^H.
\tag{FSC.17}
```

For the local part,

```math
-\Delta Q_m^{loc}
=
\partial_i\partial_j\big((V_m)_i(V_m)_j\big).
\tag{FSC.18}
```

Calderon-Zygmund gives

```math
\|Q_m^{loc}\|_{L^{5/3}}^{5/3}
\le
C\|V_m\otimes V_m\|_{L^{5/3}}^{5/3}
=
C\|V_m\|_{L^{10/3}}^{10/3}.
\tag{FSC.19}
```

The standard interpolation gives

```math
\|V_m\|_{L^{10/3}_{s,y}}^{10/3}
\le
C
\|V_m\|_{L_s^\infty L_y^2}^{4/3}
\|\nabla_yV_m\|_{L^2_{s,y}}^2.
\tag{FSC.20}
```

So line three is proved once lines one and two produce the normalized
energy-dissipation bound, modulo the Galilean quotient issue from line one.

## 4. Line four: harmonic pressure memory norm

The desired fourth line is

```math
\boxed{
\|Q_m^H\|_{L^{5/3}_{s,y}(Q_1)}^{5/3}
\le
C A_{4B,m}
+
R_{\rm legal,m}.
}
\tag{FSC.21}
```

This is not installed.

The existing harmonic-pressure note proves a routing statement for the collar
trace:

```math
Q_m^H V_m\cdot\nabla\chi_m.
\tag{FSC.22}
```

It says harmonic pressure memory is legal/collar paid, a terminal trace atom,
or selector/collar drift.  That is a statement about the pressure-flux measure
seen by the localized energy identity.

It is not the norm estimate `(FSC.21)`.

To upgrade the collar trace into an interior \(L^{5/3}\) bound for \(Q_m^H\),
one needs an additional pressure-memory coercivity theorem.  It must remove
pressure gauge modes and control the harmonic pressure inside \(B_1\) from the
same retained full-packet data:

```math
\boxed{
\texttt{HarmonicPressureMemoryNormCoercivity.A}
}
\tag{FSC.23}
```

Without `(FSC.23)`, pressure is routed but not uniformly bounded in the
normalized \(L^{5/3}\) packet norm.

## 5. Consequence if the four lines are installed

If `(FSC.11)` or an enlarged-storage version of `(FSC.6)`, `(FSC.15)`,
`(FSC.19)`, and `(FSC.21)` are all installed, then

```math
\sup_m
\left(
\|V_m\|_{L_s^\infty L_y^2}^2
+
\|\nabla_yV_m\|_{L^2_{s,y}}^2
+
\|Q_m\|_{L^{5/3}_{s,y}}^{5/3}
\right)
<\infty
\tag{FSC.24}
```

after the chosen Galilean/pressure gauge is fixed.

Then the Hardy chain is exactly the one already proved:

```math
F_m(s)
=
\int_{B_1}
\left(
|V_m|^3+|Q_m|^{3/2}+|V_m|^2
\right)\,dy
\in
L_s^{10/9}(-1,0),
\tag{FSC.25}
```

and, for \(\alpha<1/10\),

```math
\int_{-1}^{0}(-s)^{-\alpha}F_m(s)\,ds
\le
C_\alpha.
\tag{FSC.26}
```

So the endpoint Hardy moment holds, the terminal atom is removed, and the
native bridge gives

```math
A_{\rm native}
\leadsto
A_{4B}.
\tag{FSC.27}
```

with

```math
\int A_{\rm native}<\infty.
\tag{FSC.28}
```

## 6. Result

The proposed theorem is the right gold-only shape, but it is not proved by the
current four-body cycle alone.

The exact remaining production theorem is:

```math
\boxed{
\texttt{FourBodyStorageControlsNormalizedTerminalPacket.A}
}
\tag{FSC.29}
```

with two explicit hard sublines:

```math
\boxed{
\texttt{GaugeFixedFourBodyStorageCoercivity.A}
}
\tag{FSC.30}
```

and

```math
\boxed{
\texttt{HarmonicPressureMemoryNormCoercivity.A}.
}
\tag{FSC.31}
```

The base viscous drain line is available once the base rung is included in
\(D_{4B}\), and the local pressure line follows from Calderon-Zygmund and
interpolation after the normalized energy-dissipation bound is produced.

Thus the gold-only solve has been compressed to the real coercivity question:

```math
\boxed{
\text{Does the closed four-body storage dominate the gauge-fixed normalized
terminal packet, including harmonic pressure memory?}
}
\tag{FSC.32}
```
