# CAVG.J Averaged Jump Endpoint Typing

Status: conditional grammar theorem.

## Statement

Let

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

Define the averaged jump face by the loss of every positive same-fluid SCF-good scale on a terminal approach tail:

```math
Jump_{avg}
:=
\exists\text{ same-fluid terminal approach tail }\mathcal T
\text{ with }\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing.
```

Then the endpoint grammar row is

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}
```

for the relevant same-fluid terminal approach tail.

## Proof

Choose a material point `(a,t)` in the bad set on the terminal tail. By definition of `\mathcal B_{\varepsilon_m}^{\Phi}`, every positive same-fluid cylinder centered at `(a,t)` has

```math
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m.
```

Thus the tail has no positive SCF-good scale at that material point. This is exactly the averaged field-scale fracture encoded by `Jump_avg`.

Hence a terminal tail meeting the bad material set enters the averaged jump endpoint face.

## Role in the route

`CAVG.J` supplies endpoint typing for the complement of the SCF-good material region. It pairs with

```math
SGC.A_{a.e.}
```

which supplies finite SCF-good subcovers on compact subsets of the good region.

Together they feed

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{good averaged cover or }Jump_{avg}.
```

## Boundary

`CAVG.J` records the face assignment. The strict-margin emptiness statement

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing
```

is obtained later from

```math
End_{NS,avg}\Longrightarrow\neg Jump_{avg}
```

inside `READ.COVER`.