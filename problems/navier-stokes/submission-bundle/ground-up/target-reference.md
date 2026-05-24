# Navier-Stokes Ground-Up PDF Target Reference

Status: active target-reference for the ground-up explanatory PDF.

This file preserves Thomas's stated target verbatim. It is not polished prose.
It is the intent and aim the paper build must preserve.

> the overall argument is simple: "the gold standard here is the forward-positive proof methods. however, those become exceptionally challening to solve and are not needed for a full proof. here we propose the silver-standard. a class-membership exclusion and contrapositive proof. we take the properties of the NS equations and intial data, convert it into a class-object, define witnesses and failure types, and show exhaustively that all failure types both land in those witnesses, and exit the class object. simply put, all smooth solutions to the MPP navier stokes problem are witnessed as class members. All non-smooth solutions of the same equations are witnessed outside of that class, making them irrelevant to the problem. This paper will first demonstrate the forward-proof mehcanisms and theorems which bring us to seemingly impassable or unsovlable obstructions naturally, then once an obstruction is reached, the proof will switch to the contrapositive method. rather than persisting on a begruginly long and arduous task of brute forcing and boostrapping estimates and controls on every problem, we can more easily show that IF any problem were to cause any non-smooth scenario, it must also lie outside the problem defintion."

## Build Contract

- Keep the prose plain and explanatory.
- Keep pre-facing paperwork light.
- Use the positive/forward program as motivation and obstruction evidence.
- Make the class-membership contrapositive proof the spine.
- Preserve the direct-live authority hierarchy:
  `live-theorem-edge.yaml`, `source-frontier.yaml`, `theorem-packet.yaml`,
  `theorem-repair.yaml`, and `submission-verdict.yaml`.
- Do not let generated/export overlays or the retired proof-obligation matrix
  steer the paper.
