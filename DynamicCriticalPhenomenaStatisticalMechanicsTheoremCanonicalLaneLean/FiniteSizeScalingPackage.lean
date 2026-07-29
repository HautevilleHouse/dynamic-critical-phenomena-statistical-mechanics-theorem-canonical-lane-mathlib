import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheorem

structure FiniteSizeScalingPackage where
  systemSize : ℕ
  scalingVariable : ℝ
  dataCollapseHolds : Prop
  correlationLengthExponent : ℝ
  dynamicExponent : ℝ
  finiteSizeEffectsModeled : Prop

structure FiniteSizeScalingEvidence (F : FiniteSizeScalingPackage) where
  systemSizeClosed : F.systemSize ≥ 1
  scalingVariableClosed : F.scalingVariable ≠ 0
  dataCollapseHoldsClosed : F.dataCollapseHolds
  correlationLengthExponentClosed : F.correlationLengthExponent > 0
  dynamicExponentClosed : F.dynamicExponent > 0
  finiteSizeEffectsModeledClosed : F.finiteSizeEffectsModeled

def FiniteSizeScalingClosed (F : FiniteSizeScalingPackage) : Prop :=
  F.systemSize ≥ 1 ∧ F.scalingVariable ≠ 0 ∧
  F.dataCollapseHolds ∧ F.correlationLengthExponent > 0 ∧
  F.dynamicExponent > 0 ∧ F.finiteSizeEffectsModeled

theorem finite_size_scaling_closed_from_evidence (F : FiniteSizeScalingPackage) (E : FiniteSizeScalingEvidence F) :
    FiniteSizeScalingClosed F := by
  exact And.intro E.systemSizeClosed
    (And.intro E.scalingVariableClosed
      (And.intro E.dataCollapseHoldsClosed
        (And.intro E.correlationLengthExponentClosed
          (And.intro E.dynamicExponentClosed
            E.finiteSizeEffectsModeledClosed))))

end DynamicCriticalPhenomenaStatisticalMechanicsTheorem
end HautevilleHouse
