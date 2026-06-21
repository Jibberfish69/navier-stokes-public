---
theorem_id: forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621
status: terminal-trace-atom-routed-to-countertrace-loss-or-storage-jump
logical_landing_node: full_hodgestokes_terminal_trace_atom_routing
edge_effect: "Routes the terminal trace member of the full Hodge-Stokes compactness/no-loss split through the installed signed terminal atom balance. A positive selected terminal trace atom is not an invisible source: in the full packet signed balance it is bounded by a retained negative terminal countertrace, terminal loss, or positive terminal storage jump. Terminal loss is visible payment; retained negative countertrace is the signed-saturation branch; positive storage jump is the endpoint no-jump/time-face branch. Thus FHC.32 reduces to signed saturation, visible loss, or terminal storage jump, not a separate hidden compactness defect."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Terminal Trace Atom Routing

Date: 2026-06-21

## 0. Aim

The compactness/no-loss split left the terminal trace defect

```math
[h_n]_+\,ds
\rightharpoonup
[h]_+\,ds+a_0\delta_{s=0},
\qquad
a_0>0.
\tag{TAR.1}
```

The signed terminal atom balance already gives the routing:

```math
\boxed{
\text{positive terminal trace atom}
\le
\text{negative terminal countertrace}
+
\text{terminal loss}
+
\text{positive terminal storage jump}.
}
\tag{TAR.2}
```

So `(TAR.1)` is not an invisible compactness defect.

## 1. Full-packet signed trace balance

Let \(h_n\) be the selected scalar density produced after the full
Hodge-Stokes packet has carried the local tuple.  Write

```math
d\mu_n^+=[h_n]_+\,ds,
\qquad
d\mu_n^-=[h_n]_-\,ds.
\tag{TAR.3}
```

After weak-star extraction,

```math
\mu_n^\pm\stackrel{*}{\rightharpoonup}\mu_\ast^\pm.
\tag{TAR.4}
```

Let \(\Lambda_\ast\ge0\) be the terminal loss measure and let \(dM_\ast\) be
the limiting storage derivative.  The installed signed atom balance gives

```math
\boxed{
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
[dM_\ast(\{0\})]_+.
}
\tag{TAR.5}
```

## 2. Routing

If \(\Lambda_\ast(\{0\})>0\), the atom is paid by visible terminal loss.

If \(\mu_\ast^-(\{0\})>0\), the atom is on the signed-saturation branch: the
negative terminal countertrace must be retained on the same carrier or legally
charged.

If \([dM_\ast(\{0\})]_+>0\), the atom is a terminal storage jump.  That is the
endpoint no-jump/time-face branch, not a hidden compactness loss.

Thus:

```math
\boxed{
\text{terminal trace atom}
\Rightarrow
\text{visible loss, signed saturation, or terminal storage jump.}
}
\tag{TAR.6}
```

## 3. Current result

The terminal trace defect is discharged as a separate hidden no-loss defect.
It routes into:

```math
\boxed{
\text{signed-saturation branch}
\quad\text{or}\quad
\text{visible loss}
\quad\text{or}\quad
\text{endpoint no-jump/storage-jump branch.}
}
\tag{TAR.7}
```

The forward-gold theorem still needs to close the signed-saturation branch and
the endpoint no-jump branch.  This note only prevents the terminal trace atom
from being counted as a fourth independent hidden compactness failure.
