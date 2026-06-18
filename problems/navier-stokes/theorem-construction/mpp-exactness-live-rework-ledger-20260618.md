# MPP Exactness Live Rework Ledger 2026-06-18

## Scope

This ledger records live mathematical rework, not completion by audit surface.
It separates edited theorem/proof surfaces from preserved transcript, generated,
or audit residues.

## Pulling-Teeth Linear-Profile Failure

Bad form:

```math
\nabla u\sim U/r
```

Live replacement:

```math
\Delta_r u(t):=\sup_{x,y\in B_r(x_*)}|u(x,t)-u(y,t)|,
\qquad
\Delta_r u(t)\le 2r\sup_{B_r(x_*)}|\nabla u(\cdot,t)|.
```

Along the moving radius:

```math
\rho(t)=\lambda\sqrt{T_*-t},
\qquad
\Delta_{\rho(t)}u(t)
\le
2\rho(t)\sup_{B_{\rho(t)}(x_*)}|\nabla u(\cdot,t)|.
```

Downstream consequence: no live theorem may spend a profile law, typical slope,
or scalar velocity amplitude in place of oscillation, a gradient supremum, or a
named carrier theorem.

Edited/current live surfaces: `submission-bundle/navier-stokes-submission.tex`,
`submission-bundle/source-field-reader-appendix.tex`, and the exactness audit
notes that point to the live replacement rather than acting as replacement.

## Cutoff Source-Closure Failure

Bad form:

```math
|\mathcal C_N^{cut}|
\le
\frac12\mathcal N_N^{visc}
+\mathfrak b_\psi^{cut} E_N
```

This was not licensed by the definitions because `E_N` carries the cutoff
weight `\phi_t^2`, while the Young term from the commutator carries
`|\nabla\phi_t|^2`.

Exact replacement:

```math
\mathcal E_N^{cut,\nabla}(h,t;\psi)
:=
\sum_{k=0}^{N}\lambda_k
\int |\nabla\phi_t|^2|\delta_hU_k|^2\,dx,
```

```math
|\mathcal C_N^{cut}(h,t;\psi)|
\le
\frac12\mathcal N_{N,h,\psi}^{visc}(t)
+4\nu\,\mathcal E_N^{cut,\nabla}(h,t;\psi).
```

Frozen-net consequence:

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}
\le
\frac12\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}
+4\nu\,\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}.
```

Downstream consequence: the source route is now conditional on `FCC.C1a`, the
explicit input

```math
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I),
```

or on a separate domination theorem proving that input from packet data.
The coefficient `\mathfrak b_\psi^{cut}` remains only cutoff-derivative
coefficient control; it does not close the source channel.

Edited live surfaces include the cutoff commutator note, cutoff-channel
reduction, source-sufficient closure, source-ledger split, strain/cascade
sufficient reduction, pressure/source verification ledger, PCTP source
verification, ACT.KX and LCI downstream packages, class-membership bridge
ledger, periodic/terminal source summaries, `live-theorem-edge.yaml`,
`cm-convergence-atlas.yaml`, and the reader appendix.

## Exact Source Route After Rework

The exact source route is now:

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f.
```

The strengthened source import is now read as:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
```

where `\operatorname{Hyp}(FFSRC.A)` includes the weighted cutoff-defect input.

## Edited Or Preserved Residues

Edited: live theorem/proof/manuscript surfaces whose route statements or
estimates depended on the exactness failures above.

Intentionally preserved: source transcripts, sample PDFs, generated MCP notes,
older paper-arc production packets, quarantine ledgers, and audit JSON/MD files.
Those surfaces may preserve old language as evidence or historical output, but
they are not proof authority and are not allowed to discharge a live theorem.

Still mathematically open: prove `FCC.C1a` directly or prove a domination theorem
that derives the weighted cutoff-defect integrability from already-admitted
packet/collar data.
