import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure CriticalExponents where
  alpha : ℝ
  beta : ℝ
  gamma : ℝ
  delta : ℝ
  nu : ℝ
  eta : ℝ
  scalingRelationsSatisfied : Prop

structure ScalingHypothesisAdmittedObject where
  spaceDimension : ℕ
  orderParameterSpaceDimension : ℕ
  criticalExponents : CriticalExponents
  freeEnergyHomogeneity : Prop
  homogeneityDegree : ℝ
  homogeneityDegreePositive : freeEnergyHomogeneity → HomogeneityDegree > 0
  conclusion : freeEnergyHomogeneity

def CriticalExponentsWitnessClosed (O : ScalingHypothesisAdmittedObject) : Prop :=
  O.freeEnergyHomogeneity

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse