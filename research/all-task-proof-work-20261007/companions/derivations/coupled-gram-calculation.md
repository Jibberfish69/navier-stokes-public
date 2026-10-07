# Exact coupled Navier–Stokes Gram calculation

**Companion C02 — reviewed scope.** Supplementary Gram/helicity Schur complement, covariance barrier and overlapping-sector criterion.

This is a bounded independent Gram/helicity and Schur-complement extension. Its covariance barrier and overlapping-sector action bounds are conditional sufficient statements. Its remaining-bound discussion is confined to the executed operations; it is not a conclusion that the original datum producer requires these auxiliary hypotheses.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.


Source checks and independent extensions  
6 October 2026. Independent calculation on the actual strict classical history.  

## Source basis and status

This independent calculation uses the [core guide](../learning/core.md) and its supplementary reciprocal-route derivations, the [quantitative guide](../learning/quantitative.md), the [appendix guide](../learning/appendix-geometry.md) E–G, and the [composed closure calculation](composed-closure-calculation.md).  

The public source is [DOI 10.6084/m9.figshare.34005666.v1](https://doi.org/10.6084/m9.figshare.34005666.v1), exact [PDF file 69392430](https://ndownloader.figshare.com/files/69392430). Source-checked formulas are the complete differentiated row and pressure/projected square (410)–(413), pp.108–109; the exact action identity and factor-two quadratic barrier (901)–(904), pp.209–210; the critical negative-half action identity (927)–(928) and related estimate (929), p.214; and the cited Sobolev/product estimates.  

The core guide's description of genuine C\_AB Gram objects, both-factor substitution, nine double-cross terms and local pressure flux is secondary source information. This calculation does not claim a fresh direct inspection of the underlying original Gram source or its whole-terminal producer.  

The velocity/helicity Schur complement, spectral remainder R, helicity-sector criterion, covariance barrier and explicit derivative checks are independent mathematical extensions. They are not attributed to the original author's proof, do not alter the original paper's conclusions, and neither establish nor refute unrestricted global regularity. All calculations retain the actual NS nonlinear operator.  

## Main results

1. Substituting the complete momentum row into BOTH factors of a Gram matrix  
   is an exact congruence. Once the primitive Gram matrix is retained, the  
   augmented row's Schur complement is zero. PSD alone does not add a new  
   analytic bound. This does not discard the nonlinear operator's constraints.  

2. The actual nonlinear operator supplies TWO independent orthogonalities,  
       <P((u.grad)u),u>=0,   <P((u.grad)u),curl u>=0.  
   Their simultaneous Schur complement improves the signed critical production  
   estimate by a nonnegative, explicitly computable projection remainder R.  
   With h=||Lambda^(1/2)u|| and d=||Lambda^(3/2)u||,  
       |P\_(1/2)|^2 <= c\_\*^2 h^2 d^2 R,  0<=R<=d^2,  
       c\_\*=1/(sqrt(2) pi).  
   The one-direction version is  
       |P\_(1/2)| <= c\_\* d sqrt(h^2 d^2-||grad u||^4).  
   These retain a favorable geometric term absent from the simple bound  
   |P\_(1/2)|<=c\_\* h d^2.  

3. Differentiated kinetic/helicity cancellations remain complete coupled  
   relations. They do not give each temporal row its own nonlinear cancellation.  
   At the first temporal row the remaining production is  
       -<((u\_t.grad)u),u\_t>.  
   The full critical-production derivative also retains an indefinite quartic  
   expression; a positive nonlinear square is accompanied by its full cross  
   term. No independent terminal bound for the new remainder R was obtained.  

4. Keeping force–nonlinearity covariance until the last estimate improves the  
   independent Appendix F barrier to  
       X <= nu y0 + (sqrt(G)+sqrt(B(X)))^2,  
       B(X)=(y0+X/nu)(L+X/nu^2)/(8pi).  
   If the right side is <x at any chosen datum-dependent x>0, continuity gives  
   X(T)<=x. This is a genuine terminal-action estimate under that explicit  
   condition. In the unforced case its quadratic coefficient is half the  
   coefficient in the factor-two estimate (903). It remains a conditional  
   datum-smallness branch and does not bound arbitrary large data.  

5. The helicity Schur constraint also gives  
       |P\_(1/2)|<=2 c\_\* h d\_+ d\_-,  
   where d\_+ and d\_- are the critical dissipations of the actual positive and  
   negative curl-sign sectors. A finite overlapping-sector action  
       M(T)=integral\_0^T min(d\_+^2,d\_-^2)  
   is sufficient for full D(T), with an explicit Gronwall bound below. Thus  
   this is another verified equivalent entry into the whole mixed system.  
   Its independent finiteness from unrestricted datum is not proved here.  

## I. FIX THE ACTUAL EQUATION AND ALL SIGNS

Let u be the actual H^infinity\_sigma solution on [0,T), with smooth prescribed  
force through the finite T. All identities first hold on [0,S], S<T. Put  
  A=-Delta=Lambda^2, v=u\_t, omega=curl u,  
  g=P f, n=P((u.grad)u), B0=(u.grad)u.  
Then  
  v+nu A u+n=g.                                             (1)  
All inner products below are real global L2 pairings, after any displayed  
Fourier multipliers. No terminal trace is assumed.  

Write e=||u||^2, y=||grad u||^2, z=||Au||^2, q=||v||^2.  
The exact kinetic identity is  
  e'/2+nu y=<g,u>.                                          (2)  
The standard vector identity is  
  (u.grad)u=grad(|u|^2/2)-u cross omega.  
Because both u and omega are solenoidal, it proves exactly  
  <n,u>=0,  <n,omega>=0.                                    (3)  
The second relation is a genuine additional property of the NS nonlinearity,  
not a consequence of PSD or of <n,u>=0 by itself. It gives the helicity law  
  (1/2) d/dt <u,omega> +nu<Au,omega>=<g,omega>.               (4)  
The dissipation pairing in (4) is signed; it is not a nonnegative energy.  

These are global cancellations. They do not assert local pressure flux is zero.  
For example the actual local kinetic equation is  
  partial\_t(|u|^2/2)+nu|grad u|^2  
   +div[(|u|^2/2+p)u-nu grad(|u|^2/2)] = f.u.  
The local helicity equation, with k=u.omega, is  
  partial\_t k  
   +div[u k+(p-|u|^2/2)omega-nu grad k+u cross f]  
    =-2nu sum\_j partial\_j u.partial\_j omega+2 f.omega.  
Spatial integration yields (2),(4), under the source regularity/decay; pressure  
has been integrated as an actual flux, not erased from a local identity.  

## II. FULL ROW SUBSTITUTION IS A GRAM CONGRUENCE

For every temporal row,  
  V\_(r+1)=nu Delta V\_r+F\_r-B\_r-grad Q\_r,  
  B\_r=sum\_(a=0)^r binom(r,a)(V\_a.grad)V\_(r-a).  
For mixed spatial rows the complete additional sum is  
  partial^alpha B\_r  
   =sum\_(a,beta) binom(r,a)binom(alpha,beta)  
       [(partial^beta V\_a).grad]partial^(alpha-beta)V\_(r-a).  

Fix any finite family of such primitive fields, all transformed into the SAME  
Hilbert space. Let G be their genuine Gram matrix. Let L be the coefficient  
matrix expressing the selected new momentum rows as linear combinations of  
those primitives. Then the enlarged Gram matrix is exactly  
       [ I ] G [ I  L\* ].                                   (5)  
       [ L ]  
Its new-row block is L G L\*. Every single cross and double cross is present.  
For the three pieces F,-B,-grad Q, the double-cross block has all nine terms.  
If G is invertible, its ordinary Schur complement is exactly zero. If G is  
singular, the same statement holds with the Moore–Penrose inverse because the  
cross block lies in its range. Thus PSD of this augmented matrix follows from  
G>=0. This describes only algebraic redundancy of this augmentation. It does  
NOT assert that the quadratic relation B=B(u,u) is redundant.  

The pressure block recombines exactly. Since  
  grad Q\_r=(I-P)(F\_r-B\_r),  
  F\_r-B\_r-grad Q\_r=P(F\_r-B\_r),  
one has at every admissible Fourier Sobolev height  
  ||P(F\_r-B\_r)||^2=||F\_r-B\_r||^2-||grad Q\_r||^2.              (6)  
On the projected side the complete covariance is  
  ||P F\_r-P B\_r||^2  
    =||P F\_r||^2+||P B\_r||^2-2<P F\_r,P B\_r>.                (7)  
Pressure therefore removes a gradient square, but does not remove the  
solenoidal nonlinear square or the force–nonlinearity cross term. Formula (6)  
is precisely the relation between source (411) and (412).  

## III. L2 SCHUR COMPLEMENT BEFORE ANY NONLINEAR NORM ESTIMATE

Set r=v-g. Equation (1) is r+nu Au=-n. Its pairings with u give  
  <r,u>=-nu y, <Au,u>=y.  
Put q\_g=||r||^2, c=<r,Au>=y'/2-<g,Au>, and N=||n||^2.  
For e>0, the Schur complement of the u-coordinate in the genuine Gram matrix  
of {u,Au,r} is  
  [ z-y^2/e                 c+nu y^2/e  ] >=0.             (8)  
  [ c+nu y^2/e              q\_g-nu^2 y^2/e ]  
In particular  
  (q\_g-nu^2 y^2/e)(z-y^2/e)>=(c+nu y^2/e)^2.              (9)  
The exact full nonlinear square is  
  N=q\_g+2nu c+nu^2 z.                                      (10)  
Substituting (10) into (9) gives the equivalent production constraint  
  |y'/2+nu z-<g,Au>|^2 <= N(z-y^2/e).                     (11)  
No absolute nonlinear estimate has been used in (8)–(11).  

Unforced, c=y'/2 and q\_g=q. Thus (9) is  
  (q-nu^2 y^2/e)(z-y^2/e)>=(y'/2+nu y^2/e)^2,  
and (10) is N=q+nu^2 z+nu y'. The quantity z-y^2/e is the squared  
component of Au perpendicular to u; replacing it by z loses a real favorable  
term. At u=0 the nonlinear term is zero and the assertions extend directly.  

The additional helicity orthogonality can be imposed in exactly the same  
space by replacing the single direction u by span{u,omega}. Its Gram block is  
  [[e, <u,omega>], [<u,omega>, y]],  
and its Au-pairing vector is [y,<Au,omega>]. The residual in (11) then becomes  
  z-b^T C^dagger b,  
which is no larger than z-y^2/e.  

## IV. COMPLETE CRITICAL SCHUR COMPLEMENT AND A REFINED ESTIMATE

Put  
  s=h^2=||Lambda^(1/2)u||^2,  
  d^2=||Lambda^(3/2)u||^2,  
  a=Lambda^(3/2)u,  
  r=Lambda^(-1/2)(v-g),  
  eta=Lambda^(-1/2)n,  
  chi\_0=Lambda^(1/2)u,  
  chi\_1=Lambda^(1/2)omega.  
Then r+nu a=-eta. Equations (3) become EXACT orthogonality in this single  
Hilbert space:  
  <eta,chi\_0>=<eta,chi\_1>=0.                                (12)  

Define the actual 2-by-2 Gram matrix C and pairing vector b by  
  C\_ij=<chi\_i,chi\_j>, b\_i=<a,chi\_i>.  
More explicitly,  
  C=[[s, ell],[ell,d^2]],  
  ell=<Lambda^(1/2)u,Lambda^(1/2)omega>,  
  b=[y,m], m=<Au,omega>.  
Let Pi be orthogonal projection onto span{chi\_0,chi\_1}. Put  
  B=b^T C^dagger b=||Pi a||^2,  
  R=d^2-B=||(I-Pi)a||^2.                                   (13)  
Then 0<=R<=d^2. Invertible C gives the explicit expression  
  B=(d^2 y^2-2ell y m+s m^2)/(s d^2-ell^2).  
The pseudoinverse definition covers degeneracy without division by zero.  

Set q=||r||^2, N=||eta||^2 and  
  W=<u,Lambda g>, c=<a,r>=s'/2-W.  
The exact Schur complement of C in the full Gram of {chi\_0,chi\_1,a,r} is  
  [[R, c+nu B],[c+nu B,q-nu^2 B]] >=0.                     (14)  
The full nonlinear square remains  
  N=q+2nu c+nu^2 d^2.                                      (15)  
Algebra, with no discarded cross term, gives the equivalent determinant form  
  N R >= (c+nu d^2)^2.                                     (16)  
Direct symbolic expansion verifies this equivalence.  

The signed critical production is  
  P=-<eta,a>=-<n,Lambda u>.  
The critical balance is s'/2+nu d^2=P+W, so c+nu d^2=P.  
Thus (16) is the exact coupled bound  
  |P|^2<=N R.                                              (17)  
There is an exact residual interpretation: when R>0,  
  N=P^2/R+Omega,  
  Omega=||eta+(P/R)(I-Pi)a||^2>=0,  
  q=nu^2 B+(nu sqrt(R)-P/sqrt(R))^2+Omega.                  (18)  
When R=0, (12) gives P=0 directly. These relations retain all components rather  
than replacing the nonlinear field by its norm prematurely.  

Now, and only now, apply the actual NS Sobolev estimate from the source:  
  ||eta||<=c\_\* h d, c\_\*=S(3)^3=1/(sqrt(2)pi).  
Equations (17)–(18) yield the concrete refined estimate  
  |P|^2<=c\_\*^2 s d^2 R.                                    (19)  
If only chi\_0 is retained, B=y^2/s, hence  
  |P|<=c\_\* d sqrt(s d^2-y^2).                              (20)  
The term under the radical is nonnegative by Fourier Cauchy–Schwarz.  
This improves |P|<=c\_\* h d^2 by the factor  
  sqrt(1-y^2/(s d^2)),  
and the helicity projection can only improve it further.  

One exact special case helps interpret the actual operator: if at an instant  
omega=Lambda u or omega=-Lambda u, then a=chi\_1 or a=-chi\_1.  
Consequently R=0 and P=0 at that instant. This assertion is about an actual  
Fourier/helicity condition, not about arbitrary scalar variables. Nothing here  
proves that condition is preserved by the full NS evolution.  

An additional exact structural estimate can retain pointwise velocity–vorticity  
alignment before Sobolev bounding:  
  ||eta||<=S(3)||u cross omega||\_(3/2)<=c\_\* h d.  
It may be combined with (17). No quantitative bound for the required alignment  
over the complete interval has been derived from the given datum.  

## V. WHAT THIS WOULD SUFFICE TO CLOSE, AND WHAT IT DOES NOT YET SUPPLY

For d>0 define Theta=h sqrt(R/d^2), and set Theta=0 when u=0.  
Then (19) gives |P|<=c\_\* Theta d^2. If, on the actual complete history,  
  c\_\* Theta(t)<=(1-epsilon)nu, epsilon>0,                   (21)  
then the forced balance gives the explicit bound  
  epsilon nu integral\_0^T d^2  
   <=s(0)/2+K integral\_0^T||Lambda g||,  
  K=||u0||+integral\_0^T||g||.                               (22)  
This would supply D(T), hence the previously verified complete mixed system  
and restart. It is strictly more geometrically selective than imposing the  
same smallness on h. But (21) is a whole-history condition, not a datum-only  
theorem obtained here.  

To expose the remaining temporal information without discarding it, whenever  
C is invertible the exact derivative of the new remainder is  
  R'=2<a,a'>-2 b'^T C^-1 b+b^T C^-1 C' C^-1 b,             (23)  
where  
  a'=Lambda^(3/2)v,  
  chi\_0'=Lambda^(1/2)v,  
  chi\_1'=Lambda^(1/2)curl v,  
  b\_i'=<a',chi\_i>+<a,chi\_i'>,  
  C\_ij'=<chi\_i',chi\_j>+<chi\_i,chi\_j'>.  
Substituting (1) into ALL these factors retains viscosity, force, and nonlinear  
terms, including the moving-projection terms. No sign or datum-only bound for  
their complete integral follows from (23) alone. This is a description of the  
calculation performed, not a no-go theorem against a further NS estimate.  

## VI. TEMPORAL DERIVATIVES: WHICH CANCELLATIONS REALLY PERSIST

Let n\_r=partial\_t^r n=P B\_r and V\_r=partial\_t^r u. Differentiating the two  
actual invariant cancellations gives, for every k,  
  sum\_(a=0)^k binom(k,a)<n\_a,V\_(k-a)>=0,                   (24)  
  sum\_(a=0)^k binom(k,a)<n\_a,curl V\_(k-a)>=0.              (25)  
These are coupled relations. They do NOT assert <n\_r,V\_r>=0.  
If T(a,b,c)=<((a.grad)b),c>, then div a=0 gives  
  T(a,b,c)=-T(a,c,b).  
Consequently  
  <B\_r,V\_r>  
    =T(V\_r,u,V\_r)  
      +sum\_(a=1)^(r-1) binom(r,a)T(V\_a,V\_(r-a),V\_r),       (26)  
with the undifferentiated advection term T(u,V\_r,V\_r)=0.  
For r=1, the entire remainder is T(v,u,v), generally signed.  

The temporal derivative of any actual Gram entry is  
  (d/dt)<V\_a,V\_b>=<V\_(a+1),V\_b>+<V\_a,V\_(b+1)>.  
After equation substitution,  
  (d/dt)<V\_a,V\_b>+2nu<grad V\_a,grad V\_b>  
    =<g\_a,V\_b>+<V\_a,g\_b>-<n\_a,V\_b>-<V\_a,n\_b>.              (27)  
Combining (24) or (25) with these equations reproduces the differentiated  
kinetic or helicity law. It does not create a separate positive bound for an  
individual higher row. Although a Gram matrix is PSD, its temporal derivative  
need not be PSD; no such extra positivity was used.  

For completeness, the critical-production derivative can be expanded at the  
ACTUAL nonlinear operator before contraction. Write N(u)=P((u.grad)u),  
  N'(u)w=P((w.grad)u+(u.grad)w), M=Lambda^(2sigma),  
  P\_sigma=-<N(u),M u>.  
Then, with n=N(u) and v=-nu Au-n+g,  
  P\_sigma'  
   =nu[<N'(u)Au,M u>+<n,M Au>]  
     +[<N'(u)n,M u>+||Lambda^sigma n||^2]  
     -[<N'(u)g,M u>+<n,M g>].                             (28)  
The last bracket has THREE actual source insertions because N'(u)g has two.  
The middle bracket retains a nonlinear square AND its cross term. At sigma=0  
the entire bracket vanishes by differentiating <N(u),u>=0 in direction n.  
At sigma=1/2 no corresponding cancellation has been established: M cannot  
simply be commuted through the nonlinear operator. Treating its square alone  
as positive would omit the first term in that same bracket.  

## VII. AN IMPROVED INDEPENDENT TERMINAL-ACTION BARRIER

This section keeps the signed force covariance through the exact identity,  
then estimates only after all Gram and pressure cancellations above.  

Let  
  X(S)=integral\_0^S (||u\_t||^2+nu^2||Au||^2),  
  y0=||grad u0||^2,  
  G=integral\_0^T||g||^2,  
  L=T K^2+K^2/nu.  
Equation (901), verified directly in the source, is  
  X(S)+nu y(S)=nu y0+integral\_0^S||g-n||^2.                (29)  
The integrand on the right is exactly ||g||^2+||n||^2-2<g,n>.  
Kinetic energy and the adjacent trace yield independently  
  sup\_(t<=S)y(t)<=y0+X(S)/nu,  
  integral\_0^S||u||\_(H^2)^2<=L+X(S)/nu^2.  
The source embedding ||u||\_infinity^2<=||u||\_(H^2)^2/(8pi)  
therefore gives  
  integral\_0^S||n||^2  
    <=B(X(S)),  
  B(x)=(y0+x/nu)(L+x/nu^2)/(8pi).                          (30)  
Keeping the covariance until the last step and applying Hilbert-space  
Cauchy–Schwarz in space–time gives  
  integral\_0^S||g-n||^2 <=(sqrt(G)+sqrt(B(X(S))))^2.  
Consequently  
  X(S)<=nu y0+(sqrt(G)+sqrt(B(X(S))))^2.                    (31)  
This is no worse than the factor-two bound (903), because  
  2G+2B-(sqrt(G)+sqrt(B))^2=(sqrt(G)-sqrt(B))^2>=0.  

If some chosen x\_bar>0 satisfies the explicit datum condition  
  nu y0+(sqrt(G)+sqrt(B(x\_bar)))^2 < x\_bar,                 (32)  
then X(S) can never equal x\_bar. It is continuous, starts at zero, and obeys  
(31), so X(S)<x\_bar for every S<T and X(T)<=x\_bar. This gives Q(T)<infinity  
and closes the already verified Q/D/rectangle/restart implications.  

In the unforced case G=0, define  
  a=1/(8pi nu^3),  
  b=(y0/nu^2+L/nu)/(8pi),  
  c=nu y0+y0 L/(8pi).  
Then (31) is aX^2+(b-1)X+c>=0. If b<1 and Delta=(1-b)^2-4ac>0,  
  X(T)<=r\_minus=(1-b-sqrt(Delta))/(2a).                    (33)  
These coefficients improve the prior factor-two unforced specialization.  

An explicit forced polynomial family is also available. For ANY chosen  
theta>0, apply  
  ||g-n||^2<=(1+theta)||g||^2+(1+theta^-1)||n||^2.  
Set  
  a\_theta=(1+theta^-1)/(8pi nu^3),  
  b\_theta=(1+theta^-1)(y0/nu^2+L/nu)/(8pi),  
  c\_theta=nu y0+(1+theta)G+(1+theta^-1)y0 L/(8pi).  
The same separated-root criterion applies to these three coefficients.  
theta=1 recovers the source's coarser barrier. Choosing theta from the data  
may improve it. The direct criterion (32) retains the sharp Cauchy–Schwarz  
envelope and does not require choosing theta first.  

## VIII. LOGICAL CONCLUSION

The full coupled treatment yields more than scalar absolute estimates: it  
retains the force covariance, two nonlinear invariant orthogonalities, and a  
nonnegative spectral/helicity projection remainder. The new estimate (19)  
is an actual quantitative improvement, and (32)–(33) give an improved  
independent datum-conditioned terminal-action bound.  

What has NOT been proved is a bound on the critical action for unrestricted  
data. The new remainder R and its derivatives are actual history quantities;  
their complete evolution has not been estimated independently through T.  
The exact temporal cancellations and Gram congruences do not themselves  
provide such a bound. This conclusion concerns the explicitly derived  
system, not every possible further estimate of the full NS equations and not  
any original producer not directly inspected for this calculation.  

## IX. A FURTHER EXACT CONSEQUENCE: BOTH HELICITY SECTORS MUST PARTICIPATE

On solenoidal fields define the self-adjoint involution J=Lambda^-1 curl and  
the orthogonal projections P\_+=(I+J)/2, P\_-=(I-J)/2. Values at zero frequency  
are immaterial in L2. These preserve real fields. Put  
  u\_+=P\_+u, u\_-=P\_-u,  
  d\_+^2=||Lambda^(3/2)u\_+||^2,  
  d\_-^2=||Lambda^(3/2)u\_-||^2.  
Then curl u\_+=Lambda u\_+, curl u\_-=-Lambda u\_-, and  
  d^2=d\_+^2+d\_-^2,  
  m=<Au,omega>=d\_+^2-d\_-^2.  
Projecting the viscous face a onto chi\_1 ALONE yields  
  R<=d^2-m^2/d^2=4d\_+^2 d\_-^2/(d\_+^2+d\_-^2).  
Equations (17),(19) therefore give  
  |P\_(1/2)|<=2||eta|| d\_+ d\_-/d  
              <=2 c\_\* h d\_+ d\_-.                          (34)  
This is an exact coupled-helicity improvement, not a model in which the two  
sectors evolve independently. In fact if P\_+^prod and P\_-^prod denote their  
separate signed critical productions, helicity cancellation gives  
  P\_+^prod=P\_-^prod=P\_(1/2)/2.  
All mixed nonlinear interactions are still included in eta=P B0 at the actual u.  

Let m\_min(t)^2=min(d\_+^2,d\_-^2), m\_max(t)^2=max(d\_+^2,d\_-^2), and  
  M(S)=integral\_0^S m\_min^2.  
From s'/2+nu d^2=P+W, (34), and Young,  
  s'+2nu(m\_max^2+m\_min^2)  
    <=4c\_\*sqrt(s)m\_max m\_min+2W  
    <=nu m\_max^2+(4c\_\*^2/nu)s m\_min^2+2W.  
Consequently  
  s'+nu d^2<=(4c\_\*^2/nu)m\_min^2 s+2K||Lambda g||.           (35)  
This is obtained AFTER the exact coupled Gram calculation; it does not omit  
the cross-helicity interactions.  

If M(T)<infinity, weighted Gronwall gives, for every S<T,  
  s(S)+nu integral\_0^S d^2  
   <=[s(0)+2K integral\_0^T||Lambda g||]  
        exp[4c\_\*^2 M(T)/nu]  
    =[s(0)+2K integral\_0^T||Lambda g||]  
        exp[2M(T)/(pi^2 nu)].                              (36)  
Thus D(T)<infinity follows without first assuming it. Conversely M(T)<=D(T)/2,  
so finiteness of M and D is equivalent under the stated actual NS hypotheses.  
The same holds with either one fixed-sector action integral d\_+^2 or  
integral d\_-^2: each implies M finite, while D finite implies both finite.  

Therefore a finite-time breakdown in the stipulated strict-classical setting  
would require M(T)=infinity, not just one helicity sector having infinite  
critical dissipation. This is a necessary condition obtained from the original  
operator. It is NOT a claim that such divergence occurs, and NOT a datum-only  
bound preventing it. This calculation makes no claim of priority over existing  
helicity-based regularity criteria.  
