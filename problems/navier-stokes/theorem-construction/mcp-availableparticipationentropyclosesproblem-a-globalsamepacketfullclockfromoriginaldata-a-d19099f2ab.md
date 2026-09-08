# AvailableParticipationEntropyClosesProblem.A

Status: conditional closure theorem.  This note proves that a scale-normalized available-participation entropy closes the active Navier--Stokes route.  It does not claim that the entropy functional has already been constructed.

## Hypothesis: available PLS entropy

Fix \(N\) large enough for the material restart package.  Assume there exists an available-participation entropy/free-energy functional

```math
\mathscr A_N(t)
```

attached to the same transported material history and to the full participation-law--strain carrier, not to viscosity alone, such that

```math
\mathscr A_N(0)\le C_N(u_0)<\infty,
```

```math
\inf_{0<t<T^*}\mathscr A_N(t)\ge -C_N(u_0),
```

and, as measures on \((0,T^*)\),

```math
d\mathscr A_N+c_N\,d\Omega_N^{PLS}\le dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
\tag{APE.1}
```

Here \(d\Omega_N^{PLS}\) is the full participation-law--strain clock: pressure constraint, material Helmholtz--Leray/Stokes projection, coefficient/metric motion, transported collar motion, Cauchy stress/annular stress-work, strain, and viscosity on the same fluid packet.

The functional \(\mathscr A_N\) must carry scale-normalized critical-action size.  The energy-bounded no-waste obstruction rules out functionals whose available drop is bounded only by ordinary shell energy.

## Step 1: finite full PLS clock

Integrating `(APE.1)` on \((0,t)\) gives

```math
\mathscr A_N(t)-\mathscr A_N(0)
+c_N\int_0^t d\Omega_N^{PLS}
\le
\int_0^t dR_N^{legal}.
```

Therefore

```math
c_N\int_0^t d\Omega_N^{PLS}
\le
\mathscr A_N(0)-\mathscr A_N(t)
+
\int_0^t dR_N^{legal}
\le
2C_N(u_0)+\int_0^{T^*}dR_N^{legal}.
```

Letting \(t\uparrow T^*\),

```math
\boxed{
\int_0^{T^*} d\Omega_N^{PLS}<\infty .
}
\tag{APE.2}
```

This discharges the full-clock finiteness burden once `(APE.1)` is available.

## Step 2: finite material-record positive variation

The one-way material-record growth channel is admitted to the PLS clock:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le C_N\,d\Omega_N^{PLS}+dR_N^0,
\qquad
\int_0^{T^*}dR_N^0<\infty .
\tag{APE.3}
```

Combining `(APE.2)` and `(APE.3)` gives

```math
\int_0^{T^*}d[\log(1+\mathcal P_N^{mat})]_+<\infty .
\tag{APE.4}
```

Since the original data are smooth, \(\mathcal P_N^{mat}(0)<\infty\).  Finite positive variation implies

```math
\sup_{t<T^*}\mathcal P_N^{mat}(t)<\infty .
\tag{APE.5}
```

## Step 3: material record to fixed \(H^s\) restart

The material package contains the velocity tower, pressure/incompressibility tower, coefficient/metric tower, collar/Helmholtz--Leray/interface tower, and strain participation on the same transported chart.  Thus the finite material record gives the fixed Eulerian restart bound for some \(s>5/2\):

```math
\sup_{t<T^*}\|u(t)\|_{H_x^s}<\infty .
\tag{APE.6}
```

This is the finite-full-clock to fixed-\(H^s\) continuation bridge.

## Step 4: no finite breakdown

For \(s>5/2\), the standard Navier--Stokes local continuation criterion says that a solution with bounded \(H^s\) norm up to \(T^*\) extends smoothly past \(T^*\).  Thus `(APE.6)` contradicts any finite maximal breakdown time.

Hence the available-participation entropy theorem `(APE.1)` closes the route:

```math
\boxed{
\text{Available PLS entropy}
\Rightarrow
\int_0^{T^*}d\Omega_N^{PLS}<\infty
\Rightarrow
\sup_{t<T^*}\mathcal P_N^{mat}(t)<\infty
\Rightarrow
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty
\Rightarrow
\text{no finite smooth breakdown.}
}
```

## What remains non-conditional

The only remaining theorem is the construction of \(\mathscr A_N\) with `(APE.1)`.  It cannot be ordinary \(L^2\) energy or any energy-bounded Lyapunov.  It must be a scale-normalized full-PLS available organization functional, or an equivalent no-free-pulse coercivity theorem for the full same-material participation law.