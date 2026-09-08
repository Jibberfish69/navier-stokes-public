# Euler finite-time concentration exclusion attempt

## Fixed target
Work on one smooth finite-energy 3D incompressible Euler history on R^3 with u0 in H^infinity_sigma. The target is to prove that finite-time spatial concentration cannot occur, while allowing steady localized flows and arbitrary conservative redistribution. No weighted scalarization is used.

## 1. Exact deformation-pressure equation
Let X(a,t) be the Lagrangian map and F=grad_a X. Then

F' = A F,  A=grad u(X(a,t),t),  det F = 1.

Differentiating Euler gives along trajectories

D_t A + A^2 + P = 0,  P=Hess p.

Therefore

F'' = (D_t A + A^2)F = -P F.

Thus pressure Hessian is exactly the matrix governing infinitesimal material focusing/defocusing. Blowup of a deformation singular value requires anisotropic focusing because det F=1.

## 2. No universal pressure convexity
Pressure satisfies

Delta p = -tr(A^2) = -|S|^2 + |omega|^2/2.

This fixes only tr P, not the signs of the eigenvalues of P. The affine incompressible strain

A(t)=diag((T-t)^(-1),-(T-t)^(-1),0)

solves Euler with quadratic pressure having

P(t)=diag(-2(T-t)^(-2),0,0).

Its deformation has singular values proportional to ((T-t)^(-1),(T-t),1), hence anisotropic finite-time collapse is fully compatible with the local pressure/incompressibility algebra. This affine solution has infinite energy on R^3, so it identifies the exact role of the global finite-energy hypothesis: a proof must rule out localization of this affine-type focusing.

## 3. Exact exclusion of isotropic material concentration
Because det F=1, no positive-volume material parcel can shrink in all three directions. If sigma_1>=sigma_2>=sigma_3>0 are singular values of F, then

sigma_1 sigma_2 sigma_3=1.

Hence sigma_3->0 forces sigma_1->infinity. Any finite-time concentration mechanism is necessarily anisotropic stretching/thinning.

## 4. Coherent isolated vortex-tube exclusion
Assume a material vortex tube contains an isolated cylindrical segment of length L(t), core radius a(t), and a surrounding vortex-free annulus a(t)<r<R(t) along that segment. Let Gamma !=0 be the Kelvin circulation linking the tube. For every linking circle C_{r,z}, Kelvin/Stokes gives circulation Gamma. Cauchy-Schwarz gives

Gamma^2 <= (2 pi r) int_{C_{r,z}} |u|^2 ds,

so

int_{C_{r,z}} |u|^2 ds >= Gamma^2/(2 pi r).

Integrating r from a to R and z along the segment yields the kinetic-energy lower bound

E >= Gamma^2 L/(4 pi) log(R/a).

If the segment is a coherent material tube of fixed positive volume V comparable to pi a^2 L, incompressibility gives L comparable to V/(pi a^2). Therefore

E >= c Gamma^2 V a^{-2} log(R/a).

If the tube retains an isolated annular neighborhood with R/a bounded below by a constant >1, then a(t)->0 forces E->infinity, contradicting conservation of finite kinetic energy. Thus finite-time collapse of an isolated coherent positive-volume vortex tube with nonzero circulation is impossible.

## 5. What remains after this exclusion
A generic singularity can evade the tube lower bound only by losing one of the coherent-tube hypotheses: the concentrating material set can have vanishing initial volume, circulation can vanish with scale, neighboring opposite-sign structures can destroy an isolated linking annulus, or the geometry can become sheet-like/interleaved so that annular energy neighborhoods overlap. The all-height H^infinity intersection at strict times does not itself exclude these scale-dependent geometries.

## 6. Scaling check
Finite kinetic energy alone cannot exclude concentration. Under the Euler spatial scaling u_l(x)=l^{-1}u(x/l),

||u_l||_2^2 = l ||u||_2^2,

while |grad u_l| scales like l^{-2}. Thus a highly concentrated smooth packet can carry vanishing kinetic energy while its gradient diverges. Any full no-concentration theorem must therefore use more than conservation of total L^2 energy; it must exploit same-history geometry/topology/nonlocal pressure interaction across scales.

## 7. Current narrowed theorem target
The direct program now proves:

- isotropic positive-volume material collapse is impossible exactly;
- isolated coherent nonzero-circulation vortex-tube collapse is impossible at finite energy;
- pointwise pressure Hessian has no restoring sign and can support affine-type anisotropic collapse locally.

The remaining global theorem is to rule out localized anisotropic concentration with vanishing-scale circulation/volume or strongly interacting cancellation geometry. This is the genuine finite-energy Euler concentration problem.