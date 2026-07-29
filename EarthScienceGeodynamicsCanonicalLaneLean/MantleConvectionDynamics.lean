import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure MantleConvectionDynamicsPackage where
  thermalGradients : Prop
  viscosityStructure : Prop
  rayleighNumber : Prop
  convectionCells : Prop
  plumeDynamics : Prop

structure MantleConvectionDynamicsEvidence (M : MantleConvectionDynamicsPackage) where
  thermalGradientsClosed : M.thermalGradients
  viscosityStructureClosed : M.viscosityStructure
  rayleighNumberClosed : M.rayleighNumber
  convectionCellsClosed : M.convectionCells
  plumeDynamicsClosed : M.plumeDynamics

def MantleConvectionDynamicsClosed (M : MantleConvectionDynamicsPackage) : Prop :=
  M.thermalGradients ∧ M.viscosityStructure ∧ M.rayleighNumber ∧
  M.convectionCells ∧ M.plumeDynamics

theorem mantle_convection_dynamics_closed_from_evidence (M : MantleConvectionDynamicsPackage)
    (E : MantleConvectionDynamicsEvidence M) : MantleConvectionDynamicsClosed M := by
  exact And.intro E.thermalGradientsClosed
    (And.intro E.viscosityStructureClosed
      (And.intro E.rayleighNumberClosed
        (And.intro E.convectionCellsClosed E.plumeDynamicsClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
