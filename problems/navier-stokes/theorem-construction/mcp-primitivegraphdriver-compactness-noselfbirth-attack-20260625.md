# Primitive Graph-Driver Compactness / No-Self-Birth Attack

Date: 2026-06-25

Status: direct compactness attack installed; retained-coefficient branch closes, coefficient-escape branch is exactly the remaining available-participation entropy problem.

## 0. Target

The previous direct attack identified the primitive graph-driver PLS interface
as the moving low-high material deformation coefficient acting on the active
shell:

```math
d\Omega_N^{graph-driver}
\simeq
\sum_j w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt.
\tag{PGC.1}
```

Here \(H_{j,N}\) is the high-shell same-material packet and
\(\mathcal M_{<j-C,N}\) is the low-band material coefficient made from strain,
pressure Hessian, coefficient/frame motion, Helmholtz--Leray/Stokes motion, transported
collar motion, and annular Cauchy stress service.

The direct storage candidates have the right derivative orientation but fail
their lower-bound test unless the continuation-depth material record is already
controlled.  This note attacks the same object by compactness/minimal
counterexample instead.

## 1. Normalized failure sequence

Assume the desired no-self-birth estimate fails.  Then there are smooth
same-material windows \(I_m\) such that

```math
\int_{I_m}d\Omega_{N,m}^{graph-driver}=1
\tag{PGC.2}
```

while every already-paid branch tends to zero:

```math
\int_{I_m}
\left(
dD_{N,m}^{vis/rad}
+d\Omega_{N,m}^{top\ strain/frame}
+d\Omega_{N,m}^{base\ collar}
+d\Omega_{N,m}^{recirc}
+dR_{N,m}^{legal}
\right)
\longrightarrow0.
\tag{PGC.3}
```

The paid branches in `(PGC.3)` are precisely the branches already discharged
by the subheat absorption, wrong-sign recirculation, top-strain/frame,
base-collar, relative Schur defect, and legal-residual notes.  Nothing
pressure-only or viscosity-only is being separated from the full packet.

## 2. If the material coefficient is retained, compactness closes the branch

Add the retained-coefficient hypothesis

```math
\sup_m
\int_{I_m}
\|\mathcal M_{<j-C,N,m}(t)\|_{\mathcal X_N}\,dt
<\infty
\tag{PGC.4}
```

at the same finite material depth and on the same transported annular carrier.
Then the same-material compactness package gives, after extracting a
subsequence,

```math
H_{j,N,m}\to H_{j,N,*},
\qquad
\mathcal M_{<j-C,N,m}\to \mathcal M_{<j-C,N,*}
\tag{PGC.5}
```

strongly enough on the retained carrier to pass the quadratic form in
`(PGC.1)`.

The vanishing of `(PGC.3)` has two consequences.

First, high-shell viscous/radial loss vanishes.  The material Bernstein
residence and the already-installed zero-loss rigidity force the retained
active high-shell part to be a gauge/null packet on the retained carrier:

```math
H_{j,N,*}=0
\quad\text{in the quotient by the harmless gauge/null space.}
\tag{PGC.6}
```

Second, the relative pressure/collar defect and interface recirculation vanish,
so the pressure, coefficient, Helmholtz--Leray/Stokes, collar, and annular stress records
are retained as the same packet, not as a different limiting object.

Therefore the limiting graph-driver readout is zero:

```math
\left[
\left\langle H_{j,N,*},
\mathcal M_{<j-C,N,*}H_{j,N,*}
\right\rangle
\right]_+=0.
\tag{PGC.7}
```

By lower semicontinuity and strong same-carrier convergence, `(PGC.7)`
contradicts the normalization `(PGC.2)`.

Thus the compactness/no-zero-mode argument proves:

```math
\boxed{
\text{normalized primitive graph-driver cannot survive with vanishing paid
branches while the low material coefficient remains retained.}
}
\tag{PGC.8}
```

## 3. The only surviving compactness failure is coefficient escape

The failure of the retained-coefficient hypothesis `(PGC.4)` is

```math
\int_{I_m}
\|\mathcal M_{<j-C,N,m}(t)\|_{\mathcal X_N}\,dt
\to\infty
\quad\text{or concentrates without retained limit.}
\tag{PGC.9}
```

But \(\mathcal M_{<j-C,N}\) is not an external coefficient.  It is exactly the
same pressure-viscosity-incompressibility-velocity material record:

```math
S_{<j-C}S,\quad
S_{<j-C}\nabla_x^2p,\quad
S_{<j-C}\dot G,\quad
S_{<j-C}\dot B_\psi,
\quad
\text{Helmholtz--Leray/Stokes and annular stress service}.
\tag{PGC.10}
```

So `(PGC.9)` is not a detached compactness defect.  It is the same one-way
material-record growth branch:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\,d\Omega_N^{PLS}
+dR_N^0.
\tag{PGC.11}
```

In words: the only way the primitive graph-driver avoids the retained-packet
rigidity argument is for the low material coefficient itself to blow up or
concentrate.  That is exactly the continuation-depth record growth whose
finite total mass is the available-participation entropy theorem.

## 4. Why this does not solve the full clock

The compactness argument proves a conditional coercivity:

```math
d\Omega_N^{graph-driver}
\le
C\,d\Omega_N^{paid}
\quad
\text{on the retained-coefficient branch.}
\tag{PGC.12}
```

It does not prove the global estimate

```math
\int_0^{T^*}d\Omega_N^{graph-driver}<\infty
\tag{PGC.13}
```

because the coefficient-escape branch `(PGC.9)` is the same clock at the
moving lower band.  Treating `(PGC.9)` as an external compactness defect would
just rename the missing clock.  Treating it as legal residual would break full
participation.  The correct reading is:

```math
\text{retained primitive driver is rigid/paid;}
\qquad
\text{unretained primitive driver is material-record growth.}
\tag{PGC.14}
```

Thus compactness reduces no-self-birth to the available entropy for the low
material coefficient; it does not replace that entropy.

## 5. Exact remaining noncircular theorem

After this compactness attack, the remaining theorem can be written without
the misleading self-birth language:

```math
\boxed{
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+c_N\,d[\log(1+\mathcal P_N^{mat})]_+
+c_N\,d\Omega_N^{graph-driver,retained}
\le
dR_N^{legal}.
}
\tag{PGC.15}
```

Equivalently, prove finite positive variation of the low material coefficient
itself:

```math
\int_0^{T^*}
\|\mathcal M_{<j-C,N}(t)\|_{\mathcal X_N}^{+,\mathrm{rect}}
\,dt
<\infty
\tag{PGC.16}
```

on the original transported material history, with pressure, viscosity,
incompressibility, velocity, material frame, Helmholtz--Leray/Stokes projection, collar,
and annular Cauchy stress kept as one packet.

## Verdict

The compactness/no-zero-mode method closes the retained-coefficient branch of
the primitive graph-driver.  The unclosed branch is not a new obstruction and
not a detachable defect: it is the low material coefficient escaping, which is
the same one-way material-record growth already admitted to the PLS clock.

Therefore the final available-participation entropy cannot be bypassed by
compactness alone.  It must pay the positive variation of the material
coefficient itself.
