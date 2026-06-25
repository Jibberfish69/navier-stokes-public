# TopRankNoSelfBirthSchurDefectAttempt.A

Status: superseded as a live frontier by `mcp-pressurepartner-gate-demoted-by-full-pls-strain-placement-20260625.md` and `mcp-primitivegraphdriver-pls-interface-direct-attack-20260625.md`.

This note correctly shows that the relative Schur complement pays only the pressure/collar defect \(W_N\), not the raw graph-parallel motion.  Its final reduction to a pressure-partner theorem is stale.  After the full PLS strain placement, graph-parallel pressure/Hodge/collar growth is admitted into the material strain equation and the primitive moving low-high participation-law--strain driver.  The remaining nonconditional theorem is the bounded-below available-participation entropy, or strict no-self-birth/contraction, for that primitive full PLS driver.

## Setup

Use the relative Schur-complement variables from `RelativeSchurComplementPressCollarConstructionAttempt.A`:

```math
Z_N=(q,C_N),
\qquad
Z_N=\Gamma_N(Y_N)+W_N,
```

where \(\Gamma_N(Y_N)\) is the same-material elliptic/collar graph and \(W_N\) is the relative pressure/collar defect.

The Schur storage is

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2.
```

Its derivative pays only the relative defect orientation:

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
= -\langle W_N,dW_N\rangle_{pc,N}
-{1\over2}\langle W_N,\dot H_{pc,N}W_N\rangle dt .
```

Therefore the whole question is whether graph-parallel pressure/collar growth has no autonomous top-rank birth.

## Pressure graph-parallel part

For the pressure graph

```math
q=Q(Y):=L_G^{-1}R(Y),
\qquad
R=A_{\ell i}A_{kj}\partial_\ell v_j\partial_kv_i,
```

the pressure energy derivative is

```math
\dot E_p
=\langle q,\dot R\rangle
+\int ASA^\top\nabla_a q\cdot\nabla_aq .
```

The second term is graph-parallel but not pressure-autonomous.  Its positive part is strain/frame service:

```math
\left[\int ASA^\top\nabla q\cdot\nabla q\right]_+
\le
C\lambda_+(S)\,\|\nabla q\|_{G}^2,
```

so it belongs to top-strain/frame storage, provided the top-strain/frame ledger is available.

The first term, \(\langle q,\dot R\rangle\), is the delicate term.  Differentiating \(R=AA\partial v\partial v\) gives coefficient/frame terms plus terms containing \(D_t\partial v\).  Using the material equation,

```math
D_tv+A^\top\nabla_aq=\nu\operatorname{div}_a(G\nabla_av),
```

the top pressure self part comes from the pressure Hessian inside \(D_t\partial v\).  Pairing it with \(q\) and integrating by parts converts it into pressure-Hessian / pressure-gradient contractions and collar/cutoff terms.  These are the same Calderon-Zygmund pressure-collar graph terms recorded in the pressure partner normal form.

Thus the top-rank pressure graph-parallel derivative descends to:

1. strain/frame service from \(\dot G\) and coefficient evolution;
2. viscosity/tower service from \(\nu\operatorname{div}_a(G\nabla v)\);
3. collar/harmonic memory service;
4. Calderon-Zygmund pressure partner terms under one-sided positive selection.

The first three are admissible PLS payers.  The fourth is not automatically paid by the Schur defect alone.

## Collar graph-parallel part

For transported collars,

```math
D_t\phi=0,
\qquad
D_t\nabla_x\phi=-(\nabla_xu)^\top\nabla_x\phi .
```

At base level, collar graph-parallel growth is frame/strain service.  At higher depth, derivatives of the collar graph produce derivatives of \(A,G,\mathbb P_A\) and commutators.  Their top-rank terms are coefficient/frame and strain-tower terms, plus pressure/Hodge projection commutators.  These again descend to top-strain/frame, viscosity/tower, annular stress, or pressure partner/collar memory channels.

No independent collar self-birth appears at the pure transported-collar level.  The unresolved part is the same pressure/Hodge/collar partner problem when one-sided positive terminal selection destroys signed cancellation.

## Attempted no-self-birth estimate

The desired estimate is

```math
(d\Omega_N^{press/RHS}+d\Omega_N^{collar})_{top}
\le
C\,d\Omega_N^{rel.defect}
+C\,d\Omega_N^{lower}
+C\,d\Omega_N^{strain/frame}
+C\,dD_N^{vis/rad}
+C\,d\Omega_N^{annular}
+dR_N^{legal}.
```

The calculation proves this modulo the pressure partner/collar cancellation theorem:

```math
\boxed{
TerminalCZPressureCancellation.A
+TerminalPressureCollarLegal.A
+PressureDonorNoFreeSink.A
}
```

or the equivalent same-material finite positive pressure/collar partner packing theorem.

## Obstruction

Same-packet pressure/collar routing is installed as admission.  It says pressure/collar terms belong to the same PLS packet.  It does not prove that one-sided positive Calderon-Zygmund pressure/collar growth after terminal selection is paid by retained negative lobes, collar exits, donor sinks, or relative Schur defect.

Therefore the Schur complement removes autonomous graph energy, but the remaining top-rank no-self-birth proof still requires terminal preservation of pressure partner cancellation / pressure-collar no-free-sink.

## Verdict

The no-self-birth estimate is reduced to a precise pressure-partner theorem, not discharged.  The remaining theorem is:

```math
\boxed{
\text{one-sided positive pressure/Hodge/collar graph-parallel growth is paid by retained CZ partners, legal collar exits, donor no-free-sink, or Schur relative defect.}
}
```

Without that theorem, the bounded-below relative Schur-complement entropy law remains conditional.
