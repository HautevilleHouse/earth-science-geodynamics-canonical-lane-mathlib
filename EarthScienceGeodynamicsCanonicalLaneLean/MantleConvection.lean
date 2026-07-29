import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure MantleConvectionPackage (L : LithosphereModel) where
  convectionEquations : Prop
  boundaryLayerTheory : Prop
  plumeDynamics : Prop
  slabPullForce : Prop
  ridgePushForce : Prop

structure MantleConvectionEvidence {L : LithosphereModel} (M : MantleConvectionPackage L) where
  convectionEquationsClosed : M.convectionEquations
  boundaryLayerTheoryClosed : M.boundaryLayerTheory
  plumeDynamicsClosed : M.plumeDynamics
  slabPullForceClosed : M.slabPullForce
  ridgePushForceClosed : M.ridgePushForce

def MantleConvectionClosed {L : LithosphereModel} (M : MantleConvectionPackage L) : Prop :=
  M.convectionEquations ∧ M.boundaryLayerTheory ∧
  M.plumeDynamics ∧ M.slabPullForce ∧ M.ridgePushForce

theorem mantle_convection_closed_from_evidence {L : LithosphereModel}
    (M : MantleConvectionPackage L) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.convectionEquationsClosed
    (And.intro E.boundaryLayerTheoryClosed
      (And.intro E.plumeDynamicsClosed
        (And.intro E.slabPullForceClosed E.ridgePushForceClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
