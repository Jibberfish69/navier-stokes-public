# AvailableParticipationEntropyConstruction.A

Status: failed as an unconditional construction from installed repo inputs.  This is not a failure of the closure route; it identifies the remaining theorem exactly.

## Target

Construct a present-time same-material functional \(\mathscr A_N(t)\) such that

```math
\mathscr A_N(t)\ge -C_N(u_0),
\qquad
 d\mathscr A_N+c_N\,d\Omega_N^{PLS}\le dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
```

Here \(d\Omega_N^{PLS}\) is the full participation-law--strain clock: pressure constraint, material Helmholtz--Leray/Stokes projection, material coefficient/metric motion, transported collar motion, annular Cauchy stress-work, strain, and viscosity on the same fluid packet.

## Non-circularity requirement

The definition

```math
\mathscr A_N(t)=\int_t^{T^*}d\Omega_N^{PLS}
```

or any cumulative future-action variant is inadmissible.  It has the desired derivative only if the target clock is already finite.  It does not construct the entropy from original data.

Conversely, if the finite full clock were already known, one could take \(\mathscr A_N\equiv0\) and \(dR_N^{legal}=c_N\,d\Omega_N^{PLS}\).  Thus the storage theorem has exactly the strength of the final full-clock estimate unless the residual measure is independently finite from original data.

## Candidate 1: ordinary energy / ordinary shell energy

Ordinary energy is bounded below and finite initially, but it pays only the physical first-moment ledger.  It gives viscosity/dissipation size, not the full normalized PLS clock.  The heat-scale pulse obstruction has

```math
\int_{I_j}D_jdt\to0,
\qquad
\int_{I_j}2^{-j}D_j^2dt=1.
```

Thus an energy-bounded functional has too little available drop to pay one unit of normalized critical PLS action per heat-scale pulse.  This candidate fails.

## Candidate 2: negative weighted material energy

The exact pump identity has the form

```math
d(-E_w)+[m_w^{PLS}]_+dt
=
\nu D_wdt+[-m_w^{PLS}]_+dt.
```

This has the correct sign for the positive pump, but \(-E_w\) is bounded below only if \(E_w\) is bounded.  That boundedness is the continuation-depth conclusion.  Saturating \(-E_w\) restores a lower bound but loses full payment on large pulses.  This candidate is circular or loses the clock.

## Candidate 3: material record/log record

The installed record-growth calculation gives a readout

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le C_N\,d\Omega_N^{PLS}+dR_N^0.
```

This admits one-way material-record growth to the PLS clock.  It is not a producer of finite PLS action.  Taking \(-\log(1+\mathcal P_N^{mat})\) as storage is bounded below only after the material record is already bounded.  This candidate is also circular.

## Candidate 4: annular stress-work / pressure-time storage

The local energy identity places payment in the annular Cauchy stress-work channel:

```math
\frac d{dt}M_\phi+2\nu\int\phi|S|^2dx
=-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx.
```

This is the correct carrier and rules out viscosity-only accounting.  But the annular stress-work term is signed and can exchange energy with neighboring same-fluid regions.  Existing identities give visibility and same-packet attachment, not a bounded-below storage whose drop controls rectified positive PLS variation.  This candidate lacks the required sign/coercivity.

## Candidate 5: full PLS entropy/free energy

The only viable object is a scale-normalized available-organization functional that is not bounded merely by ordinary energy and that carries unweighted critical-action size.  It must prove a real no-free-pulse/coercive projected flux-commutator identity:

```math
 d\mathscr A_N+c_N\,d\Omega_N^{PLS}\le dR_N^{legal}.
```

No installed surface currently constructs such a functional.  The live edge now correctly records this as

```math
\texttt{frontier-open-construct-available-participation-entropy}.
```

## Verdict

The requested existence theorem is not proved by the installed identities.  The conditional closure is proved, but the independent construction of \(\mathscr A_N\) is the live remaining theorem.

The exact remaining claim is:

```math
\boxed{
\text{construct a scale-normalized full-PLS available entropy, not energy-bounded, with a bounded-below coercive drop against }d\Omega_N^{PLS}.
}
```

Equivalently:

```math
\boxed{
\text{prove no free normalized terminal pulse can occur as a legal full same-material PLS transaction.}
}
```