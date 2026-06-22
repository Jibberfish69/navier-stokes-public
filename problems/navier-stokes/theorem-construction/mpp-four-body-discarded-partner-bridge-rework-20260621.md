---
theorem_id: mpp-four-body-discarded-partner-bridge-rework-20260621
status: bridge-reframed-through-order-lock-overlap-terminal-storage-and-donor-pay-or-exit
logical_landing_node: discarded_partner_bridge_rework
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-native-selected-activity-identification-route-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-partner-deficit-retention-or-exit-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-partner-polar-payment-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-selected-full-packet-production-step-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Discarded Partner Bridge Rework

Date: 2026-06-21

## 0. User-supplied bridge

There are two selected objects.

The channel-first native source is

```math
A_{\rm native}
=
\int
\left[
\langle N_\sigma,\varphi_\sigma\rangle
\right]_+ .
\tag{DPB.1}
```

The full-packet-first selected activity is

```math
A_{\rm full}
=
\int
\left[
\left\langle
N_\sigma+P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma
\right\rangle
\right]_+ .
\tag{DPB.2}
```

The four-body loop pays `(DPB.2)`.  The remaining bridge is caused by the fact
that positive part does not commute with recombining channels.

Write

```math
n_\sigma=\langle N_\sigma,\varphi_\sigma\rangle,
\tag{DPB.3}
```

and

```math
b_\sigma
=
\left\langle
P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma
\right\rangle .
\tag{DPB.4}
```

Then

```math
h_\sigma=n_\sigma+b_\sigma .
\tag{DPB.5}
```

The exact scalar inequality is

```math
[n_\sigma]_+
\le
[h_\sigma]_+
+[-b_\sigma]_+ .
\tag{DPB.6}
```

Hence

```math
A_{\rm native}
\le
A_{\rm full}
+\Delta_{\rm partner},
\qquad
\Delta_{\rm partner}:=\int[-b_\sigma]_+ .
\tag{DPB.7}
```

The sharper order-lock gap is:

```math
\boxed{
\Delta_{\rm ol}
:=
\int\left([n_\sigma]_+-[h_\sigma]_+\right)_+
=
\int\min\{[n_\sigma]_+,[-b_\sigma]_+\}.
}
\tag{DPB.7a}
```

Thus \(\Delta_{\rm partner}\) is a sufficient envelope, not the exact bridge.
The bridge theorem is therefore:

```math
\boxed{
\Delta_{\rm ol}
\leadsto
A_{4B}
}
\tag{DPB.8}
```

or the order-lock overlap routes to a typed CM exit.  Here \(A_{4B}\) means the
whole oriented same-carrier four-body object, including legal/collar/tail
handling.  A proof using \(\Delta_{\rm partner}\) is allowed only as an
overpayment on the same packet.

## 1. Meaning of "discarded partner"

The word discarded has to be literal.  The partner deficit
\([-b_\sigma]_+\) is not automatically paid merely because it appears in the
full packet and cancels \(n_\sigma\).

The toy model

```math
n=1,
\qquad
b=-1
\tag{DPB.9}
```

has

```math
[n]_+=1,
\qquad
[n+b]_+=0,
\qquad
[-b]_+=1 .
\tag{DPB.10}
```

So retained cancellation proves only that the channel-first positive source was
not a one-sided full-packet production event.  It does not by itself prove that
the channel-first positive source is small.

Thus every deficit must do one of two things:

```math
\boxed{
\text{enter an actual four-body payment channel}
}
\tag{DPB.11}
```

or

```math
\boxed{
\text{leave the same-carrier packet as a typed exit.}
}
\tag{DPB.12}
```

This is the precise correction to the earlier "retained partner" wording.

## 2. Partner split

Decompose

```math
b_\sigma
=
b_\sigma^p+b_\sigma^v+b_\sigma^t+b_\sigma^i+b_\sigma^l+b_\sigma^s,
\tag{DPB.13}
```

where the pieces correspond to pressure, viscosity, time/storage,
incompressibility/sign, legal/selector, and geometry.

Then

```math
[-b_\sigma]_+
\le
[-b_\sigma^p]_+
+[-b_\sigma^v]_+
+[-b_\sigma^t]_+
+[-b_\sigma^i]_+
+[-b_\sigma^l]_+
+[-b_\sigma^s]_+ .
\tag{DPB.14}
```

The rest of the proof is exactly channel-by-channel.

After the order-lock formula, this split is an overpayment route for
\(\Delta_{\rm ol}\), because

```math
\Delta_{\rm ol}
\le
\int[-b_\sigma]_+.
\tag{DPB.14a}
```

The exact live object remains the same-packet cancellation overlap, not the
full negative partner mass.

## 3. Pressure partner

For admissible finite same-carrier tower tests, the local pressure partner moves
to the collar:

```math
\int \chi_\sigma^2\nabla Q_{m,\alpha}\cdot W_{m,\alpha}
=
-\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\chi_\sigma^2).
\tag{DPB.15}
```

Therefore

```math
[-b_{\sigma,loc}^p]_+
\le
R_{\rm cut/sel/legal}.
\tag{DPB.16}
```

The harmonic pressure piece is the pressure-memory channel:

```math
[-b_{\sigma,H}^p]_+
\le
\mathfrak M_{\rm press}+R_{\rm legal}.
\tag{DPB.17}
```

If `(DPB.15)` is not available, the selected test is not pressure-compatible on
the retained packet.  That is a selector/collar or Pack/Field branch, not a
hidden pressure payment.

## 4. Viscous partner

For the retained finite tower rung,

```math
\nu\int\chi_\sigma^2(-\Delta W_{m,\alpha})\cdot W_{m,\alpha}
=
\nu\int\chi_\sigma^2|\nabla W_{m,\alpha}|^2
+R_{\rm cut}^{vis}.
\tag{DPB.18}
```

Thus

```math
[-b_\sigma^v]_+
\le
C\,\mathfrak M_{\rm vis}
+R_{\rm cut/legal}.
\tag{DPB.19}
```

This partner is paid by normalized viscous/tower loss plus cutoff/legal terms.

## 5. Time/storage partner

The time channel is the terminal-storage channel:

```math
b_\sigma^t
=
\partial_\sigma M_\sigma
+R_{\rm sel/time}.
\tag{DPB.20}
```

Therefore

```math
[-b_\sigma^t]_+
\le
[-\partial_\sigma M_\sigma]_+
+R_{\rm sel/time}.
\tag{DPB.21}
```

This is the live terminal time-face obstruction.  It is paid only by a terminal
trace/no-waste theorem:

```math
\boxed{
\texttt{FourBodyTerminalTraceAC.A}
\quad\text{or}\quad
\texttt{StrictFourBodyNoWasteLyapunov.A}.
}
\tag{DPB.22}
```

If that theorem is not proved, the remaining option is a typed terminal
trace/storage exit.

## 6. Incompressibility/sign partner

The exact interior incompressibility constraint is

```math
\nabla\cdot W_{m,\alpha}=0 .
\tag{DPB.23}
```

Thus any nonzero incompressibility partner comes from projection, cutoff,
selector, sign, or donor mismatch:

```math
[-b_\sigma^i]_+
\le
\Lambda_{\rm sgn}+R_{\rm legal}
+\mathcal Z_{\rm donor}.
\tag{DPB.24}
```

Finite donor trees are paid by retained signed partners, legal exits,
local donor balance, and entrance-leaf decay.  The only unpaid residual is the
infinite terminal Zeno donor-chain child:

```math
\mathcal Z_{\rm donor}
\leadsto
\texttt{NoFreeTerminalZenoDonorChain.A}
\tag{DPB.25}
```

or the corresponding CM trace/donor exit.

## 7. Legal/selector and geometry partners

Selector and legal partners are charged by definition:

```math
[-b_\sigma^l]_+
\le
\Lambda_{\rm sel}+\Lambda_{\rm legal}.
\tag{DPB.26}
```

The geometry partner is paid by Body-IV geometry loss or exits through Field:

```math
[-b_\sigma^s]_+
\le
K_G^+ +R_{\rm legal},
\tag{DPB.27}
```

or

```math
Pack_Q+Part_{N,Q}+\forall r>0\,\neg Field_{N,r,Q}.
\tag{DPB.28}
```

## 8. Result

Combining `(DPB.7)` and `(DPB.14)`--`(DPB.27)` gives the exact channel
assignment test:

```math
\boxed{
A_{\rm native}
\le
A_{\rm full}
+C\mathfrak M_{\rm press}
+C\mathfrak M_{\rm vis}
+\Lambda_{\rm sel}
+\Lambda_{\rm sgn}
+\Lambda_{\rm legal}
+K_G^+
+[-\partial_\sigma M_\sigma]_+
+\mathcal Z_{\rm donor}
+T_\sigma .
}
\tag{DPB.29}
```

Using the selected full-packet production theorem and the closed four-body loop,
these channel terms are internal to the oriented same-carrier four-body object
once the time/storage and donor pieces are assigned.  Thus the bridge is:

```math
\boxed{
A_{\rm native}
\leadsto
A_{4B}
}
\tag{DPB.30}
```

Therefore the user-supplied bridge closes in the following exact sense:

```math
\boxed{
A_{\rm native}
\leadsto
A_{4B}
}
\tag{DPB.31}
```

after either

```math
\boxed{
[-\partial_\sigma M_\sigma]_+
+\mathcal Z_{\rm donor}
\leadsto
A_{4B}
}
\tag{DPB.32}
```

or the remaining time/storage and infinite donor pieces are routed as typed CM
exits.

## 9. Completion truth

The pressure, viscosity, legal/selector, finite signed, and geometry partner
pieces are paid or routed by the existing same-carrier four-body machinery.

The two pieces not paid by that machinery alone are exactly:

```math
[-\partial_\sigma M_\sigma]_+
\tag{DPB.33}
```

and

```math
\mathcal Z_{\rm donor}.
\tag{DPB.34}
```

So the refined final theorem is not another scalar source bridge.  It is:

```math
\boxed{
\text{native channel-first positivity is controlled by the full four-body
route once the order-lock overlap, terminal storage jumps, and infinite Zeno
donor chains are paid or sent to CM exit.}
}
\tag{DPB.35}
```

Forward-gold closure still requires the positive theorem
`FourBodyTerminalTraceAC.A / StrictFourBodyNoWasteLyapunov.A /
NoFreeTerminalZenoDonorChain.A`.  CM-facing closure consumes the remaining
terms as terminal trace/storage or donor-chain exits after same-witness
admission.
