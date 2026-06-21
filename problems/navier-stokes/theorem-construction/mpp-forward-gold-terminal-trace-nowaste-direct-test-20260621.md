---
theorem_id: forward-gold-terminal-trace-nowaste-direct-test-20260621
status: direct-test-complete-not-gold-closure
logical_landing_node: terminal_trace_seen_not_forbidden
edge_effect: "Tests the terminal-face trace mechanism suggested by the exact log-scale tower balance. Integrating the local energy/tower identity up to s=0 shows that a last-instant pulse is visible as a boundary trace, but visibility is not exclusion. The exact identity closes only with an additional terminal trace no-jump/no-waste theorem identifying the boundary trace with legal flux, dissipation, pressure trace, or CM Part/Field failure."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-log-scale-tower-balance-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-june21-heat-scale-branch-integration-20260621.md
---

# Terminal Trace No-Waste Direct Test

Date: 2026-06-21

## 0. Aim

The log-scale tower identity produced the normalized loss with a terminal
distance factor \(-s\).  That factor vanishes at the terminal face \(s=0\).

The next exact test is whether the missing mass is charged by the boundary
trace at \(s=0\).

The answer is sharp.

The terminal trace identity sees the last-instant pulse, but it does not forbid
it.  The pulse can appear as a terminal boundary trace unless an additional
no-jump/no-waste theorem identifies that trace with legal flux, dissipation,
pressure trace, or CM Part/Field failure.

## 1. Base terminal trace identity

For the normalized packet \(V,Q\), let

```math
e={1\over2}|V|^2,
\qquad
F=(e+Q)V-\nu\nabla e.
\tag{TTN.1}
```

For smooth preterminal solutions,

```math
\partial_s e+\nu|\nabla V|^2+\nabla\cdot F=0.
\tag{TTN.2}
```

Fix a spatial cutoff \(\eta\in C_c^\infty(\mathbb R^3)\), and define

```math
M_\eta(s)=\int_{\mathbb R^3}\eta^2(y)e(s,y)\,dy.
\tag{TTN.3}
```

Then, for \(-1<a<b<0\),

```math
M_\eta(b)-M_\eta(a)
+
\nu\int_a^b\int \eta^2|\nabla V|^2
=
\int_a^b\int F\cdot\nabla(\eta^2).
\tag{TTN.4}
```

Expanding \(F\),

```math
\begin{aligned}
M_\eta(b)-M_\eta(a)
+
\nu\int_a^b\int \eta^2|\nabla V|^2
&=
\int_a^b\int (e+Q)V\cdot\nabla(\eta^2) \\
&\quad
-\nu\int_a^b\int \nabla e\cdot\nabla(\eta^2).
\end{aligned}
\tag{TTN.5}
```

Equivalently, after integrating the viscous cutoff term by parts,

```math
\begin{aligned}
M_\eta(b)-M_\eta(a)
+
\nu\int_a^b\int \eta^2|\nabla V|^2
&=
\int_a^b\int (e+Q)V\cdot\nabla(\eta^2) \\
&\quad
+\nu\int_a^b\int e\,\Delta(\eta^2).
\end{aligned}
\tag{TTN.6}
```

This is exact.

If the limit

```math
M_\eta(0^-)=\lim_{b\uparrow0}M_\eta(b)
\tag{TTN.7}
```

exists and the right-hand side is integrable near \(0\), then sending
\(b\uparrow0\) gives

```math
\begin{aligned}
M_\eta(0^-)-M_\eta(a)
+
\nu\int_a^0\int \eta^2|\nabla V|^2
&=
\int_a^0\int (e+Q)V\cdot\nabla(\eta^2) \\
&\quad
+\nu\int_a^0\int e\,\Delta(\eta^2).
\end{aligned}
\tag{TTN.8}
```

The terminal trace is now explicit.  It is not hidden.

## 2. What the identity does and does not prove

Let \(a\uparrow0\).  The identity becomes a test of the terminal layer

```math
M_\eta(0^-)-M_\eta(a).
\tag{TTN.9}
```

The local energy law says this layer is balanced by localized flux, pressure,
viscous cutoff work, and interior dissipation.

It does not say the layer is zero.

The model last-instant pulse is exactly compatible with this formal shape:

```math
g_\varepsilon(s)={A\over\varepsilon}\mathbf 1_{(-\varepsilon,0]}(s),
\qquad
\int_{-1}^{0}g_\varepsilon(s)\,ds=A.
\tag{TTN.10}
```

If this pulse is represented as a derivative of a primitive \(G_\varepsilon\),
then \(G_\varepsilon\) converges to a terminal step of size \(A\).  The
derivative concentrates, while the primitive keeps a finite terminal trace.

That is the exact meaning of the endpoint obstruction:

```math
\boxed{
\text{local energy can record the terminal pulse as a boundary trace without
contradicting the preterminal identity.}
}
\tag{TTN.11}
```

## 3. Tower trace identity

The same statement holds at every mixed tower rung.

Let

```math
W_{m,\alpha}=\partial_s^m\partial_y^\alpha V,
\qquad
e_{m,\alpha}={1\over2}|W_{m,\alpha}|^2,
\tag{TTN.12}
```

and

```math
F_{m,\alpha}
=
e_{m,\alpha}V+Q_{m,\alpha}W_{m,\alpha}
-\nu\nabla e_{m,\alpha}.
\tag{TTN.13}
```

The rung energy identity is

```math
\partial_s e_{m,\alpha}
+\nu|\nabla W_{m,\alpha}|^2
+\nabla\cdot F_{m,\alpha}
=
-W_{m,\alpha}\cdot B_{m,\alpha}.
\tag{TTN.14}
```

For

```math
M_{m,\alpha,\eta}(s)
=
\int\eta^2 e_{m,\alpha},
\tag{TTN.15}
```

one obtains

```math
\begin{aligned}
M_{m,\alpha,\eta}(b)-M_{m,\alpha,\eta}(a)
+
\nu\int_a^b\int\eta^2|\nabla W_{m,\alpha}|^2
&=
\int_a^b\int F_{m,\alpha}\cdot\nabla(\eta^2) \\
&\quad
-\int_a^b\int\eta^2 W_{m,\alpha}\cdot B_{m,\alpha}.
\end{aligned}
\tag{TTN.16}
```

Sending \(b\uparrow0\) gives the terminal tower trace whenever the terms have
limits.

Again, this records the terminal trace.  It does not eliminate it.

## 4. Exact theorem needed for gold closure

The terminal trace route closes the gold reserve only with a theorem of the
following form.

For the selected same-carrier terminal pulse, the trace term

```math
\lim_{a\uparrow0}
\left[
M_{\eta}(0^-)-M_{\eta}(a)
\right]
\tag{TTN.17}
```

or its mixed-tower analogue must satisfy one of three outcomes:

```math
\boxed{
\text{it is zero by trace absolute continuity;}
}
\tag{TTN.18}
```

```math
\boxed{
\text{it is charged by legal pressure/flux/dissipation/source trace;}
}
\tag{TTN.19}
```

or

```math
\boxed{
\text{it is a retained terminal same-witness discontinuity consumed by
Part/Field.}
}
\tag{TTN.20}
```

This is not a new route.  It is the terminal-face version of the same
participation law.

## Verdict

The terminal boundary term is the exact place where the \((-s)\)-weighted
log-scale balance loses the last-instant pulse.

The local energy and tower identities prove visibility:

```math
\text{terminal pulse}
\quad\Longrightarrow\quad
\text{terminal trace term}.
\tag{TTN.21}
```

They do not prove exclusion:

```math
\text{terminal trace term}
\quad\not\Longrightarrow\quad
\text{contradiction}
\tag{TTN.22}
```

without the additional no-jump/no-waste/CM-consumption statement `(TTN.18)`--
`(TTN.20)`.

So this test preserves the four-body/tower program and sharpens the exact
remaining point: the last-instant source must be removed by terminal trace
absolute continuity, charged by a legal trace, or consumed as a class-face
failure.
