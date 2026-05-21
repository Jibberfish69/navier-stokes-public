# Gate 1 — UniformTemporalSourceIntegrability_{p,B_ASAC}.A

Date: 2026-05-17

## Status

Failed from installed `B_ASAC` inputs.

## Target

Find `p>1` such that the native positive source marginal of every produced `B_ASAC` terminal object satisfies a uniform estimate

```math
\left\|\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\right\|_{L^p_s((-R^2,0))}\le C_R.
```

This would imply the terminal anti-atom theorem.

## Test profile

Set

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

Then

```math
\|g_m\|_{L^1(-1,0)}=1,
```

while for every `p>1`,

```math
\|g_m\|_{L^p(-1,0)}=m^{1-1/p}\to\infty.
```

The profile has no fixed preterminal residence and converges weakly to a unit atom at `s=0`.

## Compatibility with B_ASAC

The installed `B_ASAC` clauses give finite local `L^1_s` source mass, zero ASAC defect, no earlier selected source slice, no paid legal/projected/cutoff/boundary exit, and terminal Zeno support. These clauses allow the profile above.

Zero ASAC defect controls an angular/alignment channel. It does not give an `L^p_s` estimate for the native source time marginal. Finite viscosity smooths over positive heat time and gives no uniform terminal residence interval.

## Verdict

`UniformTemporalSourceIntegrability_{p,B_ASAC}.A` fails from installed inputs. Gate 1 is exhausted.

Proceed to Gate 2: `BASACTimeFaceAntiAtom.A`.