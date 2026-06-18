# Uniform Packet Bounds Collapse the Small-Radius Budget

## Status

Active stronger sufficient realization note for the compact-support
localized-projector bypass.

Role: reduce the weighted small-radius budget from
[compact-support-localizer-shrinking-radius-implies-center-spacing.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/compact-support-localizer-shrinking-radius-implies-center-spacing.md)
to a pure radius-gap budget, and under a fixed gap floor plus finite active
measure to a uniform shrinking-radius theorem.

## Purpose

The compact-support bypass currently ends at

```math
\int_I\int_{\mathcal J}
\frac{A_J(z)^2\,r_J(z)^2}{m_\ast^2\,\overline\gamma_\ast^2}
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{UPB.0}
```

On the installed `PSJ+.1` packet, the factor `A_J` is already bounded by the
packet design. So the remaining burden is really only about the radius and the
gap.

## Installed Uniform Packet Bounds

From `(PSJ+.1)`, keep:

```math
0\le \chi_J\le 1,
\tag{UPB.1}
```

```math
\|\psi_\rho\|_{L^\infty}\le \Psi_\ast,
\qquad
\|\alpha\|_{L^\infty}\le \Alpha_\ast,
\tag{UPB.2}
```

and from `(LPMR.7)` keep the uniform packet-measure bound

```math
\sup_z \bar\nu_{J,z}(\mathcal P_J(z))\le \nu_\ast.
\tag{UPB.3}
```

Then the packet-factor mass from
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
satisfies

```math
A_J(z)
=
\int_{\mathcal P_J(z)}
\chi_J(z,p)\,\psi_\rho(z,p)\,\alpha(z,p)
d\bar\nu_{J,z}(p)
\le
\nu_\ast\,\Psi_\ast\,\Alpha_\ast
:
=A_\ast.
\tag{UPB.4}
```

## Proposition `UPB.A` (uniform packet bounds remove the packet factor)

Under `(UPB.1)`-`(UPB.3)`, the weighted small-radius budget `(CSR.11)` follows
from

```math
\int_I\int_{\mathcal J}
\frac{r_J(z)^2}{m_\ast^2\,\overline\gamma_\ast(z)^2}
d\mu_J^{pair}(a,b)\,dt
\le
\frac{C}{A_\ast^2}
\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{UPB.5}
```

### Proof

Use `(UPB.4)` in `(CSR.11)`:

```math
\frac{A_J(z)^2\,r_J(z)^2}{m_\ast^2\,\overline\gamma_\ast(z)^2}
\le
\frac{A_\ast^2\,r_J(z)^2}{m_\ast^2\,\overline\gamma_\ast(z)^2}.
\tag{UPB.6}
```

Integrate and absorb `A_\ast^2` into the implicit constant. ∎

## Corollary `UPB.B` (fixed gap floor gives a pure radius budget)

Assume in addition a normalized local gap floor

```math
\overline\gamma_\ast(z)\ge \gamma_0>0
\qquad\text{on the active family.}
\tag{UPB.7}
```

Then `(UPB.5)` follows from

```math
\int_I\int_{\mathcal J} r_J(z)^2\,d\mu_J^{pair}(a,b)\,dt
\le
\frac{C\,m_\ast^2\gamma_0^2}{A_\ast^2}
\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
\tag{UPB.8}
```

### Proof

Use `\overline\gamma_\ast^{-2}\le \gamma_0^{-2}` in `(UPB.5)`. ∎

## Corollary `UPB.C` (finite active measure plus uniform shrinking radius)

Assume also that the active family has finite total measure

```math
\mu_J^{pair}(\mathcal J\times I)\le \mathfrak m_\ast<\infty.
\tag{UPB.9}
```

If

```math
\sup_{z\in\mathcal J\times I} r_J(z)\le \rho_J,
\qquad
\rho_J\to 0,
\tag{UPB.10}
```

then

```math
\int_I\int_{\mathcal J} r_J(z)^2\,d\mu_J^{pair}(a,b)\,dt
\le
\mathfrak m_\ast\,\rho_J^2
=
o_J(1),
\tag{UPB.11}
```

so the compact-support bypass closes.

### Proof

For every active point \(z\in\mathcal J\times I\), `(UPB.10)` gives
\[
r_J(z)^2\le \rho_J^2 .
\]
Integrating this pointwise bound against the finite active measure in
`(UPB.9)` gives
\[
\int_I\int_{\mathcal J} r_J(z)^2\,d\mu_J^{pair}(a,b)\,dt
\le
\rho_J^2\,\mu_J^{pair}(\mathcal J\times I)
\le
\mathfrak m_\ast\rho_J^2 .
\]
Since \(\mathfrak m_\ast<\infty\) is fixed and \(\rho_J\to0\), the right-hand
side is \(o_J(1)\). ∎

## Interpretation

On the compact-support localized-projector bypass, the packet-factor
`A_J` is not a genuine theorem wall. It is already controlled by the installed
packet design.

So the stronger sufficient route now reduces as follows:

```math
\boxed{
\texttt{compact-support Lipschitz localizer design}
}
\Longrightarrow
\boxed{
\texttt{radius-gap budget }(UPB.5)
}
\Longrightarrow
\boxed{
\texttt{pure radius budget }(UPB.8)
}
\Longrightarrow
\boxed{
\texttt{uniform shrinking-radius theorem}
}
\tag{UPB.12}
```

This is still a stronger sufficient realization, not the installed minimal live
wall. The honest default route remains the localizer-modulus / overlap
center-spacing theorem unless these stronger packet-design hypotheses are
explicitly adopted.
