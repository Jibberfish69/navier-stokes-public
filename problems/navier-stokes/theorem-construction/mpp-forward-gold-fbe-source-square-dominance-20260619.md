# MPP Forward Gold FBE Source-Square Dominance

Date: 2026-06-19

## Status

Exact bridge proved.  The fixed-band endpoint theorem `(FBE)` is dominated by
the native source-square reserve after a harmless fixed dyadic index shift.

This does not prove the source-square reserve.  It removes `(FBE)/(EP)` as an
independent endpoint supplier: any theorem that proves the native source-square
reserve on the selected terminal family also proves the fixed-band endpoint
estimate.

## 1. Objects

The fixed-band endpoint theorem is

\[
\textbf{(FBE)}:\qquad
\int_W
\Big(\sum_{m\in\mathcal B_I(N)}E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)}2^{-j}D_j(t)^2\Big)\,dt
\le
\frac{\eta\nu}{C}\int_WD_N(t)\,dt+C_*2^{-2\delta N}.
\]

Here \(\mathcal B_I(N)\) and \(\mathcal B_J(N)\) are fixed-width dyadic bands,
so there is a fixed integer \(C_B\) such that

\[
|m-j|\le C_B
\qquad
\text{whenever }
m\in\mathcal B_I(N),\ j\in\mathcal B_J(N).
\]

The native source-square reserve is

\[
\mathcal R_{N_0}(W)
:=
\int_W
\sum_{k>N_0}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
\]

## 2. Pointwise domination

The global energy bound gives

\[
\|\Delta_m u(t)\|_2^2\le \|u(t)\|_2^2\le E_0,
\]

hence

\[
E_m(t)=2^{2m}\|\Delta_m u(t)\|_2^2
\le E_0\,2^{2m}.
\]

For \(m=j+O(1)\), this becomes

\[
E_m(t)\,2^{-j}D_j(t)^2
\le
C_B E_0\,2^jD_j(t)^2.
\tag{FSS.1}
\]

Now choose \(k=j-5\).  Then \(D_j\) is one of the terms in
\(\sum_{\ell>k+4}D_\ell\), so

\[
2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2
\ge
2^{j-5}D_j(t)^2.
\tag{FSS.2}
\]

Therefore

\[
2^jD_j(t)^2
\le
32
\sum_{k>j-6}
2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
\tag{FSS.3}
\]

Since the endpoint band has fixed width, summing `(FSS.1)` over
\(m\in\mathcal B_I(N)\) and \(j\in\mathcal B_J(N)\) gives

\[
\Big(\sum_{m\in\mathcal B_I(N)}E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)}2^{-j}D_j(t)^2\Big)
\le
C_{I,J,E_0}\,
\sum_{k>N-C_{I,J}}
2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
\tag{FSS.4}
\]

Integrating on \(W\),

\[
\boxed{
\mathrm{FBE}_N(W)
\le
C_{I,J,E_0}\,\mathcal R_{N-C_{I,J}}(W).
}
\tag{FSS.5}
\]

## 3. Consequence

Thus any source-square theorem of the form

\[
\mathcal R_{N-C_{I,J}}(W)
\le
\frac{\eta\nu}{C_{I,J,E_0}C}\int_WD_N(t)\,dt
+
C_*2^{-2\delta N}
\tag{FSS.6}
\]

implies `(FBE)` immediately.

So the endpoint branch now has a strict hierarchy:

\[
\text{SourceSquareReserve.A}
\Longrightarrow
\text{FBE}
\Longrightarrow
\text{EP}
\Longrightarrow
\text{AQK endpoint closure}.
\]

The reverse implication is not available from the current endpoint data.
`(FBE)` only sees the reserve through the lower-band multiplier
\(\sum_{m\in\mathcal B_I(N)}E_m\).  If that multiplier degenerates, `(FBE)`
can miss source-square mass.  Thus source-square is the stronger native object.

## 4. Updated reading

The fixed-band endpoint pulse is not a new mathematical species.  It is a
finite-band projection of the same terminal active-square/source-square wall.

The endpoint energy test showed that first-moment energy cannot pay `(FBE)`.
This note shows that the correct stronger currency is already present:
\(\mathcal R_N\).  The remaining proof work is therefore not an independent
endpoint theorem plus a separate source-square theorem.  It is the source-square
/ active-height / no-waste reserve itself.
