import canonicalLaneMathlib.AdmissibleClass
import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.UniversalityBridge

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure CorrelationFunctionScaling where
  distance : ℝ → ℝ
  correlationLengthExponent : ℝ
  scalingForm : Prop
  powerLawDecay : Prop
  anomalousDimension : ℝ
  fisherScalingRelation : Prop
  widomScalingRelation : Prop

structure CorrelationScalingEvidence (C : CorrelationFunctionScaling) where
  scalingFormClosed : C.scalingForm
  powerLawDecayClosed : C.powerLawDecay
  fisherScalingRelationClosed : C.fisherScalingRelation
  widomScalingRelationClosed : C.widomScalingRelation

def CorrelationScalingClosed (C : CorrelationFunctionScaling) : Prop :=
  C.scalingForm ∧ C.powerLawDecay ∧ C.fisherScalingRelation ∧ C.widomScalingRelation

theorem correlation_scaling_closed_from_evidence (C : CorrelationFunctionScaling) (E : CorrelationScalingEvidence C) :
    CorrelationScalingClosed C := by
  exact And.intro E.scalingFormClosed
    (And.intro E.powerLawDecayClosed
      (And.intro E.fisherScalingRelationClosed E.widomScalingRelationClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse