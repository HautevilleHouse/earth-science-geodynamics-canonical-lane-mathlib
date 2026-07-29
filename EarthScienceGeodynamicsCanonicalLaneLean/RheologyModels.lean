import EarthScienceGeodynamicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure RheologyModelsPackage where
  viscosityModel : Type u
  creepMechanisms : Type v
  grainSizeEvolution : Prop
  partialMelting : Prop
  poroelasticity : Prop

structure RheologyModelsEvidence (Rm : RheologyModelsPackage) where
  grainSizeEvolutionClosed : Rm.grainSizeEvolution
  partialMeltingClosed : Rm.partialMelting
  poroelasticityClosed : Rm.poroelasticity

def RheologyModelsClosed (Rm : RheologyModelsPackage) : Prop :=
  Rm.grainSizeEvolution ∧ Rm.partialMelting ∧ Rm.poroelasticity

theorem rheology_models_closed_from_evidence (Rm : RheologyModelsPackage) (E : RheologyModelsEvidence Rm) : RheologyModelsClosed Rm := by
  exact And.intro E.grainSizeEvolutionClosed (And.intro E.partialMeltingClosed E.poroelasticityClosed)

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse