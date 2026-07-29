import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure DynamicExponentRelationPackage where
  dynamicExponent : ℝ
  correlationLengthExponent : ℝ
  scalingRelation : Prop
  violatorDimension : Prop
  haltOrLifshitzCondition : Prop

structure DynamicExponentRelationEvidence (D : DynamicExponentRelationPackage) where
  scalingRelationClosed : D.scalingRelation
  violatorDimensionClosed : D.violatorDimension
  haltOrLifshitzConditionClosed : D.haltOrLifshitzCondition

def DynamicExponentRelationClosed (D : DynamicExponentRelationPackage) : Prop :=
  D.scalingRelation ∧ D.violatorDimension ∧ D.haltOrLifshitzCondition

theorem dynamic_exponent_relation_closed_from_evidence (D : DynamicExponentRelationPackage)
    (E : DynamicExponentRelationEvidence D) : DynamicExponentRelationClosed D := by
  exact And.intro E.scalingRelationClosed
    (And.intro E.violatorDimensionClosed E.haltOrLifshitzConditionClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse