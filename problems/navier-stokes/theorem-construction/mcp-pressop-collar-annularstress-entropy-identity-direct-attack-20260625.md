---
theorem_id: pressop-collar-annularstress-entropy-identity-direct-attack-20260625
status: direct-attack-installed; oriented differential algebra obtained; bounded-below entropy not obtained
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the exact displayed available-entropy identity for the remaining
  one-way pressure/RHS, transported-collar, and annular stress-work growth
  sector. The natural oriented storages are the negatives of the pressure
  elliptic energy, higher-collar material record, and transported annular
  energy. Their derivatives tax the positive growth orientation after the
  installed wrong-sign recirculation closure. The annular energy part is
  bounded below by physical energy, but the pressure/operator and higher-collar
  negative storages are bounded below exactly when the continuation-depth
  pressure/collar material record is already bounded. Therefore the displayed
  differential identity is not yet a closed available-entropy theorem; the
  remaining missing object is a bounded-below replacement for the negative
  pressure/operator plus higher-collar record, or an equivalent direct
  no-free-one-way-growth theorem for the same material block.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-pressure-operator-variation-is-strain-hessian-clock-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-projection-commutator-pressure-operator-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-annularstressworktermresolution-a-coupledplssymmetrizerfullconstructionattempt-a-9409e3f246.md
  - problems/navier-stokes/theorem-construction/mcp-orientedtaxatsourcerecirculationsplit-a-nullmodecorrectedparticipationclock-a-7861da3484.md
  - problems/navier-stokes/theorem-construction/mcp-wrongsignactiveplsrecirculationclosure-a-nullmodecorrectedparticipationclock-a-20260625.md
---

# PressOp / Collar / Annular Stress Entropy Identity Direct Attack

Date: 2026-06-25

## 0. Target

Attack the exact identity

```math
d\mathscr A_N^{press/op}
+
d\mathscr A_N^{collar}
+
d\mathscr A_N^{annular\ stress}
+
c_N
\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
+
d\Omega_N^{annular\ stress}
\right)
\le
dR_N^{legal}.
\tag{PCA.1}
```

The terms are read on one transported material packet:

```math
x=X(a,t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
```

with

```math
A=(D_aX)^{-1},
\qquad
G=AA^\top,
\qquad
L_G=-\operatorname{div}_a(G\nabla_a).
\tag{PCA.2}
```

The allowed right side contains only residuals already legal in the live edge:
subcritical local-energy terms, finite-overlap terms, already-paid viscosity /
top-strain / coefficient-frame pieces, and the already-closed wrong-sign
recirculation residue.  It cannot contain the one-way pressure/RHS, higher
collar, or annular stress-work superheat block being attacked here.

## 1. Pressure/operator block

The material pressure equation has the form

```math
L_G q=R,
\qquad
R=\operatorname{tr}(B^2),
\qquad
B=(\nabla_xu)\circ X.
\tag{PCA.3}
```

The natural elliptic pressure energy is

```math
E_p(t)
:=
{1\over2}\langle q,L_Gq\rangle
=
{1\over2}\int G\nabla_aq\cdot\nabla_aq\,da .
\tag{PCA.4}
```

Differentiate `(PCA.4)`.  Since `L_G q=R`,

```math
\dot E_p
=
\langle q,\dot R\rangle
-
{1\over2}\langle q,\dot L_Gq\rangle .
\tag{PCA.5}
```

The material pressure-operator identity gives

```math
\dot G=-2ASA^\top,
\qquad
\dot L_G f
=
2\,\operatorname{div}_a(ASA^\top\nabla_af).
\tag{PCA.6}
```

Therefore

```math
-{1\over2}\langle q,\dot L_Gq\rangle
=
\int ASA^\top\nabla_aq\cdot\nabla_aq\,da .
\tag{PCA.7}
```

So

```math
\dot E_p
=
\langle q,\dot R\rangle
+
\int ASA^\top\nabla_aq\cdot\nabla_aq\,da .
\tag{PCA.8}
```

This is exactly the pressure/RHS plus material strain-operator service.  It is
same-packet and coupled; it is not pressure-only.  It is also signed.

The storage orientation that taxes positive pressure/operator growth is

```math
\mathscr A_N^{press/op}:=-E_{p,N},
\tag{PCA.9}
```

where \(E_{p,N}\) is the finite-depth version of `(PCA.4)`, including the
same-depth pressure/Hodge operator record.  Let

```math
\mathcal P_N^{press/op}
:=
{d\over dt}E_{p,N}
```

and

```math
d\Omega_N^{press/RHS}
:=
(\mathcal P_N^{press/op})_+\,dt
```

after the already-installed separation of wrong-sign recirculation from
one-way growth.  Then for \(0<c_N\le1\),

```math
d\mathscr A_N^{press/op}
+
c_Nd\Omega_N^{press/RHS}
\le
(\mathcal P_N^{press/op})_-\,dt
+
dR_N^{press,legal}.
\tag{PCA.10}
```

The term \((\mathcal P_N^{press/op})_-dt\) is handled only when it is a
recirculation/backscatter piece.  That branch is supplied by the installed
wrong-sign PLS recirculation closure.  The one-way positive orientation is
taxed by `-E_{p,N}`.

The lower-bound problem is immediate:

```math
\mathscr A_N^{press/op}(t)\ge -C
\quad\Longleftrightarrow\quad
E_{p,N}(t)\le C.
\tag{PCA.11}
```

But \(E_{p,N}\) is a continuation-depth pressure/operator record.  Bounding it
is already part of the desired material-record control.  Thus the oriented
differential algebra is correct, but `-E_{p,N}` is circular as a closed
available entropy.

## 2. Collar block

At base level, a transported cutoff

```math
\phi(x,t)=\psi(a),
\qquad
x=X(a,t),
```

satisfies

```math
D_t\phi=0,
\qquad
\nabla_x\phi=A^\top\nabla_a\psi.
\tag{PCA.12}
```

The base collar variation is already absorbed by the material frame:

```math
D_t\nabla_x\phi
=
-(\nabla_xu)^\top\nabla_x\phi .
\tag{PCA.13}
```

So the remaining collar block in `(PCA.1)` is the higher finite-depth collar
tower, namely the \(D_a^\beta A\), \(D_a^\beta G\), pressure/Hodge, and
interface corrections appearing when the same transported collar is read at
depth \(N\).

Let \(E_{coll,N}\) denote the natural positive finite-depth collar record.  Its
derivative has the form

```math
{d\over dt}E_{coll,N}
=
\mathcal P_N^{collar}
+
r_N^{collar,legal},
\tag{PCA.14}
```

where \(\mathcal P_N^{collar}\) is generated by the same material coefficient,
pressure/RHS, Hodge, and stress-interface service.  It is not an external
collar source.

The oriented storage is

```math
\mathscr A_N^{collar}:=-E_{coll,N}.
\tag{PCA.15}
```

With

```math
d\Omega_N^{collar}:=(\mathcal P_N^{collar})_+\,dt,
```

the same sign calculation gives

```math
d\mathscr A_N^{collar}
+
c_Nd\Omega_N^{collar}
\le
(\mathcal P_N^{collar})_-\,dt
+
dR_N^{collar,legal}.
\tag{PCA.16}
```

Again, the wrong-sign recirculatory piece is finite by the installed
recirculation theorem.  The one-way positive orientation is taxed by
`-E_{coll,N}`.

The lower-bound problem is the same:

```math
\mathscr A_N^{collar}(t)\ge -C
\quad\Longleftrightarrow\quad
E_{coll,N}(t)\le C.
\tag{PCA.17}
```

For the base collar geometry this has already been reduced to top-strain log
storage.  For the higher collar tower, `(PCA.17)` is continuation-depth control.
So `-E_{coll,N}` is not a noncircular available entropy unless a bounded-below
replacement is found.

## 3. Annular stress block

For a transported cutoff,

```math
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
\qquad
T=-pI+2\nu S,
\tag{PCA.18}
```

the exact annular stress-work identity is

```math
{d\over dt}M_\phi(t)
+
2\nu\int\phi |S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx.
\tag{PCA.19}
```

Let

```math
F_\phi(t):=-\int u\cdot T\nabla\phi\,dx,
\qquad
D_\phi(t):=2\nu\int\phi |S|^2\,dx.
\tag{PCA.20}
```

Then

```math
\dot M_\phi+D_\phi=F_\phi.
\tag{PCA.21}
```

The storage orientation that taxes positive annular stress feed is

```math
\mathscr A_N^{annular\ stress}:=-M_{\phi,N},
\tag{PCA.22}
```

with the null-mode and finite-depth corrections already installed in the
annular stress-work notes.  Then

```math
d\mathscr A_N^{annular\ stress}
=
-F_{\phi,N}\,dt
+
D_{\phi,N}\,dt
+
dR_N^{ann,legal}.
\tag{PCA.23}
```

For

```math
d\Omega_N^{annular\ stress}:=(F_{\phi,N})_+\,dt,
```

and \(0<c_N\le1\),

```math
d\mathscr A_N^{annular\ stress}
+
c_Nd\Omega_N^{annular\ stress}
\le
D_{\phi,N}\,dt
+
(F_{\phi,N})_-\,dt
+
dR_N^{ann,legal}.
\tag{PCA.24}
```

Here the lower bound is not the obstruction:

```math
-M_{\phi,N}(t)\ge -C_N E_0
\tag{PCA.25}
```

for the base energy part, with null-mode corrections controlled by the same
local energy/strain record already installed.  The annular stress block is the
one piece whose natural negative storage is physically bounded below.

The remaining terms in `(PCA.24)` are already classified: \(D_{\phi,N}\) is
viscous/strain service, the wrong-sign part is recirculation/backscatter, and
finite-overlap lower-order terms are legal.  Thus annular stress-work does not
block `(PCA.1)` by itself.

## 4. Summing the three oriented attacks

Define the natural oriented candidate

```math
\mathscr A_N^{nat}
:=
-E_{p,N}
-E_{coll,N}
-M_{\phi,N}.
\tag{PCA.26}
```

Summing `(PCA.10)`, `(PCA.16)`, and `(PCA.24)` gives

```math
\begin{aligned}
d\mathscr A_N^{nat}
&+
c_N\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
+
d\Omega_N^{annular\ stress}
\right)
\\
&\le
dR_N^{legal}
+
dR_N^{recirc}
+
D_{\phi,N}\,dt .
\end{aligned}
\tag{PCA.27}
```

After the installed wrong-sign recirculation closure and already-paid
viscous/top-strain/legal reductions, `(PCA.27)` has the desired differential
shape.

The obstruction is not the sign algebra.  The obstruction is the lower bound
needed for this to be an entropy:

```math
\mathscr A_N^{nat}(t)\ge -C_N(u_0)
\quad\Longleftrightarrow\quad
E_{p,N}(t)+E_{coll,N}(t)+M_{\phi,N}(t)\le C_N(u_0).
\tag{PCA.28}
```

The \(M_{\phi,N}\) part is controlled by physical energy and installed
null-mode reductions.  The \(E_{p,N}+E_{coll,N}\) part is exactly the
continuation-depth pressure/operator and higher-collar material record.
Controlling it is the intended conclusion.

Thus the natural storage proves the tax orientation but closes the theorem
only circularly.

## 5. Consequence for the displayed identity

The displayed identity `(PCA.1)` is not currently proved as a closed
available-entropy law.

What is proved by the direct attack is the sharper statement:

```math
\text{negative natural pressure/collar/stress energies tax the one-way
growth orientation,}
```

but

```math
\text{the negative pressure/operator and higher-collar energies are not
bounded below without the continuation-depth material record.}
```

Therefore the remaining noncircular theorem is exactly one of the following
equivalent forms:

```math
\exists\ \widetilde{\mathscr A}_N^{press/op+collar}
\ge
-C_N(u_0)
```

such that

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+
c_N\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\right)
\le
dR_N^{legal},
\tag{PCA.29}
```

or a direct no-free-one-way-growth theorem

```math
\int_0^{T^*}
\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
+
d\Omega_N^{annular\ stress}
\right)
<\infty
\tag{PCA.30}
```

for the same transported material history, without using the boundedness of
\(E_{p,N}+E_{coll,N}\) as an input.

## Verdict

The exact identity has been attacked at the three terms named in it.

The annular stress part has the right bounded-below storage.  The
pressure/operator and higher-collar parts have the right oriented differential
storage but the wrong lower-bound status.  The missing object is not another
readout, not viscosity alone, and not pressure alone.  It is a bounded-below
same-material replacement for the negative pressure/operator plus higher-collar
record, or the equivalent direct finite one-way growth theorem for that same
PLS block.
