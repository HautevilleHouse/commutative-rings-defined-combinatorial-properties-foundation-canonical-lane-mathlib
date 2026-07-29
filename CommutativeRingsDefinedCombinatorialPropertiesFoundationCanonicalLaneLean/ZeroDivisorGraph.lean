import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesFoundation.CommutativeRingSpec

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundation

structure ZeroDivisorGraph (R : CommutativeRingSpec) where
  vertexSet : Set R.carrier
  edgeSet : Set (R.carrier × R.carrier)
  edgeRelation : ∀ a b : R.carrier, (a, b) ∈ edgeSet ↔ a ≠ R.zero ∧ b ≠ R.zero ∧ R.mul a b = R.zero
  graphIsConnected : Prop
  diameterUpperBound : ℕ
  graphIsConnectedHolds : graphIsConnected
  diameterBoundHolds : diameterUpperBound ≤ 2

structure ZeroDivisorGraphEvidence {R : CommutativeRingSpec} (G : ZeroDivisorGraph R) where
  graphIsConnectedClosed : G.graphIsConnected
  diameterBoundClosed : G.diameterUpperBound ≤ 2

def ZeroDivisorGraphClosed {R : CommutativeRingSpec} (G : ZeroDivisorGraph R) : Prop :=
  G.graphIsConnected ∧ G.diameterUpperBound ≤ 2

theorem zero_divisor_graph_closed_from_evidence {R : CommutativeRingSpec} (G : ZeroDivisorGraph R) (E : ZeroDivisorGraphEvidence G) : ZeroDivisorGraphClosed G := by
  exact And.intro E.graphIsConnectedClosed E.diameterBoundClosed

end CommutativeRingsDefinedCombinatorialPropertiesFoundation
end HautevilleHouse