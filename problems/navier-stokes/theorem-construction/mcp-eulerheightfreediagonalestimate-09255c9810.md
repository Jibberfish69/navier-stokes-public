# Euler height-free diagonal estimate and adjacent-scale defect

Fix a smooth Euler history on R^3 and set V_j=∂_t^j u. Let L be an integer total order and consider the finite diagonal V_j at spatial order L-j, 0≤j≤n, with L-j≥0.

The differentiated Euler recursion is

V_{j+1}=-P Σ_{k=0}^j C(j,k)(V_k·∇)V_{j-k}.

Define N=||u||_2, X_L=||Λ^L u||_2 and K_L=(X_L/N)^{1/L}. Under u^{a,λ}(x,t)=a u(λx,aλt),

N→aλ^{-3/2}N,
K_L→λK_L,
||Λ^{L-j}V_j||_2→a^{j+1}λ^{L-3/2}||Λ^{L-j}V_j||_2.

Hence

D_{j,L}:=||Λ^{L-j}V_j||_2/(N^{j+1}K_L^{L+3j/2})

is invariant under the full two-parameter Euler scaling.

To bound D_{j,L}, normalize first: choose λ=K_L^{-1}, a=N^{-1}K_L^{-3/2}. At the corresponding normalized time the scaled velocity U satisfies ||U||_2=||Λ^L U||_2=1, hence ||U||_{H^L}≤C_L. For the cofinal integer range L≥2, use the 3D Sobolev multiplication theorem

H^{s1}·H^{s2}→H^s whenever s≤min(s1,s2) and s1+s2-s>3/2.

For the kth product in the jth differentiated Euler equation choose

s1=L-k,
s2=L-j+k-1,
s=L-j-1.

Then s1+s2-s=L>3/2, and the finite diagonal recursion closes inductively on the normalized field. Thus

||∂_t^j U||_{H^{L-j}}≤C_{j,L}

for each finite j on the diagonal. Scaling back gives the scale-sharp height-free estimate

||Λ^{L-j}V_j||_2≤C_{j,L}N^{j+1}K_L^{L+3j/2}.

The condition L≥2 is only the ordinary integer Sobolev-product condition on total order L. It discards finitely many low total orders and imposes no bottom-height or continuation threshold; it has no effect on the L→∞ Sobolev intersection. No H^s→W^{1,∞} step and no 2/5 terminal law is used.

The correct evolution of K_L comes from the next total-order diagonal. Since |dX_L/dt|≤||Λ^L V_1||_2, apply the previous estimate at total order L+1:

|dX_L/dt|≤C_L N^2 K_{L+1}^{L+5/2}.

Using X_L=NK_L^L and conservation of N,

|dK_L/dt|≤C_L N K_L^{1-L}K_{L+1}^{L+5/2}
=C_L N K_L^{7/2}R_L^{L+5/2},

where R_L:=K_{L+1}/K_L.

Because every K_m scales by the same λ, R_L is invariant under the full Euler scaling. Equivalently,

|d(K_L^{-5/2})/dt|≤C_L N R_L^{L+5/2}.

The natural normalized time is defined by

dτ_L=NK_L^{5/2}dt.

This 5/2 is fixed by Euler scaling itself: NK_L^{5/2} transforms by aλ, exactly the inverse physical-time factor. If b_L=d(log K_L)/dτ_L, then

|b_L|≤C_L R_L^{L+5/2}.

This is the correct height-free replacement for the earlier bounded-b_L step. No universal 2/5 rate follows. Such a rate would require an additional same-history bound on the scale-invariant shape ratio R_L.

The rigorous output is therefore: the full diagonal mixed jet is controlled scale-sharply by the common spatial scale K_L, while the evolution of K_L couples to the adjacent-height, scale-invariant shape ratio R_L. The whole-terminal problem is same-history control of those shape ratios across the cofinal Sobolev axis.