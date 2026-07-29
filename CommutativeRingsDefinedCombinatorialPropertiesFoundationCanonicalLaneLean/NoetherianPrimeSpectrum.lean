import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure PrimeSpectrumPackage where
  ring : Type u
  ringStructure : Ring ring
  primeIdeals : Set (Ideal ring)
  zarTopology : TopologicalSpace (primeIdeals)
  spectralTopology : TopologicalSpace (primeIdeals)
  spectralCompact : Prop
  spectralT0 : Prop
  spectralSober : Prop

structure PrimeSpectrumEvidence (P : PrimeSpectrumPackage) where
  zarTopologyClosed : P.zarTopology = P.spectralTopology
  spectralCompactClosed : P.spectralCompact
  spectralT0Closed : P.spectralT0
  spectralSoberClosed : P.spectralSober

def PrimeSpectrumClosed (P : PrimeSpectrumPackage) : Prop :=
  P.spectralCompact ∧ P.spectralT0 ∧ P.spectralSober

theorem prime_spectrum_closed_from_evidence (P : PrimeSpectrumPackage) (E : PrimeSpectrumEvidence P) : PrimeSpectrumClosed P := by
  exact And.intro E.spectralCompactClosed (And.intro E.spectralT0Closed E.spectralSoberClosed)

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse