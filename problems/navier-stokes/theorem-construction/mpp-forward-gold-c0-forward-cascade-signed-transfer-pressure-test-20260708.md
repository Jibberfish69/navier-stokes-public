---
theorem_id: forward-gold-c0-forward-cascade-signed-transfer-pressure-test-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Gate A / signed transfer non-telescoping
status: strict-reduction-countermodel-not-proof
target_object:
  - ForwardCascadeSignedTransferNonTelescoping.A
  - SignedRecordDriftCollarNoFreeUpcrossing.A
  - OrientedThreeMeasureRelayNoReturn.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-signed-record-drift-collar-no-free-upcrossing-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate2-signed-cycle-kernel-no-go-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627.md
completion_truth: >-
  This is a pressure test and strict reduction, not a proof of c_0. It proves
  that a raw signed collar/current lower bound cannot be obtained from signed
  current retention alone, because signed relay currents have the same
  cancellation kernel as the earlier signed-cycle no-go. Gate A can close only
  after the relay carries the nonnegative selected carrier, negative/backward
  partner, and signed current on one retained event space, plus a no-return /
  no-recount domination of the negative partner or a typed route-out.
---

# Forward-cascade signed transfer pressure test

## 1. Physical object

The object is one Navier-Stokes velocity-pressure history. A retained positive
record is passed between material packet addresses through collars. The collar
current is not an external scalar flux; it is the same-fluid participation
current seen at a carrier interface.

That current is signed. As a boundary or interface current, it naturally
telescopes when adjacent packet balances are summed. Thus the raw current is
not yet a \(c_0\) payer. The payer must be the retained positive record carrier
together with its negative/back-transfer partner on the same event space.

## 2. Signed current alone has the wrong kernel

The existing signed-cycle no-go already gives the algebraic obstruction. Take a
two-leg relay with signed currents

```math
j=(M,-M),
\qquad M>0 .
\tag{FST.1}
```

The net signed transfer is

```math
\sum_e j_e=0,
\tag{FST.2}
```

while the positive carried record sees

```math
\sum_e [j_e]_+ + [-j_e]_+ = 2M .
\tag{FST.3}
```

So no estimate of positive retained service can follow from the signed sum
alone. This is the same obstruction as:

```math
J_n=\delta_{1/n}-\delta_{-1/n}
\rightharpoonup 0,
\qquad
J_n^+(C)=1 .
\tag{FST.4}
```

The signed current can disappear in weak compactness while the positive carrier
remains nonzero. Therefore the Gate-A wall cannot be:

```math
\text{retain } \mu^J
\quad\Longrightarrow\quad
\text{retain positive service}.
\tag{FST.5}
```

It must retain the three-measure packet.

## 3. Exact sufficient theorem

The smaller noncircular theorem is:

```math
\texttt{OrientedThreeMeasureRelayNoReturn.A}.
\tag{FST.6}
```

Statement. For every retained carrier relay, after stop/pass/Field/collar/legal
material and maximal-atom merge have been removed, there is a parent-known relay
event space \(C_{\rm rel}\) carrying measures

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N .
\tag{FST.7}
```

Here \(\mu^A\) is the nonnegative selected forward-record carrier,
\(\mu^N\) is the negative/back-transfer or return partner, and \(\mu^J\) is the
signed collar/current measure. The retained service is captured before readout:

```math
\mathsf S_{\rm ret}
\le
C_A\,\mu^A(C_{\rm rel})
dStop+dPass+dField+dCollar+dMerge+dLegal .
\tag{FST.8}
```

The no-free-return clause is the missing hard part:

```math
\mu^N(C_{\rm rel})
\le
(1-\eta)\,\mu^A(C_{\rm rel})
dStop+dPass+dField+dCollar+dMerge+dLegal ,
\qquad \eta>0 .
\tag{FST.9}
```

Then the signed forward-transfer lower bound follows formally:

```math
\begin{aligned}
\sum_e \mathsf F_e^{signed}
&=\mu^J(C_{\rm rel})                                      \\
&=\mu^A(C_{\rm rel})-\mu^N(C_{\rm rel})                    \\
&\ge
\eta\,\mu^A(C_{\rm rel})
-dStop-dPass-dField-dCollar-dMerge-dLegal                  \\
&\ge
c\,\mathsf S_{\rm ret}
-dStop-dPass-dField-dCollar-dMerge-dLegal .
\end{aligned}
\tag{FST.10}
```

Thus `ForwardCascadeSignedTransferNonTelescoping.A' is not a primitive signed
flux estimate. It is a consequence of retained positive carrier custody plus a
strict no-return/no-recount law for the negative partner.

## 4. What the current sources already supply

The stopped-selector bounded projection theorem supplies fixed-route current
control before scalar selected readout. It proves that route-coordinate motion
inside the same stopped packet is not a free scalar oscillation.

The Body-II / Body-III retained-packet criterion supplies the exact packet
format:

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N .
\tag{FST.11}
```

The selected-carrier persistence criterion explains why \(\mu^A\) cannot be
replaced by \(\mu^J\): signed current compactness can cancel the positive
carrier.

The signed-cycle kernel no-go explains why a net signed identity cannot see
positive record travel around a loop.

Together these sources prove the shape of `(FST.6)'--`(FST.9)'. They do not
prove `(FST.9)'.

## 5. Consequence for Gate A

Gate A now has a sharper reading:

```math
\texttt{ForwardCascadeSignedTransferNonTelescoping.A}
\Longleftarrow
\texttt{OrientedThreeMeasureRelayNoReturn.A}.
\tag{FST.12}
```

Failure of `OrientedThreeMeasureRelayNoReturn.A' has a precise meaning: the
relay keeps positive selected service while the negative/back-transfer partner
matches it through backscatter, recirculation, merge/split reversal,
orientation reversal, or double-counted return faces. That is not ruled out by
the current signed-current ledger.

Therefore the live Gate-A proof burden is not "find the signed current." The
current is already the right object. The burden is to prove retained
same-event custody of \((\mu^A,\mu^N,\mu^J)\) plus the strict no-return /
no-recount domination `(FST.9)', or to route failure to stop/pass/Field/collar,
merge, service loss, or an admitted counterprofile.
