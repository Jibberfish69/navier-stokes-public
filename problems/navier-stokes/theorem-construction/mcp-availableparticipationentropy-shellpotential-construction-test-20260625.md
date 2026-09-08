# Available participation entropy shell-potential construction test

Status: natural shell-organization entropy candidate tested; static shell
potential fails; viable entropy must be a coupled PLS symmetrizer, not a scalar
frequency reservoir.

## Target

Construct \(\mathscr A_N\) for the active closure theorem:

```math
\mathscr A_N(t)\ge -C_N(u_0),
\qquad
d\mathscr A_N+c_N\,d\Omega_N^{PLS}\le dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
```

The entropy must measure available organized participation, not ordinary
energy.  The first nontrivial candidate is a same-material frequency
organization potential.

## Same-material shell identity

In the transported material chart, let \(e_j(t)\) denote the shell energy plus
its same-packet pressure/coefficient/collar companions at depth \(N\).  The
full participation-law--strain shell identity has the schematic antisymmetric
transfer form

```math
\dot e_j+\nu d_j
=
\sum_\ell T_{j\leftarrow \ell}^{PLS}+r_j,
\qquad
T_{j\leftarrow \ell}^{PLS}+T_{\ell\leftarrow j}^{PLS}=0.
```

The transfers here are not free fuel.  They are the pressure constraint,
material coefficient motion, Helmholtz--Leray/Stokes motion, collar motion, annular
Cauchy stress work, strain, and viscosity read on the same material packet.

## Candidate: decreasing organization potential

Try

```math
\mathscr A_a(t)=\sum_j a_j e_j(t)
```

with \(a_j\) decreasing in \(j\).  The intended meaning is physical: organized
low/mid-scale structure is available fuel; transfer into higher active shells
uses that organization, so \(\mathscr A_a\) should drop when complexity rises.

Differentiate:

```math
\frac d{dt}\mathscr A_a
+\nu\sum_j a_jd_j
=
\frac12\sum_{j,\ell}(a_j-a_\ell)T_{j\leftarrow \ell}^{PLS}
+\sum_ja_jr_j .
```

For an upward transfer from \(\ell<j\) into shell \(j\),
\(T_{j\leftarrow\ell}^{PLS}>0\), this contributes

```math
-(a_\ell-a_j)T_{j\leftarrow\ell}^{PLS}.
```

Thus this candidate has the correct sign only when \(a_\ell>a_j\).

## Coercivity requirement

To pay the normalized PLS clock, the potential drop must dominate the active
transfer weight:

```math
a_\ell-a_j\gtrsim \gamma_{\ell j}
```

on every legal terminal transfer counted by \(d\Omega_N^{PLS}\), where
\(\gamma_{\ell j}\) is the scale-normalized PLS toll of that transfer.

For adjacent or bounded-distance shell transfers carrying order-one normalized
terminal charge, this requires a uniform positive drop:

```math
a_j-a_{j+1}\ge c>0
```

along arbitrarily high shells.

Then \(a_j\to-\infty\), so the storage

```math
\mathscr A_a=\sum_ja_je_j
```

is not bounded below on the retained continuation-depth state space.  Replacing
\(a_j\) by a bounded decreasing sequence restores the lower bound but makes
\(a_j-a_{j+1}\to0\), so the storage stops paying a fixed normalized terminal
toll.  Saturating the potential has the same failure: boundedness is recovered
by deleting the high-shell payment.

## Why increasing critical weights do not fix this

A critical Sobolev-style weight \(a_j\sim 2^{\sigma j}\) has finite initial
value for smooth data at fixed depth, but it has the wrong orientation:
upward transfer increases \(\mathscr A_a\).  The negative storage
\(-\sum_j2^{\sigma j}e_j\) has the correct sign but is bounded below exactly
when the corresponding continuation-depth weighted energy is already bounded.
That is the restart conclusion, so it is circular.

## Consequence

No static scalar shell potential gives the available participation entropy.
The obstruction is exact:

```math
\text{bounded-below finite reservoir}
\quad\text{and}\quad
\text{uniform high-shell normalized toll}
```

cannot both be supplied by a one-coordinate frequency potential.

Therefore \(\mathscr A_N\) must be a genuinely coupled PLS object:

```math
\mathscr A_N
=
\mathscr A_{org,N}
+X_{PLS,N},
```

where \(X_{PLS,N}\) is a same-packet pressure/strain/coefficient/Helmholtz--Leray/collar
cross-storage and is controlled by the positive organization part:

```math
|X_{PLS,N}|\le \theta\,\mathscr A_{org,N}+C_N(u_0),
\qquad 0<\theta<1.
```

The derivative must produce a signed coercive PLS form:

```math
d\mathscr A_N
+c_N\,d\Omega_N^{PLS}
\le
dR_N^{legal}.
```

So the remaining construction is not a scalar frequency reservoir.  It is a
bounded-below full PLS symmetrizer whose cross-terms turn the pressure,
material-coefficient, Helmholtz--Leray/collar, annular stress-work, strain, and viscous
channels into one coercive organization drop.
