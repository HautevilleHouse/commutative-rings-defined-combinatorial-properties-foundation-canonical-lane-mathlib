import CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CommutativeRingSpace where
  carrier : Type
  ring : Ring carrier

structure CommutativeRingAdmittedObject where
  space : CommutativeRingSpace
  combinatorialProperty : Prop
  finitelyGenerated : Prop
  reduced : Prop
  conclusion : combinatorialProperty

structure CommutativeRingEndgameState where
  object : CommutativeRingAdmittedObject

def CommutativeRingWitnessClosed (O : CommutativeRingAdmittedObject) : Prop :=
  O.combinatorialProperty

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
