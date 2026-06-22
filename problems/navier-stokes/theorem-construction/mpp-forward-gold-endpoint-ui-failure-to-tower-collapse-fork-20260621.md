---
theorem_id: forward-gold-endpoint-ui-failure-to-tower-collapse-fork-20260621
status: endpoint-ui-failure-reduced-to-canonical-tower-collapse-fork-with-selected-atom-pruning
logical_landing_node: endpoint_ui_failure_to_tower_collapse_fork
edge_effect: "Combines the endpoint UI assembly with the canonical coupled-radius collapse tests. Under residue policy, failure of the gold endpoint tail modulus forces failure of either the interior finite-jet tower UI or the annular pressure-tower UI. Because positive tower radius implies endpoint UI for those channels, the failure is canonical tower-radius collapse on the relevant carrier, not arbitrary radius shrinkage. Canonical collapse splits into finite-rung failure or high-rung-only analytic collapse. High-rung-only collapse is not endpoint UI failure by itself, but after a genuine surviving selected source atom and the tensor/height branches are removed, the selected atom cannot be high-rung-only and forces fixed finite Sobolev rung blowup. The remaining unsolved branch is therefore high-rung-only collapse without selected-atom forcing, which still needs strict no-waste, source-square/CKN, unweighted action, or minimal Zeno profile production."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-from-field-towers-and-residue-policy-assembly-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-radius-collapse-not-endpoint-ui-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-atom-not-high-rung-only-after-threshold-split-20260621.md
---

# Endpoint UI Failure To Tower Collapse Fork

Date: 2026-06-21

## 0. Target

The endpoint assembly proves:

```math
\text{interior finite-jet tower UI}
+\text{annular pressure-tower UI}
+\text{residue density/absorption policy}
\Longrightarrow
\texttt{EndpointUniformIntegrabilityReserve.A}.
\tag{EUC.1}
```

Therefore, on the residue-policy branch,

```math
\neg\texttt{EndpointUniformIntegrabilityReserve.A}
\tag{EUC.2}
```

forces failure of a field tower UI clause:

```math
\boxed{
\neg\text{interior finite-jet tower UI}
\quad\text{or}\quad
\neg\text{annular pressure-tower UI}.
}
\tag{EUC.3}
```

The point of this note is to make the resulting tower-collapse fork exact.

## 1. Positive radius implies endpoint UI

For the interior finite-jet channel, the temporal tower note proves:

```math
\text{positive interior mixed tower time-rung control}
\Longrightarrow
\int_{-\theta}^{0}[H_m^{jet}(s)]_+\,ds\le C\theta.
\tag{EUC.4}
```

For the harmonic pressure channel, the annular pressure-tower note proves:

```math
\text{positive annular velocity-pressure tower radius}
\Longrightarrow
\int_{-\theta}^{0}[H_m^H(s)]_+\,ds\le C\theta.
\tag{EUC.5}
```

Thus failure of the corresponding endpoint UI clause implies failure of the
corresponding positive tower-radius hypothesis.

This must be canonical tower-radius failure, not arbitrary chosen radius
collapse.

## 2. Canonical radius collapse

For a retained carrier/cutoff \(\eta\), define the admissible-radius set:

```math
\mathcal R_j(E_*)
=
\left\{
(\tau,\rho):
\sup_{-1\le s\le0}
\mathcal E_{j,\eta}(\tau,\rho;s)\le E_*
\right\}.
\tag{EUC.6}
```

Uniform canonical radius survival is:

```math
\exists \tau_*>0,\ \exists\rho_*>0,\ \exists E_*<\infty,\ \exists J
\quad
(\tau_*,\rho_*)\in\mathcal R_j(E_*)
\quad\text{for all }j\ge J.
\tag{EUC.7}
```

Canonical tower-radius collapse is the negation:

```math
\forall \tau_*>0,\ \forall\rho_*>0,\quad
\limsup_{j\to\infty}
\sup_{-1\le s\le0}
\mathcal E_{j,\eta}(\tau_*,\rho_*;s)
=\infty.
\tag{EUC.8}
```

This definition is essential.  Arbitrary radius collapse is meaningless,
because the zero solution can be assigned any collapsing radius while all tower
energies remain zero.

## 3. Collapse fork

The controlled-collapse note gives:

```math
\boxed{
\text{canonical coupled tower-radius collapse}
\Longrightarrow
\text{finite-rung failure}
\quad\text{or}\quad
\text{high-rung-only analytic-radius failure}.
}
\tag{EUC.9}
```

The finite-rung branch means that for some fixed \((m,\alpha)\),

```math
\sup_{-1\le s\le0}
\|\eta W_{j,m,\alpha}(s)\|_{L^2}
\to\infty
\quad\text{along a subsequence}.
\tag{EUC.10}
```

That is a visible field/tower readout on the retained carrier.

The high-rung-only branch means every fixed finite rung remains bounded:

```math
\sup_j
\sup_{-1\le s\le0}
\|\eta W_{j,m,\alpha}(s)\|_{L^2}
<\infty
\quad\text{for every fixed }(m,\alpha),
\tag{EUC.11}
```

while every positive factorial radius still fails:

```math
\forall\tau_*>0,\ \forall\rho_*>0,\quad
\limsup_{j\to\infty}
\sum_{m,\alpha}
{\tau_*^{2m}\rho_*^{2|\alpha|}\over(m!)^2(\alpha!)^2}
\|\eta W_{j,m,\alpha}\|_{L^2}^2
=\infty.
\tag{EUC.12}
```

## 4. High-rung-only collapse is not endpoint UI failure by itself

The high-rung countertest proves:

```math
\boxed{
\text{high-rung-only analytic-radius failure}
\not\Longrightarrow
\neg\texttt{EndpointUniformIntegrabilityReserve.A}.
}
\tag{EUC.13}
```

A smooth nonanalytic time-independent profile can have zero analytic radius,
bounded finite rungs, and endpoint UI.

The high-rung tail-to-carrier test also proves:

```math
\boxed{
\text{high-rung analytic tail divergence}
\not\Longrightarrow
\text{finite-order selected carrier mass}.
}
\tag{EUC.14}
```

So the gold route may not identify high-rung-only collapse with the endpoint
pulse.

## 5. Selected source atom pruning

There is, however, a sharper result for a genuine surviving selected source
atom.  After the threshold-margin split, if:

```math
\int_{I_m}A_m(s)\,ds\ge a>0,
\tag{EUC.15}
```

and the tensor-action branch is small while the height branch is absent, then
the selected-source gradient branch forces, for every \(\gamma>5/2\),

```math
\theta_m
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H^{\gamma+1}}^2
\to\infty.
\tag{EUC.16}
```

This is a fixed finite Sobolev rung blowup.  Therefore:

```math
\boxed{
\text{a retained selected source atom cannot be carried only by high-rung
analytic-radius collapse once tensor and height branches are removed.}
}
\tag{EUC.17}
```

## 6. Exact live fork

Combining the pieces, endpoint UI failure on the residue-policy branch gives:

```math
\boxed{
\text{canonical interior finite-jet tower collapse}
\quad\text{or}\quad
\text{canonical annular pressure-tower collapse}.
}
\tag{EUC.18}
```

Each collapse then gives:

```math
\boxed{
\text{finite-rung readout}
\quad\text{or}\quad
\text{high-rung-only analytic-radius failure}.
}
\tag{EUC.19}
```

For a genuine selected source atom after tensor/height pruning, the
high-rung-only branch is removed and finite-rung blowup remains.

For a general endpoint density pulse without that selected-atom pruning, the
high-rung-only branch is still open.  It needs one of:

```math
\boxed{
\text{strict no-waste, unweighted terminal action, source-square/CKN reserve,
or minimal Zeno profile production.}
}
\tag{EUC.20}
```

## 7. Result

The endpoint pulse has now been separated into exact branches:

```math
\boxed{
\begin{gathered}
\text{residue-policy failure;}\\
\text{finite-rung tower/field readout;}\\
\text{selected-source finite Sobolev rung blowup after tensor/height pruning;}\\
\text{or high-rung-only analytic-radius failure needing no-waste/action/profile.}
\end{gathered}
}
\tag{EUC.21}
```

This does not finish the gold proof.  It removes the false shortcut from
endpoint pulse to generic tower collapse and identifies the exact remaining
high-rung branch.
