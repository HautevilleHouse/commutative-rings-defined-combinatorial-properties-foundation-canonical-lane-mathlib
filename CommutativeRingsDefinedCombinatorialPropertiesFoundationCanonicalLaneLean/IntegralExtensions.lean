import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure IntegralExtensionPackage where
  subring : Type u
  subringStructure : Ring subring
  overring : Type v
  overringStructure : Ring overring
  inclusion : subring → overring
  integralElements : Set overring
  integralityCondition : Prop
  finitelyGeneratedAsModule : Prop

structure IntegralExtensionEvidence (I : IntegralExtensionPackage) where
  integralityConditionClosed : I.integralityCondition
  finitelyGeneratedAsModuleClosed : I.finitelyGeneratedAsModule

def IntegralExtensionClosed (I : IntegralExtensionPackage) : Prop :=
  I.integralityCondition ∧ I.finitelyGeneratedAsModule

theorem integral_extension_closed_from_evidence (I : IntegralExtensionPackage) (E : IntegralExtensionEvidence I) : IntegralExtensionClosed I := by
  exact And.intro E.integralityConditionClosed E.finitelyGeneratedAsModuleClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse