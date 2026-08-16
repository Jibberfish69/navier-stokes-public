#!/usr/bin/env ruby
# frozen_string_literal: true

require "minitest/autorun"

class ThomasSelectorRadiusFiniteChordFluxTest < Minitest::Test
  NOTE = File.expand_path(
    "../theorem-construction/thomas-selector-radius-finite-chord-flux-and-endpoint-boundary-20260804.md",
    __dir__
  )

  def test_scale_shell_has_exact_selector_mass
    # C1 plateau used only to audit the integration-by-parts constant:
    # zeta=1 on [0,1], zeta=1-3t^2+2t^3 on [1,2], zeta=0 after 2.
    plateau_mass = 1.to_r
    transition_mass = 1.to_r - 1.to_r + Rational(1, 2)
    ell_1 = plateau_mass + transition_mass

    # On the transition, -s zeta'(s)=6(1+t)(t-t^2)=6(t-t^3).
    shell_mass = 6.to_r * (Rational(1, 2) - Rational(1, 4))

    assert_equal Rational(3, 2), ell_1
    assert_equal ell_1, shell_mass
  end

  def test_raw_and_refunded_radius_fluxes
    ell_1 = Rational(3, 2)
    c_1_without_pi = Rational(64, 15) * ell_1
    q_plus = Rational(11, 5)
    q_minus = Rational(7, 6)
    q = q_plus - q_minus
    current = Rational(19, 4)
    rho = Rational(13, 7)

    raw_defect = current - rho * c_1_without_pi * q
    refunded_defect = raw_defect - rho * c_1_without_pi * q_minus
    unrefunded_clipped = rho * c_1_without_pi * q_plus + raw_defect
    corrected_join = rho * c_1_without_pi * q_plus + refunded_defect

    assert_equal current - rho * c_1_without_pi * q, raw_defect
    assert_equal current - rho * c_1_without_pi * q_plus, refunded_defect
    assert_equal current + rho * c_1_without_pi * q_minus, unrefunded_clipped
    assert_equal current, corrected_join

    assert_equal(-c_1_without_pi * q, raw_radius_derivative(q, c_1_without_pi))
    assert_equal(-c_1_without_pi * q_plus, refunded_radius_derivative(q_plus, c_1_without_pi))
    assert_equal(c_1_without_pi * q_minus, unrefunded_radius_derivative(q_minus, c_1_without_pi))
  end

  def test_both_radius_endpoints_and_finite_radius_telescope
    c_1 = Rational(5, 3)
    q = Rational(-7, 4)
    q_plus = Rational(9, 8)
    current = Rational(13, 6)
    radius = 17.to_r

    raw_at_zero = current
    refunded_at_zero = current
    raw_at_radius = current - radius * c_1 * q
    refunded_at_radius = current - radius * c_1 * q_plus

    assert_equal current, raw_at_zero
    assert_equal current, refunded_at_zero
    assert_equal(-radius * c_1 * q, raw_at_radius - raw_at_zero)
    assert_equal(-radius * c_1 * q_plus, refunded_at_radius - refunded_at_zero)
    assert_equal current, radius * c_1 * q + raw_at_radius
    assert_equal current, radius * c_1 * q_plus + refunded_at_radius

    larger_radius = 101.to_r
    assert_operator current - larger_radius * c_1 * q_plus, :<, refunded_at_radius
    assert_equal current,
                 larger_radius * c_1 * q_plus +
                   (current - larger_radius * c_1 * q_plus)
  end

  def test_first_binomial_radius_derivative_recombines_pressure_source
    c_1 = Rational(8, 5)
    shape = Rational(7, 3)
    heat_shape_storage = Rational(11, 4)
    pressure_complete_response = Rational(-5, 6)

    heat_shape_derivative = pressure_complete_response - shape
    radius_derivative_of_storage = -c_1 * heat_shape_storage
    time_derivative_of_radius_storage = -c_1 * heat_shape_derivative
    radius_derivative_of_source = -c_1 * pressure_complete_response

    radius_derivative_of_normal_form =
      -time_derivative_of_radius_storage + radius_derivative_of_source

    assert_equal(-c_1 * shape, radius_derivative_of_normal_form)
    assert_equal(-c_1 * shape,
                 c_1 * heat_shape_derivative -
                   c_1 * pressure_complete_response)
  end

  def test_note_keeps_radius_as_coordinate_and_closure_open
    note = File.read(NOTE)

    assert_includes note, "The radius\n\\(\\rho\\) is a coordinate"
    assert_includes note, "it is not\nphysical time"
    assert_includes note, "pulse or spring winding"
    assert_includes note, "neighboring windings"
    assert_includes note, %q{\delta_w(x,r,n)=w(x)-w(x-rn)}
    assert_includes note, %q{(-a_w-d_w,-a_w+d_w,2a_w)}
    assert_includes note, "its scale-covariant density is"
    assert_includes note, %q{specialize \(w=u(t)\)}
    assert_includes note, %q{\partial_\rho\mathcal E_\rho(w)
 =-c_1\mathscr Q(w)}
    assert_includes note, %q{\partial_\rho\mathcal D_{\rho,n}^{\rm rr}
 =-c_1\mathscr Q}
    assert_includes note, %q{\partial_\rho\mathcal D_{\rho,n}^{+,\rm rr}
 =-c_1\mathscr Q_+}
    assert_includes note, "favorable two-contraction face counted a second time"
    assert_includes note, "At the other\nend"
    assert_includes note, "no finite separate endpoint"
    assert_includes note, %q{\mathbf D_n(0):=\lim_{\rho\downarrow0}\mathbf D_n(\rho)}
    assert_includes note, %q{Q_{\rm NS}(u)=-(u\cdot\nabla)u-\nabla p}
    assert_includes note, %q{\mathscr A'
 =\mathfrak R_{\mathscr A}-\mathscr Q(u)}
    assert_includes note, "derivatives \\(\\partial_s\\), \\(\\partial_t\\), and \\(\\partial_\\rho\\) commute"
    assert_includes note, "simply returns the signed\ndouble-recent current"
    assert_includes note, "no bound for `(TIR.37a)`"
    assert_includes note, "no MPP closure"
  end

  private

  def raw_radius_derivative(q, c_1)
    -c_1 * q
  end

  def refunded_radius_derivative(q_plus, c_1)
    -c_1 * q_plus
  end

  def unrefunded_radius_derivative(q_minus, c_1)
    c_1 * q_minus
  end
end
