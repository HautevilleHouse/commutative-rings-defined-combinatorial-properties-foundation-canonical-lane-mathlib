import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.RingDefinitions

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure HilbertBasis (R : Type u) [CommutativeRing R] where
  polynomialRing : Type u
  isPolynomialRing : CommutativeRing polynomialRing
  noetherian : Prop

structure HilbertBasisEvidence (R : Type u) [CommutativeRing R] (H : HilbertBasis R) where
  noetherianClosed : H.noetherian

def HilbertBasisClosed (R : Type u) [CommutativeRing R] (H : HilbertBasis R) : Prop :=
  H.noetherian

theorem hilbert_basis_closed_from_evidence (R : Type u) [CommutativeRing R] (H : HilbertBasis R) (E : HilbertBasisEvidence R H) : HilbertBasisClosed R H := by
  exact E.noetherianClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse