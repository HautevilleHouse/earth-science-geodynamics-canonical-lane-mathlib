import EarthScienceGeodynamicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure ThermalEvolutionPackage where
  initialTemperature : ℝ
  thermalDiffusivity : ℝ
  radiogenicHeat : ℝ
  coolingRate : ℝ
  coreMantleBoundary : Prop

structure ThermalEvolutionEvidence (T : ThermalEvolutionPackage) where
  initialTemperatureClosed : T.initialTemperature = 4000.0
  thermalDiffusivityClosed : T.thermalDiffusivity > 0
  radiogenicHeatClosed : T.radiogenicHeat ≥ 0
  coolingRateClosed : T.coolingRate < 0
  coreMantleBoundaryClosed : T.coreMantleBoundary

def ThermalEvolutionClosed (T : ThermalEvolutionPackage) : Prop :=
  T.initialTemperature = 4000.0 ∧ T.thermalDiffusivity > 0 ∧ T.radiogenicHeat ≥ 0 ∧
  T.coolingRate < 0 ∧ T.coreMantleBoundary

theorem thermal_evolution_closed_from_evidence (T : ThermalEvolutionPackage)
    (E : ThermalEvolutionEvidence T) : ThermalEvolutionClosed T := by
  exact And.intro E.initialTemperatureClosed (And.intro E.thermalDiffusivityClosed
    (And.intro E.radiogenicHeatClosed (And.intro E.coolingRateClosed E.coreMantleBoundaryClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse