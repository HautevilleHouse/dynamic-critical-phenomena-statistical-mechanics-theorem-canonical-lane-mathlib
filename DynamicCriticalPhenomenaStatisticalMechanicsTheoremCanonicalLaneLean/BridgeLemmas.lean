import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicCriticalPhenomenaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse