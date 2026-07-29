import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure IdealClosurePackage where
  ideal : Type u
  ring : Type v
  closureProperty : Prop
  combinatorialBound : Prop
  finiteGeneration : Prop

structure IdealClosureEvidence (I : IdealClosurePackage) where
  closurePropertyClosed : I.closureProperty
  combinatorialBoundClosed : I.combinatorialBound
  finiteGenerationClosed : I.finiteGeneration

def IdealClosureClosed (I : IdealClosurePackage) : Prop :=
  I.closureProperty ∧ I.combinatorialBound ∧ I.finiteGeneration

theorem ideal_closure_closed_from_evidence (I : IdealClosurePackage) (E : IdealClosureEvidence I) :
    IdealClosureClosed I := by
  exact And.intro E.closurePropertyClosed (And.intro E.combinatorialBoundClosed E.finiteGenerationClosed)

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse