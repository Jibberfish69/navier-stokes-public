# Reciprocal terminal clock: complete field and action check

**Reviewed scope and currentness.** [Actual zero-stock clock, normalized field and terminal cone](A0721-clock-normalized-field-and-terminal-cone.md) strengthens terminal cone/kinetic-tail bounds; [Natural clock jet and the scalar drift](A0713-first-clock-jet-and-drift.md) extends the first jet. C18 alone does not establish the sharp cone. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This new addendum independently checks the normalization of the actual forced Navier–Stokes history. It assumes the supplied weighted-action bound; it does not claim to derive that bound here.

The original field equation and pressure identities were reread at [forced-native-assembly-20260914.md:16](../SOURCES.md#S152), lines 16–100. The kinetic estimates and interpolation were reread at [line 740](../SOURCES.md#S152), lines 740–786.  

## 1. Inputs, clock and complete normalized equation

Use the actual smooth interior history

\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u+f,
\qquad\nabla\cdot u=0
\tag{C1}
\]

on \(0\le t<T<\infty\), with the native pressure and its complete prescribed force. Assume

\[
\sup_{t<T}\|u(t)\|_2\le K,
\qquad\int_0^T\|\nabla u\|_2^2dt\le\frac{K^2}{2\nu}.
\]

Let \(A>0\) denote the scalar stock offset, not the Laplacian operator or an initial jet. Define

\[
Y(t)=\|\nabla u(t)\|_2^2,
\quad z(t)=(A+Y(t))^{-1},
\quad z(t)\longrightarrow0\quad(t\uparrow T).
\]

The independently checked supplied input is

\[
q=\|u_t\|_2^2+\frac{\nu^2}{2}\|\Delta u\|_2^2+\|\nabla p\|_2^2,
\qquad d\mu=z^2q\,dt,
\quad\mu([0,T))\le C_W.
\tag{C2}
\]

Put

\[
s(t)=\int_0^t\frac{dr}{z(r)}
=At+\int_0^tY(r)\,dr,
\qquad S=AT+\int_0^TY(r)\,dr<\infty.
\]

The inverse clock is smooth on \([0,S)\), satisfies \(t_s=z\), and reaches \(T\) at \(S\). Below, \(z,u,f\) in a clock formula mean their values at \(t(s)\). Set

\[
v(s,x)=z(s)u(t(s),x),\quad
\pi(s,x)=z(s)^2p(t(s),x),\quad
\lambda(s)=\frac{z_s}{z}=z_t(t(s)).
\]

The exact transformed field equation is

\[
\boxed{v_s+(v\cdot\nabla)v+\nabla\pi
=\nu z\Delta v+z^2f+\lambda v,\qquad\nabla\cdot v=0.}
\tag{C3}
\]

Indeed \(v_s=(z_s/z)v+z^2u_t\), while each convective and pressure term scales by \(z^2\). All nonlinear, forcing and pressure terms remain. The term \(\lambda v\) is essential; deleting it would change the actual equation.

## 2. Exact clock action and boundary regularity

Define the covariant temporal response

\[
w=v_s-\lambda v=z^2u_t.
\]

Since \(dt=z\,ds\), the exact action density is

\[
\boxed{\frac{d\mu}{ds}
=\frac{\|w\|_2^2+\|\nabla\pi\|_2^2}{z}
+\frac{\nu^2}{2}z\|\Delta v\|_2^2.}
\tag{C4}
\]

Both \(w\) and \(v\) are solenoidal. Thus \(\langle w,\nabla\pi\rangle=0\), and the complete momentum square gives the equivalent exact formula

\[
\frac{d\mu}{ds}
=\frac1z\left(
\|\nu z\Delta v-(v\cdot\nabla)v+z^2f\|_2^2
+\frac{\nu^2}{2}z^2\|\Delta v\|_2^2\right).
\tag{C5}
\]

This retains pressure through the orthogonal momentum decomposition, and retains every force cross-term inside the displayed square.

The reciprocal definition gives the exact spatial stock relation

\[
\|\nabla v\|_2^2=z^2Y=z-Az^2,
\qquad\|v\|_2\le Kz.
\tag{C6}
\]

Consequently \(v(s)\to0\) strongly in \(H^1\) as \(s\uparrow S\), without asserting an endpoint value for \(u\). This trace is supplied by the normalization itself.

Differentiating the scalar stock and integrating by parts in space gives

\[
z_t=2z^2\langle\Delta u,u_t\rangle,
\qquad z_s=2\langle\Delta v,w\rangle.
\tag{C7}
\]

Hence

\[
|z_s|\le\frac{\sqrt2}{\nu}\frac{d\mu}{ds},
\qquad\operatorname{Var}_{[0,S)}z\le\frac{\sqrt2}{\nu}C_W.
\tag{C8}
\]

The coefficient follows by applying \(2ab\le a^2+b^2\) to \(a=\|w\|/\sqrt z\) and \(b=\nu\sqrt{z/2}\|\Delta v\|\). It is sharper than the previously supplied valid coefficient \(2\sqrt2/\nu\).

Because \(\int_0^S z\,ds=T\), (C4) also implies

\[
\|w\|_{L^1_sL^2_x}\le\sqrt{C_WT},
\qquad\|\nabla\pi\|_{L^1_sL^2_x}\le\sqrt{C_WT},
\]
\[
\|\nu z\Delta v\|_{L^1_sL^2_x}\le\sqrt{2C_WT},
\quad\|z^2f\|_{L^1_sL^2_x}\le A^{-1}\|f\|_{L^1_tL^2_x}.
\tag{C9}
\]

The clock momentum identity \(w+(v\cdot\nabla)v+\nabla\pi=\nu z\Delta v+z^2f\) therefore puts the full convective term in \(L^1_sL^2_x\), with bound

\[
\|(v\cdot\nabla)v\|_{L^1_sL^2_x}
\le(2+\sqrt2)\sqrt{C_WT}+A^{-1}\|f\|_{L^1_tL^2_x}.
\]

Moreover \(\|\lambda v\|_2\le K|z_s|\), so

\[
v\in W^{1,1}(0,S;L^2_\sigma),
\quad\|v_s\|_{L^1_sL^2_x}
\le\sqrt{C_WT}+\frac{\sqrt2K}{\nu}C_W.
\tag{C10}
\]

This supplies a genuine absolutely continuous \(L^2\) representative and its zero terminal trace. Also \(\int_0^S\|\nabla v\|_2^2ds=\int_0^T(1-Az)dt\le T\) and \(\int_0^S\|v\|_2^2ds\le K^2T/A\).

In the native \(L^2\) pressure gauge, the scalar pressure identity in source equation (3) gives

\[
\|\pi\|_2
\le C K^{1/2}z^2Y^{3/4}
+z^2\|(-\Delta)^{-1}\nabla\cdot f\|_2
\longrightarrow0.
\tag{C11}
\]

Here \(\|u\|_4^2\le C\|u\|_2^{1/2}\|\nabla u\|_2^{3/2}\), directly recorded in the reread source, and the smooth rapidly decreasing force supplies a uniform finite pressure-potential norm. Its low-frequency Fourier multiplier has size \(|\xi|^{-1}\), whose square is locally integrable in three dimensions; its high frequencies are controlled by the stipulated force Sobolev norms. An arbitrary spatially constant pressure gauge must be fixed before an \(L^2\) pressure assertion. No zero terminal trace for \(\nabla\pi\) is claimed from (C4).

## 3. Both complete balances and the terminal sign relationship

Pairing (C3) with \(v\) gives

\[
\frac12\frac d{ds}\|v\|_2^2
+\nu z\|\nabla v\|_2^2
=z^2\langle f,v\rangle+\lambda\|v\|_2^2.
\tag{C12}
\]

Convection and pressure vanish in this pairing by incompressibility; the complete force and stock-derivative term remain. Equivalently,

\[
\frac d{ds}\left(\frac{\|v\|_2^2}{2z^2}\right)
+\frac\nu z\|\nabla v\|_2^2=\langle f,v\rangle.
\tag{C13}
\]

Equation (C13) is exactly the original kinetic balance in the new clock. The zero normalized trace does not make its quotient \(\|v\|^2/z^2=\|u\|^2\) vanish.

Pairing with \(-\Delta v\) instead gives

\[
\frac12\frac d{ds}\|\nabla v\|_2^2
+\nu z\|\Delta v\|_2^2
=P_v-z^2\langle f,\Delta v\rangle
+\lambda\|\nabla v\|_2^2,
\tag{C14}
\]
\[
P_v=\langle(v\cdot\nabla)v,\Delta v\rangle.
\]

The pressure pairing is zero because \(\Delta v\) is solenoidal; no sign is assigned to the complete nonlinear production \(P_v\). Substituting (C6) into (C14) gives the exact scalar identity

\[
\boxed{\frac12z_s
=\nu z\|\Delta v\|_2^2-P_v+z^2\langle f,\Delta v\rangle.}
\tag{C15}
\]

All terms can be integrated to the clock endpoint: the diffusion term is in \(L^1\) by (C4); the force term is in \(L^1\) by weighted Cauchy–Schwarz and the smooth force; \(z_s\in L^1\) by (C8). Formula (C15) then also verifies absolute integrability of \(P_v\). Taking the actual assumed stock limit \(z(S)=0\) yields

\[
\boxed{\frac{z(s)}2
+\nu\int_s^S z\|\Delta v\|_2^2d\sigma
=\int_s^S\big(P_v-z^2\langle f,\Delta v\rangle\big)d\sigma.}
\tag{C16}
\]

For zero forcing this requires positive integrated enstrophy production on the terminal tail. That sign is a consequence of the hypothetical terminal stock loss, not a contradiction: the actual three-dimensional production in (C14) has no opposing universal sign supplied by this calculation.

The apparently singular work terms in both balances are integrable. Indeed \(\lambda\|\nabla v\|^2=(1-Az)z_s\), and \(|\lambda|\|v\|^2\le K^2z|z_s|\). In contrast,

\[
\int_0^s\lambda(\sigma)d\sigma
=\log z(s)-\log z(0)\longrightarrow-\infty.
\tag{C17}
\]

Thus one must retain the full stock derivative in the normalized equation when interpreting a zero boundary value. It is not a normalized equation with an integrable scalar drift and a discarded source.

For comparison only, the referenced terminal cone

\[
\frac\nu2z(t)^2+\int_t^Tz\,d\mu
\le(c_0+o(1))(T-t),\qquad c_0=\frac1{8\pi^2\nu^2},
\]

has the exactly equivalent clock form

\[
\frac\nu2z(s)^2
+\int_s^S\left(\|w\|_2^2+\|\nabla\pi\|_2^2
+\frac{\nu^2}{2}z^2\|\Delta v\|_2^2\right)d\sigma
\le(c_0+o(1))\int_s^Sz\,d\sigma.
\tag{C18}
\]

Only this change of variables is checked here; the derivation of the referenced cone and its sharp constant is outside this addendum's verification coverage.

The independently verified normalized field, action, trace and balances produce no further boundary contradiction. They provide complete exact relationships for the next proof step, with the full signed nonlinear production, pressure action, force and stock derivatives intact.
