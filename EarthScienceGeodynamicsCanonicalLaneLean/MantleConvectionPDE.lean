import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure MantleConvectionPDEPackage (G : EarthCurvaturePackage) where
  timeParameter : Type u
  temperatureAt : timeParameter -> Type v
  initialTemperatureMatches : Prop
  differentiableTemperatureField : Prop
  stokesEquation : Prop
  bouguerAnomalyField : Prop
  maximalTimeInterval : Prop

structure MantleConvectionPDEEvidence {G : EarthCurvaturePackage} (F : MantleConvectionPDEPackage G) where
  initialTemperatureMatchesClosed : F.initialTemperatureMatches
  differentiableTemperatureFieldClosed : F.differentiableTemperatureField
  stokesEquationClosed : F.stokesEquation
  bouguerAnomalyFieldClosed : F.bouguerAnomalyField
  maximalTimeIntervalClosed : F.maximalTimeInterval

def MantleConvectionPDEClosed {G : EarthCurvaturePackage} (F : MantleConvectionPDEPackage G) : Prop :=
  F.initialTemperatureMatches ∧
  F.differentiableTemperatureField ∧
  F.stokesEquation ∧
  F.bouguerAnomalyField ∧
  F.maximalTimeInterval

theorem mantle_convection_pde_closed_from_evidence
    {G : EarthCurvaturePackage} (F : MantleConvectionPDEPackage G)
    (E : MantleConvectionPDEEvidence F) : MantleConvectionPDEClosed F := by
  exact And.intro E.initialTemperatureMatchesClosed
    (And.intro E.differentiableTemperatureFieldClosed
      (And.intro E.stokesEquationClosed
        (And.intro E.bouguerAnomalyFieldClosed E.maximalTimeIntervalClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse