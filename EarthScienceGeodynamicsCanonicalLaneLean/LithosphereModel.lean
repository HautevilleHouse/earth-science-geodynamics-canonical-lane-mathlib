import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure LithosphereModel where
  mantleTemperatureProfile : Prop
  crustThickness : Prop
  thermalGradient : Prop
  densityDistribution : Prop
  viscosityStructure : Prop

structure LithosphereModelEvidence (M : LithosphereModel) where
  mantleTemperatureProfileClosed : M.mantleTemperatureProfile
  crustThicknessClosed : M.crustThickness
  thermalGradientClosed : M.thermalGradient
  densityDistributionClosed : M.densityDistribution
  viscosityStructureClosed : M.viscosityStructure

def LithosphereModelClosed (M : LithosphereModel) : Prop :=
  M.mantleTemperatureProfile ∧ M.crustThickness ∧
  M.thermalGradient ∧ M.densityDistribution ∧ M.viscosityStructure

theorem lithosphere_model_closed_from_evidence (M : LithosphereModel)
    (E : LithosphereModelEvidence M) : LithosphereModelClosed M := by
  exact And.intro E.mantleTemperatureProfileClosed
    (And.intro E.crustThicknessClosed
      (And.intro E.thermalGradientClosed
        (And.intro E.densityDistributionClosed E.viscosityStructureClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
