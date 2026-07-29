import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.RingDefinitions

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure MultiplicativelyClosedSet (R : Type u) [CommutativeRing R] where
  carrier : Set R
  containsOne : (1 : R) ∈ carrier
  closedUnderMul : ∀ a b, a ∈ carrier → b ∈ carrier → a * b ∈ carrier

structure Localization (R : Type u) [CommutativeRing R] (S : MultiplicativelyClosedSet R) where
  carrier : Type u
  ring : CommutativeRing carrier
  map : R → carrier
  mapInjective : Function.Injective map
  universalProperty : ∀ (T : Type u) [CommutativeRing T] (f : R → T) (hf : ∀ s ∈ S.carrier, IsUnit (f s)), ∃! g : carrier → T, g ∘ map = f

structure LocalizationEvidence (R : Type u) [CommutativeRing R] (S : MultiplicativelyClosedSet R) (L : Localization R S) where
  ringClosed : L.ring = inferInstance
  mapInjectiveClosed : L.mapInjective
  universalPropertyClosed : L.universalProperty

def LocalizationClosed (R : Type u) [CommutativeRing R] (S : MultiplicativelyClosedSet R) (L : Localization R S) : Prop :=
  L.ring = inferInstance ∧ L.mapInjective ∧ L.universalProperty

theorem localization_closed_from_evidence (R : Type u) [CommutativeRing R] (S : MultiplicativelyClosedSet R) (L : Localization R S) (E : LocalizationEvidence R S L) : LocalizationClosed R S L := by
  exact And.intro E.ringClosed (And.intro E.mapInjectiveClosed E.universalPropertyClosed)

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse