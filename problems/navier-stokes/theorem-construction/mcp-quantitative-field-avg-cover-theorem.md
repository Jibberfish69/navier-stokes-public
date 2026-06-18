# Quantitative Field_avg Cover Theorem

## Statement

Let `T` be a bounded-distortion same-fluid terminal tail with distortion bound `M_sharp`. Assume

```math
Field_{avg}(T).
```

Then there is a terminal subtail `T'`, a radius floor `r_*>0`, and a finite SCF-good cover

```math
T'\subset \bigcup_{j=1}^J Q_{r_j}^{\Phi}(a_j,t_j),
\qquad r_j\ge r_* ,
\qquad SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
```

with overlap

```math
\sum_{j=1}^J 1_{Q_{\theta_m r_j}^{\Phi}}\le \Omega_4(M_\sharp),
```

and with cardinality bound

```math
J\le C_4(M_\sharp)\left(1+{D_T\over r_*}\right)^4,
```

where `D_T` is the parabolic diameter of the retained material tail in same-fluid coordinates.

## Parameter dependence

The constants depend only on

```text
M_sharp, dimension, theta_m, epsilon_m, P_req, D_T/r_*.
```

The local analytic constants in `AACT.KX.local` depend only on

```text
m, N, nu, M_sharp, P_req.
```

The radius floor `r_*` is supplied by `Field_avg`; it is not manufactured by endpoint readout.

## Proof

By `Field_avg`, there are a terminal subtail `T'` and `r_*>0` such that

```math
r_{good}(a,t)\ge 2r_*
\qquad ((a,t)\in T').
```

For each point select an SCF-good same-fluid cylinder of radius in `[r_*,2r_*]`.
In pulled-back same-fluid coordinates, choose a maximal `r_*/4`-separated net in
the retained compact tail.  The `r_*/4` cores are disjoint, the `r_*` cylinders
cover `T'`, and the `\theta_m r_j` dilates have overlap bounded by the
parabolic packing constant after bounded-distortion pushforward:

```math
\sum_j1_{Q_{\theta_m r_j}^{\Phi}}\le\Omega_4(M_\sharp).
```

The selected cylinders have radius at least `r_*` and lie in a set of parabolic
diameter `D_T`; the disjoint `r_*/4` cores give the finite count

```math
J\le C_4(M_\sharp)(1+D_T/r_*)^4.
```

The shrunken cylinders remain SCF-good by the monotonicity/stability built into the strict `epsilon_m` margin. Thus the finite cover is scheduler-ready.

## Consequence

The common scheduler majorants in `AACT.Global` satisfy

```math
B_*:=\sum_{j,p}1_{I_j}B_{j,p},\qquad F_*:=\sum_{j,p}1_{I_j}F_{j,p},
```

with finite sums controlled by `J`, `|P_req|`, and `Omega_4(M_sharp)`. Hence `Field_avg` gives the quantitative cover input required by `AACT.Global.noJump`.

## Boundary

This theorem supplies cover geometry only. The local analytic estimate remains `AACT.KX.local`; terminal readout remains downstream of `End_NS_avg`.
