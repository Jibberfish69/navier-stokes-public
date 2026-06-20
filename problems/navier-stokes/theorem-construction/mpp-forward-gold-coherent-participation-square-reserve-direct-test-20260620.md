---
ns_viewer:
  theorem_id: forward-gold-coherent-participation-square-reserve-direct-test-20260620
  status: direct-test-complete-equivalent-square-strength-isolated
  proof_role: forward_gold_same_ledger_payment_test
  logical_landing_node: retained_positive_scale_reserve_same_ledger_payment
  edge_effect: "Tests Thomas's participation-law objection in the strongest native form: pressure, convection, viscosity, cutoffs, and selector effects are treated as one same-fluid participation current before any source split. The exact shell balance gives only linear participation residence from current inputs. The retained heat-scale pulse has vanishing linear residence and order-one square reserve. Thus coherent participation does not close forward gold unless it is upgraded to an unweighted square/Carleson theorem on the selected current."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-interior-reserve-promotion-recheck-after-supplier-audit-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-transport-action-participation-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-duhamel-maximal-regularity-square-reserve-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-source-balanced-active-pulse-reserve-spend-reentry-20260609.md
  downstream_consequence: "Do not test pressure, convection, or viscosity separately as if one term should pay the pulse alone. The direct forward-gold target is the square-strength same-ledger participation theorem, an exact concrete form of UnweightedTerminalCriticalActionReserve.A on the selected positive carrier."
---

# MPP Forward-Gold Coherent Participation Square-Reserve Direct Test

Date: 2026-06-20

## Status

Direct theorem test complete.

This note tests the strongest version of the participation-law idea: do not
isolate pressure, convection, viscosity, cutoffs, projection, or selector
effects.  Put them into the same shell balance first, and ask whether the
coupled participation law pays the retained positive-scale first-created
reserve.

It does not pay the reserve from the currently installed inputs.  It isolates
the exact missing strength.

## 1. The coherent participation current

Fix a selected terminal shell \(j\), with frequency

```math
\lambda_j=2^j,
```

and localized shell energy

```math
E_j(t)=\|w_j(t)\|_{L^2(Q_j)}^2.
```

Write the heat-scale dissipation density as

```math
D_j(t)=\lambda_j^2E_j(t).
```

After localization and projection, the shell balance has the form

```math
{d\over dt}E_j(t)+c\nu D_j(t)
\le
\Pi_j^{part,+}(t)+L_j(t).
\tag{CPS.1}
```

Here \(\Pi_j^{part,+}\) is not pressure alone, convection alone, or viscosity
alone.  It is the selected positive part of the full same-fluid participation
current after the pressure, convection, viscous flux, cutoff, commutator,
projection, and selector terms have been assembled.  \(L_j\) denotes already
declared legal leakage.

Thus this note uses the coupled participation law in the strongest available
form.  The question is whether `(CPS.1)` implies an unweighted square payment.

## 2. What the balance actually gives

Integrating `(CPS.1)` over a heat window \(I_j\) gives

```math
c\nu\int_{I_j}D_j(t)\,dt
\le
E_j(\sup I_j)-E_j(\inf I_j)
+
\int_{I_j}\Pi_j^{part,+}(t)\,dt
+
\int_{I_j}L_j(t)\,dt .
\tag{CPS.2}
```

After inherited past energy and declared leakage are removed, a first-created
packet therefore requires same-window participation residence:

```math
\int_{I_j}\Pi_j^{part,+}(t)\,dt
\gtrsim
\int_{I_j}D_j(t)\,dt
\quad
\text{modulo legal and endpoint terms.}
\tag{CPS.3}
```

This is a correct participation statement.  It is a linear statement.  The
retained forward-gold reserve is square-strength:

```math
\mathcal R_j(I_j)
=
\int_{I_j}\lambda_jD_j(t)^2\,dt.
\tag{CPS.4}
```

The gap is the difference between `(CPS.3)` and `(CPS.4)`.

## 3. Heat-scale sharpness model

Let \(I_j\) have heat length

```math
|I_j|=\lambda_j^{-2}.
```

Choose a pulse with

```math
D_j(t)\simeq\lambda_j^{1/2}
\quad\text{on }I_j.
\tag{CPS.5}
```

Then the linear participation residence is small:

```math
\int_{I_j}D_j(t)\,dt
\simeq
\lambda_j^{1/2}\lambda_j^{-2}
=
\lambda_j^{-3/2}
\to0.
\tag{CPS.6}
```

The square reserve is order one:

```math
\int_{I_j}\lambda_jD_j(t)^2\,dt
\simeq
\lambda_j\lambda_j\lambda_j^{-2}
=1.
\tag{CPS.7}
```

If the source balances viscous damping on the same window, then

```math
\Pi_j^{part,+}(t)\simeq D_j(t).
\tag{CPS.8}
```

The same conclusions hold:

```math
\int_{I_j}\Pi_j^{part,+}(t)\,dt\to0,
\qquad
\int_{I_j}\lambda_j\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt\simeq1.
\tag{CPS.9}
```

So the coupled participation law sees the pulse linearly, but the visible
linear cost has the heat-scale radius discount.  The unweighted reserve lives
in the square current, not in the linear current.

## 4. Why low-strain participation has the same discount

In the shell energy equation the native trilinear feed has the form

```math
\Pi_j(t)
\sim
\int S_{<j}^{loc}(t,x)\,|w_j(t,x)|^2\,dx
```

on the selected packet.  To balance heat damping one needs

```math
\Pi_j(t)\simeq \lambda_j^2E_j(t),
```

which is realized at the scale level by

```math
|S_{<j}^{loc}|\simeq\lambda_j^2.
\tag{CPS.10}
```

On a packet of volume \(\lambda_j^{-3}\) and heat time \(\lambda_j^{-2}\), the
unweighted local strain cost is

```math
\int_{I_j}\int_{Q_j}|S_{<j}^{loc}|^2\,dxdt
\simeq
\lambda_j^4\lambda_j^{-3}\lambda_j^{-2}
=
\lambda_j^{-1}.
\tag{CPS.11}
```

Again the physical ledger is radius-discounted.  The critical square-strength
version would be

```math
\lambda_j
\int_{I_j}\int_{Q_j}|S_{<j}^{loc}|^2\,dxdt
\simeq1.
\tag{CPS.12}
```

That is exactly the missing selected critical-strain Carleson strength.

## 5. Exact theorem needed

The coherent participation route would close the retained reserve only if the
same selected current satisfied a square-strength estimate such as

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le
Legal_j+o_j(1),
\tag{CPS.13}
```

or the equivalent critical-strain/source-square form

```math
\lambda_j
\int_{I_j}\int_{Q_j}|S_{<j}^{loc}|^2\,dxdt
\le
Legal_j+o_j(1),
\tag{CPS.14}
```

on the actual selected positive carrier.

With `(CPS.13)` or `(CPS.14)`, `(CPS.7)` is paid.  Without one of them,
`(CPS.1)` supplies only `(CPS.3)`, and the heat-scale model `(CPS.5)--(CPS.9)`
remains compatible with the installed linear local-energy and participation
ledgers.

## 6. Relation to the trilinear

The trilinear term is not decoration.  It is the mechanism by which a heat-scale
packet can be refilled at the same rate viscosity drains it.  In normalized
time this refill is order one per scale.  In physical time its linear residence
is discounted by the heat-scale radius.

Thus the trilinear must be controlled in a square or Carleson currency.  A
linear residence ledger cannot exclude the pulse.

## Verdict

Coherent participation is the right language.  It prevents a false analysis
where pressure, convection, and viscosity are asked to pay the pulse separately.

Its exact forward-gold consequence is:

```math
\boxed{
\text{coherent participation balance}
\Longrightarrow
\text{linear same-window refill residence.}
}
\tag{CPS.15}
```

The missing theorem is:

```math
\boxed{
\text{linear same-window participation}
\Longrightarrow
\text{unweighted square participation reserve.}
}
\tag{CPS.16}
```

That theorem is not installed and is not a new label independent of the known
wall.  It is the coherent-participation form of

```math
\text{UnweightedTerminalCriticalActionReserve.A}
```

on the selected positive carrier.

