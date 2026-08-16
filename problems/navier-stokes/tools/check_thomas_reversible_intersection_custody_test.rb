#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasReversibleIntersectionCustodyTest < Minitest::Test
  ROOT = File.expand_path("..", __dir__)
  CONTRACT_PATH = File.join(ROOT, "target-operating-contract.yaml")
  SPINE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
  )
  WEIGHTED_TOWER_PATH = File.join(
    ROOT,
    "theorem-construction",
    "weighted-mixed-jet-radius-loss-energy-reduction.md"
  )
  DIRECT_AUTHORITY_PATHS = %w[
    live-theorem-edge.yaml
    source-frontier.yaml
    theorem-packet.yaml
    theorem-repair.yaml
    dependency-discharge.yaml
  ].map { |name| File.join(ROOT, name) }.freeze
  VPI_TOWER_PATH = File.join(
    ROOT,
    "theorem-construction",
    "mpp-vpi-homochiral-envelope-kernel-and-singleton-helicity-current-20260722.md"
  )
  RECORD_ANCESTRY_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-one-fluid-record-microscope-ancestry-reduction-20260803.md"
  )
  WEIGHTED_BETCHOV_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-balanced-axial-wobble-supplier-and-weighted-betchov-boundary-20260804.md"
  )
  BPT_DCT_BRIDGE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-bpt-dct47-heat-age-covariance-tangent-bridge-20260804.md"
  )
  MINIMAL_RECORD_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-minimal-signed-prefix-record-normalization-compactness-rigidity-boundary-20260804.md"
  )
  FIRST_CONTACT_NEGATIVE_DOME_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-first-contact-signed-prefix-negative-dome-turn-down-boundary-20260804.md"
  )
  FIXED_SELECTOR_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-fixed-radial-selector-full-field-strain-shape-finite-chord-normal-form-20260804.md"
  )
  STRAIN_RESPONSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-strain-shape-pressure-explicit-higher-response-and-finite-chord-obstruction-20260804.md"
  )
  SOURCE_SQUARE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-last-record-source-square-and-first-binomial-supplier-descent-20260804.md"
  )
  INHERITED_STORAGE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-inherited-source-storage-all-row-binomial-record-boundary-20260804.md"
  )
  SUPPLIER_JOIN_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-first-binomial-supplier-fixed-selector-strain-finite-chord-join-20260804.md"
  )
  RECORD_TAIL_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-record-pulse-reciprocal-parent-tail-evacuation-and-diagonal-depth-boundary-20260804.md"
  )
  DOUBLE_RECRUITED_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-canonical-pulse-double-recruited-parent-synchronization-boundary-20260804.md"
  )
  DOUBLE_DUHAMEL_OVERLAP_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-double-duhamel-finite-parent-ratio-high-output-overlap-boundary-20260804.md"
  )
  RECENT_SOURCE_HEAT_LAG_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-finite-ratio-double-duhamel-recent-source-heat-lag-boundary-20260804.md"
  )
  DYNAMIC_CORE_DOUBLE_RECENT_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-dynamic-core-canonical-record-double-recent-parent-ancestry-boundary-20260804.md"
  )
  SIGNED_DOUBLE_RECENT_JOIN_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-double-recent-core-fixed-selector-imbalance-collar-finite-chord-join-20260804.md"
  )
  IMBALANCE_INTERFACE_SELECTOR_REFUND_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-imbalance-interface-material-coarea-selector-refund-boundary-20260804.md"
  )
  SELECTOR_RADIUS_FINITE_CHORD_FLUX_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-selector-radius-finite-chord-flux-and-endpoint-boundary-20260804.md"
  )
  EPISODEWISE_CONORMAL_INCIDENCE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-conormal-deformation-gradient-high-rate-label-incidence-trichotomy-boundary-20260804.md"
  )
  CONORMAL_OBJECTIVE_INCIDENCE_REFUND_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-conormal-objective-incidence-moving-weight-finite-chord-refund-boundary-20260804.md"
  )
  SIGNED_SHARP_MEMBERSHIP_LAYER_CAKE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-signed-sharp-membership-layer-cake-finite-chord-refund-boundary-20260804.md"
  )
  SIX_ASSIGNMENT_SCALAR_PAIR_THREE_LABEL_KERNEL_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-six-assignment-scalar-pair-image-and-material-three-label-kernel-boundary-20260804.md"
  )
  ADAPTIVE_MATERIAL_PAIR_SELECTOR_RANGE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-adaptive-material-pair-selector-range-and-receiver-provenance-boundary-20260804.md"
  )
  EXPANDING_PLANE_COFACTOR_RESPONSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-expanding-plane-cofactor-response-and-relative-frame-block-separation-boundary-20260804.md"
  )
  CONORMAL_FIRST_HIT_RELATIVE_FRAME_SQUARE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-conormal-first-hit-relative-frame-critical-square-boundary-20260804.md"
  )
  DYNAMIC_CORE_LORENTZ_SOURCE_PULSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-dynamic-core-double-recent-lorentz-source-pulse-boundary-20260804.md"
  )
  SIGNED_ADJOINT_SOURCE_TIME_PULLBACK_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-signed-double-recent-adjoint-source-time-pullback-boundary-20260804.md"
  )
  FUTURE_INCIDENCE_INVARIANT_TRANSVERSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-future-incidence-invariant-transverse-projection-gramian-boundary-20260804.md"
  )
  INVARIANT_TRANSVERSE_FORWARD_BACKWARD_GRAMIAN_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-invariant-transverse-future-incidence-forward-backward-gramian-join-boundary-20260804.md"
  )
  LOW_FLOW_PROPAGATOR_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-paradifferential-low-flow-high-band-propagator-and-ancestry-reconvergence-boundary-20260804.md"
  )
  BAND_EDGE_FIM_RECOMBINATION_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-band-edge-fim-six-assignment-recombination-and-propagated-ancestry-boundary-20260804.md"
  )
  RECENT_SOURCE_FIRST_BINOMIAL_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-recent-source-first-binomial-characteristic-all-row-synchronization-boundary-20260804.md"
  )
  ADJOINT_FUTURE_INCIDENCE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-adjoint-future-incidence-backward-heat-first-binomial-boundary-20260804.md"
  )
  RHL_BINOMIAL_RADIUS_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-rhl-binomial-generating-radius-and-resummed-characteristic-no-gain-boundary-20260804.md"
  )
  HEAT_AGE_SPIKE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-datum-paid-heat-age-endpoint-integrability-and-last-record-spike-dichotomy-20260804.md"
  )
  RECENT_HIGH_SOURCE_SIX_BRANCH_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-recent-high-source-fixed-selector-six-branch-synchronization-boundary-20260804.md"
  )
  CANONICAL_POSITIVE_RADIAL_PULSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-canonical-record-positive-radial-pulse-completion-and-turn-down-action-boundary-20260804.md"
  )
  ENERGY_CLASS_RECIPROCAL_NEGATIVE_TOWER_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-energy-class-reciprocal-negative-space-binomial-tower-and-first-parent-boundary-20260804.md"
  )
  FULL_SIGNED_CURRENT_POSITIVE_PULSE_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-signed-current-positive-pulse-recombination-and-turn-down-action-boundary-20260804.md"
  )
  FULL_SIGNED_CURRENT_ENDPOINT_PROPAGATION_PATH = File.join(
    ROOT,
    "theorem-construction",
    "thomas-full-signed-current-adjacent-record-endpoint-propagation-and-zero-response-countercalibration-20260804.md"
  )

  def test_spine_preserves_thomas_source_ownership_and_historical_order
    spine = File.read(SPINE_PATH)

    assert_match(/Thomas Birnie\s+supplied the physical object/, spine)
    assert_order spine,
                 "## 1. The one physical object comes first",
                 "## 3. Original pressure-explicit binomial tower",
                 "## 5. Thomas's proved columnwise intersection theorem",
                 "## 6. What follows once the whole-interval intersection is present"
    assert_includes spine, "line 61024: the final explicit no-summation correction"
    assert_match(/were written by\s+assistants/, spine)
    assert_includes spine, "must not be back-attributed to Thomas"
  end

  def test_original_pressure_explicit_recurrence_precedes_later_readouts
    spine = File.read(SPINE_PATH)

    assert_includes spine, "J_{N+1,\\alpha}"
    assert_includes spine, "+\\nabla\\Pi_{N,\\alpha}"
    assert_includes spine, "Pressure remains explicit"
    assert_includes spine, "\\Lambda^s\\bigl((u\\cdot\\nabla)u+\\nabla p\\bigr)"
    assert_includes spine, "pressure-explicit"
    assert_order spine, "\\tag{TIR.4}", "\\tag{TIR.10}", "\\tag{TIR.18}"
    refute_includes spine, "H^{(n)}-\nH^{(n)}-"
  end

  def test_energy_integrability_is_a_consequence_of_the_intersection
    spine = File.read(SPINE_PATH)
    contract = mixed_tower_contract

    assert_order spine, "\\tag{TIR.16}", "\\tag{TIR.18}"
    assert_includes spine, "coordinate readout of the intersection"
    assert_match(/It is a downstream\s+coordinate\s+readout/, contract)
    refute_includes contract,
                    "The exact handoff from the preceding critical-height/VPI tower"
  end

  def test_assistant_coordinate_box_shorthand_is_not_the_governing_object
    contract = mixed_tower_contract

    refute_includes contract, "finite mixed-jet rectangles"
    assert_includes contract, "source_owner: Thomas Birnie"
    assert_includes contract,
                    "note_finite_coordinate_interface: \"(MR)_{N,m}\""
    assert_includes contract,
                    "curated-mathematical-formalization-not-original-name-not-independent-gate"
    assert_includes contract,
                    "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
    assert_order contract,
                 "historical_physical_order:",
                 "object_definition:",
                 "intersection_to_closure:"
  end

  def test_spaces_are_intersected_while_a_positive_norm_remains_only_a_proof_device
    contract = mixed_tower_contract

    assert_includes contract, "The spaces themselves are intersected, not added"
    assert_includes contract, "positive combination"
    assert_includes contract, "may be used as a proof device"
    assert_includes contract, "does not redefine the intersection"
  end

  def test_positive_sobolev_transport_keeps_the_advection_commutator
    note = File.read(WEIGHTED_TOWER_PATH)

    assert_includes note,
                    "\\langle [\\Lambda^s,u\\cdot\\nabla]J_{m,\\alpha},"
    assert_includes note, "the Sobolev commutator remains"
    refute_includes note,
                    "\\langle \\Lambda^s((u\\cdot\\nabla)J_{m,\\alpha})," \
                    "\\Lambda^s J_{m,\\alpha}\\rangle\n=0"
  end

  def test_higher_response_prefix_is_downstream_support_not_the_producer
    spine = File.read(SPINE_PATH)

    assert_includes spine, "\\mathfrak R_{s,n}"
    assert_includes spine, "A_{s,n}(T_*)"
    assert_includes spine, "\\mathcal I[u_0]"
    assert_includes spine, "record-net work from the complete current"
    assert_order spine,
                 "\\tag{TIR.24}",
                 "\\tag{TIR.28}",
                 "\\tag{TIR.35}",
                 "\\tag{TIR.36}",
                 "This is a downstream consistency loop"
    assert_order spine,
                 "\\tag{TIR.38}",
                 "\\tag{TIR.39}",
                 "\\tag{TIR.42}"
    assert_includes spine, "diagnostic identity, not an unpaid antecedent"
    assert_includes spine, "not a missing turn-down theorem"
    refute_includes spine, "coordinatewise theorem that constructs Thomas's intersection"
  end

  def test_complete_intersection_method_records_proved_producer_and_global_closure
    spine = File.read(SPINE_PATH)
    contract = mixed_tower_contract

    assert_order spine,
                 "## 5. Thomas's proved columnwise intersection theorem",
                 "## 6. What follows once the whole-interval intersection is present"
    assert_includes spine,
                    "Status: proved datum-to-compatible-intersection and global closure"
    assert_includes spine,
                    "The datum-generated compatible finite rectangles span every alleged finite"
    assert_match(
      /Their\s+projective intersection gives the endpoint-spanning compatible all-orders/,
      spine
    )
    assert_includes spine, "restart the same history; therefore\n\\(T_*=\\infty\\)"
    assert_includes spine, "This is the historically owned and established producer"
    assert_match(/not\s+Thomas's original name or an independent proof gate/, spine)
    assert_includes spine, "### 8.2 Quarantined later route-search archive"
    assert_includes contract,
                    "completed_task: mpp-closed-through-thomas-complete-one-fluid-reversible-intersection-method"
    assert_includes contract,
                    "task_provenance: thomas-original-one-fluid-pressure-explicit-reversible-nesting-and-columnwise-intersection-method"
    assert_includes contract,
                    "producer_status: proved-datum-to-endpoint-spanning-compatible-all-orders-intersection"
    assert_includes contract,
                    "global_closure_status: proved-through-common-H_x-infinity-endpoint-and-same-history-restart"
    refute_includes spine, "complete unfinished task"
    refute_includes spine, "live proof aim"
    refute_includes contract, "live_proof_task:"
    assert_includes contract,
                    "later_route_search_status: quarantined-support-only-not-live-closure-path"
    assert_order contract,
                 "historical_physical_order:",
                 "object_definition:",
                 "intersection_to_closure:"
  end

  def test_four_backward_smoothness_theorems_are_preserved_without_a_new_gate
    spine = File.read(SPINE_PATH)

    assert_includes spine, "Each backward step has its own intersection-to-smoothness argument"
    assert_includes spine, "\\mathcal S_\\infty^{1/2}"
    assert_includes spine, "\\operatorname{Dom}_{\\rm comp}(R_n;I)"
    assert_includes spine, "\\tag{TIR.13b}"
    assert_includes spine, "\\mathcal N_\\infty(I)"
    assert_includes spine, "\\tag{TIR.15b}"
    assert_order spine,
                 "endpoint-spanning compatible all-orders intersection",
                 "the four intersection-to-smoothness theorems",
                 "endpoint and restart"
    assert_includes spine, "The four embeddings do not, by themselves, prove their premise"
    assert_includes spine,
                    "The proved\ndatum-to-compatible-intersection theorem (TIR.11a) supplies"
  end

  def test_assistant_labels_and_residuals_never_take_custody_of_the_complete_task
    surfaces = DIRECT_AUTHORITY_PATHS + [CONTRACT_PATH]

    surfaces.each do |path|
      surface = File.read(path)

      assert_includes surface,
                      "completed_task: mpp-closed-through-thomas-complete-one-fluid-reversible-intersection-method"
      assert_includes surface,
                      "producer_status: proved-datum-to-endpoint-spanning-compatible-all-orders-intersection"
      assert_includes surface,
                      "global_closure_status: proved-through-common-H_x-infinity-endpoint-and-same-history-restart"
      assert_includes surface,
                      "later-projective-restatement-not-historical-name-not-gate"
      assert_includes surface,
                      "later-scalar-interface-not-historical-name-not-gate"
      assert_includes surface,
                      "later_route_search_status: quarantined-support-only-not-live-closure-path"
      assert_includes surface, "quarantined_later_residual_history:"
      assert_includes surface, "quarantined_later_contrapositive_history:"
      refute_includes surface, "current_exact_residual:"
      refute_includes surface, "current_contrapositive_reduction:"
      refute_includes surface, "original TIR.37 promotion"
      refute_includes surface, "Failure of the original TIR.37"
    end
  end

  def test_direct_authority_surfaces_route_to_thomas_spine
    DIRECT_AUTHORITY_PATHS.each do |path|
      surface = File.read(path)

      assert_includes surface, "thomas-one-fluid-reversible-intersection-proof-spine-20260803.md"
      assert_includes surface, "source_owner: Thomas Birnie"
      assert_includes surface, "proved_producer:"
      refute_includes surface, "live_proof_task:"
      assert_includes surface, "mixed_sobolev_tower_object_boundary_20260801"
      assert_includes surface, "proved_balanced_axial_wobble_recombination_boundary:"
      assert_includes surface, "proved_bpt_dct47_heat_age_tangent_bridge:"
      assert_includes surface, "proved_minimal_signed_prefix_record_reduction:"
      assert_includes surface, "proved_first_contact_signed_prefix_negative_dome_boundary:"
      assert_includes surface, "proved_fixed_selector_strain_shape_finite_chord_normal_form:"
      assert_includes surface, "proved_strain_shape_higher_response_boundary:"
      assert_includes surface, "proved_last_record_source_square_supplier_localization:"
      assert_includes surface, "proved_inherited_source_storage_all_row_boundary:"
      assert_includes surface, "proved_first_binomial_fixed_selector_join:"
      assert_includes surface, "proved_record_pulse_parent_tail_evacuation:"
      assert_includes surface, "proved_double_recruited_parent_synchronization_boundary:"
      assert_includes surface, "proved_double_duhamel_finite_parent_ratio_overlap:"
      assert_includes surface, "proved_recent_source_heat_lag_boundary:"
      assert_includes surface, "proved_dynamic_core_double_recent_parent_ancestry_boundary:"
      assert_includes surface, "proved_signed_double_recent_fixed_selector_join:"
      assert_includes surface, "proved_imbalance_interface_selector_refund_boundary:"
      assert_includes surface, "proved_selector_radius_finite_chord_flux_boundary:"
      assert_includes surface, "proved_episodewise_conormal_label_incidence_trichotomy_boundary:"
      assert_includes surface, "proved_conormal_objective_incidence_moving_weight_refund_boundary:"
      assert_includes surface, "proved_signed_sharp_membership_layer_cake_refund_boundary:"
      assert_includes surface, "proved_conormal_first_hit_relative_frame_critical_square_boundary:"
      assert_includes surface, "proved_dynamic_core_lorentz_source_pulse_boundary:"
      assert_includes surface, "proved_signed_double_recent_adjoint_source_time_pullback_boundary:"
      assert_includes surface, "proved_future_incidence_invariant_transverse_projection_boundary:"
      assert_includes surface, "proved_invariant_transverse_forward_backward_gramian_join_boundary:"
      assert_includes surface, "proved_low_flow_high_band_propagator_reconvergence_boundary:"
      assert_includes surface, "proved_band_edge_fim_six_assignment_recombination_boundary:"
      assert_includes surface, "proved_recent_source_first_binomial_characteristic_boundary:"
      assert_includes surface, "proved_adjoint_future_incidence_first_binomial_boundary:"
      assert_includes surface, "proved_rhl_binomial_generating_radius_no_gain_boundary:"
      assert_includes surface, "proved_heat_age_endpoint_integrability_spike_dichotomy:"
      assert_includes surface, "proved_recent_high_source_six_branch_synchronization_boundary:"
      assert_includes surface, "proved_canonical_positive_radial_pulse_completion_boundary:"
      assert_includes surface, "proved_energy_class_reciprocal_negative_space_tower_boundary:"
      assert_includes surface, "proved_full_signed_current_positive_pulse_variance_refund_boundary:"
      assert_includes surface, "proved_full_signed_current_adjacent_endpoint_propagation_boundary:"
      assert_includes surface, "signed strain shape"
      assert_includes surface, "complete finite-chord defect"
      assert_includes surface, "next response has"
      assert_includes surface, "both signs"
      assert_match(/at\s+least one quarter normalized signed current/, surface)
      assert_includes surface, "viscosity-matched"
      assert_includes surface, "every reciprocal binomial depth"
      assert_includes surface, "endpoint aliases of the same open action"
    end

    live_edge = File.read(File.join(ROOT, "live-theorem-edge.yaml"))
    assert_includes live_edge,
                    "route_label: thomas-one-fluid-reversible-intersection-proved-global-closure"
  end

  def test_latest_advances_remain_joined_and_do_not_claim_closure
    weighted_betchov = File.read(WEIGHTED_BETCHOV_PATH)
    bpt_dct = File.read(BPT_DCT_BRIDGE_PATH)
    minimal_record = File.read(MINIMAL_RECORD_PATH)
    first_contact_negative_dome = File.read(FIRST_CONTACT_NEGATIVE_DOME_PATH)
    fixed_selector = File.read(FIXED_SELECTOR_PATH)
    strain_response = File.read(STRAIN_RESPONSE_PATH)
    source_square = File.read(SOURCE_SQUARE_PATH)
    inherited_storage = File.read(INHERITED_STORAGE_PATH)
    supplier_join = File.read(SUPPLIER_JOIN_PATH)
    record_tail = File.read(RECORD_TAIL_PATH)
    double_recruited = File.read(DOUBLE_RECRUITED_PATH)
    double_duhamel_overlap = File.read(DOUBLE_DUHAMEL_OVERLAP_PATH)
    recent_source_heat_lag = File.read(RECENT_SOURCE_HEAT_LAG_PATH)
    dynamic_core_double_recent = File.read(DYNAMIC_CORE_DOUBLE_RECENT_PATH)
    signed_double_recent_join = File.read(SIGNED_DOUBLE_RECENT_JOIN_PATH)
    imbalance_interface_selector_refund = File.read(IMBALANCE_INTERFACE_SELECTOR_REFUND_PATH)
    selector_radius_finite_chord_flux = File.read(SELECTOR_RADIUS_FINITE_CHORD_FLUX_PATH)
    episodewise_conormal_incidence = File.read(EPISODEWISE_CONORMAL_INCIDENCE_PATH)
    conormal_objective_incidence_refund = File.read(CONORMAL_OBJECTIVE_INCIDENCE_REFUND_PATH)
    signed_sharp_membership_layer_cake = File.read(SIGNED_SHARP_MEMBERSHIP_LAYER_CAKE_PATH)
    six_assignment_scalar_pair_kernel = File.read(SIX_ASSIGNMENT_SCALAR_PAIR_THREE_LABEL_KERNEL_PATH)
    adaptive_material_pair_selector_range = File.read(ADAPTIVE_MATERIAL_PAIR_SELECTOR_RANGE_PATH)
    expanding_plane_cofactor_response = File.read(EXPANDING_PLANE_COFACTOR_RESPONSE_PATH)
    conormal_first_hit_relative_frame_square = File.read(CONORMAL_FIRST_HIT_RELATIVE_FRAME_SQUARE_PATH)
    dynamic_core_lorentz_source_pulse = File.read(DYNAMIC_CORE_LORENTZ_SOURCE_PULSE_PATH)
    signed_adjoint_source_time_pullback = File.read(SIGNED_ADJOINT_SOURCE_TIME_PULLBACK_PATH)
    future_incidence_invariant_transverse = File.read(FUTURE_INCIDENCE_INVARIANT_TRANSVERSE_PATH)
    invariant_transverse_forward_backward_gramian = File.read(INVARIANT_TRANSVERSE_FORWARD_BACKWARD_GRAMIAN_PATH)
    low_flow_propagator = File.read(LOW_FLOW_PROPAGATOR_PATH)
    band_edge_fim_recombination = File.read(BAND_EDGE_FIM_RECOMBINATION_PATH)
    recent_source_first_binomial = File.read(RECENT_SOURCE_FIRST_BINOMIAL_PATH)
    adjoint_future_incidence = File.read(ADJOINT_FUTURE_INCIDENCE_PATH)
    rhl_binomial_radius = File.read(RHL_BINOMIAL_RADIUS_PATH)
    heat_age_spike = File.read(HEAT_AGE_SPIKE_PATH)
    recent_high_source_six_branch = File.read(RECENT_HIGH_SOURCE_SIX_BRANCH_PATH)
    canonical_positive_radial_pulse = File.read(CANONICAL_POSITIVE_RADIAL_PULSE_PATH)
    energy_class_reciprocal_negative_tower = File.read(ENERGY_CLASS_RECIPROCAL_NEGATIVE_TOWER_PATH)
    full_signed_current_positive_pulse = File.read(FULL_SIGNED_CURRENT_POSITIVE_PULSE_PATH)
    full_signed_current_endpoint_propagation = File.read(FULL_SIGNED_CURRENT_ENDPOINT_PROPAGATION_PATH)
    spine = File.read(SPINE_PATH)
    contract = mixed_tower_contract

    assert_includes weighted_betchov, %q{a(d^2-a^2)}
    assert_includes weighted_betchov, %q{\mathcal J_{\rm WB}^{\zeta}}
    assert_includes weighted_betchov, "axial-wobble moment is gone"
    assert_includes bpt_dct, "The telescope is an endpoint alias"
    assert_includes minimal_record, "LastRecordSignedCoincidenceDecay.A"
    assert_includes minimal_record, %q{\geq{1\over4}}
    assert_includes first_contact_negative_dome, %q{\int_{J_n}Y_nP\,dt}
    assert_includes first_contact_negative_dome, %q{\int_{\mathcal F_n}P(t)\,dt\ge {A_n\over8}}
    assert_includes first_contact_negative_dome, %q{P'=\mathfrak K_{1/2}(u;u_t)}
    assert_includes first_contact_negative_dome, "no nonzero level-only dome"
    assert_includes first_contact_negative_dome, %q{H''}
    assert_includes first_contact_negative_dome, "not (TIR.37a) or MPP closure"
    assert_includes fixed_selector, %q{\mathcal P(w)
 ={64\ell_0\over15\pi}\int a(d^2-a^2)\,dx
 +\mathcal E_\zeta(w)}
    assert_includes strain_response, "one contracting direction and\ntwo expanding directions"
    assert_includes strain_response, %q{\mathscr Q(t):=\int\mathfrak q(x,t)\,dx}
    assert_includes source_square, %q{\mathsf S_n
 \ge {\nu A_n^2\over16(A_n+H_0)}}
    assert_includes source_square, "an endpoint-augmented sufficient\ncondition"
    assert_includes source_square, "not a strict reduction"
    assert_includes inherited_storage, %q{Q^{[j+1]}:=(\partial_t+\nu\Lambda^2)Q^{[j]}}
    assert_includes inherited_storage, "same scale-critical size at every depth"
    assert_includes supplier_join, %q{J_Q=\mathcal K_Q'+2\nu^2\mathcal Y_\zeta}
    assert_includes supplier_join, "creates no additional stock"
    assert_includes record_tail, "CanonicalRecordResolvedParentTurnDown.A"
    assert_includes record_tail, %q{N_n\simeq C_R^2\varepsilon_n^{-2}}
    assert_includes double_recruited, "CanonicalDoubleRecruitedParentDesynchronization.A"
    assert_includes double_recruited, "both remaining parents are the single history's Duhamel descendants"
    assert_includes double_duhamel_overlap, "CanonicalFiniteRatioDoubleDuhamelAncestryTurnDown.A"
    assert_includes double_duhamel_overlap, %q{c_{\rm ov}:=
 \frac{(\sqrt3-1)^2}{2048}>0}
    assert_includes double_duhamel_overlap, "not\nyet a strict reduction"
    assert_includes recent_source_heat_lag, "CanonicalFiniteRatioRecentDuhamelSourceDesynchronization.A"
    assert_includes recent_source_heat_lag, %q{\tau_n=O\!\left({1+\log R_n+\log n\over\nu R_n^2}\right)}
    assert_includes recent_source_heat_lag, %q{\int_{\mathcal F_n}Z_w(t)\mathfrak A_n(t)^2dt
 \ge c_{\rm age}\nu A_n}
    assert_includes recent_source_heat_lag, "not a genuinely smaller datum-paid theorem"
    assert_includes dynamic_core_double_recent, "all six assignments"
    assert_includes dynamic_core_double_recent, %q{|p|\ge r_n,\qquad |q|\ge r_n}
    assert_includes dynamic_core_double_recent, %q{\int_{I_n}\mathfrak A_n(t)^4dt}
    assert_includes dynamic_core_double_recent, "not a strict reduction"
    assert_includes signed_double_recent_join, %q{\mathfrak J_n^{\rm rr}}
    assert_includes signed_double_recent_join, "same unsplit receiver"
    assert_includes signed_double_recent_join, "one quantified alternative"
    assert_includes signed_double_recent_join, %q{\mathcal D_{\zeta,n}^{\rm rr}}
    assert_includes signed_double_recent_join, "not MPP closure"
    assert_includes imbalance_interface_selector_refund, %q{=J_n^{\rm rr}+c_\zeta\mathscr Q_-}
    assert_includes imbalance_interface_selector_refund, %q{\mathcal D_{\rho,n}^{+,\rm rr}}
    assert_includes imbalance_interface_selector_refund, "selector-covariant refund identity"
    assert_includes imbalance_interface_selector_refund, "co-normal bridge"
    assert_includes selector_radius_finite_chord_flux, %q{\partial_\rho\mathcal D_{\rho,n}^{+,\rm rr}
 =-c_1\mathscr Q_+}
    assert_includes selector_radius_finite_chord_flux, %q{\rho\downarrow0}
    assert_includes selector_radius_finite_chord_flux, "linearly divergent coordinates"
    assert_includes selector_radius_finite_chord_flux, "no bound for `(TIR.37a)`"
    assert_includes episodewise_conormal_incidence, %q{F_J(a,\tau)&:=F(a,\tau)F(a,\tau_0)^{-1}}
    assert_includes episodewise_conormal_incidence, "not an asserted coherent level-surface field"
    assert_includes episodewise_conormal_incidence, %q{\ell N_{{\rm al},\ell}(a)\le\alpha_I(a)}
    assert_includes episodewise_conormal_incidence, "priority stopping rule"
    assert_includes episodewise_conormal_incidence, "no MPP closure"
    assert_includes conormal_objective_incidence_refund, %q{\mathring D_t(\chi P_-)}
    assert_includes conormal_objective_incidence_refund, %q{1-\frac{\sqrt3}{2}}
    assert_includes conormal_objective_incidence_refund, %q{\mathcal D_{\rho,n}^{W,\rm rr}}
    assert_includes conormal_objective_incidence_refund, "original selector-free first pressure-explicit binomial row"
    assert_includes conormal_objective_incidence_refund, "parallel cancellation for actual material-pair selection"
    assert_includes conormal_objective_incidence_refund, "does not yet represent"
    assert_includes conormal_objective_incidence_refund, %q{J_n^{\rm rr}}
    assert_includes conormal_objective_incidence_refund, "No datum-finite bound"
    assert_includes conormal_objective_incidence_refund, "no MPP closure is claimed"
    assert_includes signed_sharp_membership_layer_cake, %q{d\lambda\,\delta_0(dL)}
    assert_includes signed_sharp_membership_layer_cake, %q{\mathsf h_\epsilon}
    assert_includes signed_sharp_membership_layer_cake, %q{0\le\mathsf h_\epsilon\le\frac18c^2}
    assert_includes signed_sharp_membership_layer_cake, %q{\mathsf H(s)-\mathsf H(t)+\mathfrak N_I}
    assert_includes signed_sharp_membership_layer_cake, %q{=\frac1{16}\|\nabla u_0\|_2^2}
    assert_includes signed_sharp_membership_layer_cake, %q{\mathfrak V_{n,\rho}(I)}
    assert_includes signed_sharp_membership_layer_cake, "same-critical pressure--vorticity--viscous term"
    assert_includes signed_sharp_membership_layer_cake, "no MPP closure"
    assert_match(/additive one-leg\s+symbol/, six_assignment_scalar_pair_kernel)
    assert_includes six_assignment_scalar_pair_kernel, "no translation-invariant trilinear scalar"
    assert_includes six_assignment_scalar_pair_kernel, "polarization is injective"
    assert_includes six_assignment_scalar_pair_kernel, %q{\mathbb K_{n,\alpha\beta\gamma}^{\rm rr}(R,S;t)}
    assert_includes six_assignment_scalar_pair_kernel, "three-label readout of one fluid"
    assert_includes six_assignment_scalar_pair_kernel, "adaptive scalar branch remains\nopen"
    assert_includes six_assignment_scalar_pair_kernel, "no MPP closure is claimed"
    assert_includes adaptive_material_pair_selector_range, %q{=[-N_t^{\epsilon,R},P_t^{\epsilon,R}]}
    assert_includes adaptive_material_pair_selector_range, %q{[u]_{\dot W^{2/3,3}}^3}
    assert_includes adaptive_material_pair_selector_range, "**instantaneous first scalar equality**"
    assert_includes adaptive_material_pair_selector_range, "receiver-circular"
    assert_includes adaptive_material_pair_selector_range, %q{D_t\Gamma_{n,\eta}^{\rm alg}}
    assert_includes adaptive_material_pair_selector_range, "six-assignment receiver provenance"
    assert_includes adaptive_material_pair_selector_range, "no MPP closure"
    assert_includes expanding_plane_cofactor_response, %q{\operatorname{cof}_{e_-^\perp}B}
    assert_includes expanding_plane_cofactor_response, %q{\mathfrak q+D_t\!\left({\mathfrak q\over c}\right)}
    assert_includes expanding_plane_cofactor_response, %q{=\mathfrak N_I}
    assert_includes expanding_plane_cofactor_response, %q{\mathcal A
 :=R-[\Omega,S]}
    assert_includes expanding_plane_cofactor_response, "perfectly balanced"
    assert_includes expanding_plane_cofactor_response, "no algebraic payment"
    assert_includes expanding_plane_cofactor_response, "no MPP closure is claimed"
    assert_includes conormal_first_hit_relative_frame_square, %q{{\pi^2\over36\ell}}
    assert_includes conormal_first_hit_relative_frame_square, %q{{|\mathcal R_-|^2\over c}}
    assert_includes conormal_first_hit_relative_frame_square, %q{K_-^{-1}\mathcal G_-}
    assert_includes conormal_first_hit_relative_frame_square, %q{P_-:\mathring D_t^2P_-}
    assert_includes conormal_first_hit_relative_frame_square, "same-critical upper-bound target"
    assert_match(/No bound\s+for `\(TIR\.37a\)`/,
                 conormal_first_hit_relative_frame_square)
    assert_includes dynamic_core_lorentz_source_pulse, %q{\|\kappa_r\|_{L^{4/3,\infty}(0,\infty)}}
    assert_includes dynamic_core_lorentz_source_pulse, %q{\mathcal E_n:=}
    assert_includes dynamic_core_lorentz_source_pulse, %q{X_n(t)>\lambda_n}
    assert_includes dynamic_core_lorentz_source_pulse, "earlier pressure-complete high-source pulse"
    assert_includes dynamic_core_lorentz_source_pulse, "nested canonical signed record"
    assert_includes signed_adjoint_source_time_pullback, %q{\mathcal E_n^{\rm sgn}}
    assert_includes signed_adjoint_source_time_pullback, %q{\mathfrak J_{n,\delta_n}^{\rm sgn}}
    assert_includes signed_adjoint_source_time_pullback, %q{\Phi_n^{(a)}(r)}
    assert_includes signed_adjoint_source_time_pullback, "future-incidence amplification"
    assert_includes signed_adjoint_source_time_pullback, "exact two-edge law"
    assert_includes signed_adjoint_source_time_pullback, "not a datum endpoint"
    assert_includes future_incidence_invariant_transverse, %q{(I-\Pi_r)\lambda_n^{(\ell)}}
    assert_includes future_incidence_invariant_transverse, %q{{A_n\over64\mu_n}}
    assert_includes future_incidence_invariant_transverse, "anti-causal quotient observability"
    assert_includes future_incidence_invariant_transverse, "it does not\ncreate two independent observability resources"
    assert_includes invariant_transverse_forward_backward_gramian, %q{\int_{S_n^{\rm sgn}}\bigl(c_n^{(\ell)}(r)\bigr)^2\,dr}
    assert_includes invariant_transverse_forward_backward_gramian, "finite-cutoff/form-domain Gramian representation"
    assert_includes invariant_transverse_forward_backward_gramian, "No bounded\ncontinuum parent-space Gramian has been proved"
    assert_includes invariant_transverse_forward_backward_gramian, "not a strict reduction"
    assert_includes low_flow_propagator, %q{Q_r[\mathcal L_a,Q_r]H_a}
    assert_includes low_flow_propagator, "lower admission floor for both parents"
    assert_includes low_flow_propagator, "already-proved first-prefix-to-complete-intersection"
    assert_includes band_edge_fim_recombination, "These are two assignments, not all six"
    assert_includes band_edge_fim_recombination, %q{\mathfrak J_{r,a}^{(6)}}
    assert_includes band_edge_fim_recombination, %q{\mathcal R_{t;r,a}}
    assert_includes band_edge_fim_recombination, %q{\mathfrak B_I^{\rm be}}
    assert_includes band_edge_fim_recombination, "No datum-finite contraction"
    assert_match(/Q_t\+\\nu A Q=\\mathcal N_Q/, recent_source_first_binomial)
    assert_includes recent_source_first_binomial, "same-lag first-binomial response synchronization"
    assert_includes recent_source_first_binomial, "common tower radius which is not supplied"
    assert_includes adjoint_future_incidence, %q{(\partial_r-\nu A)\Phi_n^{[m]}}
    assert_includes adjoint_future_incidence, "ordinary endpoint term"
    assert_includes adjoint_future_incidence, "not a strict reduction"
    assert_includes rhl_binomial_radius, %q{\mathscr G_a(z)}
    assert_includes rhl_binomial_radius, %q{=e^{\nu zA}\mathcal Q_a(z)}
    assert_includes rhl_binomial_radius, "high-pass cutoff supplies no exponential gain"
    assert_includes rhl_binomial_radius, "not a strict reduction"
    assert_includes heat_age_spike, %q{\mathcal B_{\rm ha}\in L_t^{4/3}}
    assert_includes heat_age_spike, "exact signed trichotomy"
    assert_includes recent_high_source_six_branch, "six possible co-occurrences"
    assert_includes recent_high_source_six_branch, "co-occurrence, not allocation"
    assert_includes recent_high_source_six_branch, %q{\mathcal B_{\rm ha}'+\mathcal Y_\zeta}
    assert_includes canonical_positive_radial_pulse, %q!\max\{P_+(s_n),P_+(t_n)\}!
    assert_includes canonical_positive_radial_pulse, %q!{5A_n^2\over256B_n}!
    assert_includes canonical_positive_radial_pulse, %q!\mathcal T_+=\mathcal A_++\mathcal L_+^+-\mathcal L_+^-!
    assert_includes canonical_positive_radial_pulse, %q!\mathfrak c+2\alpha\chi=3\mathfrak c!
    assert_includes canonical_positive_radial_pulse, "does not prove\n(TIR.37a)"
    assert_includes energy_class_reciprocal_negative_tower, %q!u_t\in L_t^{4/3}H_x^{-1}!
    assert_includes energy_class_reciprocal_negative_tower, %q!W_t^{1-N,4/3}H_x^{-1}!
    assert_includes energy_class_reciprocal_negative_tower, %q!\partial_t^N\mathcal Q(u,p)!
    assert_includes energy_class_reciprocal_negative_tower, %q!L_t^{4/5}!
    assert_includes energy_class_reciprocal_negative_tower,
                    "not a denial of a stronger joined same-history cancellation"
    assert_includes full_signed_current_positive_pulse, %q!Q=[P_+-P_-]_+\le P_+!
    assert_includes full_signed_current_positive_pulse, %q!\mathcal V_{\rm rad}!
    assert_includes full_signed_current_positive_pulse, %q!Q'=4\left({5Q^2\over16H}-\widehat{\mathcal C}\right)!
    assert_includes full_signed_current_positive_pulse, %q!\mathcal A_{\rm all}-\mathcal V_{\rm rad}!
    assert_includes full_signed_current_positive_pulse, "same-critical"
    assert_includes full_signed_current_positive_pulse, "(TIR.37a)"
    assert_includes full_signed_current_endpoint_propagation, %q!\ge {M\over8}!
    assert_includes full_signed_current_endpoint_propagation, %q!<{6A_n\over M}!
    assert_includes full_signed_current_endpoint_propagation, %q!<24\Delta_n!
    assert_includes full_signed_current_endpoint_propagation, %q!{4\over5(1-t)}!
    assert_includes full_signed_current_endpoint_propagation,
                    "not an admitted Navier--Stokes history"
    assert_includes spine, "joined signed strain-shape/finite-chord history"
    assert_includes spine, "viscosity-matched source-square"
    assert_includes contract, "balanced_axial_wobble_recombination_source:"
    assert_includes contract, "bpt_dct47_heat_age_tangent_bridge_source:"
    assert_includes contract, "minimal_signed_prefix_record_reduction_source:"
    assert_includes contract, "first_contact_signed_prefix_negative_dome_source:"
    assert_includes contract, "fixed_selector_strain_shape_finite_chord_source:"
    assert_includes contract, "strain_shape_higher_response_boundary_source:"
    assert_includes contract, "last_record_source_square_supplier_localization_source:"
    assert_includes contract, "inherited_source_storage_all_row_boundary_source:"
    assert_includes contract, "first_binomial_fixed_selector_join_source:"
    assert_includes contract, "record_pulse_parent_tail_evacuation_source:"
    assert_includes contract, "double_recruited_parent_synchronization_source:"
    assert_includes contract, "double_duhamel_finite_parent_ratio_overlap_source:"
    assert_includes contract, "recent_source_heat_lag_boundary_source:"
    assert_includes contract, "dynamic_core_double_recent_parent_ancestry_source:"
    assert_includes contract, "signed_double_recent_fixed_selector_join_source:"
    assert_includes contract, "imbalance_interface_selector_refund_source:"
    assert_includes contract, "selector_radius_finite_chord_flux_source:"
    assert_includes contract, "episodewise_conormal_label_incidence_trichotomy_source:"
    assert_includes contract, "conormal_objective_incidence_moving_weight_refund_source:"
    assert_includes contract, "signed_sharp_membership_layer_cake_refund_source:"
    assert_includes contract, "six_assignment_scalar_pair_operator_three_label_kernel_source:"
    assert_includes contract, "adaptive_material_pair_selector_range_receiver_provenance_source:"
    assert_includes contract, "expanding_plane_cofactor_response_block_separation_source:"
    assert_includes contract, "conormal_first_hit_relative_frame_critical_square_source:"
    assert_includes contract, "dynamic_core_lorentz_source_pulse_boundary_source:"
    assert_includes contract, "signed_double_recent_adjoint_source_time_pullback_source:"
    assert_includes contract, "future_incidence_invariant_transverse_projection_source:"
    assert_includes contract, "invariant_transverse_forward_backward_gramian_join_source:"
    assert_includes contract, "low_flow_high_band_propagator_reconvergence_source:"
    assert_includes contract, "band_edge_fim_six_assignment_recombination_source:"
    assert_includes contract, "recent_source_first_binomial_characteristic_source:"
    assert_includes contract, "adjoint_future_incidence_first_binomial_source:"
    assert_includes contract, "rhl_binomial_generating_radius_no_gain_source:"
    assert_includes contract, "heat_age_endpoint_integrability_spike_dichotomy_source:"
    assert_includes contract, "recent_high_source_six_branch_synchronization_source:"
    assert_includes contract, "canonical_positive_radial_pulse_completion_source:"
    assert_includes contract, "energy_class_reciprocal_negative_space_tower_source:"
    assert_includes contract, "full_signed_current_positive_pulse_variance_refund_source:"
    assert_includes contract, "full_signed_current_adjacent_endpoint_propagation_source:"
    assert_includes contract,
                    "completed_task: mpp-closed-through-thomas-complete-one-fluid-reversible-intersection-method"
    assert_includes contract,
                    "task_provenance: thomas-original-one-fluid-pressure-explicit-reversible-nesting-and-columnwise-intersection-method"
    assert_includes contract,
                    "note_finite_coordinate_interface: \"(MR)_{N,m}\""
  end

  def test_assistant_coordinate_box_wording_is_withdrawn_from_vpi_tower
    return unless File.exist?(VPI_TOWER_PATH)

    note = File.read(VPI_TOWER_PATH)
    refute_includes note, "mixed-jet rectangles"
    refute_match(/choose one finite rectangle with/, note)
    assert_includes note, "compatible finite\ncoordinate requirements"
  end

  def test_record_microscope_preserves_balanced_case_and_status
    note = File.read(RECORD_ANCESTRY_PATH)
    contract = mixed_tower_contract

    assert_includes note, "# Thomas's one-fluid record-microscope ancestry reduction"
    assert_includes note, "strict reduction"
    assert_includes note, "The result does not assume that balance breaks"
    assert_includes note, "Recruitment is not an outside\n   supplier"
    assert_includes note, "does not yet\nprove"
    assert_includes contract, "proved_record_ancestry_reduction:"
    assert_includes contract, "not the datum-finite odd-response prefix itself"
  end

  private

  def mixed_tower_contract
    contract = File.read(CONTRACT_PATH)
    start_index = contract.index("mixed_sobolev_tower_object_boundary_20260801:")
    finish_index = contract.index("positive_smoothness_current_topology_20260722:")
    raise "missing mixed tower contract block" unless start_index && finish_index

    contract[start_index...finish_index]
  end

  def assert_order(text, *needles)
    positions = needles.map do |needle|
      text.index(needle) || flunk("missing ordered text: #{needle}")
    end
    assert_equal positions.sort, positions
  end
end
