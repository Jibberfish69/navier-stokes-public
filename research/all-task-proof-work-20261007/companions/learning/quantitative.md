# Quantitative chapters and auxiliary derivations for public version 1

**Companion C06 — reviewed scope.** Quantitative chapters, majorants, critical-height recovery, constants and auxiliary appendices.

The general-data Appendix M source criterion requires both y₀=||u₀||_{Ḣ^{1/2}}<ν/C_src and B(T)<4π²ν³/3−Ψ(y₀), where C_src=1/(√2π) and Ψ(y)=2νy²−(4/3)C_src y³. “Before y reaches ν/C_src” includes this initial subcritical hypothesis. For rest data the threshold is B(T)<4π²ν³/3. The exact source statement is [Critical source criterion, LF45–54](../../SOURCES.md#S128).

These are narrower sufficient hypotheses, not an arbitrary-force datum construction. Finite majorants depend on actual rectangle inputs. Signed high-row primitives do not imply absolute work or unweighted terminal membership. The independently paid Stokes lift retains intrinsic W–W production. Its whole-horizon linear inverse is not a nonlinear existence theorem. The concentration/Fisher flux retains its time exponent; material/Eulerian equivalence does not manufacture membership. Appendix G’s Q denotes I−P, distinct from a temporal action, a pressure row and the later intrinsic nonlinear source. Candidate catalogue statements are secondary at their indicated scope.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.

Source: Thomas Birnie, Global Smoothness for the Unforced and Forced Three-Dimensional Incompressible Navier-Stokes Equations with a Refutation of OpenAI's Finite-Time Blowup Claim, September 2026.  
Verified public PDF: https://ndownloader.figshare.com/files/69392430  
DOI: 10.6084/m9.figshare.34005666.v1. PDF SHA256: 8095b332b81c7ed17926f6dc9d91035047d147f5d0785f441136d54184231a0f.  
Printed and PDF page numbers agree. Coverage: sections 7-8 (pp50-79), 17-18 (pp124-154), and all appendices A-M (pp182-229). Appendices E-M are reconstructed at additional depth in the companion guide to Appendices E through M; section 11 below integrates all of their mechanisms.  

This is a mathematical reading guide, not a replacement existence proof. It distinguishes identities valid on strict classical intervals, independent estimates using data/force alone, and coordinate estimates that consume selected whole-interval rectangles. Those distinctions explain what each result does in the paper.  

## 1. NORMALIZATIONS AND WHAT IS BEING MEASURED

The Fourier transform is unitary. A=(1-Delta)^(1/2) gives the inhomogeneous H^s norm; Lambda=(-Delta)^(1/2) gives the homogeneous norm. Array norms are Euclidean sums of component norms. P is the orthogonal Leray multiplier. The homogeneous critical energy is H=E\_(1/2)=one half ||Lambda^(1/2)u||\_2^2. More generally E\_(r,s)=one half ||Lambda^s V\_r||\_2^2, where V\_r=partial\_t^r u. Use Q\_r=partial\_t^r p and F\_r=partial\_t^r f. In the unforced case all force coordinates vanish.  

The finite velocity rectangle has norm  
R\_(N,M)(u;T)=sum\_(n=0)^N [||V\_n||\_(L2(0,T);H^(M+1))^2 + ||V\_(n+1)||\_(L2(0,T);H^(M-1))^2].  
It measures adjacent temporal rows two spatial orders apart. The associated pressure coordinate is a sum of L1 H^M and L1 H^(M-1) gradient norms. M=0 therefore includes an actual H^(-1) lower row, not a missing row.  

The global general-data scope is u0 in H\_sigma^infinity, nu&gt;0; forced scope adds f in C^infinity([0,infinity);Schwartz). Smooth finite energy alone is not used as a substitute for all-order Sobolev membership. The H1 completion extends the datum class only after positive-time smoothing.  

At a fixed finite horizon, sections 7 and 17 define quantities for either T&lt;T\* or T=T\*&lt;infinity. Strict horizons have finiteness by classical persistence. At a proposed terminal horizon the definitions explicitly use the full-interval representatives and trace results proved earlier. The quantities may depend on the actual history; calling them canonical or finite is not the same as giving a numerical formula from a small list of datum norms.  

Analytic constants (pp15-16,54,128-129; equations 7-9,176-181,517-522):  
For 3&lt;=p&lt;=6, s(p)=3(1/2-1/p),  
S(p)=2^(-s) pi^(-s/2) [Gamma((3-2s)/2)/Gamma((3+2s)/2)]^(1/2) [Gamma(3)/Gamma(3/2)]^(s/3).  
Then ||F||\_p&lt;=S(p)||F||\_(dot H^s). The same constant works for vector/tensor fields by Minkowski in L^(p/2).  
S(3)=2^(-1/6)pi^(-1/3), S(6)=2^(2/3)/(sqrt(3)pi^(2/3)), S(3)S(6)=sqrt(2/3)/pi.  
In particular C\_src=S(3)^3=1/(sqrt(2)\*pi), NOT 1/sqrt(2\*pi). The radical on the printed p65 covers 2 only.  

The algebra constants C\_r^alg are fixed in Lemma 2.4/12.4, and A\_r=2C\_r^alg. Their combined estimate is  
||R\_iR\_j(f\_i g\_j)||\_(H^r)+||P div(f tensor g)||\_(H^(r-1)) &lt;= A\_r ||f||\_(H^(r+1)) ||g||\_(H^(r+1)).  
The same right side bounds pressure plus its gradient in the corresponding two spaces. This accounts for all components before summation, rather than bounding a single pressure component and silently dropping the rest.  

For integer s,k, 2&lt;=b&lt;=infinity, and s&gt;k+3/2-3/b, put d\_k=#{alpha:|alpha|=k}, 1/q\_b=1/2-1/b and  
S\_(s,k,b)=sqrt(d\_k)(2pi)^(-3(1/2-1/b)) || |xi|^k &lt;xi&gt;^(-s) ||\_(L^(q\_b)).  
Then ||nabla^k f||\_b&lt;=S\_(s,k,b)||f||\_(H^s). Fourier inversion/Plancherel interpolation and frequency Holder prove this; the strict inequality makes the frequency integral finite. For b=2 the author chooses s&gt;k, a sufficient rather than sharp endpoint restriction. The heat-divergence bound comes from sup\_(rho&gt;=0) rho exp(-nu t rho^2)=(2e nu t)^(-1/2).  

## 2. THE H1 COMPLETION IS A LOCAL CONSTRUCTION FOLLOWED BY A GLOBAL IMPORT
https://ndownloader.figshare.com/files/69392430#page=50  
https://ndownloader.figshare.com/files/69392430#page=124  

Theorems 7.1/17.1 construct a strong local H1 solution using a Fourier-cutoff ODE, obtain positive-time all-order smoothing, then apply the earlier global smooth theorem at a positive time. This is how the general theorem propagates to rougher data; it is not an independent global H1 estimate for unrestricted data.  

Let Y=||nabla u||\_2^2, Z=||Delta u||\_2^2, c1=27 S(6)^6/16. Pairing with -Delta u and using  
||u||\_6&lt;=S(6)Y^(1/2), ||nabla u||\_3&lt;=S(6)^(1/2)Y^(1/4)Z^(1/4)  
gives |&lt;u dot grad u,Delta u&gt;|&lt;=S(6)^(3/2)Y^(3/4)Z^(3/4)&lt;=nu Z/2+27S(6)^6 Y^3/(32nu^3).  
Thus Y'+nu Z&lt;=c1 nu^(-3)Y^3. The comparison solution is  
Y(t)&lt;=Y(0)/sqrt(1-2c1 nu^(-3)Y(0)^2 t),  
and the selected lifespan is min{1,nu^3/[4c1(1+||grad a||\_2^2)^2]}, with Y&lt;=sqrt(2)Y(0). (160)-(163).  

For forced data g=Pf, G0=||g||\_(L2(0,1);L2), R=1+||grad a||\_2^2+2nu^(-1)G0^2. Allocating another nu Z/4 to |&lt;g,Delta u&gt;| yields  
Y'+nu Z/2&lt;=c1nu^(-3)Y^3+2nu^(-1)||g||\_2^2.  
The bootstrap Y&lt;=2R lasts at least min{1,nu^3/(8c1R^2)}. At a later start time the force norm is over the original absolute-time interval [s,s+1], so no time reset of the source occurs. (501)-(504).  

For cutoff J\_k, the projected equation has a locally Lipschitz polynomial vector field on its Fourier-supported H1 space. Energy and ||z||\_(H1)^2&lt;=(1+k^2)||z||\_2^2 prevent finite-time blowup of that regularized ODE. The preceding estimates are uniform in k on the explicit local interval. Aubin-Lions on each ball and diagonal extraction give strong local L2\_t H1\_x convergence, enough to pass the quadratic term. The nonlinear term lies in L2\_t L2\_x because its pointwise bound is S(6)^(3/2)Y^(3/4)Z^(1/4), with bounded Y and integrable Z on a finite interval. Then u\_t belongs to L2 L2, and the H2/H1/L2 trace theorem fixes u(0)=a in H1. The equation recovers Duhamel and the normalized pressure.  

Difference estimates use the cancellation of transport and Young:  
(1/2)d||w||\_2^2/dt+nu||grad w||\_2^2=-&lt;w dot grad v,w&gt;.  
The H1 stability coefficient is C\_st nu^(-1)(||grad u||\_3^2+||grad v||\_3^2), integrable since ||grad u||\_3^2&lt;=S(6)||grad u||\_2||Delta u||\_2. Source cancels for same-force solutions. Positive-time smoothing, using the cited local theorem and heat/product iteration, places u(t0) in H\_sigma^infinity; only at that point does the proof import Theorem 5.10 or 15.8 to extend globally.  

## 3. THE CANONICAL MAJORANTS ARE AN INTERLOCKING ESTIMATE SYSTEM
https://ndownloader.figshare.com/files/69392430#page=53  
https://ndownloader.figshare.com/files/69392430#page=129  

Equations (173)-(196)/(514)-(539) define five different jobs:  
B\_(N,M)=sup\_(0&lt;S&lt;T)R\_(N,M)(u;S), the exact minimal rectangle bound of this fixed history.  
P\_(N,M)=1+B\_(N,M), and T\_(N,M)=sqrt(1+1/T)\*sqrt(P\_(N,M)), a convenient coarse trace bound.  
D\_(n,m): explicit initial-jet bounds, independent of T.  
X\_(n,m): L2\_t H^m bounds.  
Y\_(n,m): pointwise bounds propagated algebraically by the equation.  
Z\_(n,m): the minimum of available pointwise/trace bounds.  

For the forced case define G^(0),G^(1),G^(2),G^(infinity)\_(n,m) as respectively ||F\_n(0)||\_(H^m), L1 and L2 time norms, and sup time norm. Phi\_n=(-Delta)^(-1)div F\_n, so the pressure row is R\_iR\_j sum binomial(V\_a,i V\_(n-a),j)-Phi\_n. Define L^(1) as L1 of Phi\_n plus its gradient in H^(m-1); L^(2) as ||Phi\_n||\_(L2 H^m); L^(infinity) as the corresponding supremum of pressure plus gradient. These are prescribed-force coordinates. The minus sign in pressure is important, although triangle-inequality majorants are nonnegative.  

Set D\_(0,m)=||u0||\_(H^m), and  
D\_(n+1,m)=nu D\_(n,m+2)+A\_(m+1) sum\_(a=0)^n binom(n,a)D\_(a,m+2)D\_(n-a,m+2)+G^(0)\_(n,m).  
This is the actual time-jet recurrence evaluated at zero. Its spatial cost is two orders per time derivative. Delete G in the unforced case.  

For Y, set Y\_(0,0)=K\_f(T)=||u0||\_2+integral\_0^T ||f||\_2, or ||u0||\_2 unforced. For m&gt;=1,  
Y\_(0,m)=min{sqrt(1+1/T)\*sqrt(B\_(0,m)), ||u0||\_(H^m)+sqrt(T)\*sqrt(B\_(0,m+1))}.  
The first branch is an averaged adjacent trace; the second is u(t)=u0+integral u\_t. Define Y\_(n+1,m) by the same quadratic recursion as D, with G^(infinity) in place of G^(0).  

Let m\_plus=max(m,0), mu(m)=max(m-1,0), also allowing m=-1. Put  
X\_tilde\_(n,m)=min{sqrt(T)Y\_(n,m\_plus), sqrt(B\_(n,mu(m)))}.  
Thus one branch integrates a sup bound and the other reads a suitable rectangle's upper row. X\_(0,0) may also use sqrt(T)K\_f; X\_(0,1) may use sqrt(T+1/(2nu))\*K\_f. That latter kinetic refinement follows from integral ||grad u||\_2^2&lt;=K\_f^2/(2nu), while integral ||u||\_2^2&lt;=T K\_f^2. Other X equal X\_tilde.  

Finally  
Z\_(n,m)=min{Y\_(n,m),sqrt(1+1/T)\*sqrt(B\_(n,m)),D\_(n,m)+sqrt(T)X\_(n+1,m)}.  
This improves the initial pointwise recursion by using either its own adjacent trace or the actual next time row and its initial jet. These formulas do not set all majorants equal: their different index costs matter when selecting a finite rectangle.  

Pressure majorants in (223)-(226)/(566)-(569) are  
Q^(1)\_(n,m)=A\_m sum binom(n,a) X\_(a,m+1)X\_(n-a,m+1)+L^(1)\_(n,m),  
Q^(2)\_(n,m)=A\_m sum binom(n,a) min{Z\_(a,m+1)X\_(n-a,m+1),X\_(a,m+1)Z\_(n-a,m+1)}+L^(2)\_(n,m),  
Q^(infinity)\_(n,m)=A\_m sum binom(n,a)Z\_(a,m+1)Z\_(n-a,m+1)+L^(infinity)\_(n,m),  
Q^(mod)\_(n,m)=A\_m sum binom(n,a)[X\_(a+1,m+1)Z\_(n-a,m+1)+Z\_(a,m+1)X\_(n-a+1,m+1)]+L^(2)\_(n+1,m).  
These come respectively from L2 times L2, either L-infinity times L2 orientation, L-infinity times L-infinity, and the differentiated product. In the unforced case remove L. No instantaneous pressure trace is inferred merely from its L1-time norm: the velocity trace/product formula supplies it.  

Viscosity covariance, (197)-(204)/(540)-(547):  
v(s,x)=nu^(-1)u(s/nu,x), q=nu^(-2)p(s/nu,x), f\_tilde=nu^(-2)f(s/nu,x).  
Then V\_n(t)=nu^(n+1)V\_tilde\_n(nu t), Q\_n=nu^(n+2)Q\_tilde\_n(nu t), F\_n=nu^(n+2)F\_tilde\_n(nu t).  
The rectangle's upper column receives nu^(2n+1), lower column nu^(2n+3), because dt=ds/nu. Pressure L1 norms receive nu^(n+1), pointwise norms nu^(n+2). Each spatial homogeneous energy gets nu^2, its time integral nu. These are amplitude/time viscosity changes with x fixed, distinct from Navier-Stokes spatial critical rescaling. A shifted restart uses f\_(nu,t0)(sigma,x)=nu^(-2)f(t0+sigma/nu,x), and its maximal elapsed lifespan changes by nu^(-1).  

## 4. HOW FINITELY MANY CRITICAL HEIGHTS RECONSTRUCT ONE RECTANGLE
https://ndownloader.figshare.com/files/69392430#page=57  
https://ndownloader.figshare.com/files/69392430#page=131  

Propositions 7.7/17.7 are quantitative versions of the spatial-to-mixed reconstruction. Let  
H\_m=(1/2)integral\_0^T ||Lambda^(m+1/2)u||\_2^2,  
S\_m^2=2^m[T K\_f(T)^2+2H\_m].  
The Fourier split (1+|xi|^2)^m&lt;=2^m(1+|xi|^(2m+1)) gives ||u||\_(L2 H^m)&lt;=S\_m. Conversely 2H\_m&lt;=B\_(0,m) because the latter upper row is H^(m+1).  

The equation now bounds ||u\_t||\_(L1 H^m) by nu sqrt(T)S\_(m+2)+A\_(m+1)S\_(m+2)^2+G^(1)\_(0,m). Choose a Lebesgue time with ||u(t\_m)||\_(H^m)&lt;=S\_m/sqrt(T), then use the Banach fundamental identity. This yields the explicit base sup estimate  
A^v\_(0,m)=S\_m/sqrt(T)+nu sqrt(T)S\_(m+2)+A\_(m+1)S\_(m+2)^2+G^(1)\_(0,m).  
Propagate by  
A^v\_(n+1,m)=nu A^v\_(n,m+2)+A\_(m+1)sum binom(n,a)A^v\_(a,m+2)A^v\_(n-a,m+2)+G^(infinity)\_(n,m),  
A^p\_(n,m)=A\_m sum binom(n,a)A^v\_(a,m+1)A^v\_(n-a,m+1)+L^(infinity)\_(n,m).  
Then  
B\_(N,M)&lt;=T sum\_(n=0)^N[(A^v\_(n,M+1))^2+(A^v\_(n+1,max(M-1,0)))^2],  
Q\_(N,M)&lt;=T sum\_(n=0)^N A^p\_(n,M).  

The exact safe dependency ceiling printed in (217)/(560) is heights H\_q through q=M+2N+4, with the finitely listed source derivatives through temporal order N and spatial height M+2N+2. This bookkeeping avoids invoking an unspecified infinite family to estimate a fixed row. The inputs H\_q remain energies of the actual solution; this representation alone does not replace them by independently known datum norms.  

## 5. WHAT THE FINITE COORDINATES BUY
https://ndownloader.figshare.com/files/69392430#page=59  
https://ndownloader.figshare.com/files/69392430#page=183  

For J\_(n,alpha)=partial\_x^alpha V\_n, r=s+|alpha|, the canonical catalogue A.1/B.1 yields  
||J||\_(L2 H^(s+1))&lt;=X\_(n,r+1), ||partial\_t J||\_(L2 H^(s-1))&lt;=X\_(n+1,r-1), sup ||J||\_(H^s)&lt;=Z\_(n,r).  
Its time moduli have two useful branches:  
||J(t)-J(t0)||\_(H^s)&lt;=min{sqrt(t-t0)X\_(n+1,r),(t-t0)Z\_(n+1,r)}.  
At one lower spatial order use X\_(n+1,r-1) in the square-root branch. Interpolating that modulus with the bound 2Z\_(n,r) gives  
||J(t)-J(t0)||\_(H^(s-theta))&lt;=2^(1-theta)Z\_(n,r)^(1-theta)X\_(n+1,r-1)^theta |t-t0|^(theta/2).  
This explains precisely which additional temporal/spatial row strengthens continuity to a linear modulus.  

Sobolev embedding gives ||nabla^k J||\_(L^a\_t L^b\_x)&lt;=S\_(q,k,b)T^(1/a)Z\_(n,q+|alpha|), and its L2-time version uses X instead. All endpoint assertions use the compatible trace of the actual history.  

The corresponding differentiated pressure Pi\_(n,alpha) has L1, L2, sup norms bounded by Q^(1),Q^(2),Q^(infinity) at r=s+|alpha|, and modulus min{sqrt(dt)Q^(mod)\_(n,r),dt Q^(infinity)\_(n+1,r)}. Subtraction of two pressure products produces two terms, which is the origin of the doubled binomial factor in the coarser version (239)/(582).  

Frequency tails are immediate, but quantitative: ||P\_(&gt;=K)h||\_(H^s)&lt;=K^(-r1)||h||\_(H^(s+r1)), K&gt;=1. Apply this separately to the velocity and pressure time norms. For critical height j+1/2 and integer m&gt;j+1/2,  
sup E\_(j+1/2,&gt;=K)&lt;=one half K^(2j+1-2m)Z\_(0,m)^2,  
integral E\_(j+1/2,&gt;=K)&lt;=one half K^(2j+1-2m)X\_(0,m)^2.  
So the critical high-frequency tail vanishes uniformly through the chosen endpoint when the higher trace is supplied.  

For a fixed Littlewood-Paley decomposition, Bernstein gives  
2^(sigma j)||Delta\_j nabla^k u||\_infinity &lt;=C 2^((sigma+k+3/2)j)||Delta\_j u||\_2.  
Choose one M&gt;sigma+k+3/2. Cauchy-Schwarz in j supplies the convergent geometric factor sum 2^(-2(M-sigma-k-3/2)j). Integrating gives &lt;=C sqrt(T)X\_(0,M). In particular sum\_j integral ||Delta\_j curl u||\_infinity is bounded by one H3 time coordinate. There is no sum over Sobolev orders.  

Differentiated critical energies use the full finite Leibniz identity  
partial\_t^ell E\_(j+1/2)=one half sum\_(a=0)^ell binom(ell,a)Re&lt;Lambda^(j+1/2)V\_a,Lambda^(j+1/2)V\_(ell-a)&gt;.  
The catalogues introduce E^[1]\_(j,ell)=one half sum binom X\_(a,j+1)X\_(ell-a,j+1), and E^[infinity] with Z. In the forced case W^[1]\_(j,ell)=sum binom X\_(a,j+1)G^(2)\_(ell-a,j+1), with an analogous sup version. Since P\_(j+1/2)=partial\_t E\_(j+1/2)+2nu E\_(j+3/2)-W\_(j+1/2), the production bounds are E\_(j,ell+1)+2nu E\_(j+1,ell)+W\_(j,ell) in each time norm. These are exact finite coordinate estimates, not discarded production terms.  

Continuation quantities include  
||u||\_(L2 L-infinity)&lt;=S\_(2,0,infinity)X\_(0,2),  
integral ||grad u||\_infinity&lt;=S\_(3,1,infinity)sqrt(T)X\_(0,3).  
The commutator in Lemma 2.8/12.8 gives  
(1/2)d||u||\_(Hm)^2/dt+nu||grad u||\_(Hm)^2&lt;=K\_m||grad u||\_infinity||u||\_(Hm)^2+||Pf||\_(Hm)||u||\_(Hm).  
Norm regularization and Gronwall therefore yield  
sup ||u||\_(Hm)^2 &lt;=[||u0||\_(Hm)+G^(1)\_(0,m)]^2 exp(2K\_m S\_(3,1,infinity)sqrt(T)X\_(0,3)).  
Unforced delete G. K\_m itself is explicit: sum\_(ell=1)^m 3^ell binom(m,ell)sum\_(k=1)^ell binom(ell,k)Gamma\_(ell,k), with Gamma\_(1,1)=1 and Gamma\_(ell,k)=(2ell-4+sqrt(3))^((k-1)(ell-k)).  

Unforced quantitative restart (269)-(273) takes delta\_qc=min{1,c\_nu(1+Z\_(0,3))^(-2)}, where L\_nu=4(1+nu+nu^(-1))exp((nu+nu^(-1))/2), C\_q=sqrt(3)C\_3^alg, c\_nu=(8C\_q L\_nu^2)^(-2). Its solution has CH3+L2H4+time-L2H2 norm &lt;=2L\_nu Z\_(0,3); its Lipschitz action is &lt;=2S\_(3,1,infinity)L\_nu delta\_qc Z\_(0,3). Thus higher traces propagate across a concrete positive restart interval. The number remains history-coordinate dependent through Z.  

## 6. SMALL CRITICAL DATA: A GENUINE CLOSED NUMERICAL BRANCH
https://ndownloader.figshare.com/files/69392430#page=65  
https://ndownloader.figshare.com/files/69392430#page=140  

Put B(u)=P div(u tensor u), A(t)=||u||\_(dot H^(1/2)), B(t)=||u||\_(dot H^(3/2)); here B(t) is a scalar and B(u) a vector, so their roles must be kept distinct.  
The exact squared critical action identity (274)/(612) is  
nu dA^2/dt+nu^2 B^2+||u\_t||\_(dot H^(-1/2))^2=||B(u)-g||\_(dot H^(-1/2))^2, g=Pf.  
It is obtained by squaring Lambda^(-1/2)u\_t=-nu Lambda^(3/2)u-Lambda^(-1/2)(B(u)-g) and canceling its cross term against nu times the critical energy derivative. It keeps temporal response, not only dissipation.  

Dual Sobolev, Holder and P-contraction give the entire nonlinear estimate  
||B(u)||\_(dot H^(-1/2))&lt;=S(3)||u dot grad u||\_(3/2)&lt;=S(3)^3 A B=C\_src A B.  

Unforced: let a\_c=||a||\_(dot H^(1/2)), delta0=nu^2-C\_src^2 a\_c^2. The strict threshold is a\_c&lt;sqrt(2)\*pi\*nu. First exit gives A&lt;=a\_c and  
nu A(t)^2+delta0 integral\_0^t B^2+integral\_0^t ||u\_t||\_(dot H^(-1/2))^2 &lt;=nu a\_c^2.  
Consequently integral\_0^infinity ||B(u)||\_(dot H^(-1/2))^2 &lt;=C\_src^2 nu a\_c^4/delta0=nu a\_c^4/(2pi^2nu^2-a\_c^2).  

The higher-order homogeneous commutator is deliberately critical:  
|&lt;Lambda^m B(u),Lambda^m u&gt;|&lt;=K\_m^hom B ||Lambda^m u||\_2 ||Lambda^(m+1)u||\_2,  
K\_m^hom=3^m sum\_(ell=1)^m binom(m,ell)S(p\_(m,ell))S(q\_(m,ell)).  
For m=1, p=3,q=6. For m&gt;=2, theta=(ell-1)/(m-1), 1/p=1/3-theta/6, 1/q=1/6+theta/6. The two differentiated Sobolev orders interpolate complementarily between 3/2 and m+1, so their product costs exactly B times the top dissipation norm. The multinomial sum supplies 3^m, and incompressibility cancels the undifferentiated advective term.  
Young and integrating factors yield  
||Lambda^m u(t)||\_2^2+nu integral\_0^t||Lambda^(m+1)u||\_2^2 &lt;=||Lambda^m a||\_2^2 exp((K\_m^hom)^2 a\_c^2/delta0).  
The Bessel norm then obeys 2^(m-1)[||a||\_2^2+this homogeneous bound]. The printed unforced proof uses this explicit H3 bound to restart at late slices and establishes global continuation directly in the small-data regime, without invoking general rectangle admission.  

Forced: assume g belongs to L1(0,infinity;L2), L2(0,infinity;dot H^(-1/2)), and every nonnegative integer L2 homogeneous source order. For eta&gt;0 set  
A\_f^2=a\_c^2+(1+eta^(-1))||g||\_(L2 dot H^(-1/2))^2/nu,  
delta\_f=nu^2-(1+eta)C\_src^2 A\_f^2&gt;0.  
The source split ||B(u)-g||^2&lt;=(1+eta)||B(u)||^2+(1+eta^(-1))||g||^2 yields  
nu A(t)^2+delta\_f integral B^2+integral ||u\_t||\_(dot H^(-1/2))^2&lt;=nu A\_f^2.  
For higher m let D\_m^f=||Lambda^m a||\_2^2+(1+eta^(-1))||Lambda^(m-1)g||\_(L2 L2)^2/nu and Gamma\_m=(1+eta)(K\_m^hom)^2 A\_f^2/delta\_f. Then  
||Lambda^m u(t)||\_2^2+nu integral||Lambda^(m+1)u||\_2^2&lt;=D\_m^f exp(Gamma\_m).  
K\_(f,infinity)=||a||\_2+||g||\_(L1 L2) supplies the low frequency norm. The printed forced proof starts with the global history from Theorem 15.8 and labels the result a quantitative refinement; the estimates themselves are derived on strict classical intervals. Its printed proof is not an independent unrestricted forced existence theorem.  

Once the spatial bounds U\_m^sm are explicit, time rows satisfy  
Y^sm\_(0,m)=U\_m^sm,  
Y^sm\_(n+1,m)=nu Y^sm\_(n,m+2)+A\_(m+1)sum binom(n,a)Y^sm\_(a,m+2)Y^sm\_(n-a,m+2)+sup\_(t&lt;=T)||F\_n(t)||\_(Hm).  
The pressure-complete rectangle is then bounded by T sum[(Y^sm\_(n,M+1))^2+(Y^sm\_(n+1,M-1))^2], plus the corresponding pressure product sums and known force-potential norms. Unlike general B-coordinates, every input is a displayed datum/source norm. The largest datum height is M+2N+1, as (290)/(630) explicitly counts. Higher force temporal rows are only required on the chosen finite horizon.  

## 7. SPATIAL SCALE, VORTICITY, MATERIAL FLOW AND WEAK COMPARISON
https://ndownloader.figshare.com/files/69392430#page=69  
https://ndownloader.figshare.com/files/69392430#page=145  

The three low-rectangle classes are L-infinity\_t L3\_x, L2\_t L-infinity\_x, and grad u in L2\_t L3\_x; they use Z\_(0,1), X\_(0,2), X\_(0,2). Once U\_T=sup spacetime |u| and P\_T=sup spacetime |p| are bounded from the canonical coordinates, a parabolic cylinder Q\_rho has volume (4pi/3)rho^5. Thus  
rho^(-2)integral\_(Q\_rho)(|u|^3+|p|^(3/2)) &lt;=(4pi/3)rho^3(U\_T^3+P\_T^(3/2)).  
The paper expressly calls this uniform small-scale extinction a post-regularity consequence, not a CKN epsilon-regularity input.  

For omega=curl u, zeta=curl f, the vorticity equation is omega\_t+u dot grad omega=omega dot grad u+nu Delta omega+zeta. Let L=integral\_0^T||grad u||\_infinity, Z\_r=integral\_0^T||zeta||\_r, Omega\_r=exp(L)(||omega0||\_r+Z\_r). Then  
sup ||omega||\_r&lt;=Omega\_r, integral ||omega dot grad u||\_r&lt;=L Omega\_r.  
For 2&lt;=r&lt;infinity,  
integral ||grad |omega|^(r/2)||\_2^2 &lt;=r exp(rL)/[4nu(r-1)] [||omega0||\_r^r+r Z\_r Omega\_r^(r-1)].  
The proof actually handles the vector power test: first chi\_R (|omega|^2+epsilon)^((r-2)/2)omega, remove the spatial cutoff using annular tails, then epsilon to zero via dominated convergence/Fatou. The diffusion form yields 4(r-1)/r^2 times ||grad |omega|^(r/2)||\_2^2. The r=infinity estimate follows by r to infinity using L2 intersection L-infinity. This is quantitative stretching controlled by the available Lipschitz action, not a claim that stretching vanishes.  

For material flow X\_t=u(t,X), let D=S\_(2,0,infinity)sqrt(T)X\_(0,2), L=S\_(3,1,infinity)sqrt(T)X\_(0,3). Then |X(t,a)-a|&lt;=D and exp(-L)|a-b|&lt;=|X(t,a)-X(t,b)|&lt;=exp(L)|a-b|. Bounded time-integrated velocity prevents escape to infinity; integrable Lipschitz norm gives unique forward and backward flow; Jacobi gives det D\_a X=1. The force acts through u, so the flow proof is unchanged.  

Relative energy (pp73-78,148-153) includes an explicit noncompact-to-compact test construction rather than assuming u is automatically an admissible weak test. Start with chi\_R f, whose divergence is g\_R=grad chi\_R dot f of mean zero. For h supported in B2 with integral zero, form successive marginals m1(y2,y3)=integral h(s,y2,y3)ds and m2(y3)=integral m1(s,y3)ds. With a fixed compact rho of integral one, define  
G1=integral\_-infinity^y1[h(s,y2,y3)-rho(s)m1(y2,y3)]ds,  
G2=rho(y1)integral\_-infinity^y2[m1(s,y3)-rho(s)m2(y3)]ds,  
G3=rho(y1)rho(y2)integral\_-infinity^y3 m2(s)ds.  
The telescoping divergence equals h and each primitive is compact because its full-line integral vanishes. Scaling yields G\_R; T\_R f=chi\_R f-G\_R g\_R is compact solenoidal. Uniform W^(r,p) bounds and vanishing tail errors give convergence uniformly on compact sets of fields. Since these operators are time-independent, they commute with temporal differentiation.  

Apply this simultaneously in L2, H1 and W^(1,3) to the strong history and its derivative, then use time cutoffs. The weak energy class has v in L4\_t L3\_x, so v tensor v is in L2\_t L^(3/2)\_x, exactly dual to the retained grad u in L2 L3. This validates the cross identity, including endpoints by weak/strong continuity:  
&lt;v(t),u(t)&gt;=&lt;v0,u0&gt;+integral ((v-u) dot grad u) dot(v-u)-2nu integral&lt;grad v,grad u&gt;+integral&lt;f,u+v&gt;.  
The last term occurs only when forced. Combine weak energy inequality, strong energy equality, and the cross identity. With w=v-u the common source work cancels exactly:  
(1/2)||w(t)||\_2^2+nu integral||grad w||\_2^2 &lt;=(1/2)||w0||\_2^2-integral(w dot grad u) dot w.  
Bounding by ||grad u||\_infinity||w||\_2^2 gives exponent 2 integral||grad u||\_infinity. Alternatively move the gradient to w and use Young; then viscosity is halved and the exponent is nu^(-1)integral||u||\_infinity^2. These are (322)-(324)/(662)-(664).  

Same datum makes the right side zero, giving uniqueness and energy equality in the stated Leray-Hopf class relative to the supplied smooth history. The weak pressure differs by a scalar distribution in time because its spatial gradient is zero; if both spatial slices vanish at infinity that gauge is fixed. This entire weak-class conclusion is downstream of having the strong comparison history on the same finite interval.  

## 8. APPENDIX C: WHAT SOURCE WORK CAN BE BOUNDED WITHOUT HIGHER VELOCITY ROWS
https://ndownloader.figshare.com/files/69392430#page=190  

This appendix contributes independent estimates stronger than merely saying 'the force is smooth.' For s&gt;=0, put h\_s=Lambda^(2s)Pf. Self-adjointness moves all spatial derivatives onto this prescribed test field:  
W\_s=&lt;u,h\_s&gt;, |W\_s|&lt;=K\_T||h\_s||\_2.  
Differentiating and substituting momentum gives the exact identity (838)  
W\_s'=&lt;u,(partial\_t+nu Delta)h\_s&gt;+integral u\_i u\_j(Sym grad h\_s)\_(ij)+&lt;f,h\_s&gt;.  
Pressure drops out because h\_s is solenoidal. Transport has a positive sign after moving its derivative. Thus both W\_s and W\_s' are uniformly bounded by kinetic energy and finitely many source norms. It does not require Pf to remain Schwartz; Sobolev multiplier bounds give the needed norms.  

For the complete source correction S\_(s,k)=sum\_(j=0)^(k-1)(-2nu)^j partial\_t^(k-1-j)W\_(s+j), define I^a h(t)=1/(a-1)! integral\_0^t(t-v)^(a-1)h(v)dv. Proposition C.1 proves I^(k-2)S\_(s,k) is bounded. With zero datum and force zero near time zero, all initial correction polynomials vanish and  
I^(k-2)S\_(s,k)=W\_s'-2nu W\_(s+1)+sum\_(j=2)^(k-1)(-2nu)^j I^(j-1)W\_(s+j).  
The bound is L\_s+sum\_(j=1)^(k-1)(2nu)^j T^(j-1)B\_(s+j)/(j-1)!, where B and L bound W and W'. For general data the exact integration-by-parts formula (842) retains initial jets. This estimates the signed combined source current, not separately the absolute integral of every high derivative.  

In every temporal row, the absorption identity (843) is  
W\_(r,s)=&lt;Lambda^(s+1)V\_r,Lambda^(s-1)PF\_r&gt;.  
Young yields |W\_(r,s)|&lt;=nu E\_(r,s+1)/2+nu^(-1)||Lambda^(s-1)PF\_r||\_2^2. Hence  
partial\_t E\_(r,s)+(3nu/2)E\_(r,s+1)&lt;=P\_(r,s)+nu^(-1)||Lambda^(s-1)PF\_r||\_2^2.  
For 0&lt;=s&lt;1 the source multiplier is singular at zero, but the radial integral is integral\_0^1 rho^(2s)drho, finite in dimension three. An absolute source-work integral still uses the displayed dissipation. The Bessel variant avoids the singular multiplier for broader H-infinity source classes: with A\_(r,s)=one half||J^sV\_r||^2 and D\_(r,s)=||grad J^sV\_r||^2,  
A'\_(r,s)+(nu/2)D\_(r,s)&lt;=P^J\_(r,s)+nu A\_(r,s)+(2nu)^(-1)||J^(s-1)PF\_r||^2.  
Multiplying by exp(-nu t) removes the extra low-frequency growth term.  

C.2 improves the temporal bookkeeping. Set M\_(s,k)=&lt;u,partial\_t^k h\_s&gt;. The exact binomial transfer is  
W\_(r,s)=sum\_(b=0)^r(-1)^b binom(r,b)partial\_t^(r-b)M\_(s,r+b).  
Expanding gives the coefficient binom(r,a)sum\_(b=0)^(r-a)(-1)^b binom(r-a,b), zero unless a=r. Thus every response derivative except V\_r cancels. Since M and M' obey the same kinetic/test-field estimate as W and W', the full correction F\_(r,s,n)=sum\_(j=0)^(n-1)(-2nu)^j partial\_t^(n-1-j)W\_(r,s+j) has a bounded I^max(n+r-2,0) primitive. It uses only data, source norms and finitely many initial jets, with no amplitude restriction. Formula (851) lists the exact polynomial subtractions; it is not an unquantified repeated integration.  

After n+r integrations, odd n gives a positive left side  
I^r E\_(r,s)+(2nu)^n I^(n+r)E\_(r,s+n)=I^r(initial Taylor polynomial)+I^(n+r)(nonlinear current)+I^(n+r)(source current).  
The source current is bounded independently. This identifies what any divergence of the LEFT integrated energy would require from nonlinear production. For r&gt;0 pointwise divergence of E alone does not imply divergence of I^r E.  

C.3 obtains absolute source-work integrals at r=0 and r=1, including mixed spatial derivatives. For M\_(alpha,s)=(-1)^|alpha| partial\_x^(2alpha)Lambda^(2s),  
W\_(r,alpha,s)=&lt;V\_r,M\_(alpha,s)F\_r&gt;.  
At r=0, integral|W|&lt;=U\_\*integral||M f||\_2. At r=1, set h=M PF1 and use the ORIGINAL momentum equation:  
W\_(1,alpha,s)=nu&lt;u,Delta h&gt;+integral u\_i u\_j(Sym grad h)\_(ij)+&lt;f,h&gt;.  
Every term is absolutely integrable from kinetic energy and prescribed-source norms. This is more than a signed primitive bound and consumes no critical rectangle.  

For r&gt;=1, define B\_(r,alpha,s)=sum\_(j=0)^(r-1)(-1)^j&lt;V\_(r-1-j),M F\_(r+j)&gt;.  
Then B'=W\_(r,alpha,s)+(-1)^(r-1)&lt;u,M F\_(2r)&gt;. Thus integral W is an endpoint pairing involving only lower temporal response rows plus a kinetic/source pairing. At r&gt;1 those lower response sup norms are genuine inputs. The formula bounds the signed integral; it does not upgrade it to an absolute integral.  

C.4 explicitly tracks the source inside temporal velocity differentiation. Let L=nu Delta, B(v,w)=P[(v dot grad)w], Q(v,w)=B(v,w)+B(w,v), K(u)=Lu-B(u,u), A\_u h=Lh-Q(u,h). Then  
V1=K(u)+g,  
partial\_t K=A\_u V1,  
partial\_t(A\_u h)=A\_u partial\_t h-Q(V1,h).  
Therefore V2=A\_u K(u)+S2, S2=A\_u g+g1;  
V3=A\_u^2 K(u)-Q(K(u),K(u))+S3,  
S3=A\_u^2 g+A\_u g1-2Q(K(u),g)-Q(g,g)+g2.  
The factor 2 is the contribution of differentiating both the operator's coefficients and its argument. If U=sup||u||\_2 and D=||grad u||\_(L2L2) are bounded kinetically, then  
||S2||\_(L2L2)&lt;=nu||Delta g||\_(L2L2)+||g1||\_(L2L2)+||g||\_infinity D+||grad g||\_infinity sqrt(T)U.  
S3 is bounded in the weaker L2 H^(-3) norm using u tensor u in L2 L^(3/2), dual Sobolev, and smooth multiplication by g. With Z=||u||\_(L2H1), G=max\_(j&lt;=2)sup||g\_j||\_(H6), the printed bound is C[sqrt(T)((1+nu+nu^2)G+G^2)+G(1+nu+U)Z]. The height loss is explicit and should not be silently replaced by an L2L2 estimate.  
At all orders, J0(v)=v, J\_(n+1)=D J\_n(v)[K(v)], V\_n=J\_n(u)+S\_n, and S\_(n+1)=D J\_n(u)[g]+partial\_t S\_n. Every S\_n contains a source factor but also retains its velocity factors.  

C.5 applies the source primitive to the full completed critical height. With k&gt;=2 and m=k-2,  
(-2nu)^k I^m C^f\_(0,k)=H''-sum\_(ell=0)^(m-1)H^(ell+2)(0)t^ell/ell!-I^m N\_(1/2,k)-I^m S\_(1/2,k).  
Only the last term was bounded by C.1. If the entire right side were bounded, k=2 would control the height pointwise and k=3 its unweighted time integral. For k&gt;=4, bounded I^(k-2)C of a nonnegative height yields only integral\_0^T(T-t)^(k-3)C(t)dt&lt;infinity by positive-kernel monotone convergence. Its vanishing terminal weight does not imply unweighted terminal membership. This is an explicit limitation stated in the source itself, not an external criticism.  

## 9. APPENDIX D: STOKES LIFTING, SOURCE INSERTIONS AND LINEAR GRAPH DOMAINS
https://ndownloader.figshare.com/files/69392430#page=198  

The prescribed Stokes lift is z(t)=integral\_0^t exp(nu(t-s)Delta)Pf(s)ds, z(0)=0. Z\_n=partial\_t^n z obeys Z\_(n+1)=nu Delta Z\_n+PF\_n and  
Z\_n(0)=sum\_(j=0)^(n-1)(nu Delta)^(n-1-j)PF\_j(0).  
Heat contraction gives sup||Z\_n||\_(Hq)&lt;=||Z\_n(0)||\_(Hq)+integral||F\_n||\_(Hq). Every lift norm is independently known from finitely many source derivatives.  

Set v=u-z and W\_n=partial\_t^n v. Its equation retains FOUR quadratic terms: B(v,v), B(z,v), B(v,z), B(z,z). At row n, all four carry the full binomial sum. Pressure after subtracting the linear source potential is still the quadratic pressure of W+Z. Stokes subtraction has not turned the actual remainder into an unforced solution.  

Theorem D.1 sets E=one half sum\_(n&lt;=N)||W\_n||\_(Hs)^2, D=sum||grad W\_n||\_(Hs)^2, Z=sum\_(a&lt;=N)binom(N,a)||Z\_a||\_(H^(s+2)), and G\_n=sum\_(a&lt;=n)binom(n,a)B(Z\_a,Z\_(n-a)), G^2=sum||G\_n||\_(H^(s-1))^2. Then  
E'+(nu/2)D&lt;=P\_(N,s)(W)+[nu+8C\_s^2 Z^2/nu]E+G^2/nu,  
C\_s=2^(s/2)pi(2pi)^(-3/2).  
The signed P\_(N,s)(W) is the entire W-W production. To derive the extra terms, use the frequency weight inequality &lt;xi&gt;^s&lt;=2^(s/2)&lt;eta&gt;^s&lt;xi-eta&gt;^s and integral &lt;eta&gt;^(-4)deta=pi^2 to obtain ||ab||\_(Hs)&lt;=C\_s||a||\_(H^(s+2))||b||\_(Hs). Each cross term places the lift at the higher height. Discrete convolution bounds their l2 temporal-row norm by 2C\_s Z sqrt(2E). Pairing H^(s-1) with H^(s+1) gives sqrt(D+2E)[2C\_s Z sqrt(2E)+G], which Young bounds by nu D/2+nu E+8C\_s^2 Z^2E/nu+G^2/nu. Thus source-dependent interactions are at most linear in the retained energy with known coefficients. Only at N=s=0 does incompressibility additionally cancel all W-W self-production.  

D.1 addresses a subtler source contribution: the force enters differentiated nonlinear production even when the explicit W term has been separated. Write P\_s(u)=-&lt;Lambda^s u,Lambda^s B(u,u)&gt;, A(u)=nu Delta u-B(u,u), actual u\_t=A(u)+g. Then J\_s=D P\_s(u)[g] has THREE terms, one source insertion in each velocity slot, as (868) displays. For a\_rho=(2pi)^(-3/2)integral |xi|^rho |g\_hat|, h=||u||\_(dot H^(1/2)), U=sup||u||\_2,  
|J\_(1/2)|&lt;=2a1 h^2+a\_(3/2)U h+a2 U^2.  
The first slot moves all spatial derivatives to g and costs a2U^2. The advecting g slot uses div g=0 and the half-derivative commutator bounded by a1 h. The last slot splits the half-derivative weight and costs a1h+a\_(3/2)U before pairing with h. Since h^2&lt;=U||grad u||\_2, all terms integrate using kinetic dissipation:  
||J\_(1/2)||\_L1&lt;=2a1\*U sqrt(T)D+a\_(3/2)\*U^(3/2)T^(3/4)D^(1/2)+a2\*T U^2.  

Along the forced trajectory, (872)-(873) therefore give  
H''=L\_A^2 H(u)+R\_f,  
R\_f=J\_(1/2)+W'\_(1/2)-2nu W\_(3/2) in L1(0,T),  
L\_A^2 H=4nu^2 E\_(5/2)+D P\_(1/2)(u)[A(u)]-2nu P\_(3/2).  
Thus this complete second-height source correction, including the hidden insertion, is independently controlled by kinetic/source norms. Subtracting its double integral changes a scalar recorded energy; it does not change the vector field driving u.  

D.2 fixes the smooth lift w=z and K\_w v=P[(w dot grad)v+(v dot grad)w], L\_w=partial\_t-nu Delta+K\_w. For m&gt;=0 the initial-trace graph domain is  
E\_m=C H\_sigma^m intersection L2 H\_sigma^(m+1), with v\_t in L2 H\_sigma^(m-1).  
The linear domain agrees with the heat graph domain, with  
||v||\_(CHm)+||v||\_(L2H^(m+1))+||v\_t||\_(L2H^(m-1))&lt;=C\_(m,nu,T,w)[||v(0)||\_(Hm)+||L\_w v||\_(L2H^(m-1))],  
uniform for 0&lt;S&lt;=T. Product estimates bound K\_w v by C||w||\_(W^(m+1,infinity))||v||\_(Hm); energy/Young/Gronwall give the first two norms and the equation gives the third. Approximation of trace and residual plus linear uniqueness identifies the completion. No amplitude smallness is used, but the constant may grow with the lift norms.  

When differentiating, L\_w W\_n+sum binom B(W\_a,W\_(n-a))=partial\_t^n h\_w-sum\_(a=1)^n binom(n,a)K\_(Z\_a)W\_(n-a), h\_w=-B(w,w).  
The cross term uses earlier response rows. Assign parabolic degree 2n+m+1 to the adjacent pair; its coefficient-response terms have degree at most 2n+m. Kinetic energy supplies the base lower row. This accurately isolates the source-dependent linear-domain bookkeeping without removing nonlinear self-interaction from the residual.  

## 10. DEPENDENCY SUMMARY AND CHECKED LIMITS OF THIS RECONSTRUCTION

Independent ingredients proved on strict intervals with cutoff-uniform constants: local H1 construction/stability; all algebra, trace and multiplier estimates; the small-critical unforced action closure; the kinetic/test-field source estimates in C; finite source primitives with their exact weights; S2 in L2L2 and S3 in L2H^(-3); prescribed Stokes lift; source-linear energy and linear graph estimates; the complete second-height source insertion.  

Coordinate consequences consuming selected admitted rectangles/heights: canonical B/X/Y/Z bounds in their terminal use, mixed and pressure traces, critical energy derivative catalogue, frequency tails, dyadic sums, Lipschitz action, general-data high-order estimates, scale-content extinction, vorticity amplification, material flow, and Leray-Hopf comparison with the globally supplied strong history.  

The quantitative sections give real detailed mechanisms. They are not simply restatements of 'smoothness': one can see exactly which finite time/spatial coordinate bounds each output, exactly where data-only formulas replace history norms in the small-data branch, and exactly how forcing is moved, absorbed or retained. Conversely, a bound for an integrated source current is not silently converted into a bound for the response or for an unweighted higher height.  

The arithmetic checks recorded in this guide establish no new error in the formulas covered above. They concern the radical in C\_src, viscosity/time powers, derivative-height ceilings, small-critical commutator interpolation indices, binomial source-transfer cancellation, and repeated-integration polynomial indices. The companion guide to Appendices E through M likewise records no new arithmetic error among its displayed constant and exponent checks. The exterior amplitude in (957)-(958) is 2^A times kappa, not 2A times kappa. These checks do not certify every analytic estimate or the global construction.  

## 11. APPENDICES E-M: THE REMAINING MECHANISMS IN CONTEXT
https://ndownloader.figshare.com/files/69392430#page=203  
Detailed reconstruction is given in the companion guide to Appendices E through M. The following integrates their roles with the quantitative chapters above.  

E. A positive reserve and a nonlocal density explain WHERE critical production acts.  
Let H=one half||Lambda^(1/2)u||\_2^2, D=||Lambda^(3/2)u||\_2^2, b\_f=K\_T||Lambda Pf||\_2, R\_f(t)=integral\_t^T b\_f(s)ds, Phi=H+R\_f, Z\_f=b\_f-W&gt;=0. Then Phi'+nu D+Z\_f=P\_H. The source reserve tends to zero at T and is known before any terminal H bound. It does not change u or remove forcing from momentum.  
For x\_+=z+(1-theta)y, x\_-=z-theta y, define delta u\_theta=u(x\_+)-u(x\_-) and  
T\_u(z)=pi^(-2)integral\_0^1 integral |delta u\_theta|^2 |y|^(-4) y\_hat tensor y\_hat dy dtheta, tau=tr T\_u.  
Then integral tau=4H and P\_H=-integral S:T\_u, S=Sym grad u. Positivity allows r=-S:T\_u/tau on nonzero density, with |r|^2&lt;=(2/3)|S|\_F^2. Kinetic dissipation gives integral\_0^T integral |r|^2&lt;=K\_T^2/(6nu). Define rho\_f=tau/(4Phi), whose mass is H/Phi&lt;=1, and V\_f^(-1)=integral\_(r&gt;0)rho\_f^2. On the growth set G\_f={Phi'&gt;0},  
log(Phi(b)/Phi(a))&lt;=4 [integral\_(G\_f intersect [a,b])integral r\_+^2]^(1/2)[integral\_(G\_f intersect [a,b])V\_f^(-1)]^(1/2).  
For N disjoint doubling intervals this forces total inverse-volume action at least 3nu(log 2)^2N^2/(8K\_T^2). The point is a quantitative concentration cost, not simply a bound on strain sampled uniformly in space.  

The local density equation tracks endpoint transport and pressure instead of discarding them. With D\_z=partial\_t+u(z)dot grad\_z and K denoting the chord integral, (D\_z-nu Delta\_z)tau=I\_tau-2nu Q\_tau+F\_tau, where Q\_tau=K[|delta grad u|^2], F\_tau=2K[delta u dot delta g]. Its integrated normalization is integral Q\_tau=2D, integral F\_tau=4W, integral I\_tau=4P\_H. The direct chord forcing has finite absolute spacetime mass, bounded by 2^(7/4)K\_T nu^(-1/4)||Lambda^(1/2)g||\_(L^(4/3)\_t L2\_x), because integral H^2&lt;=K\_T^4/(8nu).  

Resolving the chord-center shift gives I\_tau=-4S:T\_u+div J\_int and  
partial\_t tau+div(u tau-J\_int)-nu Delta tau=4tau r-2nu Q\_tau+F\_tau.  
J\_int includes the pressure flux -2K[delta p delta u], the difference between center velocity and endpoint-averaged velocity, and an explicit translation flux. Its estimate is ||J\_int||\_1&lt;=C||u||\_2^(1/2)||grad u||\_2^(5/2), hence integral||J\_int||\_1^(4/5)&lt;=Cnu^(-1)K\_T^(12/5). The exponent is 4/5; the source does not claim terminal L1-time flux control from it.  

Diffusion obeys |grad tau|^2&lt;=4tau Q\_tau. With psi=sqrt(rho\_f), J=integral|grad psi|^2 and mass m&lt;=1, one has J&lt;=D/(2Phi) and  
V\_f^(-1)&lt;=min{S6^3 m^(1/2)J^(3/2), S6^2||tau||\_(3/2)J/(4Phi)}.  
The full normalized equation retains intrinsic production, source and the signed Phi'/Phi term. Even finite integral J would only bound integral(V\_f^(-1))^(2/3), weaker than the inverse-volume action used by the growth estimate. This is the precise status of this geometric route as the paper presents it.  

F. Squaring momentum gives a separate low-order smallness criterion.  
Let X(S)=integral\_0^S(||u\_t||\_2^2+nu^2||Delta u||\_2^2), G0=||grad u0||\_2^2, U=||u0||\_2+integral\_0^T||f||\_2, L=TU^2+U^2/nu, Phi\_force=integral\_0^T||Pf||\_2^2. The exact square is  
X(S)+nu||grad u(S)||\_2^2=nu G0+integral\_0^S||Pf-P(u dot grad u)||\_2^2.  
Kinetic low frequencies give R\_(0,1)(S)&lt;=L+max(1,nu^(-2))X(S), and the reverse X&lt;=max(1,nu^2)R\_(0,1). The H2 Fourier embedding constant is ||u||\_infinity^2&lt;=||u||\_(H2)^2/(8pi). Combined with the gradient trace, this yields  
X&lt;=nu G0+2Phi\_force+(G0+X/nu)(L+X/nu^2)/(4pi).  
For a=1/(4pi nu^3), b=(G0/nu^2+L/nu)/(4pi), c=nu G0+2Phi\_force+G0L/(4pi), the conditions b&lt;1 and (1-b)^2&gt;4ac imply X&lt;=the smaller root [1-b-sqrt((1-b)^2-4ac)]/(2a). Continuity from X(0)=0 prevents crossing the forbidden root interval. Without root separation a positive quadratic inequality is not an upper bound. This criterion independently supplies the first rectangle in its stated regime.  

G. Projection separates transport, pressure and material acceleration.  
Given rectangles, full temporal production has an L1 bound C\_m(2^(N+1)-1)sqrt(D\_(N,m)+R\_(N,m)) R\_(N,m+1), where D\_(N,m)=sum||V\_r(0)||\_(Hm)^2 and C\_m=2^(m+1)(8pi)^(-1/2). Source work is bounded by its L2 dot H^(m-1) budget times sqrt(R\_(N,m)). Projected transport has an L1 H^(M-1) product bound and a stronger L2 bound from the equation: the sum-of-squares row norm of PB\_n-PF\_n is &lt;=sqrt(nu^2+1)sqrt(R\_(N,m+1)).  
Pressure has an extra half derivative from div((v dot grad)w)=partial\_i v\_j partial\_j w\_i, symmetric in the two fields. In particular ||Q B0||\_(dot H^(1/2))&lt;=C\_src ||u||\_(dot H^(3/2))^2, while the negative-half bound is C\_src h d. Interpolation yields L^(4/3)\_t L2\_x pressure-gradient control from h in L-infinity and d in L2.  
Material acceleration a=D\_tu has the orthogonal decomposition a=nu Delta u+Pf+Q B0. Thus its solenoidal and gradient squares add. For A=||u||\_(L2H2), B=||u\_t||\_(L2L2), Z=sqrt(||u0||\_(H1)^2+2AB),  
||a||\_(L2L2)^2&lt;=(nu A+||Pf||\_(L2L2))^2+[2/(3pi^2)]Z^2A^2.  
The first rectangle suffices for this bound. Stronger adjacent heights u in L2H^(5/2), u\_t in L2H^(1/2) give a continuous H^(3/2) trace and acceleration in L2H^(1/2). Unforced, squaring adds the exact identity nu d(h^2)/dt+||u\_t||\_(dot H^(-1/2))^2+||a||\_(dot H^(-1/2))^2=||B0||\_(dot H^(-1/2))^2. Adding the pressure square does not supply a new favorable nonlinear sign.  

H. Kinetic dissipation has an independent material meaning.  
For the flow deformation F=D\_aX and C=F^T F, F\_dot=(grad u)F, det F=1 and C\_dot=2F^T S F. Cyclicity gives tr(C^(-1)C\_dot C^(-1)C\_dot)=4|S|^2. Volume preservation turns its spacetime integral into the ordinary viscous dissipation. If K=||u0||\_2^2+2(||u0||\_2+integral||f||\_2)integral||f||\_2, then  
integral\_over\_labels sup\_(t&lt;T)||log C(a,t)||\_F^2 da&lt;=T K/nu.  
The time supremum is inside the label integral. This rules out infinite distortion on a positive-measure label set while allowing concentration on smaller sets; it is not a uniform parcel bound.  

I. Angular momentum estimates require symmetry of the full field.  
For Gamma=r u\_theta the exact general cylindrical equation retains -partial\_theta p and (2nu/r)partial\_theta u\_r. If the ENTIRE u,p,f is axisymmetric, both vanish and a scalar maximum principle from rest gives ||Gamma(t)||\_infinity&lt;=integral\_0^t||r f\_theta||\_infinity with no amplitude restriction. The completed candidate has nonzero angular wave harmonics. Angular averaging preserves fluctuation fluxes -(1/r)partial\_r(r average(u'\_r Gamma'))-partial\_z average(u'\_z Gamma'); it does not produce a force-only axisymmetric equation. A bound on r u\_theta also does not bound u\_theta uniformly near r=0.  

J. Eulerian and material derivatives form equivalent complete intersections, with finite footprints.  
The key commutator is [D\_t,partial\_i]w=-(partial\_i u\_j)partial\_j w. Hence div a=tr((grad u)^2)=-Delta p+div f, while D\_t(div u)=div a-tr((grad u)^2)=0. The second Jacobian derivative cancels these terms; nonzero div a does not violate incompressibility. Higher divergences satisfy delta\_(q+1)=D\_t delta\_q+tr(U grad(D\_t^q u)), U=grad u. For example div(D\_t a)=3tr(U grad a)-2tr(U^3).  
[D\_t,Delta]w=-(Delta u)dot grad w-2sum\_i(partial\_i u)dot grad partial\_i w; [D\_t,grad]p=-U^T grad p. These terms remain in jerk and higher pressure/viscous derivatives.  
The exact conversion rule D\_t J\_(r,alpha)=J\_(r+1,alpha)+sum\_l u\_l J\_(r,alpha+e\_l) builds every material derivative as a finite mixed-jet polynomial. Conversely partial\_t partial\_x^alpha D\_t^q u=partial\_x^alpha D\_t^(q+1)u-sum\_(beta&lt;=alpha)binom(alpha,beta)(partial\_x^beta u dot grad)partial\_x^(alpha-beta)D\_t^q u. If all material rows are L2 at every spatial height, this equation first gives W1,1 time regularity, then uniform spatial bounds, then Eulerian reconstruction. Thus the equivalence is proved both ways without pretending the operators commute.  
For requested n&lt;=N,k&lt;=K and H^m, one concrete rectangle is R\_(N+K,max(m,2)+K). Writing q=max(m,2), Q=q+K, X=sqrt(R), Z=sqrt(d0^2+R), d0=max\_(j&lt;=N+K)||V\_j(0)||\_(H^Q), the finite material row is bounded in L2H^m by L\_(n,k,m)X max(1,Z)^k and in CH^m by L\_(n,k,m)Z max(1,Z)^k. The coefficient is sqrt(3)4^k k!(k+1)^n max(1,K\_q)^k, with the explicit Sobolev algebra K\_q in (955). Each monomial has at most k+1 factors, temporal total k+1-number\_of\_factors and spatial total number\_of\_factors-1 before the additional n derivatives.  

K-L. Pressure adjustment has an exact obstruction, detected in the actual cutoff.  
A force with Pf=0 can be absorbed by p=q+phi, grad phi=f; the low-frequency inverse derivative is integrable in dimension three and all finite pressure jets are controlled. More generally, for the same velocity and any adjusted pressure q, the unforced residual has P R\_q=Pf and inf\_q||R\_q||\_(Hm)=||Pf||\_(Hm). This is an exact orthogonal minimization, not a matter of choosing a clever pressure.  
In the candidate's fixed heat exterior the cutoff swirl is u=chi K e\_theta. Its azimuthal residual is f\_theta=-K(chi\_rr+r^(-1)chi\_r+chi\_zz)-2K\_r chi\_r. Terminal time derivatives K\_j are positive multiples of r^(-1-2h-2j). If the jth residual vanished on a connected cutoff rectangle, chi would solve [partial\_rr+partial\_zz-(1+4h+4j)r^(-1)partial\_r]chi=0 there. Chi attains both its maximum one and zero at interior points, contradicting the strong maximum principle. A compact solenoidal azimuthal test field detects nonzero PF\_j. Consequently flatness of the force at the proposed singular spatial point does not imply vanishing projected force on a final interval.  

M. A stronger critical-source barrier than the eta-split action criterion.  
For y=||u||\_(dot H^(1/2)), z=||u||\_(dot H^(3/2)), beta=||Pf||\_(dot H^(-1/2)), the strict-window energy inequality is y y'+(nu-C\_src y)z^2&lt;=beta z. Before y reaches nu/C\_src, optimize out z to obtain y y'&lt;=beta^2/[4(nu-C\_src y)]. The left side after multiplication is the derivative of Psi(y)=2nu y^2-(4/3)C\_src y^3. Thus Psi(y(t))&lt;=Psi(y0)+B(t), B=integral beta^2. Psi is increasing up to its maximum 4pi^2nu^3/3 at y=nu/C\_src. If B(T)&lt;4pi^2nu^3/3-Psi(y0), continuity gives a strict subcritical barrier y&lt;=r and integral z^2&lt;=y0^2/a+B(T)/a^2, a=nu-C\_src r&gt;0. An H1 energy/Gronwall estimate followed by uniform local restart proves continuation without assuming terminal rectangles.  
For rest data the threshold is 4pi^2nu^3/3. Optimizing eta in section 18.3 gives only pi^2nu^3/2, so M is a genuinely sharper sufficient source criterion. Its proof and its role should not be collapsed into the chapter's general-coordinate bounds.  
A separate H3 estimate from rest gives Y'&lt;=2Y^3/(pi nu)+g, g=||Pf||\_(H3). Add the remaining source integral to Y and compare the cubic ODE. If G\_T=integral g&lt;sqrt(pi nu/(4T)), then Y(t)&lt;=G\_T/sqrt(1-4G\_T^2t/(pi nu)). Unbounded candidate H3 at T=1 forces G\_OA&gt;=sqrt(pi nu)/2.  
Finally the exterior's divergent L3 norm forces its critical y through nu/C\_src at a strict time S, costing B(S)&gt;=4pi^2nu^3/3. The nonzero late cutoff force found in L contributes a further strictly positive integral after S, proving B(1)&gt;4pi^2nu^3/3. This demonstrates actual failure of the sufficient source test using strict-time equations and a fixed exterior test field, without assuming global terminal source regularity. Failure of a sufficient test is not itself a contradiction with the paper's claimed unrestricted forced theorem.  


## 12. EXPLICIT PARABOLIC SCALING CHECK

The source's Navier-Stokes rescaling is u\_lambda(x,t)=lambda u(lambda x,lambda^2t), p\_lambda=lambda^2p(lambda x,lambda^2t), f\_lambda=lambda^3f(lambda x,lambda^2t), at fixed nu. Directly differentiating and changing variables gives  
V\_n^lambda=lambda^(2n+1)V\_n(lambda x,lambda^2t),  
Q\_n^lambda=lambda^(2n+2)Q\_n(lambda x,lambda^2t),  
F\_n^lambda=lambda^(2n+3)F\_n(lambda x,lambda^2t).  
Thus ||V\_n^lambda(t)||\_(dot H^s)^2=lambda^(4n+2s-1)||V\_n(lambda^2t)||\_(dot H^s)^2. A time-integrated square over [0,T/lambda^2] has exponent 4n+2s-3. In particular the two homogeneous adjacent faces of one rectangle, (V\_n at M+1) and (V\_(n+1) at M-1), have the SAME integrated scaling exponent 4n+2M-1. The inhomogeneous rectangle is not one homogeneous power because its Bessel weights retain low orders too.  
For E\_(j+1/2), the instantaneous exponent is 2j and its time-integral exponent is 2j-2. H=E\_(1/2) is invariant instantaneously, while the dot H^(3/2) squared time action is invariant. The source beta=||Pf||\_(dot H^(-1/2)) gains a factor lambda, so integral beta^2 is invariant. These exact powers explain why both the critical velocity threshold and Appendix M's source budget are scale-invariant, whereas a low-order finite-horizon H3 forcing threshold additionally contains the horizon T. This paragraph is a direct scaling calculation from the source's displayed normalization, rather than an extra existence assertion.  
