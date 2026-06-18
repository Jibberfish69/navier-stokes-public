# MPP Collar-Sobolev Packet Interval-Propagation Theorem Program

## Status

Theorem-facing supplier note.

Role: isolate the exact interval-propagation burden

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty
\tag{CSP.0}
```

which is the high-leverage supplier behind the one-field forward-preservation
route.

This note does **not** widen the route. Its job is narrower:

```math
\boxed{
\text{make the collar-Sobolev packet itself the explicit live theorem burden, rather than leaving it buried inside `OFP.B4` or `FCI.B`.}
}
\tag{CSP.1}
```

## Purpose

The one-field forward-preservation note already reduces the coherence wall to
two supplier debts. Among those, the collar Sobolev packet is first because its
common collar envelope feeds:

1. the next-rung segment side directly;
2. the weighted-segment packet directly;
3. the finite-net discharge on the reference side.

So the actual theorem pressure is:

```math
\boxed{
\text{can the moving packet collar carry one-rung-higher Sobolev control uniformly on the interval under the same-fluid evolution?}
}
\tag{CSP.2}
```

## Installed Inputs

Use only the already-installed supplier surfaces.

1. packet-collar geometry and the collar packet:
   [mpp-packet-collar-next-rung-control.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-packet-collar-next-rung-control.md)
2. material packet defect/packing laws:
   [mpp-material-packet-closure-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md)
3. transported packet bridge:
   [mpp-transported-material-packet-bridge-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md)
4. fixed-family and collar interval-propagation queue:
   [mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md)
5. one-field forward-preservation route:
   [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)

## Exact Theorem Target

Fix:

1. a compactly supported material packet `\psi`;
2. a finite depth `N`;
3. a time interval `I`;
4. a scale window `0<|r|\le \rho`;
5. a collar thickness `\delta>0`;
6. a Sobolev index `m` large enough for the local embedding slot `PC.D`.

Retain the collar Sobolev packet

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
:=
\sum_{j=0}^{m}\sum_{k=0}^{N}\lambda_k
\int \chi_{\rho,\psi,t}^{\delta}(x)^2
\big|\nabla^jU_{k+1}(x,t)\big|^2\,dx.
\tag{CSP.3}
```

### Theorem `CSP.A` (Interval propagation of the collar Sobolev packet)

Under the same-fluid packet evolution on `I`,

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
<
\infty.
\tag{CSP.4}
```

This is exactly the supplier theorem recorded abstractly as `FCI.B`.

## Exact Downstream Role

If `CSP.A` lands, then the already-isolated collar embedding slot gives

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\le C_{emb}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t),
\tag{CSP.5}
```

hence

```math
\sup_{t\in I}
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
<
\infty.
\tag{CSP.6}
```

From there:

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}
\Longrightarrow
\mathfrak N^{seg}_{N+1,\rho,\psi}
\Longrightarrow
\mathcal M^{wseg}_{N+1,\rho,\psi},
\tag{CSP.7}
```

and the same common collar envelope also feeds the finite-net discharge on the
reference side.

More sharply on the transported-center oscillation side, Corollary `EOC.Ca`
shows that the route-native consumer form is:

```math
\text{widened receiver-side return }(EOC.27)
\ +\
CSP.A_{\delta+\delta_{seg}}
\Longrightarrow
EOC.A.
\tag{CSP.7a}
```

The companion note
[mpp-lci-a-widened-thickness-collar-wall-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-thickness-collar-wall-note.md)
records the exact consequence for this transported-center use case: because
`CSP.A` is already formulated for an arbitrary fixed collar thickness, the
specific consumer `CSP.A_{\delta+\delta_{seg}}` carries no new structural
collar wall. It is still governed by the same moving-collar one-rung-higher
energy law `CSP.8`, only with the thickness parameter replaced by
`\delta+\delta_{seg}`. More sharply, inside that widened receiver package the
only thickness-sensitive slot is the thicker lower same-fluid carrier ledger,
and the companion note
[mpp-lci-a-widened-thickness-lower-carrier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-thickness-lower-carrier-note.md)
reduces that slot further to `LCI.A` at the thicker radius.

So `CSP.A` is not a side theorem. It is the highest-leverage supplier in the
one-field route.

## Exact Proof Spine

The intended proof is split into four exact steps.

### Lemma `CSP.B1` (Moving collar transport structure)

Because the collar cutoff `\chi_{\rho,\psi,t}^{\delta}` is built from the same
transported packet geometry, its time dependence is not arbitrary.

The clean way to encode it is:

1. retain the transported packet factor

```math
\phi_t(x):=\psi(Y(x,t)),
\qquad
(\partial_t+u\cdot\nabla)\phi_t=0;
\tag{CSP.10}
```

2. choose one smooth geometric collar profile `\Theta_\delta` with

```math
0\le \Theta_\delta\le 1,
\qquad
\Theta_\delta(s)=1\ \text{for }s\le 0,
\qquad
\Theta_\delta(s)=0\ \text{for }s\ge \delta,
\tag{CSP.10a}
```

and derivative bounds

```math
\|\Theta_\delta'\|_{L^\infty}
\le
C_\Theta\,\delta^{-1},
\qquad
\|\Theta_\delta''\|_{L^\infty}
\le
C_\Theta\,\delta^{-2};
\tag{CSP.10b}
```

3. choose one smooth defining function `d_{\rho,\psi}(x,t)` for the packet
   collar core `\mathfrak P_{\rho,\psi}(t)` from `PC.6`, with

```math
d_{\rho,\psi}(x,t)\le 0
\quad\text{on }\mathfrak P_{\rho,\psi}(t),
\qquad
d_{\rho,\psi}(x,t)\ge \delta
\quad\text{outside }\mathcal C_{\rho,\psi}^{\delta}(t);
\tag{CSP.11}
```

4. define

```math
\chi_{\rho,\psi,t}^{\delta}(x)
:=
\phi_t(x)\,\Theta_\delta(d_{\rho,\psi}(x,t)).
\tag{CSP.12}
```

Then

```math
(\partial_t+u\cdot\nabla)\chi_{\rho,\psi,t}^{\delta}
=
\phi_t\,\Theta_\delta'(d_{\rho,\psi})
(\partial_t+u\cdot\nabla)d_{\rho,\psi}
:\,=\,
\mathcal T_{\rho,\psi,t}^{\delta}.
\tag{CSP.13}
```

So the packet factor is transported exactly, and every nontrivial time
variation of the cutoff is concentrated in one explicit collar-transport
mismatch term `\mathcal T_{\rho,\psi,t}^{\delta}`.

Moreover, because `\Theta_\delta'` is supported only where the cutoff
transitions,

```math
\operatorname{supp}\mathcal T_{\rho,\psi,t}^{\delta}
\subset
\mathcal C_{\rho,\psi}^{\delta}(t)
\setminus
\mathfrak P_{\rho,\psi}(t).
\tag{CSP.14}
```

This is the exact annular region where collar commutator terms may occur.

This prevents the collar packet from being treated as if it lived on a fixed
Euclidean box unrelated to the same-fluid carrier.

To make `(CSP.11)`--`(CSP.13)` honest rather than formal, fix
`0<\kappa<\frac13`, let `\varrho\in C_c^\infty(B_1(0))` be a nonnegative
standard mollifier with `\int\varrho=1`, write

```math
\varrho_{\kappa\delta}(x)
:=
(\kappa\delta)^{-3}\,
\varrho\!\left(\frac{x}{\kappa\delta}\right),
\qquad
c_\kappa:=(1-3\kappa)^{-1},
\tag{CSP.14a}
```

and define the raw packet-core distance

```math
d_{\rho,\psi}^{raw}(x,t)
:=
\operatorname{dist}\!\big(x,\mathfrak P_{\rho,\psi}(t)\big).
\tag{CSP.14b}
```

Also write the same-fluid core-speed coefficient

```math
\mathfrak V_{\rho,\psi}^{core}(t)
:=
\sup_{a\in\operatorname{supp}\psi}
\big|u(X(a,t),t)\big|
+
\sup_{\substack{a\in\operatorname{supp}\psi\\0<|r|\le \rho}}
\Big(
\big|\Delta_r^Xu(a,t)\big|
+
\big|(\nabla u)(X(a,t),t)\,F(a,t)r\big|
\Big).
\tag{CSP.14c}
```

### Lemma `CSP.B1a` (Admissible defining function from the moving packet core)

Define

```math
d_{\rho,\psi}(x,t)
:=
c_\kappa
\Big[
\big(\varrho_{\kappa\delta}\ast d_{\rho,\psi}^{raw}(\cdot,t)\big)(x)
-2\kappa\delta
\Big].
\tag{CSP.14d}
```

Then:

1. `d_{\rho,\psi}` satisfies the sign conditions `(CSP.11)`;
2. on the collar annulus
   `\mathcal A_{\rho,\psi}^{\delta}(t)=\mathcal C_{\rho,\psi}^{\delta}(t)\setminus\mathfrak P_{\rho,\psi}(t)`,

```math
\|\nabla d_{\rho,\psi}(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\le
c_\kappa,
\tag{CSP.14e}
```

```math
\|\nabla^2 d_{\rho,\psi}(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\le
\frac{C_\varrho\,c_\kappa}{\kappa\,\delta},
\tag{CSP.14f}
```

and, for a.e. `t`,

```math
\|D_t d_{\rho,\psi}(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\le
c_\kappa
\Big(
\mathfrak V_{\rho,\psi}^{core}(t)
+
\|u(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\Big).
\tag{CSP.14g}
```

### Proof

The core `\mathfrak P_{\rho,\psi}(t)=\mathfrak B_{\rho,\psi}(t;I)\cup \mathfrak S_{\rho,\psi}(t)`
is generated by the maps

```math
G^{ref}(a,\eta,t):=X(a,t)+\eta,
\qquad
G^{seg}(a,r,\theta,t):=X(a,t)+F(a,t)r+\theta\,\varepsilon_h(a,r,t).
\tag{CSP.14h}
```

Their time derivatives are

```math
\partial_tG^{ref}(a,\eta,t)=u(X(a,t),t),
\tag{CSP.14i}
```

and, using `h(a,r,t)=X(a+r,t)-X(a,t)=F(a,t)r+\varepsilon_h(a,r,t)`,

```math
\partial_tG^{seg}(a,r,\theta,t)
=
u(X(a,t),t)
+
(1-\theta)\,(\nabla u)(X(a,t),t)F(a,t)r
+
\theta\,\Delta_r^Xu(a,t).
\tag{CSP.14j}
```

Hence every generating point of `\mathfrak P_{\rho,\psi}(t)` moves with speed at
most `\mathfrak V_{\rho,\psi}^{core}(t)`. Therefore the packet core moves in
Hausdorff distance with

```math
\operatorname{dist}_H\!\big(\mathfrak P_{\rho,\psi}(t_1),\mathfrak P_{\rho,\psi}(t_2)\big)
\le
\int_{t_1}^{t_2}\mathfrak V_{\rho,\psi}^{core}(\tau)\,d\tau,
\tag{CSP.14k}
```

and the raw distance satisfies, for every `x`,

```math
\big|
d_{\rho,\psi}^{raw}(x,t_1)-d_{\rho,\psi}^{raw}(x,t_2)
\big|
\le
\int_{t_1}^{t_2}\mathfrak V_{\rho,\psi}^{core}(\tau)\,d\tau.
\tag{CSP.14l}
```

Because `d_{\rho,\psi}^{raw}(\cdot,t)` is `1`-Lipschitz in space,
`\varrho_{\kappa\delta}\ast d_{\rho,\psi}^{raw}` is smooth with
`L^\infty` gradient bounded by `1` and Hessian bounded by
`C_\varrho/(\kappa\delta)`. Multiplying by `c_\kappa` gives `(CSP.14e)` and
`(CSP.14f)`.

If `x\in\mathfrak P_{\rho,\psi}(t)`, then
`d_{\rho,\psi}^{raw}(x-y,t)\le |y|` on `\operatorname{supp}\varrho_{\kappa\delta}`,
so

```math
\big(\varrho_{\kappa\delta}\ast d_{\rho,\psi}^{raw}(\cdot,t)\big)(x)
\le
\kappa\delta,
\tag{CSP.14m}
```

which implies `d_{\rho,\psi}(x,t)\le -c_\kappa\kappa\delta\le 0`. If
`x\notin\mathcal C_{\rho,\psi}^{\delta}(t)`, then
`d_{\rho,\psi}^{raw}(x-y,t)\ge \delta-\kappa\delta` on the support of the
mollifier, hence

```math
\big(\varrho_{\kappa\delta}\ast d_{\rho,\psi}^{raw}(\cdot,t)\big)(x)
\ge
(1-\kappa)\delta,
\tag{CSP.14n}
```

and therefore

```math
d_{\rho,\psi}(x,t)
\ge
c_\kappa(1-3\kappa)\delta
=
\delta.
\tag{CSP.14o}
```

This proves `(CSP.11)`.

Finally, `(CSP.14l)` passes through convolution to give
`|\partial_t d_{\rho,\psi}|\le c_\kappa\mathfrak V_{\rho,\psi}^{core}` a.e. in
`t`, and `|u\cdot\nabla d_{\rho,\psi}|\le c_\kappa |u|` by `(CSP.14e)`. Taking
the `L^\infty` norm on the annulus yields `(CSP.14g)`. ∎

Define the packet-factor coefficients on the annulus by

```math
\Phi_{\rho,\psi}^{(j)}(t)
:=
\|\nabla^j\phi_t(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\qquad
(j=0,1,2).
\tag{CSP.14p}
```

Since `\phi_t=\psi\circ Y(\cdot,t)`, these are same-fluid quantities; more
explicitly,

```math
\Phi_{\rho,\psi}^{(1)}(t)
\le
\|\nabla\psi\|_{L^\infty}\,
\|\nabla Y(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))},
\tag{CSP.14q}
```

and

```math
\Phi_{\rho,\psi}^{(2)}(t)
\le
\|D^2\psi\|_{L^\infty}\,
\|\nabla Y(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}^2
+
\|\nabla\psi\|_{L^\infty}\,
\|\nabla^2 Y(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}.
\tag{CSP.14r}
```

The formulas `(CSP.14q)`--`(CSP.14r)` are only a readout. For interval
propagation, the route-native dynamic control comes directly from the
transported packet factor `D_t\phi_t=0`, not from a separate `Y`-regularity
theorem.

### Lemma `CSP.B1c` (Transported packet-factor derivative propagation)

Define the global packet-factor derivative ledgers

```math
\Phi_{\psi}^{glob,(j)}(t)
:=
\|\nabla^j\phi_t(\cdot,t)\|_{L^\infty(\mathbf R^3)}
\qquad
(j=0,1,2).
\tag{CSP.14z}
```

Then

```math
\Phi_{\rho,\psi}^{(j)}(t)\le \Phi_{\psi}^{glob,(j)}(t)
\qquad
(j=0,1,2),
\tag{CSP.14aa}
```

and the transported packet factor obeys

```math
D_t\phi_t=0,
\tag{CSP.14ab}
```

```math
D_t\nabla\phi_t
=
-(\nabla u)^\top\nabla\phi_t,
\tag{CSP.14ac}
```

```math
D_t\nabla^2\phi_t
=
-(\nabla u)^\top\nabla^2\phi_t
-\nabla^2\phi_t\,\nabla u
-\sum_{\ell=1}^{3}
(\nabla^2 u_\ell)\,\partial_\ell\phi_t.
\tag{CSP.14ad}
```

Consequently, for every interval `[t_1,t_2]\subset I`,

```math
\Phi_{\psi}^{glob,(0)}(t)
=
\|\psi\|_{L^\infty},
\tag{CSP.14ae}
```

```math
\Phi_{\psi}^{glob,(1)}(t_2)
\le
\Phi_{\psi}^{glob,(1)}(t_1)
+
\int_{t_1}^{t_2}
\|U_1(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\,
\Phi_{\psi}^{glob,(1)}(s)\,ds,
\tag{CSP.14af}
```

and, provided `m\ge 2`,

```math
\Phi_{\psi}^{glob,(2)}(t_2)
\le
\Phi_{\psi}^{glob,(2)}(t_1)
+
C
\int_{t_1}^{t_2}
\Big(
\|U_1(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\,
\Phi_{\psi}^{glob,(2)}(s)
+
\|U_2(\cdot,s)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(s))}
\,
\Phi_{\psi}^{glob,(1)}(s)
\Big)\,ds.
\tag{CSP.14ag}
```

In particular, if `m\ge 2` and the low carrier ledger from `(CSP.25b)` belongs
to `L^1(I)`, then

```math
\Phi_{\rho,\psi}^{(1)}+\Phi_{\rho,\psi}^{(2)}\in L^\infty(I).
\tag{CSP.14ah}
```

### Proof

Because `K_t=X(\operatorname{supp}\psi,t)` lies inside the packet core
`\mathfrak P_{\rho,\psi}(t)`, the support of `\phi_t=\psi\circ Y(\cdot,t)` is
contained in `\mathcal C_{\rho,\psi}^{\delta}(t)`. Hence `(CSP.14aa)` is
exactly the support inclusion above.

The identity `(CSP.14ab)` is the transported-cutoff law `(CSP.10)`. Differentiate
it once and commute `D_t=\partial_t+u\cdot\nabla` through `\nabla`:

```math
[D_t,\partial_i]f
=
-(\partial_i u_\ell)\,\partial_\ell f.
```

This yields `(CSP.14ac)`. Differentiating again gives

```math
[D_t,\partial_{ij}]f
=
-(\partial_{ij}u_\ell)\,\partial_\ell f
-(\partial_i u_\ell)\,\partial_{\ell j}f
-(\partial_j u_\ell)\,\partial_{i\ell}f,
```

which is exactly `(CSP.14ad)` when `f=\phi_t`.

Taking `L^\infty` norms on `\mathcal C_{\rho,\psi}^{\delta}(t)` gives
`(CSP.14af)`--`(CSP.14ag)`, since `U_1=\nabla u`,
`U_2=\nabla^2 u`, and `\operatorname{supp}\phi_t` lies inside the collar.
Finally, `(CSP.14ah)` follows by Gronwall from `(CSP.14af)`--`(CSP.14ag)` once
`m\ge 2` and `(CSP.25b)` is integrable on `I`. ∎

### Corollary `CSP.B1b` (Annular control of the moving cutoff and transport mismatch)

On the annulus `\mathcal A_{\rho,\psi}^{\delta}(t)`,

```math
\|\mathcal T_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le
C_\Theta\,c_\kappa\,\delta^{-1}\,
\Phi_{\rho,\psi}^{(0)}(t)\,
\Big(
\mathfrak V_{\rho,\psi}^{core}(t)
+
\|u(\cdot,t)\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\Big),
\tag{CSP.14s}
```

```math
\|\nabla\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le
\Phi_{\rho,\psi}^{(1)}(t)
+
C_\Theta\,c_\kappa\,\delta^{-1}\,\Phi_{\rho,\psi}^{(0)}(t),
\tag{CSP.14t}
```

and

```math
\|\nabla^2\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le
\Phi_{\rho,\psi}^{(2)}(t)
+
2\,C_\Theta\,c_\kappa\,\delta^{-1}\,\Phi_{\rho,\psi}^{(1)}(t)
+
\Big(
C_\Theta\,C_\varrho\,\frac{c_\kappa}{\kappa}\,\delta^{-2}
+
C_\Theta\,c_\kappa^2\,\delta^{-2}
\Big)\,
\Phi_{\rho,\psi}^{(0)}(t).
\tag{CSP.14u}
```

Consequently,

```math
|\mathcal C_{N+1,m}^{trans,\delta}(t)|
\le C_{trans}
\|\mathcal T_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t),
\tag{CSP.14v}
```

and

```math
|\mathcal C_{N+1,m}^{visc,\delta}(t)|
\le C_{visc}
\Big(
\|\nabla\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
+
\|\nabla^2\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\Big)
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t).
\tag{CSP.14w}
```

### Proof

The identity for `\mathcal T_{\rho,\psi,t}^{\delta}` is exactly `(CSP.13)`,
combined with `(CSP.10b)` and `(CSP.14g)`. The first and second spatial
derivatives follow from the chain rule

```math
\nabla\chi_{\rho,\psi,t}^{\delta}
=
\Theta_\delta(d_{\rho,\psi})\,\nabla\phi_t
+
\phi_t\,\Theta_\delta'(d_{\rho,\psi})\,\nabla d_{\rho,\psi},
\tag{CSP.14x}
```

and

```math
\nabla^2\chi_{\rho,\psi,t}^{\delta}
=
\Theta_\delta(d_{\rho,\psi})\,\nabla^2\phi_t
+
2\,\Theta_\delta'(d_{\rho,\psi})\,
\operatorname{sym}\big(\nabla\phi_t\otimes \nabla d_{\rho,\psi}\big)
+
\phi_t\,\Theta_\delta''(d_{\rho,\psi})\,\nabla d_{\rho,\psi}\otimes\nabla d_{\rho,\psi}
+
\phi_t\,\Theta_\delta'(d_{\rho,\psi})\,\nabla^2 d_{\rho,\psi},
\tag{CSP.14y}
```

and the bounds `(CSP.10b)`, `(CSP.14e)`, and `(CSP.14f)`. The commutator
inequalities `(CSP.14v)`--`(CSP.14w)` then follow because the annular
coefficients multiply the localized quadratic packet. ∎

### Lemma `CSP.B2` (Higher-rung collar energy identity)

Differentiate the same-fluid tower law through one more rung and localize with
the moving collar cutoff. The target is a localized higher-rung energy identity
for `\mathcal K_{N+1,m,\rho,\psi}^{\delta}` analogous in role to the packet
defect identity `(MP.12)`.

Write

```math
W_{j,k}:=\nabla^jU_{k+1}
\qquad
(0\le j\le m,\ 0\le k\le N).
\tag{CSP.16}
```

So `W_{j,k}=U_{j+k+1}` as a raw differential object, but the `(j,k)` indexing is
still intentional: the collar packet keeps track of how much regularity is
being paid through the Sobolev index `j` versus the tower index `k`, even when
the total derivative order coincides.

Since `U_{k+1}` obeys the same-fluid transported law one rung higher, there is
an induced differentiated law of the form

```math
D_tW_{j,k}
=
K_{j+k+1}
+
\mathcal B_{j,k}^{hi},
\tag{CSP.17}
```

where `\mathcal B_{j,k}^{hi}` collects the higher-rung transport/cascade
commutators generated by differentiating `D_t` through `\nabla^j`.

More explicitly, commuting `D_t` through `\nabla^j` and using `(TC.14)`--`(TC.15)`
gives the exact decomposition

```math
\mathcal B_{j,k}^{hi}
=
\mathcal S_{j,k}^{hi}
+
\mathcal R_{j,k}^{hi},
\tag{CSP.17a}
```

with

```math
\mathcal S_{j,k}^{hi}
:=
-\sum_{\ell=1}^{j} \binom{j}{\ell}\,
\nabla^\ell u * \nabla^{j+1-\ell}U_{k+1},
\tag{CSP.17b}
```

and

```math
\mathcal R_{j,k}^{hi}
:=
\nabla^j B_{k+1}.
\tag{CSP.17c}
```

So the one-rung-higher law already splits into the same three channels that
appear in `(TC.20)` / `(MP.12)`:

1. the pressure-viscosity carrier `K_{j+k+1}`;
2. the differentiated transport/strain commutator `\mathcal S_{j,k}^{hi}`;
3. the differentiated cross-rung cascade `\mathcal R_{j,k}^{hi}`.

Multiply `(CSP.17)` by
`2\lambda_k(\chi_{\rho,\psi,t}^{\delta})^2W_{j,k}`, sum in `(j,k)`, integrate
in space, and use `(CSP.13)`. The target identity is:

```math
\frac{d}{dt}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
+
2\nu\,\mathcal D_{N+1,m,\rho,\psi}^{\delta}(t)
=
\mathcal P_{N+1,m}^{hi}(t)
+
\mathcal F_{N+1,m}^{hi,press}(t)
+
\mathcal S_{N+1,m}^{hi}(t)
+
\mathcal R_{N+1,m}^{hi}(t)
+
\mathcal C_{N+1,m}^{visc,\delta}(t)
+
\mathcal C_{N+1,m}^{trans,\delta}(t).
\tag{CSP.18}
```

Here:

1. `\mathcal D_{N+1,m,\rho,\psi}^{\delta}` is the collar dissipation packet
   built from `|\nabla W_{j,k}|^2`;
2. `\mathcal P_{N+1,m}^{hi}` and
   `\mathcal F_{N+1,m}^{hi,press}` are the higher-rung pressure
   redistribution/flux terms;
3. `\mathcal S_{N+1,m}^{hi}` is the higher-rung strain/transport packet;
4. `\mathcal R_{N+1,m}^{hi}` is the higher-rung cascade/commutator packet;
5. `\mathcal C_{N+1,m}^{visc,\delta}` is the viscous localization commutator;
6. `\mathcal C_{N+1,m}^{trans,\delta}` is the collar-transport mismatch term
   generated by `(CSP.13)`, i.e. the packet built from

```math
\sum_{j=0}^{m}\sum_{k=0}^{N}\lambda_k
\int
\chi_{\rho,\psi,t}^{\delta}\,
\mathcal T_{\rho,\psi,t}^{\delta}\,
|W_{j,k}|^2\,dx.
\tag{CSP.19}
```

Relative to the packet identity `(MP.12)`, the exact novelty is narrow:

1. `\mathcal P^{hi}`, `\mathcal F^{hi,press}`, `\mathcal S^{hi}`, and
   `\mathcal R^{hi}` are just the one-rung-higher localized analogues of the
   corresponding packet terms in `(MP.12)`;
2. `\mathcal C^{visc,\delta}` is the exact localization residue produced by
   integrating the viscous term against
   `(\chi_{\rho,\psi,t}^{\delta})^2W_{j,k}`.  For each `(j,k)` it consists of
   the two cutoff-derivative terms

```math
2\nu\lambda_k
\int
\chi_{\rho,\psi,t}^{\delta}
\nabla\chi_{\rho,\psi,t}^{\delta}\cdot\nabla W_{j,k}\,W_{j,k}\,dx
\quad\text{and}\quad
\nu\lambda_k
\int
\Delta\!\big((\chi_{\rho,\psi,t}^{\delta})^2\big)
|W_{j,k}|^2\,dx,
\tag{CSP.18a}
```

   summed over `(j,k)`, with the annular bound already displayed in
   `(CSP.22)`;
3. `\mathcal C^{trans,\delta}` is the only genuinely new term created by the
   fact that `\chi_{\rho,\psi,t}^{\delta}` obeys `(CSP.13)` rather than the
   exact transported-cutoff law `(\partial_t+u\cdot\nabla)\phi_t=0`.

There is no honest seventh residual family here. The true leftovers are already
accounted for by:

1. the collar transport mismatch `\mathcal C^{trans,\delta}`;
2. the viscous localization commutator `\mathcal C^{visc,\delta}`;
3. the lower-order tail absorbed into the higher-rung cascade packet
   `\mathcal R^{hi}`.

The collar-transport term created here must be expressed through `(CSP.13)`:

```math
\int
\chi_{\rho,\psi,t}^{\delta}\,
\mathcal T_{\rho,\psi,t}^{\delta}\,
|\nabla^jU_{k+1}|^2\,dx,
\tag{CSP.15}
```

The one-rung-higher strain/cascade terms are not a continuation-norm shortcut:
they are exactly the packets in `(CSP.17a)`--`(CSP.17c)`, namely

```math
\mathcal S_{j,k}^{hi}
=
-\sum_{\ell=1}^{j}\binom{j}{\ell}
\nabla^\ell u * \nabla^{j+1-\ell}U_{k+1},
\qquad
\mathcal R_{j,k}^{hi}=\nabla^j B_{k+1}.
\tag{CSP.19a}
```

The viscous localization cost is exactly the cutoff-derivative cost in
`(CSP.18a)` and `(CSP.22)`.

This is the place where the one-rung-higher strain/cascade terms and the moving
collar commutators must be kept explicit instead of flattened into a generic
continuation norm.

### Lemma `CSP.B3` (Source control by packet and transport ledgers)

Show that the source terms in `CSP.B2` are controlled by already-visible same-
fluid ledgers:

1. packet defect quantities from the material packet route;
2. transported separation / packing mismatch ledgers from the bridge route;
3. the collar-transport mismatch `\mathcal T_{\rho,\psi,t}^{\delta}` from
   `(CSP.13)`;
4. lower-order collar terms already inside
   `\mathcal K_{N+1,m,\rho,\psi}^{\delta}`.

So the collar packet is driven only by same-fluid quantities already on the
route, not by imported external structure.

The exact feeder map is term-by-term:

1. `(MP.12)` supplies the pressure / flux / strain / cascade / viscous-cutoff
   decomposition pattern to be reproduced one rung higher on the collar;
2. `(TC.19)`--`(TC.31)` supply the triangular strain/cascade structure only
   after the localized tower-closure proof supplies the flux/cutoff bound
   `(TC.31a)` or its collar analogue; otherwise this line is the exact remaining
   source-control burden for `\mathcal S_{N+1,m}^{hi}` and
   `\mathcal R_{N+1,m}^{hi}`;
3. `(TB.18)`, `(TB.26a)`, and `(TB.28)` supply the only packing-side bridge
   quantities that enter when transported separations are converted back to
   Eulerian collar data;
4. `(PC.10)`--`(PC.14)` and `(FCI.7)` supply the collar geometry and the
   common-envelope discharge once `\mathcal K_{N+1,m,\rho,\psi}^{\delta}` is
   controlled.

More explicitly, let

```math
\mathcal A_{\rho,\psi}^{\delta}(t)
:=
\mathcal C_{\rho,\psi}^{\delta}(t)
\setminus
\mathfrak P_{\rho,\psi}(t)
\tag{CSP.20}
```

be the collar annulus where the cutoff transitions.

Then the two genuinely collar-specific source packets have the target estimates

```math
|\mathcal C_{N+1,m}^{trans,\delta}(t)|
\le C_{trans}
\|\mathcal T_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t),
\tag{CSP.21}
```

and

```math
|\mathcal C_{N+1,m}^{visc,\delta}(t)|
\le C_{visc}
\sum_{\ell=1}^{2}
\|\nabla^\ell\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t).
\tag{CSP.22}
```

So the collar-specific commutators are supported only on the annulus and are
absorbed relative to the collar packet itself by the displayed collar-packet
bound.

For the higher-rung same-fluid terms, the exact target is to bound

```math
|\mathcal P_{N+1,m}^{hi}(t)|
+
|\mathcal F_{N+1,m}^{hi,press}(t)|
+
|\mathcal S_{N+1,m}^{hi}(t)|
+
|\mathcal R_{N+1,m}^{hi}(t)|
\tag{CSP.23}
```

by combinations of:

1. the collar packet `\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)`;
2. packet defect quantities from `(MP.12)` / `NRW.A`;
3. transported packing-mismatch ledgers `P_F^\ast(r,t;\psi)`;
4. the rung-1 material strain source `\mathcal Q_{1,r,\psi}^{str}(t)`.

More concretely, the source-control target is:

1. `\mathcal C^{trans,\delta}` is controlled directly by `(CSP.13)` on the
   annulus, yielding `(CSP.21)`;
2. `\mathcal C^{visc,\delta}` is controlled by annular derivatives of the
   cutoff exactly as the packet cutoff-commutator is controlled in `(MP.12)`,
   yielding `(CSP.22)`;
3. `\mathcal S^{hi}` is bounded by collar `L^\infty` envelopes of the lower
   tower against `\mathcal K_{N+1,m,\rho,\psi}^{\delta}`;
4. `\mathcal R^{hi}` is bounded by the same triangular rung-split structure as
   `(TC.19)`--`(TC.31)` only after the collar proof supplies the corresponding
   flux, cutoff, and transported-separation error bounds, with the
   transported-separation part entering only through `(TB.18)` / `(TB.28)`.

In short, `CSP.B3` reduces the entire right-hand side of `(CSP.18)` to the
one-sided inequality

```math
\frac{d}{dt}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
+
\nu\,\mathcal D_{N+1,m,\rho,\psi}^{\delta}(t)
\le
\mathfrak L_{N,m,\rho,\psi}^{sf}(t)\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
+
\mathfrak S_{N,m,\rho,\psi}^{pkt}(t),
\tag{CSP.24}
```

where:

```math
\Gamma_{\rho,\psi,\delta}^{ann}(t)
:=
\|\mathcal T_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
+
\|\nabla\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))}
+
\|\nabla^2\chi_{\rho,\psi,t}^{\delta}\|_{L^\infty(\mathcal A_{\rho,\psi}^{\delta}(t))},
\tag{CSP.25a}
```

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(t))},
\tag{CSP.25b}
```

```math
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(t;I)
:=
\sum_{\ell=1}^{M_\varepsilon}
\mathcal N_{N,\eta^\ell,\psi}^{resp}(t),
\tag{CSP.25c}
```

and take

```math
\mathfrak L_{N,m,\rho,\psi}^{sf}(t)
:=
C_{N,m,\rho,\psi,\delta}
\Big(
\Gamma_{\rho,\psi,\delta}^{ann}(t)
+
\Gamma_{N,m,\rho,\psi}^{low}(t)
+
\rho^2 P_{F,\rho,\psi}^{\ast}(t)
\Big),
\tag{CSP.25d}
```

```math
\mathfrak S_{N,m,\rho,\psi}^{pkt}(t)
:=
C_{N,m,\rho,\psi,\delta,\varepsilon}\,
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(t;I).
\tag{CSP.25e}
```

Here `\Gamma_{\rho,\psi,\delta}^{ann}` is exactly the annular cutoff/transport
package supplied by `CSP.B1b`, `\Gamma_{N,m,\rho,\psi}^{low}` is the same-fluid
lower-carrier ledger that feeds the triangular estimates for
`\mathcal S_{N+1,m}^{hi}` and `\mathcal R_{N+1,m}^{hi}`, and
`\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}` is the frozen-family neighboring-
response density from `(FCI.5a)`.

The transport forcing from `(TB.28)` no longer remains as a second independent
packet source once Theorem `R1.C` is installed. It is consumed into the
propagated packing bridge ledger `P_{F,\rho,\psi}^{\ast}`, so the genuinely
inhomogeneous source retained on the right-hand side of `(CSP.24)` is the
frozen-family response density `(CSP.25c)`.

### Lemma `CSP.B3a0` (Annular coefficient integrability from pack and low carrier control)

Retain one common label collar `A_\sharp` containing the packet labels together
with the scale window `|r|\le \rho`, and let `\Gamma_\sharp` be its pack gauge
from `(CFI.16)`.

Assume

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),
\qquad
m\ge 2.
\tag{CSP.25f0}
```

Then

```math
\mathfrak V_{\rho,\psi}^{core}(t)
\le
C_{\rho,\psi}\,
\big(1+\Gamma_\sharp(t)\big)\,
\Gamma_{N,m,\rho,\psi}^{low}(t),
\tag{CSP.25f1}
```

```math
\Gamma_{\rho,\psi,\delta}^{ann}(t)
\le
C_{\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{low}(t)\big),
\tag{CSP.25f2}
```

and therefore

```math
\Gamma_{\rho,\psi,\delta}^{ann}\in L^1(I).
\tag{CSP.25f3}
```

### Proof

For the core-speed coefficient `(CSP.14c)`, the first term satisfies

```math
|u(X(a,t),t)|
\le
\|U_0(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(t))}
\le
\Gamma_{N,m,\rho,\psi}^{low}(t).
```

Also, by the fundamental theorem of calculus in label space,

```math
h(a,r,t)
=
\int_0^1 F(a+\theta r,t)\,r\,d\theta,
```

so `|h(a,r,t)|\le \rho\,\Gamma_\sharp(t)` on the common label collar. Hence

```math
|\Delta_r^Xu(a,t)|
\le
|h(a,r,t)|\,
\|U_1(\cdot,t)\|_{L^\infty(\mathfrak S_{\rho,\psi}(t))}
\le
\rho\,\Gamma_\sharp(t)\,
\Gamma_{N,m,\rho,\psi}^{low}(t),
```

and similarly

```math
|(\nabla u)(X(a,t),t)F(a,t)r|
\le
\rho\,\Gamma_\sharp(t)\,
\Gamma_{N,m,\rho,\psi}^{low}(t).
```

This proves `(CSP.25f1)`.

Next, `(CSP.14ah)` gives
`\Phi_{\rho,\psi}^{(1)}+\Phi_{\rho,\psi}^{(2)}\in L^\infty(I)`, while
`\Phi_{\rho,\psi}^{(0)}=\|\psi\|_{L^\infty}` by `(CSP.14ae)`. Substituting
those bounds together with `(CSP.25f1)` into `(CSP.14s)`--`(CSP.14u)` yields
`(CSP.25f2)`. Since `(CSP.25f0)` gives both
`\Gamma_\sharp\in L^\infty(I)` and
`\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I)`, the right-hand side of `(CSP.25f2)`
belongs to `L^1(I)`. This is `(CSP.25f3)`. ∎

### Corollary `CSP.B3a0a` (Receiver-side lower-carrier control forces the packet-local pack gauge)

Fix the packet label halo

```math
A_{\rho,\psi}^{lab}
:=
\big\{
a+r:
a\in\operatorname{supp}\psi,\ |r|\le \rho
\big\}.
\tag{CSP.25f3a}
```

Retain the packet-local strain/deformation ledgers
`\Lambda_{\rho,\psi}^{pkt}` and `\Gamma_{\rho,\psi}^{pkt}` from `CFI.C1c`.

Assume

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),
\qquad
m\ge 2.
\tag{CSP.25f3b}
```

Then

```math
\Lambda_{\rho,\psi}^{pkt}(t)
\le
\Gamma_{N,m,\rho,\psi}^{low}(t)
\qquad
\text{for a.e. }t\in I,
\tag{CSP.25f3c}
```

hence

```math
\Gamma_{\rho,\psi}^{pkt}\in L^\infty(I).
\tag{CSP.25f3d}
```

Consequently the annular coefficient conclusions `(CSP.25f1)`--`(CSP.25f3)`
remain valid with the packet-local deformation gauge
`\Gamma_{\rho,\psi}^{pkt}` in place of the larger common-collar gauge
`\Gamma_\sharp`.

### Proof

Fix `b\in A_{\rho,\psi}^{lab}`. By definition, either `b=a` for some
`a\in\operatorname{supp}\psi`, or `b=a+r` with
`a\in\operatorname{supp}\psi` and `0<|r|\le \rho`.

In the first case,

```math
X(b,t)=X(a,t)\in K_t\subset \mathfrak P_{\rho,\psi}(t)\subset
\mathcal C_{\rho,\psi}^{\delta}(t).
\tag{CSP.25f3e}
```

In the second case,

```math
X(b,t)
=
X(a+r,t)
=
X(a,t)+h(a,r,t)
=
X(a,t)+F(a,t)r+\varepsilon_h(a,r,t),
\tag{CSP.25f3f}
```

which is exactly the bridge-segment point `G^{seg}(a,r,1,t)`, so

```math
X(b,t)\in \mathfrak S_{\rho,\psi}(t)\subset \mathcal C_{\rho,\psi}^{\delta}(t).
\tag{CSP.25f3g}
```

Therefore

```math
\Phi(A_{\rho,\psi}^{lab},t)\subset \mathcal C_{\rho,\psi}^{\delta}(t).
\tag{CSP.25f3h}
```

Since `|D(u)|\le |\nabla u|=|U_1|` and `m\ge 2` ensures `U_1` is included in
`\Gamma_{N,m,\rho,\psi}^{low}`, `(CSP.25f3h)` gives `(CSP.25f3c)`. Integrating
in time and applying `CFI.C1c` yields `(CSP.25f3d)`.

The proof of `CSP.B3a0` uses the deformation gauge only through the labels
`a+\theta r` with `a\in\operatorname{supp}\psi` and `|r|\le \rho`, because

```math
h(a,r,t)=\int_0^1 F(a+\theta r,t)\,r\,d\theta.
\tag{CSP.25f3i}
```

Those labels all lie in `A_{\rho,\psi}^{lab}`, so `\Gamma_{\rho,\psi}^{pkt}`
is sufficient there. Hence the same argument yields
`(CSP.25f1)`--`(CSP.25f3)` with `\Gamma_{\rho,\psi}^{pkt}` in place of
`\Gamma_\sharp`. ∎

### Lemma `CSP.B3a` (Coefficient-side integrability after the direct bridge)

Assume on `I` that

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),
\qquad
P_{F,\rho,\psi}^{\ast}\in L^1(I).
\tag{CSP.25f}
```

Then

```math
\mathfrak L_{N,m,\rho,\psi}^{sf}\in L^1(I).
\tag{CSP.25g}
```

Moreover, Lemma `CSP.B3a0` supplies
`\Gamma_{\rho,\psi,\delta}^{ann}\in L^1(I)`. The packet bridge ledger
`P_{F,\rho,\psi}^{\ast}` is taken here as one of the exact input ledgers in
`(CSP.25f)`; when it is obtained from Theorem `R1.C`, that derivation belongs
to the separate direct-bridge supplier surface and is not used inside this
lemma.

### Proof

By Lemma `CSP.B3a0`, the annular coefficient hypothesis from the older form of
`(CSP.25f)` is already a consequence of
`\Gamma_\sharp\in L^\infty(I)` together with
`\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I)`. The definition `(CSP.25d)` is then
linear in the remaining ledgers, so `(CSP.25g)` is exactly that linear
combination. The packet bridge
ledger `P_{F,\rho,\psi}^{\ast}` is one of the explicit inputs in `(CSP.25f)`;
when it is produced from `R1.C`, that derivation belongs to the separate
direct-bridge supplier surface. ∎

For the lower-order receiver-side packet, fix
`0<\kappa\le \frac1{11}` in the defining-function construction from
`(CSP.14a)`--`(CSP.14d)`. The mixed cutoff
`\chi_{\rho,\psi,t}^{\delta}=\phi_t\Theta_\delta(d_{\rho,\psi})` is not the
right readout object on the whole collar, because its packet factor need not
stay uniformly positive there. So for the lower-order packet, fix a purely
geometric collar profile `\Xi_\delta\in C^\infty(\mathbf R)` such that

```math
0\le \Xi_\delta\le 1,
\qquad
\Xi_\delta(s)=1 \text{ for } s\le \tfrac54\delta,
\qquad
\Xi_\delta(s)=0 \text{ for } s\ge \tfrac32\delta,
\tag{CSP.25g0}
```

with derivative bounds

```math
\|\Xi_\delta'\|_{L^\infty}\le C_\Xi\,\delta^{-1},
\qquad
\|\Xi_\delta''\|_{L^\infty}\le C_\Xi\,\delta^{-2},
\tag{CSP.25g0a}
```

and define the geometric lower-order collar cutoff

```math
\vartheta_{\rho,\psi,t}^{\delta}(x)
:=
\Xi_\delta(d_{\rho,\psi}(x,t)).
\tag{CSP.25g0b}
```

Write its geometric support shell as

```math
\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)
:=
\big\{
x\in\mathbf R^3:
d_{\rho,\psi}(x,t)<\tfrac32\delta
\big\}.
\tag{CSP.25g0b1}
```

Then, because `x\in\mathcal C_{\rho,\psi}^{\delta}(t)` implies
`d_{\rho,\psi}^{raw}(x,t)<\delta`, one has on the support of the mollifier

```math
d_{\rho,\psi}^{raw}(x-z,t)\le (1+\kappa)\delta
\qquad (|z|\le \kappa\delta),
```

hence

```math
d_{\rho,\psi}(x,t)
\le
c_\kappa\big((1+\kappa)-2\kappa\big)\delta
=
c_\kappa(1-\kappa)\delta
\le
\frac54\delta.
\tag{CSP.25g0c-prep}
```

Therefore

```math
\vartheta_{\rho,\psi,t}^{\delta}\equiv 1
\quad\text{on }\mathcal C_{\rho,\psi}^{\delta}(t),
\tag{CSP.25g0c}
```

If `x\in\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)`, then

```math
\big(\varrho_{\kappa\delta}\ast d_{\rho,\psi}^{raw}(\cdot,t)\big)(x)
<
2\kappa\delta+\frac{3}{2c_\kappa}\delta
=
\Big(\frac32-\frac52\kappa\Big)\delta.
\tag{CSP.25g0c-shell1}
```

So there exists `z` with `|x-z|\le \kappa\delta` and

```math
d_{\rho,\psi}^{raw}(z,t)
<
\Big(\frac32-\frac52\kappa\Big)\delta,
\tag{CSP.25g0c-shell2}
```

whence, by the `1`-Lipschitz property of `d_{\rho,\psi}^{raw}`,

```math
d_{\rho,\psi}^{raw}(x,t)
<
\Big(\frac32-\frac32\kappa\Big)\delta
<
\frac32\delta.
\tag{CSP.25g0c-shell3}
```

Therefore

```math
\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)
\subset
\big\{
x\in\mathbf R^3:
\operatorname{dist}(x,\mathfrak P_{\rho,\psi}(t))<\tfrac32\delta
\big\},
\tag{CSP.25g0c-shell4}
```

and `\vartheta_{\rho,\psi,t}^{\delta}` is supported on the geometric shell
`\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)`. The proof of Lemma `CSP.B1a`
already gives the global bounds
`|\partial_t d_{\rho,\psi}|\le c_\kappa\mathfrak V_{\rho,\psi}^{core}`,
`|\nabla d_{\rho,\psi}|\le c_\kappa`, and
`|\nabla^2 d_{\rho,\psi}|\le C_\varrho c_\kappa/(\kappa\delta)` for the
mollified defining function. Hence, on `\operatorname{supp}\Xi_\delta'`,

```math
\|D_t\vartheta_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le C_\vartheta
\delta^{-1}
\Big(
\mathfrak V_{\rho,\psi}^{core}(t)
+
\|U_0(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}
\Big),
\tag{CSP.25g0d}
```

```math
\|\nabla\vartheta_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le C_\vartheta'
\delta^{-1},
\qquad
\|\nabla^2\vartheta_{\rho,\psi,t}^{\delta}\|_{L^\infty}
\le C_\vartheta''
\delta^{-2}.
\tag{CSP.25g0e}
```

So the lower-order transport mismatch no longer asks for a global carrier
outside the route. On the transported-center coefficient branch,
Proposition `LCI.B2c` reads
`\|U_0\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}` off the same
finite center family already used for the lower-carrier theorem.

Define the lower-order collar packet by

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\alpha=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{\delta}(x)\big)^2
\big|
\nabla^\alpha U_q(x,t)
\big|^2\,dx.
\tag{CSP.25g1}
```

This is the finite lower-carrier packet sitting strictly below the top
next-rung object `\mathcal K_{N+1,m,\rho,\psi}^{\delta}`. Its role is exactly to
pay the coefficient-side readout of the carriers `U_0,\dots,U_m` without
recycling the unknown top packet back into
`\mathfrak L_{N,m,\rho,\psi}^{sf}`.

### Target Theorem `CSP.B3a1` (Route-native lower-order collar packet interval propagation)

Retain the same-fluid interval `I=[t_0,t_1]`, assume the initial lower-order
packet is finite,

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty,
\tag{CSP.25g1b}
```

and define the lower-order collar
dissipation packet

```math
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\alpha=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{\delta}(x)\big)^2
\big|
\nabla^{\alpha+1} U_q(x,t)
\big|^2\,dx.
\tag{CSP.25g1a}
```

The lower-order receiver-side theorem on this route is:

```math
\sup_{t\in I}
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
<
\infty.
\tag{CSP.25g2}
```

Its route-native form is the localized lower-order packet inequality

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
+
\nu\,\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{low}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\tag{CSP.25g2a}
```

for almost every `t\in I`.

Corollary `LCI.B2b` and Proposition `LCI.B3` in
[mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
now discharge the nonlinear coefficient reduction behind `(CSP.25g2a)` and make
the remaining lower-order receiver-side wall exact: the sharper coefficient
closure branch `(LCI.3c3x)` and the coarser direct-readout branch. On that
direct branch, Proposition `LCI.B3` identifies the two scalar subslots
`(LCI.3c3k0)` and `(LCI.3c5f)`, while Proposition `LCI.B3a` and Corollary
`LCI.B3a1` show that both are already downstream of the same Apr 19
transported-center package on the dedicated lower-carrier theorem surface. On the
transported-center realization with bounded pack-side gauge, the coefficient
branch already reduces further to the square-integrable absolute/oscillation
pair `(LCI.3c3y)`, with the oscillation side reduced to the local Holder
ledger `(LCI.3c3z4)`. But `LCI.B2f1` now records the exact missing supplier on
that side: the present lower-order packet only sees the plateau balls
`B(y,2r_\delta)`, not the full transported-center oscillation balls
`B(\Phi(a^j,t),2R_\delta)`, so a center-ball extension theorem is still needed
to actually prove `(LCI.3c3z20)`. On the absolute-center side, the same branch
is identified with the exact transported-center triangular center system
`(LCI.3c3z8a)`--`(LCI.3c3z8b)`, whose only genuinely self-quadratic rung is
`(LCI.3c3z16)` and whose higher center rungs are downstream by
`(LCI.3c3z19)`. Proposition `LCI.B2g4` now shows that the lower-rung viscous
center forcing is already downstream of that same center system, so the
genuinely unreduced center forcing is only the pressure-center readout at
every rung together with the top-two viscous center ledgers. For the first
center rung, `LCI.B2g5b` already splits the pressure-center wall into a
localized response term plus a harmonic-tail ledger; `LCI.B2g5d` reduces the
localized response term to center values plus the local Holder ledger,
`LCI.B2g5e` reduces the harmonic tail to an explicit far-field velocity tail,
and `LCI.B2g5f` returns the route to the exact unsquared first-rung matrix
law. But `LCI.B2g5h` now proves that a bare full-carrier matrix coercivity
theorem on `|U_1|` is false because large nilpotent shear states make
`-U_1^2` vanish exactly while remaining lawful smooth states, and `LCI.B2g5j`
shows that even a successful defect theorem must still be accompanied by a
defect-to-higher-rung handoff replacing the coefficient
`\mathfrak A_{1,\rho,\psi}^{ctr}\mathfrak A_{q,\rho,\psi}^{ctr}` in
`(LCI.3c3z17)`. So the sharper receiver-side wall is now the explicit package
bounded pack-side gauge, the oscillation-side center-ball extension theorem,
a first-rung defect that quotients out the affine/shear gauge sector, the
defect-to-higher-rung handoff, and the residual center-forcing surface.

The direct attack order on this route is therefore:

1. supply the imported transported-center package, concretely the local Holder
   oscillation theorem `(LCI.3c3z20)` and the first center-rung bound
   `(LCI.3c3z22)`, with the oscillation side still tracked theorem-facing as
   the enlarged-ball closure theorem `EOC.A` on
   [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md),
   but with Corollary `EOC.Ca` already showing that its honest route-native
   wall is the widened receiver-side return `(EOC.27)` together with `CSP.A`
   at thickness `\delta+\delta_{seg}`, not a separate unresolved
   halo/increment theorem;
   and the first-rung side now sharpened theorem-facing as the affine-frame
   defect core `AFD.A` on
   [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md),
   while the stronger frozen input `(LCI.3c3z22)` remains the package used by
   the current residual-forcing note; its bridge from the affine-defect route
   is now already closed in stronger form, so the exact live lower-order
   theorem on that side is the supplier split beneath `AFD.A`; once the
   ordinary energy ledger is imported, that split collapses to the first-rung
   viscous center theorem `VCS.A`, isolated in
   [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md);
   when `m\ge 3`, the stronger lower-order halo-shell packet `HSP.A0a` then
   gives one non-circular discharge of `VCS.A`, and with the imported ordinary
   energy ledger plus the remaining `AFD.A` inputs Corollary `AFS.C` feeds
   `AFD.A` directly; Proposition `AFB.A` then upgrades that route to the frozen
   package input `(RCF.2)` through `(RCF.1b)`, so the sharper next-form theorem
   target on that branch is not `VCS.A` in isolation but `HSP.A0a`; because
   `(HSP.A0a)` is the installed stronger form beneath `HSP.A`, the branch does
   not stop there: its honest direct successor is already the fixed-increment
   source law `FEI.C7`, with the sharper route-native nonlocal return
   `(HSP.Bc0)\equiv(FEI.Bc0)`; and on that direct branch the installed FEI
   reductions already bottom the transported-center source split at the direct
   pair `(FPC.H,FVR.F)` and then at the common still-local floor `FCL.C`, with
   the common route-native lower-order moving-collar return `(FCL.Bc0)` beneath
   that floor; the companion instance note
   [mpp-csp-b3a1-fei-return-instance-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-csp-b3a1-fei-return-instance-note.md)
   now records the sharper branch-local fact as well: the FEI collar returns
   `(FPL.Bc0)` and `(FTL.Bc0)` are themselves exact parameter reads of the old
   receiver theorem `CSP.B3a1`, so these FEI local branches reopen no new
   receiver theorem family below the direct split, and the only
   thickness-sensitive receiver slot inside those instances is again the
   corresponding old lower-carrier theorem `LCI.A`; the companion return note
   [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
   now states the terminal read of that same energy-conditioned branch
   explicitly: after those FEI return instances are unpacked, it reopens only
   the returned `LCI.A` reads and feeds back into the already-installed
   lower-carrier route;
2. then discharge the single transported-center residual theorem `RCF.A`; the
   companion weighted-center note reduces this to the internal multilinear
   residue `(WCA.C0)`, but the handoff note already records that `WCA.C0` is
   only the frozen direct-coordinate remainder and not the honest next
   theorem-facing upstream target, which remains the affine-defect supplier
   split `(AFS.A0)` beneath `AFD.A`;
3. recover the exact reopened lower-carrier reads on the lower-carrier note:
   conservatively first the smaller-thickness returned read
   `LCI.A[N+4,N+4,\delta+\Lambda_{\delta,\rho}^{halo}]`, then the wider
   pressure-side read `LCI.A[N+2,N+2,\delta+5\Lambda_{\delta,\rho}^{halo}]`;
   the companion FEI-return instance note now makes the terminal point explicit:
   these are only returned parameter reads of the old lower-carrier theorem and
   do not create a new lower-carrier supplier route;
4. combine `LCI.A` with the separate source-side burden `(FCI.5f)` to close
   `CSP.A`.

### Lemma `CSP.B3a2` (Direct moving-collar lower-carrier readout from the geometric cutoff)

Set

```math
\;r_\delta:=\frac{\delta}{16c_\kappa}.
\tag{CSP.25g3a}
```

and define the positive profile floor

```math
c_{\Xi,\kappa}
:=
\min_{0\le s\le \frac{11}{8}\delta}\Xi_\delta(s)
>
0.
\tag{CSP.25g3b}
```

Then `(CSP.14e)` and `(CSP.25g0)` give

```math
B(y,2r_\delta)\subset
\big\{x:\vartheta_{\rho,\psi,t}^{\delta}(x)\ge c_{\Xi,\kappa}\big\}
\quad
\text{for every }t\in I,\ y\in\mathcal C_{\rho,\psi}^{\delta}(t).
\tag{CSP.25g3}
```

Then for almost every `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
1+
C_{m,\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2},
\tag{CSP.25g4}
```

In particular, if

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)<\infty,
\tag{CSP.25g4a}
```

then

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{CSP.25g5}
```

### Proof

Fix `t\in I`, `y\in\mathcal C_{\rho,\psi}^{\delta}(t)`, and `0\le q\le m`.
Translation invariance of the local Sobolev constant gives

```math
\|U_q(\cdot,t)\|_{L^\infty(B(y,r_\delta))}
\le
C_{r_\delta}
\sum_{\alpha=0}^{2}
\|\nabla^\alpha U_q(\cdot,t)\|_{L^2(B(y,2r_\delta))}.
\tag{CSP.25g6}
```

By `(CSP.25g3)`,

```math
\|\nabla^\alpha U_q(\cdot,t)\|_{L^2(B(y,2r_\delta))}
\le
\frac1{c_{\Xi,\kappa}}
\big\|
\vartheta_{\rho,\psi,t}^{\delta}\nabla^\alpha U_q(\cdot,t)
\big\|_{L^2(B(y,2r_\delta))}
\le
\frac1{c_{\Xi,\kappa}}
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}.
\tag{CSP.25g7}
```

Substituting `(CSP.25g7)` into `(CSP.25g6)`, then evaluating at the center
point `y`, gives

```math
|U_q(y,t)|
\le
C_{r_\delta,\Xi,\kappa}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}.
\tag{CSP.25g8}
```

Taking the supremum over `y\in\mathcal C_{\rho,\psi}^{\delta}(t)` and summing
over `q=0,\dots,m` yields `(CSP.25g4)`. If `(CSP.25g4a)` also holds, then the
right-hand side of `(CSP.25g4)` is essentially bounded on `I`, and finiteness
of `|I|` gives `(CSP.25g5)`. ∎

So the nontrivial coefficient-side debt is now exact: one must prove the
lower-order moving-collar packet theorem `(CSP.25g2)`. The geometric readout
is built directly into `\vartheta_{\rho,\psi,t}^{\delta}` and is no longer a
separate wall. Once `(CSP.25g2)` is installed, Lemma `CSP.B3a0` feeds the
annular package automatically and the coefficient input to `CSP.B4` is closed.

### Lemma `CSP.B3b` (Frozen-family packet-source integrability)

If

```math
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(\cdot;I)\in L^1(I),
\tag{CSP.25h}
```

then

```math
\mathfrak S_{N,m,\rho,\psi}^{pkt}\in L^1(I).
\tag{CSP.25i}
```

A stronger exact sufficient source-side form is `(FCI.5f)`. Equivalently, by
Lemma `FCI.A1`,

```math
\int_I\mathfrak S_{N,m,\rho,\psi}^{pkt}(s)\,ds
\le C_{FCI}
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t_0;I)
+
\int_I
\mathcal N_{N,\rho,\psi}^{resp,\varepsilon}(s;I)\,ds
<
\infty.
\tag{CSP.25j}
```

### Proof

The definition `(CSP.25e)` turns `(CSP.25h)` into `(CSP.25i)`. The
last display just rewrites that conclusion using the summed `NRW` control
`(FCI.5e)`. ∎

At this point the two previously hidden `CSP.B3` subslots can be stated
honestly and separately:

1. Lemma `CSP.B1a` and Corollary `CSP.B1b` supply the defining-function and
   annular cutoff control needed to turn `(CSP.13)`, `(CSP.21)`, and
   `(CSP.22)` into actual inequalities on the moving collar;
2. the direct next-rung source-to-segment conversion is the content of Theorem
   `R1.C` in
   [mpp-rung1-to-weighted-segment-control-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-rung1-to-weighted-segment-control-lemma.md):
   `(TB.28)` propagates the packing bridge ledger `P_F^\ast` from the exact
   rung-1 strain source `\mathcal Q_{1,r,\psi}^{str}` and the shifted
   distortion ledger `A_F^\sharp`, while `(PC.11)`--`(PC.12)` convert the
   common collar envelope into the direct segment and weighted-segment packets.
3. Corollary `FCI.A1a` reduces the genuinely inhomogeneous packet source on
   the frozen finite Eulerian family to the source-only interval-integrability
   burden `(FCI.5f)` on the interval-fixed net
   `\Xi_{\rho,\psi}^{\varepsilon}(I)`; the companion source-ledger note
   sharpens that burden structurally to the exact frozen-net split
   `(FSL.A0)` with sufficient channelwise discharge `(FSL.A2)`; the cutoff
   reduction note `FCC.C1`/`FCC.C2` already places the cutoff channel under the
   viscous/coefficient Young-margin inequality once `\mathfrak b_{\psi}^{cut}\in L^1(I)`, so the
   irreducible inhomogeneous source pair beneath `(FCI.5f)` is pressure plus
   strain/cascade; and on the pressure side the companion pressure note
   `FPCR.A`--`FPCR.C` already shows that, under the installed ordinary interval
   energy ledger, the genuinely same-depth pressure object is the frozen-net
   resonant packet sum `\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}`;
   the new companion strain/cascade note `FSCR.A`--`FSCR.C` records the
   matching nonpressure survivor exactly: after cutoff Young-margin reduction, the
   remaining same-depth source theorem is
   `\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}(\cdot;I)\in L^1(I)`; on the
   installed strengthened source branch, the companion closure note
   `FFSRC.A` now combines the widened pressure bridge `(FFPB.A0)` with
   `FFSC.C1` and `FCC.C1`, so the exact same-depth source target `(FCI.5f)`
   already has a one-note sufficient closure package on disk; once that
   strengthened source package is granted, the live one-field burden returns
   entirely to the receiver side.

So the main unresolved burden in `CSP` is no longer an unnamed commutator or a
hidden source-to-segment step. The packet-source side is now exactly the
frozen-family neighboring-response density `(CSP.25c)`, and the transport side
has already been absorbed into `P_{F,\rho,\psi}^{\ast}` by `R1.C`. Lemma
`CSP.B3a0` also removes the annular geometry package as an independent
integrability burden once the pack gauge is already propagated on the common
label collar. The live remaining burden is therefore narrower still: prove that
the lower same-fluid carrier ledger in `(CSP.25f)` is genuinely in `L_t^1(I)`,
then apply `CSP.B4`. The exact theorem-facing surface for that remaining packet
is now
[mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md).

### Lemma `CSP.B4` (Interval closure)

Fix an interval `I=[t_0,t_1]` and assume:

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t_0)<\infty,
\tag{CSP.26}
```

```math
\mathfrak L_{N,m,\rho,\psi}^{sf}\in L^1(I),
\qquad
\mathfrak S_{N,m,\rho,\psi}^{pkt}\in L^1(I).
\tag{CSP.27}
```

Then the one-sided inequality `(CSP.24)` closes by a scalar integrating-factor
argument. More precisely, for every `t\in I`,

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
+
\nu\int_{t_0}^{t}
\exp\!\Big(
\int_s^t
\mathfrak L_{N,m,\rho,\psi}^{sf}(\tau)\,d\tau
\Big)\,
\mathcal D_{N+1,m,\rho,\psi}^{\delta}(s)\,ds
\le
\exp\!\Big(
\int_{t_0}^{t}
\mathfrak L_{N,m,\rho,\psi}^{sf}(\tau)\,d\tau
\Big)
\left[
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t_0)
+
\int_{t_0}^{t}
\exp\!\Big(
-\int_{t_0}^{s}
\mathfrak L_{N,m,\rho,\psi}^{sf}(\tau)\,d\tau
\Big)\,
\mathfrak S_{N,m,\rho,\psi}^{pkt}(s)\,ds
\right].
\tag{CSP.28}
```

In particular,

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
\le
\exp\!\Big(
\int_I \mathfrak L_{N,m,\rho,\psi}^{sf}(s)\,ds
\Big)
\left[
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t_0)
+
\int_I \mathfrak S_{N,m,\rho,\psi}^{pkt}(s)\,ds
\right]
<
\infty.
\tag{CSP.29}
```

Hence `CSP.A` follows.

### Proof

Set

```math
\Phi(t)
:=
\exp\!\Big(
-\int_{t_0}^{t}
\mathfrak L_{N,m,\rho,\psi}^{sf}(s)\,ds
\Big).
\tag{CSP.30}
```

Multiplying `(CSP.24)` by `\Phi(t)` gives

```math
\frac{d}{dt}
\Big(
\Phi(t)\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
\Big)
+
\nu\,\Phi(t)\,
\mathcal D_{N+1,m,\rho,\psi}^{\delta}(t)
\le
\Phi(t)\,
\mathfrak S_{N,m,\rho,\psi}^{pkt}(t).
\tag{CSP.31}
```

Integrating from `t_0` to `t` yields

```math
\Phi(t)\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
+
\nu\int_{t_0}^{t}
\Phi(s)\,
\mathcal D_{N+1,m,\rho,\psi}^{\delta}(s)\,ds
\le
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t_0)
+
\int_{t_0}^{t}
\Phi(s)\,
\mathfrak S_{N,m,\rho,\psi}^{pkt}(s)\,ds.
\tag{CSP.32}
```

Dividing by `\Phi(t)` gives `(CSP.28)`. Since
`\mathfrak L_{N,m,\rho,\psi}^{sf},\mathfrak S_{N,m,\rho,\psi}^{pkt}\in L^1(I)`,
the right-hand side of `(CSP.29)` is finite, proving interval propagation of
`\mathcal K_{N+1,m,\rho,\psi}^{\delta}` on `I`. ∎

## Honest Wall

The hardest point is not the abstract embedding `(PC.14)`. That part is
already isolated.

The real wall is earlier:

```math
\boxed{
\text{derive and close the moving-collar one-rung-higher energy law without losing control of the collar transport/commutator terms.}
}
\tag{CSP.8}
```

So the collar supplier problem is not “find the right norm.” It is:

```math
\boxed{
\text{does the same-fluid packet geometry control the one-rung-higher moving-collar envelope } \sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty?
}
\tag{CSP.9}
```

## Route Position

The forward-invariance route now reads:

1. packing survives through the transport law;
2. participation survives through tethering/no-drop;
3. one-field survives if the frozen-family source theorem `(FCI.5f)` and the
   collar supplier `CSP.A` are both propagated, with the transported-center
   oscillation receiver entering exactly through `EOC.Ca`;
4. therefore lawful class membership is forward-invariant until visible
   surviving class-violation appears.

So `CSP.A` is now an exact live theorem burden, not background support.

## Boundary

This note does **not** yet prove `CSP.A`.

It fixes:

1. the exact collar-Sobolev supplier theorem target;
2. the proof spine needed to attack it;
3. the honest remaining wall `CSP.8`.
