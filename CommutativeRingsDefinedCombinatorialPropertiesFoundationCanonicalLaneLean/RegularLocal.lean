import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure RegularLocalRingPackage where
  ring : Type u
  ringStructure : Ring ring
  local : LocalRing ring
  maximalIdeal : Ideal ring
  embeddingDimension : ℕ
  regularCondition : Prop
  globalDimension : ℕ
  regularImpliesGlobalFinite : Prop

structure RegularLocalRingEvidence (R : RegularLocalRingPackage) where
  regularConditionClosed : R.regularCondition
  regularImpliesGlobalFiniteClosed : R.regularImpliesGlobalFinite

def RegularLocalRingClosed (R : RegularLocalRingPackage) : Prop :=
  R.regularCondition ∧ R.regularImpliesGlobalFinite

theorem regular_local_ring_closed_from_evidence (R : RegularLocalRingPackage) (E : RegularLocalRingEvidence R) : RegularLocalRingClosed R := by
  exact And.intro E.regularConditionClosed E.regularImpliesGlobalFiniteClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse