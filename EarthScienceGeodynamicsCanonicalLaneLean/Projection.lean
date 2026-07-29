import EarthScienceGeodynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geodynamicsProjection : Projection GeodynamicsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geodynamics_projection_idempotent (x : GeodynamicsEndgameState) :
    geodynamicsProjection.toFun (geodynamicsProjection.toFun x) = geodynamicsProjection.toFun x := by
  exact geodynamicsProjection.idempotent x

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse