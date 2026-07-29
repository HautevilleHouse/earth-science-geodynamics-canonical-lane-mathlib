import EarthScienceGeodynamicsCanonicalLaneLean.PlateTectonicsKinematics

namespace HautevilleHouse
namespace EarthScienceGeodynamicsCanonicalLaneLean

structure SubductionZoneDynamicsPackage {Rm : RheologyModelsPackage} {R : Rm} {M : MantleConvectionPDEPackage R} {P : PlateTectonicsKinematicsPackage R M} where
  slabPullForce : Prop
  slabDipAngle : Prop
  mantleWedgeFlow : Prop
  dehydrationEmbrittlement : Prop
  seismogenicCoupling : Prop

structure SubductionZoneDynamicsEvidence {Rm : RheologyModelsPackage} {R : Rm} {M : MantleConvectionPDEPackage R} {P : PlateTectonicsKinematicsPackage R M} (S : SubductionZoneDynamicsPackage R M P) where
  slabPullForceClosed : S.slabPullForce
  slabDipAngleClosed : S.slabDipAngle
  mantleWedgeFlowClosed : S.mantleWedgeFlow
  dehydrationEmbrittlementClosed : S.dehydrationEmbrittlement
  seismogenicCouplingClosed : S.seismogenicCoupling

def SubductionZoneDynamicsClosed {Rm : RheologyModelsPackage} {R : Rm} {M : MantleConvectionPDEPackage R} {P : PlateTectonicsKinematicsPackage R M} (S : SubductionZoneDynamicsPackage R M P) : Prop :=
  S.slabPullForce ∧ S.slabDipAngle ∧ S.mantleWedgeFlow ∧ S.dehydrationEmbrittlement ∧ S.seismogenicCoupling

theorem subduction_zone_dynamics_closed_from_evidence {Rm : RheologyModelsPackage} {R : Rm} {M : MantleConvectionPDEPackage R} {P : PlateTectonicsKinematicsPackage R M} (S : SubductionZoneDynamicsPackage R M P) (E : SubductionZoneDynamicsEvidence S) : SubductionZoneDynamicsClosed S := by
  exact And.intro E.slabPullForceClosed (And.intro E.slabDipAngleClosed (And.intro E.mantleWedgeFlowClosed (And.intro E.dehydrationEmbrittlementClosed E.seismogenicCouplingClosed)))

end EarthScienceGeodynamicsCanonicalLaneLean
end HautevilleHouse