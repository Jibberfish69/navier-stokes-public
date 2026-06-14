# MPP LocalStrainDepletion.A Audit Note

## Status

Bounded theorem attempt on the signed local-source atom isolated in
`mpp-localsource-nopulse-direct-attempt-note.md`.

The target is:

```math
\boxed{
LocalStrainDepletion.A:
\int_{Bad_N(\eta)}
(\mathfrak S_{N,loc}^{active})_+(t)\,dt=o_N(1).
}
```

This would prove `LocalSource.NoPulse.A` by showing that the positive part of
the same-fluid active local source vanishes on terminal bad windows.

The installed signed commutator and strain-sign notes do not prove this target.

## Relation To The Existing Signed Route

The existing signed route studies the weighted lifted remainder

```math
\mathfrak G_N^{lift,\sigma}
=
\sum W_{j,k,\ell}^{\sigma}\mathcal R_{j,k,\ell}^{lift},
```

with displayed principal atom

```math
\mathcal R_{j,k,\ell}^{lift,prin}
:=
2^{2j}
\left\langle
\mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u
\right\rangle.
```

The signed route asks for cancellation of the full signed sum.  The local
depletion target is harder in the relevant direction: it asks for smallness of
the positive part on the same bad active windows that define the no-pulse
branch.

Signed cancellation of the total integral would not by itself imply
positive-part depletion unless a separate negative-part comparability or
oscillation theorem were installed:

```math
\int G\ \text{small}
\quad\not\Longrightarrow\quad
\int G_+\ \text{small}.
```

## Sign Obstruction

The principal strain form is sign-indefinite.  If an active shell packet is
aligned with an expanding eigendirection of the symmetric low/intermediate
strain, then

```math
\left\langle
\mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u
\right\rangle
>0
```

at leading order.  Alignment with a contracting direction gives negative sign.
The terminal bad-window selector is already choosing windows where the active
coefficient is large; no installed theorem decorrelates that selector from
expanding strain directions.

Therefore the local positive part can concentrate exactly on `Bad_N(\eta)`.
This is not ruled out by energy inequality, incompressibility, pressure
projection, or the unweighted shell-exchange antisymmetry.

## Why Pressure Does Not Force The Sign

The pressure Poisson law enforces incompressibility and redistributes the trace
part of the nonlinearity.  It does not make the local strain-production term
nonpositive.  The pressure-strain attempt already isolates the missing theorem:
one would need a structural depletion law tied to the active packet, not merely
the pressure equation.

## Reduction

To prove `LocalStrainDepletion.A`, the route needs one of:

```math
\textbf{EigenDecorrel.A:}
\quad
\text{active terminal packets decorrelate from expanding strain eigendirections;}
```

```math
\textbf{SignedPositiveBalance.A:}
\quad
\int_{Bad_N(\eta)}(\mathfrak S_{N,loc}^{active})_+
\le
C_{SPB}
\int_{Bad_N(\eta)}(\mathfrak S_{N,loc}^{active})_-
\varepsilon_N,
\qquad
\varepsilon_N\to0;
```

```math
\textbf{LocalPressureStrainDeplete.A:}
\quad
\text{pressure/strain coupling depletes positive active source production on
bad terminal windows.}
```

No installed theorem supplies these.

## Verdict

`LocalStrainDepletion.A` is not solved by the existing signed weighted
commutator material.  It is a genuine positive-part depletion theorem.

The source bypass remains at:

```math
\boxed{
LocalActiveCarleson.A
\quad\text{or}\quad
QDrain.A
\quad\text{or}\quad
MSC.BadAC
\quad\text{or a new positive-part strain depletion theorem.}
}
```
