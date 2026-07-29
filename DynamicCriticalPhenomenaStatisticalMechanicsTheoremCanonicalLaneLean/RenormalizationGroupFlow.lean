import canonicalLaneMathlib.AdmissibleClass
import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.CriticalExponentsAdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure RenormalizationGroupTransform where
  scaleFactor : ℝ
  hamiltonian : Type u
  transformedHamiltonian : Type u
  fixedPointCondition : Prop
  relevantOperators : Prop
  irrelevantOperators : Prop
  marginalOperators : Prop
  flowConvergence : Prop

structure RenormalizationGroupEvidence (R : RenormalizationGroupTransform) where
  fixedPointConditionClosed : R.fixedPointCondition
  flowConvergenceClosed : R.flowConvergence
  relevantOperatorsClosed : R.relevantOperators
  irrelevantOperatorsClosed : R.irrelevantOperators

def RenormalizationGroupClosed (R : RenormalizationGroupTransform) : Prop :=
  R.fixedPointCondition ∧ R.flowConvergence ∧ R.relevantOperators ∧ R.irrelevantOperators

theorem renormalization_group_closed_from_evidence (R : RenormalizationGroupTransform) (E : RenormalizationGroupEvidence R) :
    RenormalizationGroupClosed R := by
  exact And.intro E.fixedPointConditionClosed
    (And.intro E.flowConvergenceClosed
      (And.intro E.relevantOperatorsClosed E.irrelevantOperatorsClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse