��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
�
ConstConst*
_output_shapes	
:�*
dtype0*�
value�B��"�                        	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  
�
Const_1Const*
_output_shapes	
:�*
dtype0*�
value�B��"�                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  
�]
Const_2Const*
_output_shapes	
:�*
dtype0*�\
value�\B�\�"�\                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �   	  	  	  	  	  	  	  	  	  		  
	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	   	  !	  "	  #	  $	  %	  &	  '	  (	  )	  *	  +	  ,	  -	  .	  /	  0	  1	  2	  3	  4	  5	  6	  7	  8	  9	  :	  ;	  <	  =	  >	  ?	  @	  A	  B	  C	  D	  E	  F	  G	  H	  I	  J	  K	  L	  M	  N	  O	  P	  Q	  R	  S	  T	  U	  V	  W	  X	  Y	  Z	  [	  \	  ]	  ^	  _	  `	  a	  b	  c	  d	  e	  f	  g	  h	  i	  j	  k	  l	  m	  n	  o	  p	  q	  r	  s	  t	  u	  v	  w	  x	  y	  z	  {	  |	  }	  ~	  	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	   
  
  
  
  
  
  
  
  
  	
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   
  !
  "
  #
  $
  %
  &
  '
  (
  )
  *
  +
  ,
  -
  .
  /
  0
  1
  2
  3
  4
  5
  6
  7
  8
  9
  :
  ;
  <
  =
  >
  ?
  @
  A
  B
  C
  D
  E
  F
  G
  H
  I
  J
  K
  L
  M
  N
  O
  P
  Q
  R
  S
  T
  U
  V
  W
  X
  Y
  Z
  [
  \
  ]
  ^
  _
  `
  a
  b
  c
  d
  e
  f
  g
  h
  i
  j
  k
  l
  m
  n
  o
  p
  q
  r
  s
  t
  u
  v
  w
  x
  y
  z
  {
  |
  }
  ~
  
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
��
Const_3Const*
_output_shapes	
:�*
dtype0*��
value��B���Bb'YHInhGE0Gh6jDKWEcM0W'Bb'RRCiI7irC6yFpV36GU1x'Bb'zpnPqdn32EJ7K7Lnp4H3'Buser1044Bb'SbAMUCfCepDNHDizQ2X6'Buser398Bb'3UvAzV0QdfRpeELcJF00'Bb'PRb1GooVzQD2AKfDYEQ7'Buser25Buser1145Buser1334Buser681Buser1503Buser945Buser333Buser180Buser1311Buser1277Buser1181Bb'Ei9dDrFAwZbNC2anoVzP'Bb'fHvHGYVjFKh0ig6MpGzN'Buser1740Bb'A3Jz6EzwUkMFulZ1YHgj'Bb'uBWGcizxqPsqV3HmQo9x'Buser1047Buser992Buser255Bb'LPKorrMNqalM7yDRFDQO'Buser532Buser457Bb'2lpZdOKDLT2zjBPuL0bS'Buser396Buser878Bb'Y7ByqTuRRtiwlWlVx0M1'Bb'cFkgKI3ZQEyBsNETulIa'Bb'UZUcYCSuGdxT2gewi5y2'Bb'DtgFlHYdzyLy8boDxyYW'Buser447Buser1166Buser1029Bb'wSJckdTeIjIFNwJviehM'Bb'NufV8xs8xb1N7Z4cPu8f'Buser1107Buser1046Buser356Buser985Bb'nXquBIYdgJoD0p38vBUX'Buser1533Buser1284Bb'jS7m6w74RxDBlJvmtbAS'Bb'AleYW3qO8fQvPC5pEYn6'Buser152Buser1372Buser1066Bb'mgPlStooZi6byI8uj06I'Buser97Bb'Y5y0gDTw0VtB1UXfglju'Buser1393Buser552Buser1142Buser294Bb'RZNtmFNaak4ByappLWV4'Buser1023Buser1647Buser1546Bb'fnDfGCmWGYMSOab81iGf'Buser529Buser846Buser203Bb'muhxpiMPLY4xUcN7aq2d'Buser299Buser1588Buser731Buser998Buser1642Buser172Buser1274Buser1357Bb'LGAbqVGFOBIqqt3k7eQN'Buser1649Buser443Bb'QmVN6Eu5rucB5VljwpQj'Bb'kpwIObb72B2VtsUwTLpd'Bb'2s0qkjwZz7Ym8HXrXMcR'Buser206Buser403Buser1694Buser1190Buser966Bb'1g4IgGyQNMyuBuLOaPkz'Bb'9pSK3ps6jNZ5rKC4z4AK'Buser1206Buser964Buser1639Bb'5CEjd1SAtzHOE9oCxExc'Buser92Buser425Buser1574Buser640Buser829Bb'EnT07Xz5FTsd2c9qXQfP'Buser1484Bb'ATTS3hMLoGF8ikNeb3Jx'Buser53Buser1060Bb'td3fO1sdqXsWVIKwRJhe'Bb'rHgsxHrz0QogBbV0ewP9'Bb'09n4uD5hOjliasUo9R4z'Buser1067Buser1819Bb'6diyrUBddTjAm4k2m8kU'Buser1676Buser1536Buser269Bb'yKV6xFDIRyx900mpYqs4'Bb'NShjde0twhBjkblwm4tG'Bb'kTFUNhytupgjK4T8VrWe'Bb'SV92h3cCcFpBKx6gq3bd'Bb'n9Gw77nAJBkqzJX0z88x'Buser500Buser1761Buser824Buser1143Bb'XgERHmpgAslU3KmkBtM6'Buser708Bb'A4RsRFOKZkkvVfTRHg4F'Buser1201Buser1505Bb'qIZR1Ohd4VkG6VWuiQA5'Buser1660Buser1174Buser1513Bb'cngIJz3cbNAbjZaAoyea'Bb'Qs7N2zNwqndamAe7nbsQ'Bb'ef7xgCw7OiP0zlW8yMR5'Bb'MDjHJSFlSLatx0IwwWM2'Bb'DSeRPfaugF3Pbipa27ZK'Bb'XxIDR7TaV04PbcIy2tz8'Bb'W2M3FjXXTw6YiydIZD3w'Buser52Bb'iwHVcEXfslhB1PEJSjA5'Bb'34bhNUXmyD8103C49d51'Buser304Buser143Buser1399Buser1494Bb'jSXAStcLGC919DFKfcOl'Bb'Z12b30k4toH7JLDXs0z0'Buser1728Buser1670Buser405Buser1824Buser1718Bb'EmmihyVlOtwnqK35EZ2j'Bb'wPdO5sYDj6wAuxe37hfN'Buser1282Bb'ptHfFI8Jgxq65akz9AhL'Bb'I48JMpmiQPWUjszwDhfl'Buser1338Buser91Buser1638Buser1766Buser264Buser1182Buser833Buser1124Buser1832Buser133Buser753Bb'mW061AaxyNO09XzWs1rs'Buser735Buser1263Buser535Buser211Buser380Buser293Bb'fPG4c2nrAIzO6Rx0PEwa'Bb's2dE4bBJaif6541JALpN'Buser901Buser1189Buser1752Buser606Buser387Bb'CXV3COmKcFprTEcD1PP5'Buser1178Bb'SATNEeqHw3YWbE4lqmJD'Bb'Kn5FZavfHA55v2d7sfUe'Buser1283Bb'91Cv26157c135kdpWYUE'Buser1788Bb'SJlU3ifZrP6DXuWGGHQF'Buser1529Bb'NcybDLrPOWnA2IgTs6Jo'Bb'L0T5dFX0I3DrMvrgpnNq'Buser81Bb'JNHtcDEDorTLL7iRQOzY'Bb'euup1d1BwcZ2mtrZgRQ0'Bb'sjUXyLSFCShxBnvBLYCo'Buser1476Bb'ZuaWPl3Z6U5IAqMlsvjs'Buser1538Buser10Buser1472Bb'SdqSSBJRQG1VOvqrvHUR'Bb'AjcdcJ13QD9rQ3n7ZXUM'Buser1501Buser1411Bb'3banVVUfVrlfraDHHRmO'Buser259Buser589Buser324Bb'ztZ6NiFvNVuwdL17ShW8'Bb'76Kh8I73OtkOLSHw7I76'Buser474Buser1286Bb'cdPhFOgqdyzd5tIfkEMt'Bb'P73GnSCRv8W6ysPTrxrh'Buser148Bb'OodjU84KhO0kldjLadIG'Buser1786Bb'Z8TFgJcrjwl8O3nKbpkp'Bb'UEL5oo36lg7bUZOnD4iv'Bb'u7fXtF78UAIx73L1I7IB'Bb'iedbb7SyJ3QJfkORlISK'Bb'pSy241mmRy04NDbFeUxl'Bb'nYCcrlzAHCUdZupo5K1K'Buser1425Bb'y2Gx5YpevdWQVU6FSmP4'Buser1784Buser1666Buser683Buser1377Bb'faP58pOveeZd7eIdOQo9'Buser680Bb'Nnd7oxU5qMLKXJImy9Pl'Bb'ZVHVh0dt7BH2hMhYeBEL'Buser550Buser1520Bb'PY45FEch0EirgxHE0OpY'Buser719Buser1168Bb'C9N5qhnPMiPYrYwfW35w'Bb'YCrHOWlYenwoM9HWCZM0'Bb'0EwDaiG16c6c65DqY2Am'Bb'lJLrls3tZZXt6rvLnnh2'Bb'rPUkBcgyIZm2CvJCOmCX'Buser1034Bb'mN4xYhA6eilObDEQr7r7'Buser1352Buser35Bb'J7uXAX6lYYyr85SmGca9'Buser467Buser1214Buser734Buser1398Buser622Buser78Bb'5sNEAsVqtj1hxLSBkAve'Buser0Buser22Bb'y1LYWp0lSUGdWZBNdbzb'Buser1299Bb'DiAHNBZvWmxFxugBvEcR'Buser926Buser1490Bb'6YuYVVUeX6cPKziw1ma2'Buser1269Buser1289Buser590Bb'SAQloRfSWHMRIeWm2Tnz'Bb'vQEars9c8l0RmXpZuEVJ'Bb'79s6oRVtmLTOuTaKnyyt'Buser936Buser1099Buser1187Buser1522Buser1278Buser1551Buser1841Buser1347Buser849Buser1438Bb'9viELoFhIHpasqfkPsKH'Buser24Buser185Bb'8XO8BWMMvVA4eSYJXvT3'Buser8Buser1821Bb'eY2cYnF9AqF10OtFo5Aj'Buser178Buser1423Buser107Buser1026Buser1097Bb'VOH96hGRVsCcjOaAK73B'Buser1672Buser1645Bb'6ZooklZFghTqCY7eHQJL'Bb'Muj1TyXckfObfIbH7A9G'Buser394Bb'zwW7l98ePibbagZr6rtn'Buser213Buser576Buser1823Buser818Bb'YqoH1ADGFLUV29VyOfvg'Buser1030Bb'sz3rs52mVTdSolqY47ea'Buser267Buser1290Buser330Buser1811Bb'We1mRfCeC8qsmr0mFLba'Buser1205Bb'bV7jNr8yd2TKfPIxPQoS'Buser600Buser1073Buser1118Bb'8u5kEayaZE8h2ZiJTiKY'Bb'yZ7RtvYxEJ2Dru3Hglbf'Buser103Buser817Buser801Buser219Buser1478Bb'77P8f4QeamYpv6ObQ4S1'Buser730Bb'I9HGzEAA4NQGzv1uksGR'Bb'Kk0xcEMVmao6t9fnZqhE'Bb'HmIU8mZxck8EAnZ3iVf7'Bb'bf4rBRaVxSDopqe72J2n'Buser369Buser1069Bb'W5RNwFF2D9XephyUYdNP'Bb'8vgk2Sr4ZBTvcPKPCsUr'Bb'4q08w3p0qJld3I65WxtT'Bb'zdioFiBFqj98SkKEzddn'Bb'qk9kmGmrNP5c3bxNVsfi'Buser725Bb'HrNQtc0POaJWYhPLa6yX'Buser109Buser667Buser915Bb'RRMz1Pk127POyAepRXx7'Buser934Buser1188Bb'M895r7gb2umdwrKpXuvO'Bb'm0mwNqTgU5AiR3aryXqr'Buser1701Buser653Buser135Bb'B3v0HUBiFVcoYADI8Yx4'Buser1474Buser56Buser75Buser857Buser991Buser226Buser96Buser1139Bb'Q7c0pmJWWpLBbEHbWouV'Buser113Buser1270Buser407Buser1445Bb'uRwszO3tvz901gsW9qn7'Bb'PVXNjUlDmsGpucHNCulp'Buser1585Buser1805Buser794Buser994Buser1664Buser539Buser1746Buser1736Buser634Bb'YIgPFsXDJpKuYBNhmgCM'Bb'Z1Sn0Ivuw5tOnIwhuXp0'Buser1497Bb'kc6UqqqkWja9mjOW1Qeo'Bb'sq5iBpIlSoWAf1jAQs4Z'Bb'8FsikvoZ7tHI7YlYqdAi'Bb'cPDSmSYpsiCZXQeeMcfq'Bb'uy7W3bViXqMOTIm48Clx'Buser604Bb'8eAwTpMB5uQ26QHupHLw'Buser1390Buser759Bb'39tIEcIkaSo1NfAKQXxT'Buser921Buser433Bb'CkcI4citj9IKBGp3Gg2c'Bb'aJwMOVCUOt7ddUeSJWTB'Buser1420Buser1374Buser461Buser146Bb'p3WUDWmsVbO1SOqS4uRq'Bb'cYq6dTVLLR3KMGOjIy7f'Bb'PVZ71IvLgXmlzw1GVXr2'Buser960Bb'Rq3muATH1rlh3feUYfxz'Bb'rW512QcEdd3VBGcLNmg4'Buser157Buser1117Buser969Buser738Buser1760Bb'a0UR91zgXYXIu83ppEVB'Buser792Bb'CT7nR1lS2xFSigJeMW5J'Buser1239Buser382Bb'Ptx1ShkplEKrYJ40kdlb'Bb'dLIKRyReGB7mFwmXyskI'Bb'7DJYxCrdmsfV1Fz19IFb'Buser592Buser371Bb'aZzkuw2BQOzpgqU1w9xb'Buser554Bb'EFFMWFjYEjU2Q3Co2LgB'Buser773Buser189Buser167Buser1409Bb'GKXHPog3bYPNBjpqkfbe'Buser1737Buser317Buser1396Buser534Bb'BNM2X8WBfyHD1pUB8MM9'Buser1367Buser1502Bb'IPPHn2TaN5YelB8Nhp9q'Bb'gd2iTOVPnJuMB1XUy0xC'Buser358Bb'5gYjRZkpL6D9Uum5DD4P'Buser1096Bb'MvINFxODjmv6CNnozTqX'Buser431Bb'1Rr0yCd8zWR9SfEqRimZ'Buser1806Bb'txmEOXt4ad3PcHAKzjcC'Buser639Bb'3vqzZPnJVs0qIdHrLtx2'Bb'iVq1CkGDC3amRJdakDQJ'Buser454Bb'DUOZTXdBKeO1uoaJxgz4'Buser1507Bb'bee5fOfAPVMmSjcnDrsF'Bb'qPOZP5fJp9Tc0RzFV88Q'Bb'CtBv69Z8FSphCpqHjrfV'Buser1604Buser1317Bb'knMCSVbbbH41vhv575wO'Bb'OU2UxM2Exht1grLzMilo'Bb'zW9CCV9dhnoEZdU4jf1U'Buser4Buser768Bb'B11eR7sih4jd7lGtj2rm'Buser106Bb'SxHaIFnSLgFsxiOediWC'Buser48Buser533Buser962Bb'99k4sI3So0g8dlnc4yww'Bb'VR44hoX7nBkibj5lDTrY'Bb'LAphMvmsBpCKAXNW1V4A'Buser1607Bb'xT80KipEwClBpReK4bG6'Bb'T9mwHE2PUvotnN8cUID8'Bb'uSYU2hwTXkG4DDr0g2MK'Buser1391Bb'ULXAiZZufBvnhoWDfjsh'Buser87Buser1241Buser755Buser605Bb'PosTCe0WeOhchJrT2Q3F'Buser1348Buser179Buser1221Bb'lpg3ytOA1XrNpDwHuoyh'Buser722Buser1144Bb'fS0OqKgEsf58xyQYVMFv'Bb'xu4UrOKQjGFHnRx7dZyf'Bb'9nF6aREJo3PfRdQgogKK'Bb'XUF7XZDuBHd2E4DP7SW4'Buser1212Bb'yxErUf1nC500DaHAQrSu'Buser260Bb'92XY33CwqjkxubOendob'Bb'ovAkARh1us74Aa3yuXNJ'Buser1652Buser484Bb'lCvCNTyz34o33G0CKWaE'Buser1303Buser473Buser1708Buser1353Buser419Bb'tiIEM6bzClRkzckDV26m'Bb'6oP6yX3qji044MFTJ5yh'Buser920Bb'jwielLsfOmVE5rIlB3tW'Buser904Bb'nOSNPD97s7gZnqXpR0dc'Buser1537Buser772Buser870Buser1799Buser758Buser351Buser1692Buser254Bb'ypBgw9HkuVNa6UMWMF66'Bb'Th9ivrJ1qt0HUhBVqwpi'Bb'1xq6DE3SoiiI5Shk1TdT'Buser131Bb'E58WnXplCD2wLT0ApTIr'Bb'qkgVdc0Xo7yRNf2g2Idy'Buser271Buser1006Bb'FFmctC1shFmFHfXRRocY'Buser650Buser1301Buser491Buser1849Buser320Buser1281Buser1709Bb'vOBMRLll3aB5xtD01k52'Bb'f1Q7b83ueE1051OUhzPc'Buser940Buser312Buser855Bb'A7ipdC9kKdQQapzrpFfr'Buser235Buser1716Buser129Buser99Buser1310Buser1086Buser1560Buser953Buser1767Buser771Buser572Buser1434Buser1231Bb'CHYSTOhEd7iStTv0ohGZ'Buser843Bb'GhUhEvVMob6W5GZq41ms'Buser1637Bb'PCw107pEY2iWCp5AXaZG'Buser1729Buser1436Bb'l5NNaKwtykiH10QAUMmK'Buser1392Buser1198Bb'RLuIgytWizaGc2u7L9hM'Buser1678Bb'4JIM9iQaptjtcmT6t6h8'Buser1751Bb'MHtRgP4znpwDPGC7nH4e'Buser587Bb'WGxHzigW3AiMehQM7w9M'Bb'NczXVAOYd9EiJw2Wyt8t'Bb'VUUdSSu2t2rNNIptRI37'Buser1229Buser983Bb'PyTK6oFfptaTbotHYtfY'Buser1442Buser1816Buser101Buser1789Bb'wcCWH6vW2Nhka9jT0cpN'Bb'JvlTT1S6KLEDGhS2u1RG'Buser504Buser1369Bb'ax7yCRtrlapGMeYUSXhd'Bb'VWQ0cnjBjunedbzGigc5'Bb'lCW61xoSWo6c7vT6IE1f'Buser1790Bb'O681FXP7Ed2yxsPvU2Eo'Buser221Buser47Buser765Buser770Buser1389Bb'16mJAsFLPe501S9MKds2'Bb'lmAMQXLyCeCW4VP95ycy'Buser1315Bb'mPfIGXlCrd7ar3oJK41j'Bb'cTgtUYiTrIDKEpu8zdBo'Buser741Buser1581Buser623Buser359Buser1136Bb'2be4c0KR9XO2ZXZj1Pox'Bb'RfkNFoYfgtnD4Qgw09vm'Bb'xXFkxoDIxYaytRNVDKgV'Buser1158Buser1105Buser1762Buser1745Bb'NqRscKxODSiUprD5GIj0'Bb'egHaxPDBJnVfBi848iqM'Buser1061Buser239Buser175Bb'5Fvdmp3t14H5zpmDvaTj'Buser139Buser1078Buser1005Bb'7ZcCRNDrWDYDnRK0IsM5'Buser716Buser820Buser1459Buser412Buser1306Bb'OWaVIzONFG3glw2LGPi6'Buser243Buser1460Buser1601Buser1102Buser624Bb'YpMLlRcFMd5vToEUS5O7'Buser1418Bb'3s4sP9S9a6OdYClEL0c5'Buser761Buser1114Buser1232Buser1707Buser352Buser891Buser1738Buser618Bb'Kubnuh31iiepHI59ouNI'Bb'WwSOjFPnBlaHL5dJNGjA'Bb'J9EPWF8KGs7XEMV0bF0d'Buser464Buser1104Buser1216Buser733Bb'17mj9AE9vp9lcJPeA1RC'Bb'nTF0C1o59zCPIPlBxM8K'Buser196Buser723Buser231Buser27Bb'enedoAPJQtvUlU8E9Y2C'Buser830Buser1628Buser1705Buser1851Bb'akkgusixreDYiY7KBixU'Buser1793Buser850Buser1452Buser1557Buser414Buser1008Buser127Bb'QCTuH1Fhuo1qlh7t6aKw'Buser837Buser19Bb'6ivl6GbMneFFibnB5HVX'Buser1215Buser1506Buser1324Bb'QzCnbfXTZrDgGjXvicnc'Bb'HUYOKiZLwxPGAnQKdOIL'Bb'MUVq4ySm5PDccYmhAJiC'Bb'YEMwV8sBvFfm0LrY6QJZ'Buser1526Buser513Buser1807Buser672Bb'mzkpBdV2f3yAo8tlSm6G'Buser1175Bb'dobE9nlsPZTVq4TDA6NX'Buser789Buser342Buser1616Buser306Bb'JJTGNkoLyttTfM9g60h2'Bb'JJuj2MDT8j7j7CX745XO'Buser1017Buser1654Buser1516Bb'19rn92d4qQfJcJjgekwH'Buser1089Buser314Bb'ZBeJuchFnGIy7gcjHbLy'Bb'iBhekzlsiboNgNrcng3y'Bb'dUA5bk5J2CoegatL2NDS'Buser483Buser929Bb'z09OYKJeYatmA9HaGb41'Buser1844Buser1838Buser340Buser1719Bb'aAYLHe1ylM4dBIvGWEVx'Bb'g7QE609GT1oZwHpAP0Dc'Buser262Buser530Buser1681Buser1184Buser1804Buser343Buser1275Buser1620Buser1437Bb'IB7JmentMZ3jsGUdx0M2'Buser1087Buser1213Bb'2rxjeDXgu99Pk8jDtol7'Bb'4ypFUzTMPnE5pbDrLHKR'Bb'Np86JjXAlGrmhrRqJ8rE'Bb'xGJIALMSWP5AQpxaATL4'Buser80Bb'fxs8rSqtgtJIATC28BAU'Bb'5bUDXxZ7Ucu3KHEZcAxX'Bb'ZOVzFRrbezeIgOZCv7dX'Buser1123Bb'tU0REtoAAhsKNT4TSWf4'Buser1798Bb'K8XCaRfx8OYmkiX7Q3A7'Buser931Bb'irIeHgtQZpABQrRtTMmC'Bb'EvNhA9D1A1m9mFJKAS9u'Buser1359Buser1758Buser207Bb'0eYtohv5kHfc5Oqvxlgb'Bb'pkYnEXtDt1C23HQXGb7Y'Bb'hr022Ic6WI8OzleTKC3j'Bb'k9gmv2v3ZzGv2ormdTbS'Buser780Buser1549Bb'GxLQtCfMDr8bLz7mZihg'Bb'48VX1zAdQh8jNYy68NMH'Buser781Buser23Buser1439Buser1661Buser807Buser1164Bb'KAJBWYCUma7FUsPeSGjV'Bb'wkyN0eOfoxRTcj8wgsjk'Buser1450Buser1809Buser186Bb'aZLZBkAiDuICsZAZxZwc'Bb'HwAkEw230aCFtAp1wVLx'Buser1466Buser1048Bb'sdEH6tXNMPzMjGHLDNUm'Bb'yzbDEVX1ZMPJlWqMDnH8'Buser1384Buser338Bb'AlRUt6b54S68cTnri2Nv'Buser115Buser1272Bb'Fnq9EjjJmHGy0tSz1XrQ'Bb'ahSKeDXYglT6P6Wdg67W'Buser1715Bb'voRgiE3XqlAaKI4Mpczr'Bb'dASHrJRbFW197M2awOCq'Buser784Bb'nNxNsCLXB7K5sgyrSu5b'Buser1780Buser570Buser339Bb'RYHF6hdx21AxCvlNfsiZ'Bb'yu6aNbpy4dviwnMcui47'Buser1019Buser982Buser427Buser1635Buser399Bb'sBdcRcWVZPhTit6j4zmi'Buser108Bb'viUpK1PKAq6htPMVJHOp'Buser709Bb'QlmCG0nqEjbbM4K7vuk3'Buser1132Buser1782Buser1444Buser490Bb'ZQYYC8Xg34flRPCRlpfF'Buser1055Bb'ptTQf8R2CPVsgbhZTwcP'Bb'aO6rbGlkNFGPtJU60LN7'Bb'Sph6TN0TjaAHRDFc5HGe'Buser1469Buser1090Buser647Buser1202Buser799Buser170Bb'm4Qs02NNNFGBT8E46ckK'Bb'NmdLr3V8vyX89ummN9bw'Buser287Buser778Buser366Bb'VL4XyAfDLW6KQXJ8dBwW'Bb'tv8eGRl3OLCbzo7ySnfl'Buser43Bb'WNeCjXIsgtSgbRHb64ha'Bb'LHIWIFGmV0vPUFsAjN7T'Buser1051Buser1808Bb'MajcOCdfdcKUe1UTB6Is'Bb'qw8HnWOUSeQo3M0dncdY'Bb'3wEniXFz4c3eOZOb8QPq'Buser1349Buser979Buser187Buser83Bb'8WmZWZgfAYL1JHRihGie'Buser1541Buser965Buser197Buser105Buser1106Bb'nDLzhGChgnwrI1K0gdgh'Buser1822Buser385Bb'Y03zLak01CfICMjOXBkL'Buser1295Buser300Buser1115Bb'0712XtHPDXIShdixfKux'Bb'G5fdjQymsvJmJvGFWXnK'Bb'ZqpE8BqvLBmnqQak9FyK'Buser1307Buser72Bb'RTZMrYRvY3T9tdYxev5u'Buser256Bb'c4itIT7wc3bREfkM3SfG'Buser567Bb'9grp3ciYzmcUnSQRLRRr'Bb'XlAddk3O1r59R4zclRq7'Bb'Vql49aMNfeg3PSnUxugt'Buser1667Bb'n68UcwsmOHmN757foO7p'Buser110Bb'7fyjYibYCzKHV2EFSp9r'Buser1657Bb'aV6Bq0lZeXhG4FVE2ern'Bb'WUOzOTqlASg4ZPjA368p'Bb'8ndFUDClreGqJIGKWoDp'Bb'UqCyU8Iems1pBRFLyQny'Buser323Buser492Bb'5JZaDVztwSQolmVA768y'Bb'ODbXe1B4fMFX1QbJ2kvr'Buser986Buser893Buser1001Bb'J7rp9qcyXVhMhGAZxXlc'Bb'n8Lv10sKsfUgoAGTULUy'Buser1192Buser1500Buser747Buser1194Buser1101Buser325Buser274Buser95Buser13Buser766Buser1134Bb'isbfWsUvnLanIkndLjBb'Bb'BHtyMU7csgmEevMu7jb9'Bb'k8yeF8NWM9jEADgIDVnI'Buser1065Buser970Bb'zJeqxOnqBPrQNdwENTol'Buser64Buser1479Buser1794Buser1147Buser941Buser1610Bb'MLcFcJIPtZE0yopLHpV7'Buser1721Bb'TL0fKTK3O5B9j4sz1hUI'Bb'u8qm0hK39V6KosH3tshf'Buser927Buser886Buser1783Buser749Bb'VRv4iNmiirWBrgM1nTej'Buser1578Buser861Bb'gL1lOnQeXAUb5CTbGbZ8'Buser1720Buser224Bb'2GPC93PuhW6BP8AvSHnc'Bb'OBfNtehZcfIMmX9VVdtM'Buser1566Buser1555Buser1742Buser907Buser1080Bb'1ct8Up7vHqTe61S4ZPcI'Buser282Bb'4fVEOsQ5iosAanTcNFI6'Bb'8I1TJ6YtRRH8MaEyUPvi'Bb'9WeGHzsYHlcnUVZRuxwW'Buser1379Buser1702Bb'k1AALvuB2siJ27UjjbcN'Bb'tMJMFljtI1TXvuSY9uHv'Bb'o3jdFVI3BucdeluwfPc5'Buser561Buser877Buser195Bb'woMJS2WqGQQv0wclpUbI'Buser585Buser547Buser381Bb'FgsdAkFpFtW1tOCj93ju'Buser1305Bb'pgm2jbrKtgkoetrj8XnG'Buser1137Buser1293Buser1828Buser244Buser867Bb'zi7iR6qWKkke07jnYVfG'Buser548Bb'fGpLOGBbhObn4Wudy5al'Bb'V44KSy9wvOSFU1pwrav3'Bb'M9276PaaAOGNNM15CmKa'Bb'JlfkXgcCXOxT90QMFud4'Buser1485Bb'g76awuqLRXRhAudxeoB8'Buser1759Buser310Buser1726Buser668Bb'hmnMvTpTJUiIjTyY596o'Bb'PmtWCv7VewUxzZikPEIN'Bb'WJdyBzWOb5IQxrlU766L'Bb'MqVuppLFv7AoGFg0MLso'Buser1256Bb'seEe1wmXtrv1FeBPZOPl'Bb'TK7zzqvTfUwecD117Cqw'Buser184Bb'EUJxhuXCpbptk4L7LoOQ'Buser216Buser7Buser955Bb'Ht80DqEMcp1JgHezHA7k'Buser336Bb'SRh9OWBgLGDsW5HC7jtH'Buser39Buser214Buser1032Buser1633Buser278Buser1414Buser250Buser1351Buser898Bb'Lmmr9rlGjMxVN1Sx6GrC'Buser1512Buser894Bb'mgkx3oADA33X7zacWDDX'Buser1249Buser1534Buser1572Bb'73KsmfbidvhIIxNJauuM'Buser1612Bb'9LbVmqi7edArXHeqmKul'Bb'TxYY9b3Bo2WFIAdmLJEi'Buser100Bb'teFYiZcIasHU0AhlzdME'Buser415Buser1532Bb'y9odbIekf13Ji1wUYhy4'Buser1235Bb'BLvR89PW2pBhHf1RS9Tj'Buser1481Bb'XGT2WZCJVTGg8FRffpnQ'Buser164Bb'dQjh9MzGb0lIbBBMqnDt'Bb'U6Imvcnegg7RQlg9bcVQ'Buser1435Bb'KYfRzXwni0BoxcZyZGMN'Bb'CegKopjnAgxXZO1XPzXs'Bb'zNd61QI3O1y4ThmaaAkC'Buser1064Buser71Bb'9hv4jT4BwjoIoaFkTamA'Bb'HUtxFAwTVXYU86O5VdVG'Buser890Buser326Buser1380Bb'erQqFKSChy69DEye6HHe'Buser764Buser3Buser1700Buser542Buser816Bb'4z6cXPEw5XPZRbUY7P1W'Buser729Bb'95xJHGNslrRnJwfoXtNH'Bb'MgYHG4LuMkPtgOHYiiyI'Buser1689Bb'ZaywsC7BsJ5KOxLNolAR'Buser1840Buser481Buser1242Bb'q1IIYbAU6WvvL5JYcwBB'Bb'L4oA8o8qsof5Q6lm6d5Y'Bb'eFrSzLDuaWHgtNaXlilV'Buser363Buser1685Bb'uPv2s3H9qUYZUcILxw4i'Bb'cMa6gmBMivVCt5SZkCSP'Buser1801Buser1070Bb'9ibFEibnT8Kv0oYFhIcH'Buser1519Bb'oCYrsoFdacXyD8gHnBui'Bb'jLundaKR4FYMNCxvQdWy'Buser1813Bb'nePiK0HJhhA7SDYmNq7w'Bb'W76YshDV9oYMPBnN9MCZ'Buser531Bb'0XNbshMCe6JwAKprjAwp'Buser459Buser819Buser1599Buser1031Bb'qn9DpMGoAgdyMAYBvIhd'Bb'rlGyTRiXXEyOj3Mzmsjr'Buser796Buser1223Buser827Bb'otljnj5dEqyBgwdyMwHn'Bb'G8X9bTzU22YGMEPfEEzJ'Buser1074Buser1482Buser149Bb'Y3lcFPrznTq64mbtwzxR'Buser1248Buser785Buser1291Buser5Buser230Bb'jZP16d5jILmaKrz2pwN4'Buser1586Buser1653Buser1296Buser896Bb'iqQpKlvlelTCjurOy3Jc'Buser815Buser888Bb'gTjNKZwxtVXm1nFVp4jy'Buser1659Buser1698Buser82Buser1473Bb'yjahoTU4new8NuJUGvxz'Buser61Buser1596Bb'xZpM2lqVm8lGrrfsLAQH'Buser1713Bb'BbgKB4l2xQW3gzc4GrqZ'Bb'J57rIjmoCSoR1U4zUKvb'Buser599Bb'gg6GcSKYJCAHQdUzHDf2'Bb'VsMi4QXVaQTFCr2nwaJi'Buser104Bb'FpwdXQr93pybzFMrV2Ft'Bb'hexV0PpNDNsYRp94lc7s'Bb'MIJ88gRYvhDLFZLZavn7'Bb'h7sA9xQhAcSsZy62dLtH'Buser1258Bb'sbgf0xjT1dgKo7CFPpRj'Bb'EPiL72IcvTQNX9i2YUWZ'Buser1839Bb'ya0k6A7zcYPFnsR77iYG'Bb'C3Rg2NAliwoscLzynmTK'Buser15Bb'608D1Uxswrj9DRw4rFgK'Buser350Bb'gYX41zAk702tdGlf900P'Buser487Buser1847Buser1554Bb'7z4rSmFJipC9BHQ50hpC'Buser506Buser122Bb'zTjvz1YMRj6YYEDIFDey'Buser448Buser728Bb'nZ8U7qfav7JscLsmemvJ'Buser1386Buser1063Bb'1WoLfW9PNIxXBQBBiCkb'Bb'hgN4HhSyVgQ2vntDFrTb'Buser1730Bb'qbmUtzk3qBVlnicaJRt1'Buser1776Buser232Bb'E3l1TEMZnriX3vUwfN1T'Bb'9Zs1eEHOimd9sNBa8Jpr'Bb'S9ngHlPwdIrvZMheapFB'Buser361Bb'qdP5tFUykF1q5886d3Ia'Buser813Bb'X8rqyGQa5SNEh5o1Z56W'Buser297Bb'guc2xUbtqKJ2vwSQg3HS'Buser1251Buser909Bb'2Ukf7N0sYO6qTYHnbxBB'Bb'ICQeo4iT3N4ZCDiCwZSE'Buser1408Buser828Buser1618Buser41Buser252Buser1814Buser1245Buser739Buser397Bb'Z6lXCcc39kb2I3tx3UHy'Buser673Bb'g4rzq03ktHl7wu6oppR1'Bb'0axARRr9J3WwwDmXJ5Sw'Bb'pEsyNV14k9PBkFOa6Wpa'Buser1455Buser783Buser1665Buser946Buser692Buser1042Buser1309Buser655Buser884Buser456Buser362Buser865Bb'YGtGGUYyEPUKOsMQz3ql'Bb'RnmEnqcXuaQ9pM0ywPCH'Bb'Tc4eT8psITBoPBYEzRlX'Buser642Buser32Buser373Bb'tIIK5DgB5sEtxnu22N2i'Bb'j4voqyG4JDj7Zv7MbqEL'Buser257Buser777Buser145Buser1381Buser1294Bb'wot9nFl8dq4D8LPGkH17'Bb'N3HwbYSRU5Pkn2w6sk0D'Buser498Bb'DWR1f4vuN83di0ApWQbP'Bb'oube7OTbtrA662EjctxE'Bb'1T0YlJd90MIV6erp7GKS'Bb'ArQQMNrNv6DTe1Bg9DwC'Buser1072Buser77Buser823Bb'HiNtShPU06DprCiag7q1'Buser1312Buser1504Buser1103Buser328Bb'HcBRTPbTkhmMKzHzz4cZ'Bb'80EYNfDcK3bS3t6Rw3lY'Bb'DiHbdJXjnXtKCHy62PID'Bb'6m3s6v5Nx9633zbPYiHo'Buser452Bb'eLYVIiICGS7BwRzzF0n6'Buser497Buser1575Buser1356Bb'U3kXS8pJzxqcp0Ystiwp'Buser1376Bb'vSYjcN9fmrOl0NeQE2md'Buser158Bb'qyu8Yi8XS8oJzi6thXWw'Buser913Buser1846Buser194Buser809Buser1253Buser384Buser21Bb'tbrys1cMsq4gaeezZgA3'Bb'4aUYkNRFhX6fmY89QptV'Buser499Buser1100Buser1271Bb'ilwvDNQTq44kMXcv50AQ'Buser1045Buser1266Buser1597Buser556Buser245Buser1234Buser521Buser574Bb'Z5Hmmzf5beMDDX5hdJSz'Buser1778Buser1014Bb'j4s5yN78C0qLSrwaRoX5'Buser536Buser1366Bb'xLcBD2wgeTyKaiv4pKn8'Buser313Buser1673Bb'RMEsiCI6KfmLK7wKss4i'Bb'T01uDFeuj1MM7iL9q0j5'Buser1011Bb'f7fD97msDEJiotZnSeSL'Bb'XdJOw1RAR7BMGLwNYX9D'Buser662Bb't5bb75RdgtBnY1CUnmAr'Buser1602Buser154Bb'rnQxZQvXuRMx0qHeeFkv'Buser674Buser31Bb'CuJB87E9nOCxqFGFX7zo'Buser329Buser217Buser1621Buser1058Buser424Bb'R5gQCN7UF1y4407YRn6W'Buser1361Buser238Bb'fVzSwq5iEegmDX046HJe'Buser1743Bb'AQeRpX8m3fpd4JaO2CSN'Buser1119Bb'Qgx6kOTrT9Yp9lQPo9y3'Bb'yRpPGCM41QdlhDgC2Vs3'Bb'fURSNDeuakN5CH7vBC2L'Buser1691Buser1426Buser910Bb'dfdbynPVoniCuvjfYldG'Buser957Buser1833Buser997Buser1325Buser416Bb'4CO4YyTZmpa754cDFcBu'Buser876Buser1261Buser476Buser1489Bb'B11CDcSGTV2NKUTAS3S1'Buser620Buser9Bb'4HRpyEuL8PdXyUxGiDV4'Bb'q1bK4xaK3fuGgCoZVXMF'Bb'SDgGH9SYXV4hC9TX8UNY'Buser1483Buser1580Buser29Buser479Bb'RJaB5AipjjCGPUK4Oqmb'Bb'Ag03hhcM3RCCVLf5je1B'Bb'VVXqcHaJ0qnft3fBueRQ'Buser645Bb'16s2D20fdEi1TIa4hHh4'Bb'dKEgTcXhJwy1stNUxoCH'Buser715Bb'Gz4mg1Wd7CJ74gJXwhVK'Buser1010Bb'tsMPdNGd1642x7RoJQhi'Bb'ns2hVpEzFumcYa1nuoSC'Buser223Buser488Buser458Bb'bdbM37BaefdmmMG149OT'Buser1268Buser376Buser1121Buser704Buser270Buser1131Bb'ewyFzfkVz6SG21YrnKal'Bb'5djSUiUbb5FSy6beDidv'Buser584Buser406Buser1725Buser742Bb'wBhLWyK5h6nbGwHXauFQ'Bb'ESwKvhFhwZyPoySKvtyl'Buser569Buser301Bb'Vcn7c6bW6yQ8gLVtNSQu'Buser208Buser512Bb'u6LJbaNizWdvPNaacXKJ'Bb'lgyLsGctbLJaSYGrnn1i'Buser1007Buser710Buser466Buser746Bb'GqC4BVv7SbE7D8oiF1vl'Buser641Buser69Buser246Buser1093Buser879Buser144Buser319Buser712Buser1820Bb'QLpFJpiv37wSDJqpJN6a'Buser951Buser372Buser1569Buser869Buser1634Buser968Buser462Bb'CId5wDBs1vtHUkpNql0v'Buser126Buser1113Buser79Buser821Buser1383Buser676Buser1203Buser1179Bb'Pd0a0qzQrMkm5wQbra22'Buser1447Buser1280Bb'TD8zW9sMDU11wppj7ew4'Buser1424Buser1433Buser486Bb'DDNVSe6V8qjA0UsEdtgM'Buser1717Bb'fyDRgQVJThoNql6gB0E3'Buser1697Bb'dny4r0JJzcFkTbQqaL2P'Buser1091Buser1573Buser1430Buser1524Buser614Bb'P261YxqxfIg4gN3n6BIu'Buser1333Buser882Bb'OuvF97Crn2JknPG1WJPp'Buser517Bb'3964iHGMFRJhrdmyLvzX'Buser188Bb'6Ir0Azl0CRqWJVOAvUvV'Buser591Buser445Buser594Bb'oxQQMcYFwDvU5OfTlw89'Buser1750Buser682Bb'7McjrEZajCKwpux8Hvor'Bb'maHScFE4QO5yRlAweSnP'Bb'85tzN8VaUZXYs6MmIVZ0'Buser711Bb'cfxTfGKbCoVDT39NGwo8'Bb'm8thJymoj6RY9wje16vZ'Buser575Buser863Buser348Buser930Bb'Aa9NIPCUqQpfPgwMNMHU'Bb'UoVDyZsUgcg0nr8QPzYt'Bb'FDWpB5EZ8Ir8dcciACJA'Bb'vbXaV4eHRUWbxHx5k2Yc'Buser1593Buser1567Buser465Buser912Buser1162Bb'mSFlD6PRZH3rJDsdI8Xy'Buser378Buser1561Buser918Buser1146Buser1340Bb'6G4yT3CEF6emqVmC1Q5m'Buser1173Bb'vEEVcqfrNxviVeMQhN88'Bb'MD9EPlyStvR2uI1TCThM'Buser925Buser1781Buser354Buser28Bb'zHFXK2NUziHET9cQQAXO'Buser263Bb'Ycs27msj0epSYvtnMam2'Buser1088Buser233Buser678Bb'6l2WU88f7muEX7p776IF'Buser751Buser277Bb'TaajjCoI7W2VJ4WxXUfA'Buser308Bb'dU4hyOLr6MaSoBL0t9BE'Bb'Lpps99uvcZh5qMSO6QJX'Buser1076Buser967Buser1018Buser928Bb'scq8M5zy5zVaHhYFrIp3'Bb'4Y98PTcDFQMKibYX8B8b'Buser1416Buser1111Buser699Bb'qS9nMUlrctHRVrLk127B'Buser1240Buser1611Buser1344Bb'DvRt9j8rhHKlKNfoDAzh'Buser932Bb'9Uuig8LtOyqUp9hBwa47'Buser603Bb'PbLpD4OwLNuLMsUk98wj'Buser810Buser908Buser625Buser1265Bb'rODEJLH0apTEWy58UMqX'Bb'txkQdM925LbkDBHxFVND'Bb'23wn2Zh6yCAhfoXq6T8D'Buser1167Buser1209Buser1365Bb'mHe1LBhGBgBlx44dPykM'Buser281Bb'cI14PvR8goIsd5ZX1WdK'Buser279Buser610Buser659Buser1314Bb'fhHKHfHNC06P1ehFVFq9'Bb'OuwQJS0RdXYTiB06oR89'Buser835Buser1674Bb'Nk5BKSymnar1D0DHxY1i'Buser919Buser757Buser720Buser1712Buser924Bb'1FzYDA8c4kPQeCdTp0jt'Buser598Buser748Buser1843Bb'Lvxt3Ve0z3fXotbDZm3U'Buser1451Bb'yrFlxH7So8dV4df9Rt6Y'Buser1496Buser272Bb'kOZPfWExT9pOriYtw6Dj'Bb'OIWBBcaAWSkUkjgbo4TR'Bb'HQdzxM0sYaVr61sz5wJf'Buser1211Bb'VBfewxu9vXoCmiIqnyhI'Bb'ASvPZRz6wSjRatBYJQo5'Buser377Buser1150Bb'yU2lc3spNIW2e1osGScU'Bb'MRWl97SSxGQxFgOsfhef'Bb'xS2iowWfXqJ7bo4pvbXS'Bb'dKp84SzQx9mC1OH8lRzX'Buser1075Buser370Buser471Bb'dlhNSE7N7wtret3KS4y1'Buser900Buser1495Bb'HlohXNqC1PeyDuY7D7mQ'Buser495Bb'nSbxbvfv1Vfg0mlLFDtv'Buser754Bb'4JKN6iybZOZJqe7iwy3d'Buser563Buser760Bb'PvR5dAKt0fEGPijAJ2vr'Buser707Buser1456Bb'EdAbFhp7qmoKmH9pIdAD'Buser1521Buser525Buser367Bb'QnZAcNTtCbujTYXFzSzH'Buser477Buser1770Buser744Buser698Buser117Buser1471Buser844Bb'fXkLsNYAZVsncOmStR8l'Bb'OGxpSoNjwQy5aCHDLS4l'Bb'haP04s6WS4fD8Z1qSCcJ'Buser522Buser1397Buser1631Buser327Bb'ViKMJSIE6p38XnvWQFZL'Buser670Buser516Buser1330Buser628Buser1083Bb'vXGyfIZPF0sbsrc1RGRD'Buser1827Buser285Buser1464Buser1313Buser418Buser1345Bb'iQ5glrRkMOq2LGirKEsk'Buser593Buser349Buser1600Bb'N7t346vKaCQ6BGtHcWk7'Bb'VgOfjVsRIvWLGtMNfXlF'Bb'GvqDITqt1GeynZu5YL69'Bb'IXutRNOsrPsEEqcF04DC'Buser1440Buser1540Buser160Buser209Buser1375Bb'BnIB1v4S3IjOomuLqeTa'Buser1371Buser541Buser1341Buser1319Buser1768Buser1756Buser292Bb'UnuQmc9AJBwrhfMNlVb1'Buser1227Bb'2elTqVq7xkOyVIQRdaFq'Bb'7LHR2xG9mnlv0WFXLR1g'Buser804Buser1508Buser450Bb'ArZezECNHPISBQ1bPa2r'Buser119Bb'm1rcLN3kXwtmJCfWfl3z'Bb'4XucCPbsEv7wpA7OuSsw'Bb'vwaEDGU6ulo5RTJW1JWa'Buser1687Bb'8FQA0OjP2E3womz1UQVm'Buser897Buser355Buser1406Buser1191Bb'wU6ACYZdcrXoluBcwntW'Buser1013Bb'LDwJVLnh6VS1MQKqOdZV'Buser150Buser1431Buser1772Buser1625Bb'unmOA4tJk8aKwC8B5uCh'Buser1492Bb'uMytF9uOYjeklaSmFcxm'Bb'KXkxkcDNNXnNYguiBwz0'Bb'lAr4cCrBOcE0CZW3hzuh'Bb'1DXjccTpCvq65xTIOTHn'Bb'frT8kyPupKub2jEPlzHB'Buser1683Bb'yJIv248KMDAokusNF3mv'Bb'3aMnmsoB7W9tuORmvj0I'Buser1543Buser581Buser174Bb'9HEq7Yac2xUmAGRhSaxQ'Buser84Buser635Buser573Buser455Buser825Buser811Bb'1hsyohz0i37hinx6KX8x'Buser511Buser1304Buser1662Bb'15XW2AyAPZ2DxhJTwdF4'Buser696Buser1468Buser1292Buser549Bb'4fDRVehTCUB7I7QL7Dbi'Buser1764Bb'2ZHuseaEOTpPD8FpRnUq'Buser1834Buser485Bb'YAYO7rJLvHjEsH8tg7av'Buser971Buser391Buser1053Buser276Buser1199Buser1615Buser677Buser1043Bb'mxob9X0pRpxtxlOQqRK2'Buser116Buser1255Bb'fWKdnQiWvPehTIJHWs4L'Buser808Bb'zb7sEUB7l63KGHEJnEID'Buser1378Buser519Buser1587Bb'I17Vi5MssY5Kb0cppdFX'Bb'fEhxATjSPGw01IFrMdpr'Buser1693Buser840Bb'8v41AMfE70VbAvl8reo4'Bb'5B4HsHoJX7VeYerzNsSE'Bb'2IFW1jfuuqk2KkpnTfsJ'Bb'O99zJkyY8cbMLgmaOC7m'Bb'E9ApUjv1ZZwW7Fop4xyH'Buser1358Buser183Buser305Buser1244Buser1626Buser568Buser1022Buser411Buser1116Buser579Buser12Bb'KZDK1dzv156luC2MaD4C'Bb'gTteH6oKrvtr8Uj9WQWy'Bb'VzHb3Du5kIAU1EmmiYn8'Buser523Bb'ksXLMEIoH7JGPLGNI7OD'Bb'Bf77926NGtGl8xbaktpn'Bb'PYWXVeGkS10JvlnXxCMN'Bb'10bSagP3D1QQbITjJTGl'Buser1362Buser1677Buser663Buser1682Buser16Bb'l1XsnctfhQXvImlRTCsu'Buser42Buser1668Buser141Buser258Buser291Bb'8jXOHkOyDbVe6RXiPzH9'Bb'MFfvpvthmgnDHG0foalH'Buser1207Buser923Buser1775Bb'9sDuY67jUl3EaL1mAMwX'Bb'ezBzOunxyJB3kDwC8DTo'Buser315Buser1739Buser1128Buser1850Buser651Bb'u4TpSuaXKeZBomUKo7um'Buser873Bb'6Oy88yCFcWbPQYjLN0as'Buser1228Buser852Buser1236Buser331Bb'CWGElGpDkksZ17JU9VTy'Buser202Bb'0TEThHXpbCOladIAZP5h'Buser793Buser17Buser841Buser253Buser788Bb'SUsXJxvKS97zYIAq5sma'Buser1488Buser1493Buser1254Buser1000Buser685Bb'h8NsM4Eq55nnXXUdicGB'Bb'VYJQ3FDshTYXr5GuqxQ6'Buser379Bb'gHGg6trHtgsYjKIRTAje'Buser1584Buser791Bb'8NdW480au3dBA9jpqfmb'Buser1458Buser337Bb'4zBmxy1Bardt4Lm1cHVB'Buser616Buser917Bb'0ERky9bV1ebmj51NjbpP'Bb'RhB6LTA0wuj1GlWdarRl'Bb'YU4OKRTHGbTJwRBhNkon'Bb'kvbVdF6KzLTzU0o0DArV'Bb'4rrt10EDZf9kZPc8kd2W'Bb'NTplukfa2ScIoKTUVnIH'Bb'RARvnfFYOOtOVhJRanFG'Buser1112Buser1138Buser790Buser1110Buser732Buser1510Buser1810Buser1210Buser1021Buser905Buser62Bb'8lj1u7A8PGbBFXmBcJKI'Buser1457Buser1723Buser44Buser756Buser763Bb'8h57hmqYVE5qpr56XJXX'Buser54Buser1368Bb'3ug2Yxmzh8SZs2i5up8p'Buser1817Buser296Buser1646Bb'yB5AAuuigEPv5ZOFmms1'Bb'GDQ6JADSpzqhMmUVtyp9'Bb'ijnebie3bhoK8GDUkOZR'Buser814Buser999Buser302Buser1535Buser1548Bb'yFlHY06C05UPAuF3n9UW'Buser631Buser601Bb'VloYYYPSuj4zuCdlZMcE'Bb'9XKuNiUcOzpQhBwoxazZ'Buser885Bb'LW0CeXj7TIovm45EZi7O'Bb'cLgizS49ZrJrRLx0sgPm'Buser652Bb'Z9z59uPnR6W1ciGTwnm4'Buser435Buser1004Buser694Buser1400Bb'ram0kSc45gREmMdy00CC'Buser812Buser1477Bb'faPRLGuAQjn94WxPlWZM'Buser298Bb'zQcweAkFS0PeFzQvq2ZD'Bb'SEgb4UjOIB209hSgKtv9'Bb'gUqJ7bZzEkS4qCix4Nyg'Bb'9AYxcVRRsZ0IaTkjO995'Bb'Eh7qDbuelVW1qJ2728hk'Bb'68xnLnbG6JSbD3T9IOq7'Buser806Bb'UbXjYosNkkerwrLyvoES'Bb'llGOnXOYiX9eRvkShaCL'Bb'y5QA2tdHAfBRmjsYmUK4'Buser1592Buser1224Bb'T8YyKmGbopnu9rzHeJJl'Bb'ZL9oN1xE7txkMlbSa3MH'Buser1036Buser1328Bb'ZlD1nixahu0tqSVUatM9'Bb'4wI6F3nw8aYl5GAHO5V9'Bb'pk6uyfDwiz8WD5OWykfs'Bb'LwF0okz62JfDvAPvDA47'Bb'wTsSwn8e9N18QDNcKbTc'Bb'Zyi1a8SPkBUU1aquDY7Y'Bb'fqhbGnpfpVg97iebSQmO'Bb'MJRUHoJgtzuQfj9MjbgY'Bb'ig9HYnHDXQEIGT1K98no'Bb'DGNZqlICiMjPeBG28MC9'Buser1260Buser724Buser1836Bb'a0xUmsa9jhUh6G3ZAKvm'Buser1246Buser1140Buser74Buser562Bb'pb7g2FgnMb5iwe51Lqcb'Buser1217Buser975Bb'S1DDPVDRCaSZXA22uNiO'Buser30Buser632Buser1410Buser787Buser193Buser1308Bb'3gHTueUQeimETMFqddfn'Bb'4Qqg0liDCzRAnccRW98u'Buser1795Bb'8maS79pXhH8yfebrjZFM'Buser1015Bb'9ljWKKsbO1foimDUibTb'Buser798Buser958Buser943Buser831Buser1329Buser161Buser1041Buser555Bb'Yg9AYe3BxNm7GT7Tkx6M'Buser1773Buser40Bb'q8gqDd9OpFBluhU5jgM0'Buser475Bb'Vr1S3YpUKowyLXDvEvBI'Buser225Bb'nrmDXJeVGgwEmnGlQZHp'Buser192Buser1564Bb'Uy7yLk7NVREF70iZf7tb'Buser1302Buser577Buser6Bb'56rCQByvTtJUknz4Rmkk'Bb's7G7KCOmRyqKnkOUtFl2'Buser393Buser1159Buser389Buser611Buser1003Buser1644Buser1177Buser1350Buser948Buser440Bb'BVn4QQvSqAhM5tkQUVzg'Buser234Bb'kaKF56IiutFWZpzsSyDW'Bb'lVAu9g2CPSDRvyXurzWX'Buser1749Bb'OFjOo0RDPldsYe7d2AZC'Bb'IMlgQuXPTGkqFonh4xKP'Buser1403Buser1071Buser400Buser1734Buser1603Bb'6fyxa6wx5WeDsNoxavQ1'Bb'Qb5Bq4kTNygqAkMbM1xc'Buser434Buser996Buser687Buser57Bb'FIRj3vqGKUPHGPGTFlv9'Buser666Buser1446Buser949Buser124Bb'tkfNRCYDBzZVXKLrYAXF'Buser705Bb'LR6UdjXZuoJY5sDskPrv'Buser1748Bb'pmbfNwKMWlP50Cdq4tKR'Buser242Buser451Buser201Buser976Bb'eCcyrKgkb1h5WOuj0m0a'Buser988Buser444Buser935Buser1033Bb'XG8x29QUNS29LXl2cG92'Buser249Buser860Buser1027Buser1552Buser671Buser1153Buser1509Buser776Bb'oZGRDUGH50uJ9LOYRcFb'Bb'vadVePieuR5BbbQm4cv0'Buser1722Buser856Buser120Bb'A13VIMrBLN3bRPHeBviO'Bb'LzCQjpLc6MdXcyLXmi79'Bb'fMDpa0Q83Dy0aC5xht8F'Buser1077Buser669Bb'aGuZKLOItuxKtcVeuxqL'Bb'dioxHvayYTML7huOQ5V9'Bb'y7WzMsNOqqMZVjkAwnKE'Bb'WqHuJnALpsjW20yFgrTo'Buser1613Buser1617Buser1517Buser657Buser2Buser121Buser1491Buser697Buser1109Bb'SzUyAaPCSgndO9kwWAr6'Buser1057Buser441Buser679Buser1422Buser1257Bb'T3QLf1HqKrIC3gSAazba'Buser950Buser1170Buser33Bb'u8q9L2NfGlO2oOj4KHuO'Bb'WXeQe0KVGG8spSwO3IMs'Buser916Bb'7yfsA9taDJ7DqPU9BBES'Buser1462Buser1755Bb'e7JSUIIFDRVLTruiaB9C'Buser702Buser1498Buser1837Buser881Buser1619Buser524Buser805Buser1285Buser11Buser586Bb'WY4PbWihSoxE85sqcKRX'Buser176Buser423Bb'ZTTLmeuql4J4pOrvVmJp'Buser318Buser937Buser1787Bb'gH9ORtr2oM30qvgRGFD3'Buser1321Bb'zm2vMp4l378dbe78817m'Buser222Bb'Y0omfBHn4OSDIY0Lsfs7'Buser1774Buser689Bb'0czBtCQRPMV0Ys5yeuiI'Buser836Bb'FJzE4bCwcoW9XYR2Tqtg'Buser409Bb'7qS4x0HTYQmMz7UOX8KQ'Bb'RTALWr7pM5PpzZQZSZan'Bb'MosBK8OQhIbLSrsQIX0u'Buser59Bb'LnbpdsDxBR3jRSXw6EhC'Bb'PdIuruLvB3mJfAroIoXe'Bb'sns7P6mNfsczZCsIE4vg'Buser1336Bb'OhBPuLZKYdgcD9EeGmch'Bb'WKRs5TbYpqJafj6T97Wx'Buser786Buser136Bb'Bqx0q32eAF1zcFMsxiob'Bb'5hfMRsEc4FqhQIvXlrO4'Bb'uBQUIdfdX4EfPzKi8oab'Bb'3XPoRAihDrv1CzhJFdJw'Buser1094Buser1656Buser360Buser838Bb'9401GAT534Wj6aGcU9Y1'Buser1120Buser1343Buser701Buser1176Buser68Buser163Buser1160Bb'cRcy3hHEMhHiBAJNhWIX'Buser1655Bb'WJGi5OxYk8R3G6HWLjsV'Bb'wuEmNdCo8yRkGTTYuEJS'Bb'qX6MNd4aQ05tmKwK9wkl'Bb'3chGgwOMcbTTlgQxQyZ5'Bb'wnatOji3NUycQXnseY5I'Buser1470Bb'nbLEe1gdgwiWec6bKfLW'Buser63Buser1056Bb'r8AsdU5HYBB9NP1yCqGB'Buser1230Buser795Buser1487Buser597Buser248Bb'hEErTM63sN48T11fE74S'Buser1171Buser1068Buser1571Bb'heMhfmMdTWLEBDYdOD3D'Buser1465Bb'QzW14ihVjO13BEqBg5SF'Buser1052Buser1630Buser1763Buser505Bb'ZfzNtIUnqCxhZevGyFBi'Bb'oQ5UpiPydbMhRP3X1DYM'Bb'JOZSkWo1KtxjWoPJOuoS'Buser847Bb'dVZVWTPzhRVKdvzsKqrX'Bb'Au1HAwxyQ2u819364lIg'Bb'Myjrl2N3UzVlZdXdZVJY'Buser1233Buser989Bb'ciSlPYlCNJgt635rK5NH'Bb'm4i9SuJ3MIPrC4yAbbbV'Bb'i7NWrTV3VvharzUjNLdG'Bb'qCmFPlrynKiHTictTArz'Bb'4myRzz6g3IrOILcAlmkk'Bb'OSW8D1JONx6LNgrmV7p8'Buser1012Bb'RSoAFDarIQdjs8Rp4tOY'Bb'DZgPekyth3EsKDmTxMzT'Buser1632Buser1243Buser1527Bb'hLEre4f7ktaPqKdDV8Zx'Buser37Buser627Buser1658Bb'2e2qNIdQPaj063ajuRDv'Buser1523Buser1373Bb'dLF8Vx6oMMoUxDMV9mrJ'Buser1757Buser1195Bb'phrzCg0iLkUq3sepukbS'Bb'mguY4KqBDrDsnkYB9csD'Bb'4tnI1cAS0H2lY3ETyrUf'Buser643Bb'ZP8XM637FYw3XJOik8OB'Bb'WmedgeuLcsTWBfxzUxa1'Buser65Bb'jQp632R28Mkd56tVjNAT'Buser686Buser690Buser868Bb'SWIPeAM0ffHXVZEl3t7o'Bb'4P83d595JnMj2o3LZyN0'Bb'dxJSbwcGnSJwWaauUNiS'Buser1157Buser50Buser995Buser503Buser619Buser1401Bb'JLTBFo4zSCjMUP71oD45'Buser578Buser123Bb'1FnIdYPra6lW2BHPwfVE'Buser571Buser1276Buser1559Buser1598Bb'fjAs5o5hvciHZQsrt5pp'Bb'HNLt5YUNc0INpCog4cXF'Bb'UpB6dv5iJ7kkjFbLZV94'Buser664Bb'Q8TJYL8Jy4JkLStuncQ6'Buser288Buser892Bb'kyaBMT7yBI8W494rcMwR'Buser438Bb'uza5KJOkR9ftpJhI1uHD'Bb'I4Yc5Ztur3UNwY5SdvDh'Bb'L6ifn1lUFAgMcKSS5ttK'Bb'dh5A3oKrAmyxzfx7MJXq'Bb'YhBeXlABj7UVM3fyaVla'Buser307Buser1703Buser265Bb'30l1rbKZ17DL6K4OYsy5'Bb'Ng3LZGEqLGGoaS0R5ov1'Bb'B5r00mTHqxNA8EXsQFtz'Buser974Buser437Buser1204Buser714Buser538Buser1180Buser621Bb'wCLIwGjsFJZbk5BxyLB8'Buser859Bb'T5daqBbPABArIcejvB6e'Bb'wnI3zL7zbSKWu6sVg27K'Buser429Buser933Bb'OPfA2UbeYBRlf9MT45u6'Buser558Buser1648Buser864Buser402Buser1172Bb'JOcXt8Hgk371Er516Cek'Buser134Buser316Buser954Buser1528Buser1826Buser421Buser1558Buser125Buser883Buser684Buser1499Bb'AE19Jx74PT4OnEozES19'Buser560Buser874Bb'WtlzVPpTtuKW2gL1i0AW'Buser1226Buser1594Buser353Buser1432Buser518Buser199Bb'sIQD4Thjxx0lmaAWcOAr'Bb'zkk2lDnSHQCnwAV1SYl2'Bb'NO0xlXWPTChJ85jFMQsQ'Buser1388Buser1050Buser862Buser1791Buser1812Bb'd0YRu8U4wD7YoYbOq6pg'Bb'YLlYHvyC6g8v8iSXeKHQ'Buser1686Buser1163Bb'lFTePdR1YtyHRZ21KCcj'Buser1151Bb'X5NAcd20UYGnBSqaxJbV'Buser1711Buser636Buser261Bb'XtwE0afbKhv3kzZBD64i'Buser341Bb'cdDgf332hm1AjueOpYGy'Buser85Bb'opglSzc4EvMSvkjoZMSb'Buser1636Bb'ml20FnoFNRd97nKY2Wdp'Buser1360Buser1568Bb'cSFOzaG9f24FzC6ONuA1'Bb't0VpaFLSEjfIxZbHUs1q'Bb'ZKzVRsiHCsvc5Vzcp1Gl'Bb'YtDtMAnPKrUqE9CtDL4D'Buser1848Bb'PXx4VaNROqkoUHvPr6FF'Buser1609Buser280Buser1576Buser388Bb'G4pJrJepICRtbxwEGtFX'Bb'Y6L1wsnV7zIb4qcViimi'Bb'NPtzTpE6Np5axNOGsYIp'Bb'WUobsIkue0doyvHysZ4y'Bb'FDo022Ah4km1bIrMcrZT'Bb'iA3OTsYW5bwaTeMOnVOs'Bb'TCgjsE2kuae4Rl6oD4RN'Buser848Bb'vHUPGeTa8mJnayctHLdy'Bb'vw7PeBIRLNxTVW1GHToB'Buser1769Bb'XCl64toh2l0hpzeSOMlz'Buser1300Buser981Bb'tc5R6fWvX7CYcSfH2vsb'Buser1152Bb'RGIRTYppqNwlgM7GRUcD'Bb'PsjPpIQKyUG2hIDa1I0c'Buser311Bb'rNd4NGLkOsIS7tCJssvr'Buser322Buser1583Buser939Buser826Bb'BUZWnUg2ClLWXvS2Gl9J'Buser66Buser390Bb'sc8skJvJouNgaylQQPVh'Bb'ZqTMNXzlmKhqCz13cHKU'Buser1161Buser86Bb'I4U77yby4NvyjkezllE9'Buser439Buser903Buser660Bb'IdqG56kLZWj6Y4frkO8T'Buser1225Buser118Buser1413Bb'HJF8Jn3i9pImAMcjFj12'Buser1200Buser236Buser1624Bb'mWGrav8xLV61hJx3Kfql'Buser1327Buser347Bb'9PY5vy05d70YLBGVYFQ6'Bb'gtxgGhPiEa4hOxiA61mG'Bb'iKcfgUo9lfxpVlsQGhI3'Buser1815Bb'IVBXYGv6LLIgtc5ZvSxs'Buser1259Bb'R6sKPdIiEVfWzJIuouXA'Buser289Bb'uNd8I9p2h6flPDFefGTy'Buser1197Buser938Buser70Buser613Buser1845Bb'FsEbhFlpJ1FXWYNcmeBE'Buser417Bb'MjWQpDfZGdrNZpLhSaWs'Buser1370Buser1779Bb'sROjaaoSzoZWvryXAXWe'Bb'7CLfRSLd7xIpBB97EMFs'Buser1605Bb'8y7EfcOevMteK4CGJZ4F'Bb'Gvb89yyfUjXUORJVPdff'Bb'YxRNxS0U4W0zXEP6gbTF'Buser1831Buser283Buser1297Buser502Buser1629Buser767Bb'cTK1TD02CpDw3Xhd70My'Buser752Bb'TeOSpslNt01M9tlZoVR7'Bb'MjUp7ki2LNj1486kYxiK'Buser364Bb'W56VejLAnk359ctZ9LI1'Bb'E49SlGJyuH0F8MSYKGBA'Buser1591Buser1803Bb'l7oS5emh4V50kVXpygWT'Buser1156Buser1547Bb'R8csK84EFj8ZBUqPFgXy'Bb'EnbvpUA9JgXs0YewYo6q'Buser526Buser654Bb'H28iMnzCJmfQffESPS56'Bb'fqmejvmcDiiIRqVqMSh4'Buser1020Bb'k8Sz7LrmdF94PbZXFMdP'Buser1710Bb'fu852nDCyRHXylE85C0D'Buser1185Bb'rS3e98JFWpUKHA779EdG'Buser993Buser422Buser428Buser1606Buser703Buser404Buser228Buser887Buser1443Buser1688Buser1428Bb'grpumMq4LcQB0Zb4ikfv'Bb'g3vvJ46GMEAselTYpiwM'Buser34Buser990Buser89Buser822Buser153Bb'KamujCJt7h2XNTy3TyfU'Bb'R3xCxncD83H9p892dKvO'Buser446Buser1339Buser718Buser309Buser55Buser1732Buser595Bb'JT0XEwSAXFPqCX8nunbW'Buser1419Buser1704Buser345Buser1735Bb'3nS3An8vKIfGYeDqt4Tl'Buser700Buser1417Buser46Buser14Bb'37WnhXJ3kTbyEzyLhKp7'Bb'VLmF27fVBj8lOzbFJEA0'Buser138Bb'1If0t9hEjpxBXVp1an2h'Buser944Buser1562Buser112Buser1108Bb'm17VkptDdtxSDJ6FLbB3'Buser321Bb'6vSVk0cr0znBeUHwedlx'Buser1288Bb'nGWFjP2dpf6WZRALhiCI'Bb'MXxHUSTyBa6UcKRhDyOl'Buser1412Buser1016Bb'jvdk8EhQ3WcTKIcvwMPd'Buser1169Bb'N7WMfmkIpcOc7rSIGd7X'Bb'okBySltbENeDuSzIugmT'Buser871Buser130Bb'ClMkdbnh1gH77CytljLU'Buser1679Buser726Bb'zwfKFXwUsYXyg6Aduhtm'Bb'3pCNsjOjSNXTYc7kD9Pp'Bb'peZifBq5hzo9AlLJPWTB'Bb'PFFM3KyIBSnZ7IH8ujeC'Buser132Buser1553Bb'WGFVSOitx1xP45FAfSRr'Bb'PkzzdOjhQdKCDcKsnGso'Buser1054Bb'8K3jGpKLXIvHIsbKoLVW'Buser1382Bb'K3vNoJquH56s7SEbTlzh'Bb'dkBMyjLP6lujzKSSdecW'Buser18Buser275Bb'yPgTaHqQtFMalWX65LTX'Buser334Buser1316Bb'm96C7G2xY9cngyh11Yd8'Bb'vkfJjRyO824KsroyMkLC'Buser1640Buser588Bb'RjZn2kgYwsu1CAJJEDfg'Bb'Jd6W4aIXtKrMcL3YfK9Z'Buser839Buser769Buser1467Buser383Bb'WxfiN1xkQXqizclIS8Kh'Buser1731Buser1577Buser1623Bb'u3vtcTMrfWLIpW0P2LDS'Bb'u8YPxHoD04Jo256MxJSz'Bb'YCRqOjGoHRpZO4zazuvp'Bb'6QrSbLRSApPxNu8zashj'Buser1627Buser166Buser413Buser906Buser237Buser1155Buser395Buser1122Bb'inGx7bM8rzxIcS7vpQiG'Buser156Bb'6YQ37eDUvsozvLVIHRxu'Buser942Buser442Bb'QAkKQE3ravMR6wwtPSBe'Buser401Buser1622Bb'vOgiNdLnz9ezvJKIQPMB'Bb'urFyZrlHXF9Drp1Ax8Oz'Buser128Bb'B14Oh9XvvhfwGKN0mT7o'Buser137Buser1754Bb'4e0ibJCYKNOtMMn89b2y'Bb'1sff7GZusFzDs61uLkVw'Buser1332Buser191Bb'rMpym7He682h9ZJjjBJL'Bb'SZPa1iBQXoXcnpM47Hbh'Bb'n9fQollU7fcZVOpEJjSc'Bb'TqSwqqAK5SsR5DMbYRNa'Bb'g3yb17Yfyi7Y0DmQV0vL'Buser1130Buser630Buser284Buser959Buser1095Bb'WJSxUknO0qdLiDJT4PFB'Buser1556Buser472Bb'XXKBOQSGT4FGQMKnXEEx'Buser1525Buser956Buser1695Buser1650Buser1267Buser220Buser872Buser544Buser1363Buser580Buser1273Buser1084Bb'5eijVCTAVu59zVGOFthH'Buser646Bb'9wyK8kbsbf2A2MObRUmX'Buser540Buser922Buser1387Buser1247Buser717Buser98Bb'QRU3fYKu2JL36gDByNMC'Buser656Buser365Bb'MDFRSc76LZgZcqOdVUcY'Bb'LOQ4XKTEuA6MBW88Ow3o'Buser368Buser344Buser875Bb'Q2RUWESnFVw0ZKNSMRGA'Buser1675Buser899Buser111Bb'rZK3DRxhGd7YpMumSk0N'Buser468Buser509Buser695Buser895Bb'cGad9g8If6Gks9j0IrCa'Buser114Buser1448Buser1024Buser564Bb'F8LFfTNPho41Natt0LM5'Buser633Buser973Buser76Buser1322Bb'YoSsCqgE7Dr9wmBXRA1Y'Buser629Buser1579Buser408Buser49Buser460Buser947Buser229Buser1830Buser1542Buser198Bb'Y09O7rykCFGqbsW2WGFm'Buser1Bb'aNEpAYknmc0IaIa7u9WL'Bb'iGCqEnyTndDGu5llVJVu'Bb'fzoeUzwKtgDfr9OUCQZd'Buser1544Buser528Buser332Buser227Buser551Buser911Buser1589Buser1696Buser658Bb'GigVlEDjMA2ytIRF6N20'Buser507Buser215Buser290Bb'vTGOALsFtBxkqaO35r6L'Buser1753Buser1454Buser602Buser1771Buser205Bb'cKEmn4Pzu54IOfoLXXBX'Buser1608Buser745Bb'WOXSzb1p1jqDDAzuyNAV'Buser1421Buser1040Bb'Kfan2cLxRNfR99rn3DFP'Bb'1QrtadhVKVV1PjUPlpH4'Buser210Bb'9oUzWQCVO2FQ73WypEyo'Buser527Bb'I3d5wa00tazTYJQGkPNN'Bb'ZnDEeSyLqIO50bMVZuh5'Buser1148Buser902Buser1515Buser1318Buser1220Bb'H8rUd66njl4VqZCztilV'Bb'UVuSKodXR5SrmrvTC9oi'Buser1098Buser845Buser386Bb'wODmYhdY9lzjPShe2mFT'Buser480Buser90Buser1744Buser615Bb'mTYcxTgNV5gYS48lXQPY'Bb'Fi9zuQ8TCLaMHyuqASxa'Bb'ud9jW3HMcY5lhQs5nCdf'Bb'JzANR67cfyBYipk38ESQ'Buser1825Buser1545Buser303Bb'bWDo2JCLK1Q0nhUq6wTi'Buser802Buser67Buser1614Bb'JVClp8kY88V0h0IkMtXW'Buser1486Bb'h6Q8YfYFBuDdjwL8FRcU'Buser1429Buser482Bb'xl7Apv5rv8Whg5joF0oD'Bb'4pXA0HKuXjrigMkwLS9H'Buser543Buser1331Bb'2XDlxB9EP7XsUKdTHomP'Buser508Buser1539Buser168Bb'eiD58H7DWXMCU7Yfe3tC'Bb'GhKWA6o3NCEzzuga8fFQ'Bb'SJwFcp2KBOy8hqK2meVN'Buser607Buser94Buser980Buser494Buser775Bb'gTluobkUqdl90yLhiRtC'Buser102Buser375Bb'vtGFsyDfmwCjmU7ZhupC'Bb'HlFL7y8WE9TCJpywQ4Aq'Bb'3RtVenupTWoMnQIbXTRf'Bb'1wTGeOELWJMMqHNQyLhq'Bb'ZLrICRYpJBMYTH629F50'Bb'V24mXyLpIuvKOHu9Cd3r'Buser987Bb'sA7ntKHEHM6Qf2RyPCbA'Buser1262Bb'gFP4mtIi1Gb9WI96JRkY'Buser661Bb'hqaqUoPkE6Jt9rdDByaP'Bb'V3mHvbECne5WId0V9Vly'Buser1800Buser515Buser251Buser1724Buser151Bb'Gsn9nbctegZAbNQUMHCl'Bb'Vil4DMJ5zNa1Owcz5oYL'Buser1035Buser173Bb'k8wUTtXpDAQqacFu3lo3'Buser889Bb'UBEMXNG6kRQhPmIB8mex'Bb'qcedmYCWKG4YSrYK10BU'Buser1141Buser392Bb'yaja0EILgOLPJ0k4S3yJ'Buser1326Buser1792Bb'aRkUveivy9OSDoe7wZVZ'Buser914Buser273Bb'mSYJClIU49jdXUEYfWId'Bb'VzPHSCRQLFH1r2qsDueC'Bb'wLeCOM5QY1eaIdTwGp70'Buser1829Bb'gj6E2uqzme4Ut0rLEjAl'Buser977Buser1062Buser1039Buser1463Buser1641Buser797Buser51Bb'yYsc3VFJSqdQkeNBlhQ9'Buser1085Buser644Buser159Buser880Buser1264Bb'sZvcyGZqN9CRqGpOYZGe'Bb'p6o5qkP66fKMOBlrCup3'Buser1785Bb'LIyzR5gF8fLJOj6U91uD'Buser1415Bb'eX96yu6NNIFqWlyrnW33'Buser426Buser1565Bb'pIodo20lNW6oPHiU2iVw'Buser1135Bb'rpo5CV9nSw6poZFWNIjC'Buser268Buser1092Bb'DYRIRopGlvLTYxErgdH1'Buser546Buser1590Buser1335Buser1595Buser1530Bb'mvKWteZvSSYL8wzpdUOe'Bb'fO3OVMnLhpPsNNqHNODJ'Buser420Bb'sKuuBtQH2nMj8M7xVs2E'Buser357Bb'rXBEMHJcL8vSfsDoTMnX'Bb'fQ2SPQ87IHLFLK7tfFuM'Buser432Buser190Bb'VnmaAJddUG91nfwUckzM'Bb'CbZSQpPnelQlZTZafp9M'Buser774Bb'BamuBEWQXHT4FNbGLrV5'Buser866Bb'DIk08qOLK46ipuYDloGI'Buser854Bb'h2ntUuo78O67UhU59l6z'Bb'tKACLw04WNrhdVrL7cOM'Buser1323Bb'7nlNAboPRapQZXbj4nk6'Buser1402Buser1582Buser1250Buser1364Buser727Buser478Bb'UWepbz2VIhfFWrr90FbY'Buser608Bb'6vaQE1OPajjWHmnkGgGJ'Bb'LGD48CP8OlW2F4SShsB9'Buser706Bb'c06lyG1R1BGN0IcXdALn'Buser1733Bb'KHkR8X9dqnVC1xeb6555'Bb'aLfs2Dh7WJUazmkGSWEX'Buser1835Buser1714Buser803Bb'DIBsJoeEPclvoN06Fw6S'Buser140Buser1186Bb'fBBaqUrysQICKQ8VdDTO'Buser181Bb'ckEPJpGEJQEKVvnlkZZx'Bb'J9sbK4l92Znzn1S3WcmK'Buser984Bb'IAWLdovlhzrbcH7XdcLI'Buser740Bb'0ORt5DFXEwb85vsRFwd4'Buser1669Bb'VXaCTT3fAs7Kw2hxb14e'Buser596Bb'84QEWKvIsAoIa5wCnhZA'Bb'o0i7IqFYPfSUej3F1pYD'Bb'H1OB3o6TmjTvHMUz9xNm'Buser1342Buser38Buser851Buser20Bb'HvxIz514drmXJRzCmKfd'Bb'Lh3QjjUVQIj4QuIOzU3P'Buser537Buser693Bb'fNSh2X7zY47F42nYc609'Buser1049Buser963Buser853Buser212Buser1684Buser1404Buser1287Buser45Bb'M1RLH9btnZSrFGwsmx63'Bb'AHDIj7gqXGUN2HkdxFgu'Bb'5PtxL1d0XM1pPikbpKHs'Buser155Buser779Buser553Bb'XWDW4RuiSR4DvYpNPuzz'Buser162Buser453Bb'dG1bAnHUqQfSY9HEeGOG'Bb'nx4GJnsUbw2JsLPUT4WY'Bb'rExUd1x24a9GXW8ytjRT'Buser470Bb'LL1dzsCiveP06dRm4eRL'Buser1427Buser1643Bb'ykrlsX5ofgyiDuFq2bzT'Buser1741Buser1385Buser1337Bb'o5imlCVnUOPwqkLi36BQ'Buser1480Bb'hbKCZCbmgclJJOYOi1T3'Buser649Buser520Bb'IBHyCdgMfZsbV5QLASOd'Buser609Buser1126Buser469Bb'WdKgmPDtvHqyd6YdwJAp'Buser1219Bb'r2CxBIlLomDu4jwX895R'Bb'BqY6cdrf4IOiqrKL1jv8'Bb'HeYFO1ANr6pv7jCxnVtx'Buser1394Buser266Buser1680Buser1796Buser1690Bb'hOoIhLQ5ki1mwRP0cYAo'Buser952Buser626Bb'Tj7V4Gi1apaGe8u1p4y5'Buser1222Buser1475Buser1355Bb'dfnsal9Kn6M9aDZVhJTq'Buser449Buser1237Buser557Buser1037Bb'9QQeHtHxoKjnpamgkcJU'Bb'i7hwQ3yiOLj2fnq0iFtx'Bb'iDzD7EoBm7FaQJJ2OonU'Buser1842Buser1671Buser736Buser972Buser1081Bb'ivPdNwj1uy1leJN9SkVx'Bb'qderR5kzqDw2MR4B0y90'Buser545Buser240Buser1514Buser1129Buser583Buser295Buser204Bb'kjfE8luvUDBKpXccXQBB'Buser171Buser1279Bb'INMaEANSmYJbYx6BxWI1'Buser169Bb'YjgtoexKvBwWxlvQKupn'Buser1002Bb'FNHqSQK5WLmF1oaNEluK'Buser961Buser60Bb'vfzTu2IxFY6QijMWSHGa'Buser177Buser1747Bb'7Xcssd1u6riIrxJsh7jF'Bb'RnLpbmeK0ONLIaY6bFDO'Buser688Buser1149Bb'YuI4qNeK6igOFGcICRHO'Buser800Bb'0SS94wyzaC9mlurC536A'Buser1563Bb'oUdYxobBUqK0p2e2F4rE'Bb'rZhDYWnKzvylQbbC6jEw'Buser637Buser648Bb'orxRu00AVxg1hXaC0A58'Buser1449Bb'rCUhA3kD4OdvkJhDyBpK'Buser675Bb'jUay9Xb6hALilpG9892l'Buser750Buser374Bb'nahrWLI5OsHMxRph8G1V'Buser1797Buser1252Bb'fIOjFHmQGxoo764tz8U5'Buser1651Bb'9pDzxDYAXpQOnZMOcMuQ'Bb'Ib9QS5fs4t9KB1NvuTcP'Bb'cHk7oL62ZCAKcm9mLb9O'Bb'LmadvEQ8GKyftJjal5Zj'Buser1699Bb'0b6yAKrc1fpKDtTgvrWE'Buser430Bb'SAlFgdTQhHpcCoyvEkt6'Buser1346Bb'NJigZx07nl9gH5Dm5knp'Bb'DpxjAsp2x24I1R1vOL0U'Buser566Buser617Buser1706Buser1405Bb'dnD68lOgN5aeFI52bIvN'Buser436Bb'fVFNzcClq12lkBTz2UJM'Bb'1b1J3IUYxpQX7suzsx7p'Bb'OM9YkQQdfpDLRCK9KsCn'Buser247Bb'ADAqupiOLef3R2KfeX6e'Buser1183Bb'E4Vl1ow13ISlFGHQcSV6'Bb'jughQiwM0Z9ku1cUsQHB'Bb'H61jsGkwJ7HZDW91ocvd'Buser665Buser1777Buser582Bb'4Cn82Ccmq0OZh0Rg9CAN'Buser1518Buser1531Buser218Bb'owr0sfy5RYqpQ7a9QY2p'Bb'kooGNAUZtWjV0Dbz8Waa'Buser559Buser1218Bb'aLZOlybjjD6aN1G2KjqY'Bb'lOP8p7q5Bl8UwWi65u7X'Bb'E9et7inh0aspISu0c14l'Buser200Buser565Buser88Buser346Buser165Buser1407Bb'7lkOHJaGIhF44S4OJP65'Buser1009Buser842Bb'lkZHfR51RhQXelR4LGHN'Buser1461Bb'uihTNsb6SM05u4wKUj3B'Bb'x0qyFMpjWL7rmOfOPVCt'Bb'kT4HrjDlsb1BHsmsVXEh'Buser1550Buser514Buser743Buser1208Buser1511Bb'shfpdGAMp5ywmepNlxLT'Buser1154Buser286Buser58Buser489Bb'kehr64vdDPjlNu1mjFrS'Buser26Buser1025Buser721Buser1059Buser762Buser1125Bb'XAEcUtZX6AAEvqjG26cJ'Bb'x7T70WhD0GACCFjk6FbQ'Buser182Bb'O2yh2cA69amDbRJ76he4'Buser1238Buser142Bb'VHPfjYG1UE75evmmwWzZ'Buser1354Bb'15WEsgT9xJ4IfJDXEFfe'Buser1570Buser496Bb'xS16yETOttzOTdnSiuVo'Buser1727Buser501Bb'dgCxOKXDaPtkqTooAiVg'Buser1453Buser638Buser1165Buser978Buser858Bb'018WCu9n4TC5Im1SL9Wk'Buser782Bb'mijyKUTqVtPdv2nRlzV2'Bb'A2tMwcJ4hbY8k8Uhb0Yc'Bb'ZqZGjv5VLqANRrOBae4o'Buser493Buser1028Buser713Buser1038Bb'9mH27HWVck9wxZwhe8Lq'Buser147Buser1298Buser36Bb'uP4wCK29VwuZQi71GVWA'Bb'94Spxpt9uvMjt3eGsQcN'Buser834Bb'68d7PKAwKBAleLxW05vM'Bb'yCtouoGbMEbPDcdKvYHx'Buser1663Buser691Bb'hB8SaBEN75Dl4ZOBtJfF'Buser241Buser1079Bb'l9ELvzuTOxHOiEhBXk4I'Bb'nYBMuWkIwp8iNVVGyhKO'Bb'4p7e8luQcjSDkaCix9Ht'Buser1765Buser1441Buser1193Bb'dOjbXlptmVZeeUzqS78H'Buser1196Buser510Buser1133Bb'zVLBmbVUs9zfOwwZykNr'Bb'EaSe9CMRgiYQFGlXWt3Q'Buser1395Bb'olbwws3w3CStm92lWTOI'Buser612Bb'9UvkMaM0F1k5oIFh0bT1'Buser93Bb'02K8fspDTrSJRoLu8IrQ'Bb'2rwcyseiopM1ieiCVNww'Buser832Buser73Buser410Buser1320Buser463Buser737Buser1082Buser1818Buser1127Bb'WCV6DDiDc5JRjd8pdj3l'Bb'H9PvaRp6dppVBMg1kXVx'Buser1802Buser335
R
Const_4Const*
_output_shapes
: *
dtype0*
valueB :
���������
R
Const_5Const*
_output_shapes
: *
dtype0*
valueB :
���������
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
1SGD/m/simple_recommender_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*B
shared_name31SGD/m/simple_recommender_1/embedding_3/embeddings
�
ESGD/m/simple_recommender_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp1SGD/m/simple_recommender_1/embedding_3/embeddings*
_output_shapes
:	�*
dtype0
�
1SGD/m/simple_recommender_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*B
shared_name31SGD/m/simple_recommender_1/embedding_2/embeddings
�
ESGD/m/simple_recommender_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp1SGD/m/simple_recommender_1/embedding_2/embeddings*
_output_shapes
:	�*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
+simple_recommender_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*<
shared_name-+simple_recommender_1/embedding_3/embeddings
�
?simple_recommender_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp+simple_recommender_1/embedding_3/embeddings*
_output_shapes
:	�*
dtype0
�
+simple_recommender_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*<
shared_name-+simple_recommender_1/embedding_2/embeddings
�
?simple_recommender_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp+simple_recommender_1/embedding_2/embeddings*
_output_shapes
:	�*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name116*
value_dtype0
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name108*
value_dtype0
W
call_item_item_productPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallcall_item_item_product
hash_tableConst_4+simple_recommender_1/embedding_3/embeddingsConst*
Tin	
2*
Tout
2*
_collective_manager_ids
 * 
_output_shapes
:d:d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_8764
�
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_3Const_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__initializer_9013
�
StatefulPartitionedCall_2StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__initializer_9031
D
NoOpNoOp^StatefulPartitionedCall_1^StatefulPartitionedCall_2
�#
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�"
value�"B�" B�"
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
dummy_user_table
	product_table

user_embedding
product_embedding
dot
	optimizer
call_item_item

signatures*

0
1*

0
1*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
 
	capture_1
	capture_3* 
R
_initializer
_create_resource
_initialize
 _destroy_resource* 
R
!_initializer
"_create_resource
#_initialize
$_destroy_resource* 
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

embeddings*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

embeddings*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
o
7
_variables
8_iterations
9_learning_rate
:_index_dict
;	momentums
<_update_step_xla*

=trace_0* 

>call_item_item* 
ke
VARIABLE_VALUE+simple_recommender_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_recommender_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
* 


0
1
2*

?0
@1*
* 
* 
 
	capture_1
	capture_3* 
 
	capture_1
	capture_3* 
 
	capture_1
	capture_3* 
 
	capture_1
	capture_3* 
* 
* 
* 

Atrace_0* 

Btrace_0* 

Ctrace_0* 
* 

Dtrace_0* 

Etrace_0* 

Ftrace_0* 

0*

0*
* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 

0*

0*
* 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

Strace_0* 

Ttrace_0* 
* 
* 
* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

Ztrace_0* 

[trace_0* 

80
\1
]2*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

\0
]1*
* 
 
	capture_1
^	capture_3* 
 
	capture_1
^	capture_3* 
8
_	variables
`	keras_api
	atotal
	bcount*
H
c	variables
d	keras_api
	etotal
	fcount
g
_fn_kwargs*
* 
 
h	capture_1
i	capture_2* 
* 
* 
 
^	capture_1
j	capture_2* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
|v
VARIABLE_VALUE1SGD/m/simple_recommender_1/embedding_2/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE1SGD/m/simple_recommender_1/embedding_3/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

a0
b1*

_	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

c	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename?simple_recommender_1/embedding_2/embeddings/Read/ReadVariableOp?simple_recommender_1/embedding_3/embeddings/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpESGD/m/simple_recommender_1/embedding_2/embeddings/Read/ReadVariableOpESGD/m/simple_recommender_1/embedding_3/embeddings/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_9147
�
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename+simple_recommender_1/embedding_2/embeddings+simple_recommender_1/embedding_3/embeddings	iterationlearning_rate1SGD/m/simple_recommender_1/embedding_2/embeddings1SGD/m/simple_recommender_1/embedding_3/embeddingstotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_9187ǂ
�
�
"__inference_signature_wrapper_8764
product
unknown
	unknown_0
	unknown_1:	�
	unknown_2
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallproductunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 * 
_output_shapes
:d:d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_call_item_item_8747b
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:dd

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
: : : : :�22
StatefulPartitionedCallStatefulPartitionedCall:? ;

_output_shapes
: 
!
_user_specified_name	product:

_output_shapes
: :!

_output_shapes	
:�
�
�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8846

inputs
inputs_1.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value0
,none_lookup_1_lookuptablefindv2_table_handle1
-none_lookup_1_lookuptablefindv2_default_value#
embedding_2_8817:	�#
embedding_3_8830:	�
identity��None_Lookup/LookupTableFindV2�None_Lookup_1/LookupTableFindV2�#embedding_2/StatefulPartitionedCall�#embedding_3/StatefulPartitionedCall�
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleinputs+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
None_Lookup_1/LookupTableFindV2LookupTableFindV2,none_lookup_1_lookuptablefindv2_table_handleinputs_1-none_lookup_1_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall&None_Lookup/LookupTableFindV2:values:0embedding_2_8817*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_8816�
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall(None_Lookup_1/LookupTableFindV2:values:0embedding_3_8830*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_8829�
dot_1/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dot_1_layer_call_and_return_conditional_losses_8842{
SqueezeSqueezedot_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
_
IdentityIdentitySqueeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^None_Lookup/LookupTableFindV2 ^None_Lookup_1/LookupTableFindV2$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22B
None_Lookup_1/LookupTableFindV2None_Lookup_1/LookupTableFindV22J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_embedding_2_layer_call_and_return_conditional_losses_9052

inputs(
embedding_lookup_9046:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_9046inputs*
Tindices0*(
_class
loc:@embedding_lookup/9046*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9046*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

*__inference_embedding_3_layer_call_fn_9059

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_8829s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_embedding_2_layer_call_and_return_conditional_losses_8816

inputs(
embedding_lookup_8810:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_8810inputs*
Tindices0*(
_class
loc:@embedding_lookup/8810*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/8810*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�!
�
__inference__traced_save_9147
file_prefixJ
Fsavev2_simple_recommender_1_embedding_2_embeddings_read_readvariableopJ
Fsavev2_simple_recommender_1_embedding_3_embeddings_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopP
Lsavev2_sgd_m_simple_recommender_1_embedding_2_embeddings_read_readvariableopP
Lsavev2_sgd_m_simple_recommender_1_embedding_3_embeddings_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_simple_recommender_1_embedding_2_embeddings_read_readvariableopFsavev2_simple_recommender_1_embedding_3_embeddings_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopLsavev2_sgd_m_simple_recommender_1_embedding_2_embeddings_read_readvariableopLsavev2_sgd_m_simple_recommender_1_embedding_3_embeddings_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_6"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*O
_input_shapes>
<: :	�:	�: : :	�:	�: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: 
�/
�
 __inference__traced_restore_9187
file_prefixO
<assignvariableop_simple_recommender_1_embedding_2_embeddings:	�Q
>assignvariableop_1_simple_recommender_1_embedding_3_embeddings:	�&
assignvariableop_2_iteration:	 *
 assignvariableop_3_learning_rate: W
Dassignvariableop_4_sgd_m_simple_recommender_1_embedding_2_embeddings:	�W
Dassignvariableop_5_sgd_m_simple_recommender_1_embedding_3_embeddings:	�$
assignvariableop_6_total_1: $
assignvariableop_7_count_1: "
assignvariableop_8_total: "
assignvariableop_9_count: 
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp<assignvariableop_simple_recommender_1_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp>assignvariableop_1_simple_recommender_1_embedding_3_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_iterationIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_learning_rateIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpDassignvariableop_4_sgd_m_simple_recommender_1_embedding_2_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpDassignvariableop_5_sgd_m_simple_recommender_1_embedding_3_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_total_1Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_count_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

*__inference_embedding_2_layer_call_fn_9043

inputs
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_8816s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
9
__inference__creator_9023
identity��
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name116*
value_dtype0W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
+
__inference__destroyer_9036
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_9000
inputs_0
inputs_1.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value0
,none_lookup_1_lookuptablefindv2_table_handle1
-none_lookup_1_lookuptablefindv2_default_value4
!embedding_2_embedding_lookup_8984:	�4
!embedding_3_embedding_lookup_8989:	�
identity��None_Lookup/LookupTableFindV2�None_Lookup_1/LookupTableFindV2�embedding_2/embedding_lookup�embedding_3/embedding_lookup�
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleinputs_0+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
None_Lookup_1/LookupTableFindV2LookupTableFindV2,none_lookup_1_lookuptablefindv2_table_handleinputs_1-none_lookup_1_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
embedding_2/embedding_lookupResourceGather!embedding_2_embedding_lookup_8984&None_Lookup/LookupTableFindV2:values:0*
Tindices0*4
_class*
(&loc:@embedding_2/embedding_lookup/8984*+
_output_shapes
:���������*
dtype0�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_2/embedding_lookup/8984*+
_output_shapes
:����������
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
embedding_3/embedding_lookupResourceGather!embedding_3_embedding_lookup_8989(None_Lookup_1/LookupTableFindV2:values:0*
Tindices0*4
_class*
(&loc:@embedding_3/embedding_lookup/8989*+
_output_shapes
:���������*
dtype0�
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_3/embedding_lookup/8989*+
_output_shapes
:����������
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i
dot_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
dot_1/transpose	Transpose0embedding_3/embedding_lookup/Identity_1:output:0dot_1/transpose/perm:output:0*
T0*+
_output_shapes
:����������
dot_1/MatMulBatchMatMulV20embedding_2/embedding_lookup/Identity_1:output:0dot_1/transpose:y:0*
T0*+
_output_shapes
:���������P
dot_1/ShapeShapedot_1/MatMul:output:0*
T0*
_output_shapes
:r
SqueezeSqueezedot_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
_
IdentityIdentitySqueeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^None_Lookup/LookupTableFindV2 ^None_Lookup_1/LookupTableFindV2^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22B
None_Lookup_1/LookupTableFindV2None_Lookup_1/LookupTableFindV22<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:

_output_shapes
: :

_output_shapes
: 
�

�
3__inference_simple_recommender_1_layer_call_fn_8861
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
�
i
?__inference_dot_1_layer_call_and_return_conditional_losses_8842

inputs
inputs_1
identityc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*+
_output_shapes
:���������d
MatMulBatchMatMulV2inputstranspose:y:0*
T0*+
_output_shapes
:���������D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:[
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_call_item_item_8747
product.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value4
!embedding_3_embedding_lookup_8720:	�
gatherv2_params
identity

identity_1��ExpandDims_1/ReadVariableOp�None_Lookup/LookupTableFindV2�embedding_3/embedding_lookup�
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleproduct+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*
_output_shapes
: �
embedding_3/embedding_lookupResourceGather!embedding_3_embedding_lookup_8720&None_Lookup/LookupTableFindV2:values:0*
Tindices0*4
_class*
(&loc:@embedding_3/embedding_lookup/8720*
_output_shapes
:*
dtype0�
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_3/embedding_lookup/8720*
_output_shapes
:�
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims0embedding_3/embedding_lookup/Identity_1:output:0ExpandDims/dim:output:0*
T0*
_output_shapes

:~
ExpandDims_1/ReadVariableOpReadVariableOp!embedding_3_embedding_lookup_8720*
_output_shapes
:	�*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*#
_output_shapes
:�V
dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims
ExpandDimsExpandDims:output:0dot_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
:i
dot_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
dot_1/transpose	TransposeExpandDims_1:output:0dot_1/transpose/perm:output:0*
T0*#
_output_shapes
:�{
dot_1/MatMulBatchMatMulV2dot_1/ExpandDims:output:0dot_1/transpose:y:0*
T0*#
_output_shapes
:�`
dot_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      =  p
dot_1/SqueezeSqueezedot_1/MatMul:output:0*
T0*
_output_shapes
:	�*
squeeze_dims
`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������h
ReshapeReshapedot_1/Squeeze:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:�J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :d`
TopKV2TopKV2Reshape:output:0TopKV2/k:output:0*
T0* 
_output_shapes
:d:dO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2gatherv2_paramsTopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:dS
IdentityIdentityGatherV2:output:0^NoOp*
T0*
_output_shapes
:dS

Identity_1IdentityTopKV2:values:0^NoOp*
T0*
_output_shapes
:d�
NoOpNoOp^ExpandDims_1/ReadVariableOp^None_Lookup/LookupTableFindV2^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
: : : : :�2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22<
embedding_3/embedding_lookupembedding_3/embedding_lookup:? ;

_output_shapes
: 
!
_user_specified_name	product:

_output_shapes
: :!

_output_shapes	
:�
�
k
?__inference_dot_1_layer_call_and_return_conditional_losses_9083
inputs_0
inputs_1
identityc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*+
_output_shapes
:���������f
MatMulBatchMatMulV2inputs_0transpose:y:0*
T0*+
_output_shapes
:���������D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:[
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
__inference__initializer_90136
2key_value_init107_lookuptableimportv2_table_handle.
*key_value_init107_lookuptableimportv2_keys0
,key_value_init107_lookuptableimportv2_values
identity��%key_value_init107/LookupTableImportV2�
%key_value_init107/LookupTableImportV2LookupTableImportV22key_value_init107_lookuptableimportv2_table_handle*key_value_init107_lookuptableimportv2_keys,key_value_init107_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init107/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2N
%key_value_init107/LookupTableImportV2%key_value_init107/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
�
E__inference_embedding_3_layer_call_and_return_conditional_losses_8829

inputs(
embedding_lookup_8823:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_8823inputs*
Tindices0*(
_class
loc:@embedding_lookup/8823*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/8823*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference__initializer_90316
2key_value_init115_lookuptableimportv2_table_handle.
*key_value_init115_lookuptableimportv2_keys0
,key_value_init115_lookuptableimportv2_values
identity��%key_value_init115/LookupTableImportV2�
%key_value_init115/LookupTableImportV2LookupTableImportV22key_value_init115_lookuptableimportv2_table_handle*key_value_init115_lookuptableimportv2_keys,key_value_init115_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init115/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2N
%key_value_init115/LookupTableImportV2%key_value_init115/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
9
__inference__creator_9005
identity��
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name108*
value_dtype0W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
+
__inference__destroyer_9018
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�

�
3__inference_simple_recommender_1_layer_call_fn_8974
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:

_output_shapes
: :

_output_shapes
: 
�
�
__inference_call_item_item_8956
product.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value4
!embedding_3_embedding_lookup_8929:	�
gatherv2_params
identity

identity_1��ExpandDims_1/ReadVariableOp�None_Lookup/LookupTableFindV2�embedding_3/embedding_lookup�
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleproduct+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*
_output_shapes
: �
embedding_3/embedding_lookupResourceGather!embedding_3_embedding_lookup_8929&None_Lookup/LookupTableFindV2:values:0*
Tindices0*4
_class*
(&loc:@embedding_3/embedding_lookup/8929*
_output_shapes
:*
dtype0�
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_3/embedding_lookup/8929*
_output_shapes
:�
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �

ExpandDims
ExpandDims0embedding_3/embedding_lookup/Identity_1:output:0ExpandDims/dim:output:0*
T0*
_output_shapes

:~
ExpandDims_1/ReadVariableOpReadVariableOp!embedding_3_embedding_lookup_8929*
_output_shapes
:	�*
dtype0R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*#
_output_shapes
:�V
dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims
ExpandDimsExpandDims:output:0dot_1/ExpandDims/dim:output:0*
T0*"
_output_shapes
:i
dot_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
dot_1/transpose	TransposeExpandDims_1:output:0dot_1/transpose/perm:output:0*
T0*#
_output_shapes
:�{
dot_1/MatMulBatchMatMulV2dot_1/ExpandDims:output:0dot_1/transpose:y:0*
T0*#
_output_shapes
:�`
dot_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      =  p
dot_1/SqueezeSqueezedot_1/MatMul:output:0*
T0*
_output_shapes
:	�*
squeeze_dims
`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������h
ReshapeReshapedot_1/Squeeze:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:�J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :d`
TopKV2TopKV2Reshape:output:0TopKV2/k:output:0*
T0* 
_output_shapes
:d:dO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2gatherv2_paramsTopKV2:indices:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:dS
IdentityIdentityGatherV2:output:0^NoOp*
T0*
_output_shapes
:dS

Identity_1IdentityTopKV2:values:0^NoOp*
T0*
_output_shapes
:d�
NoOpNoOp^ExpandDims_1/ReadVariableOp^None_Lookup/LookupTableFindV2^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
: : : : :�2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22<
embedding_3/embedding_lookupembedding_3/embedding_lookup:? ;

_output_shapes
: 
!
_user_specified_name	product:

_output_shapes
: :!

_output_shapes	
:�
�
P
$__inference_dot_1_layer_call_fn_9074
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dot_1_layer_call_and_return_conditional_losses_8842d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8921
input_1
input_2.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value0
,none_lookup_1_lookuptablefindv2_table_handle1
-none_lookup_1_lookuptablefindv2_default_value#
embedding_2_8912:	�#
embedding_3_8915:	�
identity��None_Lookup/LookupTableFindV2�None_Lookup_1/LookupTableFindV2�#embedding_2/StatefulPartitionedCall�#embedding_3/StatefulPartitionedCall�
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleinput_1+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
None_Lookup_1/LookupTableFindV2LookupTableFindV2,none_lookup_1_lookuptablefindv2_table_handleinput_2-none_lookup_1_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall&None_Lookup/LookupTableFindV2:values:0embedding_2_8912*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_2_layer_call_and_return_conditional_losses_8816�
#embedding_3/StatefulPartitionedCallStatefulPartitionedCall(None_Lookup_1/LookupTableFindV2:values:0embedding_3_8915*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_embedding_3_layer_call_and_return_conditional_losses_8829�
dot_1/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dot_1_layer_call_and_return_conditional_losses_8842{
SqueezeSqueezedot_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
_
IdentityIdentitySqueeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^None_Lookup/LookupTableFindV2 ^None_Lookup_1/LookupTableFindV2$^embedding_2/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22B
None_Lookup_1/LookupTableFindV2None_Lookup_1/LookupTableFindV22J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_embedding_3_layer_call_and_return_conditional_losses_9068

inputs(
embedding_lookup_9062:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_9062inputs*
Tindices0*(
_class
loc:@embedding_lookup/9062*+
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9062*+
_output_shapes
:����������
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�&
�
__inference__wrapped_model_8791
input_1
input_2C
?simple_recommender_1_none_lookup_lookuptablefindv2_table_handleD
@simple_recommender_1_none_lookup_lookuptablefindv2_default_valueE
Asimple_recommender_1_none_lookup_1_lookuptablefindv2_table_handleF
Bsimple_recommender_1_none_lookup_1_lookuptablefindv2_default_valueI
6simple_recommender_1_embedding_2_embedding_lookup_8775:	�I
6simple_recommender_1_embedding_3_embedding_lookup_8780:	�
identity��2simple_recommender_1/None_Lookup/LookupTableFindV2�4simple_recommender_1/None_Lookup_1/LookupTableFindV2�1simple_recommender_1/embedding_2/embedding_lookup�1simple_recommender_1/embedding_3/embedding_lookup�
2simple_recommender_1/None_Lookup/LookupTableFindV2LookupTableFindV2?simple_recommender_1_none_lookup_lookuptablefindv2_table_handleinput_1@simple_recommender_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
4simple_recommender_1/None_Lookup_1/LookupTableFindV2LookupTableFindV2Asimple_recommender_1_none_lookup_1_lookuptablefindv2_table_handleinput_2Bsimple_recommender_1_none_lookup_1_lookuptablefindv2_default_value*	
Tin0*

Tout0*'
_output_shapes
:����������
1simple_recommender_1/embedding_2/embedding_lookupResourceGather6simple_recommender_1_embedding_2_embedding_lookup_8775;simple_recommender_1/None_Lookup/LookupTableFindV2:values:0*
Tindices0*I
_class?
=;loc:@simple_recommender_1/embedding_2/embedding_lookup/8775*+
_output_shapes
:���������*
dtype0�
:simple_recommender_1/embedding_2/embedding_lookup/IdentityIdentity:simple_recommender_1/embedding_2/embedding_lookup:output:0*
T0*I
_class?
=;loc:@simple_recommender_1/embedding_2/embedding_lookup/8775*+
_output_shapes
:����������
<simple_recommender_1/embedding_2/embedding_lookup/Identity_1IdentityCsimple_recommender_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:����������
1simple_recommender_1/embedding_3/embedding_lookupResourceGather6simple_recommender_1_embedding_3_embedding_lookup_8780=simple_recommender_1/None_Lookup_1/LookupTableFindV2:values:0*
Tindices0*I
_class?
=;loc:@simple_recommender_1/embedding_3/embedding_lookup/8780*+
_output_shapes
:���������*
dtype0�
:simple_recommender_1/embedding_3/embedding_lookup/IdentityIdentity:simple_recommender_1/embedding_3/embedding_lookup:output:0*
T0*I
_class?
=;loc:@simple_recommender_1/embedding_3/embedding_lookup/8780*+
_output_shapes
:����������
<simple_recommender_1/embedding_3/embedding_lookup/Identity_1IdentityCsimple_recommender_1/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������~
)simple_recommender_1/dot_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
$simple_recommender_1/dot_1/transpose	TransposeEsimple_recommender_1/embedding_3/embedding_lookup/Identity_1:output:02simple_recommender_1/dot_1/transpose/perm:output:0*
T0*+
_output_shapes
:����������
!simple_recommender_1/dot_1/MatMulBatchMatMulV2Esimple_recommender_1/embedding_2/embedding_lookup/Identity_1:output:0(simple_recommender_1/dot_1/transpose:y:0*
T0*+
_output_shapes
:���������z
 simple_recommender_1/dot_1/ShapeShape*simple_recommender_1/dot_1/MatMul:output:0*
T0*
_output_shapes
:�
simple_recommender_1/SqueezeSqueeze*simple_recommender_1/dot_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
t
IdentityIdentity%simple_recommender_1/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^simple_recommender_1/None_Lookup/LookupTableFindV25^simple_recommender_1/None_Lookup_1/LookupTableFindV22^simple_recommender_1/embedding_2/embedding_lookup2^simple_recommender_1/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:���������: : : : : : 2h
2simple_recommender_1/None_Lookup/LookupTableFindV22simple_recommender_1/None_Lookup/LookupTableFindV22l
4simple_recommender_1/None_Lookup_1/LookupTableFindV24simple_recommender_1/None_Lookup_1/LookupTableFindV22f
1simple_recommender_1/embedding_2/embedding_lookup1simple_recommender_1/embedding_2/embedding_lookup2f
1simple_recommender_1/embedding_3/embedding_lookup1simple_recommender_1/embedding_3/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: "�
L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
call_item_item�
)
product
call_item_item_product:0 /
output_0#
StatefulPartitionedCall:0d/
output_1#
StatefulPartitionedCall:1dtensorflow/serving/predict:�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
dummy_user_table
	product_table

user_embedding
product_embedding
dot
	optimizer
call_item_item

signatures"
_tf_keras_model
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
3__inference_simple_recommender_1_layer_call_fn_8861
3__inference_simple_recommender_1_layer_call_fn_8974�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_9000
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8921�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
	capture_1
	capture_3B�
__inference__wrapped_model_8791input_1input_2"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z	capture_3
f
_initializer
_create_resource
_initialize
 _destroy_resourceR jtf.StaticHashTable
f
!_initializer
"_create_resource
#_initialize
$_destroy_resourceR jtf.StaticHashTable
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�
7
_variables
8_iterations
9_learning_rate
:_index_dict
;	momentums
<_update_step_xla"
experimentalOptimizer
�
=trace_02�
__inference_call_item_item_8956�
���
FullArgSpec
args�
jself
	jproduct
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z=trace_0
+
>call_item_item"
signature_map
>:<	�2+simple_recommender_1/embedding_2/embeddings
>:<	�2+simple_recommender_1/embedding_3/embeddings
 "
trackable_list_wrapper
5

0
1
2"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
	capture_1
	capture_3B�
3__inference_simple_recommender_1_layer_call_fn_8861input_1input_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z	capture_3
�
	capture_1
	capture_3B�
3__inference_simple_recommender_1_layer_call_fn_8974inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z	capture_3
�
	capture_1
	capture_3B�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_9000inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z	capture_3
�
	capture_1
	capture_3B�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8921input_1input_2"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
"
_generic_user_object
�
Atrace_02�
__inference__creator_9005�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zAtrace_0
�
Btrace_02�
__inference__initializer_9013�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zBtrace_0
�
Ctrace_02�
__inference__destroyer_9018�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zCtrace_0
"
_generic_user_object
�
Dtrace_02�
__inference__creator_9023�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zDtrace_0
�
Etrace_02�
__inference__initializer_9031�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zEtrace_0
�
Ftrace_02�
__inference__destroyer_9036�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zFtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
Ltrace_02�
*__inference_embedding_2_layer_call_fn_9043�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
�
Mtrace_02�
E__inference_embedding_2_layer_call_and_return_conditional_losses_9052�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
Strace_02�
*__inference_embedding_3_layer_call_fn_9059�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0
�
Ttrace_02�
E__inference_embedding_3_layer_call_and_return_conditional_losses_9068�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
Ztrace_02�
$__inference_dot_1_layer_call_fn_9074�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0
�
[trace_02�
?__inference_dot_1_layer_call_and_return_conditional_losses_9083�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0
5
80
\1
]2"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
	capture_1
^	capture_3B�
__inference_call_item_item_8956product"�
���
FullArgSpec
args�
jself
	jproduct
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z^	capture_3
�
	capture_1
^	capture_3B�
"__inference_signature_wrapper_8764product"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1z^	capture_3
N
_	variables
`	keras_api
	atotal
	bcount"
_tf_keras_metric
^
c	variables
d	keras_api
	etotal
	fcount
g
_fn_kwargs"
_tf_keras_metric
�B�
__inference__creator_9005"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
h	capture_1
i	capture_2B�
__inference__initializer_9013"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zh	capture_1zi	capture_2
�B�
__inference__destroyer_9018"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_9023"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
^	capture_1
j	capture_2B�
__inference__initializer_9031"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z^	capture_1zj	capture_2
�B�
__inference__destroyer_9036"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_embedding_2_layer_call_fn_9043inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_embedding_2_layer_call_and_return_conditional_losses_9052inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_embedding_3_layer_call_fn_9059inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_embedding_3_layer_call_and_return_conditional_losses_9068inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_dot_1_layer_call_fn_9074inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_dot_1_layer_call_and_return_conditional_losses_9083inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
B:@	�21SGD/m/simple_recommender_1/embedding_2/embeddings
B:@	�21SGD/m/simple_recommender_1/embedding_3/embeddings
J
Constjtf.TrackableConstant
.
a0
b1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant>
__inference__creator_9005!�

� 
� "�
unknown >
__inference__creator_9023!�

� 
� "�
unknown @
__inference__destroyer_9018!�

� 
� "�
unknown @
__inference__destroyer_9036!�

� 
� "�
unknown G
__inference__initializer_9013&hi�

� 
� "�
unknown G
__inference__initializer_9031&	^j�

� 
� "�
unknown �
__inference__wrapped_model_8791�	X�U
N�K
I�F
!�
input_1���������
!�
input_2���������
� "3�0
.
output_1"�
output_1���������}
__inference_call_item_item_8956Z	^�
�
�
product 
� "1�.
�
tensor_0d
�
tensor_1d�
?__inference_dot_1_layer_call_and_return_conditional_losses_9083�b�_
X�U
S�P
&�#
inputs_0���������
&�#
inputs_1���������
� "0�-
&�#
tensor_0���������
� �
$__inference_dot_1_layer_call_fn_9074�b�_
X�U
S�P
&�#
inputs_0���������
&�#
inputs_1���������
� "%�"
unknown����������
E__inference_embedding_2_layer_call_and_return_conditional_losses_9052f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
*__inference_embedding_2_layer_call_fn_9043[/�,
%�"
 �
inputs���������
� "%�"
unknown����������
E__inference_embedding_3_layer_call_and_return_conditional_losses_9068f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������
� �
*__inference_embedding_3_layer_call_fn_9059[/�,
%�"
 �
inputs���������
� "%�"
unknown����������
"__inference_signature_wrapper_8764}	^*�'
� 
 �

product�
product "I�F
!
output_0�
output_0d
!
output_1�
output_1d�
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_8921�	X�U
N�K
I�F
!�
input_1���������
!�
input_2���������
� ",�)
"�
tensor_0���������
� �
N__inference_simple_recommender_1_layer_call_and_return_conditional_losses_9000�	Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
3__inference_simple_recommender_1_layer_call_fn_8861�	X�U
N�K
I�F
!�
input_1���������
!�
input_2���������
� "!�
unknown����������
3__inference_simple_recommender_1_layer_call_fn_8974�	Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown���������