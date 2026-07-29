import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure PrimeSpectrumPackage where
  ring : Type u
  topologicalSpace : TopologicalSpace (PrimeSpectrumPackage.ring)
  spectralProperty : Prop
  combinatorialDescription : Prop
  sobrietyCondition : Prop

structure PrimeSpectrumEvidence (S : PrimeSpectrumPackage) where
  spectralPropertyClosed : S.spectralProperty
  combinatorialDescriptionClosed : S.combinatorialDescription
  sobrietyConditionClosed : S.sobrietyCondition

def PrimeSpectrumClosed (S : PrimeSpectrumPackage) : Prop :=
  S.spectralProperty ∧ S.combinatorialDescription ∧ S.sobrietyCondition

theorem prime_spectrum_closed_from_evidence (S : PrimeSpectrumPackage) (E : PrimeSpectrumEvidence S) :
    PrimeSpectrumClosed S := by
  exact And.intro E.spectralPropertyClosed (And.intro E.combinatorialDescriptionClosed E.sobrietyConditionClosed)

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse