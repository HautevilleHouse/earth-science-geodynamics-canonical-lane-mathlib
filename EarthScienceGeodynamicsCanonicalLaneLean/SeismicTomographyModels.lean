import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure SeismicTomographyModelsPackage where
  waveSpeedAnomalies : Prop
  resolutionLimits : Prop
  subductionZoneImaging : Prop
  mantlePlumeImaging : Prop
  coreMantleBoundaryStructure : Prop

structure SeismicTomographyModelsEvidence (S : SeismicTomographyModelsPackage) where
  waveSpeedAnomaliesClosed : S.waveSpeedAnomalies
  resolutionLimitsClosed : S.resolutionLimits
  subductionZoneImagingClosed : S.subductionZoneImaging
  mantlePlumeImagingClosed : S.mantlePlumeImaging
  coreMantleBoundaryStructureClosed : S.coreMantleBoundaryStructure

def SeismicTomographyModelsClosed (S : SeismicTomographyModelsPackage) : Prop :=
  S.waveSpeedAnomalies ∧ S.resolutionLimits ∧ S.subductionZoneImaging ∧
  S.mantlePlumeImaging ∧ S.coreMantleBoundaryStructure

theorem seismic_tomography_models_closed_from_evidence (S : SeismicTomographyModelsPackage)
    (E : SeismicTomographyModelsEvidence S) : SeismicTomographyModelsClosed S := by
  exact And.intro E.waveSpeedAnomaliesClosed
    (And.intro E.resolutionLimitsClosed
      (And.intro E.subductionZoneImagingClosed
        (And.intro E.mantlePlumeImagingClosed E.coreMantleBoundaryStructureClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
