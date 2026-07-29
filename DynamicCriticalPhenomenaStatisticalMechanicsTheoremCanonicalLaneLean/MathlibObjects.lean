import DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CriticalPhenomenaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicCriticalPhenomenaAdmittedObject where
  space : CriticalPhenomenaSpace
  nearCriticalPoint : Prop
  scalingLawsHold : Prop
  orderParameterSpace : Type
  orderParameterTopology : TopologicalSpace orderParameterSpace
  correlationLengthDiverges : Prop
  conclusion : correlationLengthDiverges

structure CriticalPhenomenaEndgameState where
  object : DynamicCriticalPhenomenaAdmittedObject

def DynamicCriticalPhenomenaWitnessClosed (O : DynamicCriticalPhenomenaAdmittedObject) : Prop :=
  O.correlationLengthDiverges

end DynamicCriticalPhenomenaStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse