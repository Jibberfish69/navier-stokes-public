# Frame-Recovery Wall Theorem Candidate Note

## Purpose

This note records the cleanest current understanding of the post-Route-A
pressure wall.

After the verified Route A reduction in
[lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md#L885),
the naked principal viscous-pressure term is gone. The remaining issue is a
frame-level coefficient window:

```math
\boxed{
G\nabla_aA,\qquad \nabla_a(G\nabla_aA)\in L^\infty.
}
\tag{1}
```

The present six-lemma mainline does not yet justify `(1)` from the current
metric-side ledger.

This note asks:

```math
\boxed{
\text{what existing theorem families are closest to the missing bridge?}
}
```

## Exact setting

The Lagrangian geometry is

```math
F:=\nabla_a X,
\qquad
A:=F^{-1},
\qquad
G:=AA^\top.
\tag{2}
```

The metric tensor `G` determines only the symmetric stretch data. At the
algebraic level one may write

```math
A = G^{1/2}R,
\qquad
R(a,t)\in SO(3),
\tag{3}
```

so `G` alone does not determine the full frame `A`.

But the orthogonal factor is **not** a free gauge in the NS setting, because
`A` is constrained by:

```math
F=\nabla_a X,
\qquad
\det F=1,
\qquad
\partial_t A = -A(\nabla_x u)(X,t).
\tag{4}
```

So the actual missing object is not arbitrary frame recovery; it is
frame recovery under integrability, incompressibility, and transport
compatibility.

## What the current mainline already owns

The current six-lemma mainline tracks the joint family

```math
\{U_\alpha,\partial_a^\beta G\}_{|\alpha|,|\beta|\le r},
\qquad
U_\alpha:=\partial_a^\alpha v,
\tag{5}
```

and therefore owns a metric-side deformation ledger together with an
ellipticity window for `G`.

It does **not** yet own same-depth derivatives of `A` as a first-class family.

So the pressure wall has become:

```math
\boxed{
\text{metric-side deformation control}
\Longrightarrow
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty\ ?
}
\tag{6}
```

## Nearest existing theorem families

There does not appear to be a single off-the-shelf theorem already phrased in
the exact NS/Lagrangian form `(6)`. The nearest theorem stack is instead:

### 1. Geometric rigidity

This is the family typified by Friesecke--James--Müller:

```math
\text{distance of a gradient to }SO(n)
\Longrightarrow
\text{closeness to one rigid rotation.}
\tag{7}
```

Its relevance is conceptual:

- it isolates the rotational/frame ambiguity from the stretch;
- it is the clearest existing way to fix rotation up to rigid motion.

Its limitation here is equally clear:

- it is not already a theorem for the full dynamic NS coefficient window;
- by itself it does not produce `(1)`.

### 2. Metric-to-deformation recovery and nonlinear Korn

This is the family closest in spirit to:

```math
\text{metric ledger}
\Longrightarrow
\text{deformation / frame control up to rigid motion.}
\tag{8}
```

Its relevance is strong:

- it is the nearest literature to “metric control implies frame control”;
- it models exactly the stretch-vs-frame split visible in `G=AA^\top`.

Its limitation here:

- the current route needs coefficient control in the explicit form `(1)`,
  not merely recovery up to rigid motion;
- the NS setting also carries time evolution and integrability constraints.

### 3. Incompatible Korn / Curl-augmented tensor control

This is the candidate Korn/curl control family

```math
\text{full tensor control}
\le
C_{\mathrm{KornCurl}}\left(
\text{symmetric part}
+
\text{incompatibility term (Curl/gauge)}
\right).
\tag{9}
```

This identifies a possible theorem shape, but it supplies no estimate for the
current wall by itself.  The exact reason it is relevant is:

- metric data alone controls the symmetric/stretch side;
- the missing piece is the frame/rotation side;
- a Korn/curl-style theorem must add an explicit incompatibility or
  gauge term that controls that frame/rotation side.

Its limitation here:

- `A` is not an arbitrary incompatible tensor field;
- it is an inverse Jacobian with its own transport and Piola-type
  compatibility structure.

So this family is only a model for the missing theorem shape.  It becomes
proof-bearing here only after a Navier--Stokes-specific compatibility estimate
for the inverse-Jacobian frame \(A\) is proved.

## Clean Theorem Candidate

The missing theorem selected by this compatibility analysis is:

```math
\boxed{
\textbf{Metric-to-Frame Recovery with Compatibility Control}
}
```

in some form like

```math
\text{control of }G,\ \partial G,\ \partial^2G
+
\text{orientation preservation}
+
\text{frame compatibility / gauge control}
\Longrightarrow
A,\ \nabla A,\ \nabla^2A\text{ controlled},
\tag{10}
```

in a form that implies `(1)`.

Equivalently, the theorem target is

```math
\boxed{
\|G\nabla_aA\|_{L^\infty}
+
\|\nabla_a(G\nabla_aA)\|_{L^\infty}
\le
C_{\mathrm{frame}}
\Phi\big(
\|G\|_{\text{metric ledger}},
\text{one extra frame/gauge quantity}
\big).
}
\tag{11}
```

## Proof blueprint for the missing theorem

The clean blueprint is:

### Stage 1. Split the frame into stretch and rotation

Since `G=AA^\top` is positive definite and `\det A=1`, write

```math
A=G^{1/2}R,
\qquad
R(a,t)\in SO(3).
\tag{11a}
```

Then

```math
\nabla_a A
=
(\nabla_a G^{1/2})R
+
G^{1/2}\nabla_a R.
\tag{11b}
```

So once the metric ledger controls `G` and its derivatives, the genuinely new
unknown is the rotation field `R` and its derivatives.

But `R` is still a derived variable. The actual theorem is phrased on the
native frame objects `A` and `F`, because those are where the exact Lagrangian
identities live.

### Stage 2. Supply one NS-native compatibility control for the frame

The extra datum is not an abstract gauge choice. It must come from the
actual Lagrangian structure:

```math
F=\nabla_a X,
\qquad
A=F^{-1},
\qquad
\det F=1,
\tag{11c}
```

so the frame is constrained by:

1. **integrability of the deformation**
   ```math
   \partial_{a_j}F_{ik}=\partial_{a_k}F_{ij},
   \tag{11d}
   ```
   since `F` is a genuine Jacobian;
2. **Piola/incompressibility compatibility**
   ```math
   \operatorname{div}_a A^\top = 0,
   \tag{11e}
   ```
   because `\operatorname{cof}F=A^\top` when `\det F=1`;
3. **transport evolution of the frame**
   ```math
   \partial_t A = -A(\nabla_x u)(X,t)
   =
   -A(\nabla_a v)A.
   \tag{11f}
   ```

So the correct NS-specific compatibility quantity is not yet fixed. The
available exact candidates are:

```math
\Gamma_1:=\operatorname{Curl}_a F,
\qquad
\Gamma_2:=\partial_t A + A(\nabla_a v)A,
\qquad
\Gamma_3:=\operatorname{div}_a A^\top.
\tag{11g}
```

In the exact Lagrangian system these are not arbitrary diagnostics; they are
the natural integrability / transport / Piola constraints of the frame.

Equivalently, the theorem target is

```math
\boxed{
\mathcal L_r[G]
+
\mathcal T_r[A;v]
\Longrightarrow
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty,
}
\tag{11g'}
```

where `\mathcal T_r[A;v]` is built from the exact NS-native constraints
`(11d)`-`(11f)`. Control of `R,\nabla_aR,\nabla_a^2R` through `A=G^{1/2}R`
is a downstream corollary only after this proposition is proved.

### Stage 2.5. Localize the pressure source before asking for the frame window

Before Stage 3, there is one support theorem worth isolating explicitly.

The derivative tower source

```math
\mathcal Z_\alpha
=
-\sum_{0<\beta\le\alpha}\binom{\alpha}{\beta}
(\partial_a^\beta A)\,U_{\alpha-\beta}
```

is not treated as a full frequency convolution. The raw statement
"only same-shell factors contribute" is false, because strict low-high packets
survive. The correct Littlewood-Paley bridge is the paraproduct split

```math
\Delta_j\mathcal Z_\alpha
=
\mathcal Z_{\alpha,j}^{LH}
+
\mathcal Z_{\alpha,j}^{HL}
+
\mathcal Z_{\alpha,j}^{RR},
\tag{11g''}
```

where:

- `\mathcal Z_{\alpha,j}^{LH}` is a strict low-high coefficient packet,
- `\mathcal Z_{\alpha,j}^{HL}` is the symmetric high-low coefficient packet,
- `\mathcal Z_{\alpha,j}^{RR}` is the genuinely finite-collar resonant packet.

That support theorem is recorded in
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md).

This stage does **not** replace Stage 3. It only improves the shape of the
live target: after `(11g'')`, the remaining theorem is no longer a global
source-mixing problem, but a source-plus-elliptic-response problem for
`\mathcal B_G(R_\alpha,\mathcal Z_\alpha)` or `L_G^{-1}\operatorname{div}`.
The weighted Helmholtz reinterpretation in
[lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md#L987)
sharpens this once more: the scalar pressure route only sees the exact
projection `\Pi_G^{ex}\mathcal Z_\alpha`, which is a contraction in the
natural `L^2_{G^{-1}}` norm, but the missing theorem is still that this exact
projection lands on a better ledger for the edge packets.

### Stage 3. Recover the frame-level coefficient window

The target theorem has the form

```math
\|G\nabla_aA\|_{L^\infty}
+
\|\nabla_a(G\nabla_aA)\|_{L^\infty}
\le
C_{\mathrm{frame}}
\Phi\Big(
\|G\|_{\mathcal L_r},
\|\nabla_aG\|_{\mathcal L_r},
\|\nabla_a^2G\|_{\mathcal L_r},
\|\Gamma[A,G]\|_{\mathcal M_r}
\Big),
\tag{11h}
```

where `\Gamma[A,G]` is the chosen compatibility control.

Under `(11h)`, the verified Route A remainder bound from
[lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md#L953)
becomes available on the live theorem surface.

### Stage 4. Feed the recovered coefficients back into Lemma 4B

Once `(11h)` is proved, the remaining pressure term satisfies

```math
|\mathcal B_G(R_\alpha,\mathcal Z_\alpha)|
\le
\varepsilon \|\nabla_aU_\alpha\|_{L^2}^2
+
C_{\varepsilon,\mathrm{coeff}}
\Big(
\|U_\alpha\|_{L^2}^2
+
\|\mathcal Z_\alpha\|_{L^2}^2
\Big),
\tag{11i}
```

so the Route A reduction really does finish the pressure wall.

## Exact burden in the blueprint

The hard step is Stage 2 to Stage 3:

```math
\boxed{
\text{prove that one NS-native compatibility package }
\mathcal T_r[A;v]
\text{ controls the frame strongly enough to imply `(11h)`,}
}
\tag{11j}
```

and only then derive rotation control from the factorization `A=G^{1/2}R`.

That is the precise place where the geometric-rigidity / nonlinear-Korn /
incompatible-Korn analogy must be fused with the actual Lagrangian Navier--
Stokes identities.

## Exact interpretation for the NS route

So the current route does not search for a purely metric theorem of the form

```math
\text{metric data alone}\Longrightarrow \text{full frame coefficient window}.
\tag{12}
```

That is too optimistic.

The correct search is:

```math
\boxed{
\text{metric data}
+
\text{one compatibility/gauge theorem}
\Longrightarrow
\text{frame coefficient window}.
}
\tag{13}
```

In the present lane, the compatibility/gauge input is one of:

1. explicit `A`-ledger control added to the six-lemma mainline;
2. a frame-recovery theorem from `G` together with integrability / transport
   constraints native to `A=F^{-1}`;
3. a Korn/rigidity-style upgrade adapted to the Lagrangian inverse-frame
   setting.

## Alternative realization: native `A/F` propagation theorem

There is a second, more concrete route that stays entirely on the native frame
variables. This is not the pure metric-to-frame theorem above. It is the
explicit `A`-ledger version of it.

The candidate theorem shape is:

```math
\boxed{
\mathcal L_r[G]
+
\mathcal T_r[A;v]
\Longrightarrow
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty,
}
\tag{13a}
```

where `\mathcal T_r[A;v]` is built from the exact frame equations

```math
F=\nabla_aX,
\qquad
A=F^{-1},
\qquad
\det F=1,
\qquad
\partial_tA=-A(\nabla_a v)A,
\qquad
\operatorname{div}_aA^\top=0.
\tag{13b}
```

This route is the **enlarged A-ledger route**:

- it does not try to recover the whole frame from `G` alone;
- it propagates the frame directly and uses the metric ledger only as its
  coefficient side.

### Candidate propagated objects

The natural coefficient objects are

```math
\mathsf M_1:=G\nabla_aA,
\qquad
\mathsf M_2:=\nabla_a(G\nabla_aA).
\tag{13c}
```

One may also keep an algebraic defect such as

```math
\mathsf M_0:=A^\top G^{-1}A-I,
\tag{13d}
```

which vanishes identically on exact solutions and can serve as a consistency
check under differentiation.

### Native propagation equations

The frame evolution is exact:

```math
\partial_tA=-A(\nabla_a v)A.
\tag{13e}
```

Differentiating gives, for multi-indices `\beta`,

```math
\partial_t(\partial_a^\beta A)
=
-\sum_{\beta_1+\beta_2+\beta_3=\beta}
c_{\beta_1,\beta_2,\beta_3}\,
(\partial_a^{\beta_1}A)\,
\partial_a^{\beta_2}\nabla_a v\,
(\partial_a^{\beta_3}A).
\tag{13f}
```

So `A` is natively propagated by the same Lagrangian velocity ledger.

The coefficient window needed by Route A is then attacked by differentiating

```math
\mathsf M_1=G\nabla_aA,
\qquad
\mathsf M_2=\nabla_a(G\nabla_aA).
\tag{13g}
```

The first propagated coefficient field can be written exactly as follows. Since

```math
\partial_tG
=
(\partial_tA)A^\top+A(\partial_tA)^\top
=
-A(\nabla_a v)G-G(\nabla_a v)^\top A^\top,
```

one has

```math
\partial_t\mathsf M_1
=
(\partial_tG)\nabla_aA+G\nabla_a(\partial_tA),
```

that is,

```math
\boxed{
\partial_t\mathsf M_1
=
-A(\nabla_a v)G\nabla_aA
-G(\nabla_a v)^\top A^\top\nabla_aA
-G\Big[(\nabla_aA)(\nabla_a v)A+A(\nabla_a^2v)A+A(\nabla_a v)\nabla_aA\Big].
}
\tag{13h}
```

So `\partial_t\mathsf M_1` contains only:

- zeroth-order `A,G`,
- first-order frame derivatives `\nabla_aA`,
- first and second derivatives of `v`.

In particular, no derivative of `A` above first order appears in `(13h)`.

At the next level, differentiating once more gives the recorded highest-order
structure

```math
\partial_t\mathsf M_2
=
\mathcal R_1(G,A,\nabla_aA,\nabla_a^2A,\nabla_a v,\nabla_a^2v)
+
\mathcal R_2(G,A,\nabla_aA,\nabla_a^3v),
\tag{13i}
```

after full expansion of `\nabla_a(\partial_t\mathsf M_1)`. The crucial
structural point is that `(13i)` contains at most:

- second derivatives of `A`,
- third derivatives of `v`,

and no derivative of `A` above second order.

So the enlarged `A`-ledger route is structurally consistent with propagating
`\mathsf M_1,\mathsf M_2`, but only if the velocity side owns enough Sobolev
room for a `W^{3,\infty}`-compatible coefficient bootstrap.

### Exact caveat on this route

This route is coherent, but not yet verified theorem-grade.

The missing checks are:

1. the exact full-index bookkeeping in `(13i)`, beyond the recorded highest
   order structure above;
2. the exact Sobolev threshold on the `v`-ledger needed to make the
   coefficient bootstrap live in `L^\infty` once `\nabla_a^3v` enters;
3. the precise role of the Piola and integrability identities from `(13b)`.
   Current evidence indicates that they enforce structural consistency and
   flatness of the frame, but do not themselves lower the derivative count of
   the top `\mathsf M_1,\mathsf M_2` terms.

So this is a serious candidate route with the following proof burden:

```math
\boxed{
\text{the explicit A-ledger realization of the frame-recovery wall,}
}
```

not as a proved consequence of the current metric-only mainline.

### Conditional finite-interval frame bootstrap

The current bridge surface now isolates the frame route down to one local
propagation lemma.

Fix `s>\frac72` and a bounded interval `[0,T]` carrying the adaptive refreezing
partition from
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L1364)
and the low-order bridge envelope from
[lagrangian-stokes-bridge-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-stokes-bridge-program.md#L824).
On each slab `I_j=[t_j,t_{j+1}]`, define

```math
\Gamma_j
:=
\|\mathsf M_1(t_j)\|_{H_a^{s-1}}
+
\|\mathsf M_2(t_j)\|_{H_a^{s-2}},
\qquad
E_j:=\|v\|_{L_t^2H_a^{s+1}(I_j)}.
\tag{13k}
```

Assume the exact local propagation estimates

```math
\|\partial_t\mathsf M_1\|_{L_t^1H_a^{s-1}(I_j)}
\le
P_s(\Lambda_*+\Gamma_j)\,E_j,
\tag{13\ell}
```

and

```math
\|\partial_t\mathsf M_2\|_{L_t^1H_a^{s-2}(I_j)}
\le
P_s(\Lambda_*+\Gamma_j)\,E_j,
\tag{13m}
```

where `\Lambda_*` is the already-propagated low-order bridge envelope on
`[0,T]`. Then

```math
\boxed{
\Gamma_{j+1}
\le
\Gamma_j+P_s(\Lambda_*+\Gamma_j)\,E_j.
}
\tag{13n}
```

Since the adaptive partition is finite and the frozen-coordinate transfer in the
bridge note gives `E_j\le C_{\Lambda_*} X_s^{\mathrm{corr}}[I_j;w,\pi]`,
one has

```math
\sum_{j=0}^{N-1}E_j
\le
C_{\Lambda_*}
\sqrt{N}\,
\|v\|_{L_t^2H_a^{s+1}([0,T])}
<\infty.
\tag{13o}
```

So discrete Gr\"onwall yields

```math
\boxed{
\sup_{0\le j\le N}\Gamma_j
\le
\Phi_s(\Gamma_0,\Lambda_*,\sum_jE_j),
}
\tag{13p}
```

for an increasing function `\Phi_s`.

Now `s>\frac72` gives the Sobolev embeddings

```math
H_a^{s-1}\hookrightarrow W_a^{1,\infty},
\qquad
H_a^{s-2}\hookrightarrow L_a^\infty,
\tag{13q}
```

so `(13p)` implies the coefficient window

```math
\boxed{
\sup_{t\in[0,T]}
\Big(
\|G\nabla_aA(t)\|_{L^\infty}
+
\|\nabla_a(G\nabla_aA)(t)\|_{L^\infty}
\Big)
\le
C_s\,\Phi_s(\Gamma_0,\Lambda_*,\sum_jE_j).
}
\tag{13r}
```

This is exactly the Route A coefficient window.

At the level of proof structure, everything after this point is discrete
bookkeeping and Sobolev embedding once the local slab propagation estimates are
available.

### Sharper frozen-coordinate reformulation

The same remaining burden may be expressed more naturally in the refrozen
`x`-coordinates from
[time-slab-freezing-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-slab-freezing-bridge-note.md#L20).
On each slab, write

```math
M(x,t):=F_*^\sharp(x)\,A(Y_*(x),t),
\qquad
H(x,t):=MM^\top.
\tag{13t}
```

Because the frozen coefficients `F_*^\sharp`, `A_*^\sharp`, and their first
derivatives are time-independent and uniformly controlled by the already-proved
low-order bridge envelope, the original coefficient window

```math
G\nabla_aA,
\qquad
\nabla_a(G\nabla_aA)
\tag{13u}
```

is equivalent, up to uniformly bounded frozen-geometry factors and lower-order
terms, to the transformed package

```math
\Theta_1:=H\nabla_xM,
\qquad
\Theta_2:=\nabla_x(H\nabla_xM).
\tag{13v}
```

In particular, under the bounded frozen-coordinate envelope one may replace the
original Route A target by the frozen-coordinate estimate

```math
\boxed{
\sup_{t\in[0,T]}
\Big(
\|\Theta_1(t)\|_{L_x^\infty}
+
\|\Theta_2(t)\|_{L_x^\infty}
\Big)
<\infty.
}
\tag{13w}
```

The transport law

```math
\partial_tM=-M(\nabla_xw)M
\tag{13x}
```

shows that the true local frame burden is now the theorem-grade propagation of
the first two `x`-coordinate coefficient fields built from `M`. At the level of
derivative count, this is better aligned with the bridge surface than the
original `a`-coordinate presentation, because every differentiated term is
driven directly by `\nabla_xw`, `\nabla_x^2w`, and `\nabla_x^3w`.

So the local frame-side burden may be read equivalently as the frozen-coordinate
propagation of `\Theta_1,\Theta_2` (or any uniformly equivalent `M`-based
package). The key advantage is that in these coordinates the last local
estimate is now theorem-grade.

### Frozen-coordinate slab propagation for `\Theta_1,\Theta_2`

Fix one slab `I_j=[t_j,t_{j+1}]` of the adaptive refreezing partition and
assume `s>\frac72`. Define

```math
\Gamma_j^x
:=
\|\Theta_1(t_j)\|_{H_x^{s-1}}
+
\|\Theta_2(t_j)\|_{H_x^{s-2}},
\qquad
E_j^x:=\|w\|_{L_t^2H_x^{s+1}(I_j)}.
\tag{13z}
```

Assume the frozen-coordinate low-order envelope is bounded on `I_j`:

```math
K_*
\ge
\sup_{t\in I_j}
\Big(
\|M(t)\|_{H_x^s\cap W_x^{1,\infty}}
+
\|H(t)\|_{H_x^s\cap W_x^{1,\infty}}
+
\|H^{-1}(t)\|_{H_x^s\cap W_x^{1,\infty}}
+
\|w(t)\|_{H_x^s}
\Big).
\tag{13za}
```

Define the slab supremum frame size

```math
\Gamma_{j,\sup}^x
:=
\sup_{t\in I_j}
\Big(
\|\Theta_1(t)\|_{H_x^{s-1}}
+
\|\Theta_2(t)\|_{H_x^{s-2}}
\Big).
\tag{13zaa}
```

Then there is a polynomial `P_s` such that

```math
\|\partial_t\Theta_1\|_{L_t^1H_x^{s-1}(I_j)}
+
\|\partial_t\Theta_2\|_{L_t^1H_x^{s-2}(I_j)}
\le
P_s(K_*+\Gamma_{j,\sup}^x)\,E_j^x.
\tag{13zb}
```

Consequently,

```math
\boxed{
\Gamma_{j,\sup}^x
\le
\Gamma_j^x+P_s(K_*+\Gamma_{j,\sup}^x)\,E_j^x.
}
\tag{13zc}
```

Because the adaptive partition makes `E_j^x` satisfy the smallness condition
`(13zcb)` on each slab, the continuity/Bihari bootstrap applied to `(13zc)`
closes and yields a one-step recursion of the form

```math
\boxed{
\Gamma_{j+1}^x
\le
\Gamma_j^x+\widetilde P_s(K_*+\Gamma_j^x)\,E_j^x,
}
\tag{13zca}
```

More explicitly: for every `R>0` there is `\varepsilon_s(R)>0` such that if

```math
K_*+\Gamma_j^x\le R,
\qquad
E_j^x\le \varepsilon_s(R),
\tag{13zcb}
```

then the bootstrap `(13zc)` closes on `I_j` and `(13zca)` holds with constants
depending only on `s` and `R`.

As a direct corollary, once `(13zca)` is available one has the slab-sup bound

```math
\boxed{
\sup_{t\in I_j}
\Big(
\|\Theta_1(t)\|_{H_x^{s-1}}
+
\|\Theta_2(t)\|_{H_x^{s-2}}
\Big)
\le
\Gamma_j^x+\widetilde P_s(K_*+\Gamma_j^x)\,E_j^x.
}
\tag{13zcc}
```

In particular,

```math
\sup_{t\in I_j}\|\Theta_1(t)\|_{H_x^{s-1}}
\le
\Gamma_j^x+\widetilde P_s(K_*+\Gamma_j^x)\,E_j^x,
\qquad
\sup_{t\in I_j}\|\Theta_2(t)\|_{H_x^{s-2}}
\le
\Gamma_j^x+\widetilde P_s(K_*+\Gamma_j^x)\,E_j^x.
\tag{13zcd}
```

for another polynomial `\widetilde P_s`.

#### Proof sketch

First, from

```math
\partial_tM=-M(\nabla_xw)M
\tag{13zd}
```

one gets

```math
\partial_tH
=
(\partial_tM)M^\top+M(\partial_tM)^\top
=
-M(\nabla_xw)H-H(\nabla_xw)^\top M^\top.
\tag{13ze}
```

Now

```math
\Theta_1=H\nabla_xM,
\qquad
\Theta_2=\nabla_x(H\nabla_xM).
\tag{13zf}
```

Since `H` is uniformly invertible on the slab,

```math
\nabla_xM=H^{-1}\Theta_1,
\tag{13zg}
```

and from the definition of `\Theta_2`,

```math
H\nabla_x^2M
=
\Theta_2-(\nabla_xH)\nabla_xM.
\tag{13zh}
```

Also `\nabla_xH=(\nabla_xM)M^\top+M(\nabla_xM)^\top`, so every occurrence of
`\nabla_xH` is lower-order in `K_*+\Gamma_{j,\sup}^x`; the dependence of
`H^{-1}` and `\nabla_xH^{-1}` on the slab envelope is controlled by the
Moser/composition estimates included in `(13za)`.

For `\Theta_1`,

```math
\partial_t\Theta_1
=
(\partial_tH)\nabla_xM
+
H\nabla_x(\partial_tM).
\tag{13zi}
```

Substituting `(13zd)`-`(13zg)` shows that every term in `\partial_t\Theta_1`
is of one of the two forms

- bounded coefficient `\times\,\Theta_1\times \nabla_x w`,
- bounded coefficient `\times\,\nabla_x^2 w`.

So there is a genuine inhomogeneous source contribution coming from the bare
`\nabla_x^2 w` term, and not every summand carries a factor of `\Theta_1`.
Since `s>\frac72`, the spaces
`H_x^{s-1}` and `H_x^{s-2}` are algebras with the needed Sobolev embeddings, so

```math
\|\partial_t\Theta_1\|_{H_x^{s-1}}
\le
P_s(K_*+\Gamma_{j,\sup}^x)\,\|w\|_{H_x^{s+1}}.
\tag{13zj}
```

For `\Theta_2`, differentiate `(13zi)` once. After expansion, every term in
`\partial_t\Theta_2=\nabla_x(\partial_t\Theta_1)` is of one of the forms

- bounded coefficient `\times\,\Theta_2\times \nabla_x w`,
- bounded coefficient `\times\,\Theta_1\times \nabla_x^2 w`,
- bounded coefficient `\times\,\Theta_1^2\times \nabla_x w`,
- bounded coefficient `\times\,\nabla_x^3 w`.

The only potentially dangerous geometric term is `\nabla_x^2M`, but `(13zh)`
rewrites it in terms of `\Theta_2` and lower-order products. Hence

```math
\|\partial_t\Theta_2\|_{H_x^{s-2}}
\le
P_s(K_*+\Gamma_{j,\sup}^x)\,\|w\|_{H_x^{s+1}}.
\tag{13zk}
```

Integrating `(13zj)` and `(13zk)` over `I_j` yields `(13zb)` and hence the
bootstrap inequality `(13zc)`. The one-step recursion `(13zca)` then follows by
short-slab continuity, using the smallness threshold `(13zcb)` built into the
adaptive partition. Applying `(13zca)` on each slab of the adaptive partition
and taking the supremum gives the slab-sup corollary `(13zcc)`-`(13zcd)`.

### Conditional coefficient-window theorem

Combine the finite-interval bridge bootstrap with the one-step recursion
`(13zca)`.
Since the adaptive partition is finite and

```math
\sum_{j=0}^{N-1}E_j^x
\le
\sqrt{N}\,
\|w\|_{L_t^2H_x^{s+1}([0,T])}
<\infty,
\tag{13zl}
```

discrete Gr\"onwall gives

```math
\sup_{0\le j\le N}\Gamma_j^x
\le
\Phi_s(\Gamma_0^x,K_*,\sum_jE_j^x).
\tag{13zm}
```

Finally, because `s>\frac72`,

```math
H_x^{s-1}\hookrightarrow W_x^{1,\infty},
\qquad
H_x^{s-2}\hookrightarrow L_x^\infty,
\tag{13zn}
```

so `(13zm)` implies

```math
\boxed{
\sup_{t\in[0,T]}
\Big(
\|\Theta_1(t)\|_{L_x^\infty}
+
\|\Theta_2(t)\|_{L_x^\infty}
\Big)
\le
C_s\,\Phi_s(\Gamma_0^x,K_*,\sum_jE_j^x).
}
\tag{13zo}
```

By the frozen-geometry equivalence `(13u)`-`(13w)`, this gives the original
Route A coefficient window on `[0,T]`.

So the coefficient window is now conditionally closed on bounded-envelope
finite-dissipation intervals. The remaining global gap is no longer local frame
propagation; it is only the removal of that interval-level hypothesis.

## Existing Analytic Machinery Candidate Stack

The current candidate tool stack is:

1. **Lagrangian variable-coefficient maximal regularity**, to recover high
   parabolic derivatives of `v` without derivative loss from the operator
   `\operatorname{div}_a(G\nabla_a\cdot)`;
2. **sharp commutator/product estimates** of Kato–Ponce type, to keep the
   differentiated `\mathsf M_1,\mathsf M_2` equations on the same Sobolev
   ledger;
3. **BKM-type control principles** only as a guide to permitted dependencies of
   the top coefficient norm, not as the missing theorem by itself.

The important correction is that maximal regularity must not be stated here as
“it directly gives `W^{3,\infty}`.” In the present route it is more honest to
say:

```math
\boxed{
\text{maximal regularity is the right no-loss engine for the needed }v\text{-derivatives,}
}
```

but the conversion of those derivatives into the frame-level coefficient window

```math
G\nabla_aA,\qquad \nabla_a(G\nabla_aA)\in L^\infty
```

still requires:

- the exact `\mathsf M_1,\mathsf M_2` propagation formulas,
- the appropriate Sobolev/Besov embedding threshold,
- and same-depth commutator control for the nonlinear coefficient terms.

So the most defensible analytic theorem target is not “bare maximal regularity,”
but rather:

```math
\boxed{
\text{Lagrangian maximal regularity + same-depth commutator control}
\Longrightarrow
\text{the }A\text{-ledger coefficient window.}
}
\tag{13j}
```

## Regularity budget for the enlarged `A`-ledger route

One useful piece of external fill-in is the **regularity bookkeeping** for the
native `A/F` propagation route.

At the level of derivative count, the structural expansion is consistent with
the current theorem picture:

- for
  ```math
  \mathsf M_1:=G\nabla_aA,
  ```
  the exact equation `(13h)` contains only zeroth-order `A,G`, first-order
  `\nabla_aA`, and first/second derivatives of `v`;
- for
  ```math
  \mathsf M_2:=\nabla_a(G\nabla_aA),
  ```
  the recorded expansion `(13i)` contains at most second derivatives of `A`
  and third derivatives of `v`.

So, if one tries to close the coefficient window by direct propagation of
`\mathsf M_1,\mathsf M_2`, the required Sobolev embedding budget in dimension
`3` is:

```math
H^s(\mathbb R^3)\hookrightarrow W^{k,\infty}(\mathbb R^3)
\qquad\text{whenever}\qquad
s>k+\frac32.
\tag{13k}
```

In particular,

```math
W^{2,\infty}\ \text{needs}\ H^{\frac72+\varepsilon},
\qquad
W^{3,\infty}\ \text{needs}\ H^{\frac92+\varepsilon}.
\tag{13l}
```

For nonlinear expansions, the relevant same-depth product tool is the displayed
Moser/Kato--Ponce tame estimate:

```math
\|uv\|_{H^s}
\le
C_s\left(
\|u\|_{L^\infty}\|v\|_{H^s}
+
\|u\|_{H^s}\|v\|_{L^\infty}
\right),
\qquad s\ge 0,
\tag{13m}
```

with analogous commutator bounds for differentiated products. These are the
exact calculus inputs that make the `\mathsf M_2` product expansions
regularity-compatible at the stated Sobolev depth.

The important limit is that `(13k)`-`(13m)` are only **infrastructure**. They
show that the enlarged `A`-ledger route is not dimensionally absurd, and they
help choose the ledger depth `r`. They do **not** by themselves solve the
remaining operator wall from Lemma 4B.

More precisely:

```math
\boxed{
\text{the Sobolev ladder is a necessary regularity budget,}
}
```

```math
\boxed{
\text{but the missing theorem is still the same-depth control of the pressure bilinear form}
\ \mathcal B_G\text{,}
}
```

or a frame/coefficient theorem that feeds that bilinear estimate.

## Minimal upstream theorem target

The current lane can now state the remaining bridge in one explicit theorem
package.

The downstream reduction is already in place:

```math
\text{same-depth }A\text{-ledger coefficient window}
\Longrightarrow
\text{Route A closes Lemma 4B.}
```

What is still missing is the upstream no-loss variable-coefficient Lagrangian
Stokes estimate on the live theorem surface. In minimal form, the target system
is

```math
\partial_t v + A^\top\nabla_a q-\nu\,\operatorname{div}_a(G\nabla_a v)=f,
\qquad
\operatorname{div}_a(Av)=0,
\qquad
G=AA^\top,
\tag{13n}
```

with uniform ellipticity and the NS-native compatibility package on `A,F,G`.

The exact theorem burden is a same-depth estimate of the form

```math
\|v\|_{L_t^\infty H^s}
+
\|v\|_{L_t^2 H^{s+1}}
+
\|\partial_t v\|_{L_t^2 H^{s-1}}
+
\|\nabla_a q\|_{L_t^2 H^{s-1}}
\le
C_{\mathrm{Stokes}}
\left(
\|v_0\|_{H^s}
+
\|f\|_{L_t^2 H^{s-1}}
+
\text{same-depth coefficient terms from }A,G,
\right)
\tag{13o}
```

with **no hidden derivative loss** in the coefficient dependence.

Once `(13o)` is available, the exact propagated equations for

```math
\mathsf M_1=G\nabla_aA,
\qquad
\mathsf M_2=\nabla_a(G\nabla_aA)
```

can be closed by same-depth Moser/Kato--Ponce calculus and then embedded into
the coefficient window needed by Route A.

So the missing bridge consists of three minimal subclaims:

1. a **same-depth velocity estimate** for `(13n)`;
2. a **same-depth pressure estimate** for `(13n)`;
3. **coefficient dependence only through the existing ledger**, rather than
   through higher hidden derivatives of `A` or `G`.

In that form, the frontier is no longer diffuse. It is one explicit upstream
Lagrangian Stokes theorem whose output feeds the already-verified downstream
Route A reduction.

That bridge is now isolated in
[lagrangian-stokes-bridge-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-stokes-bridge-program.md),
where the missing theorem is split into frozen-coefficient, pressure/constraint,
same-depth commutator, and non-autonomous closure subclaims.

## Verdict

The pressure wall is now best described as:

```math
\boxed{
\text{a frame-recovery wall,}
}
```

but with one essential refinement:

```math
\boxed{
\text{not free frame recovery from }G\text{ alone,}
}
```

```math
\boxed{
\text{rather frame recovery from }G\text{ plus the integrability / transport structure of }A.
}
\tag{14}
```
