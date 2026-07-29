import canonicalLaneMathlib.AdmissibleClass
import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.ScaledEquationAndCorrelation

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure FiniteSizeScaling where
  systemSize : ℕ → ℝ
  scalingVariable : ℝ → ℝ
  correlationLengthCrossover : Prop
  finiteSizeScalingForm : Prop
  crossoverScalingFunction : Prop
  thermodynamicLimitRecovered : Prop

structure FiniteSizeScalingEvidence (F : FiniteSizeScaling) where
  correlationLengthCrossoverClosed : F.correlationLengthCrossover
  finiteSizeScalingFormClosed : F.finiteSizeScalingForm
  crossoverScalingFunctionClosed : F.crossoverScalingFunction
  thermodynamicLimitRecoveredClosed : F.thermodynamicLimitRecovered

def FiniteSizeScalingClosed (F : FiniteSizeScaling) : Prop :=
  F.correlationLengthCrossover ∧ F.finiteSizeScalingForm ∧
  F.crossoverScalingFunction ∧ F.thermodynamicLimitRecovered

theorem finite_size_scaling_closed_from_evidence (F : FiniteSizeScaling) (E : FiniteSizeScalingEvidence F) :
    FiniteSizeScalingClosed F := by
  exact And.intro E.correlationLengthCrossoverClosed
    (And.intro E.finiteSizeScalingFormClosed
      (And.intro E.crossoverScalingFunctionClosed E.thermodynamicLimitRecoveredClosed))

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse