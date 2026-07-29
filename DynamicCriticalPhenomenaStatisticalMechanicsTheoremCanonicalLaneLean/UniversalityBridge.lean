import canonicalLaneMathlib.AdmissibleClass
import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.CriticalExponentsAdmissibleClass
import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.RenormalizationGroupFlow

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure UniversalityPackage (R : RenormalizationGroupTransform) where
  universalityClass : Type u
  criticalExponentsShared : Prop
  fixedPointAttracts : Prop
  scalingFunctionUniversal : Prop

structure UniversalityEvidence {R : RenormalizationGroupTransform} (U : UniversalityPackage R) where
  criticalExponentsSharedClosed : U.criticalExponentsShared
  fixedPointAttractsClosed : U.fixedPointAttracts
  scalingFunctionUniversalClosed : U.scalingFunctionUniversal

def UniversalityClosed {R : RenormalizationGroupTransform} (U : UniversalityPackage R) : Prop :=
  U.criticalExponentsShared ∧ U.fixedPointAttracts ∧ U.scalingFunctionUniversal

theorem universality_closed_from_evidence {R : RenormalizationGroupTransform} (U : UniversalityPackage R) (E : UniversalityEvidence U) :
    UniversalityClosed U := by
  exact And.intro E.criticalExponentsSharedClosed (And.intro E.fixedPointAttractsClosed E.scalingFunctionUniversalClosed)

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse