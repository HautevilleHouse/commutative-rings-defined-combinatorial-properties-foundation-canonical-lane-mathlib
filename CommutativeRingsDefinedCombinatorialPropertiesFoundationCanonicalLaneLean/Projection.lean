import CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def commutativeRingProjection : Projection CommutativeRingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem commutative_ring_projection_idempotent (x : CommutativeRingEndgameState) :
    commutativeRingProjection.toFun (commutativeRingProjection.toFun x) = commutativeRingProjection.toFun x := by
  exact commutativeRingProjection.idempotent x

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
