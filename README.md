[![Build Status](https://travis-ci.org/nzidaric/fsr.svg?branch=master)](https://travis-ci.org/nzidaric/fsr)
[![Code Coverage](https://codecov.io/github/nzidaric/fsr/coverage.svg?branch=master&token=)](https://codecov.io/gh/nzidaric/fsr)

The FSR package 

This is the README file for the GAP package "FSR" Feedback shift Register.
contact: Nusa zidaric, Mark Aagaard, Guang Gong 
{nzidaric, maagaard, ggong}@uwaterloo.ca


extract to gapinstallation/pkg/
That's it. Now start GAP and type

	LoadPackage("FSR");

The "FSR" package banner should appear on the screen.


if u update a single *.gd/*.gi pair:
 
gap> RereadPackage("FSR", "lib/*.gd");
true
gap> RereadPackage("FSR", "lib/*.gi");
true
