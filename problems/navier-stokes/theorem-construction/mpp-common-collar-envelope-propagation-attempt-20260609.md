# MPP Common-Collar Envelope Propagation Attempt

## Status

Parent live proof attempt for the June 9 active-completion loop.

Result: not closed.

## Target

The reentry target was the common collar envelope / closed next-rung packet
evolution needed by the Pack noncollapse route:

```math
CSP.A:
\qquad
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty.
```

In the current packet route this is the theorem that would keep the moving
packet collar one rung higher under control, feed the weighted-segment and
reference-side packets, and return to terminal Pack survival.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target role: receiver / collar supplier inside the Pack and Field support
chain, not a final Clay contradiction by itself.

Logical skeleton: dependency descent plus circularity test.

Mechanism tested: moving-collar energy identity, lower-carrier Gronwall,
transported-center receiver package, and retained still-live receiver
admission.

## Attempt 1: Close `CSP.A` Route-Natively

The collar note reduces the one-rung-higher packet to the interval closure
input:

```math
\mathfrak L_{N,m,\rho,\psi}^{sf}\in L^1(I),
\qquad
\mathfrak S_{N,m,\rho,\psi}^{pkt}\in L^1(I).
```

The source packet is separated as the frozen-family source input. The receiver
coefficient input is the lower same-fluid carrier theorem:

```math
LCI.A:
\qquad
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
```

The direct-live lower-carrier note says explicitly that `LCI.A` is still not
proved on disk. Its sharpened receiver branch imports enlarged-ball
oscillation `EOC.A` and the first-center-rung / residual forcing package
`AFD.A` / `RCF.A`.

The route-native attempt to close `EOC.A` does not give an external supplier.
It compresses to the fixed point:

```math
EOC.A
\Longleftrightarrow
\text{LCI-family receiver input at enlarged depth/thickness}.
```

More concretely, the route-native receiver under `EOC.A` is:

```math
(EOC.27)
+
CSP.A_{\delta+\delta_{seg}}
\Longrightarrow
EOC.A,
```

while `(EOC.27)` is an enlarged `LCI.B` instance and
`CSP.A_{\delta+\delta_{seg}}` reduces back to the same lower-carrier family at
the thicker radius. This proves that the present route-native compression has
looped back to `LCI.A`; it does not close `CSP.A`.

Verdict: failed closure. The route-native packet descent identifies the loop
but does not break it.

## Attempt 2: Use the Still-Live Receiver Admission Bypass

The noncircular bypass is real but conditional. The still-live receiver
admission theorem assumes one compact still-live receiver collar:

```math
\mathcal R_{\rho,\psi}^{pre}(t)\subset Q_t^{rec,+}
\qquad(t\in I),
```

with finite support volume and a finite smooth tower bound on that collar.
Under those hypotheses it directly supplies:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I),
\qquad
\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty,
\qquad
(EOC.27).
```

Those three inputs close `EOC.A` without reusing the route-native `LCI.A` /
`CSP.A` fixed point. With the remaining non-oscillation inputs, the lower
carrier route can then return:

```math
EOC.A
\Longrightarrow
AFD.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

This is a valid retained-window bypass. It is not an unconditional proof of
`CSP.A` for a finite Clay breakdown because the bypass assumes the receiver set
stays inside a compact still-live collar.

The still-live receiver note states its boundary directly: it does not prove
that an arbitrary endpoint-approaching receiver collar stays inside such a
compact still-live collar. If the common receiver set leaves every still-live
collar, the branch has reached a class-exit / manifestation issue, not a
missing collar estimate.

Verdict: conditional closure only. It closes the receiver branch on retained
still-live windows, but it does not exclude the receiver escape alternative.

## Attempt 3: Classify Failure of the Still-Live Admission Hypothesis

The receiver escape reduction sharpens the failed still-live admission
hypothesis:

```math
\text{no compact still-live receiver collar carries }
\mathcal R_{\rho,\psi}^{pre}(t)
\text{ with finite tower bound up to }T_*.
```

Under retained `Pack_Q`, this is not a new geometric species. It becomes
finite-depth tower escape on the receiver packet. Under retained
`Part_{N,Q}`, that tower escape lands in the Field slot:

```math
Pack_Q \wedge Part_{N,Q} \wedge \text{receiver escape}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}.
```

So receiver escape is classified as Pack, Part, or Field failure according to
which upstream witness faces survive. That is useful CM classification. It is
not yet the final CMI theorem, because a finite Clay counterexample can be
read as precisely a finite terminal loss of this receiver/Field structure
unless a separate no-genuine-exit bridge proves otherwise.

Verdict: classification lands, Clay exclusion does not.

## Parent Verdict

`CommonCollarEnvelopePropagation.A` is not closed unconditionally.

The current route has two honest branches:

1. Route-native packet descent returns to an `EOC` / `LCI` fixed point.
2. Still-live receiver admission closes the receiver side only under a compact
   still-live collar hypothesis.

The next theorem target is not another relabeling of the common collar
envelope. The next target is the noncircular bridge from receiver escape / Field
endpoint classification to Clay counterexample exclusion:

```math
\boxed{
\text{prove that a finite Clay counterexample cannot realize the receiver escape / Field endpoint branch,}
}
```

or prove the stronger retained-window alternative:

```math
\boxed{
\text{Original smooth data plus retained Pack/Part forces the needed still-live receiver admission up to }T_*.
}
```

Absent one of those two bridges, the PDFs cannot honestly claim CMI-final
Navier-Stokes closure.

## Source Surfaces Checked

1. `mpp-collar-sobolev-packet-interval-propagation-theorem-program.md`
2. `mpp-lower-carrier-interval-integrability-theorem-program.md`
3. `mpp-lci-a-enlarged-ball-oscillation-closure-note.md`
4. `mpp-lci-a-route-native-fixed-point-note.md`
5. `mpp-lci-a-pre-csp-common-consumer-bypass-note.md`
6. `mpp-lci-a-pre-csp-still-live-receiver-admission-note.md`
7. `mpp-receiver-escape-endpoint-reduction-20260515.md`
8. `mpp-retained-field-exit-source-receiver-reduction-20260515.md`
