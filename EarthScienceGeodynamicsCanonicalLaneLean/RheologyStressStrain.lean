import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure RheologyStressStrainPackage (G : EarthCurvaturePackage) where
  viscosityField : Type u
  stressTensor : Type v
  strainRateTensor : Type w
  constitutiveLaw : Prop
  nonNewtonianRheology : Prop
  plasticYieldCriterion : Prop

structure RheologyStressStrainEvidence {G : EarthCurvaturePackage} (R : RheologyStressStrainPackage G) where
  constitutiveLawClosed : R.constitutiveLaw
  nonNewtonianRheologyClosed : R.nonNewtonianRheology
  plasticYieldCriterionClosed : R.plasticYieldCriterion

def RheologyStressStrainClosed {G : EarthCurvaturePackage} (R : RheologyStressStrainPackage G) : Prop :=
  R.constitutiveLaw ∧
  R.nonNewtonianRheology ∧
  R.plasticYieldCriterion

theorem rheology_stress_strain_closed_from_evidence
    {G : EarthCurvaturePackage} (R : RheologyStressStrainPackage G)
    (E : RheologyStressStrainEvidence R) : RheologyStressStrainClosed R := by
  exact And.intro E.constitutiveLawClosed
    (And.intro E.nonNewtonianRheologyClosed E.plasticYieldCriterionClosed)

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse