import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheorem

structure ScalingLawsPackage where
  dynamicCriticalExponent : ℝ
  growthExponent : ℝ
  autocorrelationExponent : ℝ
  scalingHypothesis : Prop
  universalityVerified : Prop

structure ScalingLawsEvidence (S : ScalingLawsPackage) where
  dynamicCriticalExponentClosed : S.dynamicCriticalExponent > 0
  growthExponentClosed : S.growthExponent > 0
  autocorrelationExponentClosed : S.autocorrelationExponent > 0
  scalingHypothesisClosed : S.scalingHypothesis
  universalityVerifiedClosed : S.universalityVerified

def ScalingLawsClosed (S : ScalingLawsPackage) : Prop :=
  S.dynamicCriticalExponent > 0 ∧ S.growthExponent > 0 ∧
  S.autocorrelationExponent > 0 ∧ S.scalingHypothesis ∧
  S.universalityVerified

theorem scaling_laws_closed_from_evidence (S : ScalingLawsPackage) (E : ScalingLawsEvidence S) :
    ScalingLawsClosed S := by
  exact And.intro E.dynamicCriticalExponentClosed
    (And.intro E.growthExponentClosed
      (And.intro E.autocorrelationExponentClosed
        (And.intro E.scalingHypothesisClosed
          E.universalityVerifiedClosed)))

end DynamicCriticalPhenomenaStatisticalMechanicsTheorem
end HautevilleHouse
