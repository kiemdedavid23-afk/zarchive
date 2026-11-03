package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p000a.C0000a;
import p004b.C0015d;
import p007c.C0036a;
import p007c.C0037b;
import p007c.C0038c;
import p007c.C0039d;
import p007c.C0040e;
import p007c.C0042g;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: a */
    public final SparseArray<View> f42a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<C0038c> f43b;

    /* JADX INFO: renamed from: c */
    public final C0039d f44c;

    /* JADX INFO: renamed from: d */
    public boolean f45d;

    /* JADX INFO: renamed from: e */
    public int f46e;

    /* JADX INFO: renamed from: f */
    public int f47f;

    /* JADX INFO: renamed from: g */
    public int f48g;

    /* JADX INFO: renamed from: h */
    public int f49h;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SparseArray<View> sparseArray = new SparseArray<>();
        this.f42a = sparseArray;
        this.f43b = new ArrayList<>(100);
        C0039d c0039d = new C0039d();
        this.f44c = c0039d;
        this.f45d = true;
        this.f46e = -1;
        this.f47f = -1;
        this.f48g = -1;
        this.f49h = -1;
        c0039d.f274E = this;
        sparseArray.put(getId(), this);
    }

    /* JADX INFO: renamed from: a */
    public final C0038c m21a(int i2) {
        View view;
        C0039d c0039d = this.f44c;
        if (i2 == 0 || (view = this.f42a.get(i2)) == this) {
            return c0039d;
        }
        if (view == null) {
            return null;
        }
        return ((C0011a) view.getLayoutParams()).f68S;
    }

    /* JADX INFO: renamed from: b */
    public final C0038c m22b(View view) {
        if (view == this) {
            return this.f44c;
        }
        if (view == null) {
            return null;
        }
        return ((C0011a) view.getLayoutParams()).f68S;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0011a;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0011a();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0011a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            C0011a c0011a = (C0011a) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || c0011a.f60K) {
                C0038c c0038c = c0011a.f68S;
                int i7 = c0038c.f301t + c0038c.f305x;
                int i8 = c0038c.f302u + c0038c.f306y;
                childAt.layout(i7, i8, c0038c.m148e() + i7, c0038c.m147d() + i8);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:102:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:108:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:110:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:112:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:114:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:117:0x020a  */
    /* JADX WARN: Code duplicated, block: B:119:0x0210  */
    /* JADX WARN: Code duplicated, block: B:120:0x0222  */
    /* JADX WARN: Code duplicated, block: B:121:0x0224  */
    /* JADX WARN: Code duplicated, block: B:123:0x022a  */
    /* JADX WARN: Code duplicated, block: B:126:0x023e  */
    /* JADX WARN: Code duplicated, block: B:128:0x024c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:134:0x0288  */
    /* JADX WARN: Code duplicated, block: B:139:0x0294  */
    /* JADX WARN: Code duplicated, block: B:144:0x029f  */
    /* JADX WARN: Code duplicated, block: B:146:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:147:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:150:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:152:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:153:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:156:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:162:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:164:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:165:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:167:0x030a  */
    /* JADX WARN: Code duplicated, block: B:177:0x032b  */
    /* JADX WARN: Code duplicated, block: B:180:0x0335  */
    /* JADX WARN: Code duplicated, block: B:195:0x036e  */
    /* JADX WARN: Code duplicated, block: B:197:0x0378 A[Catch: NumberFormatException -> 0x037d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x037d, blocks: (B:186:0x034f, B:192:0x0362, B:193:0x0368, B:197:0x0378), top: B:281:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:199:0x037d  */
    /* JADX WARN: Code duplicated, block: B:202:0x0382  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:259:0x04cf  */
    /* JADX WARN: Code duplicated, block: B:260:0x04d4  */
    /* JADX WARN: Code duplicated, block: B:263:0x04db  */
    /* JADX WARN: Code duplicated, block: B:33:0x007f  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a2  */
    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList<C0038c> arrayList;
        C0039d c0039d;
        int i9;
        int i10;
        C0039d c0039d2;
        int i11;
        View view;
        int childMeasureSpec;
        int measuredWidth;
        int measuredHeight;
        boolean z2;
        int baseline;
        int baseline2;
        boolean z3;
        int i12;
        int i13;
        ArrayList<C0038c> arrayList2;
        C0039d c0039d3;
        int i14;
        C0038c c0038cM21a;
        C0037b.a aVar;
        C0037b.a aVar2;
        int i15;
        C0038c c0038cM21a2;
        C0038c c0038cM21a3;
        float f2;
        String str;
        int iIndexOf;
        int i16;
        int i17;
        int iIndexOf2;
        String strSubstring;
        float fAbs;
        View view2;
        C0038c c0038cM21a4;
        C0038c c0038cM21a5;
        C0038c c0038cM21a6;
        C0038c c0038cM21a7;
        int i18;
        int i19;
        int i20;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i21 = this.f46e;
        C0039d c0039d4 = this.f44c;
        int i22 = -1;
        if (i21 == -1 || (i18 = this.f47f) == -1 || (i19 = this.f49h) == -1 || (i20 = this.f48g) == -1 || i21 != paddingLeft || i18 != paddingTop || i20 != i2 || i19 != i3) {
            c0039d4.f299r = paddingLeft;
            c0039d4.f300s = paddingTop;
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int size2 = View.MeasureSpec.getSize(i3);
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingRight = getPaddingRight() + getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (mode == Integer.MIN_VALUE) {
                i4 = 2;
                i5 = 0;
            } else {
                if (mode == 0) {
                    i5 = layoutParams.width;
                    if (i5 <= 0) {
                        i4 = 2;
                        i5 = 0;
                    }
                } else if (mode != 1073741824) {
                    i4 = 1;
                    i5 = 0;
                } else {
                    i5 = size - paddingRight;
                }
                i4 = 1;
            }
            if (mode2 == Integer.MIN_VALUE) {
                i6 = 0;
                i7 = 2;
            } else {
                if (mode2 != 0) {
                    i6 = mode2 != 1073741824 ? 0 : size2 - paddingBottom;
                } else {
                    i6 = layoutParams.height;
                    if (i6 <= 0) {
                        i6 = 0;
                        i7 = 2;
                    }
                }
                i7 = 1;
            }
            c0039d4.m155l(i4);
            c0039d4.m159p(i5);
            c0039d4.m158o(i7);
            c0039d4.m153j(i6);
        }
        boolean z4 = this.f45d;
        ArrayList<C0038c> arrayList3 = this.f43b;
        if (z4) {
            this.f45d = false;
            int childCount = getChildCount();
            int i23 = 0;
            while (true) {
                if (i23 >= childCount) {
                    z3 = false;
                    break;
                } else {
                    if (getChildAt(i23).isLayoutRequested()) {
                        z3 = true;
                        break;
                    }
                    i23++;
                }
            }
            if (z3) {
                arrayList3.clear();
                int childCount2 = getChildCount();
                int i24 = 0;
                while (i24 < childCount2) {
                    View childAt = getChildAt(i24);
                    C0038c c0038cM22b = m22b(childAt);
                    if (c0038cM22b == null) {
                        i12 = paddingTop;
                        i13 = childCount2;
                        arrayList2 = arrayList3;
                        c0039d3 = c0039d4;
                    } else {
                        C0011a c0011a = (C0011a) childAt.getLayoutParams();
                        c0038cM22b.mo150g();
                        c0038cM22b.f294m = c0039d4;
                        c0038cM22b.f275F = childAt.getVisibility();
                        c0038cM22b.f274E = childAt;
                        if (!c0011a.f58I || !c0011a.f57H) {
                            arrayList3.add(c0038cM22b);
                        }
                        if (c0011a.f60K) {
                            C0040e c0040e = (C0040e) c0038cM22b;
                            int i25 = c0011a.f69a;
                            if (i25 != i22 && i25 > i22) {
                                c0040e.f316M = -1.0f;
                                c0040e.f317N = i25;
                                c0040e.f318O = i22;
                            }
                            int i26 = c0011a.f70b;
                            if (i26 != i22 && i26 > i22) {
                                c0040e.f316M = -1.0f;
                                c0040e.f317N = i22;
                                c0040e.f318O = i26;
                            }
                            float f3 = c0011a.f71c;
                            if (f3 != -1.0f && f3 > -1.0f) {
                                c0040e.f316M = f3;
                                c0040e.f317N = i22;
                                c0040e.f318O = i22;
                            }
                            i12 = paddingTop;
                            i13 = childCount2;
                            arrayList2 = arrayList3;
                            c0039d3 = c0039d4;
                        } else {
                            int i27 = c0011a.f61L;
                            int i28 = c0011a.f54E;
                            int i29 = c0011a.f79k;
                            int i30 = c0011a.f78j;
                            int i31 = c0011a.f77i;
                            i13 = childCount2;
                            int i32 = c0011a.f76h;
                            arrayList2 = arrayList3;
                            int i33 = c0011a.f55F;
                            int i34 = c0011a.f80l;
                            i12 = paddingTop;
                            if (i27 == -1 && c0011a.f62M == -1 && c0011a.f63N == -1 && c0011a.f64O == -1 && i32 == -1 && i31 == -1 && i30 == -1 && i29 == -1 && i34 == -1 && i28 == -1 && i33 == -1) {
                                c0039d3 = c0039d4;
                            } else {
                                int i35 = c0011a.f62M;
                                int i36 = c0011a.f63N;
                                int i37 = c0011a.f64O;
                                int i38 = c0011a.f65P;
                                int i39 = c0011a.f66Q;
                                float f4 = c0011a.f67R;
                                C0037b.a aVar3 = C0037b.a.f263c;
                                C0037b.a aVar4 = C0037b.a.f261a;
                                c0039d3 = c0039d4;
                                if (i27 != -1) {
                                    C0038c c0038cM21a8 = m21a(i27);
                                    if (c0038cM21a8 != null) {
                                        c0038cM22b.m149f(aVar4, c0038cM21a8, aVar4, ((ViewGroup.MarginLayoutParams) c0011a).leftMargin, i38);
                                    }
                                } else {
                                    if (i35 != -1) {
                                        C0038c c0038cM21a9 = m21a(i35);
                                        if (c0038cM21a9 != null) {
                                            c0038cM22b.m149f(aVar4, c0038cM21a9, aVar3, ((ViewGroup.MarginLayoutParams) c0011a).leftMargin, i38);
                                        }
                                    } else {
                                        i14 = -1;
                                    }
                                    if (i36 != i14) {
                                        c0038cM21a7 = m21a(i36);
                                        if (c0038cM21a7 != null) {
                                            c0038cM22b.m149f(aVar3, c0038cM21a7, aVar4, ((ViewGroup.MarginLayoutParams) c0011a).rightMargin, i39);
                                        }
                                    } else if (i37 != i14 && (c0038cM21a = m21a(i37)) != null) {
                                        c0038cM22b.m149f(aVar3, c0038cM21a, aVar3, ((ViewGroup.MarginLayoutParams) c0011a).rightMargin, i39);
                                    }
                                    aVar = C0037b.a.f264d;
                                    aVar2 = C0037b.a.f262b;
                                    i15 = -1;
                                    if (i32 != -1) {
                                        c0038cM21a6 = m21a(i32);
                                        if (c0038cM21a6 != null) {
                                            c0038cM22b.m149f(aVar2, c0038cM21a6, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).topMargin, c0011a.f86r);
                                        }
                                    } else {
                                        if (i31 != -1) {
                                            c0038cM21a2 = m21a(i31);
                                            if (c0038cM21a2 != null) {
                                                c0038cM22b.m149f(aVar2, c0038cM21a2, aVar, ((ViewGroup.MarginLayoutParams) c0011a).topMargin, c0011a.f86r);
                                            }
                                        }
                                        if (i30 != i15) {
                                            c0038cM21a5 = m21a(i30);
                                            if (c0038cM21a5 != null) {
                                                c0038cM22b.m149f(aVar, c0038cM21a5, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                            }
                                        } else {
                                            if (i29 != i15) {
                                                c0038cM21a3 = m21a(i29);
                                                if (c0038cM21a3 != null) {
                                                    c0038cM22b.m149f(aVar, c0038cM21a3, aVar, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                                }
                                            }
                                            if (i34 != i15) {
                                                view2 = this.f42a.get(i34);
                                                c0038cM21a4 = m21a(i34);
                                                if (c0038cM21a4 != null && view2 != null && (view2.getLayoutParams() instanceof C0011a)) {
                                                    C0011a c0011a2 = (C0011a) view2.getLayoutParams();
                                                    c0011a.f59J = true;
                                                    c0011a2.f59J = true;
                                                    C0037b.a aVar5 = C0037b.a.f265e;
                                                    c0038cM22b.mo146c(aVar5).m139a(c0038cM21a4.mo146c(aVar5), 0, -1, 2, 0, true);
                                                    c0038cM22b.mo146c(aVar2).m141c();
                                                    c0038cM22b.mo146c(aVar).m141c();
                                                }
                                            }
                                            if (f4 >= 0.0f && f4 != 0.5f) {
                                                c0038cM22b.f270A = f4;
                                            }
                                            f2 = c0011a.f92x;
                                            if (f2 >= 0.0f && f2 != 0.5f) {
                                                c0038cM22b.f271B = f2;
                                            }
                                            if (c0011a.f57H) {
                                                c0038cM22b.m155l(1);
                                                c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                            } else {
                                                c0038cM22b.m155l(3);
                                                c0038cM22b.m159p(0);
                                                if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                                    c0038cM22b.m159p(c0039d3.m148e());
                                                }
                                            }
                                            if (c0011a.f58I) {
                                                c0038cM22b.m158o(1);
                                                c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                            } else {
                                                c0038cM22b.m158o(3);
                                                c0038cM22b.m153j(0);
                                                if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                                    c0038cM22b.m159p(c0039d3.m147d());
                                                }
                                            }
                                            if (isInEditMode() && (i28 != -1 || i33 != -1)) {
                                                c0038cM22b.f299r = i28;
                                                c0038cM22b.f300s = i33;
                                            }
                                            str = c0011a.f93y;
                                            if (str != null) {
                                                if (str.length() == 0) {
                                                    c0038cM22b.f297p = 0.0f;
                                                } else {
                                                    int length = str.length();
                                                    iIndexOf = str.indexOf(44);
                                                    if (iIndexOf > 0 || iIndexOf >= length - 1) {
                                                        i16 = 0;
                                                        i17 = -1;
                                                    } else {
                                                        String strSubstring2 = str.substring(0, iIndexOf);
                                                        if (strSubstring2.equalsIgnoreCase("W")) {
                                                            i17 = 0;
                                                        } else {
                                                            i17 = strSubstring2.equalsIgnoreCase("H") ? 1 : -1;
                                                        }
                                                        i16 = iIndexOf + 1;
                                                    }
                                                    iIndexOf2 = str.indexOf(58);
                                                    if (iIndexOf2 >= 0 || iIndexOf2 >= length - 1) {
                                                        strSubstring = str.substring(i16);
                                                        if (strSubstring.length() > 0) {
                                                            fAbs = Float.parseFloat(strSubstring);
                                                        } else {
                                                            fAbs = 0.0f;
                                                        }
                                                    } else {
                                                        String strSubstring3 = str.substring(i16, iIndexOf2);
                                                        String strSubstring4 = str.substring(iIndexOf2 + 1);
                                                        if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                                            fAbs = 0.0f;
                                                        } else {
                                                            try {
                                                                float f5 = Float.parseFloat(strSubstring3);
                                                                float f6 = Float.parseFloat(strSubstring4);
                                                                if (f5 <= 0.0f || f6 <= 0.0f) {
                                                                    fAbs = 0.0f;
                                                                } else {
                                                                    fAbs = i17 == 1 ? Math.abs(f6 / f5) : Math.abs(f5 / f6);
                                                                }
                                                            } catch (NumberFormatException unused) {
                                                            }
                                                        }
                                                    }
                                                    if (fAbs > 0.0f) {
                                                        c0038cM22b.f297p = fAbs;
                                                        c0038cM22b.f298q = i17;
                                                    }
                                                }
                                            }
                                            c0038cM22b.f280K = c0011a.f50A;
                                            c0038cM22b.f281L = c0011a.f51B;
                                            c0038cM22b.f276G = c0011a.f52C;
                                            c0038cM22b.f277H = c0011a.f53D;
                                        }
                                        i15 = -1;
                                        if (i34 != i15) {
                                            view2 = this.f42a.get(i34);
                                            c0038cM21a4 = m21a(i34);
                                            if (c0038cM21a4 != null) {
                                                C0011a c0011a3 = (C0011a) view2.getLayoutParams();
                                                c0011a.f59J = true;
                                                c0011a3.f59J = true;
                                                C0037b.a aVar6 = C0037b.a.f265e;
                                                c0038cM22b.mo146c(aVar6).m139a(c0038cM21a4.mo146c(aVar6), 0, -1, 2, 0, true);
                                                c0038cM22b.mo146c(aVar2).m141c();
                                                c0038cM22b.mo146c(aVar).m141c();
                                            }
                                        }
                                        if (f4 >= 0.0f) {
                                            c0038cM22b.f270A = f4;
                                        }
                                        f2 = c0011a.f92x;
                                        if (f2 >= 0.0f) {
                                            c0038cM22b.f271B = f2;
                                        }
                                        if (c0011a.f57H) {
                                            c0038cM22b.m155l(3);
                                            c0038cM22b.m159p(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                                c0038cM22b.m159p(c0039d3.m148e());
                                            }
                                        } else {
                                            c0038cM22b.m155l(1);
                                            c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                        }
                                        if (c0011a.f58I) {
                                            c0038cM22b.m158o(3);
                                            c0038cM22b.m153j(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                                c0038cM22b.m159p(c0039d3.m147d());
                                            }
                                        } else {
                                            c0038cM22b.m158o(1);
                                            c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                        }
                                        if (isInEditMode()) {
                                            c0038cM22b.f299r = i28;
                                            c0038cM22b.f300s = i33;
                                        }
                                        str = c0011a.f93y;
                                        if (str != null) {
                                            if (str.length() == 0) {
                                                c0038cM22b.f297p = 0.0f;
                                            } else {
                                                int length2 = str.length();
                                                iIndexOf = str.indexOf(44);
                                                if (iIndexOf > 0) {
                                                    i16 = 0;
                                                    i17 = -1;
                                                } else {
                                                    i16 = 0;
                                                    i17 = -1;
                                                }
                                                iIndexOf2 = str.indexOf(58);
                                                if (iIndexOf2 >= 0) {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                } else {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                }
                                                if (fAbs > 0.0f) {
                                                    c0038cM22b.f297p = fAbs;
                                                    c0038cM22b.f298q = i17;
                                                }
                                            }
                                        }
                                        c0038cM22b.f280K = c0011a.f50A;
                                        c0038cM22b.f281L = c0011a.f51B;
                                        c0038cM22b.f276G = c0011a.f52C;
                                        c0038cM22b.f277H = c0011a.f53D;
                                    }
                                    i15 = -1;
                                    if (i30 != i15) {
                                        c0038cM21a5 = m21a(i30);
                                        if (c0038cM21a5 != null) {
                                            c0038cM22b.m149f(aVar, c0038cM21a5, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                        }
                                    } else {
                                        if (i29 != i15) {
                                            c0038cM21a3 = m21a(i29);
                                            if (c0038cM21a3 != null) {
                                                c0038cM22b.m149f(aVar, c0038cM21a3, aVar, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                            }
                                        }
                                        if (i34 != i15) {
                                            view2 = this.f42a.get(i34);
                                            c0038cM21a4 = m21a(i34);
                                            if (c0038cM21a4 != null) {
                                                C0011a c0011a4 = (C0011a) view2.getLayoutParams();
                                                c0011a.f59J = true;
                                                c0011a4.f59J = true;
                                                C0037b.a aVar7 = C0037b.a.f265e;
                                                c0038cM22b.mo146c(aVar7).m139a(c0038cM21a4.mo146c(aVar7), 0, -1, 2, 0, true);
                                                c0038cM22b.mo146c(aVar2).m141c();
                                                c0038cM22b.mo146c(aVar).m141c();
                                            }
                                        }
                                        if (f4 >= 0.0f) {
                                            c0038cM22b.f270A = f4;
                                        }
                                        f2 = c0011a.f92x;
                                        if (f2 >= 0.0f) {
                                            c0038cM22b.f271B = f2;
                                        }
                                        if (c0011a.f57H) {
                                            c0038cM22b.m155l(3);
                                            c0038cM22b.m159p(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                                c0038cM22b.m159p(c0039d3.m148e());
                                            }
                                        } else {
                                            c0038cM22b.m155l(1);
                                            c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                        }
                                        if (c0011a.f58I) {
                                            c0038cM22b.m158o(3);
                                            c0038cM22b.m153j(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                                c0038cM22b.m159p(c0039d3.m147d());
                                            }
                                        } else {
                                            c0038cM22b.m158o(1);
                                            c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                        }
                                        if (isInEditMode()) {
                                            c0038cM22b.f299r = i28;
                                            c0038cM22b.f300s = i33;
                                        }
                                        str = c0011a.f93y;
                                        if (str != null) {
                                            if (str.length() == 0) {
                                                c0038cM22b.f297p = 0.0f;
                                            } else {
                                                int length3 = str.length();
                                                iIndexOf = str.indexOf(44);
                                                if (iIndexOf > 0) {
                                                    i16 = 0;
                                                    i17 = -1;
                                                } else {
                                                    i16 = 0;
                                                    i17 = -1;
                                                }
                                                iIndexOf2 = str.indexOf(58);
                                                if (iIndexOf2 >= 0) {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                } else {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                }
                                                if (fAbs > 0.0f) {
                                                    c0038cM22b.f297p = fAbs;
                                                    c0038cM22b.f298q = i17;
                                                }
                                            }
                                        }
                                        c0038cM22b.f280K = c0011a.f50A;
                                        c0038cM22b.f281L = c0011a.f51B;
                                        c0038cM22b.f276G = c0011a.f52C;
                                        c0038cM22b.f277H = c0011a.f53D;
                                    }
                                    i15 = -1;
                                    if (i34 != i15) {
                                        view2 = this.f42a.get(i34);
                                        c0038cM21a4 = m21a(i34);
                                        if (c0038cM21a4 != null) {
                                            C0011a c0011a5 = (C0011a) view2.getLayoutParams();
                                            c0011a.f59J = true;
                                            c0011a5.f59J = true;
                                            C0037b.a aVar8 = C0037b.a.f265e;
                                            c0038cM22b.mo146c(aVar8).m139a(c0038cM21a4.mo146c(aVar8), 0, -1, 2, 0, true);
                                            c0038cM22b.mo146c(aVar2).m141c();
                                            c0038cM22b.mo146c(aVar).m141c();
                                        }
                                    }
                                    if (f4 >= 0.0f) {
                                        c0038cM22b.f270A = f4;
                                    }
                                    f2 = c0011a.f92x;
                                    if (f2 >= 0.0f) {
                                        c0038cM22b.f271B = f2;
                                    }
                                    if (c0011a.f57H) {
                                        c0038cM22b.m155l(3);
                                        c0038cM22b.m159p(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                            c0038cM22b.m159p(c0039d3.m148e());
                                        }
                                    } else {
                                        c0038cM22b.m155l(1);
                                        c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                    }
                                    if (c0011a.f58I) {
                                        c0038cM22b.m158o(3);
                                        c0038cM22b.m153j(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                            c0038cM22b.m159p(c0039d3.m147d());
                                        }
                                    } else {
                                        c0038cM22b.m158o(1);
                                        c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                    }
                                    if (isInEditMode()) {
                                        c0038cM22b.f299r = i28;
                                        c0038cM22b.f300s = i33;
                                    }
                                    str = c0011a.f93y;
                                    if (str != null) {
                                        if (str.length() == 0) {
                                            c0038cM22b.f297p = 0.0f;
                                        } else {
                                            int length4 = str.length();
                                            iIndexOf = str.indexOf(44);
                                            if (iIndexOf > 0) {
                                                i16 = 0;
                                                i17 = -1;
                                            } else {
                                                i16 = 0;
                                                i17 = -1;
                                            }
                                            iIndexOf2 = str.indexOf(58);
                                            if (iIndexOf2 >= 0) {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            } else {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            }
                                            if (fAbs > 0.0f) {
                                                c0038cM22b.f297p = fAbs;
                                                c0038cM22b.f298q = i17;
                                            }
                                        }
                                    }
                                    c0038cM22b.f280K = c0011a.f50A;
                                    c0038cM22b.f281L = c0011a.f51B;
                                    c0038cM22b.f276G = c0011a.f52C;
                                    c0038cM22b.f277H = c0011a.f53D;
                                }
                                i14 = -1;
                                if (i36 != i14) {
                                    c0038cM21a7 = m21a(i36);
                                    if (c0038cM21a7 != null) {
                                        c0038cM22b.m149f(aVar3, c0038cM21a7, aVar4, ((ViewGroup.MarginLayoutParams) c0011a).rightMargin, i39);
                                    }
                                } else if (i37 != i14) {
                                    c0038cM22b.m149f(aVar3, c0038cM21a, aVar3, ((ViewGroup.MarginLayoutParams) c0011a).rightMargin, i39);
                                }
                                aVar = C0037b.a.f264d;
                                aVar2 = C0037b.a.f262b;
                                i15 = -1;
                                if (i32 != -1) {
                                    c0038cM21a6 = m21a(i32);
                                    if (c0038cM21a6 != null) {
                                        c0038cM22b.m149f(aVar2, c0038cM21a6, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).topMargin, c0011a.f86r);
                                    }
                                } else {
                                    if (i31 != -1) {
                                        c0038cM21a2 = m21a(i31);
                                        if (c0038cM21a2 != null) {
                                            c0038cM22b.m149f(aVar2, c0038cM21a2, aVar, ((ViewGroup.MarginLayoutParams) c0011a).topMargin, c0011a.f86r);
                                        }
                                    }
                                    if (i30 != i15) {
                                        c0038cM21a5 = m21a(i30);
                                        if (c0038cM21a5 != null) {
                                            c0038cM22b.m149f(aVar, c0038cM21a5, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                        }
                                    } else {
                                        if (i29 != i15) {
                                            c0038cM21a3 = m21a(i29);
                                            if (c0038cM21a3 != null) {
                                                c0038cM22b.m149f(aVar, c0038cM21a3, aVar, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                            }
                                        }
                                        if (i34 != i15) {
                                            view2 = this.f42a.get(i34);
                                            c0038cM21a4 = m21a(i34);
                                            if (c0038cM21a4 != null) {
                                                C0011a c0011a6 = (C0011a) view2.getLayoutParams();
                                                c0011a.f59J = true;
                                                c0011a6.f59J = true;
                                                C0037b.a aVar9 = C0037b.a.f265e;
                                                c0038cM22b.mo146c(aVar9).m139a(c0038cM21a4.mo146c(aVar9), 0, -1, 2, 0, true);
                                                c0038cM22b.mo146c(aVar2).m141c();
                                                c0038cM22b.mo146c(aVar).m141c();
                                            }
                                        }
                                        if (f4 >= 0.0f) {
                                            c0038cM22b.f270A = f4;
                                        }
                                        f2 = c0011a.f92x;
                                        if (f2 >= 0.0f) {
                                            c0038cM22b.f271B = f2;
                                        }
                                        if (c0011a.f57H) {
                                            c0038cM22b.m155l(3);
                                            c0038cM22b.m159p(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                                c0038cM22b.m159p(c0039d3.m148e());
                                            }
                                        } else {
                                            c0038cM22b.m155l(1);
                                            c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                        }
                                        if (c0011a.f58I) {
                                            c0038cM22b.m158o(3);
                                            c0038cM22b.m153j(0);
                                            if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                                c0038cM22b.m159p(c0039d3.m147d());
                                            }
                                        } else {
                                            c0038cM22b.m158o(1);
                                            c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                        }
                                        if (isInEditMode()) {
                                            c0038cM22b.f299r = i28;
                                            c0038cM22b.f300s = i33;
                                        }
                                        str = c0011a.f93y;
                                        if (str != null) {
                                            if (str.length() == 0) {
                                                c0038cM22b.f297p = 0.0f;
                                            } else {
                                                int length5 = str.length();
                                                iIndexOf = str.indexOf(44);
                                                if (iIndexOf > 0) {
                                                    i16 = 0;
                                                    i17 = -1;
                                                } else {
                                                    i16 = 0;
                                                    i17 = -1;
                                                }
                                                iIndexOf2 = str.indexOf(58);
                                                if (iIndexOf2 >= 0) {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                } else {
                                                    strSubstring = str.substring(i16);
                                                    if (strSubstring.length() > 0) {
                                                        fAbs = Float.parseFloat(strSubstring);
                                                    } else {
                                                        fAbs = 0.0f;
                                                    }
                                                }
                                                if (fAbs > 0.0f) {
                                                    c0038cM22b.f297p = fAbs;
                                                    c0038cM22b.f298q = i17;
                                                }
                                            }
                                        }
                                        c0038cM22b.f280K = c0011a.f50A;
                                        c0038cM22b.f281L = c0011a.f51B;
                                        c0038cM22b.f276G = c0011a.f52C;
                                        c0038cM22b.f277H = c0011a.f53D;
                                    }
                                    i15 = -1;
                                    if (i34 != i15) {
                                        view2 = this.f42a.get(i34);
                                        c0038cM21a4 = m21a(i34);
                                        if (c0038cM21a4 != null) {
                                            C0011a c0011a7 = (C0011a) view2.getLayoutParams();
                                            c0011a.f59J = true;
                                            c0011a7.f59J = true;
                                            C0037b.a aVar10 = C0037b.a.f265e;
                                            c0038cM22b.mo146c(aVar10).m139a(c0038cM21a4.mo146c(aVar10), 0, -1, 2, 0, true);
                                            c0038cM22b.mo146c(aVar2).m141c();
                                            c0038cM22b.mo146c(aVar).m141c();
                                        }
                                    }
                                    if (f4 >= 0.0f) {
                                        c0038cM22b.f270A = f4;
                                    }
                                    f2 = c0011a.f92x;
                                    if (f2 >= 0.0f) {
                                        c0038cM22b.f271B = f2;
                                    }
                                    if (c0011a.f57H) {
                                        c0038cM22b.m155l(3);
                                        c0038cM22b.m159p(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                            c0038cM22b.m159p(c0039d3.m148e());
                                        }
                                    } else {
                                        c0038cM22b.m155l(1);
                                        c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                    }
                                    if (c0011a.f58I) {
                                        c0038cM22b.m158o(3);
                                        c0038cM22b.m153j(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                            c0038cM22b.m159p(c0039d3.m147d());
                                        }
                                    } else {
                                        c0038cM22b.m158o(1);
                                        c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                    }
                                    if (isInEditMode()) {
                                        c0038cM22b.f299r = i28;
                                        c0038cM22b.f300s = i33;
                                    }
                                    str = c0011a.f93y;
                                    if (str != null) {
                                        if (str.length() == 0) {
                                            c0038cM22b.f297p = 0.0f;
                                        } else {
                                            int length6 = str.length();
                                            iIndexOf = str.indexOf(44);
                                            if (iIndexOf > 0) {
                                                i16 = 0;
                                                i17 = -1;
                                            } else {
                                                i16 = 0;
                                                i17 = -1;
                                            }
                                            iIndexOf2 = str.indexOf(58);
                                            if (iIndexOf2 >= 0) {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            } else {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            }
                                            if (fAbs > 0.0f) {
                                                c0038cM22b.f297p = fAbs;
                                                c0038cM22b.f298q = i17;
                                            }
                                        }
                                    }
                                    c0038cM22b.f280K = c0011a.f50A;
                                    c0038cM22b.f281L = c0011a.f51B;
                                    c0038cM22b.f276G = c0011a.f52C;
                                    c0038cM22b.f277H = c0011a.f53D;
                                }
                                i15 = -1;
                                if (i30 != i15) {
                                    c0038cM21a5 = m21a(i30);
                                    if (c0038cM21a5 != null) {
                                        c0038cM22b.m149f(aVar, c0038cM21a5, aVar2, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                    }
                                } else {
                                    if (i29 != i15) {
                                        c0038cM21a3 = m21a(i29);
                                        if (c0038cM21a3 != null) {
                                            c0038cM22b.m149f(aVar, c0038cM21a3, aVar, ((ViewGroup.MarginLayoutParams) c0011a).bottomMargin, c0011a.f88t);
                                        }
                                    }
                                    if (i34 != i15) {
                                        view2 = this.f42a.get(i34);
                                        c0038cM21a4 = m21a(i34);
                                        if (c0038cM21a4 != null) {
                                            C0011a c0011a8 = (C0011a) view2.getLayoutParams();
                                            c0011a.f59J = true;
                                            c0011a8.f59J = true;
                                            C0037b.a aVar11 = C0037b.a.f265e;
                                            c0038cM22b.mo146c(aVar11).m139a(c0038cM21a4.mo146c(aVar11), 0, -1, 2, 0, true);
                                            c0038cM22b.mo146c(aVar2).m141c();
                                            c0038cM22b.mo146c(aVar).m141c();
                                        }
                                    }
                                    if (f4 >= 0.0f) {
                                        c0038cM22b.f270A = f4;
                                    }
                                    f2 = c0011a.f92x;
                                    if (f2 >= 0.0f) {
                                        c0038cM22b.f271B = f2;
                                    }
                                    if (c0011a.f57H) {
                                        c0038cM22b.m155l(3);
                                        c0038cM22b.m159p(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                            c0038cM22b.m159p(c0039d3.m148e());
                                        }
                                    } else {
                                        c0038cM22b.m155l(1);
                                        c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                    }
                                    if (c0011a.f58I) {
                                        c0038cM22b.m158o(3);
                                        c0038cM22b.m153j(0);
                                        if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                            c0038cM22b.m159p(c0039d3.m147d());
                                        }
                                    } else {
                                        c0038cM22b.m158o(1);
                                        c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                    }
                                    if (isInEditMode()) {
                                        c0038cM22b.f299r = i28;
                                        c0038cM22b.f300s = i33;
                                    }
                                    str = c0011a.f93y;
                                    if (str != null) {
                                        if (str.length() == 0) {
                                            c0038cM22b.f297p = 0.0f;
                                        } else {
                                            int length7 = str.length();
                                            iIndexOf = str.indexOf(44);
                                            if (iIndexOf > 0) {
                                                i16 = 0;
                                                i17 = -1;
                                            } else {
                                                i16 = 0;
                                                i17 = -1;
                                            }
                                            iIndexOf2 = str.indexOf(58);
                                            if (iIndexOf2 >= 0) {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            } else {
                                                strSubstring = str.substring(i16);
                                                if (strSubstring.length() > 0) {
                                                    fAbs = Float.parseFloat(strSubstring);
                                                } else {
                                                    fAbs = 0.0f;
                                                }
                                            }
                                            if (fAbs > 0.0f) {
                                                c0038cM22b.f297p = fAbs;
                                                c0038cM22b.f298q = i17;
                                            }
                                        }
                                    }
                                    c0038cM22b.f280K = c0011a.f50A;
                                    c0038cM22b.f281L = c0011a.f51B;
                                    c0038cM22b.f276G = c0011a.f52C;
                                    c0038cM22b.f277H = c0011a.f53D;
                                }
                                i15 = -1;
                                if (i34 != i15) {
                                    view2 = this.f42a.get(i34);
                                    c0038cM21a4 = m21a(i34);
                                    if (c0038cM21a4 != null) {
                                        C0011a c0011a9 = (C0011a) view2.getLayoutParams();
                                        c0011a.f59J = true;
                                        c0011a9.f59J = true;
                                        C0037b.a aVar12 = C0037b.a.f265e;
                                        c0038cM22b.mo146c(aVar12).m139a(c0038cM21a4.mo146c(aVar12), 0, -1, 2, 0, true);
                                        c0038cM22b.mo146c(aVar2).m141c();
                                        c0038cM22b.mo146c(aVar).m141c();
                                    }
                                }
                                if (f4 >= 0.0f) {
                                    c0038cM22b.f270A = f4;
                                }
                                f2 = c0011a.f92x;
                                if (f2 >= 0.0f) {
                                    c0038cM22b.f271B = f2;
                                }
                                if (c0011a.f57H) {
                                    c0038cM22b.m155l(3);
                                    c0038cM22b.m159p(0);
                                    if (((ViewGroup.MarginLayoutParams) c0011a).width == -1) {
                                        c0038cM22b.m159p(c0039d3.m148e());
                                    }
                                } else {
                                    c0038cM22b.m155l(1);
                                    c0038cM22b.m159p(((ViewGroup.MarginLayoutParams) c0011a).width);
                                }
                                if (c0011a.f58I) {
                                    c0038cM22b.m158o(3);
                                    c0038cM22b.m153j(0);
                                    if (((ViewGroup.MarginLayoutParams) c0011a).height == -1) {
                                        c0038cM22b.m159p(c0039d3.m147d());
                                    }
                                } else {
                                    c0038cM22b.m158o(1);
                                    c0038cM22b.m153j(((ViewGroup.MarginLayoutParams) c0011a).height);
                                }
                                if (isInEditMode()) {
                                    c0038cM22b.f299r = i28;
                                    c0038cM22b.f300s = i33;
                                }
                                str = c0011a.f93y;
                                if (str != null) {
                                    if (str.length() == 0) {
                                        c0038cM22b.f297p = 0.0f;
                                    } else {
                                        int length8 = str.length();
                                        iIndexOf = str.indexOf(44);
                                        if (iIndexOf > 0) {
                                            i16 = 0;
                                            i17 = -1;
                                        } else {
                                            i16 = 0;
                                            i17 = -1;
                                        }
                                        iIndexOf2 = str.indexOf(58);
                                        if (iIndexOf2 >= 0) {
                                            strSubstring = str.substring(i16);
                                            if (strSubstring.length() > 0) {
                                                fAbs = Float.parseFloat(strSubstring);
                                            } else {
                                                fAbs = 0.0f;
                                            }
                                        } else {
                                            strSubstring = str.substring(i16);
                                            if (strSubstring.length() > 0) {
                                                fAbs = Float.parseFloat(strSubstring);
                                            } else {
                                                fAbs = 0.0f;
                                            }
                                        }
                                        if (fAbs > 0.0f) {
                                            c0038cM22b.f297p = fAbs;
                                            c0038cM22b.f298q = i17;
                                        }
                                    }
                                }
                                c0038cM22b.f280K = c0011a.f50A;
                                c0038cM22b.f281L = c0011a.f51B;
                                c0038cM22b.f276G = c0011a.f52C;
                                c0038cM22b.f277H = c0011a.f53D;
                            }
                        }
                    }
                    i24++;
                    childCount2 = i13;
                    arrayList3 = arrayList2;
                    paddingTop = i12;
                    paddingLeft = paddingLeft;
                    c0039d4 = c0039d3;
                    i22 = -1;
                }
            }
            i8 = paddingTop;
            arrayList = arrayList3;
            c0039d = c0039d4;
            i9 = paddingLeft;
        } else {
            i8 = paddingTop;
            arrayList = arrayList3;
            c0039d = c0039d4;
            i9 = paddingLeft;
        }
        this.f46e = i9;
        int i40 = i8;
        this.f47f = i40;
        this.f48g = i2;
        this.f49h = i3;
        int paddingBottom2 = getPaddingBottom() + getPaddingTop();
        int paddingRight2 = getPaddingRight() + getPaddingLeft();
        int childCount3 = getChildCount();
        int i41 = 0;
        while (true) {
            i10 = 8;
            if (i41 >= childCount3) {
                break;
            }
            View childAt2 = getChildAt(i41);
            if (childAt2.getVisibility() != 8) {
                C0011a c0011a10 = (C0011a) childAt2.getLayoutParams();
                C0038c c0038c = c0011a10.f68S;
                if (!c0011a10.f60K) {
                    int measuredWidth2 = ((ViewGroup.MarginLayoutParams) c0011a10).width;
                    int measuredHeight2 = ((ViewGroup.MarginLayoutParams) c0011a10).height;
                    if (c0011a10.f57H || c0011a10.f58I) {
                        childAt2.measure(measuredWidth2 == 0 ? ViewGroup.getChildMeasureSpec(i2, paddingRight2, -2) : ViewGroup.getChildMeasureSpec(i2, paddingRight2, measuredWidth2), measuredHeight2 == 0 ? ViewGroup.getChildMeasureSpec(i3, paddingBottom2, -2) : ViewGroup.getChildMeasureSpec(i3, paddingBottom2, measuredHeight2));
                        measuredWidth2 = childAt2.getMeasuredWidth();
                        measuredHeight2 = childAt2.getMeasuredHeight();
                    }
                    c0038c.m159p(measuredWidth2);
                    c0038c.m153j(measuredHeight2);
                    if (c0011a10.f59J && (baseline2 = childAt2.getBaseline()) != -1) {
                        c0038c.f307z = baseline2;
                    }
                }
            }
            i41++;
        }
        if (getChildCount() > 0) {
            C0036a.f241g = false;
            c0039d2 = c0039d;
            c0039d2.f315U = true;
            c0039d2.mo162s();
        } else {
            c0039d2 = c0039d;
        }
        int size3 = arrayList.size();
        int paddingBottom3 = getPaddingBottom() + i40;
        int paddingRight3 = getPaddingRight() + i9;
        if (size3 > 0) {
            int i42 = 0;
            int iCombineMeasuredStates = 0;
            boolean z5 = false;
            while (i42 < size3) {
                ArrayList<C0038c> arrayList4 = arrayList;
                C0038c c0038c2 = arrayList4.get(i42);
                if (!(c0038c2 instanceof C0040e) && (view = (View) c0038c2.f274E) != null && view.getVisibility() != i10) {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(c0038c2.m148e(), 1073741824);
                    int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(c0038c2.m147d(), 1073741824);
                    C0011a c0011a11 = (C0011a) view.getLayoutParams();
                    int i43 = ((ViewGroup.MarginLayoutParams) c0011a11).width;
                    if (i43 == -2) {
                        iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingRight3, i43);
                    } else {
                        int i44 = ((ViewGroup.MarginLayoutParams) c0011a11).height;
                        if (i44 == -2) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, paddingBottom3, i44);
                        }
                        view.measure(iMakeMeasureSpec, childMeasureSpec);
                        measuredWidth = view.getMeasuredWidth();
                        measuredHeight = view.getMeasuredHeight();
                        if (measuredWidth != c0038c2.m148e()) {
                            c0038c2.m159p(measuredWidth);
                            z2 = true;
                        } else {
                            z2 = z5;
                        }
                        if (measuredHeight != c0038c2.m147d()) {
                            c0038c2.m153j(measuredHeight);
                            z2 = true;
                        }
                        if (c0011a11.f59J && (baseline = view.getBaseline()) != -1 && baseline != c0038c2.f307z) {
                            c0038c2.f307z = baseline;
                            z2 = true;
                        }
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        z5 = z2;
                    }
                    childMeasureSpec = iMakeMeasureSpec2;
                    view.measure(iMakeMeasureSpec, childMeasureSpec);
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    if (measuredWidth != c0038c2.m148e()) {
                        c0038c2.m159p(measuredWidth);
                        z2 = true;
                    } else {
                        z2 = z5;
                    }
                    if (measuredHeight != c0038c2.m147d()) {
                        c0038c2.m153j(measuredHeight);
                        z2 = true;
                    }
                    if (c0011a11.f59J) {
                        c0038c2.f307z = baseline;
                        z2 = true;
                    }
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    z5 = z2;
                }
                i42++;
                arrayList = arrayList4;
                size3 = size3;
                i10 = 8;
            }
            if (z5) {
                C0036a.f241g = false;
                c0039d2.f315U = true;
                c0039d2.mo162s();
            }
            i11 = iCombineMeasuredStates;
        } else {
            i11 = 0;
        }
        setMeasuredDimension(View.resolveSizeAndState(c0039d2.m148e() + paddingRight3, i2, i11) & 16777215, View.resolveSizeAndState(c0039d2.m147d() + paddingBottom3, i3, i11 << 16) & 16777215);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        C0038c c0038cM22b = m22b(view);
        if ((view instanceof C0000a) && !(c0038cM22b instanceof C0040e)) {
            C0011a c0011a = (C0011a) view.getLayoutParams();
            C0040e c0040e = new C0040e();
            c0011a.f68S = c0040e;
            c0011a.f60K = true;
            c0040e.m167s(c0011a.f56G);
            c0038cM22b = c0011a.f68S;
        }
        c0038cM22b.f274E = view;
        this.f42a.put(view.getId(), view);
        C0039d c0039d = this.f44c;
        c0039d.f331M.add(c0038cM22b);
        C0038c c0038c = c0038cM22b.f294m;
        if (c0038c != null) {
            ((C0042g) c0038c).f331M.remove(c0038cM22b);
            c0038cM22b.f294m = null;
        }
        c0038cM22b.f294m = c0039d;
        this.f45d = true;
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f42a.remove(view.getId());
        C0038c c0038cM22b = m22b(view);
        this.f44c.f331M.remove(c0038cM22b);
        c0038cM22b.f294m = null;
        this.f45d = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        super.requestLayout();
        this.f45d = true;
    }

    public void setDebugDirectResolution(boolean z2) {
        this.f44c.f315U = z2;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0011a(layoutParams);
    }

    /* JADX INFO: renamed from: android.support.constraint.ConstraintLayout$a */
    public static class C0011a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: A */
        public final float f50A;

        /* JADX INFO: renamed from: B */
        public final float f51B;

        /* JADX INFO: renamed from: C */
        public final int f52C;

        /* JADX INFO: renamed from: D */
        public final int f53D;

        /* JADX INFO: renamed from: E */
        public final int f54E;

        /* JADX INFO: renamed from: F */
        public final int f55F;

        /* JADX INFO: renamed from: G */
        public final int f56G;

        /* JADX INFO: renamed from: H */
        public boolean f57H;

        /* JADX INFO: renamed from: I */
        public boolean f58I;

        /* JADX INFO: renamed from: J */
        public boolean f59J;

        /* JADX INFO: renamed from: K */
        public boolean f60K;

        /* JADX INFO: renamed from: L */
        public int f61L;

        /* JADX INFO: renamed from: M */
        public int f62M;

        /* JADX INFO: renamed from: N */
        public int f63N;

        /* JADX INFO: renamed from: O */
        public int f64O;

        /* JADX INFO: renamed from: P */
        public int f65P;

        /* JADX INFO: renamed from: Q */
        public int f66Q;

        /* JADX INFO: renamed from: R */
        public float f67R;

        /* JADX INFO: renamed from: S */
        public C0038c f68S;

        /* JADX INFO: renamed from: a */
        public final int f69a;

        /* JADX INFO: renamed from: b */
        public final int f70b;

        /* JADX INFO: renamed from: c */
        public final float f71c;

        /* JADX INFO: renamed from: d */
        public final int f72d;

        /* JADX INFO: renamed from: e */
        public final int f73e;

        /* JADX INFO: renamed from: f */
        public final int f74f;

        /* JADX INFO: renamed from: g */
        public final int f75g;

        /* JADX INFO: renamed from: h */
        public final int f76h;

        /* JADX INFO: renamed from: i */
        public final int f77i;

        /* JADX INFO: renamed from: j */
        public final int f78j;

        /* JADX INFO: renamed from: k */
        public final int f79k;

        /* JADX INFO: renamed from: l */
        public final int f80l;

        /* JADX INFO: renamed from: m */
        public final int f81m;

        /* JADX INFO: renamed from: n */
        public final int f82n;

        /* JADX INFO: renamed from: o */
        public final int f83o;

        /* JADX INFO: renamed from: p */
        public final int f84p;

        /* JADX INFO: renamed from: q */
        public final int f85q;

        /* JADX INFO: renamed from: r */
        public final int f86r;

        /* JADX INFO: renamed from: s */
        public final int f87s;

        /* JADX INFO: renamed from: t */
        public final int f88t;

        /* JADX INFO: renamed from: u */
        public final int f89u;

        /* JADX INFO: renamed from: v */
        public final int f90v;

        /* JADX INFO: renamed from: w */
        public final float f91w;

        /* JADX INFO: renamed from: x */
        public final float f92x;

        /* JADX INFO: renamed from: y */
        public final String f93y;

        /* JADX INFO: renamed from: z */
        public final int f94z;

        public C0011a(Context context, AttributeSet attributeSet) {
            int i2;
            super(context, attributeSet);
            this.f69a = -1;
            this.f70b = -1;
            this.f71c = -1.0f;
            this.f72d = -1;
            this.f73e = -1;
            this.f74f = -1;
            this.f75g = -1;
            this.f76h = -1;
            this.f77i = -1;
            this.f78j = -1;
            this.f79k = -1;
            this.f80l = -1;
            this.f81m = -1;
            this.f82n = -1;
            this.f83o = -1;
            this.f84p = -1;
            this.f85q = -1;
            this.f86r = -1;
            this.f87s = -1;
            this.f88t = -1;
            this.f89u = -1;
            this.f90v = -1;
            this.f91w = 0.5f;
            this.f92x = 0.5f;
            this.f93y = null;
            this.f94z = 1;
            this.f50A = 0.0f;
            this.f51B = 0.0f;
            this.f52C = 0;
            this.f53D = 0;
            this.f54E = -1;
            this.f55F = -1;
            this.f56G = -1;
            this.f57H = true;
            this.f58I = true;
            this.f59J = false;
            this.f60K = false;
            this.f61L = -1;
            this.f62M = -1;
            this.f63N = -1;
            this.f64O = -1;
            this.f65P = -1;
            this.f66Q = -1;
            this.f67R = 0.5f;
            this.f68S = new C0038c();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0015d.f121h);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f72d);
                    this.f72d = resourceId;
                    if (resourceId == -1) {
                        this.f72d = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 17) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f73e);
                    this.f73e = resourceId2;
                    if (resourceId2 == -1) {
                        this.f73e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 19) {
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f74f);
                    this.f74f = resourceId3;
                    if (resourceId3 == -1) {
                        this.f74f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 20) {
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f75g);
                    this.f75g = resourceId4;
                    if (resourceId4 == -1) {
                        this.f75g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 25) {
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f76h);
                    this.f76h = resourceId5;
                    if (resourceId5 == -1) {
                        this.f76h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 24) {
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f77i);
                    this.f77i = resourceId6;
                    if (resourceId6 == -1) {
                        this.f77i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 5) {
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f78j);
                    this.f78j = resourceId7;
                    if (resourceId7 == -1) {
                        this.f78j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 4) {
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f79k);
                    this.f79k = resourceId8;
                    if (resourceId8 == -1) {
                        this.f79k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 2) {
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f80l);
                    this.f80l = resourceId9;
                    if (resourceId9 == -1) {
                        this.f80l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 29) {
                    this.f54E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f54E);
                } else if (index == 30) {
                    this.f55F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f55F);
                } else if (index == 9) {
                    this.f69a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f69a);
                } else if (index == 10) {
                    this.f70b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f70b);
                } else if (index == 11) {
                    this.f71c = typedArrayObtainStyledAttributes.getFloat(index, this.f71c);
                } else if (index == 0) {
                    this.f56G = typedArrayObtainStyledAttributes.getInt(index, this.f56G);
                } else if (index == 21) {
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f81m);
                    this.f81m = resourceId10;
                    if (resourceId10 == -1) {
                        this.f81m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 22) {
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f82n);
                    this.f82n = resourceId11;
                    if (resourceId11 == -1) {
                        this.f82n = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 8) {
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f83o);
                    this.f83o = resourceId12;
                    if (resourceId12 == -1) {
                        this.f83o = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 7) {
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f84p);
                    this.f84p = resourceId13;
                    if (resourceId13 == -1) {
                        this.f84p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == 33) {
                    this.f85q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f85q);
                } else if (index == 36) {
                    this.f86r = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f86r);
                } else if (index == 34) {
                    this.f87s = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f87s);
                } else if (index == 31) {
                    this.f88t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f88t);
                } else if (index == 35) {
                    this.f89u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f89u);
                } else if (index == 32) {
                    this.f90v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f90v);
                } else if (index == 12) {
                    this.f91w = typedArrayObtainStyledAttributes.getFloat(index, this.f91w);
                } else if (index == 26) {
                    this.f92x = typedArrayObtainStyledAttributes.getFloat(index, this.f92x);
                } else if (index == 6) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f93y = string;
                    this.f94z = -1;
                    if (string != null) {
                        int length = string.length();
                        int iIndexOf = string.indexOf(44);
                        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                            i2 = 0;
                        } else {
                            String strSubstring = string.substring(0, iIndexOf);
                            if (strSubstring.equalsIgnoreCase("W")) {
                                this.f94z = 0;
                            } else if (strSubstring.equalsIgnoreCase("H")) {
                                this.f94z = 1;
                            }
                            i2 = iIndexOf + 1;
                        }
                        int iIndexOf2 = string.indexOf(58);
                        if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                            String strSubstring2 = string.substring(i2);
                            if (strSubstring2.length() > 0) {
                                Float.parseFloat(strSubstring2);
                            }
                        } else {
                            String strSubstring3 = string.substring(i2, iIndexOf2);
                            String strSubstring4 = string.substring(iIndexOf2 + 1);
                            if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                try {
                                    float f2 = Float.parseFloat(strSubstring3);
                                    float f3 = Float.parseFloat(strSubstring4);
                                    if (f2 > 0.0f && f3 > 0.0f) {
                                        if (this.f94z == 1) {
                                            Math.abs(f3 / f2);
                                        } else {
                                            Math.abs(f2 / f3);
                                        }
                                    }
                                } catch (NumberFormatException unused) {
                                }
                            }
                        }
                    }
                } else if (index == 14) {
                    this.f50A = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == 28) {
                    this.f51B = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == 13) {
                    this.f52C = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 27) {
                    this.f53D = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index != 15 && index != 23 && index != 18 && index != 3 && index != 1) {
                    Log.w("ConstraintLayout", "Unknown attribute 0x" + Integer.toHexString(index));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f60K = false;
            this.f57H = true;
            this.f58I = true;
            int i4 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i4 == 0 || i4 == -1) {
                this.f57H = false;
            }
            int i5 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i5 == 0 || i5 == -1) {
                this.f58I = false;
            }
            if (this.f71c == -1.0f && this.f69a == -1 && this.f70b == -1) {
                return;
            }
            this.f60K = true;
            this.f57H = true;
            this.f58I = true;
            if (!(this.f68S instanceof C0040e)) {
                this.f68S = new C0040e();
            }
            ((C0040e) this.f68S).m167s(this.f56G);
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public final void resolveLayoutDirection(int i2) {
            super.resolveLayoutDirection(i2);
            this.f63N = -1;
            this.f64O = -1;
            this.f61L = -1;
            this.f62M = -1;
            this.f65P = this.f85q;
            this.f66Q = this.f87s;
            float f2 = this.f91w;
            this.f67R = f2;
            boolean z2 = 1 == getLayoutDirection();
            int i3 = this.f90v;
            int i4 = this.f89u;
            int i5 = this.f84p;
            int i6 = this.f83o;
            int i7 = this.f82n;
            int i8 = this.f81m;
            if (z2) {
                if (i8 != -1) {
                    this.f63N = i8;
                } else if (i7 != -1) {
                    this.f64O = i7;
                }
                if (i6 != -1) {
                    this.f62M = i6;
                }
                if (i5 != -1) {
                    this.f61L = i5;
                }
                if (i4 != -1) {
                    this.f66Q = i4;
                }
                if (i3 != -1) {
                    this.f65P = i3;
                }
                this.f67R = 1.0f - f2;
            } else {
                if (i8 != -1) {
                    this.f62M = i8;
                }
                if (i7 != -1) {
                    this.f61L = i7;
                }
                if (i6 != -1) {
                    this.f63N = i6;
                }
                if (i5 != -1) {
                    this.f64O = i5;
                }
                if (i4 != -1) {
                    this.f65P = i4;
                }
                if (i3 != -1) {
                    this.f66Q = i3;
                }
            }
            if (i6 == -1 && i5 == -1) {
                int i9 = this.f74f;
                if (i9 != -1) {
                    this.f63N = i9;
                } else {
                    int i10 = this.f75g;
                    if (i10 != -1) {
                        this.f64O = i10;
                    }
                }
            }
            if (i7 == -1 && i8 == -1) {
                int i11 = this.f72d;
                if (i11 != -1) {
                    this.f61L = i11;
                    return;
                }
                int i12 = this.f73e;
                if (i12 != -1) {
                    this.f62M = i12;
                }
            }
        }

        public C0011a() {
            super(-2, -2);
            this.f69a = -1;
            this.f70b = -1;
            this.f71c = -1.0f;
            this.f72d = -1;
            this.f73e = -1;
            this.f74f = -1;
            this.f75g = -1;
            this.f76h = -1;
            this.f77i = -1;
            this.f78j = -1;
            this.f79k = -1;
            this.f80l = -1;
            this.f81m = -1;
            this.f82n = -1;
            this.f83o = -1;
            this.f84p = -1;
            this.f85q = -1;
            this.f86r = -1;
            this.f87s = -1;
            this.f88t = -1;
            this.f89u = -1;
            this.f90v = -1;
            this.f91w = 0.5f;
            this.f92x = 0.5f;
            this.f93y = null;
            this.f94z = 1;
            this.f50A = 0.0f;
            this.f51B = 0.0f;
            this.f52C = 0;
            this.f53D = 0;
            this.f54E = -1;
            this.f55F = -1;
            this.f56G = -1;
            this.f57H = true;
            this.f58I = true;
            this.f59J = false;
            this.f60K = false;
            this.f61L = -1;
            this.f62M = -1;
            this.f63N = -1;
            this.f64O = -1;
            this.f65P = -1;
            this.f66Q = -1;
            this.f67R = 0.5f;
            this.f68S = new C0038c();
        }

        public C0011a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f69a = -1;
            this.f70b = -1;
            this.f71c = -1.0f;
            this.f72d = -1;
            this.f73e = -1;
            this.f74f = -1;
            this.f75g = -1;
            this.f76h = -1;
            this.f77i = -1;
            this.f78j = -1;
            this.f79k = -1;
            this.f80l = -1;
            this.f81m = -1;
            this.f82n = -1;
            this.f83o = -1;
            this.f84p = -1;
            this.f85q = -1;
            this.f86r = -1;
            this.f87s = -1;
            this.f88t = -1;
            this.f89u = -1;
            this.f90v = -1;
            this.f91w = 0.5f;
            this.f92x = 0.5f;
            this.f93y = null;
            this.f94z = 1;
            this.f50A = 0.0f;
            this.f51B = 0.0f;
            this.f52C = 0;
            this.f53D = 0;
            this.f54E = -1;
            this.f55F = -1;
            this.f56G = -1;
            this.f57H = true;
            this.f58I = true;
            this.f59J = false;
            this.f60K = false;
            this.f61L = -1;
            this.f62M = -1;
            this.f63N = -1;
            this.f64O = -1;
            this.f65P = -1;
            this.f66Q = -1;
            this.f67R = 0.5f;
            this.f68S = new C0038c();
        }
    }
}
