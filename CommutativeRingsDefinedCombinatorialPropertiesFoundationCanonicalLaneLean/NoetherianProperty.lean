import CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure NoetherianPackage where
  ring : Type u
  ringStructure : Ring ring
  idealChainCondition : Prop
  finitelyGeneratedIdeals : Prop

structure NoetherianEvidence (N : NoetherianPackage) where
  idealChainConditionClosed : N.idealChainCondition
  finitelyGeneratedIdealsClosed : N.finitelyGeneratedIdeals

def NoetherianClosed (N : NoetherianPackage) : Prop :=
  N.idealChainCondition ∧ N.finitelyGeneratedIdeals

theorem noetherian_closed_from_evidence (N : NoetherianPackage) (E : NoetherianEvidence N) :
    NoetherianClosed N := by
  exact And.intro E.idealChainConditionClosed E.finitelyGeneratedIdealsClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
