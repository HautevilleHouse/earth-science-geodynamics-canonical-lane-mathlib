import HautevilleHouse.EarthScienceGeodynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure MantleConvectionPackage (A : AdmissibleClass) where
  viscosityStructure : Prop
  thermalGradient : Prop
  rayleighNumberCritical : Prop
  convectionCellPattern : Prop

structure MantleConvectionEvidence (A : AdmissibleClass) (M : MantleConvectionPackage A) where
  viscosityStructureClosed : M.viscosityStructure
  thermalGradientClosed : M.thermalGradient
  rayleighNumberCriticalClosed : M.rayleighNumberCritical
  convectionCellPatternClosed : M.convectionCellPattern

def MantleConvectionClosed (A : AdmissibleClass) (M : MantleConvectionPackage A) : Prop :=
  M.viscosityStructure ∧ M.thermalGradient ∧ M.rayleighNumberCritical ∧ M.convectionCellPattern

theorem mantle_convection_closed_from_evidence (A : AdmissibleClass) (M : MantleConvectionPackage A)
    (E : MantleConvectionEvidence A M) : MantleConvectionClosed A M := by
  exact And.intro E.viscosityStructureClosed
    (And.intro E.thermalGradientClosed
      (And.intro E.rayleighNumberCriticalClosed E.convectionCellPatternClosed))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse