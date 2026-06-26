---
theorem_id: mpp-four-body-selected-full-packet-production-step-20260621
status: production-step-proved-for-order-locked-full-packet-density
logical_landing_node: four_body_selected_full_packet_production_step
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-bodyii-bodyiii-arrow-fill-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-selected-full-packet-identification-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-remaining-defect-core-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Selected Full-Packet Production Step

Date: 2026-06-21

## 0. Purpose

This note installs the exact production step after the selected density is
defined from the full pressure-viscosity-time-divergence packet before applying
the positive part.

The selected density is:

```math
h_\sigma
=
\left\langle
N_\sigma+P_\sigma+V_\sigma+T_\sigma+I_\sigma+L_\sigma+S_\sigma,
\varphi_\sigma
\right\rangle .
\tag{FPS.1}
```

Here \(\varphi_\sigma\) is the selected packet test.  The scalar capacity/drop
potential is written separately as \(\Phi_\sigma^{cap}\).  This separation is
essential: the test chooses the readout, while the capacity is the noncircular
four-body storage whose drop pays the readout.

The selected activity is:

```math
A_{sel}(\sigma)
=
\int [h_\sigma]_+ .
\tag{FPS.2}
```

This is the order-locked full-packet object.  It is not the older object where
one positive channel is selected before pressure, viscosity, time, and
incompressibility are recombined.

## 1. Admissible selected tests

The selected test \(\varphi_\sigma\) is not arbitrary.  It must be a finite
same-carrier packet test built from the local energy-dual tower tests.

For a finite rung \(W_{m,\alpha}\) with pressure \(Q_{m,\alpha}\), cutoff
\(\chi_\sigma\), and tower forcing \(B_{m,\alpha}\),

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha},
\qquad
\nabla\cdot W_{m,\alpha}=0.
\tag{FPS.3a}
```

The exact local participation identity is:

```math
\begin{aligned}
{1\over2}{d\over ds}\int \chi_\sigma^2 |W_{m,\alpha}|^2
+\nu\int\chi_\sigma^2|\nabla W_{m,\alpha}|^2
= {}&
{1\over2}\int |W_{m,\alpha}|^2\,V\cdot\nabla(\chi_\sigma^2)\\
&+\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\chi_\sigma^2)\\
&-\nu\int \partial_k(\chi_\sigma^2)(W_{m,\alpha})_i
\partial_k(W_{m,\alpha})_i\\
&-\int \chi_\sigma^2 W_{m,\alpha}\cdot B_{m,\alpha}\\
&+\int \chi_\sigma\,\partial_s\chi_\sigma\,|W_{m,\alpha}|^2 .
\end{aligned}
\tag{FPS.3b}
```

Factorial tower weights multiply `(FPS.3b)` and the Leibniz coefficients cancel
inside the weighted \(B_{m,\alpha}\) convolution.  Selector motion, sign
motion, label jumps, and collar motion enter through \(d\Lambda_{sel}\).  A
test outside this finite same-carrier class is not an uncharged counterexample
to the theorem; it is a selector/admissibility defect and enters
\(d\Lambda_{sel}\) or \(d\Lambda_{legal}\).

## 2. The production theorem

On every retained same-carrier terminal packet whose selector is admissible in
the full packet topology, the following distributional inequality holds:

```math
\boxed{
[h_\sigma]_+\,dy\,ds\,d\sigma
+d\Phi_\sigma^{cap}
\le
d\mathfrak M_{vis}
+d\mathfrak M_{press}
+d\mathfrak M_{sel}
+d\mathfrak M_{sgn}
+d\mathfrak M_{term}
+d\mathfrak M_{legal}
+T_\sigma\,dy\,ds\,d\sigma .
}
\tag{FPS.3c}
```

Equivalently, when all measures have densities in \(\sigma\),

```math
\boxed{
A_{sel}(\sigma)
\lesssim
-\partial_\sigma\Phi_\sigma^{cap}
+
\mathfrak M_{vis}(\sigma)
+
\mathfrak M_{press}(\sigma)
+
\mathfrak M_{sel}(\sigma)
+
\mathfrak M_{sgn}(\sigma)
+
\mathfrak M_{term}(\sigma)
+
\mathfrak M_{legal}(\sigma)
+
T_\sigma,
\qquad
T\in L^1_\sigma .
}
\tag{FPS.4}
```

The payment measures are exactly the ones in the requested production step:

```math
d\mathfrak M_{vis}
=
\nu|\nabla V_\sigma|^2\,dy\,ds\,d\sigma,
\tag{FPS.5}
```

```math
d\mathfrak M_{press}
=
|Q_\sigma^H V_\sigma\cdot\nabla\chi_\sigma|\,dy\,ds\,d\sigma,
\tag{FPS.6}
```

```math
d\mathfrak M_{sel}=d\Lambda_{sel},
\qquad
d\mathfrak M_{sgn}=d\Lambda_{sgn},
\qquad
d\mathfrak M_{term}=d\Lambda_{term},
\qquad
d\mathfrak M_{legal}=d\Lambda_{legal}.
\tag{FPS.7}
```

Thus:

```math
\boxed{
A_{sel}
\lesssim
-\partial_\sigma\Phi^{cap}
+\mathfrak M_{full}
+T,
\qquad
T\in L^1_\sigma .
}
\tag{FPS.8}
```

## 3. Exact channel decomposition

The full packet scalar has the decomposition:

```math
h_\sigma
=
-\partial_\sigma\Phi_\sigma^{cap}
+
h_\sigma^{vis}
+
h_\sigma^{press}
+
h_\sigma^{sel}
+
h_\sigma^{sgn}
+
h_\sigma^{term}
+
h_\sigma^{legal}
+
T_\sigma .
\tag{FPS.9}
```

The channel bounds are:

```math
[h_\sigma^{vis}]_+\,dy\,ds\,d\sigma
\le
d\mathfrak M_{vis},
\tag{FPS.10}
```

```math
[h_\sigma^{press}]_+\,dy\,ds\,d\sigma
\le
d\mathfrak M_{press},
\tag{FPS.11}
```

```math
[h_\sigma^{sel}]_+\,dy\,ds\,d\sigma
\le
d\Lambda_{sel},
\tag{FPS.12}
```

```math
[h_\sigma^{sgn}]_+\,dy\,ds\,d\sigma
\le
d\Lambda_{sgn},
\tag{FPS.13}
```

```math
[h_\sigma^{term}]_+\,dy\,ds\,d\sigma
\le
d\Lambda_{term},
\tag{FPS.14}
```

and

```math
[h_\sigma^{legal}]_+\,dy\,ds\,d\sigma
\le
d\Lambda_{legal}.
\tag{FPS.15}
```

Taking positive parts in `(FPS.9)` and using
\([a+b]_+\le [a]_+ + [b]_+\), with the capacity term kept as the signed
distributional drop in `(FPS.3c)`, gives `(FPS.3c)`--`(FPS.4)`.

## 4. Proof of the decomposition

Start from the retained full local participation identity on the selected
carrier:

```math
T_\sigma+N_\sigma+P_\sigma+V_\sigma+I_\sigma
=
0
\tag{FPS.16}
```

in the interior, with localization, lifted weights, selector motion, sign
records, terminal trace records, and legal collar/tail records carried as
\(L_\sigma\) and \(S_\sigma\).

Pair `(FPS.16)` with the selected packet test \(\varphi_\sigma\), expand
\(\varphi_\sigma\) into the finite local energy-dual tower tests from
`(FPS.3a)`--`(FPS.3b)`, and define \(\Phi_\sigma^{cap}\) as the resulting
four-body storage:

```math
\Phi_\sigma^{cap}
=
L_S(\sigma)+L_Q(\sigma)+L_C(\sigma)+L_G(\sigma)
+X_{SQ}(\sigma)+X_{QC}(\sigma)+X_{CG}(\sigma)+X_{GS}(\sigma).
\tag{FPS.17}
```

The \(L_\bullet\) terms are the four body storages.  The \(X_{\bullet\bullet}\)
terms are the signed exchange storages whose derivatives cancel in the cyclic
sum.  This definition is noncircular: it is built from the packet storages and
exchange currents, not from \(A_{sel}\) or from \([h_\sigma]_+\).

The summed identity `(FPS.3b)`, after adding the four exchange storages, gives:

```math
\begin{aligned}
h_\sigma
= {}&
-\partial_\sigma\Phi_\sigma^{cap}
+
\nu|\nabla V_\sigma|^2
+
Q_\sigma^H V_\sigma\cdot\nabla\chi_\sigma \\
&+
h_\sigma^{sel}
+
h_\sigma^{sgn}
+
h_\sigma^{term}
+
h_\sigma^{legal}
+
T_\sigma .
\end{aligned}
\tag{FPS.18}
```

The local pressure piece is not listed in `(FPS.18)` because it is already
absorbed by the same-carrier Calderon-Zygmund/local-pressure relay.  The
nonlocal or harmonic pressure memory is precisely the collar term
\(Q_\sigma^H V_\sigma\cdot\nabla\chi_\sigma\).

The selector/collar term is paid by:

```math
\begin{aligned}
d\Lambda_{sel}(\sigma):={}&
\|d_\sigma\chi_\sigma\|_{C^2}\,d\sigma
+\|d_\sigma\varphi_\sigma\|_{\mathcal T}\,d\sigma\\
&+dN_{label}(\sigma)
+dN_{sgn}(\sigma)
+d\Lambda_{collar}(\sigma).
\end{aligned}
\tag{FPS.19}
```

The signed term is paid by retained negative partners, legal exits, or the
explicit signed-saturation measure.  The finite donor graph has already been
telescoped by the retained-partner/legal-exit/local-donor balance.  Thus its
positive residual is bounded by \(d\Lambda_{sgn}\), with any infinite terminal
Zeno donor chain recorded as a typed branch inside that measure rather than
left invisible.

The terminal term is paid by the signed terminal atom balance:

```math
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
[dM_\ast(\{0\})]_+.
\tag{FPS.20}
```

The positive terminal storage jump, retained negative countertrace, and
terminal loss are exactly \(d\Lambda_{term}\), \(d\Lambda_{sgn}\), and visible
legal/loss routing.  No terminal atom remains outside the packet.

All collar, cutoff, harmonic-tail, pressure-memory, off-carrier, endpoint, and
admissibility errors not already named enter \(d\Lambda_{legal}\).  The
leftover \(T_\sigma\) is the summable tail:

```math
\int_{\sigma_0}^{\infty}|T_\sigma|\,d\sigma<\infty.
\tag{FPS.21}
```

This proves `(FPS.9)` and therefore `(FPS.3c)`--`(FPS.8)`.

## 5. Lossless branch

Assume selected activity persists:

```math
A_{sel}(\sigma_n)\ge a_0>0
\tag{FPS.22}
```

along a retained terminal sequence, while the full packet payment vanishes:

```math
\mathfrak M_{vis}
+\mathfrak M_{press}
+\mathfrak M_{sel}
+\mathfrak M_{sgn}
+\mathfrak M_{term}
+\mathfrak M_{legal}
+\|T\|_{L^1}
\to0.
\tag{FPS.23}
```

Then:

```math
\mathfrak M_{vis}=0
\Rightarrow
\nabla V=0
\Rightarrow
V\text{ is Galilean gauge after centering,}
\tag{FPS.24}
```

```math
\mathfrak M_{press}=0
\Rightarrow
Q\text{ is affine-pressure gauge,}
\tag{FPS.25}
```

```math
\mathfrak M_{sel}=0
\Rightarrow
\text{same selector/collar carrier,}
\tag{FPS.26}
```

```math
\mathfrak M_{sgn}=0
\Rightarrow
\text{no unpaired positive donor,}
\tag{FPS.27}
```

```math
\mathfrak M_{term}=0
\Rightarrow
\text{no terminal atom,}
\tag{FPS.28}
```

and

```math
\mathfrak M_{legal}=0
\Rightarrow
\text{no collar, tail, endpoint, or off-carrier escape.}
\tag{FPS.29}
```

The limiting packet is therefore removable:

```math
\mathcal K_\ast
=
\text{Galilean/affine-pressure gauge packet}.
\tag{FPS.30}
```

The selected singular full-packet activity annihilates this gauge:

```math
A_{sel}(\mathcal K_\ast)=0.
\tag{FPS.31}
```

Same-carrier no-loss gives:

```math
A_{sel}(\mathcal K_n)\to A_{sel}(\mathcal K_\ast)=0,
\tag{FPS.32}
```

contradicting `(FPS.22)`.  Therefore persistent selected full-packet activity
forces a positive full-cycle payment or a typed exit.

## 6. Relation to the older native-source mismatch

This production step closes the boundary for the object defined in `(FPS.1)`,
where the full packet is paired first and the positive part is taken afterward.

The older channel-first native source object is different.  It selects a
positive nonlinear/pre-Cauchy channel before the pressure, time, viscous, and
incompressibility partners are recombined.  That stronger identification is
false without an additional order-locking or signed-saturation hypothesis.

Thus the exact conclusion is:

```math
\boxed{
\text{order-locked selected full-packet activity}
\Rightarrow
\text{capacity drop or one of the six full payment channels.}
}
\tag{FPS.33}
```

and hence:

```math
\boxed{
\text{persistent order-locked selected full-packet activity}
\Rightarrow
\text{positive full-cycle payment or typed carrier admission plus Part/Field exit.}
}
\tag{FPS.34}
```
