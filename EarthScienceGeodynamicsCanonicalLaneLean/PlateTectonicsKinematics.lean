import HautevilleHouse.EarthScienceGeodynamicsCanonicalLaneLean.MantleConvectionModel

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure PlateTectonicsPackage (A : AdmissibleClass) where
  plateBoundaryTypes : Prop
  relativeMotionVectors : Prop
  spreadingRidgeModel : Prop
  subductionZoneGeometry : Prop
  transformFaultKinematics : Prop

structure PlateTectonicsEvidence (A : AdmissibleClass) (P : PlateTectonicsPackage A) where
  plateBoundaryTypesClosed : P.plateBoundaryTypes
  relativeMotionVectorsClosed : P.relativeMotionVectors
  spreadingRidgeModelClosed : P.spreadingRidgeModel
  subductionZoneGeometryClosed : P.subductionZoneGeometry
  transformFaultKinematicsClosed : P.transformFaultKinematics

def PlateTectonicsClosed (A : AdmissibleClass) (P : PlateTectonicsPackage A) : Prop :=
  P.plateBoundaryTypes ∧ P.relativeMotionVectors ∧ P.spreadingRidgeModel ∧
  P.subductionZoneGeometry ∧ P.transformFaultKinematics

theorem plate_tectonics_closed_from_evidence (A : AdmissibleClass) (P : PlateTectonicsPackage A)
    (E : PlateTectonicsEvidence A P) : PlateTectonicsClosed A P := by
  exact And.intro E.plateBoundaryTypesClosed
    (And.intro E.relativeMotionVectorsClosed
      (And.intro E.spreadingRidgeModelClosed
        (And.intro E.subductionZoneGeometryClosed E.transformFaultKinematicsClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse