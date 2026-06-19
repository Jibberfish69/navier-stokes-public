# MPP NativeTrilinearDefectDomination.A Direct Attempt Note

## Status

Direct attempt on the survivor left by
`mpp-nativesourceac-direct-attempt-note.md`:

```math
\boxed{
NativeTrilinearDefectDomination.A.
}
```

This theorem must dominate the native positive active trilinear/source defect
by installed quadratic route ledgers on terminal same-fluid active packets.  Once
proved, it proves `NativeSourceAC.A` and hence `SourcePulseExclusion.A`.

The theorem is not installed by the current route inputs.

## Target

For terminal active packet families `\mathcal F_N`, prove a domination of the
form:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc} w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1).
\tag{NTD.1}
```

Equivalently, prove that the singular part of the positive trilinear defect
measure vanishes:

```math
\mu_{\ast}^{sing}=0.
\tag{NTD.2}
```

## Attempt 1: Trace-Free Strain

Incompressibility gives:

```math
\operatorname{tr}S=0.
```

It does not imply:

```math
\langle S w,w\rangle\le0.
```

A trace-free symmetric matrix in three dimensions can have positive
eigenvalues, and the terminal active packet can align with the expanding
eigendirection.  Therefore trace-free strain does not dominate the positive
trilinear defect.

## Attempt 2: Quadratic Energy Defect Domination

One might try:

```math
\left[
\langle S_{<j}w_j,w_j\rangle
\right]_+
\le
C_{NTD}
|S_{<j}|\,|w_j|^2
```

and then charge the right side by dissipation.  This requires a terminal
integrability bound for `|S_{<j}|` in the native packet topology, for example
an `L^1_tL^\infty_x` or Carleson coefficient bound on selected bad windows.

The current energy/enstrophy layer gives finite `L^2`-type control, and
Calderon-Zygmund maps vorticity/strain in finite-`p` spaces.  It does not give
the packet coefficient bound needed to control the positive trilinear defect by
dissipation with a retained coefficient margin `0<theta<1`.

Thus quadratic energy defect domination is not installed.

## Attempt 3: Div-Curl / Commutator Compensation

The signed convective nonlinearity has divergence structure.  However
`(NTD.1)` is not the signed divergence pairing; it is the localized, weighted,
same-fluid, positive-part active source carrier.

A div-curl or commutator theorem would need to survive:

```math
\text{weights}
\quad+\quad
\text{cutoffs}
\quad+\quad
\text{terminal active selection}
\quad+\quad
\text{positive-part extraction}.
```

The installed commutator identities cancel only before these operations.  After
them, the principal strain term is sign-indefinite and can carry a positive
defect measure.  No installed compensated-compactness theorem eliminates that
defect measure.

Thus compensation does not prove `NativeTrilinearDefectDomination.A`.

## Attempt 4: Pressure Projection

The Leray pressure projection removes gradients and enforces divergence-free
velocity.  It does not remove the physical strain-production term in the
active vorticity/shell packet.  Pressure estimates control legal elliptic
responses and cutoff losses, not positivity of:

```math
\langle S_{<j}^{loc}w_j,w_j\rangle_+.
```

Thus pressure projection does not prove `(NTD.1)`.

## Attempt 5: Finite-Band Orthogonality

Finite Littlewood-Paley banding and orthogonality help separate interactions by
frequency.  The active packet already lives at a legal finite band.  The
surviving source term is a legal low/high interaction or a same-band interaction
with shell indices satisfying `|k-j|\le C_{\rm band}` in that finite band.

Orthogonality does not prevent spatial/temporal concentration of the positive
trilinear defect on selected heat-scale windows.

Thus finite-band structure does not prove `NativeTrilinearDefectDomination.A`.

## Attempt 6: Terminal Smoothness

For every fixed `t<T_\ast`, the solution is smooth.  The terminal packet has:

```math
j_n\to\infty,
\qquad
t_n\uparrow T_\ast.
```

Smoothness on compact preterminal intervals does not give a uniform terminal
coefficient bound at these moving shells.  A proof here would be a continuation
criterion in disguise, and would already eliminate the endpoint.

Thus terminal smoothness does not prove `(NTD.1)` without circularity.

## Result

The direct trilinear-defect route has no installed discharge.  It is exactly
the native positive source singularity problem:

```math
\boxed{
\mu_{\ast}^{sing}=0
}
```

or, in PDE language:

```math
\boxed{
\text{terminal active strain/source alignment cannot carry a singular
positive trilinear defect measure.}
}
```

## Verdict

`NativeTrilinearDefectDomination.A` is not installed by incompressibility,
energy/enstrophy, Calderon-Zygmund pressure/strain bounds, signed commutator
compensation, pressure projection, finite-band orthogonality, same-fluid
transport, or compact preterminal smoothness.

It is the current narrowest analytic form of the source-pulse obstruction, not
a solved theorem.

The follow-up note
`mpp-native-trilinear-defect-alignment-split-note.md` splits this survivor into
the only three native faces of the normalized positive trilinear carrier:
coefficient control for `S_{<j}^{loc}`, active square amplitude/Carleson
control for `|w_j|^2`, and decorrelation from expanding strain eigendirections.
None of those faces is installed by this direct attempt.
