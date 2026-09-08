# OrientedTaxAtSourceRecirculationSplit.A

Status: corrected closure shape installed.  The paid-orientation algebra is proved.  The wrong-sign recirculation branch is closed by
`WrongSignActivePLSRecirculationClosure.A` after separating one-way material-record growth from genuine backscatter/recirculation.

## Correction

The false demand was to make one signed storage pay an absolute value:

```math
d\mathscr A_N+c|\mathcal A|dt\le dR.
```

That is not the correct participation law.  A signed stress-work storage pays only the orientation in which it actually decreases.  The opposite orientation is not a local storage-payment term; it is the return/backscatter side of the same PLS transaction.

## Oriented block algebra

For each null-mode-corrected same-material stress-work block \(\kappa\), write the corrected signed storage identity as

```math
dX_{\kappa,N}^{\#}
=-\mathcal A_{\kappa,N}\,dt+dE_{\kappa,N}^{legal}.
\tag{OTS.1}
```

Then, for \(0<c\le1\),

```math
\begin{aligned}
dX_{\kappa,N}^{\#}+c(\mathcal A_{\kappa,N})_+dt
&=dE_{\kappa,N}^{legal}
-\mathcal A_{\kappa,N}dt+c(\mathcal A_{\kappa,N})_+dt\\
&=dE_{\kappa,N}^{legal}
-(1-c)(\mathcal A_{\kappa,N})_+dt
+(\mathcal A_{\kappa,N})_-dt\\
&\le dE_{\kappa,N}^{legal}+(
\mathcal A_{\kappa,N})_-dt .
\end{aligned}
\tag{OTS.2}
```

Thus the paid orientation is controlled by storage drop plus the wrong-sign recirculation term.  The wrong-sign term must not be hidden inside `legal` unless a separate theorem has already proved it finite.

## Correct clock split

Define

```math
d\Omega_{N}^{paid,+}
:=
\sum_\kappa (\mathcal A_{\kappa,N})_+dt
```

and

```math
d\Omega_{N}^{recirc,-}
:=
\sum_\kappa (\mathcal A_{\kappa,N})_-dt
```

with every \(\kappa\) read on the same transported material packet after null-mode removal:

```math
u_{\phi}^{\#}=u-\Pi_\phi u.
```

The clock is not raw absolute stress-work.  It is

```math
\boxed{
\text{oriented tax-at-source paid pieces}
+
\text{finite wrong-sign recirculation/backscatter pieces}.
}
```

## Payer-matched interpretation

The oriented blocks are assigned to native participation channels:

1. collar-active motion is paid through oriented annular stress-work;
2. passive/null/tangential shear is paid through viscous strain;
3. pressure-time service is paid through Helmholtz--Leray/elliptic pressure correction;
4. metric and collar motion are paid through material-coordinate correction;
5. top-frequency regeneration/backscatter is paid through the recirculation/coherence clock, not through the local paid-orientation storage.

This avoids charging passive motion to the wrong payer and avoids asking a signed storage to pay both signs.

## Budget form

Let

```math
\mathscr A_N
=\mathscr A_{org,N}
+\sum_\kappa \alpha_\kappa X_{\kappa,N}^{\#}
+\text{pressure/collar/material corrections},
```

with the cross-storage bounded below by the organized record:

```math
\mathscr A_N(t)\ge -C_N(u_0).
```

Summing `(OTS.2)` gives the honest budget inequality

```math
d\mathscr A_N+c_Nd\Omega_N^{paid,+}
\le
 dR_N^{legal}+C_N d\Omega_N^{recirc,-}.
\tag{OTS.3}
```

The closure requires a separate coherence/no-recirculation theorem:

```math
\boxed{
\int_0^{T^*}d\Omega_N^{recirc,-}<\infty
}
\tag{OTS.4}
```

or the stronger absorbable form

```math
d\mathcal C_N+c_Rd\Omega_N^{recirc,-}
\le dR_N^{coh},
\qquad
\mathcal C_N(t)\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N^{coh}<\infty .
	ag{OTS.5}
```

Under `(OTS.4)` or `(OTS.5)`, `(OTS.3)` integrates to

```math
\int_0^{T^*}d\Omega_N^{paid,+}<\infty .
```

Together with finite recirculation, this gives

```math
\int_0^{T^*}d\Omega_N^{PLS,\#}<\infty .
```

The standard material record readout then gives bounded material record, fixed \(H^s\) continuation for \(s>5/2\), and no finite breakdown.

## Resolution

The non-fake theorem is not an impossible absolute-value storage theorem.  It is the payer-matched coherence theorem:

```math
\boxed{
\text{wrong-sign active PLS recirculation is finite, or absorbable, after null-mode removal.}
}
```

`WrongSignActivePLSRecirculationClosure.A` proves that theorem for the recirculatory branch: bounded-record cycles have finite total mass on finite time intervals; subheat backscatter is absorbed by high-shell viscosity; top-strain and coefficient-frame superheat are paid by the signed strain-log storage; and top-frequency regeneration is itself PLS service.  The one-way pressure/RHS, transported-collar, and annular stress-work superheat component is not recirculation; it remains part of the available-entropy construction.
