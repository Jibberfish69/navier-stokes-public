---
ns_viewer:
  theorem_id: forward-gold-terminal-source-atom-forces-frequency-escape-20260621
  status: exact-frequency-escape-corollary-installed
  proof_role: forward_gold_exact_frequency_escape_reduction
  logical_landing_node: terminal_source_atom_frequency_escape
  edge_effect: "Turns the bounded Fourier-band endpoint UI theorem into its quantitative contrapositive. If v_m is supported in |k|_infty<=K_m, has sup_s ||v_m(s)||_2^2<=E, and its selected projected nonlinear source carries mass at least a on a terminal strip of length theta, then K_m(4K_m+1)^(3/2)>=a/(theta sqrt(3)E), hence K_m>=5^(-3/5)(a/(theta sqrt(3)E))^(2/5) for K_m>=1. More generally, for any fixed low cutoff K, the low-low projected source has strip mass at most theta C_K E, so any remaining terminal atom must live in the high-factor source containing at least one P_{>K}v. This does not control that high-factor source; it localizes the remaining gold obstruction to frequency escape, amplitude blowup, cutoff/collar defect, or genuine same-carrier residual refill."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-fourier-band-source-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-transported-shear-no-terminal-source-atom-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-convective-normal-form-full-ns-residual-test-20260621.md
  downstream_consequence: "The terminal source atom is now forced out of every fixed finite band. After low-low source removal, any surviving carrier must include a high-frequency factor, so the live supplier is exactly a high-frequency same-carrier reserve: source-square, selected critical-strain/CKN, strict no-waste, no-free terminal Zeno donor-chain control, or profile production."
---

# MPP Forward-Gold Terminal Source Atom Forces Frequency Escape

Date: 2026-06-21

## Status

This note records the exact contrapositive of the bounded Fourier-band endpoint
UI theorem.

The statement is deliberately limited:

\[
\boxed{
\text{a terminal projected-source atom under bounded energy must escape every
fixed Fourier band.}
}
\tag{TFE.1}
\]

It does not estimate the escaping high-frequency source. It only proves where
the remaining obstruction has to live.

## 1. Fixed-band endpoint UI recalled

The bounded-band theorem gives the following exact estimate. If

\[
\operatorname{supp}\widehat v(s)\subset\{|k|_\infty\le K\},
\qquad
\sup_{s\in[-1,0]}\|v(s)\|_2^2\le E,
\tag{TFE.2}
\]

and

\[
N(s):=-\mathbb P\nabla\cdot(v(s)\otimes v(s)),
\tag{TFE.3}
\]

then every measurable selector \(\sigma\), \(|\sigma|\le1\), satisfies

\[
\int_{-\theta}^{0}\int_{\mathbb T^3}[\sigma\cdot N]_+\,dy\,ds
\le
\theta\,\sqrt3\,K(4K+1)^{3/2}E.
\tag{TFE.4}
\]

This is the only input used below.

## 2. Quantitative frequency escape

Assume \(v_m\) is supported in the band

\[
\operatorname{supp}\widehat v_m(s)\subset\{|k|_\infty\le K_m\},
\tag{TFE.5}
\]

and obeys the uniform energy bound

\[
\sup_{m}\sup_{s\in[-1,0]}\|v_m(s)\|_2^2\le E.
\tag{TFE.6}
\]

Assume also that for some terminal strip length \(\theta\in(0,1)\), some
selector \(\sigma_m\), and some \(a>0\),

\[
\int_{-\theta}^{0}\int_{\mathbb T^3}
[\sigma_m\cdot N_m]_+\,dy\,ds
\ge a,
\qquad
N_m=-\mathbb P\nabla\cdot(v_m\otimes v_m).
\tag{TFE.7}
\]

Then `(TFE.4)` gives

\[
a
\le
\theta\,\sqrt3\,K_m(4K_m+1)^{3/2}E.
\tag{TFE.8}
\]

Hence

\[
\boxed{
K_m(4K_m+1)^{3/2}
\ge
{a\over\theta\sqrt3\,E}.
}
\tag{TFE.9}
\]

If \(K_m\ge1\), then \(4K_m+1\le5K_m\), so

\[
K_m(4K_m+1)^{3/2}
\le
5^{3/2}K_m^{5/2}.
\tag{TFE.10}
\]

Combining `(TFE.9)` and `(TFE.10)`,

\[
\boxed{
K_m
\ge
5^{-3/5}
\left({a\over\theta\sqrt3\,E}\right)^{2/5}.
}
\tag{TFE.11}
\]

Thus order-one terminal source mass on strips of length \(\theta\downarrow0\)
forces frequency escape at least at the scale

\[
\boxed{
K\gtrsim \theta^{-2/5}
}
\tag{TFE.12}
\]

in this fixed-band energy argument.

## 3. Low-low removal for general fields

Now let \(v\) be arbitrary with

\[
\sup_{s\in[-1,0]}\|v(s)\|_2^2\le E.
\tag{TFE.13}
\]

For a fixed cutoff \(K\), write

\[
v_{\le K}:=P_{\le K}v,
\qquad
v_{>K}:=v-v_{\le K}.
\tag{TFE.14}
\]

Define the low-low projected source

\[
N_{\le K,\le K}
:=
-\mathbb P\nabla\cdot(v_{\le K}\otimes v_{\le K}).
\tag{TFE.15}
\]

Since

\[
\|v_{\le K}(s)\|_2^2\le E,
\tag{TFE.16}
\]

the bounded-band estimate gives

\[
\boxed{
\int_{-\theta}^{0}\int_{\mathbb T^3}
[\sigma\cdot N_{\le K,\le K}]_+\,dy\,ds
\le
\theta\,\sqrt3\,K(4K+1)^{3/2}E.
}
\tag{TFE.17}
\]

The full source splits exactly as

\[
N
=
N_{\le K,\le K}
+
N_{\mathrm{hi}}^{(K)},
\tag{TFE.18}
\]

where

\[
\begin{aligned}
N_{\mathrm{hi}}^{(K)}
:=
-\mathbb P\nabla\cdot(
&v_{\le K}\otimes v_{>K}
+v_{>K}\otimes v_{\le K}\\
&+v_{>K}\otimes v_{>K}).
\end{aligned}
\tag{TFE.19}
\]

Thus every term in \(N_{\mathrm{hi}}^{(K)}\) contains at least one high-frequency
factor \(v_{>K}\).

For any vectors \(A,B\),

\[
[\sigma\cdot(A+B)]_+
\le
[\sigma\cdot A]_+ + |B|.
\tag{TFE.20}
\]

Therefore

\[
\int_{-\theta}^{0}\int[\sigma\cdot N]_+
\le
\theta\,\sqrt3\,K(4K+1)^{3/2}E
+
\int_{-\theta}^{0}\int |N_{\mathrm{hi}}^{(K)}|.
\tag{TFE.21}
\]

Consequently, if the full selected carrier has terminal strip mass at least
\(a\), then

\[
\boxed{
\int_{-\theta}^{0}\int_{\mathbb T^3}|N_{\mathrm{hi}}^{(K)}|\,dy\,ds
\ge
a-\theta\,\sqrt3\,K(4K+1)^{3/2}E.
}
\tag{TFE.22}
\]

In particular, whenever

\[
\theta\,\sqrt3\,K(4K+1)^{3/2}E\le {a\over2},
\tag{TFE.23}
\]

the high-factor source must carry at least half of the selected mass:

\[
\boxed{
\int_{-\theta}^{0}\int_{\mathbb T^3}|N_{\mathrm{hi}}^{(K)}|\,dy\,ds
\ge {a\over2}.
}
\tag{TFE.24}
\]

## 4. What this does and does not prove

This proves a location theorem for the remaining obstruction:

\[
\boxed{
\text{after low-low removal, the terminal source atom must contain a
high-frequency factor.}
}
\tag{TFE.25}
\]

It does not prove that the high-factor source is small. That is exactly the
remaining forward-gold burden. To close the gold route, the proof still needs
one of the known same-carrier high-frequency reserves:

\[
\boxed{
\begin{gathered}
\text{source-square domination},\\
\text{selected critical-strain/CKN tail depletion},\\
\text{strict no-waste},\\
\text{selected polar saturation plus no-free terminal Zeno donor-chain control},\\
\text{or profile production.}
\end{gathered}
}
\tag{TFE.26}
\]

## Verdict

Finite-band and low-low terminal atoms are now excluded exactly. A surviving
terminal source atom must be one of these:

\[
\boxed{
\text{frequency-escaping, amplitude/energy-blowing, local-defect-bearing,
or genuinely high-frequency residual/source-balanced.}
}
\tag{TFE.27}
\]

That is a narrower obstruction than the previous heat-scale pulse. The next
gold estimate has to act on the high-frequency factor \(v_{>K}\) in
`(TFE.19)` on the same selected carrier.
