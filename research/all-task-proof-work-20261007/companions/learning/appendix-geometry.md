# Learning guide to Appendices E through M

**Companion C04 — reviewed scope.** Detailed E–M geometry, flux, material-derivative, pressure and source-budget derivations.

Appendix G production, pressure and acceleration bounds and J endpoint/material-row bounds consume the indicated finite whole-interval rectangles. Constants are finite for each selected order; no all-order uniform bound follows. J’s Eulerian/material intersection equivalence identifies membership classes and does not produce membership.

E retains complete chord endpoint transport, nonlinear pressure and redistribution; its concentration-action bound is a separate sufficient target. F’s momentum-square root separation and M’s critical/H3 source tests are independent conditional criteria. Material acceleration need not be solenoidal. Conservative-force removal with the same velocity holds exactly when Pf=0. The source-only angular estimate requires actual axisymmetry; angular averages retain fluctuation stresses. The fixed cutoff test proves nonzero projected jets locally; flatness at one point does not erase the force.

The scope is strict-history identities, explicit sufficient criteria and rectangle-dependent consequences. Candidate source comparisons and the periodic comparison recorded in the historical guide are not fresh primary-source verifications in this edition. Neither candidate norm divergence nor Appendix G/J consequences supply new global certification. The guide’s recorded public combined PDF identity is separate from a local source build; DOI/page correspondence alone establishes no byte identity.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.

Thomas Birnie, public version 1, September 2026  

## SOURCE AND SCOPE

Source: Global Smoothness for the Unforced and Forced Three-Dimensional Incompressible Navier–Stokes Equations with a Refutation of OpenAI's Finite-Time Blowup Claim, DOI https://doi.org/10.6084/m9.figshare.34005666.v1 .  
Public PDF: https://ndownloader.figshare.com/files/69392430 . The public source has 229 printed pages, which coincide with PDF page numbers. This guide covers pp. 203–227; pp. 228–229 contain the final conclusion and references. Citations below give appendix, equation number, and printed page, with page-specific PDF links at section openings.  

Purpose: reconstruct what these appendices calculate, explain how the mechanisms fit together, and distinguish estimates derived directly from a strict classical history from estimates that use the paper’s already-selected finite rectangles. This is a learning guide, not an independent certification of the paper’s global theorem. References to the proposed exterior describe the formulas used in this manuscript; their identification with the cited candidate manuscript is discussed separately in the Part III companion.  

## READING MAP

E: Builds a positive critical height by adding a remaining source reserve; distributes critical production through a nonlocal chord tensor; derives the exact local density equation, pressure/transport redistribution flux, and diffusion estimates. It also states exactly which additional concentration action would close this route.  
F: Squares the projected momentum equation and extracts a genuinely data-dependent, smallness-type sufficient criterion via the forbidden interval between two roots of a quadratic.  
G: Starting with finite rectangles, bounds all temporal-row production and work, both transport projections, nonlinear pressure, acceleration, and an exact unforced action identity.  
H: Converts the ordinary viscous dissipation budget into an integral-in-labels bound on material shape distortion.  
I: Derives the complete angular momentum equation; proves a force-only maximum-principle estimate in the axisymmetric case; identifies the fluctuation stresses that obstruct transferring it to an angular average of a nonaxisymmetric field.  
J: Gives endpoint rates, the full commutators for material derivatives, incompressibility compatibility identities, equivalence of complete Eulerian and material derivative intersections, and an explicit finite rectangle for any requested finite material order.  
K: Characterizes exactly which forces can be removed by changing pressure while retaining the velocity.  
L: Uses the fixed cutoff region of the explicit swirl to detect nonzero projected force, including every finite terminal time jet and a positive lower bound against all pressure adjustments.  
M: Derives a critical source-norm continuation criterion directly from strict-interval equations, an H^3 source-budget obstruction for blowup from rest, and strict failure of its small-source condition for the prescribed exterior.  

## BASIC NOTATION AND THE DEPENDENCY DISTINCTION

The equation is u\_t + (u·grad)u + grad p = nu Delta u + f, div u = 0, with nu &gt; 0. P is the Leray projection onto solenoidal fields; Q = I-P is the gradient projection. Lambda = (-Delta)^(1/2). The Fourier transform is unitary. H^m denotes the Bessel/inhomogeneous Sobolev norm and dot H^s denotes the homogeneous norm ||Lambda^s u||\_2. D\_t = partial\_t + u·grad is the material derivative.  

Temporal rows are V\_n = partial\_t^n u, F\_n = partial\_t^n f, and  
  B\_n = sum\_{a=0}^n binom(n,a) (V\_a·grad)V\_{n-a}.  
Their equation is V\_{n+1} + B\_n + grad Q\_n - nu Delta V\_n = F\_n. Here Q\_n is the scalar pressure row, not the projection Q.  

The finite rectangles used by G and J are  
  R\_{N,M} = sum\_{n=0}^N [ ||V\_n||\_{L^2\_t H^{M+1}}^2  
                         + ||V\_{n+1}||\_{L^2\_t H^{M-1}}^2 ].  
At M=0, H^{-1} is the ordinary dual Sobolev space. These definitions are (688), p. 160. All such rectangles are finite if the full mixed intersection I\_T is available. A selected rectangle is a numerical bound on a specified finite set of coordinates, not a uniform bound over all N and M.  

Useful constants (the placement of pi matters):  
  c\_infinity = 1/sqrt(8 pi),  
  C\_3 = 2^(-1/6) pi^(-1/3),  
  c\_\* = C\_\* = C\_3^3 = 1/(sqrt(2) pi),  
  S\_6 = 2^(2/3)/(sqrt(3) pi^(2/3)).  
Thus c\_\* is not 1/sqrt(2 pi). Also S\_6 C\_3 = sqrt(2/3)/pi.  

Independent strict-history estimates: E's identities and kinetic estimates, F's square identity and conditional root barrier, H's distortion bound, I's angular equation and axisymmetric estimate, K's pressure-projection characterization, and M's smallness criteria require no pre-existing terminal rectangle. L requires the stated explicit exterior/cutoff formulas. Their local arguments take place on [0,S], S&lt;T, with limits justified afterwards.  

Rectangle-dependent consequences: G's finite bounds and J's endpoint bounds become statements through T by using the indicated finite rectangles. J.1's equivalence of complete intersections is an independent functional-analytic proposition, but it identifies two regularity classes rather than establishing that a given Navier–Stokes history belongs to either one.  

## E  CRITICAL GROWTH AND THE CHORD DENSITY
Source: pp. 203–208, (875)–(900).  
https://ndownloader.figshare.com/files/69392430#page=203  

### E0  First isolate what the prescribed source can still contribute

Set g = Pf and, for a fixed horizon T,  
  K\_T = ||u\_0||\_2 + integral\_0^T ||g(t)||\_2 dt,  
  H(t) = (1/2)||Lambda^(1/2)u(t)||\_2^2,  
  D(t) = ||Lambda^(3/2)u(t)||\_2^2.  
Here D is a squared norm. The same letter has other meanings in other appendices.  

The kinetic norm inequality gives ||u(t)||\_2 &lt;= K\_t. Because K\_t' = ||g(t)||\_2,  
  integral\_0^t ||g||\_2 ||u||\_2 &lt;= integral\_0^t K\_s K\_s' ds  
      = (K\_t^2 - ||u\_0||\_2^2)/2.  
Substitution in the kinetic energy identity gives the sharpened bound  
  ||u(t)||\_2^2 + 2 nu integral\_0^t ||grad u||\_2^2 &lt;= K\_t^2 &lt;= K\_T^2.  (876)  
This uses no critical-height bound.  

Write the exact critical balance as  
  H' + nu D = P\_H + W,  
  W = Re &lt;u,Lambda g&gt;,     |W| &lt;= b\_f(t) := K\_T ||Lambda g(t)||\_2.  
The spatial derivative on the force is why kinetic energy alone bounds this work. Since b\_f is a known L^1 function, define the remaining reserve  
  R\_f(t) = integral\_t^T b\_f(s) ds,  
  Phi = H + R\_f,  
  Z\_f = b\_f - W &gt;= 0.  
Then  
  Phi' + nu D + Z\_f = P\_H,    Phi &gt;= H &gt;= 0.                         (878)  
The reserve tends to zero at T regardless of whether H has a terminal value. Adding it removes direct positive source work from the differential inequality, but leaves the actual forced velocity, its nonlinear production, and its pressure equation unchanged.  

### E1  Encode critical energy as a nonnegative density of chords

For a center z, separation y, and 0&lt;=theta&lt;=1, set  
  x\_+ = z+(1-theta)y,  x\_- = z-theta y,  
  delta u\_theta = u(x\_+) - u(x\_-),  y\_hat = y/|y|.  
Define  
  T\_u(z) = (1/pi^2) integral\_0^1 integral\_R3  
              |delta u\_theta|^2 |y|^(-4) (y\_hat tensor y\_hat) dy dtheta,  
  tau = trace T\_u.                                                     (879)  
Every matrix T\_u is positive semidefinite. It records both the amount of velocity difference and the orientation of the chords carrying it.  

The fractional Fourier identity and the complete transport pairing give  
  integral tau dz = 2||Lambda^(1/2)u||\_2^2 = 4H,  
  P\_H = - integral S:T\_u dz,  S=(grad u+grad u^T)/2.                     (880)  
The normalization is important: the chord measure is twice the squared homogeneous norm, and therefore four times H.  

Where tau&gt;0, put r=-S:T\_u/tau; elsewhere put r=0. Positivity implies  
  |r| &lt;= ||S||\_op &lt;= |S|\_F.  
Since S is trace-free, if lambda\_i is an eigenvalue, the other two sum to -lambda\_i. Their squared sum is at least lambda\_i^2/2. Thus  
  ||S||\_op^2 &lt;= (2/3)|S|\_F^2.  
Also integral |S|\_F^2 = (1/2)||grad u||\_2^2 for a decaying incompressible field. Combined with (876),  
  integral\_0^T integral |r|^2 dz dt &lt;= K\_T^2/(6 nu).                    (882)  
This is an ordinary-volume L^2 bound. It does not say how much strain the chord density preferentially samples.  

For H&gt;0, dmu\_t = tau dz/(4H) is a probability measure. Put rbar\_+ = integral max(r,0) dmu\_t. Then  
  Phi' &lt;= P\_H &lt;= 4H rbar\_+ &lt;= 4Phi rbar\_+.                             (881)  
Hence a doubling Phi(b)&gt;=2Phi(a)&gt;0 costs at least integral\_a^b rbar\_+ dt &gt;= log(2)/4.  
At H=0 finite energy implies u=0, so tau, P\_H, D and W all vanish. No probability measure is assigned to zero mass. If H=0&lt;Phi, then Phi'=-b\_f&lt;=0, so those times make no positive growth contribution.  

### E2  Turn the mismatch of measures into a concentration action

Normalize instead by the source-adjusted height:  
  rho\_f = tau/(4Phi),  
  V\_f^(-1)(t) = integral\_{r&gt;0} rho\_f(z,t)^2 dz,  
  G\_f = {t: Phi'(t)&gt;0}.                                               (883)  
The total mass of rho\_f is H/Phi&lt;=1. If V\_work^(-1) is defined with tau/(4H), then V\_f^(-1)=(H/Phi)^2 V\_work^(-1).  

On a positive-Phi interval, retain only positive logarithmic growth and apply Cauchy–Schwarz first in z and then in t:  
  log[Phi(b)/Phi(a)]  
    &lt;= 4 [integral\_{[a,b] intersect G\_f} integral r\_+^2]^(1/2)  
         [integral\_{[a,b] intersect G\_f} V\_f^(-1) dt]^(1/2).             (884)  
For N disjoint positive doubling intervals I\_j, write A\_j for the first space-time integral and C\_j for the inverse-volume action. Each A\_j C\_j &gt;= (log 2)^2/16. A second Cauchy–Schwarz estimate gives  
  sum\_j C\_j &gt;= (log 2)^2 N^2/(16 sum\_j A\_j)  
            &gt;= 3 nu (log 2)^2 N^2/(8 K\_T^2).                           (885)  
If K\_T=0 the flow is zero. Otherwise repeatedly doubling costs at least a quadratic growth in total inverse-volume action, because the total ordinary-volume strain budget is finite.  

What this accomplishes: a finite integral of V\_f^(-1) on G\_f bounds Phi from any positive initial value. The central question is now concentration of the density that weights strain, rather than only the size of strain measured against Lebesgue volume.  

### E3  Derive the local density equation without replacing endpoint transport by center transport

Split p=p\_u+p\_f, with -Delta p\_u=partial\_i u\_j partial\_j u\_i and grad p\_f=Qf. Then D\_tu=nu Delta u-grad p\_u+g. Define  
  a\_+ = u(x\_+)-u(z),  a\_- = u(x\_-)-u(z),  
  D\_z = partial\_t+u(z)·grad\_z,  
  K[F] = (1/pi^2) integral\_0^1 integral\_R3 F(z,theta,y)|y|^(-4) dy dtheta.  
The exact chord difference equation is  
  D\_z delta u\_theta = nu Delta\_z delta u\_theta + R + delta g\_theta,  
  R = -delta grad p\_u - (a\_+·grad)u(x\_+) + (a\_-·grad)u(x\_-).            (886)  
A chord carried by its center velocity is not carried by either endpoint. The a\_± terms account for that difference.  

The square/product rule gives  
  (D\_z-nu Delta\_z)tau = I\_tau - 2nu Q\_tau + F\_tau,  
  I\_tau=2K[delta u\_theta·R],  
  Q\_tau=K[|delta grad u\_theta|^2],  
  F\_tau=2K[delta u\_theta·delta g\_theta].                               (887)  
Pressure and endpoint advection remain jointly in I\_tau.  

Direct forcing has a finite absolute spatial integral:  
  ||F\_tau||\_1 &lt;= 4||Lambda^(1/2)u||\_2 ||Lambda^(1/2)g||\_2  
              = 4 sqrt(2H)||Lambda^(1/2)g||\_2.                         (888)  
No sup H is needed for its time integral. Fourier interpolation gives, for E\_s=(1/2)||Lambda^s u||\_2^2 and 0&lt;s&lt;=1,  
  E\_s^(1/s) &lt;= 2^(-1/s)||u||\_2^[2(1-s)/s]||grad u||\_2^2,  
  integral\_0^T E\_s^(1/s) &lt;= 2^(-1/s-1) nu^(-1) K\_T^(2/s).  
In particular integral H^2 &lt;= K\_T^4/(8nu). Hölder with exponents 4 and 4/3 now yields  
  integral\_0^T ||F\_tau||\_1 dt  
    &lt;= 2^(7/4) K\_T nu^(-1/4)  
          ||Lambda^(1/2)g||\_{L\_t^(4/3)L\_x^2}.                          (889)–(890)  
The coefficient is 2^(7/4) times K\_T, not 2 times K\_T^(7/4).  

The global normalization checks are  
  integral Q\_tau = 2D,  
  integral F\_tau = 4W,  
  integral I\_tau = 4P\_H.                                               (891)  
For a fixed chord, delta u is divergence-free in z, so pressure vanishes in its full spatial pairing. Integrating the local equation recovers exactly four times the critical balance. Local pressure transport is not zero merely because this global integral vanishes.  

### E4  Separate center production from the actual redistribution current

The endpoints' joint advection in chord coordinates is  
  c\_theta·grad\_z + delta u\_theta·grad\_y,  
  c\_theta = theta u(x\_+) + (1-theta)u(x\_-).  
Both coordinate divergences vanish. The intrinsic square integrand is  
  div\_z[(u(z)-c\_theta)|delta u\_theta|^2 - 2delta p\_theta delta u\_theta]  
       - div\_y[delta u\_theta |delta u\_theta|^2],  
where delta p\_theta=p\_u(x\_+)-p\_u(x\_-). Thus  
  J\_0 = K[(u-c\_theta)|delta u\_theta|^2 - 2delta p\_theta delta u\_theta].  (892)  

Integrating the y-divergence against |y|^-4 generates the factor -4 and the directional difference quotient (delta u·y\_hat)/|y|. This quotient is the integral of directional strain along the same chord:  
  (delta u\_theta·y\_hat)/|y| = integral\_0^1 s(z+(alpha-theta)y,y) dalpha,  
  s(z,y)=y\_hat·S(z)y\_hat.  
The change of center preserves endpoints:  
  delta u\_alpha(z+(alpha-theta)y,y)=delta u\_theta(z,y).  
For F\_alpha(z,y)=|delta u\_alpha(z,y)|^2 s(z,y) and h=(alpha-theta)y,  
  F\_alpha(z+h,y)-F\_alpha(z,y)  
      = div\_z[h integral\_0^1 F\_alpha(z+lambda h,y) dlambda].  
Therefore define  
  L(z)=(1/pi^2) integral\_R3 |y|^-4 integral\_0^1 integral\_0^1  
          h\_(alpha,theta) [integral\_0^1 F\_alpha(z+lambda h\_(alpha,theta),y) dlambda]  
          dalpha dtheta dy,  
  J\_int = J\_0 - 4L.                                                    (893)  
The result is the exact decomposition  
  I\_tau = -4 S:T\_u + div\_z J\_int = 4tau r + div\_z J\_int,  
  partial\_t tau + div\_z(u tau-J\_int) - nu Delta\_z tau  
       = 4tau r - 2nu Q\_tau + F\_tau.                                  (894)–(895)  
The center strain produces the displayed density; pressure and the re-centering of chords redistribute it.  

The limiting justification begins with epsilon&lt;|y|&lt;R. Chord-boundary remainders satisfy  
  ||B\_(epsilon,R)||\_1 &lt;= C[epsilon||grad u||\_3^3 + R^-2||u||\_3^3] -&gt; 0.  
No theta or alpha endpoint is differentiated. Paired differences supply two powers of |y| at zero; the far kernel is integrable. This produces local identities in spatial distributions on strict smooth windows.  

### E5  What the available flux and diffusion estimates really give

Write U=||u||\_2, A=||grad u||\_2, B=||u||\_3. Fractional Sobolev embedding gives  
  integral |y|^-4 ||delta\_y u||\_3^2 dy &lt;= C A^2.  
Thus the transport part of J\_0 is bounded by C B A^2 in L^1\_z.  
For L, a split at chord length ell gives short-chord bound C ell^(1/2)||S||\_2 A^2 and long-chord bound C ell^(-1/2)||S||\_2 B^2. The latter uses  
  k\_ell(h)=|h|^-3 min(1,|h|/ell),  
  ||k\_ell||\_(6/5)^(6/5)=(40pi/3)ell^(-3/5).  
Choosing ell=(B/A)^2 for nonzero u yields ||L||\_1&lt;=C B A^2; the zero field needs no division.  

For pressure,  
  ||J\_(0,pressure)||\_1 &lt;= 4||Lambda^(1/2)p\_u||\_2||Lambda^(1/2)u||\_2.  
The Fourier product estimate based on  
  integral d eta/[|eta|^2|xi-eta|^2] = C|xi|^-1  
implies ||Lambda^(1/2)p\_u||\_2&lt;=C A^2. Combining this with B&lt;=C U^(1/2)A^(1/2) and ||Lambda^(1/2)u||\_2&lt;=U^(1/2)A^(1/2),  
  ||J\_int||\_1 &lt;= C U^(1/2)A^(5/2),  
  integral\_0^T ||J\_int||\_1^(4/5) dt &lt;= C nu^-1 K\_T^(12/5).             (896)  
The time exponent is 4/5. This estimate does not imply terminal L^1\_t L^1\_z integrability of the flux.  

For diffusion, Cauchy–Schwarz inside K gives  
  |grad tau|^2 &lt;= 4tau Q\_tau.  
For Phi&gt;0 put psi=sqrt(rho\_f), m=integral rho\_f=H/Phi, and J=integral|grad psi|^2. Then  
  (D\_z-nu Delta\_z)rho\_f  
    =(I\_tau+F\_tau)/(4Phi)-nu Q\_tau/(2Phi)-(Phi'/Phi)rho\_f,              (897)  
  (D\_z-nu Delta\_z)psi  
    =(I\_tau+F\_tau)/(8Phi psi)  
      -(nu/psi)[Q\_tau/(4Phi)-|grad psi|^2]-(Phi'/(2Phi))psi.             (898)  
The bracket is nonnegative. The full sign of Phi' and the intrinsic term I\_tau remain. One cannot discard intrinsic production while integrating this diffusion law.  

The Sobolev norm derivative inequality extends across zeros and gives J&lt;=D/(2Phi). Two interpolations yield  
  V\_f^-1 &lt;= ||psi||\_4^4  
      &lt;= min{S\_6^3 m^(1/2) J^(3/2), S\_6^2 ||tau||\_(3/2) J/(4Phi)}.  
Also ||tau||\_(3/2)&lt;=C\_tau ||grad u||\_2^2. Hence  
  V\_f^-1 &lt;= min{ S\_6^3 H^(1/2)D^(3/2)/(2^(3/2)Phi^2),  
                 C\_tau S\_6^2 ||grad u||\_2^2 D/(8Phi^2)}.               (899)–(900)  
Neither time integral on the right is bounded by the kinetic estimate and the direct source estimate. Even a finite integral J would give only integral(V\_f^-1)^(2/3)&lt;=S\_6^2 integral J, with insufficient time exponent for (884).  

Appendix E explicitly ends with the additional sufficient target integral\_(G\_f) V\_f^-1 dt&lt;infinity, bounded from datum, viscosity, and source. Its estimates isolate direct forcing, intrinsic production, pressure redistribution, and diffusion; they do not claim that (882), (896), and (900) by themselves establish this target.  

## F  SQUARING THE COMPLETE PROJECTED MOMENTUM EQUATION
Source: pp. 209–210, (901)–(904).  
https://ndownloader.figshare.com/files/69392430#page=209  

Put G=Pf-P[(u·grad)u], so u\_t-nu Delta u=G. On a strict horizon S&lt;T set  
  X(S)=integral\_0^S (||u\_t||\_2^2+nu^2||Delta u||\_2^2) dt,  
  G\_0=||grad u\_0||\_2^2.  
Because -2&lt;u\_t,Delta u&gt;=partial\_t||grad u||\_2^2,  
  X(S)+nu||grad u(S)||\_2^2 = nu G\_0+integral\_0^S||G||\_2^2 dt.           (901)  
The right-hand side is the full projected nonlinear-plus-force field. Squaring has not removed nonlinearity.  

Use data quantities  
  U=||u\_0||\_2+integral\_0^T||f||\_2 dt,  
  L=T U^2+U^2/nu,  
  Phi\_F=integral\_0^T||Pf||\_2^2 dt.  
(The source calls this last quantity Phi; it is unrelated to E's time-dependent Phi.) Since ||u||\_(H^2)^2=||u||\_2^2+2||grad u||\_2^2+||Delta u||\_2^2,  
  R\_(0,1)(S) &lt;= L+max(1,nu^-2)X(S),  
  X(S) &lt;= max(1,nu^2)R\_(0,1)(S).                                    (902)  
The trace/Young estimates also give  
  sup\_(t&lt;=S)||grad u||\_2^2 &lt;= G\_0+X/nu,  
  integral\_0^S||u||\_(H^2)^2 &lt;= L+X/nu^2.  

Use ||u||\_infinity^2&lt;=||u||\_(H^2)^2/(8pi) and  
  ||(u·grad)u||\_2&lt;=||u||\_infinity||grad u||\_2.  
Bounding ||G||\_2^2 by 2||Pf||\_2^2+2||(u·grad)u||\_2^2 gives  
  X &lt;= nu G\_0+2Phi\_F + (G\_0+X/nu)(L+X/nu^2)/(4pi).                   (903)  
This is a quadratic constraint, not automatically an upper bound. Define  
  a=1/(4pi nu^3),  
  b=(G\_0/nu^2+L/nu)/(4pi),  
  c=nu G\_0+2Phi\_F+G\_0 L/(4pi).  
Then aX^2+(b-1)X+c&gt;=0. If b&lt;1 and (1-b)^2&gt;4ac, both roots are nonnegative and the open interval between them is forbidden. X is continuous, starts at zero, and cannot cross it. Thus  
  sup\_(S&lt;T) X(S) &lt;= [1-b-sqrt((1-b)^2-4ac)]/(2a).                    (904)  
For rest data this condition is  
  U^2(T+nu^-1)/(4pi nu) + sqrt(2Phi\_F/(pi nu^3)) &lt; 1.  
This closes a bound on R\_(0,1) directly from small enough data quantities. Without root separation, the same inequality allows arbitrarily large X. With the paper's ordinary continuation argument, the bounded first rectangle supplies continuation, but this criterion is not its claimed unrestricted global proof.  

## G  CONSEQUENCES OF FINITE RECTANGLES FOR PRODUCTION PRESSURE AND ACCELERATION
Source: pp. 210–214, (905)–(929).  
https://ndownloader.figshare.com/files/69392430#page=210  

### G1  All temporal rows and their signed work

For fixed N,m, the spatial product estimate (705) gives, with C\_m=2^(m+1)c\_infinity,  
  |P\_(r,m)| &lt;= C\_m||V\_r||\_(H^m)  
       sum\_(a=0)^r binom(r,a)||V\_a||\_(H^(m+2))||V\_(r-a)||\_(H^(m+2)).    (905)  
Pressure pairs to zero against each solenoidal Eulerian row. The complete binomial sum is retained; one cannot give every temporal row the cancellation of the undifferentiated transport term.  

Let D\_(N,m)=sum\_(r=0)^N||V\_r(0)||\_(H^m)^2. The adjacent trace bound is  
  max\_(r&lt;=N)||V\_r||\_(L^infinity H^m) &lt;= sqrt(D\_(N,m)+R\_(N,m)).          (906)  
If x\_a=||V\_a||\_(L^2 H^(m+2)), symmetry and 2ab&lt;=a^2+b^2 give  
  sum\_a binom(r,a)x\_a x\_(r-a) &lt;= 2^r sum\_(a=0)^N x\_a^2  
                              &lt;= 2^r R\_(N,m+1).  
Hence  
  sum\_(r=0)^N ||P\_(r,m)||\_(L^1)  
    &lt;= C\_m(2^(N+1)-1)sqrt(D\_(N,m)+R\_(N,m)) R\_(N,m+1).                  (907)  
This bounds absolute production and therefore each signed prefix integral, after the rectangles have been supplied.  

The source work can be represented as  
  W\_(r,m)=Re&lt;Lambda^(m+1)V\_r,Lambda^(m-1)F\_r&gt;.  
Set F\_work\_(N,m-1)=[sum\_r||Lambda^(m-1)F\_r||\_(L^2L^2)^2]^(1/2). Then  
  sum\_r ||W\_(r,m)||\_(L^1) &lt;= F\_work\_(N,m-1)sqrt(R\_(N,m)).              (908)  
At m=0 the force norm is dot H^-1; source decay supplies its low frequencies. For ell time derivatives,  
  ||partial\_t^ell W\_(r,m)||\_(L^1)  
    &lt;= sum\_(a=0)^ell binom(ell,a)  
       ||Lambda^(m+1)V\_(r+a)||\_(L^2L^2)  
       ||Lambda^(m-1)F\_(r+ell-a)||\_(L^2L^2).                           (909)  
Each requested finite derivative uses finitely many coordinates; no order-uniform constant is asserted.  

### G2  Bound projected transport before pairing it with velocity

Let X\_(a,j)=||V\_a||\_(L^2 H^j). Choose a finite algebra constant C\_alg\_M in  
  ||v tensor w||\_(H^M)&lt;=C\_alg\_M||v||\_(H^(M+1))||w||\_(H^(M+1)).  
For M=0, H^1 embeds into L^4. For higher integer M use Leibniz and Sobolev multiplication. Tensor divergence has norm at most one from H^M to H^(M-1); P and Q are Fourier contractions. Consequently each of  
  ||PB\_n||\_(L^1 H^(M-1)), ||QB\_n||\_(L^1 H^(M-1))  
is at most  
  C\_alg\_M sum\_a binom(n,a)X\_(a,M+1)X\_(n-a,M+1)  
  &lt;= C\_alg\_M 2^n R\_(N,M), n&lt;=N.                                     (910)  
If Q\_n^u denotes normalized nonlinear scalar pressure, grad Q\_n^u=-QB\_n. Its double-Riesz tensor multiplier has norm at most one in the relevant Fourier norm, and  
  ||Q\_n^u||\_(L^1H^M)+||grad Q\_n^u||\_(L^1H^(M-1))  
    &lt;= 2 C\_alg\_M 2^n R\_(N,M).                                        (911)  
The total pressure gradient also contains QF\_n.  

The adjacent temporal coordinate improves the time norm via the actual equation:  
  PB\_n-PF\_n=nu Delta V\_n-V\_(n+1),  
  [sum\_(n=0)^N||PB\_n-PF\_n||\_(L^2H^m)^2]^(1/2)  
      &lt;= sqrt(nu^2+1)sqrt(R\_(N,m+1)).                                 (912)  
Conversely, the Fourier inequality (1+|xi|^2)^2&lt;=2(1+|xi|^4) gives  
  ||V\_n||\_(H^(m+2))  
      &lt;= sqrt(2)[||V\_n||\_(H^m)  
            +nu^-1||V\_(n+1)+PB\_n-PF\_n||\_(H^m)].                       (913)  
Both the next temporal derivative and the complete nonlinear response are present in this spatial recovery.  

### G3  Why the gradient projection gains regularity

For solenoidal v,w,  
  div((v·grad)w)=partial\_i v\_j partial\_j w\_i,  
which is symmetric under interchanging v,w. Thus  
  ||Q((v·grad)w)||\_(dot H^(1/2))  
    =||partial\_i v\_j partial\_j w\_i||\_(dot H^(-1/2))  
    &lt;= c\_\*||v||\_(dot H^(3/2))||w||\_(dot H^(3/2)).  
The same pressure projection at negative-half order admits either assignment:  
  ||Q((v·grad)w)||\_(dot H^(-1/2))  
    &lt;= c\_\* min{||v||\_(dot H^(1/2))||w||\_(dot H^(3/2)),  
               ||w||\_(dot H^(1/2))||v||\_(dot H^(3/2))}.                 (914)–(915)  
Applying the positive-half inequality to every binomial term gives the corresponding sum for grad Q\_n^u.  

For the zeroth row let h=||u||\_(dot H^(1/2)), d=||u||\_(dot H^(3/2)), H\_\*=||h||\_infinity, D\_\*=||d||\_2. Then  
  ||PB\_0||\_(L^2 dot H^(-1/2)), ||QB\_0||\_(L^2 dot H^(-1/2)) &lt;= c\_\*H\_\*D\_\*,  
  ||QB\_0||\_(L^1 dot H^(1/2)) &lt;= c\_\*D\_\*^2.                             (916)  
Interpolating the two spatial heights pointwise gives  
  ||QB\_0(t)||\_2&lt;=c\_\* h^(1/2)d^(3/2),  
  ||QB\_0||\_(L^(4/3)L^2)&lt;=c\_\*H\_\*^(1/2)D\_\*^(3/2).                      (917)  
If R=R\_(0,1) and D\_initial=||u\_0||\_(H^1)^2, then H\_\*&lt;=sqrt(D\_initial+R), D\_\*&lt;=sqrt R, so the last bound is c\_\*(D\_initial+R)^(1/4)R^(3/4). Full transport also has an L^(4/3)L^2 estimate. Pressure's additional endpoint is L^1 dot H^(1/2).  

### G4  Orthogonality resolves acceleration into two different mechanisms

The material acceleration satisfies  
  a=D\_tu=nu Delta u+Pf+QB\_0.  
Its first two terms are solenoidal; the last is a gradient. They are orthogonal in Fourier Sobolev norms. With  
  A=||u||\_(L^2H^2), B=||u\_t||\_(L^2L^2),  
  Z=(||u\_0||\_(H^1)^2+2AB)^(1/2),  
the trace gives ||u||\_(L^infinity H^1)&lt;=Z. Then  
  ||B\_0||\_(L^2L^2)  
      &lt;=||u||\_(L^infinity L^6)||grad u||\_(L^2L^3)  
      &lt;= S\_6 C\_3 ZA = sqrt(2/3)ZA/pi.                                (918)  
Consequently  
  ||D\_tu||\_(L^2L^2) &lt;= A sqrt(nu^2+2Z^2/(3pi^2)),  f=0,               (919)  
  ||D\_tu||\_(L^2L^2)^2  
      &lt;= (nu A+||Pf||\_(L^2L^2))^2+2Z^2 A^2/(3pi^2).                  (920)  
Also ||PB\_0||\_(L^2L^2)&lt;=nu A+B in the unforced case. These are first-rectangle consequences, weaker requirements than the pointwise acceleration bound using R\_(1,2).  

At critical negative-half height, the unforced estimate is especially clean:  
  nu d(t)&lt;=||D\_tu(t)||\_(dot H^(-1/2))  
           &lt;=sqrt(nu^2+h(t)^2/(2pi^2))d(t).                            (921)  
The lower bound is the retained solenoidal viscous component. Integration replaces h,d by H\_\*,D\_\*. With forcing,  
  ||D\_tu||\_(L^2 dot H^(-1/2))^2  
     &lt;=(nu D\_\*+||Pf||\_(L^2 dot H^(-1/2)))^2+c\_\*^2 H\_\*^2D\_\*^2.          (922)  

### G5  One stronger adjacent pair gives acceleration at positive-half height

Select u in L^2H^(5/2) and u\_t in L^2H^(1/2). The Hilbert-pair trace is  
  sup\_t||u(t)||\_(H^(3/2))^2  
     &lt;=||u\_0||\_(H^(3/2))^2+2||u||\_(L^2H^(5/2))||u\_t||\_(L^2H^(1/2)).    (923)–(924)  
Combine pressure's negative-half estimate at low frequencies with its positive-half estimate at high frequencies. This gives a continuous quadratic map H^(3/2)-&gt;H^(1/2), so  
  QB\_0 in C([0,T];H^(1/2)),  
  ||QB\_0||\_(L^2H^(1/2))&lt;=C||u||\_(L^infinity H^(3/2))||u||\_(L^2H^(3/2)). (925)  
Together with Pf in L^2H^(1/2), this puts every component of a in L^2H^(1/2). The projected equation separately gives  
  ||PB\_0||\_(L^2H^(1/2))  
     &lt;=nu||u||\_(L^2H^(5/2))+||u\_t||\_(L^2H^(1/2))+||Pf||\_(L^2H^(1/2)).  (926)  

### G6  Exact unforced action identities and spatial recovery

In dot H^(-1/2), &lt;Delta u,u\_t&gt;=-(1/2)partial\_t h^2. Squaring PB\_0=nu Delta u-u\_t gives  
  nu partial\_t h^2+nu^2d^2+||u\_t||\_(dot H^(-1/2))^2  
       =||PB\_0||\_(dot H^(-1/2))^2.                                   (927)  
Adding ||QB\_0||^2 and using orthogonality gives  
  nu partial\_t h^2+||u\_t||\_(dot H^(-1/2))^2+||D\_tu||\_(dot H^(-1/2))^2  
       =||B\_0||\_(dot H^(-1/2))^2.                                    (928)  
The pressure square is added to both sides; it does not create a favorable sign for critical production. These are exact identities with the full nonlinear action retained.  
Since Pa=nu Delta u in unforced flow,  
  ||u||\_(H^(m+2))&lt;=sqrt(2)[||u||\_(H^m)+nu^-1||a||\_(H^m)].              (929)  
This recovers two spatial derivatives from full acceleration and a retained lower velocity norm.  

## H  VISCOUS DISSIPATION AS A MATERIAL SHAPE BUDGET
Source: p. 215, (930)–(933).  
https://ndownloader.figshare.com/files/69392430#page=215  

Let X(a,t) be the trajectory from label a, F=grad\_a X, and C=F^T F. Then  
  F\_dot=(grad u)(X,t)F,  det F=1,  C\_dot=2F^T S(X,t)F.                 (930)  
C is the material metric: it determines squared lengths and mutual angles of infinitesimal vectors carried by a parcel. Since C^-1 C\_dot=2F^-1 S F,  
  trace(C^-1 C\_dot C^-1 C\_dot)=4|S(X,t)|\_F^2.                          (931)  
This is the natural metric-speed square, not an assertion that C\_dot itself is bounded by the Eulerian strain without deformation factors.  

Volume preservation changes the label integral into the Eulerian integral. Hence  
  (nu/2) integral\_0^t integral trace(C^-1 C\_dot C^-1 C\_dot) da ds  
     =nu integral\_0^t ||grad u(s)||\_2^2 ds.                            (932)  
Define in this appendix  
  F\_T=integral\_0^T||f||\_2 dt,  
  M\_T=||u\_0||\_2+F\_T,  
  K\_T=||u\_0||\_2^2+2M\_T F\_T.  
This K\_T is a squared-energy budget, unlike E's K\_T. Energy gives 2nu integral||grad u||\_2^2&lt;=K\_T.  

If sigma\_i are singular values of F, derivatives of log sigma\_i are diagonal entries of S in a suitable moving orthonormal frame. Their squared sum is &lt;=|S|\_F^2. Since F(a,0)=I,  
  ||log C(a,t)||\_F&lt;=2 integral\_0^t |S(X(a,s),s)|\_F ds.  
This is obtained through the singular values; it does not improperly commute the logarithm with matrix differentiation. Repeated singular values are handled by diagonalizing the symmetric variation inside the corresponding eigenspace. Cauchy–Schwarz in time and volume preservation then give  
  integral\_R3 sup\_(t&lt;T)||log C(a,t)||\_F^2 da &lt;= T K\_T/nu.              (933)  
Infinite shape distortion cannot occur on a positive-measure set of initial labels under this bound. Concentration onto label sets of shrinking measure remains possible. A uniform-in-labels bound would require additional control.  

## I  ANGULAR MOMENTUM AND WHY THE FULL SYMMETRY MATTERS
Source: pp. 215–217, (934)–(936), Proposition I.1.  
https://ndownloader.figshare.com/files/69392430#page=216  

The manuscript distinguishes the axisymmetric leading background from the completed field containing angular harmonics exp(i k\_m Phi), Phi=p theta+varphi. Curling the wave potentials and applying a spatial cutoff do not erase these harmonics. The angular-momentum calculation must therefore retain theta derivatives for the complete field.  

With Gamma=r u\_theta, the full cylindrical equation is  
  (partial\_t+u\_r partial\_r+(u\_theta/r)partial\_theta+u\_z partial\_z)Gamma  
   =nu(partial\_rr-r^-1 partial\_r+r^-2 partial\_theta\_theta+partial\_zz)Gamma  
      -partial\_theta p+(2nu/r)partial\_theta u\_r+r f\_theta.             (934)  
The geometric u\_r u\_theta term is absorbed by differentiating r along the flow. The vector Laplacian contributes (2nu/r)partial\_theta u\_r. Pressure contributes angular torque. Both are part of the actual equation and are not bounded by the external torque alone.  

If u,p,f are axisymmetric, these angular derivatives vanish. For a solution starting from rest, bounded on every strict strip, Proposition I.1 proves  
  ||r u\_theta(t)||\_infinity &lt;= integral\_0^t ||r f\_theta(s)||\_infinity ds. (935)  
There is no smallness restriction. The scalar operator is  
  L=partial\_t+u\_r partial\_r+u\_z partial\_z  
       -nu(partial\_rr-r^-1 partial\_r+partial\_zz).  
On [0,S], let M\_S=sup|u| and use the barrier epsilon exp(ct)(1+r^2+z^2), c=M\_S+2nu+1. Direct calculation gives L of this barrier positive. The integral of ||rf\_theta|| provides the temporal barrier. At the axis Gamma=0; at infinity its at-most-linear growth is dominated by the quadratic barrier. Exhaust bounded cylinders away from the axis, then let epsilon decrease to zero and S increase to T.  

This would exclude an axisymmetric realization of the exterior where r u\_theta grows like (1-t)^(-h) while the weighted source torque remains integrable. It does not prove axisymmetric regularity in general: bounded r u\_theta is not bounded u\_theta near r=0.  

Angular averaging is also not a way to remove the issue. Write bars for averages and primes for fluctuations. Conservative-form averaging gives exactly  
  partial\_t Gamma\_bar+u\_r\_bar partial\_r Gamma\_bar+u\_z\_bar partial\_z Gamma\_bar  
    =nu(partial\_rr-r^-1 partial\_r+partial\_zz)Gamma\_bar+r f\_theta\_bar  
      -(1/r)partial\_r[r overline(u\_r' Gamma')]  
      -partial\_z[overline(u\_z' Gamma')].                              (936)  
The pressure torque and angular viscous derivative average to zero, but products of two nonzero harmonics may have a nonzero mean. Those fluctuation fluxes require estimates; deleting them would replace the equation.  

## J  ENDPOINT JETS MATERIAL DERIVATIVES AND INCOMPRESSIBILITY
Source: pp. 217–222, (937)–(955), Proposition J.1.  
https://ndownloader.figshare.com/files/69392430#page=217  

### J0  The endpoint is a compatible differentiated equation

The full intersection gives every V\_n in H^1(0,T;H^m), hence a continuous H^m representative through T. Product continuity gives endpoint B\_n, and pressure reconstruction gives endpoint grad Q\_n. All fixed spatial derivatives converge uniformly after the H^2 Fourier embedding.  

Let A\_(n,m)=sqrt((1+T^-1)R\_(n,m)), L\_(n,m)=sup||F\_n||\_(H^m), and  
  S\_(n,m)=C\_m sum\_a binom(n,a) A\_(a,m+2) A\_(n-a,m+2)  
as in (690), (706). For |alpha|=k, integrating the next temporal row yields  
  ||partial\_x^alpha[V\_(n+1)(t)-V\_(n+1)(T)]||\_infinity  
       &lt;=c\_infinity(T-t) A\_(n+2,k+2),                                (937)  
  ||partial\_x^alpha[B\_n(t)-B\_n(T)]||\_infinity  
       &lt;=c\_infinity(T-t) S\_(n+1,k+2),                                (938)  
  ||partial\_x^alpha[grad Q\_n(t)-grad Q\_n(T)]||\_infinity  
       &lt;=c\_infinity(T-t)[L\_(n+1,k+2)+S\_(n+1,k+2)],                    (939)  
  ||nu partial\_x^alpha Delta[V\_n(t)-V\_n(T)]||\_infinity  
       &lt;=nu c\_infinity(T-t) A\_(n+1,k+4).                              (940)  
One first integrates on [t,S], then takes S to T in continuous Sobolev representatives. R\_(n+2,k+4), with the displayed source norm, contains the needed coordinates. These are Lipschitz-in-time endpoint rates after choosing sufficiently many derivatives.  

The endpoint obeys  
  V\_(n+1)(T)+B\_n(T)+grad Q\_n(T)-nu Delta V\_n(T)=F\_n(T),  
with all spatial derivatives agreeing with the limits of the differentiated rows. Endpoint values are consequently one compatible jet, not independent terminal data.  

### J1  Acceleration jerk and the unavoidable commutators

  D\_tu=V\_1+B\_0=-grad p+nu Delta u+f.                                  (941)  
The next material derivative is  
  D\_t^2u=V\_2+2(V\_0·grad)V\_1+(V\_1·grad)V\_0  
                 +(V\_0·grad)[(V\_0·grad)V\_0].                         (942)  
The coefficient two comes from two different differentiations of transport.  

Write D=D\_t and U\_ij=partial\_j u\_i. The basic commutator is  
  [D,partial\_i]w=-(partial\_i u\_j)partial\_j w.  
Therefore  
  [D,grad]p=-U^T grad p,  
  [D,Delta]w=-(Delta u)·grad w  
                    -2 sum\_i(partial\_i u)·grad partial\_i w.          (943)  
For a=Du, the jerk equation is  
  Da=nu Delta a-grad(Dp)+U^T grad p+Df  
       -nu[(Delta u)·grad u+2 sum\_i(partial\_i u)·grad partial\_i u].     (944)  
These coefficients are derivatives of the same velocity. Material force derivatives include response factors, e.g.  
  Df=f\_t+u·grad f,  
  D^2f=f\_tt+2u·grad f\_t+a·grad f+sum\_ij u\_i u\_j partial\_ij f.  
They are not prescribed Eulerian force derivatives alone.  

### J2  Material acceleration need not be solenoidal and does not violate incompressibility

Ordinary rows remain solenoidal: div V\_n=0. Material differentiation instead gives  
  D(div u)=div a-trace(U^2)=0,  
  div a=trace(U^2)=-Delta p+div f.                                    (945)  
Trace(U^2) is not |U|\_F^2 and need not be positive. Nonzero divergence here means spatial divergence, not an infinite magnitude. Pressure cannot be discarded in a material-row pairing by invoking div V\_1=0.  

The flow Jacobian j=det(partial\_label X) still satisfies j\_dot=(div u)(X,t)j=0, so j=1. At second order the cancellation is explicit:  
  j\_ddot=[div a-trace(U^2)+(div u)^2\](X,t)j=0.                         (946)  
Thus changing parcel geometry exactly compensates the nonzero divergence of acceleration. For the R\_(1,2)-based constant A used in (732),  
  ||div a||\_(L^infinity\_(t,x))&lt;=||grad u||\_(L^infinity\_(t,x))^2&lt;=A^2/(8pi).  

For w\_q=D^q u and delta\_q=div w\_q,  
  delta\_0=0,  
  delta\_(q+1)=D delta\_q+trace(U grad w\_q).                             (947)  
Since DU=grad a-U^2,  
  div(Da)=3trace(U grad a)-2trace(U^3).  
One further derivative, writing G=U, B\_1=grad a, B\_2=grad(Da), gives  
  div(D^3u)=4trace(G B\_2)+3trace(B\_1^2)  
                 -12trace(G^2 B\_1)+6trace(G^4).  
The rule D B\_k=B\_(k+1)-B\_k G and cyclicity of trace generate these identities. Higher divergences are constrained by lower material/spatial derivatives; they are not new independent degrees of freedom.  

### J3  Recover every material row from the Eulerian mixed jet and vice versa

Set L\_0=Delta, G\_0=grad, and L\_(q+1)=[D,L\_q], G\_(q+1)=[D,G\_q]. Repeated differentiation of the momentum equation gives  
  D^(n+1)u  
    =nu sum\_(q=0)^n binom(n,q)L\_q D^(n-q)u  
       -sum\_(q=0)^n binom(n,q)G\_q D^(n-q)p+D^n f.                     (948)  
Pascal's identity follows from D(Lw)=L(Dw)+[D,L]w.  

There is also a purely algebraic reconstruction independent of the equation. If J\_(r,alpha)=partial\_t^r partial\_x^alpha u, then  
  D J\_(r,alpha)=J\_(r+1,alpha)+sum\_(ell=1)^3 u\_ell J\_(r,alpha+e\_ell).    (949)  
Starting from u and applying Leibniz produces D^q u as a polynomial in mixed jet coordinates. Each monomial has at most q+1 velocity factors and total ordinary derivative order q.  
Conversely, for M\_(q,alpha)=partial\_x^alpha D^q u,  
  partial\_t M\_(q,alpha)  
    =M\_(q+1,alpha)-sum\_(beta&lt;=alpha) binom(alpha,beta)  
                     (M\_(0,beta)·grad)M\_(q,alpha-beta).                (950)  
This generates all Eulerian mixed derivatives from material-spatial coordinates and keeps operator order explicit.  

Proposition J.1 states, for any smooth vector field on a finite [0,T),  
  partial\_t^r u in L^2H^m for every r,m  
     if and only if  
  D\_t^q u in L^2H^m for every q,m.                                    (951)  
No Navier–Stokes equation or incompressibility is needed for this equivalence.  
Forward: adjacent Eulerian time rows give uniform Sobolev bounds; polynomial reconstruction and Sobolev products give all material L^2 rows.  
Reverse: write w\_q=D^q u and b\_(q,m)=||w\_q||\_(L^2H^m). Initially,  
  partial\_t w\_q=w\_(q+1)-(u·grad)w\_q,  
  ||partial\_t w\_q||\_(L^1H^m)  
       &lt;=sqrt(T)b\_(q+1,m)+C\_m b\_(0,m+2)b\_(q,m+2).  
Hence w\_q is W^(1,1) in time. Choose a time where its norm is at most its L^2 average, then integrate:  
  sup\_t||w\_q(t)||\_(H^m)&lt;=L\_(q,m),  
  L\_(q,m)=T^-1/2 b\_(q,m)+sqrt(T)b\_(q+1,m)  
                         +C\_m b\_(0,m+2)b\_(q,m+2).                    (952)  
Now every material row has uniform Sobolev norms, so the reverse polynomial reconstruction gives the Eulerian rows in L^infinity H^m and hence L^2 H^m. The intermediary L^1 time derivative is the essential reverse-direction step.  

If K\_q=max\_(r+|alpha|&lt;=q)||partial\_t^r partial\_x^alpha u||\_infinity, a componentwise monomial count gives at most 4^q q! in total absolute coefficient: each of at most q+1 factors can receive one temporal or three convective derivatives. Thus  
  ||D\_t^q u||\_infinity&lt;=sqrt(3)4^q q! max(1,K\_q)^(q+1).                (953)  
For a separate vector field w replace the last power by max(1,K\_q)^q K\_q^w. In particular this controls material derivatives of the force while retaining their velocity dependence.  

### J4  A specified finite rectangle for specified material orders

Given integers N,K,m&gt;=0, put  
  J\_\*=N+K, q=max(m,2), Q=q+K, R=R\_(J\_\*,Q),  
  d\_0=max\_(j&lt;=J\_\*)||V\_j(0)||\_(H^Q), X=sqrt R, Z=sqrt(d\_0^2+R).  
The initial forced recurrence supplies d\_0. The adjacent trace gives  
  sup\_t||V\_j(t)||\_(H^Q)^2  
    &lt;=||V\_j(0)||\_(H^Q)^2+2||V\_j||\_(L^2H^(Q+1))||V\_(j+1)||\_(L^2H^(Q-1))  
    &lt;=d\_0^2+R.                                                       (954)  

A monomial in D\_t^k u has r factors with  
  1&lt;=r&lt;=k+1,  
  sum temporal indices = k+1-r,  
  sum spatial derivative orders = r-1.  
After n more temporal derivatives, the first total is n+k+1-r. The only linear term is V\_(n+k); nonlinear terms use smaller temporal indices. This explains J\_\*=N+K and the spatial margin K.  

For integer q&gt;=2, one admissible scalar H^q algebra constant is  
  K\_alg(q)=2^q(2pi)^(-3/2)  
                [pi^(3/2) Gamma(q-3/2)/Gamma(q)]^(1/2).  
It follows from the Fourier weight split and integral &lt;xi&gt;^(-2q)d xi. Define  
  L\_(n,k,m)=sqrt(3)4^k k!(k+1)^n max(1,K\_alg(q))^k.  
Place one factor in L^2\_tH^q and the other factors in L^infinity\_tH^q. Then for n&lt;=N, k&lt;=K,  
  ||partial\_t^n D\_t^k u||\_(L^2H^m)  
       &lt;=L\_(n,k,m) X max(1,Z)^k,  
  sup\_t||partial\_t^n D\_t^k u(t)||\_(H^m)  
       &lt;=L\_(n,k,m) Z max(1,Z)^k.                                     (955)  
Continuity of the factors gives the terminal trace. Replacing m by m+b handles b further spatial derivatives. These are explicit finite-order consequences, not an assertion of a bound uniform in all derivative orders.  

## K  EXACTLY WHEN A PRESSURE ADJUSTMENT CAN REMOVE A FORCE
Source: pp. 222–223, Proposition K.1 and (956).  
https://ndownloader.figshare.com/files/69392430#page=222  

If Pf=0, f is a gradient. Define  
  phi\_hat(xi,t)=-i xi·f\_hat(xi,t)/|xi|^2.  
Then grad phi=f. For each integer m&gt;=0,  
  ||phi||\_(H^m)^2 &lt;= [2^(m-1)/pi^2]||f||\_1^2+||f||\_(H^m)^2.  
The low-frequency factor comes from |f\_hat|&lt;=(2pi)^(-3/2)||f||\_1, the weight bound (1+|xi|^2)^m&lt;=2^m below radius one, and integral\_(|xi|&lt;=1)|xi|^-2 d xi=4pi. Every temporal derivative obeys the same estimate. The inverse derivative is therefore permissible in dimension three for the stated rapidly decreasing source.  

If q is an unforced pressure, p=q+phi gives a forced solution with exactly the same velocity. Its additional pressure jet is the prescribed potential jet. This algebraic reduction is independent of global regularity; using it to get global continuation invokes Part I's claimed global unforced history.  

The converse is exact. For a given forced velocity and any admissible candidate unforced pressure q,  
  R\_q=u\_t+(u·grad)u-nu Delta u+grad q=f+grad(q-p),  
  P R\_q=Pf,  
  ||R\_q||\_(H^m)^2=||Pf||\_(H^m)^2+||Qf+grad(q-p)||\_(H^m)^2,  
  inf\_q||R\_q||\_(H^m)=||Pf||\_(H^m).                                   (956)  
The infimum is attained at q=p-phi with grad phi=Qf. Pressure can remove the force while retaining the velocity if and only if Pf=0. Subtracting a coordinate from a row does not alter this residual.  

The same reduction works on a final interval if Pf vanishes throughout it. Flatness of the force at one spatial point is insufficient. The appendix also distinguishes a periodic accelerated Galilean transformation from the finite-energy R^3 setting: the cited transformation need not preserve the latter class. Its comparison with Tao is a source assertion here, not separately rechecked in this guide.  

## L  DETECTING TERMINAL ROTATIONAL FORCE ON A FIXED CUTOFF REGION
Source: pp. 223–224, (957)–(961), Proposition L.1.  
https://ndownloader.figshare.com/files/69392430#page=223  

Set viscosity one for the explicit formula. Write tau=1-t, A=1/2+h, 0&lt;h&lt;1/100. In the region where the compact vector-potential correction vanishes,  
  u=chi(r,z)K(r,t)e\_theta, p=chi(r,z)p\_ext(r,t),  
  K=2^A kappa r^(-2A) H(4tau/r^2),  kappa&gt;0.                         (957)  
The prefactor is 2 raised to A, not 2 multiplied by A. The source paper's amplitude is unrelated to c\_infinity.  
The uncut K satisfies  
  partial\_t K=(partial\_rr+r^-1 partial\_r-r^-2)K.  
The terminal heat expansion gives  
  K\_j(r)=partial\_t^j K(r,1)  
     =2^A kappa 4^j(h)\_j(1+h)\_j r^(-1-2h-2j)&gt;0,                     (958)  
where (b)\_j is the rising factorial. A direct check: the radial swirl operator maps r^(-1-2h-2j) to 4(h+j)(1+h+j) times the power two degrees lower. Iterating reproduces (958).  

The cutoff lies between zero and one, equals one for r&lt;=r\_0/2 and |z|&lt;=z\_0/2, and has compact support in r&lt;r\_0, |z|&lt;z\_0. Choose the fixed connected rectangle  
  Omega=(r\_0/4,2r\_0) times (-epsilon,epsilon).  
It lies in the exact heat exterior for t sufficiently close to one. The paper verifies this with q&lt;=C\_0(tau+|z|^(1/D)), D=1/2-h, and exterior ratio X=r^2/(2q). Set  
  q\_b=min(q\_\*/2,r\_0^2/(64X\_ext)),  
  C\_0(eta+epsilon^(1/D))&lt;q\_b, epsilon&lt;z\_0/2.  
Then r&gt;r\_0/4 implies X&gt;2X\_ext for 1-eta&lt;t&lt;1. This fixed region deliberately includes both a place where chi=1 and a place where chi=0, away from the axis.  

Pure axisymmetric swirl has radial transport acceleration and no azimuthal pressure derivative. Cutting off the diffusing swirl therefore creates the entire azimuthal residual  
  f\_theta=-K(chi\_rr+r^-1chi\_r+chi\_zz)-2K\_r chi\_r.                      (959)  
There are no omitted azimuthal transport or pressure terms on this region.  

For a finite terminal time jet F\_j=partial\_t^j f(.,1), use K\_j'/K\_j=-(1+2h+2j)/r to obtain  
  (F\_j)\_theta=-K\_j[chi\_rr+chi\_zz-((1+4h+4j)/r)chi\_r].                 (960)  
If this vanished throughout Omega, chi would solve a uniformly elliptic equation with bounded drift there. It attains the maximum one at the interior point (3r\_0/8,0) and equals zero at another interior point (3r\_0/2,0), contradicting the strong maximum principle. Thus every finite jet has a nonzero angular component somewhere in this cutoff rectangle.  

To show that this component survives projection, choose smooth compactly supported psi(r,z) where its sign is strict, and let w=psi e\_theta, with the corresponding sign. It is a smooth three-dimensional solenoidal test field because its support stays away from the axis and it is theta-independent. Then  
  &lt;PF\_j,w&gt;=&lt;F\_j,w&gt;=2pi integral (F\_j)\_theta psi r dr dz&gt;0.  
Hence PF\_j is not identically zero. The viscosity rescaling f\_nu(x,t)=sqrt(nu)f(x/sqrt(nu),t) commutes with P and preserves nonvanishing.  

For j=0 write d=lim\_(t to 1)&lt;f(t),w&gt;&gt;0. Local heat-formula convergence on the fixed support gives &lt;f(t),w&gt;&gt;=d/2 near one. For each integer m&gt;=0,  
  inf\_q||R\_q(t)||\_(H^m)=||Pf(t)||\_(H^m)  
       &gt;=d/[2||w||\_(H^(-m))]&gt;0.                                     (961)  
This quantitative obstruction uses local exterior convergence and does not require proving global terminal convergence of the force. Describing F\_j as a global terminal field does presuppose its global definition; the test against the fixed compact support still gives the near-terminal obstruction on strict times even without that global assertion.  

Interpretation: flatness of the residual at the origin can coexist with nonzero force in the cutoff shell. Pressure cannot convert this same velocity into an unforced solution on a final interval. This does not impose a sign on total source work &lt;f,u&gt; and does not itself resolve the whole forced comparison.  

## M  A SOURCE-NORM CONTINUATION CRITERION WITH AN EXPLICIT BUDGET
Source: pp. 225–227, (962)–(968), Theorem M.1.  
https://ndownloader.figshare.com/files/69392430#page=225  

### M0  The strict-interval critical differential inequality

Let  
  y=||u||\_(dot H^(1/2)), z=||u||\_(dot H^(3/2)),  
  beta=||Pf||\_(dot H^(-1/2)), C\_\*=1/(sqrt(2)pi).  
The triple Sobolev product estimate used in (693), before inserting any rectangle, gives  
  y y' +(nu-C\_\*y)z^2 &lt;= beta z.                                      (962)  
The production estimate is |P\_(1/2)|&lt;=C\_\* y z^2 and source work is &lt;=beta z. This is independent of terminal intersection membership.  

As long as y&lt;nu/C\_\*, maximize beta z-(nu-C\_\*y)z^2 over z:  
  y y'&lt;=beta^2/[4(nu-C\_\*y)].  
The positive multiplier 4(nu-C\_\*y) makes the left side an exact derivative. Set  
  Psi(s)=2nu s^2-(4/3)C\_\*s^3,  
  B(t)=integral\_0^t beta(s)^2 ds.  
Then  
  Psi(y(t))&lt;=Psi(y\_0)+B(t),  
  Psi'(s)=4(nu-C\_\*s)s,  
  Psi(nu/C\_\*)=2nu^3/(3C\_\*^2)=4pi^2nu^3/3.                            (963)  
Psi is strictly increasing on [0,nu/C\_\*]. This increasing branch is indispensable; the cubic is not globally monotone.  

Theorem M.1 assumes y\_0&lt;nu/C\_\* and  
  B(T)&lt;4pi^2nu^3/3-Psi(y\_0).                                         (964)  
There is a unique r&lt;nu/C\_\* on the increasing branch satisfying Psi(r)=Psi(y\_0)+B(T). A first-crossing argument gives y&lt;=r throughout strict existence. The integrated y^2 energy identity handles zeros without dividing by y. Put a=nu-C\_\*r&gt;0. Young's inequality in (962) gives  
  y y'+(a/2)z^2&lt;=beta^2/(2a),  
  integral\_0^S z^2 dt&lt;=y\_0^2/a+B(T)/a^2, S&lt;T.  
For rest data the criterion is simply B(T)&lt;4pi^2nu^3/3.  

### M1  Why that critical bound supplies a genuine continuation argument

Set Y=||grad u||\_2 and D=||Delta u||\_2 in this paragraph. The differentiated energy estimate is  
  (1/2)(Y^2)'+nu D^2  
     &lt;=||grad u||\_3||grad u||\_2||grad u||\_6+||Pf||\_2 D.  
Using ||grad u||\_3&lt;=C\_3 z, ||grad u||\_6&lt;=C\_S D, and two Young inequalities,  
  (Y^2)'+nu D^2  
     &lt;=[2(C\_S C\_3)^2/nu]z^2Y^2+(2/nu)||Pf||\_2^2.  
The now-known integral z^2 allows Gronwall; kinetic energy supplies the L^2 part, so H^1 remains uniformly bounded.  

The manuscript gives an explicit local-time mechanism instead of treating this trace as already-global existence. The bilinear mild map uses  
  ||(v·grad)w||\_(3/2)&lt;=C||v||\_(H^1)||w||\_(H^1)  
and heat smoothing from L^(3/2) to H^1. The integrated heat exponents give a bound  
  C\_nu(h^(1/4)+h^(3/4))||v||\_(C\_tH^1)||w||\_(C\_tH^1).  
A fixed H^1 ball therefore has a fixed positive local lifespan, with the prescribed smooth source controlled. Restarting sufficiently close to T extends beyond it; heat smoothing and differentiation recover every finite spatial and temporal coordinate. This establishes the stated I\_T conclusion for this smallness regime without using the unrestricted theorem as a premise.  

Under u\_lambda(x,t)=lambda u(lambda x,lambda^2 t) and f\_lambda=lambda^3 f(lambda x,lambda^2t), y is invariant; beta gains lambda and dt loses lambda^2, so B is invariant. The critical threshold has the correct Navier–Stokes scaling.  

### M2  A different necessary H^3 source budget for growth from rest

Now let Y=||u||\_(H^3), D=||grad u||\_(H^3), g=||Pf||\_(H^3), and G\_T=integral\_0^T g. The product estimate (704), pairing tensor divergence with grad u, gives  
  Y Y'+nu D^2&lt;=8c\_infinity Y^2 D+gY.  
Completing the entire viscous square,  
  8c\_infinity Y^2D-nu D^2&lt;=16c\_infinity^2Y^4/nu=2Y^4/(pi nu).  
Thus Y'&lt;=2Y^3/(pi nu)+g wherever Y&gt;0. For zeros use Y\_epsilon=sqrt(Y^2+epsilon^2), which obeys the same upper comparison with Y\_epsilon in place of Y.  

If G\_T is finite, add the remaining source integral:  
  Z\_epsilon(t)=Y\_epsilon(t)+integral\_t^T g(s)ds,  
  Z\_epsilon'&lt;=2Z\_epsilon^3/(pi nu),  Z\_epsilon(0)=G\_T+epsilon.  
Integrating the reciprocal-square comparison and taking epsilon down to zero gives  
  Y(t)&lt;=G\_T/sqrt(1-4G\_T^2t/(pi nu)),  
      provided G\_T&lt;sqrt(pi nu/(4T)).                                 (965)  
If G\_T=0 the regularized argument gives Y=0. If G\_T is infinite the finite-budget assumption already fails. This derivation needs neither a terminal velocity bound nor smooth extension of f through T; it uses its integral budget and the strict-interval equation.  

The calculated exterior has unbounded L^3, and H^3 controls dot H^(1/2), which embeds into L^3. Therefore any rest-starting candidate with that exterior and its actual residual must have, at T=1,  
  G\_OA&gt;=sqrt(pi nu)/2,                                                (966)  
including the possibility G\_OA=infinity. This is a necessary lower bound, not a claim that exceeding it produces a singularity.  

### M3  The explicit exterior strictly exceeds the critical small-source threshold

On the shrinking exterior region E\_tau, the manuscript computes  
  integral\_(E\_tau)|u|^3 dx=C\_L tau^(-4h),  
  C\_L=4pi d integral\_c^(2c) k(y)^3 y dy&gt;0.  
Therefore Sobolev embedding gives  
  ||u||\_(dot H^(1/2))&gt;=C\_3^-1 C\_L^(1/3)tau^(-4h/3) -&gt; infinity.  
Starting from rest, y first reaches nu/C\_\* at some S&lt;1. Integrate (963) strictly before S and take the limit by continuity:  
  B(S)&gt;=Psi(nu/C\_\*)=4pi^2nu^3/3.                                     (967)  
This uses the strict-history momentum equation and the explicit exterior, not global terminal source regularity.  

The inequality is strict at the full horizon because L supplies a nonzero projected force on a later interval. Use its fixed solenoidal test w and gamma\_w=lim\_(t to 1)&lt;f(t),w&gt;&gt;0. Near one,  
  gamma\_w/2&lt;=&lt;Pf(t),w&gt;  
      &lt;=||Pf(t)||\_(dot H^(-1/2))||w||\_(dot H^(1/2)).  
Choose a=max(S,1-eta\_1)&lt;1 so the interval (a,1) is disjoint from the earlier budget interval. Then  
  B(1)&gt;=4pi^2nu^3/3  
        +(1-a)gamma\_w^2/[4||w||\_(dot H^(1/2))^2]  
       &gt;4pi^2nu^3/3.                                                 (968)  
The test norm is positive and finite since w is smooth, compactly supported, and nonzero. Under the stated viscosity rescaling, beta^2 and this lower bound scale by nu^3. The argument permits B(1)=infinity.  

The scope distinction is explicit: the source may have finite smooth norms while being too large for the particular quantitative sufficient criterion. Failure of a sufficient small-source test is not a counterexample to the paper’s claimed unrestricted Part II theorem; it also does not prove that theorem. Appendix M expressly makes this distinction.  

## Constant and arithmetic checks

1. C\_3^3=1/(sqrt(2)pi); S\_6C\_3=sqrt(2/3)/pi. These give the 1/(2pi^2) critical acceleration square and 2/(3pi^2) L^2 acceleration square.  
2. E's source coefficient is 4sqrt(2)\*(1/8)^(1/4)=2^(7/4), with K\_T to the first power.  
3. The trace-free strain factor 2/3 times ||S||\_2^2=(1/2)||grad u||\_2^2 times the kinetic dissipation bound gives K\_T^2/(6nu). Combining this with the doubling cost gives 3nu(log2)^2N^2/(8K\_T^2).  
4. The long-chord kernel integral has equal short and long radial contributions (20pi/3)ell^(-3/5), totaling (40pi/3)ell^(-3/5).  
5. F's expansion gives a=1/(4pi nu^3), b=(G\_0/nu^2+L/nu)/(4pi), c=nu G\_0+2Phi\_F+G\_0L/(4pi). For rest data, sqrt(4ac)=sqrt(2Phi\_F/(pi nu^3)).  
6. H's metric-speed coefficient follows from 4||S||\_2^2=2||grad u||\_2^2; the final maximal distortion constant is T K\_T/nu with H's squared-energy K\_T.  
7. K's potential low-frequency coefficient is 2^m\*(2pi)^(-3)\*4pi=2^(m-1)/pi^2.  
8. L's swirl heat operator coefficient is (1+2h+2j)^2-1=4(h+j)(1+h+j); K\_j and its logarithmic radial derivative yield exactly 1+4h+4j in (960). The exterior rectangle arithmetic gives X&gt;2X\_ext.  
9. Psi(nu/C\_\*)=(2/3)nu^3/C\_\*^2=4pi^2nu^3/3. The H^3 square coefficient is 16/(8pi nu)=2/(pi nu), leading to denominator 1-4G\_T^2t/(pi nu).  
10. The displayed constants above were checked algebraically, including symbolic simplification for the fractional Sobolev products, heat coefficient, source coefficient, kernel integral, and source thresholds. This verifies those substitutions and arithmetic, not every underlying analytic theorem or the global construction.  

## WHAT THE FINAL CONCLUSION ADDS

Page 228 states that the datum-generated compatible intersections establish global smoothness and uniqueness in Parts I and II; that the localized residual satisfies the forced theorem's source class; and that strict-subinterval uniqueness identifies the proposed classical candidate with the global forced solution, conflicting with its unbounded velocity and divergent positive exterior contribution to R\_(0,1). The final sentence concludes that the proposed field does not solve the stated forced initial-value problem.  
https://ndownloader.figshare.com/files/69392430#page=228  

That conclusion depends on the earlier construction of whole-interval rectangles and on the separate source-class comparison. The appendices reconstructed here supply additional identities, conditional consequences, independent smallness criteria, and localized obstructions. Their quantitative estimates do not replace those earlier premises. Reading them with that dependency map preserves both their substantial mathematical content and the exact logical role the manuscript assigns to it.  
