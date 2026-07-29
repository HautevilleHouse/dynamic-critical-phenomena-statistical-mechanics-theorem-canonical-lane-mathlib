import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure ScalingPackage where
  orderParameterScaling : Prop
  correlationLengthExponent : ℝ
  dynamicExponent : ℝ
  scalingHypothesis : Prop
  universalityClass : Prop

structure ScalingEvidence (S : ScalingPackage) where
  orderParameterScalingClosed : S.orderParameterScaling
  scalingHypothesisClosed : S.scalingHypothesis
  universalityClassClosed : S.universalityClass

def ScalingClosed (S : ScalingPackage) : Prop :=
  S.orderParameterScaling ∧ S.scalingHypothesis ∧ S.universalityClass

theorem scaling_closed_from_evidence (S : ScalingPackage) (E : ScalingEvidence S) : ScalingClosed S := by
  exact And.intro E.orderParameterScalingClosed
    (And.intro E.scalingHypothesisClosed E.universalityClassClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse