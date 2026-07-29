import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheorem

structure UniversalityClassPackage where
  symmetryClass : String
  dimension : ℕ
  criticalExponentsList : List ℝ
  conformalFieldTheory : Prop
  classIdentified : Prop

structure UniversalityClassEvidence (U : UniversalityClassPackage) where
  symmetryClassClosed : U.symmetryClass ≠ ""
  dimensionClosed : U.dimension ≥ 2
  criticalExponentsListClosed : U.criticalExponentsList.length ≥ 3
  conformalFieldTheoryClosed : U.conformalFieldTheory
  classIdentifiedClosed : U.classIdentified

def UniversalityClassClosed (U : UniversalityClassPackage) : Prop :=
  U.symmetryClass ≠ "" ∧ U.dimension ≥ 2 ∧
  U.criticalExponentsList.length ≥ 3 ∧ U.conformalFieldTheory ∧
  U.classIdentified

theorem universality_class_closed_from_evidence (U : UniversalityClassPackage) (E : UniversalityClassEvidence U) :
    UniversalityClassClosed U := by
  exact And.intro E.symmetryClassClosed
    (And.intro E.dimensionClosed
      (And.intro E.criticalExponentsListClosed
        (And.intro E.conformalFieldTheoryClosed
          E.classIdentifiedClosed)))

end DynamicCriticalPhenomenaStatisticalMechanicsTheorem
end HautevilleHouse
