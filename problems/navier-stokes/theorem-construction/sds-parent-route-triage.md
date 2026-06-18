# SDS Parent Route Triage

## Purpose

This note collapses the three candidate parent routes into one exact missing
structure. The route already has the frontier theorem
`(SDS^\sharp)`, so the remaining question is not which slogan is best, but
which coercive estimate on the weighted upper tail actually has to be proved.

The three candidates are:

- weighted one-sided enstrophy monotonicity,
- one-sided tail self-interaction damping,
- all-scale transport-loss / spectral dispersion.

They are three formulations of the same missing coercive control on the paired
carrier exposed by the weighted lifted packet.

## Common Carrier

Fix `M\ge 4`, let `u` be the exact Euclidean Navier-Stokes solution on
`[0,T)\times\mathbb R^3`, and define

```math
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_{L_x^2},
\qquad
\mathcal D_k^\uparrow(t):=\sum_{\ell\ge k+4}2^{-\sigma(\ell-k)}D_\ell(t),
```

with

```math
D_\ell(t):=2^{4\ell}\|\Delta_\ell u(t)\|_{L_x^2}^2.
```

The weighted packet audit records that after the weighted `j`-summation the
lifted contribution becomes the paired carrier

```math
\mathfrak P_N(t):=
\sum_{k>N+M}2^k\,a_k(t)\,\mathcal D_k^\uparrow(t).
```

So any parent theorem that closes the route must control `\mathfrak P_N`
at the same barrier scale `C_*2^{-2\delta N}`.

## Parent Route 1: Weighted One-Sided Enstrophy Monotonicity

A sufficient monotonicity statement would be

```math
\partial_t \Phi_j^\sigma(t)+c\,2^j\big(\mathcal T_j^\sigma(t)\big)^2
\le
\partial_t \Psi_j^\sigma(t)+\mathrm{Err}_j^\sigma(t).
```

with

```math
\Phi_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}E_\ell(t),
\qquad
\mathcal T_j^\sigma(t):=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t),
```

and with

```math
\int_0^T\sum_{j>N+M+4}\mathrm{Err}_j^\sigma(t)\,dt\le C_*2^{-2\delta N}.
```

The packet decomposition says that strict low, spill, and high-high are
already lower-order on the weighted tail surface; the only genuinely new term
is the lifted remainder.

If the monotonicity law gives the coercive square term
`c\,2^j(\mathcal T_j^\sigma)^2`
on the left, then summing in `j` and integrating in time yields

```math
\int_0^T\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_{SDS}
\int_0^T\sum_{j>N+M+4}\mathrm{Err}_j^\sigma(t)\,dt,
```

which is exactly `(SDS^\sharp)` once the errors sit at the barrier scale.

So the monotonicity parent is sufficient only if it is genuinely
one-sided and coercive on the weighted tail queue.

## Parent Route 2: One-Sided Tail Self-Interaction Damping

The weighted packet decomposition already isolates the lifted remainder under
the theorem-facing upper carrier bound

```math
|\mathcal R_{j,\mathrm{lift}}^\sigma(t)|
\le
C_R
\sum_{k>j+M}2^{-\sigma(k-j)}a_k(t)\,\mathcal D_k^\uparrow(t).
```

The damping parent route is the exact coefficient-margin statement that this
lifted term is bounded by a small part of the square queue plus a correction
and an integrable error:

```math
\mathcal R_{j,\mathrm{lift}}^\sigma(t)
\le
\varepsilon\,2^j\big(\mathcal T_j^\sigma(t)\big)^2
+ \partial_t\Psi_{j,\mathrm{lift}}^\sigma(t)
+ \mathrm{Err}_{j,\mathrm{lift}}^\sigma(t).
```

This is exactly the coercive version of the weighted one-sided flux identity
already recorded in
`weighted-one-sided-enstrophy-tail-flux-identity.md`.

Once this estimate is available, the same summation over `j` gives

```math
\int_0^T\sum_{j>N+M+4}2^j\big(\mathcal T_j^\sigma(t)\big)^2\,dt
\le
C_{SDS}'
\int_0^T\sum_{j>N+M+4}\mathrm{Err}_j^\sigma(t)\,dt,
```

so the damping parent route also reduces to `(SDS^\sharp)`.

This is the cleanest local statement of the missing structure:
the lifted forcing must be coercive against the square of the weighted upper
tail, not merely bounded by a first-moment tail norm.

## Parent Route 3: All-Scale Transport-Loss / Spectral Dispersion

The all-scale parent route is a global kernelized version of the same idea.
A sufficient global law would be a summable gap kernel `K_r` such that every
upward dyadic transfer carries a decaying spectral cost:

```math
\sum_{j}\sum_{k<j}
\mathcal T_{k\to j}(t)
\le
C_{disp}
\sum_j\sum_{k<j}
K_{j-k}\,a_k(t)\,b_j(t),
\qquad
\sum_{r\ge 1}K_r<\infty.
```

If this law is strong enough to control the weighted upper-tail convolution

```math
\mathcal T_j^\sigma(t)=\sum_{\ell\ge j}2^{-\sigma(\ell-j)}D_\ell(t),
```

then restricting to the lifted geometry `N+M<k<j-4` recovers the kernelized
carrier, and the same square estimate on `\mathcal T_j^\sigma` follows.

So the all-scale route is not a different obstruction. It is the global
transport-language version of the same coercive tail estimate.

## Route Audit Verdicts

Three bounded route audits were run against the current theorem notes. Their
joint verdict is:

- the monotonicity route does not prove anything stronger than
  `(SDS^\sharp)` on the current Euclidean surface; after weighted tail
  summation it collapses to the same paired carrier
  `\mathfrak P_N=\sum_{k>N+M}2^k a_k\mathcal D_k^\uparrow`;
- the transport-loss route is strictly stronger only as a global theorem
  statement, but locally it still asks for the same paired-carrier coercivity;
- the spectral-dispersion route is not a separate frontier theorem at all:
  `(SDS'^\sharp)` is only the square-function packaging of `(SDS^\sharp)`.

So the three parent routes are now tested, not merely conjectured, and they do
not split the local frontier into different closure mechanisms.

## Weight-Mismatch Audit

The newer decorrelation branch adds one more exact negative conclusion. On the
actual one-sided tail weight

```math
w_\ell^{(j)}:=2^{-\sigma(\ell-j)},
\qquad
w_j^{(j)}=1,
```

the explicit mismatch is

```math
w_j^{(j)}-w_\ell^{(j)}
=
1-2^{-\sigma(\ell-j)}.
```

In the lifted regime this satisfies

```math
c_{\sigma,M}\le 1-2^{-\sigma(\ell-j)}\le 1,
\qquad
c_{\sigma,M}:=1-2^{-\sigma(M+1)}>0,
```

so the weight records one-sided direction but does not produce additional gap
decay. Therefore the decorrelation branch cannot extract the missing smallness
from the tail weight itself; it must come from a stronger signed commutator
defect theorem or from a genuinely new tail theorem.

## Signed-Flux Narrowing

The branch has now been narrowed one step further. The exact remaining burden
is no longer “decorrelation” in the loose sense and no longer a theorem on an
unsigned bilinear tail. It is the SDS-weighted pre-absolute-value signed sum recorded in
`weighted-signed-shell-exchange-sum-theorem.md`:

```math
\sum_k \mathfrak G_{k,N}^\sigma(t)
=
\sum_{j>N+M+4}\sum_{\ell\ge j}\sum_{j+M<k<\ell-4}
2^j2^{-\sigma(\ell-j)}
\big\langle \Delta_k u(t)\cdot\nabla \Delta_\ell u(t),\,\Delta_j u(t)\big\rangle.
```

This sharpens the branch diagnosis:

- the proof has already extracted all available termwise bounds;
- the remaining possible self-limiting law must appear only after summing many
  signed exchanges together;
- every route that takes absolute values too early destroys that possibility
  and collapses back to the known positive carrier burdens.

There is now one additional exact PDE identity on the branch, recorded in
`mixed-shell-bilinear-dissipation-identity.md`: a mixed-shell product law with
left-hand side

```math
\nu\bigl(1+2^{-2(\ell-j)}\bigr)K_{j,\ell}^\sigma D_jD_\ell.
```

So the branch has split into two exact PDE burdens:

- either the SDS-weighted signed shell exchange collapses by cancellation
  before absolute values;
- or the mixed-shell identity is closed by the strict/spill coefficient route
  together with a new theorem on its signed exchange block.

That second route is now sharper too: the packetwise expansion in
`mixed-shell-bilinear-dissipation-identity.md` now shows that the mixed
boundary term is already barrier-sized from the smooth compactly supported
initial data class, the residual mixed high-high packet is absorbable into
`\mathfrak B_N^\sigma`, and strict and spill are lower-order against
`\mathfrak M_N^\sigma` and `\mathfrak B_N^\sigma`. The latest support audit in
that same note then goes one step further: for the bare pairwise interaction
`\mathcal I_{j;k,\ell}`, the extreme separated geometry `j+M<k<\ell-4`
forces `\mathcal I_{j;k,\ell}=0`, so the mixed-shell signed exchange block is
actually vacuous on that bare shell object. The newest coefficient audit there
then absorbs the strict-low packet by the `2^{-N/2}` gain against
`\mathfrak B_N^\sigma`, so the surviving mixed-shell burden is now only the
spill coefficient surface.

## Direct Test Against Current Inputs

The inherited Euclidean inputs give only:

```math
u\in L_t^\infty L_x^2\cap L_t^2H_x^1,
\qquad
\int_0^T\|P_{\ge N}u(t)\|_{L^2}^2\,dt\le C_*2^{-2\delta N}.
```

Those control first-moment tail surfaces such as

```math
\int_0^T\sum_{j\ge N}2^{-2j}D_j(t)\,dt,
\qquad
\int_0^T\sum_{j\ge N}2^{-4j}D_j(t)\,dt,
```

but they do not control the paired carrier

```math
\int_0^T\sum_{k>N+M}2^k\,a_k(t)\,\mathcal D_k^\uparrow(t)\,dt.
```

So none of the three parent routes follows directly from the current Euclidean
surface. They all require the same new coercive structure.

## Monotonicity Route Reduction

The monotonicity route can be written in the explicit packet form

```math
\partial_t \Phi_j^\sigma(t)+c\,2^j\big(\mathcal T_j^\sigma(t)\big)^2
\le
\partial_t \Psi_j^\sigma(t)+\mathrm{Err}_j^\sigma(t),
```

with

```math
\int_0^T\sum_{j>N+M+4}\mathrm{Err}_j^\sigma(t)\,dt\le C_*2^{-2\delta N}.
```

If such a coercive inequality holds, then summing in `j>N+M+4` and
integrating in time gives `(SDS^\sharp)` provided the endpoint contribution

```math
\mathfrak E_{N,\mathrm{end}}^\sigma
:=
\sum_{j>N+M+4}
\Big(
\Phi_j^\sigma(0)-\Phi_j^\sigma(T)
+
\Psi_j^\sigma(T)-\Psi_j^\sigma(0)
\Big)_+
\le
C_{\mathrm{end}}2^{-2\delta N}.
```

Together with the displayed `Err_j^\sigma` estimate, this is the exact
endpoint/tail input needed for the SDS sum.

Equivalently, the only genuinely new step in the monotonicity route is the
lifted coercivity estimate

```math
\mathcal R_{j,\mathrm{lift}}^\sigma(t)
\le
\varepsilon\,2^j\big(\mathcal T_j^\sigma(t)\big)^2
+ \partial_t\Psi_{j,\mathrm{lift}}^\sigma(t)
+ \mathrm{Err}_{j,\mathrm{lift}}^\sigma(t),
```

because strict low, spill, and high-high already collapse into the accepted
barrier-scale error surface.

## Common Missing Structure

The shared missing theorem content can be written in two equivalent local
forms.

The first is the paired-carrier form:

```math
\int_0^T\sum_{k>N+M}2^k\,a_k(t)\,\mathcal D_k^\uparrow(t)\,dt
\le
C_*2^{-2\delta N}.
```

The second is the square/coercive form:

```math
\int_0^T\sum_{k>N+M}2^k\big(\mathcal D_k^\uparrow(t)\big)^2\,dt
\le
C_*2^{-2\delta N},
```

from which the paired-carrier estimate follows by Cauchy-Schwarz.

Equivalently:

```math
\text{the upper tail must be one-sided, kernelized, and square-coercive.}
```

## Equivalent Theorem Shapes

The missing coercive step can now be stated in three equivalent theorem
languages.

### Transport-Loss Form

Introduce a one-sided transport-loss carrier `\Lambda_{j\to\uparrow}^\sigma`
and require

```math
\mathcal R_{j,\mathrm{lift}}^\sigma
\le
\Lambda_{j\to\uparrow}^\sigma\,\mathcal T_j^\sigma,
\qquad
\Lambda_{j\to\uparrow}^\sigma
\le
\varepsilon\,2^j\mathcal T_j^\sigma
+ \partial_t\Theta_j^\sigma
+ \mathrm{err}_j^\sigma.
```

After the lower-order pieces are included in the definitions of
`\Psi_j^\sigma` and `\mathrm{Err}_j^\sigma`, this is exactly the lifted
coercive estimate already isolated on the monotonicity route.

### Entropy / Weighted Enstrophy Form

Define the corrected tail functional

```math
\mathcal H_j^\sigma:=\Phi_j^\sigma+\Psi_j^\sigma.
```

The cleanest master statement is

```math
\partial_t \mathcal H_j^\sigma
+ c\,2^j\big(\mathcal T_j^\sigma\big)^2
\le
\mathrm{Err}_j^\sigma,
\qquad
\int_0^T\sum_{j>N+M+4}\mathrm{Err}_j^\sigma(t)\,dt
\le
C_*2^{-2\delta N}.
```

This is the tight PDE version: the weighted high-frequency tail satisfies a
one-sided entropy dissipation law, and the lifted forcing is controlled by the
`\varepsilon` share of the square queue plus the displayed correction and error.
The coercive margin retained by the route is `c-\varepsilon`, so the statement
is useful only with `0<\varepsilon<c`.

### Spectral Locality / Anti-Resonance Form

Define the nonlocal upward transport operator

```math
\mathfrak L_j^\sigma[u]
:=
\sum_{k>j+M}2^{-\sigma(k-j)}\,a_k\,\mathcal D_k^\uparrow.
```

Then the equivalent anti-resonance statement is

```math
\mathfrak L_j^\sigma[u]
\le
\varepsilon\,2^j\big(\mathcal T_j^\sigma\big)^2
+ \partial_t\Psi_j^\sigma
+ \mathrm{Err}_j^\sigma.
```

With the normalized alignment bound

```math
|\mathfrak L_j^\sigma[u]-\mathcal R_{j,\mathrm{lift}}^\sigma|
\le
C_{align}\,\mathrm{Err}_{j,\mathrm{align}}^\sigma,
```

this is the same coercive step stated as a theorem about nonlocal upward
transport: the cumulative upper-tail interaction behaves like a dissipative
queue, not like a coherent amplifier.

## Preferred Master Statement

Among the three equivalent formulations, the entropy version is the cleanest
authoritative statement for the route:

```math
\partial_t \mathcal H_j^\sigma
+ c\,2^j\big(\mathcal T_j^\sigma\big)^2
\le
\mathrm{Err}_j^\sigma,
\qquad
\mathcal H_j^\sigma:=\Phi_j^\sigma+\Psi_j^\sigma.
```

It is the closest to the PDE, it implies `(SDS^\sharp)` directly after summing
in `j`, and the transport-loss and spectral-locality versions are direct
rephrasings of the same missing coercive content.

## Verdict

The three candidate parents are not competing local closure mechanisms. They
are three names for the same missing coercive estimate:

```math
\text{weighted one-sided enstrophy monotonicity}
\Longleftrightarrow
\text{one-sided tail self-interaction damping}
\Longleftrightarrow
\text{all-scale transport-loss / spectral dispersion}
```

as far as the current route is concerned.

The current route already exposes the paired carrier. What is missing is the
new theorem that controls it at the barrier scale `C_*2^{-2\delta N}`.
