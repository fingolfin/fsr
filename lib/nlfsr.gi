#############################################################################
##
#W  nlfsr.gi                   GAP Package                   nusa zidaric
##
##

#############################################################################
##
#F  NLFSR( <K>, <clist>, <mlist> , <len> )  . . . .  create an NLFSR object 	# len 4
#F  NLFSR( <K>, <fieldpol>, <clist>, <mlist> , <len> )  . . . .  create an NLFSR object 	# len 5
#F  NLFSR( <K>, <clist>, <mlist> , <len> , <tap>)  . . . .  create an NLFSR object 	# len 5
#F  NLFSR( <K>, <fieldpol>, <clist>, <mlist> , <len>, <tap> )  . . . .  create an NLFSR object 	# len 6


InstallGlobalFunction( NLFSR,  function(arg)

local K, F, multpol, fieldpol, clist, mlist, m, n, tap, y,	# for args
    fam, fb, st, coefs, nlfsr, d, i, j , idx, indlist, xlist, slist , mof, lin, basis;	# for constructor

# figure out which constructor is being used

if  Length(arg)=4 then
	if IsField(arg[1]) and IsFFECollection(arg[2]) and IsList(arg[3]) and IsPosInt(arg[4]) then 	
			#F  NLFSR( <K>, <clist>, <mlist> , <len> )
			# we dont allow anything thats not a prime here, coz primepower is already an extension
			if IsPrimeField(arg[1]) then K:= arg[1];  F := arg[1]; fieldpol := 1;
			else F := arg[1]; K := PrimeField(F);  fieldpol := DefiningPolynomial(F);
			fi;
			clist := arg[2]; mlist := arg[3];
			d := arg[4]; tap := [0];
	else Error("check the args!!!"); 		return fail;
	fi;
elif  Length(arg)=5 then
	if  IsField(arg[1]) and IsPolynomial(arg[2]) and IsFFECollection(arg[3]) and IsList(arg[4]) and IsPosInt(arg[5]) then 	
			#F   NLFSR( <K>, <fieldpol>, <clist>, <mlist> , <len> )
			K := arg[1]; fieldpol := arg[2]; 
			if not IsIrreducibleRingElement(PolynomialRing(K),  fieldpol) then 
				Error("defining polynomial of the extension field must be irreducible!!!");
						return fail;
			fi;
			F := FieldExtension(K,fieldpol);
			clist := arg[3]; mlist := arg[4];
			d := arg[5]; tap := [0];			
	elif IsField(arg[1]) and IsFFECollection(arg[2]) and IsList(arg[3]) and IsPosInt(arg[4])  then 			
			#F NLFSR( <K>, <clist>, <mlist> , <len> , <tap>) 
			# we dont allow anything thats not a prime here, coz primepower is already an extension
			if IsPrimeField(arg[1]) then K:= arg[1];  F := arg[1]; fieldpol := 1;
			else F := arg[1]; K := PrimeField(F);  fieldpol := DefiningPolynomial(F);
			fi;
			clist := arg[2]; mlist := arg[3];
			d := arg[4]; 
	
			if 	IsPosInt(arg[5]) or IsZero(arg[5]) then		tap := [arg[5]];
			elif  IsRowVector(arg[5]) then 			tap := arg[5];
			else 	Error("check the tap arg !!!"); 		return fail;
			fi;
	else Error("check the args!!!"); 		return fail;
	fi;
elif  Length(arg)=6 then
	if  IsField(arg[1]) and IsPolynomial(arg[2]) and IsFFECollection(arg[3]) and IsList(arg[4]) and IsPosInt(arg[5]) then 	
			#F   NLFSR( <K>, <fieldpol>, <clist>, <mlist> , <len>, <tap> ) 
			K := arg[1]; fieldpol := arg[2]; 
			if not IsIrreducibleRingElement(PolynomialRing(K),  fieldpol) then 
				Error("defining polynomial of the extension field must be irreducible!!!");
						return fail;
			fi;
			F := FieldExtension(K,fieldpol);
			clist := arg[3]; mlist := arg[4];
			d := arg[5];
			
			if 	IsPosInt(arg[6]) or IsZero(arg[6]) then		tap := [arg[6]];
			elif  IsRowVector(arg[6]) then 			tap := arg[6];
			else 	Error("check the tap arg !!!"); 		return fail;
			fi;
	else Error("check the args!!!"); 		return fail;
	fi;

# whatever input constructors - undefined
else Error("check the args!!!"); 		return fail;
fi;

# check coeffs and monomials
	if Length(clist)<>Length(mlist) then 
		Error("coeff and monomial lists must have same length!!!");
				return fail;
	fi;
	for i in [1..Length(clist)] do
		if not (\in(clist[i], F)) then
			Error( "coefficient at index=",i,"is not an element of the underlying field !!!" );
					return fail;
		fi;	
	od;
	
	indlist := []; 
# get all the indeterminates in all monomials
	for i in [1 .. Length(mlist)] do 
		if IsPolynomial(mlist[i]) then # to account for case when we have constants 
			m := LeadingMonomial(mlist[i]);
	#		Print(m,"\n");
			for j in [1..Length(m)] do 
				if IsOddInt(j) then 
					idx := m[j] - 800;
					if idx >= d then 
						Error("Feedback needs an element from a stage that does not exist ( out of range) !!!"); 	return fail;
					fi;
					Add(indlist, m[j] - 800 ); # get all the indeterminates in this monomial
				fi;
			od;
		fi;
	od;
	
	# get ridof duplicate indeces: DuplicateFreeList(
	indlist :=  DuplicateFreeList(indlist);
#	Print(indlist,"\n");
#	xlist :=[]; 
#	for i in [1.. Length(indlist)] do
#		Add(xlist,Indeterminate(F,800+indlist[i]));
#	od;
#	Print(xlist,"\n");		
	
#	for i in [1 .. Length(indlist)] do 
#		Add(varlist , xlist[indlist[i] + 1]);
#	od;
	
# get the feedback poly

 	 mof := MonomialsOverField(F, mlist);
	 multpol := clist * mof; 
	 lin := (DegreeOfPolynomial(multpol)=1);
	 if lin then 
		Error("Feedback is linear, create an LFSR instead!!!"); 		return fail;
	 fi;

# set state to all 0 
	st := [];
	for i in [1.. d] do 
		st[i] := Zero(F); 
	od;
	
# set taps

	for i in [1.. Length(tap)] do 
		if (tap[i]<0 or tap[i]>d) then 
			Print("argument tap[",i,"]=",tap[i]," is out of range 0..",d-1,", or not given => im taking S_0 instead!\n");
			tap[i] := 0;
		fi;
	od;	
# new LFSR :) 
	fam :=FSRFamily(Characteristic(K));
	nlfsr := Objectify(NewType(fam, IsNLFSRRep),   rec(init:=st, state:= st, numsteps := -1, basis := CanonicalBasis(F)));

	SetFieldPoly(nlfsr,fieldpol);
	SetUnderlyingField(nlfsr,F);
	SetMultivarPoly(nlfsr,multpol);  
	SetIsNonLinearFeedback(nlfsr, (not lin));  
	SetIsLinearFeedback(nlfsr, lin);  
	SetFeedbackVec(nlfsr,clist);    
	SetTermList(nlfsr, mlist );
	SetIndetList(nlfsr, indlist );
	SetLength(nlfsr,d); 
	SetOutputTap(nlfsr,tap); # this is S_tap or default S_0



return nlfsr;
end);



InstallMethod( ConstTermOfNLFSR, "const term of the multivariate polynomial",  [IsNLFSR], function(x)
local F, tlist, clist, i, const;
	F := UnderlyingField(x);
	const := Zero(F);
	tlist := TermList(x);
	clist := FeedbackVec(x);
	for i in [1..Length(tlist)] do
		if tlist[i] = One(F) then 
			const := clist[i]; 
		fi;	 
	od;
return const;
end);



#new := Value(MultivarPoly, strlist, statelist);
# looks like GAP will compute the result in a larger field 
#(that constains the default fields of all the values that enter computation as subfield)
#must manually check if : new in F


#	if not(\in(new,F)) then
#		Error( "computed feedback is not an element of the underlying field !!!" );		return fail;
#	fi;



Print("nlfsr.gi OK,\t");