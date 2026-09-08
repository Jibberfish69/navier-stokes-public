import json
from pathlib import Path


base = Path(__file__).parent
runtime = json.loads((base / "runtime.json").read_text(encoding="utf-8"))
task = runtime["task"]
content_ids = [item["content_id"] for item in task["content_items"]]

selected_evidence = {
    "decision-carry-established-thought-forward-001",
    "decision-unfold-causal-relations-001",
    "decision-name-operational-objects-001",
    "decision-preserve-discovery-order-001",
    "decision-use-reader-shared-language-001",
    "decision-develop-to-reader-change-001",
    "decision-repair-exact-referent-001",
    "decision-sentence-possesses-complete-thought-001",
}

dispositions = []
evidence_uses = []
for evidence in runtime["evidence_snapshot"]["candidate_evidence"]:
    record_id = evidence["record_id"]
    chosen_source = evidence.get("decision_boundary", {}).get("chosen_move_id")
    source_ids = {item.get("move_id") for item in evidence.get("moves", [])}
    use = record_id in selected_evidence and chosen_source in source_ids
    dispositions.append(
        {
            "record_id": record_id,
            "status": "used" if use else "not_applicable",
            "reason": (
                "The live paper needs this bounded causal and reader-continuity decision."
                if use
                else "This bounded record does not govern the selected whole-paper movement."
            ),
        }
    )
    if use:
        evidence_uses.append(
            {
                "record_id": record_id,
                "source_move_id": chosen_source,
                "relation": "supports",
                "applicability_reason": (
                    "The supplied note fixes an ordered causal argument that must be developed "
                    "until each result creates the need for the next."
                ),
            }
        )

states = [
    task["reader_start"],
    "the reader sees one datum generate one velocity-pressure history and its equation-generated derivative tower",
    "the reader sees each finite rectangle as a finite view of that same mixed jet",
    "the reader has the complete compatible projective intersection before any critical readout",
    "the reader understands the universal trace and embedding estimate as a coordinate-selection rule",
    "the reader has seen uniform Sobolev, Serrin, critical endpoint, vorticity, and critical-height consequences derived in full",
    "the reader has seen dyadic, pressure, Type-I, and ultraviolet consequences derived with their finite-order boundaries",
    "the reader sees all Sobolev endpoint traces as one common endpoint of the original velocity field",
    "the reader sees the equation reconstruct the full pressure-compatible endpoint jet",
    task["reader_end"],
]

step_specs = [
    ("history-and-jet", "Carry the datum into one pressure-complete history, then differentiate that equation to reveal its mixed jet.", ["core-chain", "one-history", "derivative-tower"]),
    ("finite-views", "Define whole-terminal finite rectangles as restrictions of that jet and preserve their same-history compatibility.", ["rectangles-intersection"]),
    ("complete-intersection", "Assemble the rectangles projectively before reading off any classical estimate.", ["rectangles-intersection"]),
    ("master-coordinate", "Derive the Hilbert-valued trace and spatial embedding rule for arbitrary finite indices.", ["master-estimate"]),
    ("first-readouts", "Develop the first five classical consequences as separate derivations rather than a table.", ["uniform-sobolev", "serrin", "critical-endpoint", "vorticity-action", "critical-height"]),
    ("remaining-readouts", "Develop shell, pressure, scaling, and frequency-tail consequences and state their exact scope.", ["dyadic-shells", "pressure-estimates", "type-one", "ultraviolet-tail"]),
    ("common-endpoint", "Use the zeroth row and the equation to construct one common all-Sobolev endpoint.", ["common-endpoint"]),
    ("endpoint-jet", "Apply the original recurrence at the endpoint to reconstruct every velocity and pressure response.", ["endpoint-jet"]),
    ("restart", "Invoke local existence and overlap uniqueness to continue the same history and close the contradiction.", ["same-history-restart", "closing-chain"]),
]

sequence = []
for index, (step_id, thought, basis) in enumerate(step_specs):
    sequence.append(
        {
            "step_id": step_id,
            "thought": thought,
            "connection": "Each completed object supplies the exact input required by the next step.",
            "reader_start": states[index],
            "reader_end": states[index + 1],
            "content_basis": basis,
        }
    )

field_resolutions = []
for field, status in task["field_sources"].items():
    if status in {"assistant_inferred", "unknown"}:
        field_resolutions.append(
            {
                "field": field,
                "status": "accepted_for_run" if task.get(field) else "not_applicable",
                "value": task.get(field) or None,
                "reason": "This audience is the bounded reader implied by the requested MPP paper form.",
            }
        )

move = {
    "move_id": "full-note-led-paper",
    "move": {
        "selection": task["user_owned_move"],
        "connection": "Hold the same history through its jet and complete intersection; only then let each estimate arise as a finite projection before endpoint and restart.",
        "development": "Give every note section its own derivation, repaired notation, mathematical transitions, and stated boundary until the complete closing chain is earned.",
        "expression": "Use direct causal mathematical prose, complete sentences, standard notation, restrained theorem structure, and no repository or process language.",
    },
    "layer_status": {
        "selection": "present",
        "connection": "present",
        "development": "present",
        "expression": "present",
    },
    "reader_change": task["reader_end"],
    "next_possibility": "the reader can verify every downstream estimate and the same-history continuation from the complete intersection",
    "content_basis": content_ids,
    "sequence": sequence,
    "evidence_uses": evidence_uses,
    "risks": [
        "compressing the estimate consequences would recreate the rejected synopsis",
        "moving endpoint closure before the readouts would break the supplied order",
        "adding repository labels would displace the paper's mathematical object",
    ],
    "confidence": "unknown",
}

prediction = {
    "field_resolutions": field_resolutions,
    "reader_start": task["reader_start"],
    "live_pressure": task["live_pressure"],
    "candidate_moves": [move],
    "chosen_move_id": move["move_id"],
    "choice_reason": "Thomas fixed the note-led whole-paper movement directly.",
    "rejected_move_ids": [],
    "evidence_dispositions": dispositions,
    "uncertainties": [],
    "authorial_commitment": {
        "work_target": "replace the five-page condensation with the complete note-led standalone paper and verified PDF",
        "strongest_move_reason": "the supplied derivation already fixes the paper's causal sequence and the reader work each consequence must perform",
        "intellectual_gain": "the compatible intersection is experienced as one estimate generator whose finite coordinates produce every displayed continuation consequence",
        "reader_gain": "the reader can follow one datum and one history from the equation-generated jet through the endpoint and same-history restart",
        "delivery": "complete_output",
        "structural_commitment": {
            "scope": "whole_work",
            "decision_origin": "user_supplied",
            "voice_attribution": "user_owned",
            "artifact_disposition": "approved_change",
            "inherited_reader_state": task["reader_start"],
            "section_job": "realize the complete supplied derivation as one continuous standalone proof paper",
            "outgoing_reader_need": task["reader_end"],
            "gap_decision": "reorder",
            "gap_payment": "restore the note's full estimate-generator section before the endpoint, endpoint jet, and restart",
            "new_section_job": "",
            "enrichment_reason": "the note supplies full derivations that the condensed artifact omitted",
            "enrichments": [
                {
                    "detail": "repair every corrupted formula while preserving its mathematical role",
                    "reader_value": "the reader can follow and check each implication without decoding pasted-text damage",
                    "placement": "at the exact point each formula is first needed",
                    "restraint": "do not add a second proof route or outside architecture",
                },
                {
                    "detail": "develop each classical consequence as prose and equations",
                    "reader_value": "the estimate-generator claim becomes visible through repeated finite-coordinate choices",
                    "placement": "between the master estimate and the common endpoint",
                    "restraint": "retain the note's finite-order and finite-horizon qualifications",
                },
            ],
        },
    },
}

(base / "prediction.json").write_text(
    json.dumps(prediction, ensure_ascii=False, indent=2) + "\n",
    encoding="utf-8",
)
