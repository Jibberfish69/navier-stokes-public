# CAVG.J Averaged Endpoint Lemma

Status: conditional endpoint-definition lemma.

## Definitions

The bad material set at threshold `epsilon_m` is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

Define the averaged jump endpoint face on a same-fluid terminal approach tail `T` by

```math
Jump_{avg}(T)
\Longleftrightarrow
T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing.
```

Equivalently, `Jump_avg` records loss of every positive SCF-good same-fluid coherence scale along the tail.

## Lemma `CAVG.J`

For the relevant terminal tail,

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Proof

Take `(a,t)` in the bad material set on the terminal tail. By definition, every positive same-fluid cylinder centered at `(a,t)` violates the `SCF_base <= epsilon_m` condition. Therefore the tail contains a point with no positive SCF-good scale.

This is exactly the averaged jump face by the definition above. Hence `CAVG.J` holds.

## Role

`SGC.A_a.e` covers compact subsets of the good material region. `CAVG.J` assigns the complement to the averaged endpoint matrix. Together they give the dichotomy used by `AVG.COVER.A`:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{averaged-good cover or }Jump_{avg}.
```

## Boundary

`CAVG.J` is a face-identification lemma. Emptiness of the strict-margin bad set belongs to the later bridge

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```
