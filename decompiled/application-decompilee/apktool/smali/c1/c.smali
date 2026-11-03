.class public final Lc1/c;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/util/SparseIntArray;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:C


# direct methods
.method public constructor <init>(I)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lc1/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc1/c;->b:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    iput p1, p0, Lc1/c;->a:I

    .line 12
    .line 13
    const-string v0, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const-string v2, "+-*/\\=?!{}[]():;|&^%<>.,"

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne p1, v5, :cond_0

    .line 22
    .line 23
    iput v4, p0, Lc1/c;->c:I

    .line 24
    .line 25
    iput v1, p0, Lc1/c;->d:I

    .line 26
    .line 27
    iput v5, p0, Lc1/c;->e:I

    .line 28
    .line 29
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 30
    .line 31
    iput v4, p0, Lc1/c;->g:I

    .line 32
    .line 33
    const/16 p1, 0x23

    .line 34
    .line 35
    iput-char p1, p0, Lc1/c;->h:C

    .line 36
    .line 37
    invoke-virtual {p0, v5, v0}, Lc1/c;->g(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "alignof,align_union,asm,axiom,bool,concept,concept_map,const_cast,constexpr,decltype,delegate,dynamic_cast,explicit,export,friend,generic,late_check,mutable,namespace,nullptr,property,reinterpret_cast,static_assert,static_cast,template,typeid,typename,using,virtual,where,DIR,FILE,"

    .line 41
    .line 42
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "true,false,NULL,nullptr"

    .line 46
    .line 47
    invoke-virtual {p0, v3, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_0
    const-string v6, "true,false,null"

    .line 53
    .line 54
    if-ne p1, v1, :cond_1

    .line 55
    .line 56
    iput v4, p0, Lc1/c;->c:I

    .line 57
    .line 58
    iput v1, p0, Lc1/c;->d:I

    .line 59
    .line 60
    iput v5, p0, Lc1/c;->e:I

    .line 61
    .line 62
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 63
    .line 64
    iput v4, p0, Lc1/c;->g:I

    .line 65
    .line 66
    const/16 p1, 0x40

    .line 67
    .line 68
    iput-char p1, p0, Lc1/c;->h:C

    .line 69
    .line 70
    invoke-virtual {p0, v5, v0}, Lc1/c;->g(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient"

    .line 74
    .line 75
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3, v6}, Lc1/c;->g(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_1
    const-string v7, "+-*/\\=?!{}[]():;|&^%<>.,@"

    .line 84
    .line 85
    const/4 v8, 0x3

    .line 86
    const-string v9, "break,continue,do,else,for,if,return,while"

    .line 87
    .line 88
    if-ne p1, v8, :cond_2

    .line 89
    .line 90
    iput v4, p0, Lc1/c;->c:I

    .line 91
    .line 92
    iput v1, p0, Lc1/c;->d:I

    .line 93
    .line 94
    iput v5, p0, Lc1/c;->e:I

    .line 95
    .line 96
    iput-object v7, p0, Lc1/c;->f:Ljava/lang/String;

    .line 97
    .line 98
    iput v4, p0, Lc1/c;->g:I

    .line 99
    .line 100
    iput-char v4, p0, Lc1/c;->h:C

    .line 101
    .line 102
    invoke-virtual {p0, v5, v9}, Lc1/c;->g(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p1, "abstract,alignof,as,async,await,assert,box,const,crate,copy,dyn,drop,enum,extern,fn,final,fail,impl,in,loop,let,macro,match,mod,move,mut,offsetof,override,priv,proc,pub,pure,ref,self,sizeof,static,struct,super,trait,type,typeof,union,unsafe,unsized,use,virtual,where,yield,isize,usize,str,char,bool"

    .line 106
    .line 107
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p1, "true,false,Some,None,Ok,Err"

    .line 111
    .line 112
    invoke-virtual {p0, v3, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_2
    const/4 v10, 0x4

    .line 118
    if-ne p1, v10, :cond_3

    .line 119
    .line 120
    iput v4, p0, Lc1/c;->c:I

    .line 121
    .line 122
    iput v1, p0, Lc1/c;->d:I

    .line 123
    .line 124
    iput v5, p0, Lc1/c;->e:I

    .line 125
    .line 126
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 127
    .line 128
    iput v4, p0, Lc1/c;->g:I

    .line 129
    .line 130
    iput-char v4, p0, Lc1/c;->h:C

    .line 131
    .line 132
    invoke-virtual {p0, v5, v0}, Lc1/c;->g(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string p1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient,as,base,by,checked,delegate,descending,dynamic,event,fixed,foreach,from,group,implicit,in,internal,into,is,let,lock,object,out,override,orderby,params,partial,readonly,ref,sealed,stackalloc,select,unchecked,unsafe,var,virtual,where,namespace,usingAction,Boolean,Byte,Char,DateTime,DateTimeOffset,Decimal,Double,Func,Guid,Int16,Int32,Int64,Object,SByte,Single,String,Task,TimeSpan,UInt16,UInt32,UInt64,bool,decimal,object,sbyte,string,ushort"

    .line 136
    .line 137
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3, v6}, Lc1/c;->g(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_3
    const/4 v1, 0x5

    .line 146
    if-ne p1, v1, :cond_4

    .line 147
    .line 148
    iput v4, p0, Lc1/c;->c:I

    .line 149
    .line 150
    iput v8, p0, Lc1/c;->d:I

    .line 151
    .line 152
    iput v4, p0, Lc1/c;->e:I

    .line 153
    .line 154
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 155
    .line 156
    iput v4, p0, Lc1/c;->g:I

    .line 157
    .line 158
    iput-char v4, p0, Lc1/c;->h:C

    .line 159
    .line 160
    const-string p1, "break,case,chan,const,continue,default,defer,else,fallthrough,for,func,go,goto,if,import,interface,map,package,range,return,select,struct,switch,type,var,bool,byte,complex64,complex128,float32,float64,int8,int16,int32,int64,string,uint8,uint16,uint32,uint64,int,uint,uintptr,error,rune,any,comparable"

    .line 161
    .line 162
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p1, "true,false,nil,iota"

    .line 166
    .line 167
    invoke-virtual {p0, v3, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_4
    if-ne p1, v3, :cond_5

    .line 173
    .line 174
    iput v4, p0, Lc1/c;->c:I

    .line 175
    .line 176
    const/16 p1, 0xb

    .line 177
    .line 178
    iput p1, p0, Lc1/c;->d:I

    .line 179
    .line 180
    iput v4, p0, Lc1/c;->e:I

    .line 181
    .line 182
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 183
    .line 184
    iput v4, p0, Lc1/c;->g:I

    .line 185
    .line 186
    iput-char v4, p0, Lc1/c;->h:C

    .line 187
    .line 188
    invoke-virtual {p0, v5, v0}, Lc1/c;->g(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string p1, "debugger,eval,export,function,get,null,set,undefined,var,with,Infinity,NaN"

    .line 192
    .line 193
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string p1, "true,false,null,undefined,NaN,Infinity"

    .line 197
    .line 198
    invoke-virtual {p0, v3, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_5
    const/4 v0, 0x7

    .line 203
    if-ne p1, v0, :cond_6

    .line 204
    .line 205
    iput v4, p0, Lc1/c;->c:I

    .line 206
    .line 207
    iput v8, p0, Lc1/c;->d:I

    .line 208
    .line 209
    iput v4, p0, Lc1/c;->e:I

    .line 210
    .line 211
    iput-object v7, p0, Lc1/c;->f:Ljava/lang/String;

    .line 212
    .line 213
    iput v4, p0, Lc1/c;->g:I

    .line 214
    .line 215
    iput-char v4, p0, Lc1/c;->h:C

    .line 216
    .line 217
    invoke-virtual {p0, v5, v9}, Lc1/c;->g(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string p1, "abstract,and,array,as,case,catch,class,clone,const,declare,default,elseif,enddeclare,endfor,endforeach,endif,endswitch,endwhile,enum,extends,final,foreach,function,global,goto,implements,interface,instanceof,namespace,new,or,private,protected,public,static,switch,throw,trait,try,use,var,xor,die,echo,empty,exit,eval,include,include_once,isset,list,require,require_once,print,unset,__halt_compiler,self,static,parent,yield,insteadof,finally,readonly,match"

    .line 221
    .line 222
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string p1, "true,false,null,TRUE,FALSE,NULL"

    .line 226
    .line 227
    invoke-virtual {p0, v3, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_6
    const/16 v1, 0x8

    .line 232
    .line 233
    if-ne p1, v1, :cond_7

    .line 234
    .line 235
    iput v5, p0, Lc1/c;->c:I

    .line 236
    .line 237
    iput v8, p0, Lc1/c;->d:I

    .line 238
    .line 239
    iput v4, p0, Lc1/c;->e:I

    .line 240
    .line 241
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 242
    .line 243
    iput v5, p0, Lc1/c;->g:I

    .line 244
    .line 245
    iput-char v4, p0, Lc1/c;->h:C

    .line 246
    .line 247
    invoke-virtual {p0, v5, v9}, Lc1/c;->g(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string p1, "and,as,assert,class,def,del,elif,except,exec,finally,from,global,import,in,is,lambda,nonlocal,not,or,pass,print,raise,try,with,yield,False,True,None"

    .line 251
    .line 252
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_7
    const/16 v1, 0x9

    .line 257
    .line 258
    const-string v6, "true,false"

    .line 259
    .line 260
    if-ne p1, v1, :cond_8

    .line 261
    .line 262
    iput v5, p0, Lc1/c;->c:I

    .line 263
    .line 264
    iput v0, p0, Lc1/c;->d:I

    .line 265
    .line 266
    iput v4, p0, Lc1/c;->e:I

    .line 267
    .line 268
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 269
    .line 270
    iput v5, p0, Lc1/c;->g:I

    .line 271
    .line 272
    iput-char v4, p0, Lc1/c;->h:C

    .line 273
    .line 274
    invoke-virtual {p0, v5, v9}, Lc1/c;->g(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string p1, "alias,and,begin,case,class,def,defined,elsif,end,ensure,in,module,next,nil,not,or,redo,rescue,retry,self,super,then,undef,unless,until,when,yield,BEGIN,END"

    .line 278
    .line 279
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v3, v6}, Lc1/c;->g(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_0

    .line 286
    :cond_8
    const/16 v1, 0xa

    .line 287
    .line 288
    if-ne p1, v1, :cond_9

    .line 289
    .line 290
    iput v5, p0, Lc1/c;->c:I

    .line 291
    .line 292
    iput v0, p0, Lc1/c;->d:I

    .line 293
    .line 294
    iput v4, p0, Lc1/c;->e:I

    .line 295
    .line 296
    iput-object v2, p0, Lc1/c;->f:Ljava/lang/String;

    .line 297
    .line 298
    iput v5, p0, Lc1/c;->g:I

    .line 299
    .line 300
    iput-char v4, p0, Lc1/c;->h:C

    .line 301
    .line 302
    invoke-virtual {p0, v5, v9}, Lc1/c;->g(ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string p1, "case,done,elif,esac,eval,fi,function,in,local,set,then,until"

    .line 306
    .line 307
    invoke-virtual {p0, v5, p1}, Lc1/c;->g(ILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v3, v6}, Lc1/c;->g(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :goto_0
    return-void

    .line 314
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 317
    .line 318
    .line 319
    throw p1
.end method


# virtual methods
.method public final a(BC[CI)B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    if-ne v1, v5, :cond_0

    .line 13
    .line 14
    return v5

    .line 15
    :cond_0
    const/16 v6, 0x8

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-ne v1, v6, :cond_1

    .line 19
    .line 20
    return v7

    .line 21
    :cond_1
    const/4 v8, 0x7

    .line 22
    if-ne v1, v8, :cond_2

    .line 23
    .line 24
    move v1, v7

    .line 25
    :cond_2
    if-lez v4, :cond_3

    .line 26
    .line 27
    add-int/lit8 v9, v4, -0x1

    .line 28
    .line 29
    aget-char v9, v3, v9

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move v9, v7

    .line 33
    :goto_0
    and-int/lit8 v10, v1, 0xf

    .line 34
    .line 35
    const/16 v11, 0x60

    .line 36
    .line 37
    const/16 v12, 0x22

    .line 38
    .line 39
    const/16 v13, 0x27

    .line 40
    .line 41
    const/16 v14, 0x5c

    .line 42
    .line 43
    const/16 v15, 0x2f

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    const/16 v16, 0x40

    .line 47
    .line 48
    if-ne v10, v7, :cond_9

    .line 49
    .line 50
    if-ne v9, v14, :cond_5

    .line 51
    .line 52
    if-lt v4, v7, :cond_4

    .line 53
    .line 54
    sub-int/2addr v4, v7

    .line 55
    aget-char v3, v3, v4

    .line 56
    .line 57
    if-eq v3, v14, :cond_5

    .line 58
    .line 59
    :cond_4
    return v1

    .line 60
    :cond_5
    and-int/lit8 v3, v1, 0x30

    .line 61
    .line 62
    if-ne v2, v12, :cond_6

    .line 63
    .line 64
    if-nez v3, :cond_19

    .line 65
    .line 66
    return v16

    .line 67
    :cond_6
    if-ne v2, v13, :cond_7

    .line 68
    .line 69
    const/16 v2, 0x10

    .line 70
    .line 71
    if-ne v3, v2, :cond_19

    .line 72
    .line 73
    return v16

    .line 74
    :cond_7
    if-ne v2, v11, :cond_8

    .line 75
    .line 76
    const/16 v2, 0x20

    .line 77
    .line 78
    if-ne v3, v2, :cond_19

    .line 79
    .line 80
    return v16

    .line 81
    :cond_8
    if-ne v2, v15, :cond_19

    .line 82
    .line 83
    const/16 v2, 0x30

    .line 84
    .line 85
    if-ne v3, v2, :cond_19

    .line 86
    .line 87
    return v16

    .line 88
    :cond_9
    const/4 v10, 0x3

    .line 89
    if-ne v1, v10, :cond_a

    .line 90
    .line 91
    if-ne v2, v13, :cond_19

    .line 92
    .line 93
    if-eq v9, v14, :cond_19

    .line 94
    .line 95
    return v16

    .line 96
    :cond_a
    iget v14, v0, Lc1/c;->c:I

    .line 97
    .line 98
    if-nez v14, :cond_10

    .line 99
    .line 100
    const/16 v14, 0x2a

    .line 101
    .line 102
    if-ne v9, v14, :cond_b

    .line 103
    .line 104
    if-ne v2, v15, :cond_b

    .line 105
    .line 106
    return v16

    .line 107
    :cond_b
    const/16 v9, 0x15

    .line 108
    .line 109
    if-ne v1, v9, :cond_c

    .line 110
    .line 111
    return v1

    .line 112
    :cond_c
    iget-char v8, v0, Lc1/c;->h:C

    .line 113
    .line 114
    if-ne v2, v8, :cond_d

    .line 115
    .line 116
    return v6

    .line 117
    :cond_d
    if-ne v2, v15, :cond_11

    .line 118
    .line 119
    add-int/lit8 v8, v4, 0x1

    .line 120
    .line 121
    array-length v6, v3

    .line 122
    if-ge v8, v6, :cond_e

    .line 123
    .line 124
    aget-char v6, v3, v8

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_e
    const/4 v6, 0x0

    .line 128
    :goto_1
    if-ne v6, v14, :cond_f

    .line 129
    .line 130
    return v9

    .line 131
    :cond_f
    if-ne v6, v15, :cond_11

    .line 132
    .line 133
    return v5

    .line 134
    :cond_10
    const/16 v6, 0x23

    .line 135
    .line 136
    if-ne v2, v6, :cond_11

    .line 137
    .line 138
    return v5

    .line 139
    :cond_11
    iget-object v5, v0, Lc1/c;->f:Ljava/lang/String;

    .line 140
    .line 141
    const/4 v6, -0x1

    .line 142
    iget v8, v0, Lc1/c;->d:I

    .line 143
    .line 144
    if-ne v2, v12, :cond_12

    .line 145
    .line 146
    and-int/lit8 v3, v8, 0x2

    .line 147
    .line 148
    if-eqz v3, :cond_18

    .line 149
    .line 150
    return v7

    .line 151
    :cond_12
    if-ne v2, v13, :cond_14

    .line 152
    .line 153
    and-int/lit8 v3, v8, 0x1

    .line 154
    .line 155
    if-eqz v3, :cond_13

    .line 156
    .line 157
    const/16 v1, 0x12

    .line 158
    .line 159
    return v1

    .line 160
    :cond_13
    iget v3, v0, Lc1/c;->e:I

    .line 161
    .line 162
    and-int/lit8 v3, v3, 0x1

    .line 163
    .line 164
    if-eqz v3, :cond_18

    .line 165
    .line 166
    return v10

    .line 167
    :cond_14
    if-ne v2, v11, :cond_15

    .line 168
    .line 169
    and-int/lit8 v3, v8, 0x4

    .line 170
    .line 171
    if-eqz v3, :cond_18

    .line 172
    .line 173
    return v12

    .line 174
    :cond_15
    if-ne v2, v15, :cond_18

    .line 175
    .line 176
    const/16 v7, 0x8

    .line 177
    .line 178
    and-int/2addr v7, v8

    .line 179
    if-eqz v7, :cond_18

    .line 180
    .line 181
    add-int/lit8 v4, v4, -0x1

    .line 182
    .line 183
    :goto_2
    if-ltz v4, :cond_18

    .line 184
    .line 185
    aget-char v7, v3, v4

    .line 186
    .line 187
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-nez v8, :cond_17

    .line 192
    .line 193
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-ne v3, v6, :cond_16

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_16
    const/16 v1, 0x32

    .line 201
    .line 202
    return v1

    .line 203
    :cond_17
    add-int/lit8 v4, v4, -0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_18
    :goto_3
    if-nez v1, :cond_19

    .line 207
    .line 208
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eq v2, v6, :cond_19

    .line 213
    .line 214
    const/4 v2, 0x7

    .line 215
    return v2

    .line 216
    :cond_19
    return v1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lc1/c;->a:I

    return v0
.end method

.method public final d(B)B
    .locals 2

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lc1/c;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e(B)B
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public final f([CII)B
    .locals 4

    .line 1
    aget-char v0, p1, p2

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v1, p2

    .line 13
    :goto_0
    if-ge v1, p3, :cond_1

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    aget-char v2, p1, v1

    .line 18
    .line 19
    add-int/2addr v0, v2

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, p0, Lc1/c;->b:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    int-to-byte p1, v0

    .line 32
    return p1

    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    iget v1, p0, Lc1/c;->a:I

    .line 35
    .line 36
    if-ne v1, v0, :cond_3

    .line 37
    .line 38
    sub-int v2, p3, p2

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    if-le v2, v3, :cond_3

    .line 42
    .line 43
    add-int/lit8 v2, p3, -0x2

    .line 44
    .line 45
    aget-char v2, p1, v2

    .line 46
    .line 47
    const/16 v3, 0x5f

    .line 48
    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    add-int/lit8 v2, p3, -0x1

    .line 52
    .line 53
    aget-char v2, p1, v2

    .line 54
    .line 55
    const/16 v3, 0x74

    .line 56
    .line 57
    if-ne v2, v3, :cond_3

    .line 58
    .line 59
    return v0

    .line 60
    :cond_3
    const/16 v2, 0x9

    .line 61
    .line 62
    if-ne v1, v2, :cond_7

    .line 63
    .line 64
    sub-int v1, p3, p2

    .line 65
    .line 66
    const/4 v2, 0x6

    .line 67
    if-ge v1, v2, :cond_7

    .line 68
    .line 69
    aget-char v1, p1, p2

    .line 70
    .line 71
    const/16 v2, 0x69

    .line 72
    .line 73
    if-eq v1, v2, :cond_4

    .line 74
    .line 75
    const/16 v2, 0x75

    .line 76
    .line 77
    if-eq v1, v2, :cond_4

    .line 78
    .line 79
    const/16 v2, 0x66

    .line 80
    .line 81
    if-ne v1, v2, :cond_7

    .line 82
    .line 83
    :cond_4
    add-int/2addr p2, v0

    .line 84
    aget-char p2, p1, p2

    .line 85
    .line 86
    const/16 v1, 0x73

    .line 87
    .line 88
    const/16 v2, 0x39

    .line 89
    .line 90
    const/16 v3, 0x30

    .line 91
    .line 92
    if-eq p2, v1, :cond_5

    .line 93
    .line 94
    if-lt p2, v3, :cond_7

    .line 95
    .line 96
    if-gt p2, v2, :cond_7

    .line 97
    .line 98
    :cond_5
    sub-int/2addr p3, v0

    .line 99
    aget-char p1, p1, p3

    .line 100
    .line 101
    const/16 p2, 0x65

    .line 102
    .line 103
    if-eq p1, p2, :cond_6

    .line 104
    .line 105
    if-lt p1, v3, :cond_7

    .line 106
    .line 107
    if-gt p1, v2, :cond_7

    .line 108
    .line 109
    :cond_6
    return v0

    .line 110
    :cond_7
    const/16 p1, 0xc

    .line 111
    .line 112
    return p1
.end method

.method public final g(ILjava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x2c

    .line 4
    .line 5
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lc1/c;->b:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    if-le v2, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    move v5, v0

    .line 25
    move v6, v5

    .line 26
    :goto_1
    if-ge v5, v4, :cond_0

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x1f

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    add-int/2addr v6, v7

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v3, v6, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ge v1, v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    move v2, v0

    .line 59
    :goto_2
    if-ge v0, v1, :cond_3

    .line 60
    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-int/2addr v2, v4

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    .line 73
    .line 74
    :cond_4
    return-void
.end method
