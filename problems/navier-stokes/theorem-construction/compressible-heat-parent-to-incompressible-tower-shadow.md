# Compressible Heat Parent To Incompressible Tower Shadow

## Status

This is a theorem-facing bridge note.

Its job is not to replace the Clay target.
The target remains the classical incompressible Navier--Stokes equation on
`\mathbb R^3`.

Its job is to state one physically corrected parent picture and then show, as
cleanly as possible, what the current incompressible tower looks like after the
parent model is reduced into the low-Mach / incompressible window.

So this note answers:

```math
\boxed{
\text{what larger fluid system should be treated as the realistic parent, and what exactly gets truncated away when one passes to the present NS tower?}
}
```

## 1. Realistic parent system

For a generic classical fluid with actual heating, the natural parent model is
the compressible Navier--Stokes--Fourier system:

```math
\partial_t \rho + \nabla\cdot(\rho u)=0,
\tag{1}
```

```math
\rho(\partial_t u + u\cdot\nabla u)
=
-\nabla p + \nabla\cdot\tau + \rho f,
\tag{2}
```

```math
\rho c_v(T)(\partial_t T + u\cdot\nabla T)
=
-p\,\nabla\cdot u
+
\tau:\nabla u
+
\nabla\cdot(k(T)\nabla T)
+
Q,
\tag{3}
```

with constitutive laws

```math
p=p(\rho,T),
\qquad
\tau
=
\mu(T)\Big(\nabla u+\nabla u^\top-\frac23(\nabla\cdot u)I\Big)
+
\lambda(T)(\nabla\cdot u)I.
\tag{4}
```

This is the point where heat truly touches every variable:

- `T` changes pressure through `p(\rho,T)`;
- `T` changes viscosity through `\mu(T),\lambda(T)`;
- `T` changes conduction through `k(T)`;
- compression work `-p\,\nabla\cdot u` couples temperature back to volume change;
- viscous heating `\tau:\nabla u` couples deformation back to temperature.

So in the realistic parent picture:

```math
\boxed{
\text{heat is not one extra equation sitting beside the fluid;}
}
```

```math
\boxed{
\text{heat changes the constitutive laws and therefore changes the principal operator seen by momentum and temperature.}
}
\tag{5}
```

## 2. Mixed-jet tower for the realistic parent

Define

```math
D^{m,\alpha}:=\partial_t^m\partial_x^\alpha,
\tag{6}
```

and the parent jets

```math
R_{m,\alpha}:=D^{m,\alpha}\rho,
\qquad
U_{m,\alpha}:=D^{m,\alpha}u,
\qquad
\Theta_{m,\alpha}:=D^{m,\alpha}T.
\tag{7}
```

The exact full differentiated system is combinatorially large because
derivatives can land on:

- `\rho`,
- `u`,
- `T`,
- `p(\rho,T)`,
- `\mu(T),\lambda(T)`,
- `k(T)`.

The clean principal-part tower is therefore the right first object.

Set

```math
a:=\rho,
\qquad
b:=\rho c_v(T),
\qquad
c_\rho:=\partial_\rho p(\rho,T),
\qquad
c_T:=\partial_T p(\rho,T),
\tag{8}
```

```math
\beta(T):=\lambda(T)+\frac13\mu(T).
\tag{9}
```

Then the principal-part mixed-jet tower is

```math
(\partial_t+u\cdot\nabla)R_{m,\alpha}
+
\rho\,\nabla\cdot U_{m,\alpha}
=
\mathcal R^{\mathrm{l.o.t.}}_{m,\alpha},
\tag{10}
```

```math
\rho(\partial_t+u\cdot\nabla)U_{m,\alpha}
+
\nabla\!\big(c_\rho R_{m,\alpha}+c_T\Theta_{m,\alpha}\big)
=
\mu(T)\Delta U_{m,\alpha}
+
\beta(T)\nabla\nabla\cdot U_{m,\alpha}
+
\mathcal M^{\mathrm{l.o.t.}}_{m,\alpha},
\tag{11}
```

```math
\rho c_v(T)(\partial_t+u\cdot\nabla)\Theta_{m,\alpha}
+
p\,\nabla\cdot U_{m,\alpha}
=
\nabla\cdot\!\big(k(T)\nabla\Theta_{m,\alpha}\big)
+
\mathcal H^{\mathrm{l.o.t.}}_{m,\alpha}.
\tag{12}
```

Here `\mathcal R^{\mathrm{l.o.t.}}_{m,\alpha}`,
`\mathcal M^{\mathrm{l.o.t.}}_{m,\alpha}`,
`\mathcal H^{\mathrm{l.o.t.}}_{m,\alpha}` collect all lower-order Leibniz terms
coming from derivatives hitting coefficients and lower jets.

This is the most realistic generic fluid tower near our present discussion.

## 3. What this parent tower says structurally

Three points matter.

### (a) Density is not diffused directly

The mass tower is transport/compression:

```math
(\partial_t+u\cdot\nabla)R_{m,\alpha}
+
\rho\,\nabla\cdot U_{m,\alpha}
=
\cdots
\tag{13}
```

So density is moved by compression/expansion, not by its own heat operator.

### (b) Velocity and temperature both see parabolic operators

Momentum sees the viscous operator

```math
\mu(T)\Delta U_{m,\alpha}
+
\beta(T)\nabla\nabla\cdot U_{m,\alpha},
\tag{14}
```

while temperature sees

```math
\nabla\cdot(k(T)\nabla \Theta_{m,\alpha}).
\tag{15}
```

So the realistic parent is already a two-parabolic-channel system:

```math
\boxed{
\text{momentum diffuses and temperature diffuses, but density couples through compression.}
}
\tag{16}
```

### (c) Pressure is no longer a pure constraint

In the parent model,

```math
\nabla p
=
\nabla p(\rho,T),
\tag{17}
```

so pressure is a true thermodynamic field coupling density and temperature back
into motion.

That is the fundamental difference from the incompressible tower.

## 4. Low-Mach / heated reduction

To return toward the present theorem lane, impose the regime:

1. small Mach number;
2. small relative density variation around a reference state `\rho_0`;
3. temperature not absent, but thermodynamically mild enough that acoustic
   compression is not the dominant motion channel.

Write formally

```math
\rho = \rho_0 + \varepsilon r,
\qquad
p = p_0 + \varepsilon \pi_1 + \varepsilon^2 \pi,
\qquad
\varepsilon \ll 1.
\tag{18}
```

At leading order, the continuity equation forces

```math
\|\nabla\cdot u\|_{\mathcal X}\le C_{\mathcal X}\varepsilon,
\tag{19}
```

and in the incompressible limit,

```math
\nabla\cdot u=0.
\tag{20}
```

Then the large thermodynamic pressure pieces are no longer evolved as free
observable dynamics.
Instead they reorganize into a constraint pressure enforcing the divergence-free
window.

So the low-Mach reduction performs the first major truncation:

```math
\boxed{
\text{the compression/expansion channel is suppressed as an independent visible dynamical channel.}
}
\tag{21}
```

## 5. Two reduced windows

From the realistic parent, there are two nearby reduced models.

### Window A. Heated incompressible flow

Keep temperature visible, but freeze density in the transport sector:

```math
\nabla\cdot u=0,
\tag{22}
```

```math
\rho_0(\partial_t u + u\cdot\nabla u)
=
-\nabla \pi
+
\nabla\cdot\!\big(2\mu(T)D(u)\big)
+
F_{\mathrm{th}}(T)
+
f,
\tag{23}
```

```math
\rho_0 c_p(\partial_t T + u\cdot\nabla T)
=
\nabla\cdot(k(T)\nabla T)
+
2\mu(T)D(u):D(u)
+
Q.
\tag{24}
```

This is the closest realistic reduced model to the present discussion if one
wants heat to remain an explicit variable.

### Window B. Classical incompressible Navier--Stokes

Now freeze the constitutive coefficients as well:

```math
\mu(T)\rightsquigarrow \mu_0,
\qquad
k(T)\rightsquigarrow k_0,
\qquad
F_{\mathrm{th}}(T)\rightsquigarrow 0,
\tag{25}
```

and suppress the visible thermal equation from the readout package.

Then one lands on

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = \nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{26}
```

This is the current theorem target.

## 6. What the present incompressible tower is hiding

Comparing `(10)`--`(12)` with the current mixed-jet tower, the classical
incompressible tower is obtained by suppressing four visible channels.

### (i) Density channel

The mass jet family `R_{m,\alpha}` disappears entirely.

So the present tower has no visible budget for:

- compression,
- expansion,
- density transport.

### (ii) Temperature channel

The heat jet family `\Theta_{m,\alpha}` disappears entirely.

So the present tower has no visible thermal diffusion channel.

### (iii) Thermodynamic pressure law

The parent pressure gradient

```math
\nabla\!\big(c_\rho R_{m,\alpha}+c_T\Theta_{m,\alpha}\big)
\tag{27}
```

is replaced by the incompressible pressure family `\nabla\Pi_{m,\alpha}`, whose
job is now constraint enforcement rather than constitutive state coupling.

### (iv) Temperature-dependent viscosity law

The parent viscous operator

```math
\mu(T)\Delta U_{m,\alpha}
+
\beta(T)\nabla\nabla\cdot U_{m,\alpha}
\tag{28}
```

is frozen to

```math
\nu \Delta J_{m,\alpha}.
\tag{29}
```

So the present incompressible tower keeps only the visible momentum-diffusion
channel and discards the explicit thermal dependence of the constitutive law.

## 7. Exact effect on the tower cancellations

This is the most important structural consequence.

On the realistic parent tower, the clean incompressible cancellations do not
hold in the same form because:

- `\nabla\cdot u` is not identically zero before the low-Mach reduction;
- pressure is not only a constraint field;
- density and temperature remain visible couplings at principal order.

After the low-Mach/incompressible truncation, the classical identities reappear:

```math
\langle \nabla \Pi_{m,\alpha},J_{m,\alpha}\rangle = 0,
\qquad
\langle (u\cdot\nabla)J_{m,\alpha},J_{m,\alpha}\rangle = 0.
\tag{30}
```

So the present tower identities should be read as the shadow of a stronger
parent system after:

1. compression has been frozen,
2. thermodynamic pressure has been converted into a constraint pressure,
3. constitutive coefficients have been frozen,
4. explicit temperature transport has been suppressed from the visible readout.

## 8. How this helps the current lane

This bridge changes the meaning of the existing tower objects without changing
the theorem target.

### Pressure

Pressure in the current tower should be read as the remnant constraint-shadow of
the larger pressure/volume/temperature coupling of the parent model.

### Viscosity

The current `\nu\Delta J_{m,\alpha}` is the frozen-coefficient shadow of the
parent viscous law `(28)`.

### Mixed terms

The current off-diagonal mixed spread is no longer best read as the whole
physics of fluid interaction.
It is the visible transport-routing residue left after density, temperature,
and constitutive coefficient channels have been truncated away.

So the current tower is not the whole fluid.
It is:

```math
\boxed{
\text{the incompressible frozen-constitutive shadow of a larger mass-momentum-heat tower.}
}
\tag{31}
```

## 9. Relation to the heat-governed carrier route

This note does **not** by itself prove the `NC` / carrier route.

What it does is identify the correct physical parent of the classical tower.

Then the theorem-facing carrier claim can be stated more sharply:

```math
\boxed{
\text{if the underlying carrier law is dissipative enough to govern the parent fluid closure,}
}
```

```math
\boxed{
\text{then the present incompressible tower should be read as a truncated visible shadow of that closure, not as an isolated law creating smoothness from nothing.}
}
\tag{32}
```

That is the correct use of the realistic parent picture.

## 10. Honest boundary

This note does **not** prove:

1. a rigorous low-Mach limit theorem from the realistic parent all the way to
   the present `NS` tower on the active lane surfaces;
2. a theorem that the `NC` / carrier law already realizes the full parent
   thermodynamic closure;
3. a theorem that the missing classical mixed-term burden is automatically
   discharged by the parent model.

It does isolate the right physical comparison:

```math
\boxed{
\text{realistic parent fluid}
\to
\text{heated incompressible window}
\to
\text{classical incompressible frozen-constitutive tower.}
}
\tag{33}
```

That is the clean bridge the current lane was missing.
