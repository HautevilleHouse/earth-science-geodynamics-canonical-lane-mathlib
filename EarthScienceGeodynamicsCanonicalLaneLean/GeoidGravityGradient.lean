import HautevilleHouse.EarthScienceGeodynamicsCanonicalLaneLean.PlateTectonicsKinematics

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeoidGravityPackage (A : AdmissibleClass) where
  geoidUndulation : Prop
  gravityAnomalyPattern : Prop
  isostaticCompensation : Prop
  mantleDensityHeterogeneity : Prop
  dynamicTopography : Prop

structure GeoidGravityEvidence (A : AdmissibleClass) (G : GeoidGravityPackage A) where
  geoidUndulationClosed : G.geoidUndulation
  gravityAnomalyPatternClosed : G.gravityAnomalyPattern
  isostaticCompensationClosed : G.isostaticCompensation
  mantleDensityHeterogeneityClosed : G.mantleDensityHeterogeneity
  dynamicTopographyClosed : G.dynamicTopography

def GeoidGravityClosed (A : AdmissibleClass) (G : GeoidGravityPackage A) : Prop :=
  G.geoidUndulation ∧ G.gravityAnomalyPattern ∧ G.isostaticCompensation ∧
  G.mantleDensityHeterogeneity ∧ G.dynamicTopography

theorem geoid_gravity_closed_from_evidence (A : AdmissibleClass) (G : GeoidGravityPackage A)
    (E : GeoidGravityEvidence A G) : GeoidGravityClosed A G := by
  exact And.intro E.geoidUndulationClosed
    (And.intro E.gravityAnomalyPatternClosed
      (And.intro E.isostaticCompensationClosed
        (And.intro E.mantleDensityHeterogeneityClosed E.dynamicTopographyClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse