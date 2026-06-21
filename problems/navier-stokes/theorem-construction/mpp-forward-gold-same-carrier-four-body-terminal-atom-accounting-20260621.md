---
theorem_id: forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621
status: abstract-lemma-proved-ns-same-carrier-input-not-installed
logical_landing_node: same_carrier_four_body_terminal_atom_accounting
edge_effect: "Proves the exact atom-level accounting law for the resurrected four-body program. If the four body exchange currents are oriented on the same selected carrier, then a terminal selected activity atom cannot circulate for free: it is charged to legal residual or to an actual downward jump of the total four-body storage. The lemma does not prove that the Navier-Stokes tower/participation/compactness/geometry currents already satisfy the same-carrier hypotheses; that remains the exact NS production step."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-trace-defect-compactness-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-storage-jump-criterion-20260621.md
---

# Same-Carrier Four-Body Terminal Atom Accounting

Date: 2026-06-21

## 0. Aim

The resurrected four-body program is meant to be a balance loop:

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{SCA.1}
```

The cyclic-payment note proved that the loop gives the unweighted reserve once
the four exchange inequalities are oriented on the same selected carrier.

This note records the corresponding terminal-atom law.

It answers the exact question:

```math
\boxed{
\text{if selected activity reaches the terminal face, what does a genuine
same-carrier four-body loop do to that atom?}
}
\tag{SCA.2}
```

The answer is:

```math
\boxed{
\text{the atom is either legal residual or an actual downward jump of total
four-body storage.}
}
\tag{SCA.3}
```

So a same-carrier four-body cycle cannot keep a positive terminal activity atom
as a free circulation.

## 1. Abstract four-body measure setup

Let \(K\) be a compact ordered interval and let \(\tau\in K\) be its terminal
endpoint.  The four bodies are indexed cyclically by

```math
i\in\{S,Q,C,G\}.
\tag{SCA.4}
```

For each body let \(L_i\) be a bounded-variation storage, \(D_i\) a nonnegative
loss measure, \(R_i\) a nonnegative legal residual measure, and \(J_i\) a finite
signed exchange-current measure from body \(i\) to the next body.

Let \(A_i\) be nonnegative selected participation-activity measures, and set

```math
A_{4B}
=
\sum_i c_i A_i,
\qquad
c_i\ge0.
\tag{SCA.5}
```

At least one \(c_i\) is positive on the selected activity being tested.

The same-carrier oriented exchange hypothesis is the family of signed measure
inequalities

```math
dL_i+dD_i+c_i\,dA_i+dJ_i
\le
dJ_{i-1}+dR_i,
\tag{SCA.6}
```

where \(i-1\) is the previous body in the cyclic order.

The phrase "same carrier" means exactly this: the outgoing current \(J_i\) in
one body is the same signed Radon measure as the incoming current \(J_i\) in the
next body.  It is not a similarly named current on a different packet, a
different cylinder, a different tower rung, or a different selected positive
part.

## 2. Exact cancellation

Sum `(SCA.6)` over \(i=S,Q,C,G\).  Every exchange current appears once on the
left and once on the right:

```math
\sum_i dJ_i
=
\sum_i dJ_{i-1}.
\tag{SCA.7}
```

Hence the exchange currents cancel as measures and

```math
dL_{4B}+dD_{4B}+dA_{4B}
\le
dR_{4B},
\tag{SCA.8}
```

where

```math
L_{4B}=\sum_i L_i,
\qquad
D_{4B}=\sum_i D_i,
\qquad
R_{4B}=\sum_i R_i.
\tag{SCA.9}
```

This is the measure-level form of four-body payment.

## 3. Terminal atom consequence

Evaluate `(SCA.8)` on the terminal atom \(\{\tau\}\):

```math
dL_{4B}(\{\tau\})
+
D_{4B}(\{\tau\})
+
A_{4B}(\{\tau\})
\le
R_{4B}(\{\tau\}).
\tag{SCA.10}
```

Since \(D_{4B}\ge0\),

```math
\boxed{
A_{4B}(\{\tau\})
\le
R_{4B}(\{\tau\})
+
\left[-dL_{4B}(\{\tau\})\right]_+.
}
\tag{SCA.11}
```

This is the exact terminal atom accounting law.

Consequently, if

```math
R_{4B}(\{\tau\})=0
\qquad\text{and}\qquad
dL_{4B}(\{\tau\})\ge0,
\tag{SCA.12}
```

then

```math
\boxed{
A_{4B}(\{\tau\})=0.
}
\tag{SCA.13}
```

A positive terminal selected-activity atom can survive only by producing legal
residual at the terminal face or by making the total four-body storage drop
downward at that face.

That downward jump is a real payment:

```math
\left[-dL_{4B}(\{\tau\})\right]_+>0.
\tag{SCA.14}
```

It is not a free circulation inside the loop.

## 4. Interval consequence: the unweighted reserve

Let \(K=[a,b]\).  Applying `(SCA.8)` to \((a,b]\) gives

```math
L_{4B}(b)-L_{4B}(a)
+
D_{4B}((a,b])
+
A_{4B}((a,b])
\le
R_{4B}((a,b]).
\tag{SCA.15}
```

Therefore

```math
A_{4B}((a,b])
\le
L_{4B}(a)-L_{4B}(b)
+
R_{4B}((a,b]).
\tag{SCA.16}
```

If \(L_{4B}\) is bounded below on the tail and \(R_{4B}\) has finite tail mass,
then for every finite \(b\),

```math
A_{4B}((a,b])
\le
L_{4B}(a)-\inf L_{4B}
+
R_{4B}((a,b]).
\tag{SCA.17}
```

Letting \(b\) approach the terminal end gives the unweighted reserve

```math
\boxed{
A_{4B}((a,\tau])
\le
L_{4B}(a)-\inf L_{4B}
+
R_{4B}((a,\tau]).
}
\tag{SCA.18}
```

In density form, if \(dA_{4B}=A_{4B}(\sigma)\,d\sigma\), this is

```math
\boxed{
\int_a^\tau A_{4B}(\sigma)\,d\sigma
\le
L_{4B}(a)-\inf L_{4B}
+
R_{4B}((a,\tau]).
}
\tag{SCA.19}
```

This is the exact unweighted log-scale control supplied by a genuine
same-carrier four-body loop.

## 5. Carrier-mismatch defect

If the outgoing and incoming exchange currents are not literally the same
measure, cancellation fails.

Write the incoming version of the \(i\)-th exchange as \(\widetilde J_i\).  Then
the body inequalities have the form

```math
dL_i+dD_i+c_i\,dA_i+dJ_i
\le
d\widetilde J_{i-1}+dR_i.
\tag{SCA.20}
```

After summing,

```math
dL_{4B}+dD_{4B}+dA_{4B}
\le
dR_{4B}
+
dK_{4B},
\tag{SCA.21}
```

where the carrier-mismatch defect is

```math
dK_{4B}
=
\sum_i d\widetilde J_i-\sum_i dJ_i.
\tag{SCA.22}
```

At the terminal atom,

```math
A_{4B}(\{\tau\})
\le
R_{4B}(\{\tau\})
+
\left[K_{4B}(\{\tau\})\right]_+
+
\left[-dL_{4B}(\{\tau\})\right]_+.
\tag{SCA.23}
```

Thus a failed same-carrier identification is not invisible.  It appears as a
new terminal defect measure \(K_{4B}\).

This is the precise mathematical meaning of the requirement that the derivative
towers be coupled across cylinders.  The outgoing scale/tower exchange on one
normalized cylinder must become the incoming participation or geometry exchange
on the next normalized cylinder as the same measure.  If it does not, the
difference is exactly \(K_{4B}\), and it must be charged or consumed.

## 6. Relation to the terminal trace atom

The previous terminal trace notes established:

```math
\text{failure of positive terminal trace AC}
\Longrightarrow
\mu_\ast^+(\{0\})>0,
\tag{SCA.24}
```

and

```math
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
\left[dM_\ast(\{0\})\right]_+.
\tag{SCA.25}
```

This note does not identify \(\mu_\ast^+\) with \(A_{4B}\).  That identification
is exactly the Navier-Stokes same-carrier production step.

What this note proves is the exact consequence once that production step is
available:

```math
\boxed{
\text{selected terminal activity atom}
\Longrightarrow
\text{legal residual}
\;\vee\;
\text{four-body storage drop}
\;\vee\;
\text{carrier-mismatch defect}.
}
\tag{SCA.26}
```

The positive storage-jump branch from the local energy trace is different.  A
positive jump of a local energy storage is an endpoint readout discontinuity.
A downward jump of \(L_{4B}\) in `(SCA.11)` is a payment by the total four-body
Lyapunov storage.

## 7. Current exact state

The four-body loop now has an exact atom-level accounting theorem.

The remaining Navier-Stokes work is narrowed to the production of the
same-carrier oriented inequalities:

```math
dL_i+dD_i+c_i\,dA_i+dJ_i
\le
dJ_{i-1}+dR_i
\tag{SCA.27}
```

for the actual tower/participation/compactness/geometry bodies, on the same
selected normalized cylinder family and the same selected tower carrier.

Once `(SCA.27)` is proved, the unweighted reserve `(SCA.19)` follows by exact
summation.  If `(SCA.27)` fails only through carrier mismatch, that mismatch is
the explicit defect \(K_{4B}\) in `(SCA.22)`.

## Verdict

The upgraded four-body program is mathematically capable of paying the terminal
heat-scale pulse.

The exact condition is same-carrier oriented exchange.  Under that condition,
a terminal selected-activity atom cannot circulate around the four bodies for
free; it is legal residual, actual four-body storage drop, or a carrier-mismatch
defect.

The proof still has to produce `(SCA.27)` from the Navier-Stokes tower,
participation, compactness/no-loss, and gradient/geometry equations.  This note
does not assert that production step.  It proves the accounting theorem that
production would feed.
