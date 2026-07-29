import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.RingDefinitions

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure PrimeIdeal (R : Type u) [CommutativeRing R] where
  carrier : Set R
  isSubmodule : Submodule R R
  prime : Prop
  maximal : Prop

structure PrimeSpectrum (R : Type u) [CommutativeRing R] where
  points : Set (PrimeIdeal R)
  topology : TopologicalSpace (PrimeIdeal R)

structure PrimeSpectrumEvidence (R : Type u) [CommutativeRing R] (S : PrimeSpectrum R) where
  pointsDefined : S.points ≠ ∅
  topologyClosed : S.topology = TopologicalSpace.induced (fun p : PrimeIdeal R => p) (by infer_instance)

def PrimeSpectrumClosed (R : Type u) [CommutativeRing R] (S : PrimeSpectrum R) : Prop :=
  S.points ≠ ∅

theorem prime_spectrum_closed_from_evidence (R : Type u) [CommutativeRing R] (S : PrimeSpectrum R) (E : PrimeSpectrumEvidence R S) : PrimeSpectrumClosed R S := by
  exact E.pointsDefined

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse