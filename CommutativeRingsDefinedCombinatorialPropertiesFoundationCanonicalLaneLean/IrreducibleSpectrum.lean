import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure IrreducibleSpectrumPackage where
  ring : Type u
  idealFilter : List (Type u)
  irreducibilityCondition : Prop
  closureProperty : Prop

structure IrreducibleSpectrumEvidence where
  closurePropertyClosed : Prop
  irreducibilityConditionClosed : Prop

def IrreducibleSpectrumClosed (P : IrreducibleSpectrumPackage) : Prop :=
  P.irreducibilityCondition ∧ P.closureProperty

theorem irreducible_spectrum_closed_from_evidence
    (P : IrreducibleSpectrumPackage) (E : IrreducibleSpectrumEvidence) :
    IrreducibleSpectrumClosed P := by
  exact And.intro E.irreducibilityConditionClosed E.closurePropertyClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
