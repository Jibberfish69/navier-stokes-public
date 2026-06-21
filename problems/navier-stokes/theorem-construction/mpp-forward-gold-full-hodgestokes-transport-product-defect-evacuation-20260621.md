---
theorem_id: forward-gold-full-hodgestokes-transport-product-defect-evacuation-20260621
status: transport-product-defect-closed-on-stabilized-carrier
logical_landing_node: full_hodgestokes_transport_product_defect_evacuation
edge_effect: "Closes the transport-product member of the full Hodge-Stokes compactness/no-loss defect split on any stabilized same-carrier packet. Local energy compactness and the localized equation give strong velocity convergence in L^3 on compact subpackets, hence V_n tensor V_n converges strongly in L^(3/2). Therefore the transport product defect FHC.27 is not an independent live obstruction once the carrier, cutoff, and time-window have stabilized. If transport product loss appears, it is actually a selector/cutoff/carrier drift defect or a missing local compactness hypothesis. Pressure trace, viscous measure, selector graph, signed saturation, terminal trace, and legal routing defects remain open."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Transport Product Defect Evacuation

Date: 2026-06-21

## 0. Aim

The compactness/no-loss split listed the transport product defect

```math
V_n\otimes V_n
\not\to
V\otimes V
\quad\text{strongly enough on the selected carrier.}
\tag{TPD.1}
```

This defect is not independently live once the carrier has stabilized.

The exact statement is:

```math
\boxed{
\text{standard local-energy compactness on a fixed same carrier}
\Longrightarrow
V_n\otimes V_n\to V\otimes V
\text{ strongly in }L^{3/2}.
}
\tag{TPD.2}
```

So the transport channel can remain in the full Hodge-Stokes packet without
falling back to a Cauchy/Young source-square estimate.

## 1. Stabilized-carrier hypotheses

Let \(K\Subset K'\Subset Q_1\) be fixed normalized packet regions after the
carrier, cutoff, and time window have stabilized.  Assume the usual local
energy compactness bounds

```math
V_n
\text{ bounded in }
L^\infty_sL^2_y(K')
\cap
L^2_sH^1_y(K'),
\tag{TPD.3}
```

and that the localized full Hodge-Stokes equation gives the standard time
compactness needed for Aubin-Lions on \(K\).  Equivalently, after passing to a
subsequence,

```math
V_n\to V
\quad\text{strongly in }L^2(K)
\tag{TPD.4}
```

and the energy bound supplies the scale-critical interpolation bound

```math
V_n
\text{ bounded in }L^{10/3}(K).
\tag{TPD.5}
```

Here `(TPD.4)` is where the full packet matters: the equation supplies time
compactness before scalar size estimates are used.

## 2. Strong \(L^3\) velocity convergence

Interpolate `(TPD.4)` with `(TPD.5)`.  Since

```math
3<\frac{10}{3},
\tag{TPD.6}
```

we get

```math
V_n\to V
\quad\text{strongly in }L^3(K).
\tag{TPD.7}
```

This is below the local energy interpolation endpoint, so there is no endpoint
compactness claim hidden here.

## 3. Product convergence

The tensor product obeys the exact estimate

```math
\|V_n\otimes V_n-V\otimes V\|_{L^{3/2}(K)}
\le
\|V_n-V\|_{L^3(K)}
\big(
\|V_n\|_{L^3(K)}+\|V\|_{L^3(K)}
\big).
\tag{TPD.8}
```

Using `(TPD.7)` and boundedness of \(V_n\) in \(L^3(K)\),

```math
\boxed{
V_n\otimes V_n\to V\otimes V
\quad\text{strongly in }L^{3/2}(K).
}
\tag{TPD.9}
```

Therefore

```math
\chi_n\nabla\cdot(V_n\otimes V_n)
\to
\chi\nabla\cdot(V\otimes V)
\tag{TPD.10}
```

in the selected packet test topology whenever \(\chi_n\to\chi\) in \(C^1\).

## 4. What this does not close

This proves that `(FHC.27)` is not an independent obstruction on a stabilized
carrier.  It does not prove selected positive no-loss for the whole packet.

The remaining live defects are still:

```math
\boxed{
\text{pressure trace defect, viscous measure defect, selector graph defect,
signed saturation defect, terminal trace defect, or legal routing defect.}
}
\tag{TPD.11}
```

If transport product loss appears despite `(TPD.3)`--`(TPD.5)`, then the loss
has been misclassified.  It belongs to carrier/cutoff/selector drift or to
failure of the local compactness hypotheses, not to the nonlinear product
itself.

## 5. Current result

The full Hodge-Stokes compactness/no-loss branch is now sharpened:

```math
\boxed{
\text{on a stabilized same carrier, the transport channel passes strongly.}
}
\tag{TPD.12}
```

The no-loss production problem therefore starts after transport has passed:
pressure trace, viscosity, selected signs, terminal time trace, and legal
routing remain the actual same-carrier compactness/no-loss walls.
