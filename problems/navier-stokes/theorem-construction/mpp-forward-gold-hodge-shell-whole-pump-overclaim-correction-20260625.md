---
theorem_id: forward-gold-hodge-shell-whole-pump-overclaim-correction-20260625
status: correction-installed-native-hodge-shell-does-not-close-whole-pump
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Resolves the apparent conflict between the Hodge-adapted shell pump alignment
  note and the later material Hodge projection commutator reduction.  The native
  Hodge-Stokes shell correctly removes the false pressure-as-free-source
  picture and pays the top-strain/Hodge-selector coordinate.  It does not prove
  finite positive action for the whole shell pump, because the Hodge projection
  commutator reduces to the same moving material pressure-strain interface
  clock after coefficient-frame and base-collar pieces are paid.  Therefore any
  proof of the remaining positive pump must still prove finite rectified
  variation of that single interface, or construct a bounded-below storage for
  the same interface.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hodge-adapted-shell-pump-alignment-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-stokes-hodge-shell-clock-closure-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-rhs-annular-stress-one-interface-correction-20260625.md
---

# Hodge Shell Whole-Pump Overclaim Correction

Date: 2026-06-25

## 0. The checked object

The object is one original smooth material history:

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0 .
\tag{HSW.1}
```

At time \(t\), the native shell is built from the material Hodge-Stokes
constraint

```math
H_A(t)=\{h:\operatorname{div}_a(Ah)=0\},
\qquad
\Pi_j(t)=\chi_j(\mathcal S_A(t))\mathbb P_A(t).
\tag{HSW.2}
```

This selector belongs to the same pressure-viscosity-incompressibility-velocity
packet.  It is not a detached Fourier shell.

## 1. What the native Hodge shell really proves

For

```math
h_j=\Pi_j(t)v(t),
\qquad
e_j={1\over2}\|h_j\|_2^2,
\tag{HSW.3}
```

pressure is normal to the retained constraint:

```math
\langle A^\top\nabla_a q,h_j\rangle
=
-\langle q,\operatorname{div}_a(Ah_j)\rangle
=0.
\tag{HSW.4}
```

Thus the principal pressure force does not feed the native shell.  Differentiating
the shell gives

```math
{d\over dt}e_j+d_j
=
\langle\dot\Pi_jv,h_j\rangle
+r_j^{legal},
\tag{HSW.5}
```

where \(d_j\ge0\) is the native viscous shell loss.  The selector-motion estimate
is

```math
\left[\langle\dot\Pi_jv,h_j\rangle\right]_+
\le
\varepsilon d_j
+
C\,e_j\lambda_+
\mathbf 1_{\{\lambda_+>\delta2^{2j}\}}
+
[\mathcal R_j^{Hodge}]_+
+
r_j^{legal}.
\tag{HSW.6}
```

The subheat part is absorbed by \(d_j\).  The superheat top-strain coordinate is
the one paid by the signed strain-log storage.

## 2. Where the overclaim entered

The false shortcut is:

```math
[\mathcal R_j^{Hodge}]_+
\quad\text{is already legal or already paid.}
\tag{HSW.7}
```

The material Hodge projection commutator calculation gives the actual statement:

```math
[\mathcal R_j^{Hodge}]_+
\le
\text{paid top-strain/frame/collar coordinate}
+
C\,e_j\Theta_j^{press/RHS}
+
C\,e_j\Theta_j^{annular\ stress}
+
r_j^{legal}.
\tag{HSW.8}
```

After the coefficient-frame and base transported-collar reductions, the two
remaining terms in `(HSW.8)` are not separate producers.  They are the
pressure/incompressibility and stress-work coordinates of the same moving
material pressure-strain interface.

So the Hodge selector has only changed the coordinates of the live pump.  It
has not eliminated the live pump.

## 3. Exact corrected conclusion

The installed Hodge/Stokes work proves:

```math
\text{whole positive pump}
\Longrightarrow
\text{paid top-strain selector coordinate}
+
\text{single moving pressure-strain interface}.
\tag{HSW.9}
```

The remaining line is still

```math
\int_0^{T_*}\sum_j[m_j^{interface}(t)]_+\,dt<\infty,
\tag{HSW.10}
```

where \(m_j^{interface}\) is the signed same-material pressure/RHS and annular
stress-work interface after pressure has been kept inside the moving
incompressibility constraint.

Equivalently, the smooth prelimit master balance still needs the signed
commutator/coercivity line

```math
\mathcal I_{N,m}
+
dX_{comm,m}
+
c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
\le
\varepsilon dD_{N,m}^{vis}
+
\varepsilon dD_{N,m}^{rad}
+
dR^0_{N,m}.
\tag{HSW.11}
```

This correction prevents a fake proof closure.  It preserves the physical
object: one original smooth material history, one pressure-viscosity-
incompressibility-velocity law, and one remaining moving pressure-strain
interface clock.
