import EarthScienceGeodynamicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodynamicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse