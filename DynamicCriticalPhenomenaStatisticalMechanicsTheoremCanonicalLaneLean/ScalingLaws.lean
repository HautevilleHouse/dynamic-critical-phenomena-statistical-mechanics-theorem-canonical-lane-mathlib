import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure ScalingLaws where
  beta : ℝ
  gamma : ℝ
  nu : ℝ
  delta : ℝ
  hyperscalingViolation : Prop
  josephsonHypothesis : Prop
  hyperscalingRelation : beta + gamma = nu * delta

structure ScalingLawsEvidence (S : ScalingLaws) where
  allExponentsPositive : S.beta > 0 ∧ S.gamma > 0 ∧ S.nu > 0 ∧ S.delta > 0
  hyperscalingViolationClosed : S.hyperscalingViolation
  josephsonHypothesisClosed : S.josephsonHypothesis
  hyperscalingRelationClosed : S.beta + S.gamma = S.nu * S.delta

def ScalingLawsClosed (S : ScalingLaws) : Prop :=
  S.beta > 0 ∧ S.gamma > 0 ∧ S.nu > 0 ∧ S.delta > 0 ∧
  S.hyperscalingViolation ∧ S.josephsonHypothesis ∧
  S.beta + S.gamma = S.nu * S.delta

theorem scaling_laws_closed_from_evidence (S : ScalingLaws)
    (E : ScalingLawsEvidence S) : ScalingLawsClosed S :=
  by
    have h1 : S.beta > 0 ∧ S.gamma > 0 ∧ S.nu > 0 ∧ S.delta > 0 :=
      E.allExponentsPositive
    exact And.intro h1
      (And.intro E.hyperscalingViolationClosed
        (And.intro E.josephsonHypothesisClosed E.hyperscalingRelationClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
