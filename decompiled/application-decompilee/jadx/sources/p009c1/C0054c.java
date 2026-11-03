package p009c1;

import android.util.SparseIntArray;

/* JADX INFO: renamed from: c1.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0054c extends AbstractC0053b {

    /* JADX INFO: renamed from: a */
    public final int f383a;

    /* JADX INFO: renamed from: b */
    public final SparseIntArray f384b = new SparseIntArray();

    /* JADX INFO: renamed from: c */
    public final int f385c;

    /* JADX INFO: renamed from: d */
    public final int f386d;

    /* JADX INFO: renamed from: e */
    public final int f387e;

    /* JADX INFO: renamed from: f */
    public final String f388f;

    /* JADX INFO: renamed from: g */
    public final int f389g;

    /* JADX INFO: renamed from: h */
    public final char f390h;

    public C0054c(int i2) {
        this.f383a = i2;
        if (i2 == 1) {
            this.f385c = 0;
            this.f386d = 2;
            this.f387e = 1;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 0;
            this.f390h = '#';
            m208g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            m208g(1, "alignof,align_union,asm,axiom,bool,concept,concept_map,const_cast,constexpr,decltype,delegate,dynamic_cast,explicit,export,friend,generic,late_check,mutable,namespace,nullptr,property,reinterpret_cast,static_assert,static_cast,template,typeid,typename,using,virtual,where,DIR,FILE,");
            m208g(6, "true,false,NULL,nullptr");
            return;
        }
        if (i2 == 2) {
            this.f385c = 0;
            this.f386d = 2;
            this.f387e = 1;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 0;
            this.f390h = '@';
            m208g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            m208g(1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient");
            m208g(6, "true,false,null");
            return;
        }
        if (i2 == 3) {
            this.f385c = 0;
            this.f386d = 2;
            this.f387e = 1;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,@";
            this.f389g = 0;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while");
            m208g(1, "abstract,alignof,as,async,await,assert,box,const,crate,copy,dyn,drop,enum,extern,fn,final,fail,impl,in,loop,let,macro,match,mod,move,mut,offsetof,override,priv,proc,pub,pure,ref,self,sizeof,static,struct,super,trait,type,typeof,union,unsafe,unsized,use,virtual,where,yield,isize,usize,str,char,bool");
            m208g(6, "true,false,Some,None,Ok,Err");
            return;
        }
        if (i2 == 4) {
            this.f385c = 0;
            this.f386d = 2;
            this.f387e = 1;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 0;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            m208g(1, "abstract,assert,boolean,byte,extends,final,finally,implements,import,instanceof,interface,null,native,package,strictfp,super,synchronized,throws,transient,as,base,by,checked,delegate,descending,dynamic,event,fixed,foreach,from,group,implicit,in,internal,into,is,let,lock,object,out,override,orderby,params,partial,readonly,ref,sealed,stackalloc,select,unchecked,unsafe,var,virtual,where,namespace,usingAction,Boolean,Byte,Char,DateTime,DateTimeOffset,Decimal,Double,Func,Guid,Int16,Int32,Int64,Object,SByte,Single,String,Task,TimeSpan,UInt16,UInt32,UInt64,bool,decimal,object,sbyte,string,ushort");
            m208g(6, "true,false,null");
            return;
        }
        if (i2 == 5) {
            this.f385c = 0;
            this.f386d = 3;
            this.f387e = 0;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 0;
            this.f390h = (char) 0;
            m208g(1, "break,case,chan,const,continue,default,defer,else,fallthrough,for,func,go,goto,if,import,interface,map,package,range,return,select,struct,switch,type,var,bool,byte,complex64,complex128,float32,float64,int8,int16,int32,int64,string,uint8,uint16,uint32,uint64,int,uint,uintptr,error,rune,any,comparable");
            m208g(6, "true,false,nil,iota");
            return;
        }
        if (i2 == 6) {
            this.f385c = 0;
            this.f386d = 11;
            this.f387e = 0;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 0;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while,auto,case,const,default,enum,extern,goto,inline,register,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,char,double,short,int,long,float,uint,ulong,catch,class,delete,import,new,operator,private,protected,public,this,throw,try,typeof");
            m208g(1, "debugger,eval,export,function,get,null,set,undefined,var,with,Infinity,NaN");
            m208g(6, "true,false,null,undefined,NaN,Infinity");
            return;
        }
        if (i2 == 7) {
            this.f385c = 0;
            this.f386d = 3;
            this.f387e = 0;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,@";
            this.f389g = 0;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while");
            m208g(1, "abstract,and,array,as,case,catch,class,clone,const,declare,default,elseif,enddeclare,endfor,endforeach,endif,endswitch,endwhile,enum,extends,final,foreach,function,global,goto,implements,interface,instanceof,namespace,new,or,private,protected,public,static,switch,throw,trait,try,use,var,xor,die,echo,empty,exit,eval,include,include_once,isset,list,require,require_once,print,unset,__halt_compiler,self,static,parent,yield,insteadof,finally,readonly,match");
            m208g(6, "true,false,null,TRUE,FALSE,NULL");
            return;
        }
        if (i2 == 8) {
            this.f385c = 1;
            this.f386d = 3;
            this.f387e = 0;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 1;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while");
            m208g(1, "and,as,assert,class,def,del,elif,except,exec,finally,from,global,import,in,is,lambda,nonlocal,not,or,pass,print,raise,try,with,yield,False,True,None");
            return;
        }
        if (i2 == 9) {
            this.f385c = 1;
            this.f386d = 7;
            this.f387e = 0;
            this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
            this.f389g = 1;
            this.f390h = (char) 0;
            m208g(1, "break,continue,do,else,for,if,return,while");
            m208g(1, "alias,and,begin,case,class,def,defined,elsif,end,ensure,in,module,next,nil,not,or,redo,rescue,retry,self,super,then,undef,unless,until,when,yield,BEGIN,END");
            m208g(6, "true,false");
            return;
        }
        if (i2 != 10) {
            throw new IllegalArgumentException();
        }
        this.f385c = 1;
        this.f386d = 7;
        this.f387e = 0;
        this.f388f = "+-*/\\=?!{}[]():;|&^%<>.,";
        this.f389g = 1;
        this.f390h = (char) 0;
        m208g(1, "break,continue,do,else,for,if,return,while");
        m208g(1, "case,done,elif,esac,eval,fi,function,in,local,set,then,until");
        m208g(6, "true,false");
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: a */
    public final byte mo202a(byte b2, char c2, char[] cArr, int i2) {
        byte b3 = b2;
        if (b3 == 5) {
            return (byte) 5;
        }
        if (b3 == 8) {
            return (byte) 0;
        }
        if (b3 == 7) {
            b3 = 0;
        }
        char c3 = i2 > 0 ? cArr[i2 - 1] : (char) 0;
        if ((b3 & 15) == 2) {
            if (c3 == '\\' && (i2 < 2 || cArr[i2 - 2] != '\\')) {
                return b3;
            }
            int i3 = b3 & 48;
            if (c2 == '\"') {
                if (i3 == 0) {
                    return (byte) 64;
                }
            } else if (c2 == '\'') {
                if (i3 == 16) {
                    return (byte) 64;
                }
            } else if (c2 != '`') {
                if (c2 == '/' && i3 == 48) {
                    return (byte) 64;
                }
            } else if (i3 == 32) {
                return (byte) 64;
            }
        } else if (b3 != 3) {
            if (this.f385c == 0) {
                if (c3 == '*' && c2 == '/') {
                    return (byte) 64;
                }
                if (b3 == 21) {
                    return b3;
                }
                if (c2 == this.f390h) {
                    return (byte) 8;
                }
                if (c2 == '/') {
                    int i4 = i2 + 1;
                    char c4 = i4 < cArr.length ? cArr[i4] : (char) 0;
                    if (c4 == '*') {
                        return (byte) 21;
                    }
                    if (c4 == '/') {
                        return (byte) 5;
                    }
                }
            } else if (c2 == '#') {
                return (byte) 5;
            }
            String str = this.f388f;
            int i5 = this.f386d;
            if (c2 == '\"') {
                if ((i5 & 2) != 0) {
                    return (byte) 2;
                }
            } else if (c2 == '\'') {
                if ((i5 & 1) != 0) {
                    return (byte) 18;
                }
                if ((this.f387e & 1) != 0) {
                    return (byte) 3;
                }
            } else if (c2 == '`') {
                if ((i5 & 4) != 0) {
                    return (byte) 34;
                }
            } else if (c2 == '/' && (8 & i5) != 0) {
                for (int i6 = i2 - 1; i6 >= 0; i6--) {
                    char c5 = cArr[i6];
                    if (!Character.isWhitespace(c5)) {
                        if (str.indexOf(c5) == -1) {
                            break;
                        }
                        return (byte) 50;
                    }
                }
            }
            if (b3 == 0 && str.indexOf(c2) != -1) {
                return (byte) 7;
            }
        } else if (c2 == '\'' && c3 != '\\') {
            return (byte) 64;
        }
        return b3;
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: c */
    public final int mo203c() {
        return this.f383a;
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: d */
    public final byte mo204d(byte b2) {
        if (b2 == 21) {
            return b2;
        }
        if ((b2 & 15) != 2 || (this.f389g & 1) == 0) {
            return (byte) 0;
        }
        return b2;
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: e */
    public final byte mo205e(byte b2) {
        if (b2 == 7) {
            return (byte) 0;
        }
        return b2;
    }

    @Override // p009c1.AbstractC0053b
    /* JADX INFO: renamed from: f */
    public final byte mo206f(char[] cArr, int i2, int i3) {
        if (Character.isDigit(cArr[i2])) {
            return (byte) 4;
        }
        int i4 = 0;
        for (int i5 = i2; i5 < i3; i5++) {
            i4 = (i4 * 31) + cArr[i5];
        }
        int i6 = this.f384b.get(i4);
        if (i6 != 0) {
            return (byte) i6;
        }
        int i7 = this.f383a;
        if (i7 == 1 && i3 - i2 > 5 && cArr[i3 - 2] == '_' && cArr[i3 - 1] == 't') {
            return (byte) 1;
        }
        if (i7 != 9 || i3 - i2 >= 6) {
            return (byte) 12;
        }
        char c2 = cArr[i2];
        if (c2 != 'i' && c2 != 'u' && c2 != 'f') {
            return (byte) 12;
        }
        char c3 = cArr[i2 + 1];
        if (c3 != 's' && (c3 < '0' || c3 > '9')) {
            return (byte) 12;
        }
        char c4 = cArr[i3 - 1];
        return (c4 == 'e' || (c4 >= '0' && c4 <= '9')) ? (byte) 1 : (byte) 12;
    }

    /* JADX INFO: renamed from: g */
    public final void m208g(int i2, String str) {
        SparseIntArray sparseIntArray;
        int i3 = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i3);
            sparseIntArray = this.f384b;
            if (iIndexOf <= -1) {
                break;
            }
            if (i3 != iIndexOf) {
                String strSubstring = str.substring(i3, iIndexOf);
                int length = strSubstring.length();
                int iCharAt = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    iCharAt = (iCharAt * 31) + strSubstring.charAt(i4);
                }
                sparseIntArray.put(iCharAt, i2);
            }
            i3 = iIndexOf + 1;
        }
        if (i3 < str.length()) {
            String strSubstring2 = str.substring(i3);
            int length2 = strSubstring2.length();
            int iCharAt2 = 0;
            for (int i5 = 0; i5 < length2; i5++) {
                iCharAt2 = (iCharAt2 * 31) + strSubstring2.charAt(i5);
            }
            sparseIntArray.put(iCharAt2, i2);
        }
    }
}
