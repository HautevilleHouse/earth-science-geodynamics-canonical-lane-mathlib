import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeodeticReferenceFramesPackage where
  referenceEllipsoid : Prop
  datumDefinitions : Prop
  coordinateTransformations : Prop
  plateMotionModels : Prop
  crustalDeformationMonitoring : Prop

structure GeodeticReferenceFramesEvidence (G : GeodeticReferenceFramesPackage) where
  referenceEllipsoidClosed : G.referenceEllipsoid
  datumDefinitionsClosed : G.datumDefinitions
  coordinateTransformationsClosed : G.coordinateTransformations
  plateMotionModelsClosed : G.plateMotionModels
  crustalDeformationMonitoringClosed : G.crustalDeformationMonitoring

def GeodeticReferenceFramesClosed (G : GeodeticReferenceFramesPackage) : Prop :=
  G.referenceEllipsoid ∧ G.datumDefinitions ∧ G.coordinateTransformations ∧
  G.plateMotionModels ∧ G.crustalDeformationMonitoring

theorem geodetic_reference_frames_closed_from_evidence (G : GeodeticReferenceFramesPackage)
    (E : GeodeticReferenceFramesEvidence G) : GeodeticReferenceFramesClosed G := by
  exact And.intro E.referenceEllipsoidClosed
    (And.intro E.datumDefinitionsClosed
      (And.intro E.coordinateTransformationsClosed
        (And.intro E.plateMotionModelsClosed E.crustalDeformationMonitoringClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
