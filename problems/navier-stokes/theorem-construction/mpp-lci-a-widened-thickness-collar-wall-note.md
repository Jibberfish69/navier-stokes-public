# MPP LCI.A Widened-Thickness Collar Wall Note

## Status

Candidate theorem-facing note.

Role: isolate the exact collar-side debt that survives once `PCC.C`
identifies the stronger oscillation-side packet bypass with the
widened-thickness instance `CSP.A_{\delta+\delta_{seg}}`.

## Purpose

```math
\boxed{
\text{show that the thicker oscillation-side consumer }
CSP.A_{\delta+\delta_{seg}}
\text{ carries no new structural collar wall beyond the original theorem }CSP.A.
}
\tag{WTC.0}
```

Set

```math
\delta_\ast:=\delta+\delta_{seg}.
\tag{WTC.0a}
```

Because Theorem `CSP.A` is already formulated for an arbitrary fixed collar
thickness, the honest question is no longer whether the transported-center
branch needs a new enlarged-thickness collar theorem. It is only:

```math
\boxed{
\text{what exact old collar wall does }CSP.A_{\delta_\ast}\text{ reopen?}
}
\tag{WTC.0b}
```

## Widened-Thickness Receiver Ledger

Define the widened-thickness lower same-fluid carrier ledger

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta_\ast}(t))}.
\tag{WTC.1a}
```

Then the exact widened-thickness coefficient/transport input package is

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I),
\qquad
P_{F,\rho,\psi}^{\ast}\in L^1(I).
\tag{WTC.1}
```

This is nothing more than `(CSP.25f)` read at collar thickness `\delta_\ast`,
with the lower-carrier ledger written explicitly at that thicker radius.

## Installed Genericity Already On Disk

The collar theorem program fixes one arbitrary collar thickness `\delta>0` in
its statement of `CSP.A`, then builds the whole proof spine from:

1. the transported collar cutoff `\chi_{\rho,\psi,t}^{\delta}` and the moving
   collar transport identities `CSP.B1`;
2. the annular coefficient reduction `CSP.B3a0`;
3. the coefficient-side integrability reduction `CSP.B3a`;
4. the separate frozen-family packet source burden `(FCI.5f)`;
5. the moving-collar one-rung-higher energy law with honest wall `CSP.8`.

The thickness parameter enters only through the fixed profile constants,
defining-function support shell, and collar-local readout region. No extra
structural forcing channel appears when the thickness is replaced by another
fixed positive radius.

### Reduction `WTC.A` (The widened-thickness collar consumer has the same exact supplier wall)

Assume the widened-thickness receiver package `(WTC.1)` together with the
separate frozen-family source-side burden

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}(\cdot;I)\in L^1(I).
\tag{FCI.5f}
```

Then the widened-thickness collar theorem

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
<
\infty
\tag{WTC.2}
```

holds; equivalently, `CSP.A_{\delta_\ast}` follows.

### Proof

Theorem `CSP.A` is already stated for an arbitrary fixed collar thickness.
Substitute `\delta\mapsto\delta_\ast` throughout the theorem statement and its
proof spine.

The transport structure `CSP.B1` remains valid with the profile
`\Theta_{\delta_\ast}` and the defining-function shell
`\mathcal C_{\rho,\psi}^{\delta_\ast}(t)`. The annular coefficient reduction
`CSP.B3a0` and the coefficient-side reduction `CSP.B3a` depend on the collar
radius only through constants attached to those fixed geometric choices, so
their structural conclusions are unchanged. By definition, `(WTC.1)` is exactly
the `\delta_\ast` instance of `(CSP.25f)`. The frozen-family source burden
`(FCI.5f)` is thickness-free. Therefore the same moving-collar energy argument
behind `CSP.A` yields `(WTC.2)`. ∎

### Corollary `WTC.B` (No new enlarged-thickness collar wall survives below `EOC.38`)

Under the widened receiver-side return `(EOC.27)`, the route-native
oscillation-side consumer law

```math
\text{widened receiver-side return }(EOC.27)
\ +\
CSP.A_{\delta_\ast}
\Longrightarrow
EOC.A
\tag{WTC.3}
```

reopens only the old collar wall `CSP.8` read at thickness `\delta_\ast`.
More exactly, the surviving collar-side debts beneath `PCC.C` are:

1. the widened-thickness coefficient/transport package `(WTC.1)`;
2. the separate frozen-family source burden `(FCI.5f)`.

No new enlarged-thickness supplier family remains.

### Corollary `WTC.C` (Only one slot of the widened-thickness collar package is thickness-sensitive)

Inside the widened receiver package `(WTC.1)`, the three entries play
different roles:

1. `\Gamma_\sharp\in L^\infty(I)` is the old pack-side gauge on the common
   label collar, supplied on the pack route through `PFP.D`; it does not depend
   on the collar thickness parameter;
2. `P_{F,\rho,\psi}^{\ast}\in L^1(I)` is the old transport bridge ledger
   isolated on the direct-bridge surface `R1.C`; it also does not depend on
   the collar thickness parameter;
3. `\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I)` is the only entry whose
   readout region changes when `\delta` is replaced by `\delta_\ast`.

Therefore the widened-thickness consumer `CSP.A_{\delta_\ast}` introduces no
new thickness-sensitive supplier object beyond the thicker lower same-fluid
carrier ledger:

```math
\boxed{
\text{inside }(WTC.1),
\text{ the only thickness-sensitive slot is }
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I).
}
\tag{WTC.4}
```

The companion note
[mpp-lci-a-widened-thickness-lower-carrier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-thickness-lower-carrier-note.md)
now records the next exact reduction: this thickness-sensitive slot is itself
just the widened-thickness instance `LCI.A_{\delta_\ast}`.

## Honest Boundary

This note does **not** prove `(WTC.1)`. It does **not** prove `(FCI.5f)`. It
does **not** compare `\delta_{seg}` against `5\Lambda_{\delta,\rho}^{halo}` or
derive the widened receiver-side return `(EOC.27)`.

What it does prove is narrower and exact:

1. once `PCC.C` identifies the stronger bypass packet with
   `CSP.A_{\delta+\delta_{seg}}`, the transported-center branch does **not**
   create a new collar theorem family;
2. the exact reopened collar wall is the same old moving-collar one-rung-higher
   energy law `CSP.8`, now read at thickness `\delta_\ast`;
3. on the theorem surface already expanded on disk, this means the surviving
   collar debts are exactly the widened-thickness receiver package `(WTC.1)`
   together with the separate source-side burden `(FCI.5f)`;
4. inside that widened receiver package, the only new thickness-sensitive slot
   is the thicker lower same-fluid carrier ledger `(WTC.4)`, and the
   companion widened-thickness lower-carrier note reduces that further to
   `LCI.A_{\delta_\ast}`.
