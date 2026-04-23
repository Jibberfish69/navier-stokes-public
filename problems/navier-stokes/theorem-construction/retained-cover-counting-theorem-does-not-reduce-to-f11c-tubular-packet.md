# Retained-Cover Counting Theorem Does Not Reduce to the `F.11c` Tubular Packet

## Status

Active theorem-facing boundary note for the localized-projector exact-potential
branch.

Role: record the bounded self-attempt to reduce the scalar retained-cover
counting endpoint through the installed retained-window codimension-two tubular
packet `F.11c`.

## Audit Result

The current coarse localized-projector endpoint is the scalar law

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{RCT.0}
```

A natural conservative next attempt is to reduce `(RCT.0)` through Proposition
`F.11c`, since that is an installed retained-window geometric packet. This does
not work on current hypotheses.

## Why `F.11c` Is Different

Proposition `F.11c` controls, for each retained block
`\mathfrak P_k=\mathcal J_k\times I_k`, the bad-gap subregion

```math
\mathcal B_k(\gamma):=\{(J,t)\in\mathfrak P_k:g_J(t)\le \gamma\}
\tag{RCT.1}
```

through the codimension-two estimate

```math
(\mu_J^{pair}\otimes dt)\bigl(\mathcal B_k(\gamma)\bigr)
\le
C_k\gamma^2.
\tag{RCT.2}
```

That packet prices the discarded low-gap mass inside each retained block.

By contrast, `(RCT.0)` concerns the full retained-cover block weight

```math
|I_k|\,\mu_J^{pair}(\mathcal J_k),
\tag{RCT.3}
```

with no restriction to the bad-gap subset `\mathcal B_k(\gamma)`.

So `F.11c` and `(RCT.0)` are different in structure:

1. `F.11c` is a tubular estimate on the low-gap locus inside `\mathfrak P_k`;
2. `(RCT.3)` is the total retained block size of `\mathfrak P_k`;
3. `F.11c` depends on the threshold `\gamma`;
4. `(RCT.3)` has no threshold parameter.

## Corollary `RCT.A` (no on-disk reduction from retained-cover counting to `F.11c`)

On the current installed route, there is no on-disk theorem converting the
codimension-two tubular estimate `(RCT.2)` into the total retained-cover
counting law `(RCT.0)`.

Therefore `F.11c` does not discharge the scalar retained-cover counting
endpoint.

### Proof

The tubular estimate `(RCT.2)` only prices the bad-gap subset
`\mathcal B_k(\gamma)\subset \mathcal J_k\times I_k`. To recover `(RCT.3)` from
it, one would need an additional theorem showing that the whole retained block
is controlled by the low-gap tubular region, or by a quantitative packing law
derived from it. No such theorem is currently on disk. ∎

## Interpretation

So the scalar retained-cover counting theorem remains an honest stopping point
on the installed coarse localized-projector route:

```math
\boxed{\texttt{retained-cover counting theorem}}
\neq
\boxed{\texttt{codimension-two tubular packet }F.11c}.
\tag{RCT.4}
```

Further reduction still requires extra quantitative window-envelope / packing
hypotheses, exactly as recorded in
[retained-cover-counting-theorem-further-reduction-needs-extra-packing-schedule.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/retained-cover-counting-theorem-further-reduction-needs-extra-packing-schedule.md).
