import EarthScienceGeodynamicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeodynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeodynamicsAdmittedObject where
  space : GeodynamicsSpace
  mantleConvectionModel : Prop
  plateBoundaryResolved : Prop
  benchmarkEndpoint : Type
  benchmarkTopology : TopologicalSpace benchmarkEndpoint
  endpointMatched : Prop
  conclusion : endpointMatched

structure GeodynamicsEndgameState where
  object : GeodynamicsAdmittedObject

def GeodynamicsWitnessClosed (O : GeodynamicsAdmittedObject) : Prop :=
  O.endpointMatched

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse