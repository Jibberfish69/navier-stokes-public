# Composed Navier–Stokes closure calculation

**Companion C01 — reviewed scope.** Supplementary Q/D/mixed-coordinate equivalence and conditional barrier composition.

This supplementary calculation is dated 6 October 2026. Its “strongest independent closure explicitly recovered here” refers to the complete-square and critical-height identities followed by the particular scalar estimates calculated in this note. The quadratic-root and critical-smallness branches retain their stated hypotheses. Later full-cross, signed joint-storage and geometric Gram analyses provide further conditional routes. The bound assessment concerns these displayed inequalities; the original datum-generated whole-terminal producer is a separate construction.

Whole-interval temporal action is an antecedent of its Q/D and mixed-coordinate equivalences. A single genuine temporal coordinate may suffice; no uniform constant over all derivative orders is required. The separate supremum-plus-integral estimate retains its stated factor two.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.

6 October 2026. A supplementary mathematical reconstruction on the actual strict classical history.  

## Source basis and status

The source basis is the [combined-paper core guide](../learning/core.md), its separately labeled supplementary reciprocal-route derivations, the [quantitative guide](../learning/quantitative.md) §§1–6, the [appendix guide](../learning/appendix-geometry.md) E–G, and the corresponding public-v1 paper: [DOI 10.6084/m9.figshare.34005666.v1](https://doi.org/10.6084/m9.figshare.34005666.v1), exact [PDF file 69392430](https://ndownloader.figshare.com/files/69392430). Public-v1 references below are equation numbers and printed/PDF pages.  

Original-source statements inherited through the core guide's supplement are secondary attributions; this calculation does not claim a fresh direct inspection of the underlying source records. The critical-action equivalence and one-mixed-coordinate composition are supplementary derivations. The Q/R\_(0,1) continuation and Appendix F barrier are existing components recomposed here. Conditional results and limits of these particular inequalities do not change the original paper's stated conclusions.  

## 1. FIX THE ACTUAL HISTORY AND THE INTERVAL

Let u be the one actual strict-classical solution on [0,T), with T finite, u(0)=a in H^infinity\_sigma, nu>0, and the prescribed f smooth through T in the stated Schwartz class. Put g=P f. All calculations first hold on [0,S], S<T; no terminal trace is assumed. Write  

K=||a||\_2+integral\_0^T ||g||\_2,  
G=integral\_0^T ||g||\_2^2,  
y=||grad u||\_2^2, z=||Delta u||\_2^2,  
d=||Lambda^(3/2)u||\_2,  
Q(S)=integral\_0^S ||u\_t||\_2^2,  
D(S)=integral\_0^S d^2.  

Kinetic energy supplies, independently,  
  sup\_(t<T)||u(t)||\_2 <= K,  
  integral\_0^T y <= K^2/(2nu).  
It does not presuppose Q(T), D(T), or a nontrivial terminal rectangle.  

## 2. THE FIRST TEMPORAL ACTION REALLY DOES PRODUCE THE ENTIRE SYSTEM

The actual kinetic pairing of u\_t+P((u.grad)u)-nu Delta u=g gives  
  nu y=<u,g>-<u,u\_t>.  
Hence, if Q(T)<infinity,  
  J:=integral\_0^T y^2 <= 2 K^2 nu^(-2) [G+Q(T)].                 (A)  

Use the complete forced enstrophy inequality from (501)–(504), retaining transport:  
  y'+(nu/2)z <= c\_1 nu^(-3)y^3+2nu^(-1)||g||\_2^2,  
  c\_1=27 S(6)^6/16.  
Since y^3=y^2 y and (A) makes the coefficient y^2 integrable, Gronwall gives  
  Y:=sup\_(t<T)y(t)  
    <= B exp(c\_1 nu^(-3)J),   B=y(0)+2G/nu.                    (B)  
Integration then gives the explicit bound  
  Z:=integral\_0^T z  
    <= (2/nu)[ B+c\_1 nu^(-3)Y J ].                            (C)  
Thus Q finite gives a uniform H^1 bound and finite L^2 H^2 without assuming them. In particular  
  integral ||u||\_(H^2)^2 <= TK^2+K^2/nu+Z.  
Also Fourier interpolation gives d^2<=sqrt(y z), so  
  D(T) <= sqrt(integral y) sqrt(integral z)  
       <= K sqrt(Z/(2nu)) < infinity.                        (D)  

This is a genuine nonlinear implication on the whole fixed interval. No second temporal row and no infinite time-only tower are necessary for it.  

## 3. ONE CRITICAL SPATIAL ACTION GIVES THE REVERSE IMPLICATION AND ALL ORDERS

Let C=S(6)S(3)=sqrt(2/3)/pi. The exact product estimate is  
  ||(u.grad)u||\_2 <= ||u||\_6 ||grad u||\_3  
                   <= C sqrt(y) d.  
Pairing the momentum equation with -Delta u and retaining g gives  
  y'+nu z <= (2C^2/nu)d^2 y+(2/nu)||g||\_2^2.                 (E)  
Consequently D(T)<infinity implies  
  Y <= B exp[4D(T)/(3pi^2 nu)],  
  integral z < infinity.  
The equation and the same product bound then give  
  Q(T) <= 3nu^2 integral z+3C^2 Y D(T)+3G < infinity.          (F)  
So Q(T)<infinity if and only if D(T)<infinity, under the already available kinetic control.  

There is also a direct source-bound all-order propagation. Public-v1 Lemma 8.2, and its forced counterpart, establish on strict intervals  
  |<Lambda^m P((u.grad)u),Lambda^m u>|  
    <= K\_m^hom d ||Lambda^m u||\_2 ||Lambda^(m+1)u||\_2,  
for each integer m>=1. This is the full differentiated transport estimate: its derivation retains every Leibniz term, cancelling only the undifferentiated divergence-free advection. Shift one derivative in the force pairing and use Young. With w\_m=||Lambda^m u||\_2^2 and r\_m=||Lambda^(m-1)g||\_2,  
  w\_m'+nu||Lambda^(m+1)u||\_2^2  
    <= (2(K\_m^hom)^2/nu)d^2 w\_m+(2/nu)r\_m^2.  
Therefore, for every fixed finite m,  
  w\_m(S)+nu integral\_0^S ||Lambda^(m+1)u||\_2^2  
    <= [w\_m(0)+(2/nu)integral\_0^T r\_m^2]  
         exp[2(K\_m^hom)^2 D(T)/nu].                           (G)  
For precision, set A\_m(t)=(2(K\_m^hom)^2/nu)integral\_0^t d^2 and b\_m=(2/nu)r\_m^2. Multiplying the differential inequality by exp(-A\_m) and integrating gives  
  exp(-A\_m(S))w\_m(S)+nu integral\_0^S exp(-A\_m(t))diss\_m(t)  
       <=w\_m(0)+integral\_0^S exp(-A\_m(t))b\_m(t).  
After multiplying by exp(A\_m(S)), the weight on diss\_m is at least one, which proves (G) at each fixed S. Consequently sup\_(S<T)w\_m(S) and nu integral\_0^T diss\_m are EACH bounded by the right-hand side of (G). Their sum, with the supremum and the full-time integral taken separately, is safely bounded by twice that right-hand side; (G) does not assert the sharper separate-supremum sum bound. All quantities on the right are finite once the single number D(T) is finite. The low frequencies come from K. Constants may grow with m; no common infinite-order constant is required.  

The actual recurrence now supplies every temporal row:  
  V\_(n+1)=nu Delta V\_n-P B\_n+P F\_n,  
  B\_n=sum\_(a=0)^n binom(n,a)(V\_a.grad)V\_(n-a).  
Given all spatial bounds (G), induction supplies sup ||V\_n||\_(H^m) at each fixed n,m. The pressure is recovered from the same full B\_n and F\_n, including the force potential. The equation first gives u\_t in L^infinity H^m, hence u in W^(1,infinity) H^m and one compatible endpoint; repeated recurrence gives continuous endpoint jets. All finite mixed Sobolev norms and all rectangle norms then follow by multiplying the finitely many sup bounds by T.  

For an explicit final finite rectangle, call the right-hand side of (G) C\_m, set A\_(0,0)=K and A\_(0,m)=[2^(m-1)(K^2+C\_m)]^(1/2) for m>=1, and recurse with the source product constants:  
  A\_(n+1,m)=nu A\_(n,m+2)  
       +A\_(m+1)^alg sum\_(a=0)^n binom(n,a)A\_(a,m+2)A\_(n-a,m+2)  
       +sup\_(t<=T)||P F\_n(t)||\_(H^m).  
Then the actual completed rectangle satisfies  
  R\_(N,M)(T)<=T sum\_(n=0)^N [A\_(n,M+1)^2  
                                +A\_(n+1,max(M-1,0))^2].  
The replacement of H^(-1) by H^0 when M=0 is a safe stronger bound. Each requested finite rectangle uses finitely many datum/force norms and the one scalar D(T). The pressure coordinate is bounded by the same finite binomial products plus its prescribed force-potential norm.  

This proves the endpoint without positing it. Local existence from the resulting H^infinity datum at T, with the original force at its absolute time, and overlap uniqueness continue this same history. The complete recurrence matches the pressure/velocity jets. Conversely, smooth continuation past T immediately implies Q(T), D(T), and every finite rectangle are finite.  

## 4. COMPOSING THE ORIGINAL ANTIDERIVATIVE/COFINAL ROUTE IS STRONGER THAN AN INFINITE EXHAUSTION

Suppose one actual row V\_q has  
  c=integral\_0^T E\_(q,s)<infinity,   s>=3/2,  
with the actual initial jets; q can be any nonnegative integer. For q>=1, the antiderivative identity in the supplementary intersection and cofinal routes is  
  u(t)=sum\_(j=0)^(q-1) t^j V\_j(0)/j!  
       + integral\_0^t (t-r)^(q-1)V\_q(r)dr/(q-1)!.  
Apply Lambda^(3/2) P\_(|xi|>1). The multiplier is dominated by Lambda^s on high frequencies, and the convolution kernel has L^1(0,T) norm T^q/q!. Therefore  
  ||Lambda^(3/2)P\_>u||\_(L^2\_tL^2\_x)  
    <= L\_q  
    :=sum\_(j=0)^(q-1) T^(j+1/2)||Lambda^(3/2)P\_>V\_j(0)||\_2  
                         /[j!sqrt(2j+1)]  
       +(T^q/q!)sqrt(2c).  
The kinetic bound handles low frequencies. Thus  
  D(T)<=TK^2+L\_q^2.                                          (H)  
For q=0 the same conclusion is immediate, with L\_0=sqrt(2c).  

Every initial norm in (H) is finite by the actual datum/force jet recurrence. Combining (H) with (E)–(G) obtains all mixed rows and restart from this one mixed coordinate. In particular, a cofinal family k\_j->infinity with finite integrals E\_(q\_j,k\_j+1/2) is more than is needed: select one member with k\_j>=1. There is no diagonal limit, no summation over j, and no required uniform bound in j.  

Likewise, the completed height R\_1=E\_(0,3/2) is already enough: D(T)=2||R\_1||\_1. The all-height spatial exhaustion is correct but unnecessary for continuation once this finite member is available.  

## 5. THE TIME-ONLY TOWER AND RECTANGLES LAND IN THE SAME SINGLE-ENTRY CLASS

The supplementary time-only reconstruction (native manuscript §7, R1–R10) gives the finite triangular conversion  
  H^(N+1)(I;L^2) -> V\_j in C H^(2(N-j)), j<=N,  
using the nonlinear elliptic equation. Its trace numbers are  
  b\_j=T^(-1/2)||V\_j||\_(L^2L^2)+T^(1/2)||V\_(j+1)||\_(L^2L^2).  
The original nonlinear estimate and two-pass induction are consistent with the preceding calculation. But composition with the action route strengthens what is needed: H^1(I;L^2) alone includes Q(T), so it already yields all spatial/mixed rows for this actual NS history.  

For the source rectangle  
  R\_(N,M)=sum\_(n=0)^N [||V\_n||\_(L^2H^(M+1))^2  
                          +||V\_(n+1)||\_(L^2H^(M-1))^2],  
any one finite R\_(N,M) with N+M>=1 contains Q(T): if M>=1 use the lower n=0 term; if N>=1 use the upper n=1 term. R\_(0,0) is excluded because its lower row is only L^2 H^(-1).  

The quantifier-level composed conclusion is therefore:  

For this actual history on this same finite I, each of the following is equivalent: Q(T)<infinity; D(T)<infinity; one finite rectangle with N+M>=1; all finite rectangles; the full mixed intersection; smooth terminal extension and restart. An actual finite mixed height of spatial order at least 3/2, with its actual initial jet, is another equivalent entry. The full time-only tower and cofinal height tower are stronger presentations of this same entry, not additional estimates needed after it.  

## 6. NOW TRY TO PRODUCE THAT ENTRY FROM THE DATUM: KEEP THE FULL GRAM SQUARE

Let the full row be V\_(n+1)=nu Delta V\_n+F\_n-B\_n-grad Q\_n. Set T\_n=(F\_n,-B\_n,-grad Q\_n). In any global Fourier Sobolev inner product C\_s, substitution into BOTH factors gives exactly  
  C\_s(V\_(a+1),V\_(b+1))  
    =nu^2 C\_s(Delta V\_a,Delta V\_b)  
      +nu sum\_i C\_s(Delta V\_a,T\_(b,i))  
      +nu sum\_i C\_s(T\_(a,i),Delta V\_b)  
      +sum\_(i,j=1)^3 C\_s(T\_(a,i),T\_(b,j)).                    (I)  
The last block has all nine force/nonlinearity/pressure combinations. Spatially differentiated faces have the further full multiindex sum  
  B\_(n,alpha)=sum\_(a,beta) binom(n,a)binom(alpha,beta)  
                  [(partial^beta V\_a).grad]partial^(alpha-beta)V\_(n-a).  
Thus no nonlinear allocation disappears when the graph is enlarged.  

For the diagonal n=0 row, the nine terms recombine using  
  grad p=(I-P)(f-B\_0),  
  f-B\_0-grad p=P(f-B\_0)=g-PB\_0.  
The Gram positive-semidefinite structure justifies inner-product inequalities but does not delete PB\_0. In particular, the exact integrated identity is  
  X(S)+nu y(S)=nu y(0)+integral\_0^S ||g-PB\_0||\_2^2,  
  X(S)=Q(S)+nu^2 integral\_0^S z.                             (J)  
This is public-v1 (901), pp.209–210. At higher rows it is (411)–(413), with the entire B\_n. Adding the complementary pressure square gives ||F\_n-B\_n||^2 on the right, not a datum-only right-hand side. Local pressure flux is not being set to zero: (I)–(J) use global solenoidal orthogonality.  

For comparison with the new D/mixed-coordinate reduction, the already-known scalar closure obtained from the independent estimates in Appendix F is as follows. Define  
  L=TK^2+K^2/nu,   G\_0=y(0).  
From kinetic energy and (J)'s adjacent trace estimate,  
  sup\_(t<=S)y(t)<=G\_0+X(S)/nu,  
  integral\_0^S ||u||\_(H^2)^2<=L+X(S)/nu^2.  
The source's exact embedding constant is ||u||\_infinity^2<=||u||\_(H^2)^2/(8pi). Retaining the entire transport term yields  
  X <= nu G\_0+2G +(G\_0+X/nu)(L+X/nu^2)/(4pi).                (K)  
Equivalently,  
  aX^2+(b-1)X+c>=0,  
  a=1/(4pi nu^3),  
  b=(G\_0/nu^2+L/nu)/(4pi),  
  c=nu G\_0+2G+G\_0 L/(4pi).  

This previously established barrier DOES produce an independent terminal budget when  
  b<1 and Delta=(1-b)^2-4ac>0.  
Since X is continuous, X(0)=0, and the open interval between the two nonnegative roots is forbidden,  
  X(S)<=r\_-=[1-b-sqrt(Delta)]/(2a) for every S<T.              (L)  
Monotone convergence then gives Q(T)<=r\_-, and Sections 2–5 complete every rectangle, the intersection, the endpoint and restart. This is a fully closed, datum/force-dependent composed theorem. It requires no global producer claim.  

For unrestricted data, (K) does not give this conclusion. If b>=1 its left polynomial is nonnegative for every X>=0; if b<1 but Delta<=0 it is again nonnegative for every X. There is no forbidden interval and continuity from zero yields no upper bound. The specific additional inference this composition would require is an upper bound X<=a finite datum constant; (K), an upward-quadratic constraint allowing arbitrarily large action, does not itself justify that inference. This identifies a limitation of the derived inequality, not a claim that the author explicitly makes this unsupported inference. The tested full Gram expansion, followed by these source estimates, leaves the positive quadratic term; merely recording Gram positivity supplies no missing negative sign. This is an assessment of this explicit composition, not a no-go theorem about every possible further use of the complete Gram system.  

## 7. THE HEIGHT BALANCE MAKES THE SAME UNRESTRICTED OBSTRUCTION VISIBLE

Write H=(1/2)||Lambda^(1/2)u||\_2^2 and h=||Lambda^(1/2)u||\_2. The full balance is  
  H'+nu d^2=P\_(1/2)+W\_(1/2),  
  |W\_(1/2)|=|<u,Lambda g>|<=K||Lambda g||\_2,  
  |P\_(1/2)|<=c\_\* h d^2,   c\_\*=1/(sqrt(2)pi).  
Hence direct source work is independently integrable, but unrestricted nonlinear production is not removed. The datum-only kinetic estimate gives  
  integral h^4<=K^4/(2nu),  
which does not supply an absorptive pointwise upper bound h<nu/c\_\* for the coefficient multiplying d^2.  

The first completed height is exactly  
  R\_1=[H'-P\_(1/2)-W\_(1/2)]/(-2nu)=d^2/2.  
Its integral is  
  2nu integral\_0^S R\_1  
    =H(0)-H(S)+integral\_0^S[P\_(1/2)+W\_(1/2)].  
Thus the completion retains the very signed production whose integral must be controlled. At second order,  
  H''=4nu^2 E\_(5/2)-2nu(P\_(3/2)+W\_(3/2))  
                          +partial\_t(P\_(1/2)+W\_(1/2)).  
The analogous formula at every k retains all derivatives of production/work. Higher initial jets fix their initial values, but integrating these identities still leaves actual endpoint derivative terms and actual nonlinear integrals. The Gram contractions of H^(k) are not positive diagonal row energies:  
  H^(k)=(1/2)sum\_(a=0)^k binom(k,a)  
                  Re<Lambda^(1/2)V\_a,Lambda^(1/2)V\_(k-a)>.  

There is a second genuinely closed branch. The exact critical square gives, unforced,  
  nu partial\_t h^2+nu^2 d^2+||u\_t||\_(dot H^(-1/2))^2  
      =||PB\_0||\_(dot H^(-1/2))^2<=c\_\*^2 h^2 d^2.  
For h(0)<sqrt(2)pi nu, first exit preserves h<=h(0), and  
  integral\_0^T d^2<=nu h(0)^2/[nu^2-c\_\*^2 h(0)^2].  
This supplies D(T) independently and closes the entire composed route. At arbitrary datum size, this displayed inequality loses its absorptive coefficient. Smoothness and finiteness of every initial jet do not restore it.  

## Conclusion

The recovered reciprocal maps are substantive and compose successfully. In fact they reduce the whole construction to one actual whole-interval entry: Q(T), D(T), one nontrivial rectangle, or one sufficiently high mixed height. The endpoint and restart then follow by explicit nonlinear estimates, with no infinite-order uniform bound and no loss of force/pressure terms.  

When the same equations are used to generate that entry from the initial datum and kinetic budget, the strongest independent closure explicitly recovered here is the quadratic root barrier (K)–(L), or the critical-smallness branch. Without their condition the exact resulting inequality allows every large action. Thus this explicit composition does not by itself establish the unrestricted datum-to-entry implication. This is a limitation of the inequalities computed here, without attributing an absent proof step to the author; it is not a claim that equivalent classes are empty or that the antiderivative, elliptic, Gram, or completed-height identities are false. Whether a separate original producer supplies the missing unrestricted entry is a distinct question for direct inspection of that producer.  
