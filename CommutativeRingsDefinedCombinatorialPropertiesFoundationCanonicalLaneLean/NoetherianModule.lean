import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure NoetherianModulePackage where
  ring : Type u
  module : Type u
  ascendingChainCondition : Prop
  finitelyGenerated : Prop

structure NoetherianModuleEvidence where
  ascendingChainConditionClosed : Prop
  finitelyGeneratedClosed : Prop

def NoetherianModuleClosed (P : NoetherianModulePackage) : Prop :=
  P.ascendingChainCondition ∧ P.finitelyGenerated

theorem noetherian_module_closed_from_evidence
    (P : NoetherianModulePackage) (E : NoetherianModuleEvidence) :
    NoetherianModuleClosed P := by
  exact And.intro E.ascendingChainConditionClosed E.finitelyGeneratedClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
