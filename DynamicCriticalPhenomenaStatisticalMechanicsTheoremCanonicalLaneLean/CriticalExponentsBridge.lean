import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheorem

structure CriticalExponentsPackage where
  criticalTemperature : ℝ
  correlationLengthExponent : ℝ
  susceptibilityExponent : ℝ
  specificHeatExponent : ℝ
  magnetizationExponent : ℝ
  scalingRelationsSatisfied : Prop
  universalityClassIdentified : Prop

structure CriticalExponentsEvidence (C : CriticalExponentsPackage) where
  criticalTemperatureClosed : C.criticalTemperature ≠ 0
  correlationLengthExponentClosed : C.correlationLengthExponent > 0
  susceptibilityExponentClosed : C.susceptibilityExponent > 0
  specificHeatExponentClosed : C.specificHeatExponent > 0
  magnetizationExponentClosed : C.magnetizationExponent > 0
  scalingRelationsSatisfiedClosed : C.scalingRelationsSatisfied
  universalityClassIdentifiedClosed : C.universalityClassIdentified

def CriticalExponentsClosed (C : CriticalExponentsPackage) : Prop :=
  C.criticalTemperature ≠ 0 ∧ C.correlationLengthExponent > 0 ∧
  C.susceptibilityExponent > 0 ∧ C.specificHeatExponent > 0 ∧
  C.magnetizationExponent > 0 ∧ C.scalingRelationsSatisfied ∧
  C.universalityClassIdentified

theorem critical_exponents_closed_from_evidence (C : CriticalExponentsPackage) (E : CriticalExponentsEvidence C) :
    CriticalExponentsClosed C := by
  exact And.intro E.criticalTemperatureClosed
    (And.intro E.correlationLengthExponentClosed
      (And.intro E.susceptibilityExponentClosed
        (And.intro E.specificHeatExponentClosed
          (And.intro E.magnetizationExponentClosed
            (And.intro E.scalingRelationsSatisfiedClosed
              E.universalityClassIdentifiedClosed)))))

end DynamicCriticalPhenomenaStatisticalMechanicsTheorem
end HautevilleHouse
