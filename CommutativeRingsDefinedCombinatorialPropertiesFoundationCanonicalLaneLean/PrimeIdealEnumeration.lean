import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundation.CommutativeRingSpec

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundation

structure PrimeIdealEnumeration (R : CommutativeRingSpec) where
  primeIdeals : List (Set R.carrier)
  enumerationComplete : Prop
  eachPrimeIdeal : ∀ I ∈ primeIdeals, (∀ x y : R.carrier, R.mul x y ∈ I → x ∈ I ∨ y ∈ I) ∧ I ≠ Set.univ
  enumerationCompleteHolds : enumerationComplete
  eachPrimeIdealHolds : eachPrimeIdeal

structure PrimeIdealEnumerationEvidence {R : CommutativeRingSpec} (P : PrimeIdealEnumeration R) where
  enumerationCompleteClosed : P.enumerationComplete
  eachPrimeIdealClosed : P.eachPrimeIdeal

def PrimeIdealEnumerationClosed {R : CommutativeRingSpec} (P : PrimeIdealEnumeration R) : Prop :=
  P.enumerationComplete ∧ P.eachPrimeIdeal

theorem prime_ideal_enumeration_closed_from_evidence {R : CommutativeRingSpec} (P : PrimeIdealEnumeration R) (E : PrimeIdealEnumerationEvidence P) : PrimeIdealEnumerationClosed P := by
  exact And.intro E.enumerationCompleteClosed E.eachPrimeIdealClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundation
end HautevilleHouse