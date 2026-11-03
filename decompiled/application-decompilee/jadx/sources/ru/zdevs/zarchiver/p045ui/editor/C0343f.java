package ru.zdevs.zarchiver.p045ui.editor;

import java.util.ArrayList;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0343f {
    /* JADX INFO: renamed from: a */
    public static boolean m999a(boolean z2, int[] iArr, int i2) {
        if (!z2) {
            iArr[1] = i2;
            iArr[0] = i2;
        } else {
            if (i2 < iArr[0]) {
                return false;
            }
            iArr[1] = i2;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1000b(C0339b c0339b, boolean z2) {
        int[] iArr = c0339b.f1804g;
        int i2 = iArr[0];
        if (i2 == -1) {
            return false;
        }
        int i3 = iArr[1];
        boolean z3 = (i3 == -1 || i2 == i3) ? false : true;
        if (z2) {
            if (z3) {
                if (i2 > i3) {
                    iArr[1] = i3 - 1;
                    return true;
                }
            } else if (i2 > 0) {
                int i4 = i2 - 1;
                iArr[0] = i4;
                iArr[1] = i4;
                return true;
            }
        } else if (z3) {
            if (i3 < c0339b.f1800c) {
                iArr[1] = i3 + 1;
                return true;
            }
        } else if (i2 < c0339b.f1800c) {
            int i5 = i2 + 1;
            iArr[0] = i5;
            iArr[1] = i5;
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX INFO: renamed from: c */
    public static boolean m1001c(C0339b c0339b, boolean z2) {
        int[] iArr = c0339b.f1804g;
        int i2 = 0;
        int i3 = iArr[0];
        if (i3 == -1) {
            return false;
        }
        int i4 = iArr[1];
        ?? r2 = (i4 == -1 || i3 == i4) ? 0 : 1;
        C0339b.d dVarM966d = c0339b.m966d(c0339b.m968f(iArr[r2]));
        if (dVarM966d == null) {
            return false;
        }
        int i5 = dVarM966d.f1821a;
        if (!z2) {
            i2 = i5 - ((dVarM966d.f1822b & 1) != 0 ? 1 : 0);
        }
        return m999a(r2, iArr, i5 + i2);
    }

    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX INFO: renamed from: d */
    public static boolean m1002d(EditableView editableView, C0339b c0339b, boolean z2) {
        int[] iArr = c0339b.f1804g;
        if (iArr[0] == -1) {
            return false;
        }
        float lineHeight = editableView.getLineHeight();
        if (lineHeight <= 0.0f) {
            return false;
        }
        int height = (int) (editableView.getHeight() / lineHeight);
        int i2 = iArr[1];
        ?? r2 = (i2 == -1 || iArr[0] == i2) ? 0 : 1;
        int iM968f = c0339b.m968f(iArr[r2]);
        if (z2) {
            height = -height;
        }
        int size = iM968f + height;
        if (size < 0) {
            size = 0;
        }
        ArrayList arrayList = c0339b.f1799b;
        if (size >= arrayList.size()) {
            size = arrayList.size() - 1;
        }
        C0339b.d dVarM966d = c0339b.m966d(size);
        if (dVarM966d != null) {
            return m999a(r2, iArr, dVarM966d.f1821a);
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX INFO: renamed from: e */
    public static boolean m1003e(C0339b c0339b, boolean z2) {
        int[] iArr = c0339b.f1804g;
        int i2 = iArr[0];
        if (i2 == -1) {
            return false;
        }
        int i3 = iArr[1];
        ?? r2 = (i3 == -1 || i2 == i3) ? 0 : 1;
        int i4 = iArr[r2];
        int iM968f = c0339b.m968f(i4);
        C0339b.d dVarM966d = c0339b.m966d(iM968f);
        C0339b.d dVarM966d2 = c0339b.m966d(iM968f + (z2 ? -1 : 1));
        if (dVarM966d == null || dVarM966d2 == null) {
            return false;
        }
        int i5 = i4 - dVarM966d.f1821a;
        int i6 = dVarM966d2.f1824d;
        if (i5 >= i6) {
            i5 = i6 - ((dVarM966d2.f1822b & 1) != 0 ? 1 : 0);
        }
        return m999a(r2, iArr, dVarM966d2.f1821a + i5);
    }
}
