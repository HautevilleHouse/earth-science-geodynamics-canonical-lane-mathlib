import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeoidGravityAnomalyPackage where
  referenceEllipsoid : Type u
  freeAirAnomaly : Type v
  bouguerAnomaly : Type w
  isostaticCompensation : Prop
  geoidHeightComputed : Prop

structure GeoidGravityAnomalyEvidence (G : GeoidGravityAnomalyPackage) where
  isostaticCompensationClosed : G.isostaticCompensation
  geoidHeightComputedClosed : G.geoidHeightComputed

def GeoidGravityAnomalyClosed (G : GeoidGravityAnomalyPackage) : Prop :=
  G.isostaticCompensation ∧ G.geoidHeightComputed

theorem geoid_gravity_anomaly_closed_from_evidence
    (G : GeoidGravityAnomalyPackage) (E : GeoidGravityAnomalyEvidence G) :
    GeoidGravityAnomalyClosed G := by
  exact And.intro E.isostaticCompensationClosed E.geoidHeightComputedClosed

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse