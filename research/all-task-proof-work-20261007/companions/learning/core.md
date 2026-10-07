# Core argument learning guide for public version 1

**Companion C05 — reviewed scope.** Combined Parts I–II reconstruction and separately attributed reciprocal-route supplement.

This guide reconstructs public combined version 1. Its LF604–606 account reports that version’s wording about absorbing ν||V_n||_{H^{M+1}}² into viscosity. In the stated inhomogeneous scale, ||V_n||_{H^{M+1}}²=||∇V_n||_{H^M}²+||V_n||_{H^M}²: the gradient contribution is absorbed and the lower-order νY, Y=||V_n||_{H^M}², remains. The recovered v3 source explicitly retains this remainder. This is a version-specific correction, not a v3 proof obstruction.

The guide attributes the 229-page public-v1 PDF, file 69392430, SHA-256 8095b332b81c7ed17926f6dc9d91035047d147f5d0785f441136d54184231a0f. This attribution does not identify it with the distinct local build. The common local construction remains on its shared local interval; finite memberships and terminal majorants retain their claimed producer inputs. Operator and scalar norm matrices are distinct from Gram matrices. The supplementary reciprocal and short-original constructions are separately attributed; the short original is recovered and indexed, so a historical missing-source diagnosis does not persist.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.

Thomas Birnie, Global Smoothness for the Unforced and Forced Three-Dimensional Incompressible Navier–Stokes Equations with a Refutation of OpenAI’s Finite-Time Blowup Claim, September 2026  
Parts I–II, printed/PDF pages 5–154  

## Source and scope

This guide reconstructs public version 1 of the cited manuscript, a 229-page PDF. Public source: https://ndownloader.figshare.com/files/69392430 . Version-specific DOI: https://doi.org/10.6084/m9.figshare.34005666.v1 . PDF SHA-256: 8095b332b81c7ed17926f6dc9d91035047d147f5d0785f441136d54184231a0f. Printed page numbers agree with PDF page numbers. The main guide covers pages 5–154, including the local construction, rectangle arguments, endpoint arguments, quantitative sections, and applications. Equations below use the source’s numbering. References of the form “p.31, (61)” refer to this public PDF. The purpose is mathematical learning: to distinguish the objects, the maps that identify them, the spaces to which they belong, the norms read from membership, and the intended endpoint continuation. The supplementary routes at the end have a separate scope and are not attributed to Parts I–II.  

## Logical legend used throughout

[D] is a definition or choice of coordinates.  
[I] is an algebraic/differential identity on the already available classical interval.  
[A] is an analytic implication with its hypotheses explicitly retained.  
[R] is the manuscript’s whole-terminal realization output, Theorem 3.9 or 13.10. Later statements depending on it remain tagged as such. A reconstruction of the manuscript’s argument is not an independent certification of this output.  

The important distinction is between selecting a field which is already a derivative of the strict-horizon history, identifying it by the equation, proving membership in a particular full-interval space, and measuring that membership. The guide does not conflate those steps. No norm uniform over all derivative orders is used or claimed. The common interval, however, matters: membership on every (0,T), T&lt;T\*, is different from membership on I=(0,T\*).  

## PART I IN SOURCE ORDER

## 1. Motivation, scaling, and the two readings (pp.5–13)

The starting equation is  
  u\_t+(u·∇)u+∇p=νΔu,  div u=0,  u(0)=u0,  
with ν&gt;0 and u0∈H^∞\_σ(R³). The manuscript’s actual theorem class is H^∞\_σ=∩\_{m≥0}H^m\_σ, stronger than the bare phrase “smooth finite-energy datum.” Every solenoidal Schwartz datum is included; Schwartz decay is not required for the velocity datum.  

The opening vortex discussion motivates following the derivative tower through a proposed finite cascade. Under  
  u\_λ(t,x)=λu(λ²t,λx), p\_λ(t,x)=λ²p(λ²t,λx),  
one has ||u\_λ||\_{Ḣ^s}=λ^{s−1/2}||u||\_{Ḣ^s}. The height s=1/2 is scale invariant; the energy itself scales as λ^{-1}. The geometric-time-series discussion concerns possible accumulating contraction stages. It is motivation, not a separate estimate used in continuation.  

The temporal rows are actual Eulerian derivatives V\_n=∂\_t^n u, Q\_n=∂\_t^n p, and the mixed rows are J\_{n,α}=∂\_x^αV\_n, Π\_{n,α}=∂\_x^αQ\_n. Time differentiation is at fixed x. These are not initially material derivatives.  

The intended argument has one producer and two readings:  
  datum and equation → compatible finite whole-terminal records →  
  (a) exhaustion by mixed temporal/spatial indices, or  
  (b) completed scalar-height identities, spatial exhaustion, then reconstruction by the original equation →  
  the same all-orders Sobolev intersection → compatible endpoint jet → same-history restart.  

The second reading does not construct another velocity. The heights are contractions of the same velocity rows. Nor is H^{(k)} the energy of V\_k: differentiating a quadratic energy produces all pairings V\_a,V\_{k−a}.  

The low rectangle singled out in the introduction is N=0,M=1. Its two velocity norms are A\_T=||u||\_{L²\_tH²\_x} and B\_T=||u\_t||\_{L²\_tL²\_x}. The adjacent trace identity gives  
  sup\_{0≤t≤T}||u(t)||\_{H¹}² ≤ ||u0||\_{H¹}²+2A\_TB\_T.  
The text then reads L∞\_tL³\_x, L²\_tL∞\_x, and L²\_tW^{1,3}\_x bounds from this record. These are consequences of its two memberships; they are not the producer of those memberships.  

## 2. The analytic scale and why each tool is present (Section 2, pp.14–25)

### 2.1 Fourier/Sobolev conventions [D]

The transform is unitary:  
  f̂(ξ)=(2π)^{-3/2}∫e^{-ix·ξ}f(x)dx,  
  A=(1−Δ)^{1/2}, Λ=(−Δ)^{1/2}, ⟨ξ⟩=(1+|ξ|²)^{1/2}.  
The H^s norm is ||⟨ξ⟩^sf̂||₂. The finite homogeneous-norm domain consists of tempered distributions with a measurable Fourier representative and |||ξ|^sf̂||₂&lt;∞. Vector and tensor norms are sums of component squares. H^s\_σ is the kernel of divergence in H^s.  

Sobolev nesting follows from ⟨ξ⟩^{s1}≤⟨ξ⟩^{s2} when s1≤s2. For s&gt;k+3/2,  
  max\_{|α|≤k}||∂^αf||∞ ≤ C^{emb}\_{s,k}||f||\_{H^s},  
  C^{emb}\_{s,k}=(2π)^{-3/2}max\_{0≤j≤k}(∫|ξ|^{2j}⟨ξ⟩^{-2s}dξ)^{1/2}.  
This is Fourier inversion plus Cauchy–Schwarz, with integrability at infinity requiring s&gt;j+3/2. It gives H^∞⊂C\_b^∞, later applied at each finite order rather than with one infinite-order constant.  

For 3≤p≤6, s(p)=3(1/2−1/p), the manuscript records the homogeneous constant  
  S(p)=2^{-s(p)}π^{-s(p)/2}[Γ((3−2s(p))/2)/Γ((3+2s(p))/2)]^{1/2}[Γ(3)/Γ(3/2)]^{s(p)/3}.  
Then ||F||\_p≤S(p)||F||\_{Ḣ^{s(p)}}; tensor extension is by Minkowski in L^{p/2}. In particular  
  S(3)=2^{-1/6}π^{-1/3}, S(6)=2^{2/3}/(√3π^{2/3}).  
These constants are later used for the explicit small-critical theorem, not for the general producer.  

### 2.2 Multiplication, pressure multipliers, and Leibniz [A/I]

Lemma 2.4 proves, for every integer m≥0,  
  ||fg||\_{H^m}≤C\_m^{alg}||f||\_{H^{m+1}}||g||\_{H^{m+1}},  
and for m≥2,  
  ||fg||\_{H^m}≤C\_m^{alg}||f||\_{H^m}||g||\_{H^m}.  
For m=0 the proof is H¹→L⁴ and Hölder. At higher integer order use  
  ||h||\_{H^m}²=Σ\_{|α|≤m} m!/[(m−|α|)!α!] ||∂^αh||₂².  
In each Leibniz product put the factor with at most floor(|α|/2) derivatives in L∞. Summing coefficient squares yields Σ\_{|α|≤m}m!4^{|α|}/[(m−|α|)!α!]=13^m. A second Fourier-convolution proof gives the H^m algebra property for m≥2. All constants are finite at each finite m.  

The Riesz symbol is r\_j(ξ)=iξ\_j/|ξ| and P(ξ)=I−ξ⊗ξ/|ξ|², with harmless values specified at zero. Both have operator norm at most one on every H^s. The tensor contraction F↦R\_iR\_jF\_{ij} also has norm at most one. Thus pressure is treated in the same Sobolev scale without an independent pressure evolution equation.  

For div v=0,  
  q=R\_iR\_j(v\_iv\_j),  −Δq=∂\_i∂\_j(v\_iv\_j),  
  P∇·(v⊗v)=(v·∇)v+∇q.  
The mixed product rule is  
  ∂\_t^N∂\_x^α(fg)=Σ\_{a=0}^N Σ\_{β≤α} binom(N,a)binom(α,β)  
                  (∂\_t^a∂\_x^βf)(∂\_t^{N−a}∂\_x^{α−β}g).  
This is the combinatorial mechanism behind every transport/pressure row.  

### 2.3 Adjacent trace mechanism (Lemma 2.7, p.18) [A]

If 0&lt;T&lt;∞, m∈R, v∈L²(0,T;H^{m+1}), v\_t∈L²(0,T;H^{m−1}), then v has a unique representative in C([0,T];H^m). The energy pairing is  
  ||v(t)||\_{H^m}²−||v(r)||\_{H^m}²  
    =2Re∫\_r^t⟨A^{m−1}v\_t,A^{m+1}v⟩ds.                   (10)  
Hence its absolute value is ≤2||v\_t||\_{L²(r,t;H^{m−1})}||v||\_{L²(r,t;H^{m+1})}. Choosing a time with norm at most the time average gives  
  sup\_t||v(t)||\_{H^m}²  
    ≤T^{-1}||v||\_{L²H^m}²+2||v\_t||\_{L²H^{m−1}}||v||\_{L²H^{m+1}}. (12)  

The proof first restricts Fourier frequencies |ξ|≤R. For these smooth spatial cutoffs the identity is classical. Applying the same identity to the difference between two cutoffs, beginning at one common Lebesgue time, proves Cauchy convergence in C\_tH^m. The limit agrees with v in L²\_tH^m. This is why the endpoint trace is a trace of the given distribution, not a newly chosen terminal field.  

### 2.4 Integer commutator (Lemma 2.8, pp.18–20) [A]

For m≥3,  
  |Re⟨A^mP∇·(v⊗v),A^mv⟩|≤K\_m||∇v||∞||v||\_{H^m}².    (15)  
The proof uses full derivative tensors and the finite interpolation chain  
  ||∇^jF||\_{L^{2M/j}}≤(2M−2+√3)^{j(M−j)/2}  
                     ||F||∞^{1−j/M}||∇^MF||₂^{j/M}.  
Integration by parts gives X\_j²≤(2M−2+√3)X\_{j−1}X\_{j+1}; the discrete exponent d\_j=j(M−j)/2 satisfies 2d\_j−d\_{j−1}−d\_{j+1}=1, so the discrete maximum principle produces the chain. In the transport energy, the (v·∇)∂^αv term integrates to zero. For each remaining product put F=∇v, M=|α|−1 and j=|β|−1. Its complementary exponents sum reciprocally to 1/2 and its total size is bounded by ||∇v||∞||v||\_{H^m}. The multinomial sums give the explicit K\_m in (13)–(16). This commutator is later used for local high-order persistence and post-rectangle high-order estimates.  

## 3. Local datum construction and its real scope (Definition 2.9–Theorem 2.11, pp.20–25) [A]

For s&lt;b and a∈H³\_σ, M³\_ν(s,b;a) is the class with  
  w∈C([s,b];H³\_σ), q∈C([s,b];H³), w(s)=a,  
  q=R\_iR\_j(w\_iw\_j),  
  w(t)=e^{ν(t−s)Δ}a−∫\_s^t e^{ν(t−r)Δ}P∇·(w⊗w)(r)dr.    (22)–(24)  
The integral is H³-valued because its H² input is smoothed by an integrable (t−r)^{-1/2} heat singularity. Splitting this Duhamel integral proves restriction to any [r,c] is in the same shifted class with initial datum w(r). Classical normalized histories are admitted by variation of constants.  

The local construction is an actual contraction argument. For z\_t−νΔz=F, z(0)=a, F∈L²H², δ≤1, the manuscript derives  
  ||z||\_{CH³}+||z||\_{L²H⁴}+||z\_t||\_{L²H²}  
    ≤L\_ν(||a||\_{H³}+||F||\_{L²H²}),  
  L\_ν=4(1+ν+ν^{-1}) exp((ν+ν^{-1})/2).  
The CH³ estimate comes from the H³ energy with pairing ⟨A²F,A⁴z⟩. Pairing the H² equation with −ΔA²z gives  
  ||Δz||\_{L²H²}≤ν^{-1/2}||a||\_{H³}+ν^{-1}||F||\_{L²H²}.  
The multiplier bound ⟨ξ⟩⁸≤2(⟨ξ⟩⁶+|ξ|⁴⟨ξ⟩⁴) gives L²H⁴, and z\_t=νΔz+F gives L²H² for the derivative.  

Let C\_q=√3 C\_3^{alg}, c\_ν=(8C\_qL\_ν²)^{-2}, and  
  δ\_ν(a)=min{1,c\_ν(1+||a||\_{H³})^{-2}}.  
On X\_δ=CH³\_σ∩L²H⁴\_σ with derivative in L²H²\_σ, restrict to initial trace a and radius R=2L\_ν||a||\_{H³}. Multiplication gives  
  ||P∇·(v⊗z)||\_{H²}≤C\_q||v||\_{H³}||z||\_{H³},  
  ||P∇·(v⊗v−z⊗z)||\_{H²}≤C\_q(||v||\_{H³}+||z||\_{H³})||v−z||\_{H³}.  
The extra factor δ^{1/2} from the time L² norm makes the fixed-point map preserve the ball and have contraction factor ≤1/2 for δ≤δ\_ν(a). The zero datum gives the zero solution.  

Uniqueness is proved on an arbitrary finite [s,b], not only inside that chosen contraction ball: partition into subintervals of length h with L\_νC\_qh^{1/2}(||v||\_{CH³}+||z||\_{CH³})&lt;1. Common left traces propagate equality, and pressure normalization propagates equality of pressure.  

High-order persistence does not repeatedly shorten δ as m increases. The source constructs Fourier-cutoff fixed points w^{(k)} with a uniform X\_δ bound on this same interval. The commutator gives  
  sup\_t(||w^{(k)}(t)||\_{H^m}²+2ν∫\_0^t||∇w^{(k)}||\_{H^m}²)  
     ≤exp(2K\_m C\_{∇,3}δR)||a||\_{H^m}².                  (35)  
Here ||∇w^{(k)}||∞≤C\_{∇,3}R follows from the base H³ control, independently of k. The equations then bound derivatives in L²H^{m−1}. Stability of the contraction identifies w^{(k)}→w in X\_δ; weak high-order limits are the same distribution w. The adjacent trace lemma gives w∈CH^m.  

For a∈H^∞\_σ, recursively define W\_0=w,  
  Q\_n=R\_iR\_jΣ\_a binom(n,a)W\_{a,i}W\_{n−a,j},  
  W\_{n+1}=νΔW\_n−Σ\_a binom(n,a)(W\_a·∇)W\_{n−a}−∇Q\_n.  
At a requested output order H^m, choose existing input rows in H^{m+2}. Products and multipliers give Q\_n∈CH^{m+1}, W\_{n+1}∈CH^m. Distributional differentiation verifies W\_n=∂\_t^nw, Q\_n=∂\_t^nq, not merely formal names. Since all finite spatial orders were available, this inducts through all temporal rows on the same δ. This is local smooth persistence, not by itself whole-terminal membership if a finite maximal time is later proposed.  

Compatible local members have one maximal union. Definition 3.2 requires all derivatives continuous in every finite H^m on each closed strict interval [0,T], T&lt;T\*. Maximal means no longer pressure-complete classical history with the same datum and viscosity restricts to this one. This exact maximality is what the later extension contradicts.  

## 4. Pressure-complete jet and its initial face (Section 3, pp.25–29)

Pressure normalization [A/I]: divergence of momentum gives −Δp=∂\_i∂\_j(u\_iu\_j). The Riesz formula produces an H⁰ pressure. Any two H⁰ solutions differ by an L² harmonic distribution; its Fourier transform is supported at {0} and is an L² function, hence zero. Thus H⁰ fixes the pressure; spatial decay follows later from sufficient Sobolev regularity. It is not an extra freely evolving coordinate.  

The exact recurrences are (44)–(48):  
  Q\_n=R\_iR\_jΣ\_{a=0}^n binom(n,a)V\_{a,i}V\_{n−a,j},  
  V\_{n+1}=νΔV\_n−Σ\_{a=0}^n binom(n,a)(V\_a·∇)V\_{n−a}−∇Q\_n,  
  Π\_{n,α}=R\_iR\_jΣ\_{a=0}^nΣ\_{β≤α}binom(n,a)binom(α,β)  
                                  J\_{a,β,i}J\_{n−a,α−β,j},  
  J\_{n+1,α}+Σ\_{a,β}binom(n,a)binom(α,β)(J\_{a,β}·∇)J\_{n−a,α−β}  
       +∇Π\_{n,α}=νΔJ\_{n,α},  
  div J\_{n,α}=0.  

The n=0 row is the full equation. At n=1 the nonlinear part is (V\_0·∇)V\_1+(V\_1·∇)V\_0; at n=2 it is (V\_0·∇)V\_2+2(V\_1·∇)V\_1+(V\_2·∇)V\_0. No term in these rows is replaced by a separate source chosen independently of the history.  

The initial jet (49)–(51) is a triangular recurrence in temporal order:  
  A\_0=u0,  
  P\_n=R\_iR\_jΣ\_a binom(n,a)A\_{a,i}A\_{n−a,j},  
  A\_{n+1}=νΔA\_n−Σ\_a binom(n,a)(A\_a·∇)A\_{n−a}−∇P\_n.  
At each step only A\_0,…,A\_n are used. Their being in every finite Sobolev space permits the two-derivative loss and multiplication at every finite step. Then J\_{n,α}(0)=∂^αA\_n and Π\_{n,α}(0)=∂^αP\_n. This determines an initial jet; the paper does not assert convergence of an infinite Taylor series from it.  

For Q(v,w)=R\_iR\_j(v\_iw\_j), define C\_m^p as the operator bound for  
  ||Q(v,w)||\_{H^m}+||∇Q(v,w)||\_{H^{m−1}}  
relative to ||v||\_{H^{m+1}}||w||\_{H^{m+1}}. Tensor contraction and multiplication give C\_m^p≤2C\_m^{alg}. Therefore, if V\_0,…,V\_n∈L²(I;H^{M+1}),  
  ||Q\_n||\_{L¹H^M}+||∇Q\_n||\_{L¹H^{M−1}}  
    ≤C\_M^pΣ\_a binom(n,a)||V\_a||\_{L²H^{M+1}}||V\_{n−a}||\_{L²H^{M+1}}. (52)  
Time Cauchy–Schwarz explains L¹ rather than L² pressure at this stage. The involution a↦n−a and 2xy≤x²+y² reduce the sum to C\_M^p2^nΣ\_{a≤n}||V\_a||². Mixed derivatives have the analogous sum with binom(n,a)binom(α,β), totaling 2^{n+|α|}. These are conditional finite-row pressure estimates, applied later once the corresponding velocity memberships are available.  

## 5. What a finite rectangle is and what the producer says (Section 3.1, pp.29–34)

### 5.1 The finite dependency cover [D/I]

Fix finite N,M and a proposed finite maximal time T\*. Set I=(0,T\*). The main selected record is  
  𝓡\_{N,M}[u0;T\*]=((V\_n)\_{n=0}^N,(V\_{n+1})\_{n=0}^N;(Q\_n)\_{n=0}^N). (57)  
M specifies the Sobolev spaces in which these fields are read; it is not an independent replacement of each field by a scalar. The two velocity columns retain overlap: V\_1 occurs as the adjacent derivative of V\_0 and also as an upper row at the next depth. All appearances are the same distribution.  

The proof explicitly describes the dependency cover of a selected equation (n,α):  
  retain J\_{n+1,α};  
  retain J\_{n,α+2e\_ℓ}, ℓ=1,2,3, for the Laplacian;  
  retain Π\_{n,α+e\_ℓ} for the pressure gradient;  
  for a≤n, β≤α and component i, retain J\_{a,β,i} and J\_{n−a,α−β+e\_i};  
  set Γ\_α={α}∪{α+e\_ℓ:ℓ=1,2,3};  
  for each γ∈Γ\_α retain every pressure-product factor J\_{a,β,i},J\_{n−a,γ−β,j}, β≤γ.  
Their finite row is  
  𝓔\_{n,α}(J,Π)=J\_{n+1,α}+Σ\_{a,β}binom(n,a)binom(α,β)(J\_{a,β}·∇)J\_{n−a,α−β}  
                     +∇Π\_{n,α}−νΔJ\_{n,α}=0.                 (61)  
The cover is finite for the finitely many selected equations. It is explicitly not an autonomous truncated fluid. It records the factors appearing in those equations of the original history; it does not declare every newly retained derivative to be a new independent unknown satisfying a closed finite ODE.  

Applying P to this row records solenoidal evolution. Applying I−P records pressure allocation. The normalized Riesz formulas retain the actual scalar pressures as well as their gradients, so “pressure-complete” means the projected equation has not discarded the pressure data of the original equation.  

### 5.2 The precise whole-terminal producer [R]

Theorem 3.9, pp.30–31, asserts that the datum-generated columnwise construction acting on this complete finite record supplies, for every 0≤n≤N,  
  V\_n∈L²(I;H^{M+1}),  V\_{n+1}∈L²(I;H^{M−1}).            (58)  
Its stated inputs are the datum, ν, complete initial face, full equation graph, and identification with the one maximal history. “Columnwise” here refers to supplying these adjacent velocity columns of the selected pressure-complete record on the whole I. It does not refer to estimating an infinite matrix norm, removing convection, summing a Taylor series, or building independent fluids for separate columns.  

Exact dependency qualification: in this public-v1 text, the displayed argument constructs the initial jet and finite dependency cover, then states that the columnwise construction supplies (58). It gives no separately formulated construction map/iteration or nonlinear whole-terminal estimate between that graph input and (58). Consequently this guide records (58) as the manuscript’s producer assertion [R], rather than upgrading coordinate selection or graph identities into a proved membership statement. The later reconstruction can be followed in full while keeping this one dependency explicit. This is not a claim that any arbitrary smooth local function lies in these full-interval spaces.  

### 5.3 Membership, norm, restriction, realization [A from R]

Once (58) is supplied, define  
  C\_{N,M}[u0,ν;I]=Σ\_{n=0}^N(||V\_n||\_{L²(I;H^{M+1})}²+||V\_{n+1}||\_{L²(I;H^{M−1})}²)&lt;∞. (62)  
For S≤T\*, R\_{N,M}(u;S) is the same finite sum with time interval (0,S). Restriction decreases each nonnegative integral, and monotone convergence yields  
  sup\_{0&lt;S&lt;T\*}R\_{N,M}(u;S)=R\_{N,M}(u;T\*)=C\_{N,M}[u0,ν;I]. (63)  
The order is membership → finite norm → restriction → terminal norm realization. Monotone convergence identifies the extended integral; its finiteness comes from the supplied membership. The constant may depend on N,M and the history. Theorem 4.6 explicitly says it is not replaced for general data by a formula involving only finitely many datum norms.  

To obtain J\_{n,α} in L²(I;H^m), choose sufficiently large spatial height, since ||∂^αh||\_{H^m}≤||h||\_{H^{m+|α|}}. The pressure estimate gives Π\_{n,α}∈L¹(I;H^m). Enlarging a rectangle retains the same derivative distributions; uniqueness is invoked to identify any overlapping local realizations.  

### 5.4 Direct intersection [A from R]

For every fixed finite r,m choose N≥r,M≥m. Then the selected record contains V\_j∈L²(I;H^m), j=0,…,r, and the recurrence identifies V\_j=∂\_t^ju weakly. Therefore  
  ||u||\_{H^r(I;H^m)}²=Σ\_{j=0}^r||V\_j||\_{L²(I;H^m)}²&lt;∞.  
Taking every finite pair yields u∈∩\_{r,m≥0}H^r(I;H^m\_σ), (64). The “intersection” is this simultaneous membership of one distribution in all these spaces, not an intersection of unrelated solution sets, not a summability condition over r,m, and not a uniform bound over the tower.  

### 5.5 Reconstruction from the complete spatial column [A]

Proposition 3.11 assumes only u∈∩\_mL²(I;H^m\_σ), with I finite, for this existing normalized history. At fixed m,  
  ||P∇·(u⊗u)||\_{L¹H^m}≤C\_m||u||\_{L²H^{m+2}}²,  
  ||Δu||\_{L¹H^m}≤T\*^{1/2}||u||\_{L²H^{m+2}}.  
Thus u\_t∈L¹(I;H^m), while u∈L¹(I;H^m). The Banach-valued fundamental theorem gives u∈W^{1,1}(I;H^m)⊂C([0,T\*];H^m). Explicitly,  
  sup\_t||u(t)||\_{H^m}≤||u0||\_{H^m}+νT\*^{1/2}||u||\_{L²H^{m+2}}+C\_m||u||\_{L²H^{m+2}}².  
The representatives at different m agree because they extend the same interior distribution.  

Now suppose V\_0,…,V\_n are continuous in every finite H^m. At any requested H^m order choose these inputs two spatial orders higher; the exact pressure/velocity recurrence makes Q\_n and V\_{n+1} continuous at that order. In the interior this expression is the actual derivative ∂\_tV\_n. Passing  
  V\_n(t)−V\_n(s)=∫\_s^tV\_{n+1}(τ)dτ  
by continuity to the endpoints identifies the one-sided derivatives. Induction yields all temporal and pressure rows in C([0,T\*];H^m). Finite T\* gives L² membership for each velocity row and hence the direct mixed intersection again. No separate parabolic equation with arbitrary nonlinear source has been substituted.  

## 6. Completed heights and the second exhaustion (Section 4, pp.34–39)

### 6.1 Base energy [I/A]

Pairing momentum with u cancels transport by div u=0 and pressure by orthogonality. Thus  
  (1/2)||u(t)||₂²+ν∫\_0^t||∇u||₂²=(1/2)||u0||₂².          (67)  
In particular ||u||\_{L∞\_tL²\_x}≤||u0||₂ and  
  ||u||\_{L²(0,T;H¹)}²≤(T+(2ν)^{-1})||u0||₂².            (69)  
These are the low-frequency/low-order inputs used in later Sobolev recovery.  

### 6.2 Energy of a temporal row and scalar completion [D/I]

Set B\_r=Σ\_{a=0}^rbinom(r,a)(V\_a·∇)V\_{r−a}. For r≥0,s≥0,  
  E\_{r,s}=(1/2)||Λ^sV\_r||₂²,  
  P\_{r,s}=−Re⟨Λ^sV\_r,Λ^s(B\_r+∇Q\_r)⟩.                 (70)–(71)  
The manuscript retains pressure in this full expression even though its global pairing with a solenoidal row vanishes when the pairing is justified. Let E\_s=E\_{0,s}, P\_s=P\_{0,s}, H=E\_{1/2}. The exact row identity is  
  ∂\_tE\_{r,s}=P\_{r,s}−2νE\_{r,s+1}.                      (72)  
The Laplacian’s two derivatives become one derivative on each factor after integration by parts. Repeating the identity gives  
  ∂\_t^kE\_{r,s}=(−2ν)^kE\_{r,s+k}  
       +Σ\_{j=0}^{k−1}(−2ν)^j∂\_t^{k−1−j}P\_{r,s+j}.     (76)  
Induction differentiates the existing formula and substitutes the identity only in ∂\_tE\_{r,s+k}; all previously exposed nonlinear derivatives remain.  

In the critical base row,  
  H^{(k)}=(−2ν)^kE\_{k+1/2}+Σ\_{j=0}^{k−1}(−2ν)^j∂\_t^{k−1−j}P\_{j+1/2}. (74)  
Thus define R\_0=H and, for k≥1,  
  R\_k=[H^{(k)}−Σ\_{j=0}^{k−1}(−2ν)^j∂\_t^{k−1−j}P\_{j+1/2}]/(−2ν)^k. (77)  
Then R\_k=E\_{k+1/2}=(1/2)||Λ^{k+1/2}u||₂² exactly, (78). Positive viscosity permits this division. The completed quantity is nonnegative because the exact identity identifies it with an energy; H^{(k)} alone has no such positivity.  

For clarity, the contractions in the differentiated terms can be expanded without changing the manuscript’s equation. Since ∂\_t^ℓB\_r=B\_{r+ℓ},  
  ∂\_t^ℓP\_{r,s}=−Σ\_{b=0}^ℓbinom(ℓ,b)Re⟨Λ^sV\_{r+b},Λ^s(B\_{r+ℓ−b}+∇Q\_{r+ℓ−b})⟩.  
Also H^{(k)}=(1/2)Σ\_{a=0}^kbinom(k,a)Re⟨Λ^{1/2}V\_a,Λ^{1/2}V\_{k−a}⟩.  
These formulas exhibit the finite mixed rows needed at each k. They are consequences of the source’s Leibniz recurrences, not a new scalar evolution replacing u.  

### 6.3 Norm equivalence and height exhaustion [A from R]

Theorem 4.6 simply reads the adjacent memberships of Theorem 3.9 into R\*\_{N,M}=sup\_{T&lt;T\*}R\_{N,M}(u;T)&lt;∞, (81). Proposition 4.7 proves equivalence of all these norm bounds with all adjacent memberships, and identifies  
  R\*\_{N,M}=lim\_{T↑T\*}R\_{N,M}(u;T)  
           =Σ\_{n≤N}(||V\_n||\_{L²(I;H^{M+1})}²+||V\_{n+1}||\_{L²(I;H^{M−1})}²). (83)  

Corollary 4.8 evaluates completed heights on the same rectangles. From |ξ|^{2k+1}≤⟨ξ⟩^{2k+2},  
  2||R\_k||\_{L¹(I)}=||Λ^{k+1/2}u||\_{L²(I×R³)}²≤R\*\_{0,k}. (84)  
For |ξ|≤1, ⟨ξ⟩^{2m}≤2^m; for |ξ|&gt;1, ⟨ξ⟩^{2m}≤2^m|ξ|^{2m+1}. Hence  
  ||u||\_{L²(I;H^m)}²≤2^m(T\*||u0||₂²+2||R\_m||\_{L¹(I)}). (85)  
Every finite completed height therefore gives a finite spatial row. Exhausting k gives the full spatial column; Proposition 3.11 then reconstructs every temporal/pressure row. The finite norms of the heights are read from the producer’s rectangles. The identity that defines a height and the analytic membership of that height are different steps.  

### 6.4 Pressure completion and restrictions [A/I]

Summing (53) gives  
  Q\*\_{N,M}:=sup\_{T&lt;T\*}Σ\_{n≤N}(||Q\_n||\_{L¹H^M}+||∇Q\_n||\_{L¹H^{M−1}})  
    ≤C\_M^p(2^{N+1}−1)R\*\_{N,M}.                         (87)  
The velocity recurrence holds in L¹(I;H^{M−1}), including M=0. Indeed divergence-free transport is ∇·(V\_{n−a}⊗V\_a); multiplication puts the product in L¹H^M, while differentiation lowers it to H^{M−1}. The Laplacian of V\_n is L²H^{M−1}, hence L¹ on finite I, and the adjacent temporal row is in that space too.  

Restriction (Definition 4.10) deletes higher temporal rows and applies the canonical embeddings H^{M+1}→H^{M'+1}, H^{M−1}→H^{M'−1}, H^M→H^{M'}. Because the entries are fixed distributions, restriction in two stages equals direct restriction. Compatibility means literal equality of retained coordinates, not merely equality of their norms or existence of some compatible subsequence.  

## 7. Endpoint, pressure jet, and same-history restart (Section 5, pp.40–47)

Theorem 5.2 packages the compatible family and derivative-sum bound  
  ||u||\_{H^r(I;H^m)}²≤R\*\_{r,m}.                        (98)  
This is the same direct reading already given; it also agrees with the height reconstruction. Proposition 5.3 gives the zeroth endpoint via W^{1,1}, while Theorems 5.5–5.6 obtain quantitative traces for every row.  

### 7.1 Velocity traces [A from R]

Set  
  E\_{N,m}^{trace}=(1+T\*^{-1})^{1/2}(R\*\_{N,m})^{1/2}.     (108)  
The paper calls this E\_{N,m}; the superscript here avoids confusion with scalar energy E\_{r,s}.  
For n≤N, the adjacent trace lemma gives  
  V\_n∈C([0,T\*];H^m\_σ),  sup\_t||V\_n(t)||\_{H^m}≤E\_{N,m}^{trace}.  
The inequality follows from the trace bound and 2ab≤a²+b². Alternatively, integrating from the known initial jet gives  
  sup\_t||V\_n(t)||\_{H^m}²≤||V\_n(0)||\_{H^m}²  
                +2||V\_{n+1}||\_{L²H^{m−1}}||V\_n||\_{L²H^{m+1}}. (118)  
Spatial differentiation gives the J\_{n,α} statement by increasing m to m+|α|.  

At k≥m, the H^k-continuous representative embedded into H^m equals the H^m representative on the interior. By continuity this equality holds at T\*. Thus all endpoint traces are images of one distribution V\_n\*∈H^∞, and J\_{n,α}\*=∂^αV\_n\*. In particular u\*=V\_0\*∈H^∞\_σ.  

Use a sufficiently deeper finite rectangle to make V\_{n+1} continuous and bounded in H^m. The Bochner identity then gives the linear terminal modulus  
  ||V\_n(t)−V\_n\*||\_{H^m}≤(T\*−t)E\_{n+1,m}^{trace},        (114)  
with the corresponding mixed derivative bound at m+|α|. This is stronger than the elementary L²-derivative modulus (T\*−t)^{1/2}||V\_{n+1}||\_{L²(t,T\*;H^m)}. Every finite temporal derivative is continuous in every H^m and has derivative equal to the next row, so  
  u∈∩\_{a,m}C^a([0,T\*];H^m\_σ), ∂\_t^au(T\*)=V\_a\*.       (117)  

### 7.2 Pressure endpoint and recurrence [A/I from R]

Define  
  Q\_n\*=R\_iR\_jΣ\_a binom(n,a)V\_{a,i}\*V\_{n−a,j}\*.          (120)  
Using multiplication and the velocity trace bounds, the source gives  
  ||Q\_n\*||\_{H^s}≤9C\_s^{alg}2^n(E\_{n,s+1}^{trace})²,  
  ||Q\_n(t)−Q\_n\*||\_{H^s}≤9C\_s^{alg}2^{n+1}(T\*−t)(E\_{n+1,s+1}^{trace})². (121)–(122)  
The difference estimate writes a product difference as (V\_a(t)−V\_a\*)V\_{n−a}(t)+V\_a\*(V\_{n−a}(t)−V\_{n−a}\*). Apply the velocity modulus to one factor and the uniform bound to the other. Summing binomial coefficients gives 2^n; two product differences give the extra factor 2. Applying ∂^α yields Π\_{n,α}\*=∂^αQ\_n\* and (124)–(125).  

To pass momentum to the endpoint in a chosen H^q, take V\_n convergence in H^{q+2} for ΔV\_n, velocity factors in H^{q+2} for transport, and Q\_n convergence in H^{q+1} for ∇Q\_n. This proves  
  V\_{n+1}\*=νΔV\_n\*−Σ\_a binom(n,a)(V\_a\*·∇)V\_{n−a}\*−∇Q\_n\* in H^q. (126)  
The endpoint jet is unique among families rooted at u\* satisfying these normalized pressure and velocity recurrences. The recurrence determines Q\_0\*, then V\_1\*, then Q\_1\*, then V\_2\*, and so on. This is uniqueness of the recurrence jet, separate from uniqueness of an evolution.  

Interior ∂\_tQ\_n=Q\_{n+1} and continuity allow  
  Q\_n(t)−Q\_n(s)=∫\_s^tQ\_{n+1}(τ)dτ  
through the endpoint. Hence p∈∩\_{a,m}C^a([0,T\*];H^m), with ∂\_t^ap(T\*)=Q\_a\*.  

### 7.3 Actual overlap and gluing [A from R]

Let δ0=min{1,c\_ν(1+E\_{0,3}^{trace})^{-2}}&gt;0. All late slices u(t0) and u\* have H³ norm ≤E\_{0,3}^{trace}, so local theory gives a solution w^{t0} on [t0,t0+δ0] and w\* on [T\*,T\*+δ0]. Choose t0&gt;T\*−δ0/2.  

For every b&lt;T\*, restriction admits u and w^{t0} to M³\_ν(t0,b;u(t0)); uniqueness gives equality up to T\*. Continuity then gives w^{t0}(T\*)=u\*. Restricting w^{t0} and w\* to [T\*,t0+δ0] puts them in the same shifted class, so they agree on a positive right overlap. This is Lemma 5.7’s concrete same-history identification, not just matching a formal jet.  

The right jet W\_n^+=∂\_t^nw\*(T\*), P\_n^+=∂\_t^nq\*(T\*) obeys exactly the endpoint recurrence and has W\_0^+=u\*. Induction gives W\_n^+=V\_n\*, P\_n^+=Q\_n\*. Define the extension by u on the left and w\* on the right, at least to T\*+δ0/2. All one-sided time derivatives match in every finite H^m, and Sobolev embedding gives joint C∞ regularity. The equation holds at T\* by the limiting recurrence. Overlap uniqueness also identifies the joined pair near T\* with the one local history w^{t0}. It is therefore an extension in Definition 3.2’s exact sense, contradicting finite maximality.  

Theorem 5.10 states the global conclusion resulting from this chain [R-dependent]: a unique pressure-normalized smooth pair on [0,∞), exact kinetic-energy equality, bounded L² energy, and uniqueness on each finite interval in M³\_ν(0,T;u0). Pressure tends to zero at spatial infinity because sufficient H^s regularity gives an integrable Fourier transform and hence a C\_0 representative.  

## 8. What the matrices do (Section 6, pp.47–49)

The manuscript introduces matrices after the completed intersection and endpoint argument. They reorganize existing rows; they are not a separate earlier existence mechanism.  

Let κ=(n,α), λ=(a,β), λ≼κ iff a≤n, β≤α, and binom(κ,λ)=binom(n,a)binom(α,β). Set J\_κ=J\_{n,α}. The operator blocks are  
  L(J)\_{κ,λ}=binom(κ,λ)P[(J\_{κ−λ}·∇)·] if λ≼κ, and 0 otherwise. (144)  
Multiplying by J and replacing λ by κ−λ yields  
  [L(J)J]\_κ=Σ\_{λ≼κ}binom(κ,λ)P[(J\_λ·∇)J\_{κ−λ}].      (145)  
Thus  
  J\_{n+1,α}+[L(J)J]\_κ=νΔJ\_κ,  
  Π\_κ=R\_iR\_jΣ\_{λ≼κ}binom(κ,λ)J\_{λ,i}J\_{κ−λ,j}.         (146)–(147)  
Order Γ=N0×N0³ by n+|α|; the array is block lower triangular. Each row has (n+1)∏\_j(α\_j+1) supported blocks, so row action is a finite sum. Its entries still depend on the unknown/current history J and contain spatial differential operators.  

Normalize by κ!=n!α! and set Ĵ\_κ=J\_κ/κ!, Π̂\_κ=Π\_κ/κ!. Since binom(κ,λ)λ!(κ−λ)!=κ!, diagonal conjugation removes binomial factors on every finite downward-closed truncation:  
  D^{-1}L(DĴ)D=L̂(Ĵ),  
  L̂(Ĵ)\_{κ,λ}=P[(Ĵ\_{κ−λ}·∇)·].  
The normalized recurrence is  
  (n+1)Ĵ\_{n+1,α}+Σ\_{λ≼κ}(Ĵ\_λ·∇)Ĵ\_{κ−λ}+∇Π̂\_κ=νΔĴ\_κ,  
  Π̂\_κ=R\_iR\_jΣ\_{λ≼κ}Ĵ\_{λ,i}Ĵ\_{κ−λ,j}.                 (149)–(150)  
It has convolution form in index differences. Factorial normalization alone asserts no analytic-series convergence or infinite-matrix boundedness.  

The object matrix has rows (V\_n,V\_{n+1},Q\_n), 0≤n≤N. The norm matrix has rows  
  (G\_{n,M+1},G\_{n+1,M−1},P\_{n,M}),  
  G\_{n,m}=||V\_n||\_{L²(0,T;H^m)},  
  P\_{n,M}=||Q\_n||\_{L¹H^M}+||∇Q\_n||\_{L¹H^{M−1}}.  
The Frobenius norm squared of its first two columns is exactly R\_{N,M}; the sum of the third column is Q\_{N,M}. The first two entries in each row are the trace stencil  
  L²H^{M+1} for V\_n + L²H^{M−1} for ∂\_tV\_n → C\_tH^M for V\_n.  
For integer m,  
  G\_{n,m}²=Σ\_{|α|≤m}m!/[(m−|α|)!α!]||J\_{n,α}||\_{L²\_{t,x}}². (155)  
Thus the Sobolev matrix measures the underlying mixed-index array exactly. The closed estimate matrix replaces each time-restricted entry by its full-I norm; entrywise monotonicity and the Frobenius identity give (157)–(158). Its finiteness uses the producer output.  

These three matrices must not be conflated. L(J) is a nonlinear operator-valued array. The object matrix consists of fields. The scalar estimate matrix consists of norms and budgets. The relation A≼\_entB in Propositions 6.3 and 16.3 is entrywise order of nonnegative scalar matrices, not positive-semidefinite/Loewner order. The norm matrices here are not Gram matrices of inner products. A separate Gram construction requires its own definition and cannot be imported into these chapters.  

## 9. Quantitative consequences and H¹ completion (Section 7, pp.50–65)

### 9.1 What “completion in H¹” means here [A from global conclusion]

Theorem 7.1 extends the datum class from H^∞\_σ to H¹\_σ by local strong construction and positive-time smoothing, then joins to the H^∞ global history. This “completion” is distinct from completing an energy height by subtracting production terms, or completing a record by retaining pressure.  

Set Y=||∇u||₂², Z=||Δu||₂². Pairing with −Δu gives  
  (1/2)Y'+νZ=Re⟨(u·∇)u,Δu⟩.  
The chain ||u||₆≤S(6)Y^{1/2}, ||∇u||₃≤S(6)^{1/2}Y^{1/4}Z^{1/4} and Young give  
  Y'+νZ≤c1ν^{-3}Y³, c1=(27/16)S(6)^6.                 (161)  
For τ\_ν(a)=min{1,ν³/[4c1(1+||∇a||₂²)²]}, the scalar comparison yields a uniform local Y bound and finite ∫Z.  

The actual approximation is J\_k, the orthogonal Fourier projection to |ξ|≤k, in  
  u\_t^{(k)}−νΔu^{(k)}=−J\_kP∇·(u^{(k)}⊗u^{(k)}), u^{(k)}(0)=J\_ka.  
On its bandlimited range the vector field is locally Lipschitz in H¹. The kinetic identity and ||z||\_{H¹}²≤(1+k²)||z||₂² give global existence for each regularized trajectory. The displayed local estimate is uniform in k. The nonlinear estimate ||P∇·(u⊗u)||₂≤S(6)^{3/2}Y^{3/4}Z^{1/4} gives a local L²\_tL²\_x bound, hence the same for u\_t^{(k)}. Weak compactness and Aubin–Lions on each spatial ball, with diagonal extraction, give a local strong limit in L²\_tH¹\_x(B\_R), sufficient to pass the quadratic term distributionally. The time-integrated equation fixes the weak trace as a. The adjacent/Lions–Magenes trace gives C\_tH¹ with that trace; variation of constants gives the mild formulation and the energy equality is legitimate.  

For two strong H¹ solutions the L² difference estimate and a one-derivative-higher estimate give uniqueness and stability. In particular,  
  d||∇(u−v)||₂²/dt+ν||Δ(u−v)||₂²  
    ≤(C\_st/ν)(||∇u||₃²+||∇v||₃²)||∇(u−v)||₂².         (169)  
The coefficient is time integrable by ||∇u||₃²≤S(6)||∇u||₂||Δu||₂.  

The source invokes its cited quantitative H¹ local theory and positive-time regularity on windows satisfying h||b||\_{H¹}^4≤c0ν³. Cover [ε,S] by such windows, whose size is fixed from the finite CH¹ norm, and obtain every finite spatial order uniformly on [ε,S]. The equation recovers temporal/pressure rows. At t0&gt;0 the trace lies in H^∞\_σ; Theorem 5.10 then supplies the global smooth history from that datum. Uniqueness joins it to the H¹ local solution. The resulting class is CH¹\_σ∩L²\_locH²\_σ on [0,∞), smooth for positive time. Its global step depends on Theorem 5.10, not conversely.  

### 9.2 Exact majorants rather than independent closed-form datum estimates [D/A]

For a finite horizon T (strict, or hypothetical terminal), define  
  B\_{N,M}=inf{B≥0:R\_{N,M}(u;S)≤B for every 0&lt;S&lt;T},  
  P\_{N,M}=1+B\_{N,M}, T\_{N,M}=(1+T^{-1})^{1/2}P\_{N,M}^{1/2}. (173)–(186)  
The manuscript uses P and T in calligraphic typography; they are scalar majorants, not pressure p or time. B\_{N,M} is the exact minimal norm bound of the one fixed history, equal to the terminal integral by monotone convergence. It is not a supremum over all solutions. Thus a quantitative consequence “in terms of B\_{N,M}” need not be an explicit formula in finitely many datum norms.  

Write A\_m=2C\_m^{alg}; then  
  ||R\_iR\_j(v\_iw\_j)||\_{H^m}+||P∇·(v⊗w)||\_{H^{m−1}}  
       ≤A\_m||v||\_{H^{m+1}}||w||\_{H^{m+1}},  
and the same bound holds with pressure-gradient norm in place of the projected transport norm. The canonical recursions are  
  D\_{0,m}=||u0||\_{H^m},  
  D\_{n+1,m}=νD\_{n,m+2}+A\_{m+1}Σ\_a binom(n,a)D\_{a,m+2}D\_{n−a,m+2};  
  Y\_{0,0}=||u0||₂,  
  Y\_{0,m}=min{(1+T^{-1})^{1/2}B\_{0,m}^{1/2}, ||u0||\_{H^m}+T^{1/2}B\_{0,m+1}^{1/2}}, m≥1,  
  Y\_{n+1,m}=νY\_{n,m+2}+A\_{m+1}Σ\_a binom(n,a)Y\_{a,m+2}Y\_{n−a,m+2}. (187)–(191)  
D bounds the initial jet; Y bounds the row uniformly in time. The two Y base estimates are respectively the adjacent trace and the Bochner identity from initial time.  

For m≥−1, m\_+=max(m,0), μ(m)=max(m−1,0), set  
  X̃\_{n,m}=min{T^{1/2}Y\_{n,m\_+}, B\_{n,μ(m)}^{1/2}}.  
Use X=X̃ except improve X\_{0,0} by min with T^{1/2}||u0||₂ and X\_{0,1} by min with (T+1/(2ν))^{1/2}||u0||₂. Finally  
  Z\_{n,m}=min{Y\_{n,m},(1+T^{-1})^{1/2}B\_{n,m}^{1/2},D\_{n,m}+T^{1/2}X\_{n+1,m}}. (192)–(196)  
These bound ||V\_n||\_{L²H^m} by X and sup||V\_n||\_{H^m} by Z. They collect different valid estimates; the minimum preserves all of them. Negative order m=−1 is handled by H⁰→H^{-1}.  

Pressure bounds follow by choosing L² or L∞ time norms for the two factors:  
  Q^{(1)}\_{n,m}=A\_mΣ\_a binom(n,a)X\_{a,m+1}X\_{n−a,m+1},  
  Q^{(2)}\_{n,m}=A\_mΣ\_a binom(n,a)min{Z\_{a,m+1}X\_{n−a,m+1},X\_{a,m+1}Z\_{n−a,m+1}},  
  Q^{(∞)}\_{n,m}=A\_mΣ\_a binom(n,a)Z\_{a,m+1}Z\_{n−a,m+1},  
  Q^{(mod)}\_{n,m}=A\_mΣ\_a binom(n,a)(X\_{a+1,m+1}Z\_{n−a,m+1}+Z\_{a,m+1}X\_{n−a+1,m+1}). (223)–(226)  
The last controls a 1/2-Hölder time modulus by integrating the adjacent derivative of a factor.  

### 9.3 Height coordinates recover each finite rectangle quantitatively [A]

Let H\_m=(1/2)||Λ^{m+1/2}u||\_{L²\_tL²\_x}² and S\_m²=2^m(T||u0||₂²+2H\_m). Then ||u||\_{L²H^m}≤S\_m. A Lebesgue time t\_m has ||u(t\_m)||\_{H^m}≤T^{-1/2}S\_m. Integrating the original projected equation from t\_m gives  
  A^v\_{0,m}=T^{-1/2}S\_m+νT^{1/2}S\_{m+2}+A\_{m+1}S\_{m+2}².  
Define  
  A^p\_{n,m}=A\_mΣ\_a binom(n,a)A^v\_{a,m+1}A^v\_{n−a,m+1},  
  A^v\_{n+1,m}=νA^v\_{n,m+2}+A\_{m+1}Σ\_a binom(n,a)A^v\_{a,m+2}A^v\_{n−a,m+2}. (208)–(210)  
These bound the continuous velocity and pressure rows. With M\_−=max(M−1,0),  
  B\_{N,M}≤TΣ\_{n≤N}[(A^v\_{n,M+1})²+(A^v\_{n+1,M\_−})²],  
  Q\_{N,M}≤TΣ\_{n≤N}A^p\_{n,M}.                           (213)–(216)  
The finite dependency reaches only H\_q and A\_q for q≤M+2N+4. This explicitly demonstrates that the height-to-mixed return is finite at any prescribed target rectangle. The H\_q are still exact coordinates of the given history.  

### 9.4 Mixed estimates, frequency tails, and restart [A]

For J=J\_{n,α}, n≤N, its adjacent pair is bounded by P\_{N,s+|α|}, its trace by T\_{N,s+|α|}, and its time differences by  
  ||J(t)−J(r)||\_{H^{s−1}}≤|t−r|^{1/2}P\_{N,s+|α|}^{1/2},  
  ||J(t)−J(r)||\_{H^s}≤|t−r|^{1/2}P\_{N,s+|α|+1}^{1/2}.  (227)–(230)  
Interpolation gives the H^{s−θ} bound 2^{1−θ}T\_{N,s+|α|}^{1−θ}P\_{N,s+|α|}^{θ/2}|t−r|^{θ/2}. Sobolev embedding of the finite spatial row gives every requested finite mixed L^a\_tW^{k,b}\_x norm by choosing q&gt;k+3/2−3/b. Pressure obeys the corresponding product bounds and moduli. The closed scalar matrix bounds each row by (X\_{n,M+1},X\_{n+1,M−1},Q^{(1)}\_{n,M}).  

For the high-frequency multiplier 1\_{|ξ|≥K}, K≥1,  
  ||P\_{≥K}h||\_{H^s}≤K^{-r}||h||\_{H^{s+r}}.  
Applying this to a fixed higher rectangle gives all the velocity/pressure tail estimates (246)–(249). A Littlewood–Paley shell sum with weights 2^{σj} and k derivatives is controlled by one H^M norm whenever M&gt;σ+k+3/2: Bernstein gives 2^{(σ+k+3/2)j}||Δ\_jh||₂, and Cauchy–Schwarz sums 2^{−(M−σ−k−3/2)j}. This is a sum over frequency shells at one chosen order, not over all Sobolev orders.  

Critical energies satisfy sup\_tE\_{j+1/2}≤T\_{0,j+1}²/2 and ∫E\_{j+1/2}≤P\_{0,j}/2. The high-frequency energy tail gets K^{2j+1−2m} for integer m&gt;j+1/2. The contraction formula for H^{(k)} and time Cauchy–Schwarz give ||H^{(k)}||\_{L¹}≤2^{k−1}P\_{k,0}; using u\_t from an appropriate low rectangle gives ||H'||₁≤P\_{0,2}/2. The identity P\_{1/2}=H'+ν||Λ^{3/2}u||₂² then bounds full critical production. These estimates retain its actual value rather than declare its sign.  

Two especially useful consequences are  
  ||u||\_{L²\_tL∞\_x}≤S\_{2,0,∞}P\_{0,1}^{1/2},  
  ∫\_0^T||∇u||∞dt≤S\_{3,1,∞}T^{1/2}P\_{0,2}^{1/2}.       (263)–(264)  
The commutator and Gronwall yield the high H^m bound (267). The explicit endpoint lifespan in Theorem 7.17 is δ\_qc=min{1,c\_ν(1+Z\_{0,3})^{-2}}&gt;0, with local X\_δ norm ≤2L\_νZ\_{0,3} and higher-order bounds obtained by the same commutator over this restart interval.  

Viscosity scaling (Proposition 7.6) is amplitude/time scaling, not spatial Navier–Stokes scaling: v(s,x)=ν^{-1}u(s/ν,x), q=ν^{-2}p(s/ν,x), a=u0/ν. Then V\_n(t)=ν^{n+1}Ṽ\_n(νt), Q\_n(t)=ν^{n+2}Q̃\_n(νt). The two velocity columns in B acquire factors ν^{2n+1} and ν^{2n+3} after changing time variable. Pressure L¹ norms acquire ν^{n+1}. The maximal shifted H³ lifespan transforms exactly by ν^{-1}.  

## 10. Three-dimensional applications and their dependency order (Section 8, pp.65–79)

### 10.1 The separate explicit small-critical mechanism

Let B(u)=P∇·(u⊗u). Squaring u\_t=−νΛ²u−B(u) at order −1/2 and cancelling the cross term with ν times the critical energy derivative gives  
  ν d||u||\_{Ḣ^{1/2}}²/dt+ν²||u||\_{Ḣ^{3/2}}²+||u\_t||\_{Ḣ^{-1/2}}²  
    =||B(u)||\_{Ḣ^{-1/2}}².                             (274)  
The crucial estimate is a concrete nonlinear estimate, not dropping the nonlinear row:  
  ||B(u)||\_{Ḣ^{-1/2}}≤S(3)||(u·∇)u||\_{3/2}  
       ≤S(3)||u||₃||∇u||₃≤C\_src||u||\_{Ḣ^{1/2}}||u||\_{Ḣ^{3/2}},  
  C\_src=S(3)^3=1/(sqrt(2)·π).                                (283)  
If a\_c=||a||\_{Ḣ^{1/2}}&lt;ν/C\_src=sqrt(2)·π·ν, let δ\_c=ν²−C\_src²a\_c²&gt;0. A first-exit argument retains ||u(t)||\_{Ḣ^{1/2}}≤a\_c; hence  
  ν||u(t)||\_{Ḣ^{1/2}}²+δ\_c∫\_0^t||u||\_{Ḣ^{3/2}}²+∫\_0^t||u\_t||\_{Ḣ^{-1/2}}²≤νa\_c². (278)  
The sign is supplied by the stated smallness hypothesis. The source separately proves homogeneous commutators  
  |⟨Λ^mB(u),Λ^mu⟩|≤K\_m^{hom}||u||\_{Ḣ^{3/2}}||u||\_{Ḣ^m}||u||\_{Ḣ^{m+1}},  
with K\_m^{hom}=3^mΣ\_{ℓ=1}^mbinom(m,ℓ)S(p\_{m,ℓ})S(q\_{m,ℓ}). Complementary interpolants between orders 3/2 and m+1 determine those exponents. Young and the finite ∫||u||\_{Ḣ^{3/2}}² give  
  ||u(t)||\_{Ḣ^m}²+ν∫\_0^t||u||\_{Ḣ^{m+1}}²  
       ≤||a||\_{Ḣ^m}² exp((K\_m^{hom})²a\_c²/δ\_c).         (281)  
Taking m=3 yields a uniform restart time and independently excludes a finite maximal time under this smallness condition. This unforced small-data proof starts from local theory, rather than taking the general global theorem as its starting point.  

Its finite-row recursions yield explicit bounds in finitely many datum norms: both velocity columns at (N,M) require at most datum order M+2N+1, in addition to the L² and critical norm. This is stronger in data-explicitness than the general exact-history B\_{N,M} notation, and has a narrower small-data hypothesis.  

### 10.2 Low-scale, vorticity, and flow consequences

Theorem 5.10’s global history gives the low-rectangle norms L∞\_tL³\_x, L²\_tL∞\_x, L²\_tW^{1,3}\_x. Once uniform velocity U\_T and pressure P\_T are obtained, a parabolic cylinder of radius ρ has volume (4π/3)ρ⁵; therefore  
  ρ^{-2}∫∫\_{Q\_ρ}(|u|³+|p|^{3/2})≤(4π/3)ρ³(U\_T³+P\_T^{3/2})→0.  
The manuscript explicitly calls this post-regularity scale-content extinction, not an epsilon-regularity input used to prove the rectangle producer.  

Curl gives ω\_t+(u·∇)ω=(ω·∇)u+νΔω. Pair with |ω|^{r−2}ω, justified first with spatial cutoff and (|ω|²+ε)^{(r−2)/2}ω. The annular cutoff errors vanish by existing finite Sobolev tails, and Fatou handles the nonnegative diffusion. The result is  
  (1/r)d||ω||\_r^r/dt+[4ν(r−1)/r²]||∇|ω|^{r/2}||₂²≤||∇u||∞||ω||\_r^r. (306)  
With L\_T^ω= S\_{3,1,∞}T^{1/2}X\_{0,3}, Gronwall gives sup||ω||\_r≤e^{L\_T^ω}||ω0||\_r and the stated dissipation bound. Letting r→∞ uses L²∩L∞ membership.  

For X\_t=u(t,X), finite ∫||u||∞ prevents spatial escape and finite ∫||∇u||∞ gives forward and backward uniqueness and bi-Lipschitz estimates:  
  |X(t,a)−a|≤D\_T,  
  e^{−L\_T}|a−b|≤|X(t,a)−X(t,b)|≤e^{L\_T}|a−b|,  
  det D\_aX=1.  
Here D\_T=S\_{2,0,∞}T^{1/2}X\_{0,2}, L\_T=S\_{3,1,∞}T^{1/2}X\_{0,3}. Higher spatial derivatives give smoothness. Jacobi’s formula and div u=0 give the determinant. These material-flow statements follow from the Eulerian rectangle estimates; they do not redefine V\_n as material derivatives.  

### 10.3 Weak–strong uniqueness with actual admissible tests

The source states a whole-space Leray–Hopf class v∈C\_wL²\_σ∩L∞L²\_σ∩L²Ḣ¹\_σ, strong initial L² trace, distributional pressure, and energy inequality at each t. It then builds compact solenoidal approximations to the smooth history, rather than inserting a noncompact u directly into the weak formulation.  

For a cutoff χ\_R, div(χ\_Rf)=g\_R=∇χ\_R·f has mean zero. The manuscript constructs a compact anti-divergence explicitly by subtracting successive one-dimensional marginals. For h supported in B₂ with ∫h=0, set m1(y2,y3)=∫h(s,y2,y3)ds and m2(y3)=∫m1(s,y3)ds, choose ∫ρ=1, and define  
  (Gh)\_1=∫\_{−∞}^{y1}[h(s,y2,y3)−ρ(s)m1(y2,y3)]ds,  
  (Gh)\_2=ρ(y1)∫\_{−∞}^{y2}[m1(s,y3)−ρ(s)m2(y3)]ds,  
  (Gh)\_3=ρ(y1)ρ(y2)∫\_{−∞}^{y3}m2(s)ds.  
Differentiating telescopes to div Gh=h; the zero integral of each integrand gives compact support. Scaling G\_Rg=R[G(g(R·))\](x/R) gives derivative bounds. Then S\_Rf=χ\_Rf−G\_Rg\_R is compact, smooth and solenoidal, converges in each retained finite W^{r,p} norm, and is uniformly bounded. Its time independence makes it commute with ∂\_t. Uniform convergence on the compact ranges of u and u\_t yields admissible time-dependent approximations.  

The weak energy class interpolates to v∈L⁴\_tL³\_x, so v⊗v∈L²\_tL^{3/2}\_x. The approximation converges in W^{1,1}\_tL²\_x∩L²\_tH¹\_x∩L²\_tW^{1,3}\_x∩C\_tL²\_x, permitting every term in the weak test. Time cutoffs then give, for w=v−u,  
  ⟨v(t),u(t)⟩=⟨v0,u0⟩+∫\_0^t∫(w·∇u)·w−2ν∫\_0^t⟨∇v,∇u⟩. (320)  
Combining with the weak energy inequality and strong equality yields  
  (1/2)||w(t)||₂²+ν∫||∇w||₂²≤(1/2)||w0||₂²−∫∫(w·∇u)·w.  
Bound the last term by ||∇u||∞||w||₂² and apply Gronwall. A second estimate integrates by parts and uses ||u||∞||w||₂||∇w||₂, giving an exponent ν^{-1}∫||u||∞² with half the dissipation retained. Both exponent integrals are controlled by finite low rectangles. Equal initial data make the right-hand side zero.  

Once velocities agree, subtracting momentum gives ∇(q−p)=0. A distribution with zero spatial gradient on the product domain is c(t), so q=p+c(t); C\_0 spatial representatives remove c(t). This pressure gauge statement is distinct from the normalized classical pressure’s uniqueness. Section 9 summarizes the chain without adding another producer.  

## PART II IN SOURCE ORDER

## 11. What is changed by forcing (Sections 10–11, pp.80–84)

The prescribed datum is now the triple (u0,ν,f), with ν&gt;0, u0∈H^∞\_σ and f∈C∞([0,∞);S(R³;R³)). This is smoothness in the Schwartz topology at every time, so each finite time interval gives bounded spatial Schwartz seminorms of each finite temporal derivative. It does not impose an all-time integrable source stock. The general theorem is not obtained by inserting f into an unforced history: the entire velocity history and all its jet rows are constructed for this one forced triple.  

Set g=Pf and Φ\_n=(−Δ)^{-1}div F\_n, F\_n=∂\_t^nf. Then  
  u\_t+P∇·(u⊗u)−νΔu=g,  
  p=R\_iR\_j(u\_iu\_j)−Φ\_0,  
  −Δp=∂\_i∂\_j(u\_iu\_j)−div f.  
The force is retained in both projections: Pf drives velocity; the gradient component occurs in −Φ\_0. Since ∇Φ\_0=−(I−P)f, the gradient of −Φ\_0 is +(I−P)f, which is the required sign in the unprojected momentum balance.  

Under Navier–Stokes spatial/time scaling, the full source scales as f\_λ(t,x)=λ³f(λ²t,λx). This identifies the same critical spatial height 1/2; it does not change the prescribed f within a fixed argument.  

Section 11 presents both the energy-pairing identity and squared momentum identity in advance. For B\_n=Σ\_a binom(n,a)(V\_a·∇)V\_{n−a},  
  V\_{n+1}+B\_n+∇Q\_n=νΔV\_n+F\_n.                         (328)  
Projecting gives  
  Λ^sV\_{n+1}+νΛ^{s+2}V\_n=Λ^sP(F\_n−B\_n).               (B)/(410)  
The nonlinearity remains part of this same row; “source” on this right side is not an independent known forcing unless its B\_n factor has already been controlled. The source’s later complete-equation estimates explicitly choose both factors from the same rectangle.  

## 12. Forced analytic framework and local solution (Section 12, pp.84–96)

All Fourier conventions, multiplication estimates, mixed Leibniz identities, trace lemma and commutator are repeated with the same mechanisms as Section 2. The genuinely new analytic map is the force-pressure potential.  

### 12.1 Low-frequency pressure potential [A]

If h∈L¹(R³)∩H^m(R³;R³), then  
  ||(−Δ)^{-1}div h||\_{H^m}≤C\_m^{fp}(||h||\_{L¹}+||h||\_{H^m}). (333)  
Its multiplier has magnitude ≤|ξ|^{-1}. At |ξ|≤1, |ĥ|≤(2π)^{-3/2}||h||₁ and ∫\_{|ξ|≤1}|ξ|^{-2}dξ=4π&lt;∞ in dimension three. At |ξ|&gt;1 the multiplier is at most one, so the H^m norm is controlled by ||h||\_{H^m}. This is why the force’s spatial L¹ control, supplied by Schwartz regularity, matters even though P itself is bounded on H^m. The argument also applies to every mixed derivative F\_{n,α} and to differences in time. Hence Φ\_n∈C∞([0,∞);H^m) for each n,m and ∂\_tΦ\_n=Φ\_{n+1}.  

### 12.2 The shifted forced class keeps absolute time [D/A]

M³\_{ν,f}(s,b;a) consists of w∈C([s,b];H³\_σ), q∈C([s,b];H³), w(s)=a, with  
  q(t)=R\_iR\_j(w\_i(t)w\_j(t))−(−Δ)^{-1}div f(t),  
  w(t)=e^{ν(t−s)Δ}a+∫\_s^te^{ν(t−r)Δ}Pf(r)dr  
                    −∫\_s^te^{ν(t−r)Δ}P∇·(w⊗w)(r)dr.   (346)–(348)  
Restriction preserves f(r) at its original time r. If the proof translates the initial time to zero, its source is r↦f(s+r), not r↦f(r) with its clock reset.  

The same linear estimate has forcing F∈L²H² and norm bound L\_ν(||a||H³+||F||L²H²). Put  
  Γ\_s=||Pf||\_{L²(s,s+1;H²)},  
  δ\_{ν,f}(s,a)=min{1,c\_ν(1+||a||H³+Γ\_s)^{-2}}.  
On the translated interval let B0=||a||H³+Γ\_s and R=2L\_νB0. The affine heat trajectory e^{νtΔ}a+∫e^{ν(t−r)Δ}g(s+r)dr belongs to the ball. The same quadratic estimates and δ^{1/2} factor yield invariance and contraction ≤1/2. If B0=0 both datum and projected force vanish there and w=0. Uniqueness between arbitrary members of M³\_{ν,f} is proved by subdivision as before: the common prescribed force cancels from the difference, and the common force potential cancels from the pressure difference.  

For high-order persistence, use cutoff datum and cutoff g in the same fixed-point map. The source’s counterpart of (35) is  
  sup\_t(||w^{(k)}(t)||H^m²+2ν∫\_0^t||∇w^{(k)}||H^m²)  
   ≤e^{δ+2K\_mC\_{∇,3}δR}(||a||H^m²+||g||\_{L²(0,δ;H^m)}²). (359)  
The extra e^δ comes from estimating the source pairing by norm squares. The base H³ bound still controls the Lipschitz integral uniformly in k. Strong X\_δ convergence now includes the error ||(S\_k−I)g||L²H². Weak high-order limits identify the same solution; the trace lemma gives continuity.  

The temporal persistence induction now uses  
  Q\_n=R\_iR\_jΣ\_a binom(n,a)W\_{a,i}W\_{n−a,j}−Φ\_n,  
  W\_{n+1}=νΔW\_n−Σ\_a binom(n,a)(W\_a·∇)W\_{n−a}−∇Q\_n+F\_n.  
All Fn are known smooth source rows and all Φn belong to the requested Sobolev spaces, so the same all-orders induction works. Again this is a local construction on its explicit δ, not by itself a whole-terminal result.  

## 13. Forced jet, pressure budget, finite graph, and producer (Section 13, pp.97–105)

### 13.1 Definition and exact recurrences [D/I]

Definition 13.2 fixes all fields as one maximal history of the same triple. Strict intervals satisfy ∂\_t^nu∈CH^m\_σ and ∂\_t^np∈CH^m for all finite n,m. Maximality excludes an extension with the same u0,ν,f. Put F\_{n,α}=∂\_x^α∂\_t^nf. The exact rows (368)–(372) are  
  Q\_n=R\_iR\_jΣ\_a binom(n,a)V\_{a,i}V\_{n−a,j}−Φ\_n,  
  V\_{n+1}=νΔV\_n−Σ\_a binom(n,a)(V\_a·∇)V\_{n−a}−∇Q\_n+F\_n,  
  Π\_{n,α}=R\_iR\_jΣ\_{a,β}binom(n,a)binom(α,β)J\_{a,β,i}J\_{n−a,α−β,j}−∂\_x^αΦ\_n,  
  J\_{n+1,α}+Σ\_{a,β}binom(n,a)binom(α,β)(J\_{a,β}·∇)J\_{n−a,α−β}  
               +∇Π\_{n,α}=νΔJ\_{n,α}+F\_{n,α},  
  div J\_{n,α}=0.  
Every temporal derivative of forcing appears in its own corresponding row. The normalized pressure includes the full force-potential coordinate at the same order.  

At t=0 the initial jet is  
  A0=u0,  
  P\_n=R\_iR\_jΣ\_a binom(n,a)A\_{a,i}A\_{n−a,j}−(−Δ)^{-1}div F\_n(0),  
  A\_{n+1}=νΔA\_n−Σ\_a binom(n,a)(A\_a·∇)A\_{n−a}−∇P\_n+F\_n(0). (373)–(375)  
The pressure-potential estimate and Schwartz initial Fn supply all finite Sobolev orders. This remains a triangular initial recurrence, now with prescribed affine rows.  

### 13.2 Conditional finite-row pressure estimates [A]

Define  
  F^p\_{n,α,M}(I)=||∂\_x^αΦ\_n||\_{L¹(I;H^M)}+||∇∂\_x^αΦ\_n||\_{L¹(I;H^{M−1})}. (376)  
For a finite I it is finite by (333). The same product calculation as in Theorem 3.8 gives  
  ||Q\_n||L¹H^M+||∇Q\_n||L¹H^{M−1}  
    ≤C\_M^pΣ\_a binom(n,a)||V\_a||L²H^{M+1}||V\_{n−a}||L²H^{M+1}+F^p\_{n,0,M}(I). (377)  
The mixed pressure estimate has the complete double sum and adds F^p\_{n,α,M}. Symmetry collapses its nonlinear part to C\_M^p2^{n+|α|}Σ\_{a,β}||J\_{a,β}||². The added pressure budget is not a substitute for controlling the velocity factors; it controls the added affine pressure coordinate of f.  

### 13.3 Strict-horizon construction [A]

Theorem 13.9 explicitly distinguishes strict horizons. For each T&lt;T\*, apply local construction and persistence to any finite family {∂\_t^n∂\_x^αu:0≤n≤r,|α|≤m}, with its initial face. On compact [0,T], finitely many local intervals cover it and uniqueness identifies overlaps. The finite derivative-sum gives u∈H^r((0,T);H^m\_σ). All finite r,m give the strict-horizon intersection (382). This identifies rows of the one history. Its constants may depend on T; Theorem 13.10 is stated separately for the whole-terminal output.  

### 13.4 Complete dependency cover and source payment [D/I/A]

For a selected (n,α), retain the same temporal, viscous, transport, pressure and pressure-product coordinates as in Part I. Add F\_{n,α} to momentum. For every γ∈Γ\_α={α,α+e1,α+e2,α+e3}, add F\_{n,γ} to the normalized pressure formula  
  Π\_{n,γ}=R\_iR\_jΣ\_{a,β≤γ}binom(n,a)binom(γ,β)J\_{a,β,i}J\_{n−a,γ−β,j}  
                         −(−Δ)^{-1}div F\_{n,γ}.  
The finite retained equation is  
  𝓔\_{n,α}(J,Π;F)=J\_{n+1,α}+Σ\_{a,β}binom(n,a)binom(α,β)(J\_{a,β}·∇)J\_{n−a,α−β}  
                  +∇Π\_{n,α}−νΔJ\_{n,α}−F\_{n,α}=0.      (388)  
Every term belongs to the same forced history; this remains a dependency cover of selected equations rather than an autonomous truncation.  

The source pairing at middle order M is  
  2|⟨F\_n,V\_n⟩H^M|≤ν||V\_n||H^{M+1}²+ν^{-1}||F\_n||H^{M−1}². (389)  
Fourier Cauchy–Schwarz pairs A^{M−1}F\_n with A^{M+1}V\_n; Young gives the displayed coefficients. The manuscript calls this the source payment and describes the first term as absorbed by the same row’s viscous dissipation. The force term integrates finitely over [0,T\*]. Every retained force-pressure coordinate has its finite F^p budget. This controls the added affine coordinates; the velocity-product face remains explicitly in the graph.  

### 13.5 Forced producer and exact norm reading [R/A]

The record is  
  𝓡\_{N,M}[u0,ν,f;T\*]=((V\_n)\_{0≤n≤N},(V\_{n+1})\_{0≤n≤N};(Q\_n)\_{0≤n≤N};(F\_n)\_{0≤n≤N}). (383)  
Theorem 13.10 states that the forced columnwise construction, given the prescribed triple, initial jet, complete graph, two projections and affine source payments, supplies  
  V\_n∈L²(I;H^{M+1}), V\_{n+1}∈L²(I;H^{M−1}), 0≤n≤N.     (384)  
As in Theorem 3.9, this is recorded here as the public-v1 producer output [R]. The source’s displayed proof lists these inputs, states the columnwise output, then takes its finite norm sum. It is not a reduction to or invocation of an unforced solution. This qualification concerns the public version cited here; it does not assess arguments in other versions.  

Once (384) is supplied,  
  C^f\_{N,M}=Σ\_{n≤N}(||V\_n||L²(I;H^{M+1})²+||V\_{n+1}||L²(I;H^{M−1})²)&lt;∞,  
and restriction plus monotone convergence give  
  sup\_{S&lt;T\*}R\_{N,M}(u;S)=R\_{N,M}(u;T\*)=C^f\_{N,M}.        (390)  
The force row itself lies in C([0,T\*];H^m), and the pressure estimates give L¹H^m for each mixed pressure row. Index deletion and embeddings preserve the literal derivatives of u,p,f, proving compatibility (387).  

Corollary 13.11 gives the direct mixed intersection by the finite derivative-sum norm, exactly as in Part I. Definition 13.12 adds a scalar force budget  
  F\_{N,M}(f;T)=Σ\_{n≤N}(||F\_n||L¹(0,T;H^{M−1})+F^p\_{n,0,M}(0,T)). (394)  
The scalar velocity rectangle is still the sum of just the two velocity columns; pressure/force budgets are separate scalar measurements of retained fields. Theorem 13.13 states its finite norm consequence (395)–(396).  

## 14. Forced completed heights and complete-equation square (Section 14, pp.106–113)

### 14.1 Low order includes actual work [I/A]

The energy identity is  
  (1/2)||u(t)||₂²+ν∫\_0^t||∇u||₂²=(1/2)||u0||₂²+∫\_0^t⟨f,u⟩. (397)  
Since u is solenoidal, ⟨f,u⟩=⟨Pf,u⟩. Applying this to the regularized square root (||u||₂²+ε)^{1/2} and taking ε→0 yields  
  ||u(t)||₂≤K\_f(t):=||u0||₂+∫\_0^t||Pf(s)||₂ds.  
Since ∫\_0^TK\_f(t)||Pf(t)||₂dt=(K\_f(T)²−||u0||₂²)/2,  
  ||u||L²(0,T;H¹)²≤(T+1/(2ν))K\_f(T)².                 (399)  
Unlike the unforced equation, the kinetic energy need not decrease, and the force work is not cancelled from the individual history.  

### 14.2 Completed row retains force work at every derivative [D/I]

Keep E\_{r,s} and P\_{r,s} as before, with the now forced Q\_r, and set  
  W\_{r,s}=Re⟨Λ^sV\_r,Λ^sF\_r⟩.                         (400)–(402)  
Then  
  ∂\_tE\_{r,s}=P\_{r,s}+W\_{r,s}−2νE\_{r,s+1},             (403)  
  ∂\_t^kE\_{r,s}=(−2ν)^kE\_{r,s+k}  
     +Σ\_{j=0}^{k−1}(−2ν)^j∂\_t^{k−1−j}(P\_{r,s+j}+W\_{r,s+j}). (407)  
For H=E\_{0,1/2}, abbreviate P\_s=P\_{0,s}, W\_s=W\_{0,s}. Then  
  R\_k=[H^{(k)}−Σ\_{j=0}^{k−1}(−2ν)^j∂\_t^{k−1−j}(P\_{j+1/2}+W\_{j+1/2})]/(−2ν)^k  
      =E\_{k+1/2}.                                     (408)–(409)  
For example,  
  H'=−2νE\_{3/2}+P\_{1/2}+W\_{1/2},  
  H''=4ν²E\_{5/2}−2ν(P\_{3/2}+W\_{3/2})+∂\_t(P\_{1/2}+W\_{1/2}).  
No source derivative is lost: directly expanding gives  
  ∂\_t^ℓW\_{r,s}=Σ\_{b=0}^ℓbinom(ℓ,b)Re⟨Λ^sV\_{r+b},Λ^sF\_{r+ℓ−b}⟩.  
The analogous expansion of P was given above and now includes force-dependent pressure/velocity rows. These are finite relationship identities evaluated on coordinates of a sufficiently high finite record.  

### 14.3 Viscous square and pressure orthogonality [I]

From the actual row,  
  a+b=Λ^sP(F\_n−B\_n), a=Λ^sV\_{n+1}, b=νΛ^{s+2}V\_n.  
The cross term is  
  2Re⟨a,b⟩=2νRe⟨Λ^s∂\_tV\_n,Λ^{s+2}V\_n⟩  
             =ν d||Λ^{s+1}V\_n||₂²/dt.  
Thus  
  ||Λ^sV\_{n+1}||₂²+ν²||Λ^{s+2}V\_n||₂²+ν d||Λ^{s+1}V\_n||₂²/dt  
      =||Λ^sP(F\_n−B\_n)||₂².                           (411)  
The complementary projection gives ∇Q\_n=(I−P)(F\_n−B\_n). Orthogonality recombines the full right side:  
  ||Λ^sV\_{n+1}||₂²+ν²||Λ^{s+2}V\_n||₂²+||Λ^s∇Q\_n||₂²  
      +ν d||Λ^{s+1}V\_n||₂²/dt=||Λ^s(F\_n−B\_n)||₂².      (412)  
Integrate from 0 to S&lt;T\*:  
  ν||Λ^{s+1}V\_n(S)||₂²  
   +∫\_0^S[||Λ^sV\_{n+1}||₂²+ν²||Λ^{s+2}V\_n||₂²+||Λ^s∇Q\_n||₂²]  
    =ν||Λ^{s+1}V\_n(0)||₂²+∫\_0^S||Λ^s(F\_n−B\_n)||₂².    (413)  
The positive viscous sign is essential. This identity is not the statement that viscosity controls every row without a nonlinear input: its right side contains the full B\_n, including all binomial allocations. It is an exact relation among complete momentum faces.  

### 14.4 How the source estimates that complete row [A from R]

Proposition 14.6 chooses a datum rectangle high enough that one factor of every B\_n allocation is L∞\_tH^{s+2}\_x by the adjacent trace lemma and the other is L²\_tH^{s+2}\_x. Therefore  
  ||B\_n||L²(I;Ḣ^s)≤C\_sΣ\_a binom(n,a)||V\_a||L∞(I;H^{s+2})||V\_{n−a}||L²(I;H^{s+2})&lt;∞. (416)  
For noninteger s one can read these factors in an available higher finite integer Sobolev order. Fn is L²(I;Ḣ^s) from the prescribed force class. Evaluating (413) then gives a finite bound for every complete equation face on the same terminal interval.  

Proposition 14.7 gives a finite-record version. For M≥2 let R\_v be the selected adjacent velocity norm, and I\_{N,M}=Σ\_{n≤N}||V\_n(0)||H^M². Then  
  Σ\_{n≤N}sup\_t||V\_n(t)||H^M²≤I\_{N,M}+R\_v,               (417)  
  Σ\_{n≤N}||B\_n||L²H^{M−1}²≤C\_{N,M}(I\_{N,M}+R\_v)R\_v.   (418)  
For (417), integrate the adjacent trace identity and use 2ab≤a²+b². For (418), put a factor in L∞H^M and the differentiated factor in L²H^{M+1}; H^M is an algebra for M≥2. Sum finitely many binomial allocations. Summing (413) at s=M−1 yields  
  D\_{N,M}(S)≤νI\_{N,M}+2Σ\_{n≤N}||F\_n||L²(0,T;H^{M−1})²  
                       +2C\_{N,M}(I\_{N,M}+R\_v)R\_v,       (419)  
where D includes ν||V\_n(S)||Ḣ^M², adjacent time-row norm, ν² spatial dissipation norm and pressure-gradient norm. Every term is a face of that same equation. Lower spatial orders follow by reading a rectangle with M≥2.  

These estimates are useful relationships and complete-equation bounds conditional on the selected velocity rectangle. The source places them after Theorem 13.13, not before the producer.  

### 14.5 Height exhaustion and return to the mixed intersection [A from R]

Proposition 14.8 repeats the exact equivalence of full adjacent memberships and cutoff-uniform finite norm sums, with their monotone terminal value (420). From the upper n=0 row,  
  2||R\_k||L¹(I)=||Λ^{k+1/2}u||L²(I×R³)²≤R\*\_{0,k}.      (421)  
Low/high frequency splitting now uses the forced L² bound:  
  ||u||L²(I;H^m)²≤2^m[T\*K\_f(T\*)²+2||R\_m||L¹(I)].        (422)  
All completed heights give the spatial column.  

Proposition 14.10 reconstructs the mixed jet from that spatial column without first assuming all temporal rows. With S\_m=||u||L²(I;H^m),  
  ||u\_t||L¹H^m≤ν√T\*S\_{m+2}+C\_mS\_{m+2}²+||Pf||L¹H^m.  (425)  
Hence u∈W^{1,1}H^m⊂CH^m and  
  M\_{0,m}=||u0||H^m+ν√T\*S\_{m+2}+C\_mS\_{m+2}²+||Pf||L¹H^m  
bounds its trace. The exact recurrence gives  
  M\_{n+1,m}=νM\_{n,m+2}+C\_mΣ\_a binom(n,a)M\_{a,m+2}M\_{n−a,m+2}  
                                      +sup\_{[0,T\*]}||PF\_n||H^m. (427)  
It yields continuous actual V\_n, while the pressure formula and potential estimate yield continuous actual Q\_n. Interior derivative identities pass to endpoints by the Bochner integral. Then ||u||H^r(I;H^m)²≤T\*Σ\_{n≤r}M\_{n,m}². This is the forced height-to-mixed return, preserving the same history and force.  

Pressure completion becomes  
  Q\*\_{N,M}≤C\_M^p(2^{N+1}−1)R\*\_{N,M}+Σ\_{n≤N}F^p\_{n,0,M}(I). (430)  
Momentum holds in L¹(I;H^{M−1}), including M=0, with Fn retained. Whole-terminal blocks include Fn∈C([0,T\*];H^{M−1})⊂L¹(I;H^{M−1}). Restrictions delete temporal indices and apply Sobolev inclusions to unchanged distributions; successive restrictions commute.  

## 15. Forced endpoint jet and original-force restart (Section 15, pp.113–120)

### 15.1 All-orders realization and continuous endpoint [A from R]

Theorem 15.2 states that the compatible forced blocks give  
  V\_n∈∩\_mL²(I;H^m\_σ), Q\_n∈∩\_mL¹(I;H^m), Fn∈∩\_mC([0,T\*];H^m),  
  u∈∩\_{r,m}H^r(I;H^m), ||u||H^r(I;H^m)²≤R\*\_{r,m}.     (438)–(442)  
The direct mixed and reconstructed-height readings identify the same distributions. The zeroth spatial column plus the full forced equation gives u∈W^{1,1}(I;H^m) for every m, hence one u\*∈H^∞\_σ.  

Theorem 15.5 uses the same adjacent trace stencil, with  
  E\_{N,m}^{trace}=(1+T\*^{-1})^{1/2}(R\*\_{N,m}[u0,ν,f,T\*])^{1/2}.  
For n≤N,  
  sup\_t||V\_n(t)||H^m≤E\_{N,m}^{trace},  
  ||V\_n(t)−V\_n\*||H^m≤(T\*−t)E\_{n+1,m}^{trace},  
  J\_{n,α}\*=∂\_x^αV\_n\*,  
  ||J\_{n,α}(t)−J\_{n,α}\*||H^m≤(T\*−t)E\_{n+1,m+|α|}^{trace}. (453)–(460)  
The proof is unchanged because its hypotheses already encode the forced rows’ membership and actual derivative identity. Compatibility across Sobolev orders gives one endpoint distribution for each row. The Bochner identity identifies all one-sided temporal derivatives, yielding u∈∩\_{a,m}C^a([0,T\*];H^m\_σ).  

### 15.2 The pressure limit includes the source potential [A/I from R]

Define  
  Q\_n\*=R\_iR\_jΣ\_a binom(n,a)V\_{a,i}\*V\_{n−a,j}\*−Φ\_n(T\*).  (464)  
It is important that this is not the unforced endpoint pressure. For every finite s,  
  ||Q\_n\*||H^s≤9C\_s^{alg}2^n(E\_{n,s+1}^{trace})²+||Φ\_n(T\*)||H^s,  
  ||Q\_n(t)−Q\_n\*||H^s  
    ≤9C\_s^{alg}2^{n+1}(T\*−t)(E\_{n+1,s+1}^{trace})²  
        +(T\*−t)sup\_{0≤r≤T\*}||Φ\_{n+1}(r)||H^s.          (465)–(467)  
The nonlinear part uses the two-factor product difference, exactly as before. The force part uses Φ\_n(t)−Φ\_n(T\*)=−∫\_t^{T\*}Φ\_{n+1}(r)dr. Mixed pressure endpoints are Π\_{n,α}\*=∂^αQ\_n\*; their source terms are the exact ∂^αΦ\_n, not an omitted or redefined force.  

Passing every complete row to the endpoint at order H^q gives  
  V\_{n+1}\*=νΔV\_n\*−Σ\_a binom(n,a)(V\_a\*·∇)V\_{n−a}\*−∇Q\_n\*+F\_n(T\*). (472)  
Velocity convergence in H^{q+2}, pressure convergence in H^{q+1}, and Fn(t)→Fn(T\*) in H^q justify each term separately. Among families rooted at u\* and carrying the prescribed force jet (Fn(T\*))\_{n≥0}, these two recurrences determine a unique normalized endpoint jet. Extend Q\_n continuously, pass the integral identity through T\*, and obtain p∈∩\_{a,m}C^a([0,T\*];H^m), ∂\_t^ap(T\*)=Q\_a\*.  

### 15.3 How the forced gluing differs from the unforced presentation

Theorem 15.7 takes u\* from these traces and applies the forced local theorem at absolute time s=T\*. It obtains w\*,q\* on a positive right neighborhood, with w\*(T\*)=u\* and forcing exactly f(t) for t≥T\*. If the restart is expressed in elapsed time τ, its force is f(T\*+τ). Smooth source jets at T\* are used to match derivatives, but matching a source’s formal endpoint jet alone is not the instruction to replace its future values by any other smooth extension. The prescribed future f is already fixed.  

Let W\_n^+=∂\_t^nw\*(T\*), P\_n^+=∂\_t^nq\*(T\*). The right jet obeys  
  P\_n^+=R\_iR\_jΣ\_a binom(n,a)W\_{a,i}^+W\_{n−a,j}^+−Φ\_n(T\*),  
  W\_{n+1}^+=νΔW\_n^+−Σ\_a binom(n,a)(W\_a^+·∇)W\_{n−a}^+−∇P\_n^++F\_n(T\*).  
W\_0^+=u\*=V\_0\* therefore implies, inductively,  
  W\_n^+=V\_n\*, P\_n^+=Q\_n\*, every n.                     (476)  
All one-sided derivatives match in every finite Sobolev space; Sobolev embedding makes the piecewise joined fields jointly C∞ across T\*. The equation holds at T\* by (472), so this is a pressure-complete extension of the original triple, contradicting maximality.  

Unlike the unforced Part I presentation, Theorem 15.7 does not reproduce a separate late-slice overlap lemma with uniform δ0; it establishes the same-history extension directly by complete endpoint-jet matching and the actual equation. The local forced class still supplies uniqueness, restriction, and the original-force identity. This distinction should be preserved when teaching the source.  

Theorem 15.8 collects the resulting global conclusion [R-dependent], including the forced energy equality, ||u(t)||₂≤K\_f(t), normalized decaying pressure, and uniqueness in M³\_{ν,f}(0,T;u0) for every finite T.  

## 16. Forced matrices (Section 16, pp.120–123)

Use the same mixed-index partial order and L(J) as in Section 6. Add F\_κ=F\_{n,α}, Ψ\_κ=(−Δ)^{-1}div F\_κ. The paired row becomes  
  J\_{n+1,α}+[L(J)J]\_κ=νΔJ\_κ+PF\_κ,  
  Π\_κ=R\_iR\_jΣ\_{λ≼κ}binom(κ,λ)J\_{λ,i}J\_{κ−λ,j}−Ψ\_κ.   (485)–(486)  
The affine velocity source is PF\_κ, while Ψ\_κ retains the complementary pressure information. The unprojected row contains full F\_κ and ∇Π\_κ.  

Normalize F̂\_κ=F\_κ/κ!, Ψ̂\_κ=Ψ\_κ/κ! in addition to Ĵ,Π̂. Then  
  (n+1)Ĵ\_{n+1,α}+Σ\_{λ≼κ}(Ĵ\_λ·∇)Ĵ\_{κ−λ}+∇Π̂\_κ=νΔĴ\_κ+F̂\_κ,  
  Π̂\_κ=R\_iR\_jΣ\_{λ≼κ}Ĵ\_{λ,i}Ĵ\_{κ−λ,j}−Ψ̂\_κ.           (488)–(489)  
This is exact finite-row factorial bookkeeping. It retains all nonlinear/source/pressure information and asserts neither analyticity nor a convergent infinite coefficient series.  

The forced object matrix has four columns, (V\_n,V\_{n+1},Q\_n,F\_n). The scalar norm matrix has rows  
  (G\_{n,M+1},G\_{n+1,M−1},P\_{n,M},D\_{n,M}),  
  D\_{n,M}=||F\_n||L¹H^{M−1}+F^p\_{n,0,M}.  
Frobenius square of the first two columns is R\_{N,M}; summing column three gives Q\_{N,M}; summing column four gives F\_{N,M}, (492). The same weighted derivative-sum identity links G\_{n,m} to the mixed J\_{n,α}. The closed matrix C\* replaces all entries by their full-I values a,b,q,d; time restriction gives C(T)≼\_entC\*. Exact terminal sums are R\*,Q\*,F\*, (497)–(499). These are nonnegative coordinate norms and budgets, not a Gram/PSD ordering.  

## 17. Forced H¹ completion and quantitative recursions (Section 17, pp.124–139)

### 17.1 Strong H¹ completion keeps the same source

Theorem 17.1 repeats the local H¹ approximation/persistence pathway, with force included at every stage. Set g=Pf,  
  G0=||g||L²(0,1;L²), R\_{a,f}=1+||∇a||₂²+2ν^{-1}G0².  
Pairing momentum with −Δu and paying the force by Young gives  
  Y'+(ν/2)Z≤c1ν^{-3}Y³+2ν^{-1}||g||₂².                (502)  
On τ\_{ν,f}(a)=min{1,ν³/(8c1R\_{a,f}²)}, a bootstrap gives Y≤2R\_{a,f} and finite ∫Z. Fourier-regularized equations retain J\_kg, and their forced L² bound plus bandlimit extends each regularized trajectory globally. Uniform local strong bounds, local compactness, initial-trace identification, and the trace lemma yield the strong H¹ solution. In uniqueness the common g cancels exactly.  

For positive-time smoothing, the source uses windows with  
  h(||b||H¹+||g||L¹(I;H¹))^4≤c0ν³,  
and finite smooth-force seminorms Γ\_{m,S}(f)=Σ\_{j=0}^m sup\_{[0,S]}||∂\_t^jf||H^{m+2}. This yields all finite H^m bounds on [ε,S], then temporal/pressure persistence. Choose t0&gt;0 with u(t0)∈H^∞\_σ; the absolute-time form of Theorem 15.8 gives a global continuation driven by the original f(t), t≥t0. Uniqueness joins the histories. This global H¹ theorem consequently depends on the earlier general forced global theorem, not the reverse.  

### 17.2 Scalar majorants add finite force and potential coordinates

B\_{N,M}, P\_{N,M}=1+B\_{N,M}, T\_{N,M}=(1+T^{-1})^{1/2}P\_{N,M}^{1/2} are defined for the one fixed forced history exactly as before. Let  
  G^{(0)}\_{n,m}=||F\_n(0)||H^m,  
  G^{(1)}\_{n,m}=||F\_n||L¹(0,T;H^m),  
  G^{(2)}\_{n,m}=||F\_n||L²(0,T;H^m),  
  G^{(∞)}\_{n,m}=sup\_{[0,T]}||F\_n(t)||H^m;  
  L^{(1)}\_{n,m}=||Φ\_n||L¹H^m+||∇Φ\_n||L¹H^{m−1},  
  L^{(2)}\_{n,m}=||Φ\_n||L²H^m,  
  L^{(∞)}\_{n,m}=sup\_t(||Φ\_n||H^m+||∇Φ\_n||H^{m−1}).      (528)–(529)  
They are finite on finite T by the prescribed Schwartz force class.  

The D initial-jet recursion adds G^{(0)}\_{n,m}, and the Y pointwise recursion adds G^{(∞)}\_{n,m}:  
  D\_{n+1,m}=νD\_{n,m+2}+A\_{m+1}Σ\_a binom(n,a)D\_{a,m+2}D\_{n−a,m+2}+G^{(0)}\_{n,m},  
  Y\_{n+1,m}=νY\_{n,m+2}+A\_{m+1}Σ\_a binom(n,a)Y\_{a,m+2}Y\_{n−a,m+2}+G^{(∞)}\_{n,m}. (531),(534)  
Use Y\_{0,0}=K\_f(T), while Y\_{0,m}, m≥1, has the same two trace/fundamental bounds in terms of the forced B. X,Z are the same minima with ||u0||₂ replaced by K\_f(T) in the kinetic special cases.  

Each pressure majorant is the unforced velocity-product expression plus its matching potential budget:  
  Q^{(1)} adds L^{(1)}\_{n,m}, Q^{(2)} adds L^{(2)}\_{n,m},  
  Q^{(∞)} adds L^{(∞)}\_{n,m}, Q^{(mod)} adds L^{(2)}\_{n+1,m}. (566)–(569)  
The adjacent source potential derivative supplies the last time modulus. The closed matrix bound has rows  
  (X\_{n,M+1},X\_{n+1,M−1},Q^{(1)}\_{n,M},G^{(1)}\_{n,M−1}+L^{(1)}\_{n,M}). (586)  
Every column still measures the same fixed forced record.  

### 17.3 Height-coordinate recovery is also fully forced

Let H\_m=(1/2)||Λ^{m+1/2}u||L²², S\_m²=2^m(TK\_f(T)²+2H\_m). The base velocity majorant becomes  
  A^v\_{0,m}=T^{-1/2}S\_m+νT^{1/2}S\_{m+2}+A\_{m+1}S\_{m+2}²+G^{(1)}\_{0,m}.  
The pressure recursion adds L^{(∞)}\_{n,m}; the velocity recursion adds G^{(∞)}\_{n,m}. Integration gives finite rectangle/pressure majorants (556)–(559). The finite required coordinates are spelled out in (560): heights and analytic constants through M+2N+4, source L¹ base norms through M+2N+2, force sup norms through temporal order N and spatial order M+2N+2, and force-potential sup rows through N. This is an explicit finite dependency calculation for the return from heights to any target mixed rectangle.  

### 17.4 Mixed bounds, pressure time modulus, scaling, and continuation

Velocity mixed-row estimates are formally the same as (227)–(234), but all majorants depend on f. Pressure estimates add the relevant L budget. For example, with r=s+|α|,  
  ||Π\_{n,α}||L²H^s≤A\_r2^nT\_{N,r+1}P\_{N,r}^{1/2}+L^{(2)}\_{n,r},  
  ||Π\_{n,α}(t)−Π\_{n,α}(r0)||H^s  
     ≤[2^{n+1}A\_rT\_{N,r+1}P\_{N,r+2}^{1/2}+L^{(2)}\_{n+1,r}]|t−r0|^{1/2}. (579),(582)  
The potential’s fundamental theorem explains its added term. Tail inequalities and dyadic shell estimates apply to the same higher finite Sobolev coordinates; pressure tails carry the source-potential tail bound as well.  

The critical production relation is now  
  P\_{1/2}=H'+ν||Λ^{3/2}u||₂²−W\_{1/2}.  
Cauchy–Schwarz gives ||W\_{1/2}||L¹≤P\_{0,0}^{1/2}G^{(2)}\_{0,1}; thus (604) includes that source work rather than using an unforced production formula. Critical energy and tail bounds otherwise have the same form because they measure the forced velocity’s actual rows.  

The force-aware viscosity rescaling is  
  v(s,x)=ν^{-1}u(s/ν,x), q=ν^{-2}p(s/ν,x), f̃(s,x)=ν^{-2}f(s/ν,x).  
Then V\_n=ν^{n+1}Ṽ\_n, Q\_n=ν^{n+2}Q̃\_n, Fn=ν^{n+2}F̃\_n at rescaled time νt. For restart at t0, the rescaled source is f\_{ν,t0}(σ,x)=ν^{-2}f(t0+σ/ν,x), and  
  τ^{max}\_{ν,f,3}(t0,b)=ν^{-1}τ^{max}\_{1,f\_{ν,t0},3}(0,b/ν). (547)  
The absolute-time shift of the source is part of the exact covariance.  

Low rectangles still give finite L²\_tL∞\_x velocity and finite ∫||∇u||∞. The forced H^m energy with regularized norm yields  
  ||u(t)||H^m≤(||u0||H^m+∫\_0^t||Pf||H^m)  
                   exp(K\_m∫\_0^t||∇u||∞),  
and hence (611) with the square of the force-enlarged initial norm. Section 17 does not remove the force from high-order continuation estimates.  

## 18. Forced applications and comparison structure (Section 18, pp.140–154)

### 18.1 Small-critical forced stock/action estimates

The exact critical action identity is  
  ν d||u||Ḣ^{1/2}²/dt+ν²||u||Ḣ^{3/2}²+||u\_t||Ḣ^{-1/2}²  
       =||B(u)−g||Ḣ^{-1/2}², g=Pf.                    (612)  
The nonlinear estimate remains ||B(u)||Ḣ^{-1/2}≤C\_srcAB, A=||u||Ḣ^{1/2}, B=||u||Ḣ^{3/2}. Young with η&gt;0 gives  
  ||B(u)−g||²≤(1+η)||B(u)||²+(1+η^{-1})||g||².  
Assume in addition to smoothness that  
  g∈L¹(0,∞;L²)∩L²(0,∞;Ḣ^{-1/2})∩∩\_{j≥0}L²(0,∞;Ḣ^j). (615)  
Let  
  G\_{−1/2}=||g||L²Ḣ^{-1/2}, a\_c=||a||Ḣ^{1/2},  
  A\_f²=a\_c²+(1+η^{-1})G\_{−1/2}²/ν,  
  δ\_f=ν²−(1+η)C\_src²A\_f².  
The stated smallness is A\_f&lt;ν/[√(1+η)C\_src], so δ\_f&gt;0. A first-exit argument then gives  
  νA(t)²+δ\_f∫\_0^tB²+∫\_0^t||u\_t||Ḣ^{-1/2}²≤νA\_f².       (617)  
The all-time source hypotheses are extra hypotheses of this small-data quantitative theorem, not consequences of the general smooth-Schwartz-in-time force class.  

At order m, use the homogeneous commutator and pay the differentiated source at order m−1:  
  d||Λ^mu||₂²/dt+ν||Λ^{m+1}u||₂²  
    ≤[(1+η)(K\_m^{hom})²/ν]B²||Λ^mu||₂²  
      +[(1+η^{-1})/ν]||Λ^{m−1}g||₂².  
Set D\_m^f=||Λ^ma||₂²+(1+η^{-1})||Λ^{m−1}g||L²²/ν and Γ\_m^{sm}=(1+η)(K\_m^{hom})²A\_f²/δ\_f. The integrating factor gives  
  ||Λ^mu(t)||₂²+ν∫\_0^t||Λ^{m+1}u||₂²≤D\_m^f e^{Γ\_m^{sm}}. (621)  
K\_{f,∞}=||a||₂+||g||L¹L² supplies the low-frequency part of the uniform H^m bound.  

Source-order dependency matters: unlike Theorem 8.3’s unforced proof, Theorem 18.3 explicitly begins “Let (u,p) be the global … history supplied by Theorem 15.8” and at its end assigns its global existence/uniqueness assertions to that theorem. Its displayed calculation is an explicit quantitative refinement of the claimed global forced history. It should not be described as an independent proof of the general forced producer.  

Finite temporal row bounds recurse from these spatial uniform estimates, adding G\_{n,m}(T)=sup\_{[0,T]}||Fn||H^m at each velocity step. The pressure rectangle adds F^p\_{n,0,M}; the fourth matrix column bounds the force budget itself. Required datum orders again stop at M+2N+1, together with the stated all-time source stocks and a finite family of source jets. All dependence is on the same given f.  

### 18.2 Scale content, vorticity, and material flow

The low-rectangle norms and post-regularity parabolic scale-content extinction have the same forms as Part I, with forced majorants and force-completed pressure. Curl gives  
  ω\_t+(u·∇)ω=(ω·∇)u+νΔω+ζ, ζ=curl f.                 (640)  
The power-test argument adds ||ζ||\_r||ω||\_r^{r−1}:  
  (1/r)d||ω||\_r^r/dt+[4ν(r−1)/r²]||∇|ω|^{r/2}||₂²  
      ≤||∇u||∞||ω||\_r^r+||ζ||\_r||ω||\_r^{r−1}.         (646)  
Put Z\_{r,T}=∫\_0^T||ζ||\_rdt, Ω\_{r,T}=e^{L\_T^ω}(||ω0||\_r+Z\_{r,T}). Then sup||ω||\_r≤Ω\_{r,T}, stretching is bounded by L\_T^ωΩ\_{r,T}, and the dissipation bound includes rZ\_{r,T}Ω\_{r,T}^{r−1}. The r→∞ passage uses uniform Schwartz bounds for ζ on [0,T].  

The trajectory equation remains X\_t=u(t,X), with the forced velocity. Once its L∞ and Lipschitz time integrals are finite, the same displacement, bi-Lipschitz, smoothness, inverse-flow and determinant-one proofs apply. No extra force term is put directly in this first-order trajectory equation; it enters through u’s momentum evolution.  

### 18.3 Same-force relative energy

The forced Leray–Hopf definition adds ∫⟨f,v⟩ to energy and ∫⟨f,φ⟩ to the weak equation. The source repeats the compact solenoidal cutoff/anti-divergence construction and time-commuting approximation. The cross identity is  
  ⟨v(t),u(t)⟩=⟨v0,u0⟩+∫∫(w·∇u)·w−2ν∫⟨∇v,∇u⟩+∫⟨f,u+v⟩. (660)  
The two separate energy formulas contribute exactly the same ∫⟨f,u+v⟩. Subtracting the cross identity cancels this common work. This cancellation requires identical prescribed f; it would not hold unchanged for different forces. The result is the same relative-energy inequality and the same two Gronwall estimates (662)–(664), in terms of the forced strong history’s finite rectangle norms.  

Equal datum, viscosity, and force therefore yield equality of velocities under the source’s claimed global theorem. Pressure differs by c(t), removed by decay normalization. The canonical pressure is R\_iR\_j(u\_iu\_j)−(−Δ)^{-1}div f. Section 19 recaps that every rectangle, endpoint, and restart belongs to the same prescribed triple.  

## 19. Source-faithful meaning of the central words

Columnwise construction: in public-v1 Theorems 3.9 and 13.10 it is the stated producer of the adjacent velocity memberships on I=(0,T\*) for one selected finite pressure-complete graph and one history. The source supplies its complete initial face/dependency cover, and the forced source payments, before invoking it. It is not identified there with the later matrices, a Taylor-series construction, or solving an independently forced linear row. Its analytic output is specifically whole-I membership.  

Intersection: one actual distribution u belongs to H^r(I;H^m) for each finite r,m. The norms can grow arbitrarily with the indices. The relevant time interval is fixed before exhausting indices. The source’s direct proof uses the finite weak-derivative-sum norm; its second proof uses all spatial L² rows plus the actual NS recurrence.  

Membership: L²(I;H^m) means the defining whole-I integral is finite. It is stronger than having a smooth representative at each interior time, and stronger than all strict-cutoff integrals being individually finite. Continuous endpoint traces require a trace mechanism or Banach-valued integral identity, not merely the pointwise existence of derivatives.  

Completion: this word has several source-specific meanings. Pressure completion retains the normalized pressure/source-potential coordinate and its gradient. Completed critical height subtracts every differentiated production/work term from H^{(k)} and divides by (−2ν)^k, giving exactly E\_{k+1/2}. Full-interval norm realization identifies a monotone integral with the norm of an already admitted full-interval coordinate. Global H¹ completion extends the datum class using local H¹ existence, positive-time smoothing and the prior global H^∞ theorem. These are distinct operations.  

Same history: all rows are the actual weak/classical derivatives of the same maximal u,p; restrictions preserve these distributions. Local uniqueness identifies overlapping solutions. Trace uniqueness identifies representations at different Sobolev orders. Endpoint recurrence uniqueness identifies jets. The unforced proof additionally uses a late-slice local solution crossing T\*; the forced proof glues by all-order jet matching while retaining f(t) at absolute time. These are different uses of uniqueness and should not be collapsed into one unspecified assertion.  

Selection versus realization versus norm: picking finite (N,M) specifies which field coordinates and equation dependencies are retained. The recurrence gives identities between them. The whole-terminal producer asserts their analytic realization in the adjacent spaces. Their scalar R\_{N,M} then measures them, and monotone restriction gives its exact cutoff supremum. The matrices finally display those already defined fields/norms. This is the manuscript’s intended order.  

Two cofinal readings: mixed-index exhaustion and height exhaustion do not require one bound uniform over an infinite array and do not produce independent fluids. Each finite identity is read from a sufficiently high rectangle, compatible enlargement preserves its coordinates, and every desired finite output appears eventually. The height return uses the governing equation to regenerate actual temporal and pressure rows from the full spatial column.  

## 20. The mathematical structure reconstructed in this guide

It distinguishes the local contraction and its same-interval all-order persistence from the later proposed whole-terminal construction. It reconstructs the finite dependency cover, including transport factors with the extra spatial derivative and pressure products through Γ\_α. It keeps H^{(k)}, the energy of V\_k, and the completed height R\_k separate. It follows both directions between spatial column and mixed intersection, including the W^{1,1} bridge and actual derivative identification. It accounts for negative-order lower rows at M=0, pressure’s initial L¹ time class, its later continuous traces, and the compatibility of endpoint values across all finite Sobolev orders.  

It also distinguishes three kinds of matrices, derives the factorial cancellation, and preserves the force’s complementary pressure potential. It follows the positive-sign viscous square with the full binomial B\_n, records the conditional finite complete-equation estimates, and tracks the exact source work in the height recurrence. The endpoint part includes the actual local class, right/left jet recursion, and absolute-time source needed for gluing. Finally it reconstructs the post-regularity quantitative/application sections and the separate hypotheses/dependencies of the small-critical and H¹-completion statements. These mechanisms are mathematical content even when the producer output remains explicitly tracked as a dependency.  

This guide reconstructs what public-v1 Parts I–II state and derive, keeping the terminal analytic output distinct from coordinate identities. It does not independently certify the global theorem or establish the completeness or validity of constructions absent from that public PDF.  

## Supplementary reciprocal routes

### Scope and attribution

The following supplementary mathematical routes have separate provenance and are not attributed to public-v1 Parts I–II. The source titled “Derive from u0” is identified by its 11,451-byte length and SHA-1 9387f4f9e3cef861eaf8fb785fc33a0eda5d84c6. Descriptive source keys used below identify separate formulations, rather than claiming to reproduce their original document titles: S-Intersection (intersection formulation), S-Cofinal (cofinal mixed-row branch), S-Native (manuscript §7, R1–R10, and N11a), S-Assembly (whole-argument assembly W13–W19a), S-Prolongation (prolongation formulation), and S-Gram (Gram and relationship formulation). The supplement is a secondary reconstruction of these separately examined sources, not a fresh line-by-line verification of each original. The equations and conditional implications explain relationships between actual derivative classes; no proposed or conditional construction is promoted to an established theorem.  

### A. Actual temporal antiderivatives and cofinal mixed rows (S-Intersection and S-Cofinal)

The supplementary intersection route keeps I fixed. Let S0(I)=∩\_mL²(I;H^m) and X∞(I)=∩\_{r,m}H^r(I;H^m). Its entries include:  

1. Completed R\_k=E\_{k+1/2} in L¹(I) for every k, together with kinetic L² control, gives S0 by the same low/high frequency split.  
2. One actual temporal row V\_q=∂\_t^qu in ∩\_mL²(I;H^m), with the actual initial jet, gives S0 by integrating backward q times on the same interval.  
3. Datum-compatible finite rectangles give X∞ directly, hence S0 by taking the zeroth row.  

For q≥1 the exact backward integration identity is  
  u(t)=Σ\_{j=0}^{q−1}(t^j/j!)V\_j(0)  
          +(1/(q−1)!)∫\_0^t(t−s)^{q−1}V\_q(s)ds.  
At a fixed available Sobolev order, Young’s time-convolution inequality gives an operator factor T^q/q!. Thus a concrete bound is  
  ||u||L²(0,T;H^m)  
   ≤Σ\_{j=0}^{q−1}[T^{j+1/2}/(j!√(2j+1))]||V\_j(0)||H^m  
       +(T^q/q!)||V\_q||L²(0,T;H^m).  
This is not integration of a formal jet chosen independently of u. It uses the actual ∂\_t^qu and the actual initial traces, so the recovered field is the same u.  

The cofinal variant uses pairs (q\_j,k\_j) with k\_j→∞ and finite c\_j=∫\_I E\_{q\_j,k\_j+1/2}. For a requested spatial m, choose one j high enough. At high spatial frequencies, |ξ|^m≤|ξ|^{k\_j+1/2}; the q\_j-fold integral is bounded by (T^{q\_j}/q\_j!)√(2c\_j), plus the differentiated initial Taylor polynomial. Kinetic control handles low frequencies. Temporal depth q\_j may vary with j; no fixed q, diagonal order relation, summation over j, or common all-order constant is required. Each finite target uses one sufficiently high retained coordinate.  

After S0, the original equation gives  
  ||u\_t||L¹H^m≤ν√T||u||L²H^{m+2}+C\_m||u||L²H^{m+2}²+||Pf||L¹H^m.  
Compatible endpoints and the complete pressure/velocity recurrence regenerate all actual continuous V\_n,Q\_n and hence X∞. This route does not assume every temporal maximal-regularity pair before obtaining the spatial column.  

### B. Time-only to spatial conversion (S-Native §7, R1–R10)

For one actual strict-classical NS history on I=(0,T), with the prescribed force smooth through T, the supplementary finite conversion states:  
  u∈H^{N+1}(I;L²), N≥1  
    ⇒ V\_j∈C([0,T];H^{2(N−j)}), 0≤j≤N.  
The time-only assumption is whole-I membership. It is not merely strict-cutoff differentiability.  

The continuous L² trace of each j≤N is controlled by  
  b\_j=T^{-1/2}||V\_j||L²(I;L²)+T^{1/2}||V\_{j+1}||L²(I;L²).  
The base kinetic pairing at each interior time is  
  ν||∇u||₂²=⟨Pf−V\_1,u⟩.  
Uniform L² control of u and V\_1 therefore gives H¹ control. The full projected momentum equation and  
  ||(u·∇)u||₂≤C||∇u||₂^{3/2}||Δu||₂^{1/2}  
then give H² control by an elliptic estimate and Young absorption. This retains nonlinear transport rather than replacing the actual equation by a heat equation.  

The differentiated row retains  
  u·∇V\_r+V\_r·∇u+Σ\_{a=1}^{r−1}binom(r,a)(V\_a·∇)V\_{r−a},  
with νΔV\_r, the adjacent V\_{r+1}, pressure and prescribed F\_r. In its energy pairing only the base advective term u·∇V\_r cancels. The remaining linearized transport and middle binomial terms are estimated as part of the same row.  

The two-pass elliptic mechanism advances a whole prefix of rows:  
  (V\_0,…,V\_K) controlled at spatial order m  
     ⇒ (V\_0,…,V\_{K−1}) controlled at order m+2.  
One available temporal row is spent for two spatial orders. Endpoint continuity is recovered by combining C\_tL²\_x with bounded higher H^h to obtain continuity in H^{h−ε}, and then using continuity of the nonlinear terms and the elliptic difference equation to recover C\_tH^h itself. Iteration yields the displayed finite triangular profile.  

Therefore the full time-only intersection ∩\_qH^q(I;L²), S0(I), and the full mixed intersection are reciprocal descriptions on the actual NS history under the stated source conditions. For a target rectangle of temporal row n and spatial middle order m, a time-only input depth N≥n+ceil((m+1)/2) supplies the required upper spatial order and adjacent lower order. This is a second actual reconstruction mechanism, distinct from the public-v1 direct derivative-sum argument.  

### C. A single temporal-action entry (S-Assembly W13–W19a)

Another conditional entry starts from Q\_T=∫\_0^T||u\_t||₂²&lt;∞ plus kinetic control ||u||L∞L²≤K\_T, with g=Pf and G\_T=∫\_0^T||g||₂². The actual kinetic pairing gives, for y=||∇u||₂²,  
  νy=⟨u,g⟩−⟨u,u\_t⟩,  
  ∫\_0^Ty²≤2ν^{-2}K\_T²(G\_T+Q\_T).  
The complete enstrophy inequality has the form  
  y'+ν||Δu||₂²≤Cν^{-3}y³+Cν^{-1}||g||₂².  
Write y³=y²·y: the coefficient y² is now integrable. Gronwall yields bounded H¹ and finite L²H². The commutator estimates W13–W15 in S-Assembly propagate higher spatial orders, and the full recurrence regenerates the mixed jet. Thus this entry is a nonlinear consequence of actual temporal action, not a claim that a finite Q\_T was obtained merely by naming it.  

Any actual whole-I rectangle R\_{N,M} with N+M≥1 contains u\_t∈L²L²: when N≥1 it appears in an upper column of spatial order at least H¹; when M≥1 it appears in the lower column at order H^{M−1}≥H⁰. The R\_{0,0} lower row only gives u\_t∈L²H^{-1}, so it is explicitly excluded from this single-action reconstruction. This distinguishes which finite records can regenerate the full system.  

### D. Gram objects and the logical roles of supplementary constructions

S-Gram defines C\_AB using actual inner products and genuine positive-semidefinite structure. That is different from the nonnegative scalar norm matrices of public-v1 Sections 6 and 16. It also retains local pressure flux. When a higher temporal row is substituted into both factors of a quadratic expression, the expansion contains the leading viscous term, the two single-cross contributions, and the full double-cross block. The latter retains all nine combinations of the force, nonlinear and pressure pieces. This is more information than retaining only one factor’s substitution or a schematic “nonlinear remainder.”  

A relationship rectangle in S-Gram is a finite collection of coupled identities; it must remain distinct from the interval-norm rectangle denoted J14 in the supplementary formulations. The same actual fields can underlie both while the objects do different jobs.  

S-Cofinal invokes its datum-finite-row theorem. S-Native N11a invokes an unforced producer claim on the full forced graph. S-Prolongation gives exact prolongation formulas while labeling prescribed-jet stability proposed or conditional. These are distinct logical roles. None of these construction claims becomes a completed proof merely because other portions are exact identities.  

The unified mathematical picture includes reciprocal conversion mechanisms between actual all-height spatial data, actual sufficiently high time-only data, actual cofinal mixed rows, compatible finite rectangles, and, in the temporal-action argument, one sufficiently strong nontrivial actual rectangle, on the same history and interval. Their assumptions and attribution remain separate from the producer that admits a given history to one of those classes in the first place.  
