import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure GeodynamicsAdmittedObject where
  lithosphere : LithosphereModel
  lithosphereClosed : LithosphereModelClosed lithosphere
  mantleConvection : MantleConvectionPackage lithosphere
  mantleConvectionClosed : MantleConvectionClosed mantleConvection
  plateTectonics : PlateTectonicsPackage mantleConvection
  plateTectonicsClosed : PlateTectonicsClosed plateTectonics

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse
