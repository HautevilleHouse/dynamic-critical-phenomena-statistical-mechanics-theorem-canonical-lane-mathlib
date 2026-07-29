import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure FluctuationDissipationPackage where
  responseFunction : Type u
  correlationFunction : Type v
  fluctuationDissipationRelation : Prop
  detailedBalanceCondition : Prop
  linearResponseHolds : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  fluctuationDissipationRelationClosed : F.fluctuationDissipationRelation
  detailedBalanceConditionClosed : F.detailedBalanceCondition
  linearResponseHoldsClosed : F.linearResponseHolds

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationDissipationRelation ∧ F.detailedBalanceCondition ∧ F.linearResponseHolds

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationPackage)
    (E : FluctuationDissipationEvidence F) : FluctuationDissipationClosed F := by
  exact And.intro E.fluctuationDissipationRelationClosed
    (And.intro E.detailedBalanceConditionClosed E.linearResponseHoldsClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse