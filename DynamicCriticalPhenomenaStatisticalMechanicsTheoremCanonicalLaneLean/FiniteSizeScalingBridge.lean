import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure FiniteSizeScalingPackage where
  correlationLength : ℝ → ℝ
  universalityBroken : Prop
  correctionToScaling : ℝ → ℝ
  bridgeFunction : ℝ → ℝ → ℝ
  scalingExponent : ℝ
  collapseQuality : correctionToScaling (scalingExponent) → Prop
  closureCondition : correctionToScaling (scalingExponent) → collapseQuality (correctionToScaling (scalingExponent))

structure FiniteSizeScalingBridgeData where
  scalingExponentInput : ℝ
  correlationLengthValue : ℝ
  bridgeOutput : ℝ
  scalingExponentProof : scalingExponentInput = correctionToScaling (scalingExponentInput) → ℝ
  closureWitness : correlationLengthValue = scalingExponentProof (by exact rfl)

def FiniteSizeScalingClosed (F : FiniteSizeScalingPackage) : Prop :=
  F.collapseQuality (F.correctionToScaling F.scalingExponent)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
