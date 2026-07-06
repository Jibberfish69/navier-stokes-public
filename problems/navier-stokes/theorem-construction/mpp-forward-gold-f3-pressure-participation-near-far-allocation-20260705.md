---
theorem_id: forward-gold-f3-pressure-participation-near-far-allocation-20260705
status: filed-pending-codex-gate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / P2 pressure-locality allocation - the participation term confines
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  pressure is the membership law - a member's dues are set by its
  neighbors, and the far crowd only whispers; the whisper fades by the
  cube of the distance. Cube-fading whispers have finite total and
  finite distance-weighted total, so the far crowd can never secretly
  finance a local window. Participation is local plus a routed,
  exactly-weighted echo of the whole endowment - never outside muscle.
depends_on:
  - mpp-forward-gold-codex-f3-first-contact-chronological-queue-regate-20260705.md
  - mpp-forward-gold-f3-ledger-first-contact-chronological-queue-suitable-solutions-20260705.md
  - mpp-forward-gold-codex-frontier-f3-ledger-formation-five-clause-audit-20260705.md
  - mpp-forward-gold-codex-hall-relation-construction-routing-20260705.md
  - mpp-forward-gold-codex-weighted-diffuse-tail-moment-dichotomy-20260705.md
completion_truth: >-
  Pays the pressure/locality allocation ingredient of F3 producer
  theorem P2 at GROSS-DOMINATION level, unconditionally, in the MPP
  finite-energy lane (Cauchy problem on R^3, finite-energy
  Leray-Hopf/suitable solutions carrying the Leray pressure p =
  sum_{ij} R_i R_j (u_i u_j) a.e. in time - definitional for the
  financed lane's class; the scope matches the same-date E_0 demotion).
  (T1 - THE INCOME CONFINES) On every retained cell (ball B = B(x_a,r),
  half-open episode I, cutoff chi_a) the gross income Phi_a of the
  chronological queue decomposes into four channels, each dominated in
  an ALLOWED currency: (i) transport gate <= (1/2)||grad chi||_inf
  int_I ||u||^3_{L^3(B)} - own-cell diagonal mass; (ii) viscous annulus
  carry <= (nu/2)||Delta chi||_inf int_I ||u||^2_{L^2(B)} - own-skin
  later-debt, diagonal; (iii) pressure NEAR field: with p_near = R_iR_j
  (1_{2B} u_i u_j), Calderon-Zygmund L^{3/2} boundedness plus Holder
  give |Phi_near| <= C_CZ ||grad chi||_inf int_I ||u||^3_{L^3(2B)} -
  the DOUBLED-cell L^3 mass: this ADMITS the locality edge
  R_loc^allocated from the cell to its doubled neighborhood at
  estimate level, exactly the edge the Hall relation-routing note
  required an explicit allocation for; (iv) pressure FAR field: for x
  in B and y in the m-th dyadic annulus A_m (m >= 1) the kernel bound
  |K(z)| <= C_K |z|^{-3} and |x - y| >= 2^{m-1} r give the pointwise
  cap |p_far(x,t)| <= 8 C_K r^{-3} sum_{m>=1} 2^{-3m} e_m(t) with
  e_m(t) the annulus energy - a GEOMETRICALLY WEIGHTED tail with
  weights w_m = 2^{-3m}. (T2 - EXACT MOMENTS: THE FAR CHANNEL PAYS THE
  FIRST-MOMENT ROUTING BY KERNEL DECAY ALONE) zeroth moment
  sum_{m>=1} 2^{-3m} = 1/7 and first moment sum_{m>=1} m 2^{-3m} =
  8/49, both exact fractions; so the far-pressure channel enters the
  weighted first-moment routing machinery (F3e / weighted diffuse-tail
  dichotomy) with finite first moment AUTOMATICALLY - cube decay beats
  the linear moment weight; no dichotomy branch is needed for this
  channel. Crude cap, finite-energy scope: e_m <= 2E_0 gives
  |p_far| <= (16/7) C_K E_0 r^{-3} pointwise on the cell - exact
  fraction, named constants. CONSEQUENCE FOR P2: item 2 of the
  regate's missing-conversion list (pressure/cutoff near-far CZ and
  locality allocation) is paid at gross-domination level: the
  participation term CANNOT deliver mass from outside the allowed
  relation - its magnitude is confined to the diagonal, the doubled
  neighbor, and an explicitly routed cube-weighted tail financed by
  the endowment. WHAT THIS DOES NOT PAY, exactly: these are GROSS
  (absolute-value) dominations - they control backing DEMAND and
  confinement; they do not mint backing SUPPLY, so the regate's item 1
  (signed-income-to-allowed-backing without net-as-gross) and item 3
  (the Hall inequalities theta mu(S) <= beta(R(S)) for actual
  throughput, or routing dK^tax) remain OPEN, as does all of P1
  (flux-gate/window transcription, SRP record localization, weighted
  tail routing in channel-cell currency), F3(c) record localization's
  producer half, F2/F4 worksheet positivity, F5. Constants C_CZ (the
  L^{3/2} Riesz-composition operator norm) and C_K (the kernel bound)
  are NAMED and quarantined to chapter 10 per the lane law. Filed is
  not cleared. No closure claimed.
---

# F3/P2: the participation term allocates - near dues to neighbors, far dues to a cube-weighted whisper

## 0. Scope and pressure convention

MPP finite-energy lane: Cauchy problem on \(\mathbb R^3\),
finite-energy Leray-Hopf/suitable solutions with the Leray pressure

\[
  p(t)=\sum_{i,j}R_iR_j\big(u_iu_j\big)(t)
  \qquad\text{for a.e. }t,
\]

which is definitional for the financed lane's solution class (for a.e.
\(t\), \(u(t)\in L^2\cap L^6\subset L^3\), so \(u_iu_j\in L^{3/2}\) and
the composition is bounded there). Solutions carrying a different
pressure gauge are outside this note, matching the same-date scope
demotion on the \(E_0\) cap. Cell conventions as in the first-contact
note: ball \(B=B(x_a,r)\), cutoff \(\chi_a\) supported in \(B\),
half-open episode \(I\), gross income

\[
  \Phi_a
  =
  \int_I\!\!\int
  \Big[
    \tfrac{\nu}{2}|u|^2\Delta\chi_a
    +\big(\tfrac12|u|^2+p\big)\,u\cdot\nabla\chi_a
  \Big].
\]

## 1. T1: four channels, each in an allowed currency

Split \(p=p_{\rm near}+p_{\rm far}\) by

\[
  p_{\rm near}:=\sum_{i,j}R_iR_j\big(\mathbf 1_{2B}\,u_iu_j\big),
  \qquad
  p_{\rm far}:=\sum_{i,j}R_iR_j\big(\mathbf 1_{(2B)^c}\,u_iu_j\big).
\]

**(i) Transport gate (diagonal).** By Holder on \(B\times I\):

\[
  \Big|\int_I\!\!\int \tfrac12|u|^2u\cdot\nabla\chi_a\Big|
  \le
  \tfrac12\|\nabla\chi_a\|_\infty\int_I\|u(t)\|_{L^3(B)}^3\,dt .
\]

Own-cell \(L^3\) channel mass - the diagonal edge \(R_{\rm int}\).

**(ii) Viscous annulus carry (own skin).**

\[
  \Big|\int_I\!\!\int \tfrac{\nu}{2}|u|^2\Delta\chi_a\Big|
  \le
  \tfrac{\nu}{2}\|\Delta\chi_a\|_\infty\int_I\|u(t)\|_{L^2(B)}^2\,dt .
\]

The annulus later-debt: supported on the cell's own cutoff skin,
diagonal.

**(iii) Pressure near field (adjacent locality edge).** Calderon-
Zygmund boundedness on \(L^{3/2}\) gives
\(\|p_{\rm near}(t)\|_{L^{3/2}(\mathbb R^3)}
\le C_{\rm CZ}\|u(t)\|_{L^3(2B)}^2\), and Holder
(\(\tfrac{2}{3}+\tfrac13=1\)) gives

\[
  \Big|\int_I\!\!\int p_{\rm near}\,u\cdot\nabla\chi_a\Big|
  \le
  C_{\rm CZ}\|\nabla\chi_a\|_\infty
  \int_I\|u(t)\|_{L^3(2B)}^3\,dt .
\]

The DOUBLED cell's \(L^3\) mass: same-packet, adjacent scale on the
locality lattice. This admits the edge
\(R_{\rm loc}^{\rm allocated}\colon a\to 2B\)-neighborhood at estimate
level - the explicit allocation the Hall relation-routing note
demanded before a locality edge may enter \(R_a\).

**(iv) Pressure far field (routed cube-weighted tail).** The kernel
\(K\) of \(R_iR_j\) away from the diagonal obeys
\(|K(z)|\le C_K|z|^{-3}\); the identity component of the operator is
diagonal-supported and never reaches \((2B)^c\). For \(x\in B\) and
\(y\in A_m:=\{2^mr\le|y-x_a|<2^{m+1}r\}\), \(m\ge1\):

\[
  |x-y|\ge|y-x_a|-|x-x_a|\ge 2^mr-r\ge 2^{m-1}r,
\]

hence, with \(e_m(t):=\int_{A_m}|u(t)|^2\),

\[
  |p_{\rm far}(x,t)|
  \le
  C_K\sum_{m\ge1}\big(2^{m-1}r\big)^{-3}e_m(t)
  =
  \frac{8C_K}{r^3}\sum_{m\ge1}2^{-3m}e_m(t).
\]

The far participation income is therefore dominated by a sum of
annulus-driver terms with GEOMETRIC weights \(w_m=2^{-3m}\):

\[
  \Big|\int_I\!\!\int p_{\rm far}\,u\cdot\nabla\chi_a\Big|
  \le
  \frac{8C_K}{r^3}\,\|\nabla\chi_a\|_\infty
  \int_I\Big(\sum_{m\ge1}2^{-3m}e_m(t)\Big)
  \Big(\int_B|u(t)|\Big)\,dt .
\]

## 2. T2: exact moments - the far channel pays first-moment routing by decay alone

The weights are exact geometric data:

\[
  \sum_{m\ge1}2^{-3m}
  =
  \frac{1/8}{1-1/8}
  =
  \frac17,
  \qquad
  \sum_{m\ge1}m\,2^{-3m}
  =
  \frac{1/8}{(1-1/8)^2}
  =
  \frac{8}{49}.
\]

So the far-pressure channel enters the weighted first-moment routing
machinery with FINITE first moment automatically: the cube decay of
the membership kernel beats the linear moment weight, and no branch of
the weighted diffuse-tail dichotomy is ever needed for this channel.
The zeroth/first moment pair \((1/7,\,8/49)\) is exact.

Crude endowment cap, finite-energy scope: \(e_m(t)\le 2E_0\) uniformly,
so

\[
  |p_{\rm far}(x,t)|
  \le
  \frac{16}{7}\,\frac{C_KE_0}{r^3}
  \qquad\text{on }B\times I .
\]

Exact fraction, named constants. The far crowd's whisper is financed
by the endowment and fades by the cube of distance - it can never
secretly finance a local window.

## 3. Consequence for producer theorem P2

Of the regate's three-part missing conversion, part 2 is paid at
gross-domination level: every channel of the participation income is
confined to

1. the diagonal (own gate, own skin),
2. the doubled-neighborhood locality edge (now explicitly allocated),
3. a routed tail with exact geometric weights financed by \(E_0\).

The participation term cannot deliver mass from outside the allowed
relation \(R_a=R_{\rm int}\cup R_{\rm carry}\cup
R_{\rm loc}^{\rm allocated}\). Pressure is membership, not outside
muscle - now as an estimate, not only as a story.

## 4. Register - paid / open, exactly

PAID here, unconditional in the MPP finite-energy lane: the four-channel
gross domination of the queue income (T1); admission of the doubled-cell
locality edge at estimate level (T1.iii); exact geometric moments
\((1/7,\,8/49)\) putting the far-pressure channel through first-moment
routing with no dichotomy (T2); the pointwise far-field endowment cap
with exact fraction \(16/7\) (T2).

NOT PAID, exactly: these are gross dominations - they control backing
DEMAND and confinement, they do not mint backing SUPPLY. Open: regate
item 1 (signed-income-to-allowed-backing conversion without
net-as-gross); regate item 3 (the Hall inequalities
\(\theta\mu(S)\le\beta(R(S))\) for actual throughput, or routing
\(dK^{\rm tax}\)); all of P1 (flux-gate/window transcription, SRP
record localization, weighted tail routing in channel-cell currency);
F3(c)'s producer half; F2/F4 worksheet positivity; F5. Constants
\(C_{\rm CZ}\), \(C_K\) are named and quarantined to chapter 10 per
the lane law.

Filed is not cleared. No closure claimed.
