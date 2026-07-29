import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure CorrelationFunction where
  twoPoint : Type u
  fourPoint : Type v
  connectedPart : Type w
  scaling : ℝ → ℝ
  longDistanceBehavior : Prop
  momentumSpaceSingularity : Prop
  dynamicCorrelationExponent : ℝ

structure CorrelationFunctionEvidence (C : CorrelationFunction) where
  longDistanceBehaviorClosed : C.longDistanceBehavior
  momentumSpaceSingularityClosed : C.momentumSpaceSingularity
  dynamicCorrelationExponentPositive : C.dynamicCorrelationExponent > 0
  scalingContinuous : Continuous C.scaling

def CorrelationFunctionClosed (C : CorrelationFunction) : Prop :=
  C.longDistanceBehavior ∧ C.momentumSpaceSingularity ∧
  C.dynamicCorrelationExponent > 0 ∧ Continuous C.scaling

theorem correlation_function_closed_from_evidence (C : CorrelationFunction)
    (E : CorrelationFunctionEvidence C) : CorrelationFunctionClosed C :=
  by
    exact And.intro E.longDistanceBehaviorClosed
      (And.intro E.momentumSpaceSingularityClosed
        (And.intro E.dynamicCorrelationExponentPositive E.scalingContinuous))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
