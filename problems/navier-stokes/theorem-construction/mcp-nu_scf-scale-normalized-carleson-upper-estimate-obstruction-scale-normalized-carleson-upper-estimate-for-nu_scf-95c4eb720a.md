# Scale-normalized Carleson upper estimate for nu_SCF — failed attempt

## Target
Prove a scale-normalized upper estimate for the shared analytic charge

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`.

The estimate must match the `Jump_avg` lower side, which is scale-normalized through `SCF_base(Q_r^Phi) > epsilon_m`.

## Candidate estimate
For a separated terminal family of same-fluid windows `Q_k = Q_{r_k}^Phi(a_k,t_k)`, the needed form is

`sum_k NormalizedSCF(Q_k) <= C(E0, source)`.

Equivalently, the raw carrier needs a Carleson upgrade that controls the scale-normalized density of `nu_SCF` across terminal windows.

## Attempt
The existing upper-carrier lemma gives

`sum_k nu_SCF(Q_k) <= C nu_SCF([t0,T*) x T^3) < infinity`

for bounded-overlap window families. This is a raw finite-measure estimate.

To upgrade it to the target, one must insert the parabolic scaling factor hidden in `SCF_base`. For shrinking windows this creates a weighted sum such as

`sum_k r_k^{-alpha} nu_SCF(Q_k)`

for the appropriate scale-critical exponent. Finite raw mass alone gives no bound for this weighted sum over arbitrarily shrinking terminal windows.

The existing active-square and flux-source surfaces confirm the same obstruction: source-mass control by itself does not imply active-square Carleson control. A square-source theorem, active-shell amplitude gain, or direct active-square estimate is required.

## Verdict
The scale-normalized Carleson upper estimate remains open. The raw `nu_SCF` carrier is installed, while its scale-normalized Carleson upgrade is missing.

## Exact next target
Prove one of:

1. direct scale-normalized `nu_SCF` Carleson control on terminal same-fluid windows;
2. active-square Carleson control for the matching shell/SCF density;
3. heat-scale square-source or active-shell amplitude-gain theorem implying the Carleson control.