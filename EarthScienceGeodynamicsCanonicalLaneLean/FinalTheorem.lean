import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeodynamicsCanonicalLaneLean.GeodynamicsAdmissibility

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

def ConstrainedGeodynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geodynamics_endgame (A : AdmissibleClass) :
    ConstrainedGeodynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
