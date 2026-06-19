# Gold modulated Zeno rescaled-field pressure test

Status: exploratory gold-route pressure test, not an installed proof.

This note records the June 17 gold-criterion experiment: replace the rigid
Laurent terminal expansion by a modulated parabolic Zeno rescaled field and test
whether a terminal annular collapse can be killed before it becomes a CM exit.

## 1. Why the fixed Laurent test is too rigid

Set

```math
s=T^*-t,
\qquad
u(t,\cdot)=s^{-K}u_{-K}+o_{L^2(\Omega)}(s^{-K})
\quad\text{on a fixed positive-volume region }\Omega.
```

If \(u_{-K}\neq 0\), then

```math
\|u(t)\|_{L^2_x}^2
\ge
{1\over2}s^{-2K}\|u_{-K}\|_{L^2(\Omega)}^2
```

Finite energy forces \(u_{-K}=0\), and descending induction kills the whole
negative principal part. This proves only that a fixed-spatial Laurent pole is
not the right hiding place for a finite-energy Navier--Stokes singularity.

The annular/Zeno case can avoid that argument because the support radius also
shrinks.  If, on a selected ball of radius `lambda(t)`, the exact rescaling

```math
u(t,x)=\lambda(t)^{-1}U_t\!\left({x-x_*(t)\over\lambda(t)}\right)
```

holds with `0<c<=||U_t||_{L^2(B_1)}<=C<infty`, then the change of variables gives

```math
\int_{B_{\lambda(t)}(x_*(t))}|u(t,x)|^2\,dx
=
\lambda(t)\|U_t\|_{L^2(B_1)}^2.
```

Thus finite energy does not forbid amplitude `lambda(t)^{-1}` under this
explicit moving-support hypothesis.

## 2. Modulated parabolic ansatz

Use the Navier--Stokes scaling instead:

```math
y=\frac{x-x_*(t)}{\lambda(t)},
\qquad
\frac{ds}{dt}=\frac{1}{\lambda(t)^2},
```

and write

```math
u(t,x)=\frac{1}{\lambda(t)}U(s,y),
\qquad
p(t,x)=\frac{1}{\lambda(t)^2}P(s,y).
```

With

```math
b(s):=-\frac{\lambda_s}{\lambda},
\qquad
c(s):=\frac{x_{*,s}}{\lambda},
\qquad
\Lambda U:=U+y\cdot\nabla_y U,
```

the rescaled equation is

```math
U_s-\nu\Delta_y U+(U\cdot\nabla_y)U+\nabla_y P
+b(s)\Lambda U-c(s)\cdot\nabla_y U=0,
\qquad
\nabla_y\cdot U=0.
```

The Zeno condition \(\lambda(s)\downarrow0\) is

```math
\int^{\infty} b(s)\,ds=+\infty.
```

This is the correct fluid replacement for a Laurent pole. The singularity is
not a fixed negative power of \(T^*-t\); it is an orbit in renormalized scale.

## 3. The energy identity explains why this is hard

For a rescaled field `U` in `H^1` with enough decay, or with boundary conditions
that remove the integration-by-parts boundary terms, multiply the rescaled
equation by \(U\). The transport, pressure, and translation terms then vanish,
while

```math
\langle \Lambda U,U\rangle_{L^2(\mathbb R^3)}
=
\int |U|^2\,dy+\int (y\cdot\nabla U)\cdot U\,dy
=
-\frac12\|U\|_{L^2_y}^2.
```

Thus

```math
\frac12\frac{d}{ds}\|U\|_{L^2_y}^2
+\nu\|\nabla_y U\|_{L^2_y}^2
-\frac{b(s)}2\|U\|_{L^2_y}^2
=0.
```

Equivalently,

```math
\frac{d}{ds}\|U\|_{L^2_y}^2
+2\nu\|\nabla_y U\|_{L^2_y}^2
=
b(s)\|U\|_{L^2_y}^2.
```

So the shrinking-scale drift pumps renormalized energy. This is why the old
Zeno rigid-class search failed to produce finite global ancient energy: the
rescaled \(L^2\) norm is allowed to grow as physical scale shrinks.

## 4. First gold mechanism: rate-locking gives a Liouville target

If a terminal Zeno residue has a nonzero modulated limit and the modulation
locks,

```math
b(s)\to b_0\ge 0,
\qquad
c(s)\to c_0,
\qquad
U_s\to0,
```

then the terminal rescaled field solves the steady Leray-type equation

```math
-\nu\Delta U+(U\cdot\nabla)U+\nabla P
+b_0\Lambda U-c_0\cdot\nabla U=0,
\qquad
\nabla\cdot U=0.
```

This is now a rigid ancient/self-similar class. Any available Liouville theorem
for finite-energy, critical, or suitably localized rescaled fields would force

```math
U=0.
```

That contradicts a positive terminal source residue. Therefore a nonzero
terminal Zeno atom must avoid rate-locking unless it already belongs to a
Liouville class.

This converts the gold obstruction into a precise dichotomy:

```math
\boxed{
\text{positive terminal Zeno residue}
\Longrightarrow
\text{rate-locked ancient rescaled field}
\quad\text{or}\quad
\text{non-locking scale cascade}.
}
```

The first branch is the Liouville branch.

The case \(b_0=0\) is the quasi-static endpoint. It no longer gives the
backward self-similar Leray term, but it still produces a steady ancient
profile equation:

```math
-\nu\Delta U+(U\cdot\nabla)U+\nabla P-c_0\cdot\nabla U=0,
\qquad
\nabla\cdot U=0.
```

So \(b_0=0\) must be treated as a stationary Liouville branch, not as
non-locking merely because the scale collapse is slower than self-similar.

## 5. Second gold mechanism: non-locking must pay scale-change action

The non-locking branch has to keep changing scale, center, orientation, or
annular support fast enough to avoid a fixed ancient rescaled field. The proposed
gold tax is a scale-action quantity such as

```math
\mathfrak A_{\mathrm{mod}}
=
\int^\infty
\left(
\left|\partial_s\log b(s)\right|^2
+|c_s(s)|^2
+\mathrm{dist}_{\mathcal R}(U(s),U(s+\Delta s))^2
\right)\,ds,
```

where \(\mathcal R\) denotes the quotient by translations, rotations, and
allowed scale gauges.

The hoped-for theorem is not that this exact displayed action is already
canonical. The theorem shape is:

```math
\boxed{
\text{non-locking terminal Zeno cascade}
\Longrightarrow
\text{positive scale-change action on infinitely many scale steps}.
}
```

Then the source/energy side must show

```math
\mathfrak A_{\mathrm{mod}}
\le
C\cdot \text{finite NS budget},
```

or, more sharply, that infinitely many legal Zeno scale changes force an
unavailable terminal source pulse. This would be the gold form of
`TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A`.

This displayed action is only a first candidate functional. It is not strong enough by itself.
For example,

```math
b(s)=\frac{\alpha}{1+s},
\qquad
\alpha>\frac12,
```

gives

```math
\lambda(s)=\lambda(0)(1+s)^{-\alpha},
\qquad
\int^\infty \lambda(s)^2\,ds<\infty,
```

so the terminal time is still finite, while

```math
\int^\infty |\partial_s\log b(s)|^2\,ds
=
\int^\infty \frac{ds}{(1+s)^2}<\infty.
```

Thus square variation of the scale clock does not force an infinite cost. A
slowly oscillating clock can also avoid convergence while keeping
square-integrable derivative.

The corrected branch target is therefore not raw \(L^2_s\) modulation action.
It must be one of:

```math
\text{precompact/rate-convergent ancient rescaled field}
```

or

```math
\text{terminal source-time thickness / super-}L^1_t\text{ integrability}
```

or

```math
\text{scale-critical reserve/Carleson budget on selected source packets.}
```

Non-locking has to be charged by a clock that sees terminal source production,
not merely by smooth variation of the scale parameter.

## 6. Mellin version of the same trick

A Laurent expansion is additive in \(T^*-t\). An annular Zeno cascade is
multiplicative in radius, so the more natural spectral variable is

```math
q=-\log r.
```

The radial Mellin variable does not require a shape ansatz.  For `r>0`, define

```math
V(s,q,\theta):=r\,u(t,r,\theta),
\qquad
q=-\log\frac{r}{\lambda(t)}.
```

Then the identity

```math
u(t,r,\theta)
=
\frac1r V(s,q,\theta)
```

holds.  The Mellin transform in radius,

```math
\mathcal M[u](z,\theta)
=
\int_0^\infty r^{z-1}u(r,\theta)\,dr,
```

turns annular power laws into poles. A terminal atom becomes a pole or
non-decaying mode in the renormalized \(q\)-flow. Finite energy and enstrophy
then impose allowed strips.  For an exact local power energy test, assume that
the angular `L^2(S^2)` amplitude is bounded above and below:

```math
0<c\le r^a\|u(r,\cdot)\|_{L^2(S^2)}\le C<\infty
\quad (0<r<\epsilon).
```

Then, in three dimensions,

```math
\int_0^\epsilon |u|^2 r^2\,dr <\infty
\quad\Longleftrightarrow\quad
a<\frac32,
```

For the exact model class `u(r,\theta)=r^{-a}W(\theta)` with
`0<||W||_{L^2(S^2)}` and `W` smooth enough that the radial/angular gradient
has the same power, fixed-time enstrophy requires

```math
\int_0^\epsilon |\nabla u|^2 r^2\,dr <\infty
\quad\Longleftrightarrow\quad
a<\frac12.
```

The Navier--Stokes critical amplitude \(a=1\) is energy-legal but
enstrophy-singular at a fixed time. Zeno can still hide because the time
integral over a shrinking parabolic cylinder may remain finite. Therefore the
Mellin route cannot stop at a strip test; it must prove that the critical pole
either locks into a Liouville rescaled field or pays a source-clock /
scale-critical reserve cost.

## 7. Verdict

The experiment does not close the gold theorem outright.

It does produce a sharper candidate theorem:

```math
\boxed{
\textbf{Modulated Zeno anti-atom theorem.}
}
```

Every positive terminal Zeno source-residue branch for a smooth-data
Navier--Stokes evolution either:

1. has a rate-locked/precompact modulated ancient limit, hence falls under a
   Liouville theorem and has zero residue; or
2. fails to lock, and the selected source packets pay a terminal source-clock,
   scale-critical reserve, or super-\(L^1_t\) cost strong enough to exclude a
   time-face atom.

In symbols:

```math
\mu_*^{src}(Q_1^-)>0
\Longrightarrow
\left[
\text{Liouville ancient rescaled-field class}
\right]
\ \lor\
\left[
\text{terminal source-clock cost}
\right].
```

Then

```math
\text{Liouville ancient rescaled-field class}\Longrightarrow \mu_*^{src}=0,
```

and

```math
\text{terminal source-clock cost}
\Longrightarrow
\text{forbidden terminal new-production cost}.
```

This is the promising gold trick: not a Laurent principal-part cancellation,
but a renormalization dichotomy between rigidity and source-clock cost.

## 8. What survived and what broke

Survived:

- Fixed Laurent poles are genuinely removable under finite energy.
- The modulated parabolic rescaled field is the correct fluid replacement for Laurent.
- Rate-locking produces the known kind of rigid ancient/Liouville target.
- Non-locking isolates the missing gold theorem as a source-clock,
  scale-critical reserve, or branch-complexity theorem.

Broke:

- Finite energy alone cannot kill a shrinking annular pole.
- Fixed-time enstrophy intuition does not by itself kill a parabolic Zeno
  cascade.
- Square-integrable modulation variation does not by itself exclude terminal
  Zeno collapse.
- The old rigid-class search remains correctly marked open unless this new
  modulation dichotomy is proved.
