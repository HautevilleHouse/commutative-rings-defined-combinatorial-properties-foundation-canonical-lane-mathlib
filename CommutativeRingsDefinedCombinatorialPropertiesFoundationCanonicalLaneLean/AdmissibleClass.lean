import CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CommutativeRingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CommutativeRingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
