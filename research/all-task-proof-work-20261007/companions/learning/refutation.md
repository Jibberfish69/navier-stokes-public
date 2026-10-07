# Part III guide to the forced comparison and candidate calculations

**Companion C07 — reviewed scope.** Part III candidate comparison, localization, terminal extension and explicit theorem dependencies.

Explicit heat/exterior cancellation, positive annular and fractional lower bounds, the material trajectory, complete curl/cutoff residual and Borel extension retain their actual inputs. The whole-interval regular comparison is imported from Part II Theorem 15.8. Full source admission also imports the candidate’s all-orders interior residual estimates (9.18)/(9.20) and Theorem 3.1 before localization and terminal extension. The same prescribed force and datum give strict-interval uniqueness; no candidate terminal norm is inserted.

Exterior growth alone does not certify either imported premise or unconditional exclusion. The recorded source comparison is historical and confined to specified formulas in its 166-page candidate version. The original guide’s LF684 “no mismatch” is not a fresh primary candidate verification by this edition. The public combined guide version is 229 pages, DOI 34005666.v1; its attributed 8095b332… PDF identity is not equated to the distinct local 9f8c7708… build. Failure of smaller sufficient source classes neither replaces nor proves the unrestricted Part II theorem. Pressure, viscosity, forcing, incompressibility and local cancellations remain complete.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.


## Scope and provenance

This guide covers Thomas Birnie’s combined unforced/forced/refutation paper, Part III, printed pages 155–182, equations (668)–(763), and candidate-focused Appendices K–M, pages 222–227, equations (956)–(968). Appendix C, pages 190–195, supplies the precise source primitives invoked in Section 25.3. The public source is the 229-page version 1, DOI 10.6084/m9.figshare.34005666.v1, SHA-256 8095b332b81c7ed17926f6dc9d91035047d147f5d0785f441136d54184231a0f. Public PDF: https://ndownloader.figshare.com/files/69392430 .  

The referenced OpenAI candidate paper is https://cdn.openai.com/pdf/32d9f210-8b73-45e0-91bc-82a30aef8a9a/navier-stokes.pdf . It has 166 pages. The source comparison covers Theorem 1.1, Theorem 3.1, Lemma 5.1, Proposition 9.9 and (9.20)–(9.21), Section 10 through the force extension, Lemma A.6 and the heat-tail attachment, and the axis datum in Appendix B. This guide reconstructs Birnie’s use of that paper; it does not verify every upstream oscillatory construction in the candidate paper.  

The main logical distinction is essential. Birnie's exterior calculations and the complete localization algebra can be checked on the displayed candidate independently of Part II. The statement that a smooth prescribed force produces a globally regular comparison solution is imported from his Part II Theorem 15.8. The candidate-specific lower bounds alone do not prove that globally regular comparison theorem. Conversely, Part III does not claim that zero exterior force, finite kinetic energy, or volume preservation alone prevents its calculated growth.  

## Notation and conventions

P is the Leray projection; Q=I-P; Λ=(-Δ)^(1/2). Fourier transforms are unitary. H^s is the inhomogeneous whole-space Sobolev space and dot H^s is homogeneous. All fields below are on R^3, with no material boundary. ν&gt;0. Write V\_n=∂\_t^n u, F\_n=∂\_t^n f, Q\_n=∂\_t^n p. The pressure variable Q\_n is distinct from the gradient projection Q. The precise numerical constants used below are  

c\_inf = 1/sqrt(8π),  
C\_3 = 2^(-1/6) π^(-1/3),  
c\_\* = C\_3^3 = 1/(sqrt(2) π).  

In particular c\_\* is not 1/sqrt(2π). In the exterior, A=1/2+h and D=1/2-h are exponents, not vector potentials, and b=2^A κ, not 2Aκ. These are the powers in the cited PDF.  

## 1. What is assumed and what the comparison requires

The forced system is  

u\_t+(u·∇)u+∇p-νΔu=f,    div u=0,    u(0)=u\_0.                 (668)  

The general datum/source class in Part III is u\_0 in H^∞\_σ=intersection\_m H^m\_σ and f in C^∞([0,∞); S(R^3;R^3)). In a finite-horizon argument, this means every fixed mixed derivative has a uniformly finite, rapidly decreasing spatial profile through the horizon. Smooth compact support in space-time satisfies the class.  

Part II Theorem 15.8 is the theorem being applied, not re-proved in Part III. Corollary 20.1 extracts from it, for every finite T,  

U in I\_T := intersection\_{r,m&gt;=0} H^r(0,T;H^m(R^3)).        (671)  

Its pressure and all differentiated momentum rows are the ones belonging to that same forced history. There is no bound uniform in all derivative orders. Each fixed finite rectangle is finite separately.  

For a candidate classical on [0,T), ordinary strict-interval regularity only gives those norms on [0,S] for S&lt;T. It does not itself give I\_T. The purpose of the global comparison is to identify the candidate with U on every strict interval and thereby transfer whole-interval bounds. No endpoint regularity of the candidate may be inserted before that comparison.  

## 2. Exact forced jets and exposed spatial heights

Set  

B\_n = sum\_{a=0}^n binom(n,a) (V\_a·∇)V\_{n-a}.  

Temporal and spatial differentiation of the equation gives  

V\_{n+1}+B\_n+∇Q\_n-νΔV\_n=F\_n,                                (674)  
∂\_x^α B\_n = sum\_{a=0}^n sum\_{β&lt;=α} binom(n,a)binom(α,β)  
              ((∂\_x^β V\_a)·∇)∂\_x^{α-β}V\_{n-a}.            (675)  

All force coordinates remain prescribed derivatives of f. Projection reconstructs pressure:  

-ΔQ\_n=div B\_n-div F\_n,  
∇Q\_n=Q(F\_n-B\_n),  
V\_{n+1}=νΔV\_n-PB\_n+PF\_n.                                  (676)  

The initial jet is generated, not freely chosen:  

a\_0=u\_0,  
a\_{n+1}=νΔa\_n-P sum\_{b=0}^n binom(n,b)(a\_b·∇)a\_{n-b}+PF\_n(0).  

For E\_{r,s}=1/2||Λ^s V\_r||\_2^2, P\_{r,s}=-Re&lt;Λ^s V\_r,Λ^s B\_r&gt;, and W\_{r,s}=Re&lt;Λ^s V\_r,Λ^s F\_r&gt;, the exact row balance is  

∂\_t E\_{r,s}=-2ν E\_{r,s+1}+P\_{r,s}+W\_{r,s}.                 (679)  

The pressure pairing vanishes by incompressibility. Iteration yields  

∂\_t^k E\_{r,s}=(-2ν)^k E\_{r,s+k}  
 +sum\_{j=0}^{k-1}(-2ν)^j ∂\_t^{k-1-j}(P\_{r,s+j}+W\_{r,s+j}). (680)  

This differentiates a scalar energy. It is not the assertion ∂\_t^k E\_{r,s}=E\_{r+k,s}. For example ∂\_t^2 E\_{r,s}=||Λ^s V\_{r+1}||\_2^2+Re&lt;Λ^s V\_r,Λ^s V\_{r+2}&gt;.  

At the critical starting height H\_r=E\_{r,1/2}, the completed coordinate is exactly  

C^f\_{r,k} = (∂\_t^k H\_r)/(-2ν)^k  
 -sum\_{j=0}^{k-1}(-2ν)^(j-k) ∂\_t^{k-1-j}(P\_{r,j+1/2}+W\_{r,j+1/2})  
 =E\_{r,k+1/2}.                                            (683)  

All differentiated work and nonlinear terms stay present:  

∂\_t^ell W\_{r,s}=sum\_{b=0}^ell binom(ell,b)  
                 Re&lt;Λ^s V\_{r+b},Λ^s F\_{r+ell-b}&gt;,  
∂\_t^ell P\_{r,s}=-sum\_{a=0}^r binom(r,a)  
 sum\_{b+c+d=ell} ell!/(b!c!d!)  
 Re&lt;Λ^s V\_{r+b},Λ^s((V\_{a+c}·∇)V\_{r-a+d})&gt;.  

Thus an algebraic completion does not remove nonlinear response or force dependence from the velocity history.  

## 3. Which source terms can be bounded without a higher velocity rectangle

The kinetic balance gives ||u(t)||\_2&lt;=K\_T, with  

K\_T=||u\_0||\_2+integral\_0^T ||f(t)||\_2 dt.  

For the base temporal row let h\_s=Λ^(2s)Pf and W\_s=&lt;u,h\_s&gt;. Spatial self-adjointness transfers the derivatives to the prescribed field. Since h\_s is solenoidal,  

W\_s'=&lt;u,(∂\_t+νΔ)h\_s&gt;+integral u\_i u\_j (Sym ∇h\_s)\_{ij} dx+&lt;f,h\_s&gt;.  (838)  

The signs come from integration by parts in transport and viscosity. In particular  

||W\_s||\_∞&lt;=B\_s:=K\_T||h\_s||\_{L∞\_t L2\_x},  
||W\_s'||\_∞&lt;=L\_s:=K\_T||(∂\_t+νΔ)h\_s||\_{L∞ L2}  
 +K\_T^2||Sym ∇h\_s||\_{L∞,op}+||f||\_{L∞ L2}||h\_s||\_{L∞ L2}.    (839)  

These are finite for each s; the Leray projection need not preserve Schwartz decay because the displayed Sobolev norms suffice.  

The first two older completion formulas, still evaluated on this forced u, are  

hat C\_1[u]=-(H'-P\_{1/2})/(2ν)=E\_{0,3/2}-W\_{1/2}/(2ν),  
hat C\_2[u]=(H''-∂\_t P\_{1/2}+2νP\_{3/2})/(4ν^2)  
          =E\_{0,5/2}+(W\_{1/2}'-2νW\_{3/2})/(4ν^2).          (684)-(685)  

Consequently |C^f\_{0,j}-hat C\_j[u]|&lt;=δ\_j for j=1,2, with  
δ\_1=B\_{1/2}/(2ν), δ\_2=L\_{1/2}/(4ν^2)+B\_{3/2}/(2ν).  
The exact L^p membership is unchanged by this bounded additive correction on a finite interval. This does not assert that u is an unforced solution.  

## 4. Finite rectangles really yield the stated uniform estimates

The velocity rectangle is  

R\_{N,M}=sum\_{n=0}^N (||V\_n||\_{L2\_t H^{M+1}}^2  
                           +||V\_{n+1}||\_{L2\_t H^{M-1}}^2). (688)  

H^{-1} is used when M=0. For v in L2 H^{m+1} with v\_t in L2 H^{m-1},  

d/dt ||v||\_{H^m}^2=2 Re&lt;(1-Δ)^((m+1)/2)v,(1-Δ)^((m-1)/2)v\_t&gt;.  

Fourier truncation and time smoothing justify the identity in these spaces. Applying its integrated estimate to differences of truncations yields a C([0,T];H^m) representative. Starting from a time with norm no larger than the time average gives  

sup\_t ||v(t)||\_{H^m}^2&lt;=T^-1||v||\_{L2 H^m}^2  
                  +2||v||\_{L2 H^{m+1}}||v\_t||\_{L2 H^{m-1}}. (689)  

Thus A\_{n,m}:=[(1+T^-1)R\_{n,m}]^(1/2) bounds sup\_t||V\_n||\_{H^m}.  

For R=R\_{0,1} and D\_0=||u\_0||\_{H^1}^2, integration from time zero gives  

sup\_t||u||\_{H^1}^2&lt;=D\_0+R,   ||u||\_{L2 H^2}^2&lt;=R,  
sup\_t||u||\_{dot H^{1/2}}&lt;=sqrt(D\_0+R),  
integral\_0^T||u||\_{dot H^{3/2}}^2 dt&lt;=R.                   (692)  

The sharp embedding ||v||\_3&lt;=C\_3||Λ^(1/2)v||\_2 works for Euclidean vectors/tensors via the positive fractional integration kernel. Hölder on Λu, u, ∇u yields  

|P\_{1/2}|&lt;=c\_\*||u||\_{dot H^{1/2}}||u||\_{dot H^{3/2}}^2,  
integral\_0^T |P\_{1/2}| dt&lt;=sqrt(D\_0+R) R/(sqrt(2)π).        (693)  

For forcing,  
integral |W\_{1/2}|&lt;=||f||\_{L2 dot H^{-1/2}} sqrt(R).  
The negative homogeneous source norm is finite, including zero frequency, because  
||Λ^(-1/2)f||\_2^2&lt;=||f||\_1^2/(4π^2)+||f||\_2^2.  
Therefore the full critical balance gives  

E\_{1/2}(t)+2ν integral\_0^t E\_{3/2}  
 &lt;= E\_{1/2}(0)+sqrt(D\_0+R)R/(sqrt(2)π)+||f||\_{L2 dot H^{-1/2}}sqrt(R). (695)  

Here R was already supplied by whole-interval membership. This display is not a closure estimate producing R from itself, and it requires no absorption/smallness once R is known.  

At R\_{0,2}, the same trace calculation gives  
sup\_t ||u(t)||\_{H^2}^2&lt;=||u\_0||\_{H^2}^2+R\_{0,2}.  
Fourier inversion uses integral\_R3(1+|ξ|^2)^(-2)dξ=π^2 and gives  
||∂^α v||\_∞&lt;=c\_inf||v||\_{H^{|α|+2}}.  
Hence  
sup\_t ||u(t)||\_∞^2&lt;=(||u\_0||\_{H^2}^2+R\_{0,2})/(8π).        (698)  

## 5. Every momentum term, and the material projection identity

A Fourier convolution product bound is  

||a⊗b||\_{H^s}&lt;=2^(s-1)c\_inf(||a||\_{H^s}||b||\_{H^2}+||a||\_{H^2}||b||\_{H^s}), s&gt;=1.  

For div a=0 this gives  
||(a·∇)b||\_{H^m}&lt;=C\_m||a||\_{H^{m+2}}||b||\_{H^{m+2}}, C\_m=2^(m+1)c\_inf.  
Put L\_{n,m}=sup\_t||F\_n||\_{H^m} and  
S\_{n,m}=C\_m sum\_a binom(n,a) A\_{a,m+2}A\_{n-a,m+2}.  
Then  

sup||V\_{n+1}||\_{H^m}&lt;=A\_{n+1,m},  
sup||B\_n||\_{H^m}&lt;=S\_{n,m},  
sup||∇Q\_n||\_{H^m}&lt;=L\_{n,m}+S\_{n,m},  
sup||νΔV\_n||\_{H^m}&lt;=ν A\_{n,m+2}.                           (707)-(710)  

Adding two spatial orders and multiplying by c\_inf gives the individual uniform mixed-derivative bounds. These are bounds on summands before any cancellation is used.  

For material acceleration a=D\_t u=u\_t+B\_0,  

∇p=Q(f-B\_0),  
a=νΔu+Pf+QB\_0,  
Pa=νΔu+Pf,   Qa=QB\_0.                                    (715)  

Because these projections are orthogonal in every Fourier Sobolev inner product,  

||a||\_{H^s}^2=||νΔu+Pf||\_{H^s}^2+||QB\_0||\_{H^s}^2.        (716)  

At f=0, pressure cannot cancel viscosity in this global squared norm. With forcing, νΔu and Pf may cancel inside the solenoidal component. This is consistent with the exact local cancellations in the candidate below.  

At the critical orders, writing h\_u=||u||\_{dot H^{1/2}}, d\_u=||u||\_{dot H^{3/2}},  
||B\_0||\_{dot H^{-1/2}}&lt;=c\_\* h\_u d\_u.  
Since div B\_0=∂\_i u\_j ∂\_j u\_i,  
||QB\_0||\_{dot H^{1/2}}=||div B\_0||\_{dot H^{-1/2}}&lt;=c\_\* d\_u^2.  
Therefore  

||D\_tu||\_{L2 dot H^{-1/2}}^2  
 &lt;=(νsqrt(R)+||Pf||\_{L2 dot H^{-1/2}})^2+(D\_0+R)R/(2π^2),  
||∇p-Qf||\_{L1 dot H^{1/2}}&lt;=R/(sqrt(2)π).                  (718)  

The lower rectangle R\_{1,2} already gives individual undifferentiated L∞ momentum bounds. Put A\_rect=[(1+T^-1)R\_{1,2}]^(1/2), F=sup||f||\_{H^2}, G=sup||Pf||\_{H^2}. It controls u in C H^3 and u\_t in C H^2. Thus  

||u\_t||\_∞&lt;=c\_inf A\_rect,  
||(u·∇)u||\_∞&lt;=A\_rect^2/(8π),  
||∇p||\_∞&lt;=A\_rect^2/(2π)+c\_inf F,  
||νΔu||\_∞&lt;=A\_rect^2/(2π)+c\_inf(A\_rect+G),  
||D\_tu||\_∞&lt;=c\_inf A\_rect+A\_rect^2/(8π).                    (731)-(732)  

Bounded u and ∇u give trajectories on the full interval; integrating acceleration gives the displayed linear-in-time bound along each trajectory. Higher material derivatives are finite polynomials in mixed Eulerian derivatives. The incompressibility commutator is not omitted:  

div(D\_tu)=tr[(∇u)^2],  
g\_0=0,  
g\_{k+1}=D\_tg\_k+∂\_i u\_j ∂\_j(D\_t^k u)\_i,  
where g\_k=div(D\_t^k u).  

## 6. Critical continuation and reconstruction of the mixed intersection

For any strict-interval classical history with the stated smooth datum/source,  

B\_T:=integral\_0^T ||u||\_{dot H^{3/2}}^2 dt  
 =ν^-2||P(D\_tu-f)||\_{L2(0,T;dot H^{-1/2})}^2.              (719)  

This holds even if the nonnegative integrals are infinite. The following conditions are equivalent in the paper's class: I\_T membership; B\_T&lt;∞; PD\_tu in L2 dot H^{-1/2}; hat C\_1[u] in L1; and bounded upper signed production integral sup\_{t&lt;T} integral\_0^t P\_{1/2}&lt;∞.  

The nontrivial continuation direction starts from B\_T&lt;∞, not merely smooth f. At height one,  

(d/dt)||∇u||\_2^2+ν||Δu||\_2^2  
 &lt;=(2K\_1^2/ν)||u||\_{dot H^{3/2}}^2||∇u||\_2^2+(2/ν)||Pf||\_2^2.  

Gronwall bounds H^1 after the kinetic bound supplies low frequencies. Local H^1 existence then has a uniform positive lifespan near T and restarts the solution beyond T. Higher spatial persistence and the forced recurrence supply the mixed intersection. More explicitly, for integer m&gt;=1 the homogeneous commutator estimate gives  

X\_m'+νY\_m&lt;=(2K\_m^2/ν)a^2 X\_m+(2/ν)b\_m^2,  
X\_m=||Λ^m u||\_2^2, Y\_m=||Λ^{m+1}u||\_2^2,  
a=||Λ^{3/2}u||\_2, b\_m=||Λ^{m-1}Pf||\_2.  

If integral a^2&lt;=R, then  
X\_m(t)+ν integral\_0^t Y\_m  
 &lt;=exp(2K\_m^2 R/ν)[||Λ^m u\_0||\_2^2+(2/ν)integral\_0^T b\_m^2]. (703)  

Section 24.5 also proves a direct domain equivalence from all spatial height integrals. Assuming integral\_0^T C^f\_{0,k}=1/2 integral||Λ^{k+1/2}u||^2&lt;∞ for every k, low/high frequency splitting gives  

S\_m^2:=||u||\_{L2 H^m}^2&lt;=2^m T K\_T^2+2^(m+1)integral\_0^T C^f\_{0,m}.  

Integrating u\_t=νΔu-PB\_0+Pf in H^m gives  

U\_{0,m}:=||u\_0||\_{H^m}+νsqrt(T)S\_{m+2}+C\_m S\_{m+2}^2+||Pf||\_{L1 H^m}  
 &gt;=sup\_{t&lt;T}||u(t)||\_{H^m}.  

Inductively define  

U\_{n+1,m}=νU\_{n,m+2}  
 +C\_m sum\_a binom(n,a)U\_{a,m+2}U\_{n-a,m+2}+||PF\_n||\_{L∞ H^m}.  

Every fixed index is finite, so V\_n has the resulting uniform bounds. Conversely I\_T directly gives each spatial height integral. The next row proves actual endpoint convergence:  
||V\_n(t)-V\_n(s)||\_{H^m}&lt;=|t-s|U\_{n+1,m}.  
Thus the rows have compatible H^∞ terminal traces. Pressure is reconstructed with its force potential  

Q\_n=R\_iR\_j sum\_a binom(n,a)V\_{a,i}V\_{n-a,j}-(−Δ)^(-1)div F\_n.  

At zero frequency the potential is controlled by integral\_{|ξ|&lt;=1}|ξ|^-2 dξ=4π. Products and multipliers give pressure traces, and the full terminal recurrence is preserved. Local restart with the same smooth continuation of f matches the incoming jet. This is a conditional reconstruction from whole-interval height integrability, not a proof that this integrability follows from strict-interval smoothness.  

## 7. The actual heat exterior and how it is retained

The source's exterior data are not a substituted toy flow. In the coordinates  

τ=1-t=q(1-η^2), z=q^Dη, X=r^2/(2q), A=1/2+h, D=1/2-h, 0&lt;h&lt;1/100,  

the source provides an exact exterior at X&gt;=X\_ext, inside q&lt;q\_\* and τ&gt;0. The relation q-z^2q^(2h)=τ has derivative 1-2hη^2&gt;=1-2h&gt;0. It yields q&gt;=τ, q&gt;=|z|^(1/D), and q&lt;=C\_0(τ+|z|^(1/D)).  

At unit viscosity put  

H(Z)=Γ(1+h)^(-1) integral\_0^∞ exp(-v)v^h(1+Zv)^(-h) dv,  
b=2^A κ&gt;0,  
K(r,t)=b r^(-2A)H(4τ/r^2),  
u\_ext=K e\_θ,  
p\_ext=-integral\_r^∞ K(ρ,t)^2 dρ/ρ.                        (733)-(734)  

Here κ is the source's exterior amplitude c\_inf, unrelated to the Sobolev embedding constant. In source profile notation E\_pow=κX^(-A), d=1-η^2, and E\_heat=E\_pow H(2d/X); q^(-A)E\_heat equals the K above.  

The heat tail is attached to the source's outer reference profile using its smooth terminal multiplier 1+χ\_K(H(2d/X)-1). Its three affected radial moments are restored by three earlier swirl bumps, while U=0 leaves the axial moments unchanged. The preserved moments make the Stokes streamfunctions vanish beyond the common support. At every positive background order the axial total moment is zero. Annular wave/mean potentials and pressure corrections are also supported before the exterior. Consequently the actual summed local representative has A\_vec=0 and B=K for X&gt;=X\_ext; its pressure normalization gives precisely p\_ext there. This is why cutting off an additional potential for K would be a different construction.  

The local summed fields have the source representation  

A\_vec=A\_0+sum\_{j&gt;=1}χ(a\_jq)A\_j,  
B e\_θ=B\_0e\_θ+sum\_{j&gt;=1}χ(a\_jq)B\_j,  
p\_loc=p\_0+sum\_{j&gt;=1}χ(a\_jq)p\_j,  
u\_loc=curl A\_vec+B e\_θ.  

The separate background streamfunction sum uses S\_n=q^(1-A+2nh)integral\_0^X U\_n, A\_base=(S/r)e\_θ. At the axis S=r^2 a(r^2,z,t), giving the Cartesian potential a(-x\_2,x\_1,0). The supports and zero moments are the precise inputs retaining the exact exterior after summation.  

The heat calculations themselves are direct. Differentiation under the exponential integral gives  

H^(j)(Z)=(-1)^j(h)\_j/Γ(1+h)  
 integral\_0^∞ exp(-v)v^(h+j)(1+Zv)^(-h-j)dv,  
H(0)=1, H'(0)=-h(1+h), H&gt;0, H'&lt;0.  

An integration by parts yields  
Z^2H''+[1+2(1+h)Z]H'+h(1+h)H=0.  
Direct substitution then gives  
K\_t=(∂\_rr+r^-1∂\_r-r^-2)K.  
The final term is the vector swirl Laplacian contribution. The pressure integral converges as ρ^(-3-4h).  

## 8. The four exact cancellations and a positive divergent rectangle

In this exterior,  

u\_t=K\_t e\_θ,  
(u·∇)u=-K^2r^-1 e\_r,  
∇p=K^2r^-1 e\_r,  
-Δu=-K\_t e\_θ.                                            (735)  

Thus f=0 locally, with exact cancellation in each orthogonal direction. Every fixed mixed derivative of the total residual is also zero. This does not bound the separate terms.  

Fix 0&lt;d\_0&lt;1 and choose c&gt;0 such that c^2(1-d\_0^2)/2&gt;X\_ext. Consider  

E\_τ={c sqrt(τ)&lt;r&lt;2c sqrt(τ), |z|&lt;d\_0 τ^D}.                (736)  

Here |η|&lt;=d\_0, τ&lt;=q&lt;=τ/(1-d\_0^2), and X&gt;=c^2(1-d\_0^2)/2. For sufficiently small τ, q&lt;q\_\*, r&lt;r\_0/2, |z|&lt;z\_0/2, and τ&lt;τ\_0/2. All corrections vanish and both final physical cutoffs equal one. Hence these annuli belong to the exact candidate, including its localization.  

Take Eulerian derivatives at fixed x before evaluating r=y sqrt(τ). Define positive continuous functions  

k(y)=b y^(-2A)H(4/y^2),  
j(y)=-4b y^(-2A-2)H'(4/y^2)&gt;0.  

Then  
|u|=k(y)τ^(-1/2-h),  
|u\_t|=|Δu|=j(y)τ^(-3/2-h),  
|(u·∇)u|=|∇p|=k(y)^2 y^-1 τ^(-3/2-2h).                 (737)  

Using dx=r dr dθ dz,  

integral\_{E\_τ}|u\_t|^2 dx=integral\_{E\_τ}|Δu|^2 dx  
 =C\_{c,d\_0} τ^(-3/2-3h),  
C\_{c,d\_0}=4πd\_0 integral\_c^{2c}j(y)^2 y dy&gt;0.             (738)  

Since ||u||\_{H^2}^2&gt;=||Δu||\_2^2,  

integral\_{1-ε}^{1-a}(||u||\_{H^2}^2+||u\_t||\_2^2)dt  
 &gt;=[2C\_{c,d\_0}/(1/2+3h)\](a^(-1/2-3h)-ε^(-1/2-3h)).       (739)  

It follows that R\_{0,1}=∞ for every smooth whole-space completion agreeing on these annuli. This proof uses a positive spatial integral, not a pointwise sample or a cancellation-prone Fourier decomposition.  

The kinetic and strain costs instead have powers  

integral\_E |u|^2=4πd\_0(integral\_c^{2c}k^2y dy)τ^(1/2-3h),  
integral\_E |Sym∇u|^2=C\_Sτ^(-1/2-3h),  
C\_S=2πd\_0 integral\_c^{2c}(k'-k/y)^2 y dy&gt;0,  
integral\_E |u|^3=4πd\_0(integral\_c^{2c}k^3y dy)τ^(-4h).     (742)  

Kinetic energy tends to zero; the strain contribution is time integrable because h&lt;1/6. The L^3 contribution diverges. Thus these displayed concentration rates coexist with the usual energy/dissipation costs.  

## 9. Fractional positive pair estimates for every mixed row

For scalar F, unitary Plancherel gives the positive formula  

||F||\_{dot H^{1/2}}^2=(1/(2π^2)) integral integral  
                     |F(x)-F(y)|^2/|x-y|^4 dx dy.        (745)  

This permits restricting to pairs wholly inside the exact exterior. No interior completion can subtract their contribution.  

On the exterior,  

∂\_t^n u=τ^(-A-n)k\_n(r/sqrt(τ))e\_θ,  
k\_n(ρ)=[b4^n(h)\_n/Γ(1+h)]ρ^(-2A-2n)  
          integral\_0^∞ exp(-v)v^(h+n)(1+4v/ρ^2)^(-h-n)dv.  

For fixed m,n,  

k\_n^(m)(ρ)=(-1)^m d\_{n,m}ρ^(-2A-2n-m)(1+O\_{n,m}(ρ^-2)),  
d\_{n,m}=b4^n(h)\_n(1+h)\_n(2A+2n)\_m&gt;0.  

At large fixed transverse positions (c,0) and (2c,0), the second component of ∂\_1^m[k\_n(r)e\_θ] equals k\_n^(m) at the corresponding radii. Their values differ. Small fixed transverse patches preserve a nonzero gap. Scale both patches by sqrt(τ); choose z\_1 in an interval of length proportional to τ^D and z\_2 within a distance proportional to sqrt(τ). As D&lt;1/2, both stay inside the exterior slab for small τ.  

The transverse pair measure is proportional to τ^2, the axial pair measure to τ^(D+1/2), hence total pair measure &gt;=c τ^(5/2+D). Pair distances are &lt;=C sqrt(τ), giving denominator &lt;=Cτ^2. For F=∂\_1^m∂\_t^n u\_2, the squared difference is &gt;=c τ^(-2A-2n-m). Therefore  

||F||\_{dot H^{1/2}}^2&gt;=cτ^(5/2+D-2-2A-2n-m)  
                       =cτ^(-2n-m-3h).  

The multiplier inequality |ξ\_1|^(2m)|ξ|&lt;=|ξ|^(2m+1) gives  

||∂\_t^n u(1-τ)||\_{dot H^{m+1/2}}^2&gt;=c\_{n,m}τ^(-2n-m-3h).  (743)  

Constants and the allowed late-time threshold may depend on n,m. Subtracting a smooth-through-one history with bounded corresponding mixed norm preserves each divergence by the norm triangle inequality.  

In particular,  
||u||\_{dot H^{1/2}}^2&gt;=c\_0τ^(-3h),  
||u||\_{dot H^{3/2}}^2&gt;=c\_1τ^(-1-3h).                      (744)  

The second has infinite time integral. With bounded kinetic energy and smooth source, W\_{1/2}=&lt;u,ΛPf&gt; is uniformly bounded. The critical balance from a late fixed t\_0 thus forces  

integral\_{t\_0}^{1-τ}P\_{1/2}(s)ds&gt;=c\_\*'τ^(-3h)-C\_\*'.        (746)  

This is a necessary signed nonlinear-production growth for any forced whole-space completion with this exterior. It is not an assertion that exterior zero force makes the nonlinear current zero globally.  

## 10. Positive time convolution, with the source primitive fully retained

Let H\_r=1/2||∂\_t^r u||\_{dot H^{1/2}}^2. The fractional lower bound yields H\_r(1-τ)&gt;=d\_rτ^(-2r-3h). Define  

(I^a g)(t)=1/(a-1)! integral\_0^t(t-v)^(a-1)g(v)dv, a&gt;=1; I^0=Id.  

For r&gt;=1, restrict the lag ell=t-v to [τ,2τ], with t=1-τ. Then 1-v=τ+ell&lt;=3τ, the kernel is &gt;=τ^(r-1)/(r-1)!, and the interval has length τ. Hence  

I^rH\_r(1-τ)&gt;=[d\_r3^(-2r-3h)/(r-1)!]τ^(-r-3h) →∞.         (747)  

For r=0 this is the original pointwise lower bound. The explicit positive convolution is required: pointwise divergence alone would not imply this integrated conclusion.  

For completeness the source current used here is bounded without a higher velocity rectangle. Put h\_s=Λ^(2s)Pf and M\_{s,k}=Re&lt;u,∂\_t^k h\_s&gt;. Binomial cancellation gives exactly  

W\_{r,s}=sum\_{b=0}^r(-1)^b binom(r,b)∂\_t^(r-b)M\_{s,r+b}.  

The same test-field momentum calculation as in Section 3 bounds M\_{s,k} and M'\_{s,k} from kinetic energy and prescribed source derivatives. Define  

F\_{r,s,n}=sum\_{j=0}^{n-1}(-2ν)^j ∂\_t^(n-1-j)W\_{r,s+j},  
N\_{r,s,n}=sum\_{j=0}^{n-1}(-2ν)^j ∂\_t^(n-1-j)P\_{r,s+j}.  

Substitution yields  
F\_{r,s,n}=sum\_{j=0}^{n-1}sum\_{b=0}^r  
 (-2ν)^j(-1)^b binom(r,b)∂\_t^(n+r-1-j-b)M\_{s+j,r+b}.  

After n+r integrations the summand is I^(j+b+1)M\_{s+j,r+b} minus its explicitly finite initial Taylor polynomial. Both are bounded: M is bounded, T is finite, and each initial coefficient follows from the datum/source jet recurrence. Appendix C actually proves the stronger boundedness after max(n+r-2,0) integrations using the additional M' bound.  

Let T\_{r,s,n}(t)=sum\_{ell=0}^{n-1}E\_{r,s}^{(ell)}(0)t^ell/ell!. For odd n, integrating the exact height identity n+r times gives  

I^rE\_{r,s}+(2ν)^n I^(n+r)E\_{r,s+n}  
 =I^rT\_{r,s,n}+I^(n+r)N\_{r,s,n}+I^(n+r)F\_{r,s,n}.  

Both left terms are nonnegative. At s=1/2, the divergence just proved, combined with bounded source primitive and initial polynomial, requires unbounded upper nonlinear primitive at every odd n. The statement is about the complete signed nonlinear expression, not termwise absolute source integrability.  

## 11. Material acceleration and actual material motion

On an exterior trajectory segment,  

D\_tu=-K^2r^-1e\_r+K\_t e\_θ,  
D\_t(D\_tu)=-3KK\_t r^-1e\_r+(K\_tt-K^3r^-2)e\_θ.              (740)  

The derivative of the cylindrical basis supplies the terms involving K. Radial and angular acceleration components are orthogonal, so  

integral\_E |D\_tu|^2=C\_{c,d\_0}τ^(-3/2-3h)+B\_{c,d\_0}τ^(-3/2-5h),  
B\_{c,d\_0}=4πd\_0 integral\_c^{2c}k(y)^4/y dy&gt;0.             (741)  

This material acceleration is not identified with u\_t. It also fails L2 space-time.  

An exterior particle has r(t)=r\_\*, z(t)=z\_\*, and  
θ(t)=θ\_\*+integral\_{t\_0}^t K(r\_\*,s)/r\_\* ds  
while it stays in that open region. The cylindrical Jacobian is one; unchanged r makes the Cartesian volume Jacobian one. Directly div(D\_tu)=-2KK\_r/r=tr[(∇u)^2]. Higher material incompressibility identities follow. The shrinking E\_τ are sampling regions, not transported parcels, and therefore follow changing particle labels.  

The separate core calculation really follows one particle. The source fixes U(0,η)=4η+j\_0 with 0&lt;j\_0&lt;=0.05. All higher-order U\_n vanish on the axis. Their q-dependent streamfunction cutoffs add radial curl terms, not axial terms; wave/mean corrections vanish near the axis. On the final cutoff plateau the exact trace is consequently  

u(0,0,z,t)=q^(-A)(4η+j\_0)e\_z, z=q^Dη, τ=q(1-η^2).        (748)  

Let H\_c(η)=Dη+(1-η^2)(4η+j\_0). It has a unique root η\_c between -j\_0/4 and 0, because its endpoint signs differ and its derivative is positive there. Put d\_c=1-η\_c^2, U\_c=4η\_c+j\_0=-Dη\_c/d\_c&gt;0. Then, for sufficiently late t\_0,  

x\_c(t)=(0,0,η\_c[(1-t)/d\_c]^D), t\_0&lt;=t&lt;1,  
z\_c'(t)=-Dη\_c d\_c^(-D)τ^(-A)=d\_c^A U\_cτ^(-A)=u\_z(x\_c(t),t).  

Thus it is an actual material trajectory. With C\_c=d\_c^AU\_c&gt;0,  

(D\_t^n u)(x\_c(t),t)=C\_c(A)\_nτ^(-A-n)e\_z, n&gt;=0.            (750)  

Every fixed material derivative diverges, while position has a finite limit since A&lt;1. Along this path  

∂\_z u\_z=β\_c/τ,  
β\_c=d\_c[-2Aη\_cU\_c+4d\_c]/(1-2hη\_c^2)&gt;0.  

Axis symmetry/incompressibility give transverse contraction -β\_c/(2τ) plus rotation. Axial stretch is [(1-t\_0)/(1-t)]^β\_c; each transverse length factor is [(1-t)/(1-t\_0)]^(β\_c/2). Their volume product equals one at every t&lt;1.  

If the source's full core residual estimate (9.20) is accepted, every Eulerian derivative of f is O(q^N) for every N. Each derivative of x\_c has only a finite power singularity; the chain rule and arbitrarily large N then imply d^k/dt^k f(x\_c(t),t)=O(τ^N) for each fixed k,N. Force and all its fixed material derivatives can vanish along the path while acceleration grows, because pressure and viscosity remain in the material momentum law. This final force-flatness statement is explicitly conditional on the source's residual estimate.  

## 12. Exact final localization residual, without missing curl terms

Write the actual local representation v=curl A\_vec+B e\_θ, with B axisymmetric, and local pressure π\_loc. The specified localization is  

u=c v+w, w=∇c×A\_vec, p=cπ\_loc, c=χ\_xχ\_t.                  (751)  

It equals curl(cA\_vec)+cB e\_θ and is exactly divergence free. Multiplying the swirl directly is part of the prescription.  

For R\_ν(v,π\_loc)=v\_t+(v·∇)v-νΔv+∇π\_loc, direct expansion gives the complete identity  

f-cR\_ν(v,π\_loc)  
 =(c\_t-νΔc)v-2ν sum\_{i=1}^3(∂\_ic)∂\_iv+π\_loc∇c  
 +(c^2-c)(v·∇)v+c(v·∇c)v  
 +w\_t-νΔw+c(v·∇)w+c(w·∇)v+(w·∇)w.                    (752)  

The sole apparent further term (w·∇c)v vanishes identically because w=∇c×A\_vec is perpendicular to ∇c. No other displayed term may be omitted. Where c=1 locally, w=0 and the error is zero. Where c=0 locally, the localized fields vanish.  

Near time one in the heat exterior A\_vec=0, v=K e\_θ, c=χ\_x=χ. At unit viscosity (or for the corresponding viscosity-rescaled heat equation),  

f\_r=χ(1-χ)K^2/r+π\_loc χ\_r,  
f\_z=π\_loc χ\_z,  
f\_θ=-ν[2χ\_rK\_r+K(χ\_rr+r^-1χ\_r+χ\_zz)].                    (753)  

Axisymmetric swirl has no (v·∇χ) term. The radial force accounts for altered centrifugal/pressure balance, the axial one for the pressure cutoff, and the angular one for diffusion across the swirl taper.  

## 13. All transition regions and the finite mixed-jet bound

For four-variable multi-indices γ define  
J\_m(F;Σ)=sum\_{|γ|&lt;=m}||∂^γF||\_{L∞(Σ)}/γ!.  
Then J\_m(FG)&lt;=J\_m(F)J\_m(G), and J\_m(∂\_iF)&lt;=(m+1)J\_{m+1}(F).  
Let C\_m=J\_m(c), V\_m=J\_m(v), A\_m=J\_m(A\_vec), P\_m=J\_m(π\_loc) and  
U\_m=C\_mV\_m+3(m+1)C\_{m+1}A\_m.  
It bounds J\_m(u). Applying derivatives to the full residual gives  

J\_m(f)&lt;=(m+1)U\_{m+1}+3(m+1)U\_mU\_{m+1}  
 +3ν(m+1)(m+2)U\_{m+2}+3(m+1)C\_{m+1}P\_{m+1}.             (754)  

Every quantity is finite at the fixed m once local jets on the transition are bounded. No single bound over infinitely many m is claimed.  

The source's χ\_x equals one for r&lt;=r\_0/2 and |z|&lt;=z\_0/2 and has support compactly inside r&lt;r\_0, |z|&lt;z\_0. χ\_t vanishes for τ&gt;=τ\_0 and equals one for τ&lt;=τ\_0/2. Its choices ensure q&lt;q\_\*/2 on the support of c.  

The required coverage is as follows.  

(a) Axial spatial transition: |z|&gt;=z\_0/2 gives q&gt;=q\_z=(z\_0/2)^(1/D)&gt;0, including r→0.  

(b) Radial spatial transition with an interior correction: r&gt;=r\_0/2 and X&lt;=X\_ext give q=r^2/(2X)&gt;=q\_r=r\_0^2/(8X\_ext)&gt;0.  

(c) Remaining radial transition with q→0: X&gt;=X\_ext and r&gt;=r\_0/2. Here A\_vec=0 and the exact heat/pressure formula applies. Integral differentiation gives |∂\_τ^jK|&lt;=C\_jr^(-1-2h-2j) and |∂\_τ^jπ\_loc|&lt;=C\_j r^(-2-4h-2j)/(2+4h+2j). All further fixed radial derivatives are bounded at positive r. Cartesian conversion is safe because r is bounded below.  

(d) Temporal transition: τ\_0/2&lt;=τ&lt;=τ\_0 gives q&gt;=τ\_0/2. These terms are away from the proposed singular time.  

(e) Near the singular point: both cutoffs are one, so f=R\_1(v,π\_loc). On X&lt;=X\_ext use the claimed all-orders local flatness (3.4)/(9.20); beyond X\_ext the residual is exactly zero.  

For (a),(b),(d), q has a fixed positive lower bound and an upper bound below q\_\*. Only finitely many summands of (9.21) and background terms survive because cutoff scales tend to infinity. The source's Theorem 3.1(ii)/Proposition 9.9 Step 3 supplies their one-sided closed-parameter derivative bounds, including fixed labels/frequencies and smooth zero extensions. Coordinate denominators satisfy 1-2hη^2&gt;=1-2h, and the axis uses a(r^2,z,t)(-x\_2,x\_1,0).  

Combining these regions gives, under those stated local inputs,  

sup\_{x,t&lt;1}|∂\_x^α∂\_t^j f(x,t)|&lt;∞ for every finite α,j.      (755)  

One further time derivative gives uniformly Cauchy previous jets as t↑1. Uniform spatial limits identify derivatives of smooth terminal fields F\_j. Support remains in one fixed compact K. If M\_{N,M}=max\_{j&lt;=N,|α|&lt;=M}sup|∂\_x^α∂\_t^jf|, then expansion of (1+|ξ|^2)^M gives  

sum\_{j=0}^N ||∂\_t^jf||\_{L2(0,1;H^M)}^2  
 &lt;=(N+1)4^M |K| M\_{N,M}^2&lt;∞.                            (756)  

The multinomial coefficients sum to (1+1+1+1)^M=4^M. Crucially, the core residual estimate used in (e) is an input from the source's finite-stage/summation proof. The final cutoff calculation verifies all additional errors; it does not independently establish the entire interior oscillatory cancellation.  

## 14. Compatible terminal Borel extension

The terminal fields F\_j=lim\_{t↑1}∂\_t^jf are smooth, supported in K, and compatible. Choose χ\_0 in C\_c^∞(R), equal to one near zero and zero for arguments &gt;=1. For σ=t-1&gt;=0 define  

f\_tilde(x,1+σ)=sum\_{j=0}^∞ χ\_0(b\_jσ)σ^j F\_j(x)/j!,  
f\_tilde(x,t)=f(x,t) for t&lt;1.                              (757)  

The full product rule is  

∂\_σ^m[χ\_0(b\_jσ)σ^j/j!]  
 =sum\_{ell=max(0,m-j)}^m binom(m,ell)b\_j^ell χ\_0^(ell)(b\_jσ)  
                     σ^(j-m+ell)/(j-m+ell)!.  

On its support σ&lt;=b\_j^-1, so every term is bounded by a finite C\_{j,m}b\_j^(m-j). Hence  

||∂\_x^α∂\_σ^m[χ\_0(b\_jσ)σ^jF\_j/j!]||\_∞  
 &lt;=C\_{j,m}b\_j^(m-j)||F\_j||\_{C^{|α|}}.                    (758)  

Take b\_0=1 and increasing b\_j so the last bound is &lt;=2^-j for every |α|+m&lt;=floor(j/2). At each j there are finitely many constraints with m-j&lt;0, so a sufficiently large b\_j exists. For each fixed α,m the differentiated tail is uniformly summable. At σ=0, only j=m contributes to the m-th time derivative and gives F\_m. Thus all left/right mixed jets match. Each term has spatial support K and vanishes for σ&gt;=1. The original source vanishes near t=0. Therefore  

f\_tilde in C\_c^∞(R^3×(0,∞);R^3), supp f\_tilde subset K×[0,2]. (759)  

This is a smooth extension, not a convergent Taylor-series assumption. Different smooth extensions past one have the same prescribed residual on every strict interval and give the same comparison there by uniqueness.  

## 15. Why pressure absorption does not apply to this actual force

If Pf=0, define φ by hat φ=-iξ·hat f/|ξ|^2. Then ∇φ=f. The potential is legitimate in three dimensions: its squared inverse-derivative singularity is integrable at zero, while high frequencies are controlled by source Sobolev norms. Setting p=q+φ converts an unforced velocity/pressure (u,q) to a forced pair with identical velocity. This is Appendix K's conservative-force reduction, conditional on whichever unforced history is available.  

For a fixed forced velocity, however, varying pressure q gives  
R\_q=u\_t+(u·∇)u-νΔu+∇q=f+∇(q-p),  
PR\_q=Pf,  
inf\_q||R\_q||\_{H^m}=||Pf||\_{H^m}.                          (956)  

The minimum is attained by absorbing Qf only. One cannot subtract a source from an energy coordinate and thereby change this actual projected residual.  

Appendix L computes nonzero projected terminal force jets on a fixed exterior cutoff rectangle. The heat formula gives  

K\_j(r):=∂\_t^jK(r,1)=b4^j(h)\_j(1+h)\_j r^(-1-2h-2j)&gt;0.    (958)  

Choose Ω=(r\_0/4,2r\_0)×(-ε,ε) in (r,z). With ε and a late time window small enough that q&lt;=C\_0(τ+|z|^(1/D))&lt;min(q\_\*/2,r\_0^2/(64X\_ext)), it lies entirely in the heat exterior. The cutoff is one at (3r\_0/8,0) and zero at (3r\_0/2,0), both interior to Ω.  

Near time one,  
f\_θ=-K(χ\_rr+r^-1χ\_r+χ\_zz)-2K\_rχ\_r.  
Since K\_j'/K\_j=-(1+2h+2j)/r,  

(F\_j)\_θ=-K\_j[χ\_rr+χ\_zz-(1+4h+4j)χ\_r/r].                 (960)  

If it vanished everywhere on Ω, χ would satisfy a uniformly elliptic drift equation there. It attains its maximum one at an interior point but is zero at another interior point; the strong maximum principle forbids this. Thus (F\_j)\_θ is nonzero somewhere. Choose ψ supported in a strict-sign subregion and w=ψ(r,z)e\_θ. It is smooth, compactly supported away from the axis, divergence free, and  

&lt;PF\_j,w&gt;=&lt;F\_j,w&gt;=2π integral (F\_j)\_θ ψ r dr dz&gt;0.  

Therefore PF\_j is nonzero for every finite j, including the actual terminal force. Near time one, local heat convergence on supp w gives &lt;f(t),w&gt;&gt;=d/2&gt;0. Hence  

inf\_q||R\_q(t)||\_{H^m}=||Pf(t)||\_{H^m}&gt;=d/(2||w||\_{H^{-m}})&gt;0. (961)  

Flat force at the singular spatial origin is compatible with nonzero force on this fixed cutoff region. The calculation rules out conservative reduction on a whole final interval; it does not assert a sign for the total work of the force.  

## 16. The two quantitative source tests are not substitutes for Part II here

For y=||u||\_{dot H^{1/2}}, z=||u||\_{dot H^{3/2}}, β=||Pf||\_{dot H^{-1/2}}, the strict-interval critical balance and product estimate give  

yy'+(ν-c\_\*y)z^2&lt;=βz.                                    (962)  

As long as y&lt;ν/c\_\*, completing the square gives yy'&lt;=β^2/[4(ν-c\_\*y)]. Put  

Ψ(s)=2νs^2-(4/3)c\_\*s^3,  
B(t)=integral\_0^t β^2.  

Since Ψ'(s)=4(ν-c\_\*s)s,  
Ψ(y(t))&lt;=Ψ(y(0))+B(t),  
Ψ(ν/c\_\*)=4π^2ν^3/3.                                    (963)  

If y\_0&lt;ν/c\_\* and B(T)&lt;4π^2ν^3/3-Ψ(y\_0), there is a unique r&lt;ν/c\_\* with Ψ(r)=Ψ(y\_0)+B(T), and first-crossing continuity gives y&lt;=r. With a=ν-c\_\*r&gt;0,  

integral\_0^S z^2&lt;=y\_0^2/a+B(T)/a^2, S&lt;T.  

The H^1 energy/Gronwall argument in Section 6 then provides continuation and I\_T. At zeros of y, the squared-norm energy identity avoids division by zero. The local H^1 mild map has small-time bilinear factor C\_ν(h\_time^(1/4)+h\_time^(3/4)), yielding a uniform positive continuation time. This criterion is an independent sufficient result under its explicit smallness condition.  

The actual candidate fails it strictly. Its exterior L^3 integral is C\_Lτ^-4h, so the Sobolev embedding gives y&gt;=C\_3^-1 C\_L^(1/3)τ^(-4h/3)→∞. Starting from rest, y has a first crossing S&lt;1 of ν/c\_\*. Integrating (963) up to that crossing gives  

B(S)&gt;=4π^2ν^3/3.                                        (967)  

The fixed exterior test w above gives γ\_w=lim\_{t↑1}&lt;f(t),w&gt;&gt;0. For t sufficiently close to one,  
β(t)&gt;=γ\_w/(2||w||\_{dot H^{1/2}}).  
With a\_time=max(S,1-η\_1)&lt;1, the interval (a\_time,1) is disjoint from (0,S), so  

B(1)&gt;=4π^2ν^3/3+(1-a\_time)γ\_w^2/[4||w||\_{dot H^{1/2}}^2]  
     &gt;4π^2ν^3/3.                                       (968)  

This needs only the actual strict-interval residual and its local fixed-radius terminal behavior. It does not assume global source extension or full-interval velocity membership. The value B(1)=∞ is allowed.  

For the H^3 source budget, let Y=||u||\_{H^3}, D\_3=||∇u||\_{H^3}, g=||Pf||\_{H^3}, G\_T=integral\_0^T g. The product bound gives  

YY'+νD\_3^2&lt;=8c\_infY^2D\_3+gY.  

Completing the viscous square yields Y'&lt;=2Y^3/(πν)+g where Y&gt;0. Regularize Y by sqrt(Y^2+ε^2) at zeros and put Z\_ε=Y\_ε+integral\_t^Tg. Then Z\_ε'&lt;=2Z\_ε^3/(πν), Z\_ε(0)=G\_T+ε. Integration gives  

Y(t)&lt;=G\_T/[1-4G\_T^2t/(πν)]^(1/2)  
provided G\_T&lt;sqrt(πν/(4T)).                              (965)  

The candidate's diverging L^3 norm forces diverging H^3 norm, hence at T=1  

G\_OA&gt;=sqrt(πν)/2.                                       (966)  

Part III lists the earlier sufficient test G\_OA&lt;πsqrt(ν)/8. The necessary lower bound is strictly larger. Both quantitative sufficient classes therefore fail to cover the candidate. The notation is exact: the earlier threshold is πsqrt(ν)/8, whereas the necessary lower bound is sqrt(πν)/2.  

Under the source's viscosity change u\_ν(x,t)=sqrt(ν)u(x/sqrt(ν),t), p\_ν=νp(x/sqrt(ν),t), f\_ν=sqrt(ν)f(x/sqrt(ν),t), P commutes with scaling. The squared dot H^{-1/2} force norm and its time budget scale as ν^3. Nonzero projection and all divergences persist.  

## 17. Strict-subinterval uniqueness and the exact refutation logic

Having admitted the full residual to the stated source class by the conditional local inputs plus complete cutoff/extension calculation, apply Part II Theorem 15.8 to (u\_0=0,ν,f\_tilde). It supplies U in I\_1. Let v be the source's proposed compactly supported classical candidate on [0,1) with the same force restriction. On every [0,S], S&lt;1, all its spatial Sobolev norms are finite.  

For z=v-U and π=p-P\_pressure,  

z\_t+(v·∇)z+(z·∇)U+∇π=νΔz,  
div z=0, z(0)=0.                                        (761)  

The force cancels because it is the same prescribed force, not because it is conservative or small. Pairing with z cancels divergence-free transport and pressure:  

1/2 d/dt||z||\_2^2+ν||∇z||\_2^2  
 =-integral z\_i z\_j ∂\_jU\_i dx  
 &lt;=||∇U||\_∞||z||\_2^2.  

U's finite rectangle bounds give ||∇U||\_∞ in L1(0,1); even strict-interval regularity would suffice for each fixed S. Gronwall gives z=0 on [0,S]. Since S is arbitrary, v=U on [0,1). No terminal norm of v was assumed in establishing equality.  

Now the comparison has incompatible consequences:  

(a) v=U implies sup\_{t&lt;1}||v||\_∞^2&lt;=R\_{0,2}[U]/(8π)&lt;∞, contrary to the exterior/core velocity growth.  

(b) v=U implies R\_{0,1}[v]&lt;∞, contrary to the positive lower bound (739).  

(c) v=U implies integral||v||\_{dot H^{3/2}}^2&lt;∞ and finite integrated critical production, contrary to (744)/(746).  

(d) Stronger finite rectangles bound material acceleration and every fixed parcel derivative, contrary to the exterior acceleration integral and the exact core trajectory.  

Items (a)–(d) are alternative manifestations of the same comparison contradiction; one suffices. Incompressibility and exact local cancellation are preserved in the candidate calculations and are not treated as violations.  

The dependency graph is therefore:  

Part II global theorem -&gt; regular comparison U with finite whole-interval rectangles.  
Actual candidate local representation + claimed interior residual/endpoint bounds -&gt; complete localized residual -&gt; compact smooth extension f\_tilde.  
Same data/source + strict-interval uniqueness -&gt; candidate equals U before time one.  
Exact exterior/axis formulas -&gt; positive divergent candidate norms.  
Those branches together -&gt; the exclusion stated as Theorem 27.1.  

## 18. Scope of the source comparison

The heat profile, its two cancellation pairs, annular support geometry, integer and fractional powers, material trajectory, complete cutoff expansion, terminal Borel extension, and projected terminal cutoff-force calculation are tied to the formulas in the cited candidate paper. The source comparison recorded here includes the coefficient b=2^Aκ, the source-class thresholds, and the localization representation, with powers distinguished as printed. No mismatch was identified among these particular source formulas and Birnie’s candidate-specific calculations. This finding is limited to the formulas and comparison described here.  

The all-orders interior residual bound remains an explicit input to the source admission, with its source provenance identified as (9.18)/(9.20) and Theorem 3.1. Part III does not independently re-prove that full oscillatory construction. The global comparison remains an explicit input from Birnie's own Part II. Therefore the independently verified candidate calculations establish necessary divergent quantities and failure of the displayed smaller source classes; the unconditional exclusion of the candidate stands or falls with the global theorem used upstream. This is the precise mathematical dependence, not a dismissal based on the subject or the source's name.  
