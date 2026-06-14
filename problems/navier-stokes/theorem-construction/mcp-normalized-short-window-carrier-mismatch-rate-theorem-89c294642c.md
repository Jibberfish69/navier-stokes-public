# Normalized Short-Window Carrier-Mismatch Rate Theorem

## Status

Conditional theorem.

The normalized carrier term is

```math
\frac{\|C_{al}\|_{op}\sqrt{\delta_{car}}}{\theta_Jg_{al}}.
```

By the short-window carrier estimate `AS.7v`,

```math
\sqrt{\delta_{car}}
\le
\frac{E_{win}}{g_{seg}},
```

where `E_win` is the short-window generator / variation error and `g_seg` is the instantaneous segment-strain gap at the shifted anchor.

Therefore

```math
\frac{\|C_{al}\|_{op}\sqrt{\delta_{car}}}{\theta_Jg_{al}}
\le
\frac{\|C_{al}\|_{op}E_{win}}{\theta_Jg_{al}g_{seg}}.
```

Hence the normalized carrier-mismatch rate follows from

```math
\left\|
\frac{\|C_{al}\|_{op}E_{win}}{\theta_Jg_{al}g_{seg}}
\right\|_{L^q(d\nu_J)}
\to0.
```

## Remaining source theorem

```text
prove the short-window error scale:
E_win = o(theta_J g_al g_seg / ||C_al||_op)
in weighted Lq.
```
