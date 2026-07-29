import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeodynamicsAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  geodynamicModel : Prop
  plateTectonicProcess : Prop
  mantleConvection : Prop
  conclusion : geodynamicModel ∧ plateTectonicProcess ∧ mantleConvection

def GeodynamicsWitnessClosed (O : GeodynamicsAdmittedObject) : Prop :=
  O.geodynamicModel ∧ O.plateTectonicProcess ∧ O.mantleConvection

theorem geodynamics_witness_closed_from_object (O : GeodynamicsAdmittedObject) :
    GeodynamicsWitnessClosed O := by
  exact O.conclusion

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse