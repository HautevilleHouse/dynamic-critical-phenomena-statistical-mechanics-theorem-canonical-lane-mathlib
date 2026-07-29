import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure RenormalizationGroupPackage where
  coarseGrainingMap : Type u
  fixedPointExistence : Prop
  criticalExponentsDerived : Prop
  irrelevantPerturbations : Prop
  renormalizationGroupFlow : Prop

structure RenormalizationGroupEvidence (R : RenormalizationGroupPackage) where
  fixedPointExistenceClosed : R.fixedPointExistence
  criticalExponentsDerivedClosed : R.criticalExponentsDerived
  irrelevantPerturbationsClosed : R.irrelevantPerturbations
  renormalizationGroupFlowClosed : R.renormalizationGroupFlow

def RenormalizationGroupClosed (R : RenormalizationGroupPackage) : Prop :=
  R.fixedPointExistence ∧ R.criticalExponentsDerived ∧ R.irrelevantPerturbations ∧ R.renormalizationGroupFlow

theorem renormalization_group_closed_from_evidence (R : RenormalizationGroupPackage)
    (E : RenormalizationGroupEvidence R) : RenormalizationGroupClosed R := by
  exact And.intro E.fixedPointExistenceClosed
    (And.intro E.criticalExponentsDerivedClosed
      (And.intro E.irrelevantPerturbationsClosed E.renormalizationGroupFlowClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse