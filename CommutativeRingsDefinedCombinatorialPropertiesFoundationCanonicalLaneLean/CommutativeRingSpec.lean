import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundation

structure CommutativeRingSpec where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  neg : carrier → carrier
  addLeftNeg : ∀ a : carrier, add (neg a) a = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  zeroMul : ∀ a : carrier, mul zero a = zero
  mulZero : ∀ a : carrier, mul a zero = zero

structure AdmittedCommutativeRing where
  spec : CommutativeRingSpec
  combinatorialCondition : Prop
  combinatorialProperty : Prop
  conditionHolds : combinatorialCondition
  conclusion : combinatorialProperty
  gateWitness : combinatorialCondition ∨ combinatorialProperty

end CommutativeRingsDefinedCombinatorialPropertiesFoundation
end HautevilleHouse