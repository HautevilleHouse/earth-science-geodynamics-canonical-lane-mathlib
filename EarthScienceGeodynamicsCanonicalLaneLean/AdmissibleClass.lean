import EarthScienceGeodynamicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure AdmissibleClass where
  object : GeodynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeodynamicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse