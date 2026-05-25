# Global Periodic Same-Datum Weak-Branch Euler Import

## Status

Theorem-facing external-import closure for the `ESM.N4` same-datum
nonclassical weak-branch row.

Role: record exactly what the accepted Wiedemann weak-solution theorem supplies
to the Euler mirror: for periodic incompressible Euler in dimension `d>=2`,
every solenoidal `L^2` datum, hence every smooth divergence-free datum, has
infinitely many global weak Euler solutions with bounded energy. This closes the
same-datum weak-branch row as a weak/nonclassical Euler phenomenon. It does not
claim the classical smooth branch blows up, and it does not install an
admissibility-selected branch.

External source:

- Emil Wiedemann, "Existence of weak solutions for the incompressible Euler
  equations", Ann. Inst. H. Poincare Anal. Non Lineaire 28 (2011), no. 5,
  727-730, DOI `10.1016/j.anihpc.2011.05.002`.
- arXiv source: <https://arxiv.org/abs/1102.3614>
- journal record: <https://ems.press/journals/aihpc/articles/4076394>
- Numdam record: <https://www.numdam.org/articles/10.1016/j.anihpc.2011.05.002/>

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N4` nonsmooth-control row.

## Imported Theorem Shape

For periodic boundary conditions and dimension `d>=2`, Wiedemann proves:

```math
v_0\in L^2(\mathbb T^d),\qquad \nabla\cdot v_0=0
\quad\Longrightarrow\quad
\text{infinitely many global weak incompressible Euler solutions}
\tag{WP.1}
```

with initial data `v_0` and energy bounded in time.

For the Euler mirror, choose `v_0 in C^\infty(T^d)` divergence-free. Then
`v_0` is an allowed datum in `(WP.1)`, so there are infinitely many global weak
solutions from that same smooth datum.

## Consequence For Smoothness

The imported theorem gives same-datum weak nonuniqueness. It separates weak
Euler membership from the classical one-field branch:

```math
\text{same smooth datum}
\leadsto
\text{many global weak Member_E branches}.
\tag{WP.2}
```

At most one branch can be the classical smooth solution on any interval where
the classical solution exists and classical uniqueness applies. Therefore the
import supplies nonclassical weak branches from the same smooth datum.

The theorem does not prove:

```math
\text{the classical smooth branch loses smoothness at finite time}.
\tag{WP.3}
```

It also does not supply a selected physical/admissible branch unless an
additional admissibility theorem is added.

## Route Readback

This closes the global version of `ESM.N4` in its exact class:

```text
smooth periodic divergence-free datum
-> external Wiedemann theorem
-> infinitely many global bounded-energy weak Euler branches
-> same-datum nonclassical weak-branch phenomenon.
```

The branch consequence is a weak-membership theorem, not a classical blowup
theorem. It is still important for the NS comparison: fixed-positive-viscosity
classical transfer cannot identify these weak Euler branches with the unique
smooth Navier-Stokes branch.
