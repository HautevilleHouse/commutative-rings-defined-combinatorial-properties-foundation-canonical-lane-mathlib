import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure PrimaryDecompositionPackage where
  ring : Type u
  ringStructure : Ring ring
  ideal : Ideal ring
  primaryComponents : List (Ideal ring)
  decompositionProperty : Prop
  uniquenessIrrelevant : Prop

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  decompositionPropertyClosed : P.decompositionProperty
  uniquenessIrrelevantClosed : P.uniquenessIrrelevant

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.decompositionProperty ∧ P.uniquenessIrrelevant

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage) (E : PrimaryDecompositionEvidence P) : PrimaryDecompositionClosed P := by
  exact And.intro E.decompositionPropertyClosed E.uniquenessIrrelevantClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse