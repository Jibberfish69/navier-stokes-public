---
theorem_id: forward-gold-linear-energy-trace-polar-saturation-direct-test-20260620
status: direct-linear-energy-trace-polar-saturation-test-complete-not-proved
logical_landing_node: linear_energy_trace_polar_saturation
edge_effect: "Tests the same-normalization signed-partner step left by the linear positive energy-trace saturation test. Trace-free strain and incompressibility do not force the selected endpoint-energy carrier to include the contracting eigendirections. A packet may put its energy in the expanding eigendirection, so the signed trace-free partner exists in the tensor spectrum but not in the selected energy ledger. The bridge reduces to selected positive polar saturation on the endpoint-energy carrier, legal exit, retained partner, or stronger no-waste/source-square/unweighted-action control."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-linear-positive-energy-trace-saturation-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compensated-cancellation-positive-carrier-no-upgrade-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
downstream_consequence: "The linear non-source-residue branch cannot be discharged by trace-free strain, incompressibility, signed local energy, or microlocal divergence-free visibility alone. It still needs selected positive polar saturation on the normalized endpoint-energy carrier plus endpoint UI/no-free terminal trace, or a stronger strict no-waste/source-square/unweighted-action theorem."
---

# MPP Forward-Gold Linear Energy Trace Polar Saturation Direct Test

Date: 2026-06-20

## Status

Direct test complete.  The theorem is not proved from current inputs.

The target is the same-normalization signed-partner theorem left by the linear
positive energy-trace test:

```math
\boxed{
\text{LinearEnergyTracePolarSaturation.A}.
}
\tag{LETP.1}
```

It would say that selected positive endpoint-energy strain work cannot survive
unless the contracting signed partner is retained in the same normalized ledger
or exits through a legal/donor charge.

## 1. What trace-free strain gives

Let \(S\) be a symmetric trace-free strain matrix.  Trace-free means

```math
\operatorname{tr}S=0.
\tag{LETP.2}
```

Equivalently, the signed strain reading cancels against an isotropic energy
tensor:

```math
\operatorname{tr}(S I)=0.
\tag{LETP.3}
```

The selected packet does not carry the identity tensor.  It carries a positive
energy tensor of the form

```math
M=w\otimes w.
\tag{LETP.4}
```

The selected endpoint-energy trace is

```math
\left[\operatorname{tr}(SM)\right]_+
=
\left[\langle Sw,w\rangle\right]_+.
\tag{LETP.5}
```

The implication from `(LETP.2)` to cancellation of `(LETP.5)` would require an
extra angular or spectral participation law forcing the packet energy to sample
the contracting eigenspaces.  Trace-free strain alone does not do that.

## 2. Exact algebraic obstruction

Take

```math
S_0=\operatorname{diag}(2,-1,-1),
\qquad
w=e_1.
\tag{LETP.6}
```

Then

```math
\operatorname{tr}S_0=0,
\tag{LETP.7}
```

but

```math
\left[\langle S_0e_1,e_1\rangle\right]_+
=2.
\tag{LETP.8}
```

The negative trace-free partners are the \(e_2\) and \(e_3\) directions:

```math
\langle S_0e_2,e_2\rangle
=
\langle S_0e_3,e_3\rangle
=-1.
\tag{LETP.9}
```

They are present in the strain spectrum.  They are not present in the selected
energy tensor \(e_1\otimes e_1\).

Thus the tensor identity

```math
2-1-1=0
\tag{LETP.10}
```

does not imply the selected-carrier inequality

```math
\left[\langle S_0e_1,e_1\rangle\right]_+
\le
\text{same-ledger negative endpoint-energy partner}
+Legal+o(1).
\tag{LETP.11}
```

The missing object is exactly the same-ledger negative endpoint-energy partner.

## 3. Compatibility with local incompressibility

This obstruction is compatible with incompressibility at the local strain level.
The affine field

```math
u_0(y)=S_0y
\tag{LETP.12}
```

satisfies

```math
\nabla\cdot u_0
=
\operatorname{tr}S_0
=0.
\tag{LETP.13}
```

and its symmetric gradient is \(S_0\).  Therefore local incompressibility supplies
the trace-free spectrum, but it does not force the selected high packet to carry
equal energy in the contracting eigendirections.

The high-frequency divergence-free version says the same thing.  A packet with
wave direction \(\xi=e_2\) and polarization \(p=e_1\) satisfies

```math
\xi\cdot p=0,
\tag{LETP.14}
```

while still reading positive strain:

```math
p\cdot S_0p=2.
\tag{LETP.15}
```

So principal divergence-free polarization does not supply the missing negative
carrier either.

## 4. What would make the theorem true

The desired polar-saturation estimate is not an algebraic consequence of
trace-free strain.  It would require one of the following same-carrier inputs:

```math
\boxed{
\begin{gathered}
\text{retained contracting endpoint-energy partner,}\\
\text{legal/cutoff/projection/pressure exit for that partner,}\\
\text{finite donor-chain telescoping in endpoint-energy currency,}\\
\text{endpoint UI/no-free terminal trace for the infinite chain,}\\
\text{or stronger source-square / strict no-waste / unweighted-action control.}
\end{gathered}
}
\tag{LETP.16}
```

This is the endpoint-energy trace version of selected positive polar saturation.
It is not supplied by signed local energy, trace-free incompressibility, or
microlocal defect visibility alone.

## Verdict

`LinearEnergyTracePolarSaturation.A` is not installed.

The exact failed implication is

```math
\boxed{
\operatorname{tr}S=0
\quad\not\Rightarrow\quad
\text{selected positive endpoint-energy trace is signed-saturated}.
}
\tag{LETP.17}
```

The remaining linear branch still needs selected positive polar saturation on
the normalized endpoint-energy carrier plus endpoint UI/no-free terminal trace,
or a stronger same-carrier no-waste/source-square/unweighted-action theorem.
