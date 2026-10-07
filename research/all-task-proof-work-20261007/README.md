# Navier–Stokes task mathematical work

This additive package contains the worked source reconstructions, derived calculations and bounded mathematical reviews produced in the Navier–Stokes task. It complements the [previously published quadratic-route hierarchy](https://github.com/Jibberfish69/navier-stokes-public/blob/816d77982adbd0f04a12313fded1874787e2d992/research/quadratic-route-20261006/README.md).

Start with [the reading map](TEACHING.md), [status and conventions](STATUS.md), and [source identities](SOURCES.md). [Supersession](SUPERSESSION.md) distinguishes historical scope from later gains; [errata](ERRATA.md) records the only two transcription changes. [Coverage](COVERAGE.md) maps all 748 fixed task artifacts and the nine additional companion guides. Original papers and private provenance contents are not copied.

## Exact additional checks

The [standard-library validator](checks/derived-coefficients/validate.py) independently recomputes both literal thirty-field allocation tables and temporal-depth boundary/interior cancellation through depth eight. It ignores recorded pass flags and refuses an existing output file. For example:

```sh
python3 checks/derived-coefficients/validate.py --allocation-table data/thirty-field-allocation-table.json --binomial-table data/thirty-field-binomial-check.json --temporal-record data/temporal-depth-eight-coefficient-check.json --output new-derived-result.json
```

The [recorded result](checks/derived-coefficients/derived-coefficient-result.json) checks finite coefficients; it asserts no fluid simulation, terminal convergence or analytic bound. Existing unchanged public coefficient programs are reused rather than duplicated.
