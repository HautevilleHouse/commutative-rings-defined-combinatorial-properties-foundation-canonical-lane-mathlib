import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.RingDefinitions

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

structure CombinatorialProperties (R : Type u) [CommutativeRing R] where
  clearng : Prop  -- "clean" ring (no nilpotent elements)
  reduced : Prop
  noetherian : Prop
  artinian : Prop
  local : Prop
  semilocal : Prop

structure CombinatorialPropertiesEvidence (R : Type u) [CommutativeRing R] (C : CombinatorialProperties R) where
  clearngClosed : C.clearng
  reducedClosed : C.reduced
  noetherianClosed : C.noetherian
  artinianClosed : C.artinian
  localClosed : C.local
  semilocalClosed : C.semilocal

def CombinatorialPropertiesClosed (R : Type u) [CommutativeRing R] (C : CombinatorialProperties R) : Prop :=
  C.clearng ∧ C.reduced ∧ C.noetherian ∧ C.artinian ∧ C.local ∧ C.semilocal

theorem combinatorial_properties_closed_from_evidence (R : Type u) [CommutativeRing R] (C : CombinatorialProperties R) (E : CombinatorialPropertiesEvidence R C) : CombinatorialPropertiesClosed R C := by
  exact And.intro E.clearngClosed (And.intro E.reducedClosed (And.intro E.noetherianClosed (And.intro E.artinianClosed (And.intro E.localClosed E.semilocalClosed))))

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse