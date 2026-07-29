import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure PlateTectonicsPackage {L : LithosphereModel} {M : MantleConvectionPackage L} where
  plateMotionKinematics : Prop
  faultMechanics : Prop
  earthquakeCycle : Prop
  orogenyModel : Prop
  basinFormation : Prop

structure PlateTectonicsEvidence {L : LithosphereModel} {M : MantleConvectionPackage L}
    (P : PlateTectonicsPackage M) where
  plateMotionKinematicsClosed : P.plateMotionKinematics
  faultMechanicsClosed : P.faultMechanics
  earthquakeCycleClosed : P.earthquakeCycle
  orogenyModelClosed : P.orogenyModel
  basinFormationClosed : P.basinFormation

def PlateTectonicsClosed {L : LithosphereModel} {M : MantleConvectionPackage L}
    (P : PlateTectonicsPackage M) : Prop :=
  P.plateMotionKinematics ∧ P.faultMechanics ∧
  P.earthquakeCycle ∧ P.orogenyModel ∧ P.basinFormation

theorem plate_tectonics_closed_from_evidence {L : LithosphereModel}
    {M : MantleConvectionPackage L} (P : PlateTectonicsPackage M)
    (E : PlateTectonicsEvidence P) : PlateTectonicsClosed P := by
  exact And.intro E.plateMotionKinematicsClosed
    (And.intro E.faultMechanicsClosed
      (And.intro E.earthquakeCycleClosed
        (And.intro E.orogenyModelClosed E.basinFormationClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
