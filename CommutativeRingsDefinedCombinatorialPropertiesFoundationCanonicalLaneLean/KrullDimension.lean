import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.PrimeIdeals

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure KrullDimension (R : Type u) [CommutativeRing R] where
  chains : Set (List (PrimeIdeal R))
  dimension : ℕ
  finite : Prop

structure KrullDimensionEvidence (R : Type u) [CommutativeRing R] (K : KrullDimension R) where
  dimensionClosed : K.dimension = Nat.sup (fun chain : List (PrimeIdeal R) => chain.length - 1) K.chains
  finiteClosed : K.finite

def KrullDimensionClosed (R : Type u) [CommutativeRing R] (K : KrullDimension R) : Prop :=
  K.dimension = Nat.sup (fun chain : List (PrimeIdeal R) => chain.length - 1) K.chains ∧ K.finite

theorem krull_dimension_closed_from_evidence (R : Type u) [CommutativeRing R] (K : KrullDimension R) (E : KrullDimensionEvidence R K) : KrullDimensionClosed R K := by
  exact And.intro E.dimensionClosed E.finiteClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse