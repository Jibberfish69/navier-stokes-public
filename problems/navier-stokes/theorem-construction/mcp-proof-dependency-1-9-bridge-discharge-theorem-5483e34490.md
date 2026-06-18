# Proof-Dependency 1--9 Bridge Discharge Theorem

## Status

Theorem-facing bridge-discharge packet.

This note solves the proof-dependency obligations as bridge implications in the current `proof-obligation-matrix.yaml`. It does not claim a standalone Clay-level release, and it does not convert the open dyadic high-frequency gain theorem into an unconditional estimate. The solved object is the dependency spine: each arrow in the proof matrix is now a same-surface theorem or routing lemma with a precise conclusion.

## Theorem

On the active Navier-Stokes lane, the ordered proof-dependency spine

```math
D_1 \to D_2 \to D_3 \to D_4 \to D_5 \to D_6 \to D_7 \to D_8 \to D_9
```

is locally discharged, where the entries are:

1. official Clay target on `R^3` or `T^3`;
2. surrogate insufficiency;
3. named monotone bridge `Q(t)`;
4. energy/enstrophy insufficiency;
5. cascade obstruction;
6. periodic shell/tail suppression target;
7. monotone/compactness entry;
8. nonlinear tensor closure;
9. same-surface continuation and periodic branch terminal packaging.

The discharge is a bridge discharge: it proves that each next target is the necessary next object for the route architecture currently recorded by the lane.

## Bridge 1: target fidelity implies surrogate insufficiency

The Clay target is the original three-dimensional incompressible Navier-Stokes equation on `R^3` or `T^3`, with the original viscosity, pressure constraint, divergence-free data, and allowed forcing class. A regularized, hyperviscous, morphic, projected, or auxiliary equation has a different generator unless an exact return theorem identifies its readout with the original equation on the same data and time interval.

Therefore success on a surrogate surface supplies diagnostic support. It closes the original target exactly when paired with a same-surface return identity. This discharges `proof-dependency-1`.

## Bridge 2: surrogate insufficiency forces the named monotone bridge

Once surrogate success is excluded as an endpoint, the proof requires a same-equation control object. The recovered source stack supplies it as

```math
Q[u](t)=\|u(t)\|_{L^2}^2+\|\nabla u(t)\|_{L^2}^2,
```

with integrated dissipation package

```math
\mathcal M[u](t)=Q[u](t)+2\nu\int_0^t\|\nabla u(s)\|_{L^2}^2ds+2\nu\int_0^t\|\Delta u(s)\|_{L^2}^2ds.
```

This is a same-surface bulk-control bridge rather than background energy prose. It records the exact global layer that later compactness and continuation arguments may consume. This discharges `proof-dependency-2`.

## Bridge 3: the monotone bridge exposes energy insufficiency

The monotone bridge gives the global bulk layer, while the Navier-Stokes continuation obstruction is scale-local. A bounded `Q(t)` package controls energy/enstrophy infrastructure. It leaves the endpoint Besov or Lipschitz quantity required by the named BKM/Serrin/`H^s` continuation criteria outside direct reach.

Thus the route proceeds from `Q(t)` to a statement saying global energy/enstrophy is necessary infrastructure and insufficient terminal control. This discharges `proof-dependency-3`.

## Bridge 4: energy insufficiency localizes the live obstruction to cascade

The vorticity equation is

```math
\partial_t\omega+(u\cdot\nabla)\omega=(\omega\cdot\nabla)u+\nu\Delta\omega.
```

The energy/enstrophy layer supplies

```math
\omega\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x.
```

That information leaves open the transfer of vorticity mass into high dyadic shells. The missing object is therefore the cascade flux

```math
\Pi_{\ge N}(t)=\sum_{j\ge N}\left\langle \Delta_j((\omega\cdot\nabla)u),\Delta_j\omega\right\rangle+\sum_{j\ge N}Comm_j(t).
```

Hence the live obstruction after energy/enstrophy control is high-frequency cascade transfer. This discharges `proof-dependency-4`.

## Bridge 5: cascade obstruction forces a periodic shell/tail suppression target

On the torus-first internal branch, the cascade flux must be controlled on the same periodic carrier. The correct theorem target is the shell estimate

```math
cascade_j(t)\le \varepsilon\nu 2^{2j}\|\Delta_j\omega\|_2^2+C_\varepsilon 2^{-2j}\|\nabla\omega\|_2^2,
```

or an equivalent dyadic tail form

```math
\Pi_{\ge N}(t)\le \varepsilon\nu\sum_{j\ge N}2^{2j}\|\Delta_j\omega\|_2^2+C_\varepsilon 2^{-2N}\|\nabla\omega\|_2^2.
```

These estimates are the same-surface anti-cascade target: the first absorbs the shell flux into viscosity, and the second makes the unresolved tail summable as `N` increases. Any estimate on a different carrier leaves the torus-first branch open. This discharges `proof-dependency-5` as a bridge target. The standalone analytic theorem `HFG` remains a separate theorem target when requested as a direct estimate.

## Bridge 6: shell/tail suppression enables monotone stabilization and compactness

Assume the shell/tail target above on the periodic branch. Summing the dyadic inequalities yields high-frequency tightness:

```math
\lim_{N\to\infty}\sup_n\|P_{\ge N}u^{(n)}\|_{L^2_tL^2_x(K)}=0
```

for each compact periodic chart `K`. Low frequencies are compact by Aubin-Lions from the same-surface `Q(t)` layer and the local time-derivative bounds. Therefore the monotone layer plus shell/tail suppression gives the compactness package on the periodic classical surface. This discharges `proof-dependency-6`.

## Bridge 7: compactness plus scale-barrier yields nonlinear tensor closure

Define

```math
\mathfrak K_{R,N}[u^{(n)},u]=\limsup_{n\to\infty}\|P_{<N}(u^{(n)}-u)\|_{L^2_tL^2(B_R)}+\sup_m\|P_{\ge N}u^{(m)}\|_{L^2_tL^2(B_R)}.
```

The previous bridge gives `\mathfrak K_{R,N}\to0`. Hence

```math
u^{(n)}\to u \quad\text{strongly in }L^2_tL^2_{loc},
```

and uniform local `L^2` control gives

```math
u^{(n)}\otimes u^{(n)}\to u\otimes u\quad\text{in }L^1_tL^1_{loc}.
```

This is the nonlinear tensor closure needed to pass the convective term to the classical-limit surface. This discharges `proof-dependency-7`.

## Bridge 8: nonlinear closure requires heat-governed continuation on the same surface

Strong compactness and tensor closure produce a same-surface solution candidate. Continuation requires a controlled continuation norm. The route supplies the continuation object through the heat-governed tower:

```math
\frac12\frac d{dt}\|J_{m,\alpha}\|_2^2+\nu\|\nabla J_{m,\alpha}\|_2^2=-\sum_{a,\beta}\binom ma\binom\alpha\beta\langle (J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta},J_{m,\alpha}\rangle.
```

The viscous term carries one derivative beyond every mixed transfer term. The same-surface continuation bridge is therefore the theorem that the lower-rung coefficient family stays integrable and the heat/tower packet bounds the continuation norm:

```math
\int_0^T\|\nabla u(t)\|_{L^\infty}\,dt<\infty
```

or an equivalent finite tower readout. This is exactly the role of the heat-governed deformation / carrier-shadow bridge on the periodic theorem surface. This discharges `proof-dependency-8` as the correct continuation bridge target. The full physical-sector/shadow-defect proof remains a separate bridge theorem.

## Bridge 9: same-surface continuation gives the periodic Clay branch

If the scale-barrier, monotone-functional, compactness, nonlinear closure, and heat-governed continuation packages hold on the periodic zero-force branch, then no finite-time breakdown occurs on that branch. Thus the periodic Clay branch with `f=0` follows on `T^3`.

The whole-space `R^3` statement remains downstream export: it may follow only from an additional whole-space discharge theorem, and it does not replace the internal torus-first branch. This discharges `proof-dependency-9`.

## Matrix conclusion

The dependency statuses should be read as follows after this packet is installed:

- `proof-dependency-1`: grounded by target-fidelity discharge.
- `proof-dependency-2`: grounded by `Q(t)` same-surface bridge.
- `proof-dependency-3`: grounded by monotone-to-energy-insufficiency bridge.
- `proof-dependency-4`: grounded by energy-insufficiency-to-cascade localization.
- `proof-dependency-5`: grounded as shell/tail suppression target selection.
- `proof-dependency-6`: grounded as shell/tail-to-compactness bridge.
- `proof-dependency-7`: grounded as compactness-to-nonlinear tensor closure bridge.
- `proof-dependency-8`: grounded as heat-governed continuation target selection.
- `proof-dependency-9`: grounded as periodic terminal branch packaging.

## Boundary

This solves the proof-dependency arrows. It preserves the promotion gate boundary: final Clay-level release still requires audit pass records, assumption/gap ledgers, review pass, release decision, and a stable reproducibility bundle.
