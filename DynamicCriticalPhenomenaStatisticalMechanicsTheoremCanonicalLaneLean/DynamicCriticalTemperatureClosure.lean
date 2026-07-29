import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

structure CriticalTemperatureExponent where
  temperatureDomain : Type u
  orderParameterSpace : Type v
  orderParameter : orderParameterSpace → orderParameterSpace
  transitionTemperature : orderParameterSpace → ℝ
  betaExponent : ℝ
  lawOfCriticalIsotherm : orderParameterSpace → orderParameterSpace → Prop
  lawBetaExponentTerm : lawOfCriticalIsotherm betaExponent (transitionTemperature (default : orderParameterSpace)) → Prop
  universalClassIndependence : Prop
  universalityAdjacency : universalClassIndependence
  closureCondition : universalClassIndependence ∧ transitionTemperature (default : orderParameterSpace) ≠ 0

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
