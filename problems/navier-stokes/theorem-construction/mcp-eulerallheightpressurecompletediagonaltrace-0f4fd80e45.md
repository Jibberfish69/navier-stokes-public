# Euler all-height pressure-complete diagonal and endpoint trace

Let V_j=∂_t^j u and Q_j=∂_t^j p for a smooth 3D Euler history. Every row satisfies

V_{j+1}+Σ_{k=0}^j C(j,k)(V_k·∇)V_{j-k}+∇Q_j=0,

with Leray splitting

V_{j+1}=-P F_j,  ∇Q_j=-(I-P)F_j,
F_j=Σ C(j,k)(V_k·∇)V_{j-k}.

Because P and I-P are order-zero Fourier multipliers, all Sobolev estimates reduce to F_j.

## All-height temporal-derivative law

For every n,M≥0,

||V_n||_{H^{M+1}} ≤ C_{n,M} ||u||_{H^{M+n+1}}^{n+1}.

Proof: induction on n. For the step n=j+1 set S=M+n+1. The induction hypothesis from u∈H^S supplies

V_k∈H^{S-k}=H^{M+n+1-k},
V_{n-1-k}∈H^{S-(n-1-k)}=H^{M+k+2},
∇V_{n-1-k}∈H^{M+k+1}.

The 3D Sobolev multiplication theorem maps

H^{M+n+1-k} · H^{M+k+1} → H^{M+1},

because each input exponent is at least M+1 and their sum exceeds (M+1)+3/2. The polynomial degrees add to n+1. Summing the finitely many k closes the induction.

## All-height pressure law

The pressure formula is

Q_n=R_iR_j Σ_{k=0}^n C(n,k)(V_k)_i(V_{n-k})_j.

For S=M+n+1 the velocity law supplies

V_k∈H^{M+n+1-k},
V_{n-k}∈H^{M+k+1}.

Sobolev multiplication gives their product in H^M, and R_iR_j preserves H^M. Hence

||Q_n||_{H^M} ≤ D_{n,M} ||u||_{H^{M+n+1}}^{n+2}

for every n,M≥0.

These two laws hold simultaneously across the full integer Sobolev axis. Fixed auxiliary heights are unnecessary in the proof.

## Complete diagonals

For L=0,1,2,... define

D_L(u)={V_n∈H^{L-n}, Q_n∈H^{L-n}: 0≤n≤L}.

The single coordinate u∈H^{L+1} generates D_L(u): the pressure estimate gives Q_n∈H^{L-n}; the velocity estimate gives V_n at least at H^{L-n} for every n≤L (for n=L, the M=0 case gives V_L∈H^1⊂H^0).

For L'≤L, the canonical Sobolev inclusions H^{L-n}→H^{L'-n} give the restriction compatibility

π_{L'}^L D_L(u)=D_{L'}(u).

For a fixed temporal rung n and L=n+M, the diagonal contains

V_n∈H^M

for every M=0,1,2,... .

## Shared whole-terminal clock

Define

A(T)=∫_0^T ||∇u(t)||_∞ dt.

For every finite spatial order S, the Euler H^S energy estimate gives

||u(t)||_{H^S} ≤ ||u_0||_{H^S} exp(C_S A(t)).

Thus A(T_*)<∞ implies

sup_{t<T_*}||u(t)||_{H^S}<∞

for every finite S. The all-height velocity and pressure laws then give whole-terminal bounds for every finite mixed coordinate.

## Endpoint trace

For every n,M,

V_n∈L^2(0,T_*;H^{M+1}),
V_{n+1}=∂_tV_n∈L^2(0,T_*;H^{M-1}).

The Hilbert triple H^{M+1}⊂H^M⊂H^{M-1} and the Lions-Magenes trace theorem give

V_n∈C([0,T_*];H^M).

The traces are compatible under the canonical Sobolev restrictions. Hence one terminal field satisfies

V_n(T_*)∈H^M for every M≥0.

Taking M→∞ gives

V_n(T_*)∈⋂_{M=0}^∞ H^M⊂C^∞.

## Exact conditional closure

The pressure-complete diagonal allocation, cross-rung compatibility, whole-terminal endpoint trace, and Sobolev intersection close for every spatial height M simultaneously. The single remaining global input is

A(T_*)<∞.

When that clock is finite, the entire pressure-complete mixed jet has one smooth endpoint and Euler local well-posedness restarts the same smooth history beyond T_*.