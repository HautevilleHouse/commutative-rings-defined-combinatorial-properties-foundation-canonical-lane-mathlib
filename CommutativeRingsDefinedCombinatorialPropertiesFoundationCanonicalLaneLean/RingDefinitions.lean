import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure RingCarrier (A : Type u) where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  addAssoc : ∀ a b c, add (add a b) c = add a (add b c)
  addComm : ∀ a b, add a b = add b a
  zeroAdd : ∀ a, add zero a = a
  addZero : ∀ a, add a zero = a
  addLeftNeg : ∀ a, ∃ b, add a b = zero
  mulAssoc : ∀ a b c, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a, mul one a = a
  mulOne : ∀ a, mul a one = a
  leftDistrib : ∀ a b c, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c, mul (add a b) c = add (mul a c) (mul b c)

structure CommutativeRing (A : Type u) extends RingCarrier A where
  mulComm : ∀ a b, mul a b = mul b a

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse