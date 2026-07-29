import CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CommutativeRingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CommutativeRingsDefinedCombinatorialPropertiesFoundationCanonicalLaneLean
end HautevilleHouse
