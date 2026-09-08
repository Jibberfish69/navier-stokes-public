# Euler pressure spatial-dilution theorem — exact test

## Target
Test the proposed theorem that for smooth finite-energy incompressible Euler on R^3, pressure plus incompressibility force finite motion to spread/dilute through the infinite domain strongly enough to preserve the common projective Sobolev intersection on every temporal rung.

Let e=|u|^2/2. Smooth Euler gives the exact local energy law

∂_t e + div((e+p)u)=0.

For every smooth spatial observable phi with sufficient decay/control,

d/dt ∫ phi e dx = ∫ grad phi · u (e+p) dx.

For phi(x)=|x|^2,

I(t)=∫ |x|^2 e dx,
I'(t)=2∫ x·u(e+p) dx.

The right side has no sign. Under the Euler time-reversal transformation u(x,t) -> -u(x,-t), pressure and e are unchanged while I' changes sign. Hence pressure plus incompressibility do not furnish a universal one-way virial/spreading law.

Likewise for a ball B_R,

d/dt ∫_{B_R} e dx = -∫_{∂B_R}(e+p) u·n dS,

and the pressure-complete energy flux has either sign: energy may flow outward or inward.

A decisive counterexample to forced spatial spreading is supplied by the known existence of nontrivial smooth compactly supported steady 3D Euler flows on R^3 (Gavrilov; later exposition/constructions by Constantin-La-Vicol). For such a solution u(x,t)=U(x), the support remains bounded, local energy in a ball containing the support is constant, and spatial energy moments are constant. Thus infinite ambient volume does not force dilution of every Euler solution.

What remains true in the user's projective ontology is:

I_sigma = intersection_{M>=0} H^M_sigma.

For every strict smooth time, Euler's nonlinear map B(f,g)=P((f·grad)g) and pressure map Pi(f,g)=R_iR_j(f_i g_j) map I_sigma x I_sigma continuously into I_sigma (pressure into H^infinity), so every differentiated temporal rung has the same spatial intersection while the smooth solution exists. Leray gives coordinatewise orthogonal pressure completion at every M.

The literal spatial-dilution theorem is false. Therefore the common-intersection closure cannot be obtained from a universal claim that pressure forces finite energy to spread into the infinite volume. Any global regularity proof using this ontology must instead establish a no-concentration/deformation estimate compatible with steady localized solutions: it must allow stationary compact support while ruling out finite-time collapse of spatial scales/gradient blow-up.

A useful exact reformulation is therefore: pressure/incompressibility provide conservative nonlocal redistribution, not a one-way dispersive brake. The needed theorem is a finite-time no-concentration law, rather than forced asymptotic spreading.