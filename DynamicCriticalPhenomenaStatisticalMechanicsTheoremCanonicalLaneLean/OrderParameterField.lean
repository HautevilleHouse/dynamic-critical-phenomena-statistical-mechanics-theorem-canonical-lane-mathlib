import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure OrderParameterField where
  baseSpace : Type u
  orderParameter : Type v
  temperature : Type w
  criticalTemperature : temperature → Prop
  scalingDimension : ℕ
  fieldRegularity : Prop
  operatorProductExpansion : Prop

structure OrderParameterFieldEvidence (F : OrderParameterField) where
  scalingDimensionPositive : F.scalingDimension > 0
  fieldRegularityClosed : F.fieldRegularity
  operatorProductExpansionClosed : F.operatorProductExpansion

def OrderParameterFieldClosed (F : OrderParameterField) : Prop :=
  F.scalingDimension > 0 ∧ F.fieldRegularity ∧ F.operatorProductExpansion

theorem order_parameter_field_closed_from_evidence (F : OrderParameterField)
    (E : OrderParameterFieldEvidence F) : OrderParameterFieldClosed F :=
  by
    exact And.intro E.scalingDimensionPositive
      (And.intro E.fieldRegularityClosed E.operatorProductExpansionClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
