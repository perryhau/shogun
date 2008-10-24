%warnfilter(509) CArray2;
%{
 #include "lib/Array2.h" 
%}

%include "lib/Array2.h"

%template(CharArray2) CArray2<char>;
%template(ByteArray2) CArray2<BYTE>;
%template(ShortArray2) CArray2<SHORT>;
%template(WordArray2) CArray2<WORD>;
%template(IntArray2) CArray2<INT>;
%template(UIntArray2) CArray2<UINT>;
%template(LongArray2) CArray2<LONG>;
%template(ULongArray2) CArray2<ULONG>;
%template(ShortRealArray2) CArray2<SHORTREAL>;
%template(RealArray2) CArray2<DREAL>;
