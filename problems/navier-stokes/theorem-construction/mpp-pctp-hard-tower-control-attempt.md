# PCTP.hard Terminal-Tail Tower Control Attempt

## Status

Failed discharge / conditional readout theorem.

Target:

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

This note proves the tower readout conditional on a fixed positive-scale terminal cover and local regularity inputs. It does not derive those inputs from `OriginalSmoothData`.

## Conditional tower readout

Assume a finite fixed same-fluid readout cover of the terminal tail with positive lower radius, and assume `ATD_m^\epsilon` on each shrunken cover cylinder with `m>=N+2`.

Then local regularity gives uniform pointwise control of velocity derivatives

```math
\sup_{t<T_*}\sup_i\sup_{0\le k\le N+2}\|U_k(t)\|_{L^\infty(B_i')}
<\infty.
```

For the pressure part, use the installed local Poisson estimate. On each cover element,

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_au_b).
```

The local Calderon-Zygmund/Schauder estimate gives

```math
\|\nabla^{q+1}p_i^{loc}(t)\|_{L^\infty(B_i')}
\le C\|\nabla^q(\chi_i u\otimes u)(t)\|_{C^{0,\alpha}(2B_i)}.
```

The harmonic tail is controlled by energy:

```math
\|\nabla^{q+1}h_i(t)\|_{L^\infty(B_i')}
\le C\|u_0\|_{L^2(T^3)}^2.
```

The product-source carrier is bounded by the assumed `ATD_m^\epsilon` velocity derivative bounds on the fixed cover. Therefore

```math
\sup_{t<T_*}\sup_i\sup_{0\le q\le N}\|\nabla^{q+1}p(t)\|_{L^\infty(B_i')}
<\infty.
```

Finally,

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
```

and `m>=N+2` supplies the viscous derivative `\Delta U_q`. Thus both `U_q` and `K_q` are uniformly bounded through depth `N`. Taking the supremum over the finite cover gives

```math
\mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

## Why this does not close `PCTP.hard`

The proof above consumes exactly the terminal-tail inputs that `PCTP.hard` must produce:

1. a fixed positive-scale same-fluid readout cover;
2. `ATD_m^\epsilon` or equivalent local epsilon-regularity on that cover;
3. product-source carriers for the local pressure Poisson estimate.

`DTC.Read` is a readout bridge. It cannot create the fixed cover or the local regularity input. `READ.COVER` is noncircular only downstream of `End_NS_avg`, and cannot be used as an upstream supplier for the terminal-tail tower bound.

## Verdict

The conditional tower readout is valid:

```math
READ.COVER+ATD_m^\epsilon+DTC.Read\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

The unconditional terminal-tail tower theorem remains open:

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

So `tower-blown` remains a primitive endpoint face until a noncircular terminal cover/field/local-regularity production theorem is proved.