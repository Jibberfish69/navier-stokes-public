# MPP SourcePulse Parabolic Local-Energy / CKN Audit Note

## Status

Bounded mechanism audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData \Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether the parabolic local energy inequality, CKN
epsilon-regularity, or the installed `ATD_m^\varepsilon` machinery already
excludes terminal source-balanced active pulses.

## Candidate Mechanism

The desired route would be:

```math
\boxed{
ParabolicNoPulse.A:
\quad
\text{a heat-scale active source pulse forces an SCF-good cylinder or
contradicts local energy / CKN.}
}
```

If installed, this theorem gives a terminal good-scale cover and eliminates the
`Jump_avg` branch without a separate source-pulse theorem.

## Audit

The installed CKN/ATD material proves a one-way local gain:

```math
SCF_{base}(Q_r^\Phi)\le\varepsilon_m
\Longrightarrow
ATD_m^\varepsilon
\quad\text{on a smaller same-fluid cylinder}.
```

The contrapositive only types the bad face:

```math
\forall r>0,\ SCF_{base}(Q_r^\Phi)>\varepsilon_m
\Longrightarrow
(a,t)\in\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
Jump_{avg}.
```

This is endpoint classification, not endpoint exclusion.

The local energy inequality supplies controlled same-fluid local balances:

```math
\frac{d}{dt}\int |u|^2\varphi
+2\nu\int |\nabla u|^2\varphi
\le
\int |u|^2(\partial_t\varphi+\nu\Delta\varphi)
+
\int (|u|^2+2p)u\cdot\nabla\varphi.
```

Those balances do not give a terminal label-time-scale modulus for the moving
`E_u+D_u+P` packet.  A gradient/pressure concentration can move through fresh
labels and shrinking scales while preserving the global energy ledger.

The heat-scale pulse countermodel in
`mpp-msc-badac-energy-measure-countermodel-note.md` records the exact
insufficiency: small Lebesgue-time mass of bad windows and small global tail
energy do not prevent order-one scale-critical mixed dissipation on those same
windows.

## Conclusion

Parabolic local energy and CKN regularity are already used correctly as the
good-scale supplier and endpoint-typing mechanism.  They do not install
source-pulse exclusion.

At current route resolution,

```math
\boxed{
ParabolicNoPulse.A
\ \Longleftrightarrow_{\mathrm{route}}\
SourcePulseExclusion.A.
}
```

No promotion is licensed from local energy, CKN, or `ATD_m^\varepsilon` alone.
