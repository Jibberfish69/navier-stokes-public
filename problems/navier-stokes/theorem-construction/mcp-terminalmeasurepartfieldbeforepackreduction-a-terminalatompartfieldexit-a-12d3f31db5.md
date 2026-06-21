# Terminal Measure `Part_{N,Q}` / `Field_{N,r,Q}` Reduction

## Target

Test whether the terminal measure concentration produced by the shrinking endpoint strip is handled by `Part_{N,Q}` or `Field_{N,r,Q}`.

The intended statement is:

```text
A same-solution terminal measure concentration cannot remain a valid `Part_{N,Q}` / `Field_{N,r,Q}` survivor once the tests used as original-participation audit records before Pack-local notation include their quantitative certification content.
```

## Installed cost fact

Use the previously installed cost dichotomy. On shrinking intervals `I_m=(T_m-tau_m,T_m]`, with `tau_m -> 0`, an order-one terminal concentration has

```text
integral_{I_m} g_m(s) ds >= M0 > 0.
```

For every `p>1`, this forces

```text
integral_{I_m} g_m(s)^p ds >= M0^p tau_m^{1-p} -> infinity.
```

A uniform `L^p_t`, `p>1`, residence budget gives the reverse conclusion by Holder:

```text
integral_{I_m} g_m(s) ds <= tau_m^{1-1/p} ||g_m||_{L^p(I_m)} -> 0.
```

Therefore the endpoint strip has this exact profile:

```text
finite L1 terminal mass,
infinite every-super-L1 residence cost,
and no positive terminal-window residence modulus.
```

## `Part_{N,Q}` reduction

Use the existing participation test before `Pack_Q`, with the finite-residence content made explicit:

```text
`Part_{N,Q}` with finite-residence content
```

meaning that the same-solution participation ledger supplies a finite residence budget for the selected terminal measure on the approach windows.

Then the terminal measure concentration cannot satisfy ``Part_{N,Q}` with finite-residence content`. The finite residence budget gives temporal absolute continuity; the endpoint strip requires positive mass on intervals whose length tends to zero. These are incompatible.

So the local result is:

```text
terminal endpoint concentration
=> `Part_{N,Q}` fails with finite-residence content.
```

## `Field_{N,r,Q}` reduction

Use a strengthened one-field test:

```text
`Field_{N,r,Q}` with readout-continuity content
```

meaning that the one-field readout supplies temporal absolute continuity or equivalent same-solution terminal readout coherence for the selected terminal defect, using same-solution approach records rather than Pack_Q positive-radius admission.

Then the terminal measure concentration cannot satisfy ``Field_{N,r,Q}` with readout-continuity content`. The readout continuity gives a terminal-window modulus, while the endpoint strip carries order-one mass on vanishing windows.

So the local result is:

```text
terminal endpoint concentration
=> `Field_{N,r,Q}` fails with readout-continuity content.
```

## Verdict

This gives a conditional reduction, rather than a full discharge.

The remaining theorem is:

```text
OriginalParticipationBeforePackStrength.A:
The `Part_{N,Q}` / `Field_{N,r,Q}` tests used for class witness record include finite selected-measure residence, temporal absolute continuity, same-solution terminal readout continuity, or an equivalent donor/readout compatibility budget. These clauses are before Pack service clauses and do not assume a positive terminal Pack carrier.
```

With that theorem installed, the endpoint strip is handled by `Part_{N,Q}` / `Field_{N,r,Q}`, and the Pack(Q) positive-radius blind spot is removed from this branch.
