# MPP OLD.MAIN / CLAY.BRIDGE Final Audit Note

## Status

Theorem-facing final bridge note for the averaged-to-pointwise Navier-Stokes route.

Role: assemble the original endpoint matrix into no finite-time class exit, then connect class-exit exclusion to global classical regularity for the official Clay setting on `R^3` or `T^3`.

## Standing inputs

The completed averaged route supplies

$$
AVG.MAIN.A \Rightarrow End_{NS,\mathrm{avg}}.
$$

The completed readout bridge supplies

$$
READ.END:
End_{NS,\mathrm{avg}}+READ.COVER+Field.Read+DTC.Read
\Rightarrow
End_{NS}.
$$

The completed averaged-to-pointwise endpoint bridge supplies

$$
FULL.END:
AVG.MAIN.A+READ.COVER+READ.END
\Rightarrow
End_{NS}.
$$

The original endpoint closure theorem is

$$
CFI.A+End_{NS}
\Rightarrow
\text{no finite-time class exit}.
$$

## Theorem `OLD.MAIN.A`

### Statement

$$
\boxed{
OLD.MAIN.A:
AVG.MAIN.A+READ.COVER+READ.END+CFI.A
\Rightarrow
\text{no finite-time class exit}.
}
$$

### Proof

From `AVG.MAIN.A`, `READ.COVER`, and `READ.END`, apply `FULL.END` to obtain

$$
End_{NS}.
$$

Use the original class-membership forward-invariance theorem

$$
CFI.A.
$$

Then the original endpoint closure gives

$$
CFI.A+End_{NS}
\Rightarrow
\text{no finite-time class exit}.
$$

Therefore

$$
AVG.MAIN.A+READ.COVER+READ.END+CFI.A
\Rightarrow
\text{no finite-time class exit}.
$$

This proves `OLD.MAIN.A`.

## Theorem `CLAY.BRIDGE`

### Official setting

The target equation is the incompressible Navier-Stokes system on `R^3` or `T^3`:

$$
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0,
$$

with smooth divergence-free initial data

$$
u_0^{vel}:=u_0\in C^\infty,
\qquad
\nabla\cdot u_0=0.
$$

### Endpoint/classical-continuation equivalence

Name the final interface

$$
ECQ.A.
$$

It states that, for the maximal classical solution on `[0,T_*)`,

$$
T_*<\infty
\Longleftrightarrow
\text{finite-time class exit on a retained same-fluid approach window}.
$$

Equivalently, persistence of the installed class witness on every retained same-fluid approach window is a complete classical continuation certificate.

### Statement

$$
\boxed{
CLAY.BRIDGE:
\text{no finite-time class exit}+ECQ.A
\Rightarrow
\text{global smooth classical Navier-Stokes solution}.
}
$$

### Proof

Let `(u,p)` be the maximal classical solution launched from smooth
divergence-free data. Periodic `H^s` local well-posedness gives a unique
classical solution on a maximal lifespan

$$
[0,T_*).
$$

Assume

$$
T_*<\infty.
$$

By `ECQ.A`, finite maximal time yields a finite-time class exit on a retained same-fluid approach window. This contradicts `OLD.MAIN.A`.

Hence

$$
T_*=\infty.
$$

The solution is classical on each compact interval `[0,T]`; therefore it is global and smooth.

Thus

$$
\boxed{
OLD.MAIN.A+ECQ.A
\Rightarrow
\text{global smooth classical Navier-Stokes solution}.
}
$$

## Final chain

Combining the route:

$$
AVG.MAIN.A+READ.COVER+READ.END+CFI.A
\Rightarrow
\text{no finite-time class exit},
$$

and

$$
\text{no finite-time class exit}+ECQ.A
\Rightarrow
\text{global smooth classical Navier-Stokes solution}.
$$

Therefore

$$
\boxed{
AVG.MAIN.A+READ.COVER+READ.END+CFI.A+ECQ.A
\Rightarrow
\text{global smooth classical Navier-Stokes solution}.
}
$$

## Promotion / non-circularity audit

The route order is

$$
SCF_{\mathrm{base}}
\to
ATD_m^\varepsilon
\to
AACT.KX
\to
AVG.RCV.A
\to
LCI.A_{\mathrm{avg}}
\to
CSP.A_{\mathrm{avg}}
\to
OFP.A_{\mathrm{avg}}
\to
CFI.A_{\mathrm{avg}}
\to
End_{NS,\mathrm{avg}}
\to
READ.COVER
\to
READ.END
\to
End_{NS}
\to
OLD.MAIN.A
\to
CLAY.BRIDGE.
$$

Audit results:

1. `SCF_base` is supplied from energy and pressure Poisson data.
2. `ATD_m^\varepsilon` is local epsilon-regularity on SCF-good cylinders.
3. `AACT.KX` spends the averaged scale-critical packet and scheduler data.
4. `AVG.RCV.A` produces the averaged lower-carrier route and spends no old pointwise `DTC.A`.
5. `LCI.A_avg`, `CSP.A_avg`, `OFP.A_avg`, and `CFI.A_avg` are produced in order.
6. `End_NS_avg` is assembled before `READ.COVER` is used.
7. `Field.Read` and `DTC.Read` are spent only inside `READ.END` after `READ.COVER` supplies the positive-scale cover.
8. `End_NS` is obtained only after `READ.END`.
9. `OLD.MAIN.A` spends `End_NS` and `CFI.A` only after production.
10. `CLAY.BRIDGE` spends no-finite-class-exit plus the explicit equivalence `ECQ.A`.

Every bridge is forward-only under this route order. Averaged objects are converted to pointwise objects only through `Field.Read`, `DTC.Read`, and `READ.END`.

## Remaining named interface

The last named interface is

$$
\boxed{ECQ.A}
$$

which identifies finite maximal classical breakdown with finite-time class exit on retained same-fluid approach windows. Once `ECQ.A` is installed, the route reaches the official Clay conclusion.
