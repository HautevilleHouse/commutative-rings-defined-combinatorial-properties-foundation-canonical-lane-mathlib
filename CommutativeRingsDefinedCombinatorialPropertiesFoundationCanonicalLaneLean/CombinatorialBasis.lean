import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundation.CommutativeRingSpec

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundation

structure CombinatorialBasis (R : CommutativeRingSpec) where
  idealGenerators : List R.carrier
  monomialOrder : List R.carrier → List R.carrier → Prop
  groebnerBasisCondition : Prop
  buchbergerCriterionSat : Prop
  reducedBasis : Prop
  groebnerBasisConditionHolds : groebnerBasisCondition
  buchbergerCriterionSatHolds : buchbergerCriterionSat
  reducedBasisHolds : reducedBasis

def CombinatorialBasisClosed {R : CommutativeRingSpec} (B : CombinatorialBasis R) : Prop :=
  B.groebnerBasisCondition ∧ B.buchbergerCriterionSat ∧ B.reducedBasis

theorem combinatorial_basis_closed {R : CommutativeRingSpec} (B : CombinatorialBasis R) : CombinatorialBasisClosed B := by
  exact And.intro B.groebnerBasisConditionHolds (And.intro B.buchbergerCriterionSatHolds B.reducedBasisHolds)

end CommutativeRingsDefinedCombinatorialPropertiesFoundation
end HautevilleHouse