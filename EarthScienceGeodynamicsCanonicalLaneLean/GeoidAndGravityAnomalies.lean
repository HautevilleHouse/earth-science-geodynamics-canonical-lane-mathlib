import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeoidAndGravityAnomaliesPackage where
  geoidUndulations : Prop
  freeAirGravityAnomalies : Prop
  bouguerCorrection : Prop
  isostaticCompensation : Prop
  mantleDensityHeterogeneities : Prop

structure GeoidAndGravityAnomaliesEvidence (G : GeoidAndGravityAnomaliesPackage) where
  geoidUndulationsClosed : G.geoidUndulations
  freeAirGravityAnomaliesClosed : G.freeAirGravityAnomalies
  bouguerCorrectionClosed : G.bouguerCorrection
  isostaticCompensationClosed : G.isostaticCompensation
  mantleDensityHeterogeneitiesClosed : G.mantleDensityHeterogeneities

def GeoidAndGravityAnomaliesClosed (G : GeoidAndGravityAnomaliesPackage) : Prop :=
  G.geoidUndulations ∧ G.freeAirGravityAnomalies ∧ G.bouguerCorrection ∧
  G.isostaticCompensation ∧ G.mantleDensityHeterogeneities

theorem geoid_and_gravity_anomalies_closed_from_evidence (G : GeoidAndGravityAnomaliesPackage)
    (E : GeoidAndGravityAnomaliesEvidence G) : GeoidAndGravityAnomaliesClosed G := by
  exact And.intro E.geoidUndulationsClosed
    (And.intro E.freeAirGravityAnomaliesClosed
      (And.intro E.bouguerCorrectionClosed
        (And.intro E.isostaticCompensationClosed E.mantleDensityHeterogeneitiesClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
