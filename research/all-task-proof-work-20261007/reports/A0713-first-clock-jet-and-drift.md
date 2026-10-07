# Natural clock jet and the scalar drift

**Reviewed scope and currentness.** Extends [Reciprocal terminal clock: complete field and action check](A0717-normalized-field-and-action.md). [Actual zero-stock clock, normalized field and terminal cone](A0721-clock-normalized-field-and-terminal-cone.md) incorporates these formulas without making the inverse physical action finite. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This is a separate addendum to the supporting [field/action check](A0717-normalized-field-and-action.md). The supporting field/action calculation and operator-metric report retain their distinct scopes.

Use the exact clock field equation already independently derived:

\[
v_s+(v\cdot\nabla)v+\nabla\pi
=\nu z\Delta v+z^2f+\lambda v,
\quad\lambda=z_s/z,\quad t_s=z.
\tag{J1}
\]

The first natural clock jet is \(b=v_s\), whereas the weighted original temporal response is \(w=b-\lambda v=z^2u_t\). Differentiating (J1) on the strict interior gives the complete equation

\[
\boxed{b_s+(v\cdot\nabla)b+(b\cdot\nabla)v+\nabla\pi_s
=\nu z\Delta b+\lambda b
+\nu z_s\Delta v+2zz_sf+z^3f_t+\lambda_sv.}
\tag{J2}
\]

All four additional source terms are necessary. In particular \(f_s=zf_t\) and \((z^2f)_s=2zz_sf+z^3f_t\). The complete pressure row is

\[
\pi_s=2\lambda\pi+z^3p_t.
\tag{J3}
\]

Alternatively, multiplying the original Eulerian first temporal row by \(z^3\) gives the covariant response equation

\[
\boxed{w_s+(v\cdot\nabla)w+(w\cdot\nabla)v
+\nabla(\pi_s-2\lambda\pi)
=\nu z\Delta w+2\lambda w+z^3f_t.}
\tag{J4}
\]

This has scalar drift \(2\lambda\), not \(\lambda\), and pressure \(\pi_s-2\lambda\pi=z^3p_t\). Thus replacing the natural time jet by \(z^2u_t\) without these changes would lose actual terms.

The adjoining spatial jet \(k_j=\partial_jv\) obeys

\[
(k_j)_s+(v\cdot\nabla)k_j+(k_j\cdot\nabla)v+\partial_j\nabla\pi
=\nu z\Delta k_j+z^2\partial_jf+\lambda k_j.
\tag{J5}
\]

The scalar normalization is independent of space, so it introduces no spatial source allocations beyond the displayed terms. The common vector linearization in (J2) and (J5) is

\[
L_vh=\mathbb P[(v\cdot\nabla)h+(h\cdot\nabla)v],
\quad L_v+L_v^*=2\mathbb P S_v\mathbb P,
\quad S_v=zS_u.
\]

After moving the scalar drift to the left, its symmetric operator is

\[
2\mathbb P S_v\mathbb P-2\lambda I.
\tag{J6}
\]

These are different contributions. The actual vector strain satisfies the exact clock relation

\[
\int_0^S\|S_v\|_\infty ds
=\int_0^T\|S_u\|_\infty dt,
\tag{J7}
\]

so the time change does not itself pay the full spatial supremum of the original strain. The scalar drift instead has

\[
\int_0^s\lambda\,d\sigma=\log z(s)-\log z(0)\longrightarrow-\infty
\]

at the assumed zero terminal stock, even though \(\int|z_s|ds\le\sqrt2C_W/\nu\). Its work against \(v\) remains integrable because \(\|\lambda v\|_2\le K|z_s|\).

For the actual finite Fourier band, the earlier independently checked Bernstein bound does give a finite clock strain payment:

\[
\|\Pi_R\mathbb P S_v\mathbb P\Pi_R\|
\le\frac{R^{3/2}}{\sqrt{12}\,\pi}\sqrt{z-Az^2},
\]
\[
\int_0^S\|\Pi_R\mathbb P S_v\mathbb P\Pi_R\|ds
\le\frac{R^{3/2}}{\sqrt{12}\,\pi}\sqrt{TS},
\quad S\le AT+\frac{K^2}{2\nu}.
\tag{J8}
\]

Here \(\int\sqrt z\,ds=\int dt/\sqrt z\le\sqrt{T\int dt/z}=\sqrt{TS}\); all operations are on \(\mathbb R^3\). This retains the cutoff dependence \(R^{3/2}\) and pays neither the full untruncated strain nor the singular scalar drift.

The two force-only parts of (J2)'s additional source have concrete payments:

\[
\|2zz_sf\|_{L^1_sL^2_x}
\le\frac2A\|f\|_{L^\infty_tL^2_x}\operatorname{Var}z,
\qquad
\|z^3f_t\|_{L^1_sL^2_x}
\le A^{-2}\|f_t\|_{L^1_tL^2_x}.
\tag{J9}
\]

The first weighted action supplies no additional verified payment here for \(\nu z_s\Delta v\) or \(\lambda_sv\). Formula (J4) trades those explicit sources for the extra covariant scalar drift; it does not authorize omitting their effect. All equations above are exact interior identities, with endpoint statements limited to the already verified field/action traces and payments.
