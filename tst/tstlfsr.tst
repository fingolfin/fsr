gap> K := GF(2);;  y := X(K, "y");; x := X(K, "x");; B := Basis(K);; f:= x^4+x^3+Z(2)^0 ;;
gap> l := y^3 + y + 1;;
gap> t1 :=  LFSR(K, l);
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t1);
Empty LFSR over GF(2) given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0 ], [ 1 ], [ 1 ] ]
with initial state  =[ [ 0 ], [ 0 ], [ 0 ] ]
with current state  =[ [ 0 ], [ 0 ], [ 0 ] ]
after initialization
with output from stage S_0
gap> F := FieldExtension(K, f);;B := Basis(F);;
gap> t3 := LFSR(F, l);
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t3);
Empty LFSR over GF(2^4) defined by FieldPoly=x^4+x^3+Z(2)^0 given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0, 0, 0, 0 ], [ 1, 0, 0, 0 ], [ 1, 0, 0, 0 ] ]
with initial state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
with current state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
after initialization
with output from stage S_0
gap> K := GF(2);; y := X(K, "y");; tap := 0;;
gap> l := y^3 + y + 1;; B := Basis(K);;
gap> t5 :=  LFSR(K, l, tap);
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t5);
Empty LFSR over GF(2) given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0 ], [ 1 ], [ 1 ] ]
with initial state  =[ [ 0 ], [ 0 ], [ 0 ] ]
with current state  =[ [ 0 ], [ 0 ], [ 0 ] ]
after initialization
with output from stage S_0
gap> tap := 2;;
gap> t5 :=  LFSR(K, l, tap);
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t5);
Empty LFSR over GF(2) given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0 ], [ 1 ], [ 1 ] ]
with initial state  =[ [ 0 ], [ 0 ], [ 0 ] ]
with current state  =[ [ 0 ], [ 0 ], [ 0 ] ]
after initialization
with output from stage S_2
gap> tap := 5;;
gap> t5 :=  LFSR(K, l, tap);
argument tap[1]=5 is out of range 0..2, or not given => im taking S_0 instead!
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t5);
Empty LFSR over GF(2) given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0 ], [ 1 ], [ 1 ] ]
with initial state  =[ [ 0 ], [ 0 ], [ 0 ] ]
with current state  =[ [ 0 ], [ 0 ], [ 0 ] ]
after initialization
with output from stage S_0
gap> tap := [0,2];;
gap> t5 :=  LFSR(K, l, tap);
< empty LFSR given by CharPoly = y^3+y+Z(2)^0>
gap> PrintAll(B,t5);
Empty LFSR over GF(2) given by CharPoly = y^3+y+Z(2)^0
with feedback coeff =[ [ 0 ], [ 1 ], [ 1 ] ]
with initial state  =[ [ 0 ], [ 0 ], [ 0 ] ]
with current state  =[ [ 0 ], [ 0 ], [ 0 ] ]
after initialization
with output from stages S_[ 0, 2 ]
gap> K := GF(2);; x := X(K, "x");;
gap> f := x^4 + x^3 + 1;; F := FieldExtension(K, f);; B := Basis(F);;
gap> y := X(F, "y");; l := y^4+ y+ Z(2^4);;
gap> tap := 1;;
gap> t6 := LFSR(K, f, l, tap);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> PrintAll(B,t6);
Empty LFSR over GF(2^4) defined by FieldPoly=x^4+x^3+Z(2)^0 given by CharPoly = y^4+y+Z(2^4)
with feedback coeff =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 1, 0, 0, 0 ], [ 0, 1, 1, 0 ] ]
with initial state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
with current state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
after initialization
with output from stage S_1
gap> tap := [0,2,3];;
gap> t6 := LFSR(K, f, l, tap);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> PrintAll(B,t6);
Empty LFSR over GF(2^4) defined by FieldPoly=x^4+x^3+Z(2)^0 given by CharPoly = y^4+y+Z(2^4)
with feedback coeff =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 1, 0, 0, 0 ], [ 0, 1, 1, 0 ] ]
with initial state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
with current state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
after initialization
with output from stages S_[ 0, 2, 3 ]
gap> tap := 9;;
gap> t6 := LFSR(K, f, l, tap);
argument tap[1]=9 is out of range 0..3, or not given => im taking S_0 instead!
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> PrintAll(B,t6);
Empty LFSR over GF(2^4) defined by FieldPoly=x^4+x^3+Z(2)^0 given by CharPoly = y^4+y+Z(2^4)
with feedback coeff =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 1, 0, 0, 0 ], [ 0, 1, 1, 0 ] ]
with initial state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
with current state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
after initialization
with output from stage S_0
gap> F := FieldExtension(K, f);; B := Basis(F);; tap := 1;; l := y^4 + y + Z(2^4);;
gap> t7 := LFSR(F, l, tap);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> PrintAll(B,t7);
Empty LFSR over GF(2^4) defined by FieldPoly=x^4+x^3+Z(2)^0 given by CharPoly = y^4+y+Z(2^4)
with feedback coeff =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 1, 0, 0, 0 ], [ 0, 1, 1, 0 ] ]
with initial state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
with current state  =[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]
after initialization
with output from stage S_1
gap> Display(t7);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> View(t7);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> Print(t7);
Empty LFSR given by CharPoly = y^4+y+Z(2^4)
gap> Print(B,t7);
CanonicalBasis( GF(2^4) )Empty LFSR given by CharPoly = y^4+y+Z(2^4)
gap> K := GF(2);; x := X(K, "x");;
gap> f := x^4 + x^3 + 1;; F := FieldExtension(K, f);; B := Basis(F);;
gap> y := X(F, "y");; l := y^4+ y+ Z(2^4);;
gap> t9 := LFSR(K, f, l);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> ist := [  Z(2^4) ,  0*Z(2) ,  Z(2^4)^3 ,  Z(2^4)^8  ];;
gap> LoadFSR(t9,ist);
Z(2^4)^8
gap> sequence :=[];; K := GF(2);; y := X(K, "y");; l := y^3 + y + 1;;
gap> t1 :=  LFSR(K, l);; ist1 :=[0*Z(2), 0*Z(2), Z(2)^0 ];;
gap> Add(sequence,LoadFSR(t1,ist1));; sequence;
[ Z(2)^0 ]
gap> for i in [1..9] do Add(sequence,StepFSR(t1)); od; sequence;
[ Z(2)^0, 0*Z(2), 0*Z(2), Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2), 0*Z(2) ]
gap> sequence :=[];; Add(sequence,LoadFSR(t1,ist1));;
gap> for i in [1..10] do  Add(sequence,StepFSR(t1,Z(2)^0)); od;  sequence;
[ Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2), Z(2)^0, Z(2)^0, 0*Z(2), Z(2)^0, 0*Z(2), 0*Z(2), 0*Z(2) ]
gap> K := GF(2);; x := X(K, "x");;
gap> f := x^4 + x^3 + 1;; F := FieldExtension(K, f);; B := Basis(F);;
gap> y := X(F, "y");; l := y^4+ y+ Z(2^4);;
gap> t10 := LFSR(K, f, l);
< empty LFSR given by CharPoly = y^4+y+Z(2^4)>
gap> FieldPoly(t10); UnderlyingField(t10); FeedbackVec(t10); OutputTap(t10);
x^4+x^3+Z(2)^0
GF(2^4)
[ 0*Z(2), 0*Z(2), Z(2)^0, Z(2^4) ]
[ 0 ]
gap> Length(t10); InternalStateSize(t10);
4
16
gap> ist :=[0*Z(2), Z(2^4), Z(2^4)^5, Z(2)^0 ];; LoadFSR(t10, ist);
Z(2)^0
gap> RunFSR(t10);                                                  
[ Z(2^2), Z(2^4), 0*Z(2), Z(2^4)^2, Z(2^4)^11, Z(2^4)^2, Z(2^4)^2, Z(2^2), Z(2^4)^7, Z(2^4)^6, Z(2^4)^11, Z(2^2)^2, Z(2^4)^14, 
  Z(2^4)^8, Z(2^4)^3, Z(2^2)^2, Z(2^4)^2, Z(2^4), Z(2^4)^2, Z(2^4)^9 ]
gap>  LoadFSR(t10, ist);; RunFSR(t10,5);
[ Z(2^2), Z(2^4), 0*Z(2), Z(2^4)^2, Z(2^4)^11 ]
gap>  LoadFSR(t10, ist);; RunFSR(t10,5,true);
[ [ 0, 0, 1, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 0, 0 ], [ 0, 1, 1, 0 ] ]		[ 0, 1 ]
[ [ 0, 1, 1, 1 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 0, 0 ] ]		[ 0, 1, 0, 0 ]
[ [ 0, 0, 1, 0 ], [ 0, 1, 1, 1 ], [ 0, 0, 1, 0 ], [ 0, 0, 0, 0 ] ]		0
[ [ 0, 0, 1, 0 ], [ 0, 0, 1, 0 ], [ 0, 1, 1, 1 ], [ 0, 0, 1, 0 ] ]		[ 0, 0, 1, 0 ]
[ [ 0, 1, 1, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 1, 0 ], [ 0, 1, 1, 1 ] ]		[ 0, 1, 1, 1 ]
[ Z(2^2), Z(2^4), 0*Z(2), Z(2^4)^2, Z(2^4)^11 ]
gap> RunFSR(t10,true);
[ [ 1, 1, 0, 1 ], [ 0, 1, 1, 0 ], [ 0, 0, 1, 0 ], [ 0, 0, 1, 0 ] ]		[ 0, 0, 1, 0 ]
[ [ 0, 0, 1, 1 ], [ 1, 1, 0, 1 ], [ 0, 1, 1, 0 ], [ 0, 0, 1, 0 ] ]		[ 0, 0, 1, 0 ]
[ [ 0, 1, 1, 1 ], [ 0, 0, 1, 1 ], [ 1, 1, 0, 1 ], [ 0, 1, 1, 0 ] ]		[ 0, 1 ]
[ [ 1, 1, 1, 0 ], [ 0, 1, 1, 1 ], [ 0, 0, 1, 1 ], [ 1, 1, 0, 1 ] ]		[ 1, 1, 0, 1 ]
[ [ 1, 0, 0, 1 ], [ 1, 1, 1, 0 ], [ 0, 1, 1, 1 ], [ 0, 0, 1, 1 ] ]		[ 0, 0, 1, 1 ]
[ [ 1, 0, 1, 0 ], [ 1, 0, 0, 1 ], [ 1, 1, 1, 0 ], [ 0, 1, 1, 1 ] ]		[ 0, 1, 1, 1 ]
[ [ 0, 0, 0, 1 ], [ 1, 0, 1, 0 ], [ 1, 0, 0, 1 ], [ 1, 1, 1, 0 ] ]		[ 1, 1 ]
[ [ 1, 1, 1, 0 ], [ 0, 0, 0, 1 ], [ 1, 0, 1, 0 ], [ 1, 0, 0, 1 ] ]		[ 1, 0, 0, 1 ]
[ [ 0, 0, 1, 0 ], [ 1, 1, 1, 0 ], [ 0, 0, 0, 1 ], [ 1, 0, 1, 0 ] ]		[ 1, 0, 1, 0 ]
[ [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1, 1, 1, 0 ], [ 0, 0, 0, 1 ] ]		[ 0, 0, 0, 1 ]
[ [ 0, 0, 1, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ], [ 1, 1, 1, 0 ] ]		[ 1, 1 ]
[ [ 0, 1, 0, 1 ], [ 0, 0, 1, 0 ], [ 0, 1, 0, 0 ], [ 0, 0, 1, 0 ] ]		[ 0, 0, 1, 0 ]
[ [ 0, 1, 0, 1 ], [ 0, 1, 0, 1 ], [ 0, 0, 1, 0 ], [ 0, 1, 0, 0 ] ]		[ 0, 1, 0, 0 ]
[ [ 0, 0, 0, 0 ], [ 0, 1, 0, 1 ], [ 0, 1, 0, 1 ], [ 0, 0, 1, 0 ] ]		[ 0, 0, 1, 0 ]
[ [ 0, 1, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 0, 1 ], [ 0, 1, 0, 1 ] ]		[ 0, 1, 0, 1 ]
[ [ 1, 0, 1, 1 ], [ 0, 1, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 0, 1 ] ]		[ 0, 1, 0, 1 ]
[ [ 1, 1, 1, 0 ], [ 1, 0, 1, 1 ], [ 0, 1, 0, 0 ], [ 0, 0, 0, 0 ] ]		0
[ [ 0, 1, 0, 0 ], [ 1, 1, 1, 0 ], [ 1, 0, 1, 1 ], [ 0, 1, 0, 0 ] ]		[ 0, 1, 0, 0 ]
[ [ 1, 0, 0, 1 ], [ 0, 1, 0, 0 ], [ 1, 1, 1, 0 ], [ 1, 0, 1, 1 ] ]		[ 1, 0, 1, 1 ]
[ [ 0, 1, 1, 1 ], [ 1, 0, 0, 1 ], [ 0, 1, 0, 0 ], [ 1, 1, 1, 0 ] ]		[ 1, 1 ]
[ Z(2^4)^2, Z(2^4)^2, Z(2^2), Z(2^4)^7, Z(2^4)^6, Z(2^4)^11, Z(2^2)^2, Z(2^4)^14, Z(2^4)^8, Z(2^4)^3, Z(2^2)^2, Z(2^4)^2, Z(2^4), 
  Z(2^4)^2, Z(2^4)^9, Z(2^4)^9, 0*Z(2), Z(2^4), Z(2^4)^13, Z(2^2)^2 ]
gap> elmvec := [Z(2^4)^2, Z(2^4)^2, Z(2^2), Z(2^4)^7, Z(2^4)^6, Z(2^4)^11, Z(2^2)^2, Z(2^4)^14];;
gap> RunFSR(t10,ist, elmvec,true);                                                               
elm 		[ 3,......,0 ]  with taps  [ 0 ]
 		[ [ 0, 0, 0, 0 ], [ 0, 1, 1, 0 ], [ 1, 1, 0, 1 ], [ 1, 0, 0, 0 ] ]		[ 1, 0, 0, 0 ]
[ 1, 0, 1, 1 ]		[ [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 1, 0 ], [ 1, 1, 0, 1 ] ]		[ 1, 1, 0, 1 ]
[ 1, 0, 1, 1 ]		[ [ 1, 1, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 1, 1, 0 ] ]		[ 0, 1, 1, 0 ]
[ 1, 1, 0, 1 ]		[ [ 0, 1, 1, 0 ], [ 1, 1, 0, 0 ], [ 0, 0, 0, 0 ], [ 0, 0, 0, 0 ] ]		[ 0, 0, 0, 0 ]
[ 0, 1, 0, 0 ]		[ [ 0, 1, 0, 0 ], [ 0, 1, 1, 0 ], [ 1, 1, 0, 0 ], [ 0, 0, 0, 0 ] ]		[ 0, 0, 0, 0 ]
[ 0, 0, 0, 1 ]		[ [ 1, 1, 0, 1 ], [ 0, 1, 0, 0 ], [ 0, 1, 1, 0 ], [ 1, 1, 0, 0 ] ]		[ 1, 1, 0, 0 ]
[ 0, 1, 1, 1 ]		[ [ 0, 1, 0, 0 ], [ 1, 1, 0, 1 ], [ 0, 1, 0, 0 ], [ 0, 1, 1, 0 ] ]		[ 0, 1, 1, 0 ]
[ 0, 1, 0, 1 ]		[ [ 1, 0, 1, 0 ], [ 0, 1, 0, 0 ], [ 1, 1, 0, 1 ], [ 0, 1, 0, 0 ] ]		[ 0, 1, 0, 0 ]
[ 0, 0, 1, 0 ]		[ [ 1, 1, 0, 0 ], [ 1, 0, 1, 0 ], [ 0, 1, 0, 0 ], [ 1, 1, 0, 1 ] ]		[ 1, 1, 0, 1 ]
[ Z(2^2), Z(2^2), Z(2^4), 0*Z(2), 0*Z(2), Z(2^4)^9, Z(2^4), Z(2^4)^7, Z(2^2) ]





