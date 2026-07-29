import EarthScienceGeodynamicsCanonicalLaneLean.PlateTectonics

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure SeismicTomographyPackage (T : ThermalEvolutionPackage) (M : MantleConvectionPackage T)
    (P : PlateTectonicsPackage T M) where
  velocityAnomalies : Prop
  slabImaging : Prop
  plumeImaging : Prop
  resolutionLimits : Prop

structure SeismicTomographyEvidence (T : ThermalEvolutionPackage) (M : MantleConvectionPackage T)
    (P : PlateTectonicsPackage T M) (S : SeismicTomographyPackage T M P) where
  velocityAnomaliesClosed : S.velocityAnomalies
  slabImagingClosed : S.slabImaging
  plumeImagingClosed : S.plumeImaging
  resolutionLimitsClosed : S.resolutionLimits

def SeismicTomographyClosed (T : ThermalEvolutionPackage) (M : MantleConvectionPackage T)
    (P : PlateTectonicsPackage T M) (S : SeismicTomographyPackage T M P) : Prop :=
  S.velocityAnomalies ∧ S.slabImaging ∧ S.plumeImaging ∧ S.resolutionLimits

theorem seismic_tomography_closed_from_evidence (T : ThermalEvolutionPackage)
    (M : MantleConvectionPackage T) (P : PlateTectonicsPackage T M)
    (S : SeismicTomographyPackage T M P) (E : SeismicTomographyEvidence T M P S) :
    SeismicTomographyClosed T M P S := by
  exact And.intro E.velocityAnomaliesClosed (And.intro E.slabImagingClosed
    (And.intro E.plumeImagingClosed E.resolutionLimitsClosed))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse