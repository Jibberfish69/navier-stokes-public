# MPP Forward Gold Source-Square To Moving Trace Modulus

Date: 2026-06-19

## Status

Conditional bridge proved.  A source-square bound on the normalized selected
terminal source density gives the moving-packet terminal strip modulus by
Cauchy--Schwarz.

This does not prove `SourceSquareReserve.A`.  It proves the exact implication
that was previously being used informally:

\[
\boxed{
\text{source-square control of the selected normalized source density}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
}
\]

## 1. Normalized source density

Let \(P_m\) be a selected terminal heat-scale packet

\[
P_m
=
B_{r_m}(x_m)\times(T_m-r_m^2,T_m],
\qquad
r_m=2^{-k_m},
\qquad
r_m\downarrow0.
\]

Write normalized time

\[
s=\frac{t-T_m}{r_m^2}\in[-1,0].
\]

Let \(T_{k_m}(t)\) denote the active high-frequency tail density controlled by
the source-square reserve:

\[
T_{k_m}(t)
:=
\sum_{\ell>k_m+4}D_\ell(t).
\]

The packet-normalized square density is

\[
G_m(s)
:=
r_m^{1/2}T_{k_m}(T_m+r_m^2s).
\tag{SSM.1}
\]

Indeed,

\[
\int_{-1}^{0}G_m(s)^2\,ds
=
\int_{T_m-r_m^2}^{T_m}
r_m\,T_{k_m}(t)^2\,\frac{dt}{r_m^2}
=
\int_{T_m-r_m^2}^{T_m}
2^{k_m}T_{k_m}(t)^2\,dt.
\tag{SSM.2}
\]

Thus the \(k=k_m\) source-square term is exactly the \(L_s^2\) norm of the
normalized density \(G_m\).

## 2. Carrier domination hypothesis

Let \(a_m(s)\ge0\) be the normalized selected nonlegal terminal source trace on
the same packet after legal exits, finite donor chains, retained signed
partners, and non-selected leakage have been removed.

The needed carrier identification is the pointwise or integrated domination

\[
a_m(s)\le C_{\rm car}G_m(s)+\ell_m(s),
\tag{SSM.3}
\]

where the legal residue satisfies a terminal strip modulus

\[
\lim_{\varepsilon\downarrow0}\limsup_m
\int_{-\varepsilon}^{0}\ell_m(s)\,ds
=0.
\tag{SSM.4}
\]

This is the exact place where selected positive carrier identification enters.
Without `(SSM.3)`, source-square may control a tail density while the selected
positive source lives in a different packet, sign, projection, cutoff, or donor
channel.

## 3. Strip estimate

Assume the selected source-square bound

\[
\sup_m
\int_{-1}^{0}G_m(s)^2\,ds
\le C_{\square}.
\tag{SSM.5}
\]

Then for \(0<\varepsilon<1\), Cauchy--Schwarz gives

\[
\int_{-\varepsilon}^{0}G_m(s)\,ds
\le
\varepsilon^{1/2}
\left(
\int_{-\varepsilon}^{0}G_m(s)^2\,ds
\right)^{1/2}
\le
C_{\square}^{1/2}\varepsilon^{1/2}.
\tag{SSM.6}
\]

Using `(SSM.3)`,

\[
\int_{-\varepsilon}^{0}a_m(s)\,ds
\le
C_{\rm car}C_{\square}^{1/2}\varepsilon^{1/2}
+
\int_{-\varepsilon}^{0}\ell_m(s)\,ds.
\tag{SSM.7}
\]

Taking \(\limsup_m\) and then \(\varepsilon\downarrow0\), `(SSM.4)` gives

\[
\boxed{
\lim_{\varepsilon\downarrow0}\limsup_m
\int_{-\varepsilon}^{0}a_m(s)\,ds
=0.
}
\tag{SSM.8}
\]

This is precisely the moving-packet terminal strip modulus.

## 4. Consequence

The bridge is:

\[
\boxed{
\text{SelectedSourceSquareCarrierDomination.A}
+
\text{SourceSquareReserve.A}
\Longrightarrow
\text{TerminalMovingPacketTraceModulus.A}.
}
\tag{SSM.9}
\]

Here `SelectedSourceSquareCarrierDomination.A` means `(SSM.3)` on the actual
selected native positive source carrier, with only legal residues satisfying
`(SSM.4)`.

So source-square is not merely morally related to the time-face anti-atom.  It
gives a quantitative modulus:

\[
\omega(\varepsilon)
=
C_{\rm car}C_{\square}^{1/2}\varepsilon^{1/2}
+o_{\rm legal}(\varepsilon).
\tag{SSM.10}
\]

## 5. Boundary

This note does not prove either required input.

The source-square reserve itself remains the unweighted terminal critical
reserve:

\[
\mathcal R_N(W)
=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
\]

The carrier domination `(SSM.3)` is also not automatic, because the native
selected positive source is produced after localization, projection, weighting,
packet selection, and positive-part extraction.  This is the same saturation
problem appearing in

\[
\text{LocalEnergyFluxNativeResidueIdentity.A},
\qquad
\text{SelectedPositivePolarSaturation.A},
\qquad
\text{NoFreeTerminalZenoDonorChain.A}.
\]

The proved content is the exact middle implication: once the selected source is
really controlled by the square density, the last-instant atom cannot survive.
