# Retained-Cover Counting Theorem Does Not Reduce to Active-Strip Mass Pricing

## Status

Active theorem-facing boundary note for the localized-projector exact-potential
branch.

Role: prevent a false collapse between the current scalar retained-cover counting
endpoint and the distinct active-strip mass-pricing packet `F.11l`.

## Purpose

The current coarse localized-projector endpoint is the scalar law

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{RCA.0}
```

A tempting next move is to identify `(RCA.0)` with the active-strip mass-pricing
packet `F.11l`. This note records why that identification is not available on
disk.

## Comparison With `F.11l`

Corollary `F.11l` uses the strip family `\mathcal I_J^{act}` and the strip-mass
pricing packet

```math
\sum_S a_J(S)\,|S|=o_J(1),
\tag{RCA.1}
```

to deduce

```math
\sum_{S\in\mathcal I_J^{act}} |S|=o_J(1),
\tag{RCA.2}
```

and then a vanishing stripwise pair-defect energy packet.

By contrast, the retained-cover counting endpoint is

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k),
\tag{RCA.3}
```

which is a sum over retained exact-potential windows weighted by pair-family
measure `\mu_J^{pair}(\mathcal J_k)`.

So the two packets differ in both index family and weight:

1. `F.11l` sums over active strips `S`;
2. `(RCA.3)` sums over retained windows `I_k`;
3. `F.11l` is unweighted in pair-family measure;
4. `(RCA.3)` carries the extra factor `\mu_J^{pair}(\mathcal J_k)`.

## Corollary `RCA.A` (no on-disk reduction from retained-cover counting to `F.11l`)

On the current installed route, there is no on-disk theorem identifying

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\quad\text{with}\quad
\sum_{S\in\mathcal I_J^{act}}|S|,
\tag{RCA.4}
```

nor with the strip-mass pricing packet `(RCA.1)`.

Therefore the current scalar retained-cover counting endpoint is not discharged
by `F.11l`.

### Proof

The source surfaces currently give no map from retained windows
`\mathcal J_k\times I_k` to active strips `S\in\mathcal I_J^{act}` that both:

1. preserves the time-length factor `|I_k|`,
2. identifies the pair-family weight `\mu_J^{pair}(\mathcal J_k)`,
3. and recovers the strip score `a_J(S)`.

Without such a theorem, `(RCA.3)` and `(RCA.1)` remain different scalar objects.
∎

## Interpretation

The current scalar endpoint on the coarse localized-projector route should be
read as genuinely distinct from the stripwise packet:

```math
\boxed{\texttt{retained-cover counting theorem}}
\neq
\boxed{\texttt{active-strip mass-pricing packet }F.11l}.
\tag{RCA.5}
```

So the honest scalar stopping point remains the retained-cover counting theorem.
Any further reduction still needs extra structure, such as the separate
window-envelope / packing schedules already recorded in
[retained-cover-counting-theorem-further-reduction-needs-extra-packing-schedule.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/retained-cover-counting-theorem-further-reduction-needs-extra-packing-schedule.md).
