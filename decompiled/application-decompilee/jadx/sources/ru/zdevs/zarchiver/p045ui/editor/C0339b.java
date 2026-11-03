package ru.zdevs.zarchiver.p045ui.editor;

import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.text.CharacterIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p006b1.C0034e;
import p009c1.AbstractC0053b;
import p009c1.C0052a;
import p009c1.C0054c;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0339b implements Editable {

    /* JADX INFO: renamed from: a */
    public final InterfaceC0342e f1798a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f1799b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public int f1800c = 0;

    /* JADX INFO: renamed from: d */
    public d f1801d = null;

    /* JADX INFO: renamed from: e */
    public boolean f1802e = false;

    /* JADX INFO: renamed from: f */
    public int f1803f = 0;

    /* JADX INFO: renamed from: g */
    public final int[] f1804g = new int[2];

    /* JADX INFO: renamed from: h */
    public final int[] f1805h = new int[2];

    /* JADX INFO: renamed from: i */
    public final e[] f1806i = new e[10];

    /* JADX INFO: renamed from: j */
    public final IdentityHashMap<Object, Integer> f1807j = new IdentityHashMap<>();

    /* JADX INFO: renamed from: k */
    public final AbstractC0338a f1808k;

    /* JADX INFO: renamed from: l */
    public AbstractC0053b f1809l;

    /* JADX INFO: renamed from: m */
    public byte f1810m;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final ArrayList f1811a;

        /* JADX INFO: renamed from: b */
        public final int[] f1812b = new int[2];

        /* JADX INFO: renamed from: c */
        public int f1813c;

        public a(int i2) {
            this.f1811a = new ArrayList(i2);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b$b */
    public static class b implements CharacterIterator {

        /* JADX INFO: renamed from: a */
        public char[] f1814a = new char[0];

        /* JADX INFO: renamed from: d */
        public int f1817d = 0;

        /* JADX INFO: renamed from: b */
        public int f1815b = 0;

        /* JADX INFO: renamed from: c */
        public int f1816c = 0;

        @Override // java.text.CharacterIterator
        public final Object clone() {
            throw new InternalError();
        }

        @Override // java.text.CharacterIterator
        public final char current() {
            int i2 = this.f1817d;
            if (i2 == this.f1816c) {
                return (char) 65535;
            }
            return this.f1814a[i2];
        }

        @Override // java.text.CharacterIterator
        public final char first() {
            this.f1817d = this.f1815b;
            return current();
        }

        @Override // java.text.CharacterIterator
        public final int getBeginIndex() {
            return this.f1815b;
        }

        @Override // java.text.CharacterIterator
        public final int getEndIndex() {
            return this.f1816c;
        }

        @Override // java.text.CharacterIterator
        public final int getIndex() {
            return this.f1817d;
        }

        @Override // java.text.CharacterIterator
        public final char last() {
            int i2 = this.f1815b;
            int i3 = this.f1816c;
            if (i2 == i3) {
                this.f1817d = i3;
                return (char) 65535;
            }
            int i4 = i3 - 1;
            this.f1817d = i4;
            return this.f1814a[i4];
        }

        @Override // java.text.CharacterIterator
        public final char next() {
            int i2 = this.f1817d + 1;
            this.f1817d = i2;
            int i3 = this.f1816c;
            if (i2 < i3) {
                return this.f1814a[i2];
            }
            this.f1817d = i3;
            return (char) 65535;
        }

        @Override // java.text.CharacterIterator
        public final char previous() {
            int i2 = this.f1817d;
            if (i2 <= this.f1815b) {
                return (char) 65535;
            }
            char[] cArr = this.f1814a;
            int i3 = i2 - 1;
            this.f1817d = i3;
            return cArr[i3];
        }

        @Override // java.text.CharacterIterator
        public final char setIndex(int i2) {
            if (this.f1815b > i2 || i2 > this.f1816c) {
                throw new IllegalArgumentException("invalid position");
            }
            this.f1817d = i2;
            return current();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b$c */
    public static class c implements CharSequence {

        /* JADX INFO: renamed from: a */
        public final char[] f1818a;

        /* JADX INFO: renamed from: b */
        public final int f1819b;

        /* JADX INFO: renamed from: c */
        public final int f1820c;

        public c(char[] cArr, int i2, int i3) {
            this.f1818a = cArr;
            this.f1819b = i2;
            this.f1820c = i3;
        }

        @Override // java.lang.CharSequence
        public final char charAt(int i2) {
            C0339b.m962a(i2, this.f1820c);
            return this.f1818a[this.f1819b + i2];
        }

        @Override // java.lang.CharSequence
        public final int length() {
            return this.f1820c;
        }

        @Override // java.lang.CharSequence
        public final CharSequence subSequence(int i2, int i3) {
            C0339b.m963b(i2, i3, this.f1820c, "subSequence");
            return new c(this.f1818a, this.f1819b + i2, i3 - i2);
        }

        @Override // java.lang.CharSequence
        public final String toString() {
            return new String(this.f1818a, this.f1819b, this.f1820c);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b$e */
    public static class e {

        /* JADX INFO: renamed from: a */
        public final Object f1830a;

        /* JADX INFO: renamed from: b */
        public int f1831b;

        /* JADX INFO: renamed from: c */
        public int f1832c;

        /* JADX INFO: renamed from: d */
        public int f1833d;

        public e(Object obj, int i2, int i3, int i4) {
            this.f1830a = obj;
            this.f1831b = i2;
            this.f1832c = i3;
            this.f1833d = i4;
        }
    }

    public C0339b(InterfaceC0342e interfaceC0342e) {
        this.f1798a = interfaceC0342e;
        if (Build.VERSION.SDK_INT < 24) {
            this.f1808k = new AbstractC0338a.b();
        } else {
            this.f1808k = new AbstractC0338a.a();
        }
        this.f1810m = (byte) 0;
    }

    /* JADX INFO: renamed from: a */
    public static void m962a(int i2, int i3) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("charAt: " + i2 + " < 0");
        }
        if (i2 < i3) {
            return;
        }
        throw new IndexOutOfBoundsException("charAt: " + i2 + " >= length " + i3);
    }

    /* JADX INFO: renamed from: b */
    public static void m963b(int i2, int i3, int i4, String str) {
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") has end before start");
        }
        if (i2 > i4 || i3 > i4) {
            throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") ends beyond length " + i4);
        }
        if (i2 >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") starts before 0");
    }

    /* JADX INFO: renamed from: c */
    public static int m964c(d dVar, int i2, int i3, char c2) {
        int i4 = i2;
        while (true) {
            if (i4 >= 0 && i4 < dVar.f1824d) {
                char c3 = dVar.f1823c[i4];
                if ((c2 == 0 && !Character.isLetter(c3) && !Character.isDigit(c3) && c3 != '-' && c3 != '_') || (c2 != 0 && c2 != c3)) {
                    break;
                }
                i4 += i3;
            } else {
                return Math.max(i4, 0);
            }
        }
        return (i3 != -1 || i4 >= i2) ? i4 : i4 + 1;
    }

    /* JADX INFO: renamed from: m */
    public static int m965m(Object obj) {
        if (obj == Selection.SELECTION_START) {
            return 0;
        }
        return obj == Selection.SELECTION_END ? 1 : -1;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(char c2) {
        append(c2);
        return this;
    }

    @Override // java.lang.CharSequence
    public final synchronized char charAt(int i2) {
        d dVar;
        m962a(i2, this.f1800c);
        d dVar2 = this.f1801d;
        if (dVar2 == null || !dVar2.m983d(i2)) {
            int iM968f = m968f(i2);
            d dVarM966d = m966d(iM968f);
            this.f1801d = dVarM966d;
            if (dVarM966d == null) {
                throw new IndexOutOfBoundsException("charAt: line " + iM968f + " not found");
            }
        }
        dVar = this.f1801d;
        return dVar.f1823c[i2 - dVar.f1821a];
    }

    @Override // android.text.Editable
    public final synchronized void clear() {
        this.f1799b.clear();
        this.f1800c = 0;
        m973k(0, 0);
        clearSpans();
        m978q(0, false, false, false);
    }

    @Override // android.text.Editable
    public final void clearSpans() {
        int[] iArr = this.f1804g;
        boolean z2 = iArr[0] != -1;
        iArr[1] = -1;
        iArr[0] = -1;
        this.f1807j.clear();
        Arrays.fill(this.f1806i, (Object) null);
        if (z2) {
            m975n(1);
        }
    }

    /* JADX INFO: renamed from: d */
    public final synchronized d m966d(int i2) {
        if (i2 >= 0) {
            if (i2 < this.f1799b.size()) {
                return (d) this.f1799b.get(i2);
            }
        }
        return null;
    }

    @Override // android.text.Editable
    public final Editable delete(int i2, int i3) {
        replace(i2, i3, "", 0, 0);
        return this;
    }

    /* JADX INFO: renamed from: e */
    public final synchronized d m967e(int i2, int i3) {
        if (i2 < this.f1799b.size()) {
            return (d) this.f1799b.get(i2);
        }
        if (i3 >= 0) {
            return m973k(i2, i3);
        }
        return new d(0, 0);
    }

    /* JADX INFO: renamed from: f */
    public final synchronized int m968f(int i2) {
        int i3;
        Iterator it = this.f1799b.iterator();
        i3 = 0;
        while (it.hasNext() && !((d) it.next()).m983d(i2)) {
            i3++;
        }
        return i3;
    }

    /* JADX INFO: renamed from: g */
    public final synchronized int m969g(int i2, int[] iArr) {
        int i3;
        Iterator it = this.f1799b.iterator();
        int i4 = 0;
        i3 = 0;
        while (it.hasNext()) {
            int i5 = ((d) it.next()).f1825e;
            i4 += i5;
            if (i2 < i4) {
                if (iArr == null) {
                    break;
                }
                iArr[0] = (i2 + i5) - i4;
                break;
            }
            i3++;
        }
        return i3;
    }

    @Override // android.text.GetChars
    public final synchronized void getChars(int i2, int i3, char[] cArr, int i4) {
        int i5;
        m963b(i2, i3, this.f1800c, "getChars");
        int iM968f = m968f(i2);
        int iM968f2 = m968f(i3 - 1);
        if (iM968f == iM968f2) {
            d dVarM967e = m967e(iM968f, -1);
            System.arraycopy(dVarM967e.f1823c, i2 - dVarM967e.f1821a, cArr, i4, i3 - i2);
        } else {
            for (int i6 = iM968f; i6 <= iM968f2; i6++) {
                d dVarM967e2 = m967e(i6, -1);
                if (i6 == iM968f) {
                    int i7 = i2 - dVarM967e2.f1821a;
                    i5 = dVarM967e2.f1824d - i7;
                    System.arraycopy(dVarM967e2.f1823c, i7, cArr, i4, i5);
                } else if (i6 == iM968f2) {
                    i5 = i3 - dVarM967e2.f1821a;
                    System.arraycopy(dVarM967e2.f1823c, 0, cArr, i4, i5);
                } else {
                    i5 = dVarM967e2.f1824d;
                    System.arraycopy(dVarM967e2.f1823c, 0, cArr, i4, i5);
                }
                i4 += i5;
            }
        }
    }

    @Override // android.text.Editable
    public final InputFilter[] getFilters() {
        return new InputFilter[0];
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        int iM965m = m965m(obj);
        if (iM965m >= 0) {
            return this.f1804g[iM965m];
        }
        e eVarM970h = m970h(obj);
        if (eVarM970h == null) {
            return -1;
        }
        return eVarM970h.f1832c;
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        int iM965m = m965m(obj);
        if (iM965m >= 0) {
            return this.f1805h[iM965m];
        }
        e eVarM970h = m970h(obj);
        if (eVarM970h == null) {
            return 0;
        }
        return eVarM970h.f1833d;
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        int iM965m = m965m(obj);
        if (iM965m >= 0) {
            return this.f1804g[iM965m];
        }
        e eVarM970h = m970h(obj);
        if (eVarM970h == null) {
            return -1;
        }
        return eVarM970h.f1831b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        if (cls != null) {
            int i4 = 2;
            int i5 = Object.class == cls ? 2 : 0;
            e[] eVarArr = this.f1806i;
            for (e eVar : eVarArr) {
                if (eVar != null && (Object.class == cls || cls.isInstance(eVar.f1830a))) {
                    i5++;
                }
            }
            if (i5 > 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i5));
                if (Object.class == cls) {
                    tArr[0] = Selection.SELECTION_START;
                    tArr[1] = Selection.SELECTION_END;
                } else {
                    i4 = 0;
                }
                for (e eVar2 : eVarArr) {
                    if (eVar2 != null) {
                        Object obj = eVar2.f1830a;
                        if (Object.class == cls || cls.isInstance(obj)) {
                            tArr[i4] = obj;
                            i4++;
                        }
                    }
                }
                return tArr;
            }
        }
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 0));
    }

    /* JADX INFO: renamed from: h */
    public final e m970h(Object obj) {
        Integer num = this.f1807j.get(obj);
        if (num == null) {
            return null;
        }
        return this.f1806i[num.intValue()];
    }

    /* JADX INFO: renamed from: i */
    public final synchronized CharSequence m971i(int i2) {
        int iMin;
        int i3;
        int i4 = this.f1804g[0];
        if (i4 >= 0 && i2 != 0) {
            d dVarM966d = m966d(m968f(i4));
            if (dVarM966d == null) {
                return "";
            }
            if (i2 > 0) {
                i3 = i4 - dVarM966d.f1821a;
                iMin = Math.min(i2, dVarM966d.f1824d - i3);
            } else {
                int i5 = i4 - dVarM966d.f1821a;
                iMin = Math.min(i5, -i2);
                i3 = i5 - iMin;
            }
            if (iMin <= 0) {
                return "";
            }
            return new c(dVarM966d.f1823c, i3, iMin);
        }
        return "";
    }

    @Override // android.text.Editable
    public final Editable insert(int i2, CharSequence charSequence, int i3, int i4) {
        replace(i2, i2, charSequence, i3, i4);
        return this;
    }

    /* JADX INFO: renamed from: j */
    public final synchronized int[] m972j(int i2) {
        int i3;
        d dVarM966d = m966d(m968f(i2));
        if (dVarM966d == null) {
            return new int[]{i2, i2};
        }
        int i4 = i2 - dVarM966d.f1821a;
        int iM964c = m964c(dVarM966d, i4, -1, (char) 0);
        int iM964c2 = m964c(dVarM966d, i4, 1, (char) 0);
        if (iM964c == i4 && iM964c2 == i4 && (i3 = dVarM966d.f1824d - (dVarM966d.f1822b & 1)) > 0) {
            if (i4 + 1 > i3) {
                i4--;
            }
            char c2 = dVarM966d.f1823c[i4];
            int iM964c3 = m964c(dVarM966d, i4, -1, c2);
            iM964c2 = m964c(dVarM966d, i4, 1, c2);
            iM964c = iM964c3;
        }
        int i5 = dVarM966d.f1821a;
        return new int[]{iM964c + i5, i5 + iM964c2};
    }

    /* JADX INFO: renamed from: k */
    public final synchronized d m973k(int i2, int i3) {
        d dVar;
        dVar = new d(i3, 0);
        if (i2 == this.f1799b.size()) {
            this.f1799b.add(dVar);
            dVar.f1821a = this.f1800c;
        } else {
            this.f1799b.add(i2, dVar);
        }
        return dVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    /* JADX INFO: renamed from: l */
    public final void m974l(CharSequence charSequence, int i2, int i3, int i4) {
        char[] cArr;
        int i5;
        char cCharAt;
        do {
            int i6 = i3;
            do {
                if (i6 >= i4) {
                    i6 = -1;
                    break;
                } else {
                    cCharAt = charSequence.charAt(i6);
                    i6++;
                }
            } while (cCharAt != '\n');
            if (i6 != -1) {
                int i7 = i6 - i3;
                d dVarM973k = m973k(i2, i7);
                TextUtils.getChars(charSequence, i3, i6, dVarM973k.f1823c, 0);
                dVarM973k.f1824d = i7;
                dVarM973k.m988i(dVarM973k.f1823c[i7 - 1] == '\n');
                i2++;
                i3 = i6;
            } else {
                int i8 = i4 - i3;
                d dVarM967e = m967e(i2, i8);
                int i9 = dVarM967e.f1824d;
                if (i9 <= 0) {
                    char[] cArr2 = dVarM967e.f1823c;
                    if (cArr2.length < i8) {
                        cArr = new char[i9 + i8 + 10];
                        TextUtils.getChars(charSequence, i3, i4, cArr, 0);
                        i5 = dVarM967e.f1824d;
                        if (i5 > 0) {
                            System.arraycopy(dVarM967e.f1823c, 0, cArr, i8, i5);
                        }
                        dVarM967e.f1823c = cArr;
                        dVarM967e.f1824d += i8;
                    } else {
                        TextUtils.getChars(charSequence, i3, i4, cArr2, 0);
                        dVarM967e.f1824d = i8;
                    }
                } else {
                    cArr = new char[i9 + i8 + 10];
                    TextUtils.getChars(charSequence, i3, i4, cArr, 0);
                    i5 = dVarM967e.f1824d;
                    if (i5 > 0) {
                        System.arraycopy(dVarM967e.f1823c, 0, cArr, i8, i5);
                    }
                    dVarM967e.f1823c = cArr;
                    dVarM967e.f1824d += i8;
                }
                dVarM967e.m988i(dVarM967e.f1823c[dVarM967e.f1824d - 1] == '\n');
                dVarM967e.f1828h = null;
                dVarM967e.f1825e = 0;
                i3 = i4;
            }
        } while (i3 < i4);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f1800c;
    }

    /* JADX INFO: renamed from: n */
    public final void m975n(int i2) {
        if (this.f1802e) {
            this.f1803f = i2 | this.f1803f;
        } else {
            ((EditableView) this.f1798a).m949m(i2);
        }
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i2, int i3, Class cls) {
        return i3;
    }

    /* JADX INFO: renamed from: o */
    public final void m976o(StringBuilder sb) {
        d dVar = new d(sb, sb.length());
        dVar.f1821a = this.f1800c;
        synchronized (this.f1808k) {
            this.f1810m = dVar.m985f(this.f1808k, this.f1809l, this.f1810m, false);
        }
        ((EditableView) this.f1798a).m948l(dVar);
        synchronized (this) {
            if (this.f1800c == 0 && !this.f1799b.isEmpty()) {
                this.f1799b.clear();
            }
            this.f1799b.add(dVar);
        }
        this.f1800c += dVar.f1824d;
    }

    /* JADX INFO: renamed from: p */
    public final boolean m977p(int i2) {
        AbstractC0053b c0052a;
        if (i2 > 0) {
            AbstractC0053b abstractC0053b = this.f1809l;
            if (abstractC0053b != null && abstractC0053b.mo203c() == i2) {
                return false;
            }
            if (i2 == 11) {
                c0052a = new C0052a(i2, 1);
            } else {
                c0052a = (i2 == 12 || i2 == 13) ? new C0052a(i2, 0) : new C0054c(i2);
            }
            this.f1809l = c0052a;
        } else {
            if (this.f1809l == null) {
                return false;
            }
            this.f1809l = null;
        }
        AbstractC0053b abstractC0053b2 = this.f1809l;
        this.f1810m = abstractC0053b2 != null ? abstractC0053b2.mo204d((byte) 0) : (byte) 0;
        m979r(true, false, false);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002e  */
    /* JADX INFO: renamed from: q */
    public final synchronized void m978q(int i2, boolean z2, boolean z3, boolean z4) {
        byte bM985f;
        int i3;
        byte[] bArr;
        byte[] bArr2;
        try {
            int size = this.f1799b.size();
            if (i2 >= size) {
                return;
            }
            AbstractC0053b abstractC0053b = this.f1809l;
            int i4 = 0;
            b = 0;
            b = 0;
            byte b2 = 0;
            if (abstractC0053b == null) {
                bM985f = 0;
            } else if (i2 > 0) {
                d dVar = (d) this.f1799b.get(i2 - 1);
                int i5 = dVar.f1827g;
                if (i5 <= 0 || (bArr2 = dVar.f1829i) == null) {
                    bM985f = 0;
                } else {
                    bM985f = bArr2[i5 - 1];
                }
            } else {
                bM985f = abstractC0053b.mo204d((byte) 0);
            }
            if (i2 >= 0) {
                d dVar2 = (d) this.f1799b.get(i2);
                synchronized (this.f1808k) {
                    AbstractC0053b abstractC0053b2 = this.f1809l;
                    if (abstractC0053b2 != null && (i3 = dVar2.f1827g) > 0 && (bArr = dVar2.f1829i) != null) {
                        b2 = bArr[i3 - 1];
                    }
                    bM985f = dVar2.m985f(this.f1808k, abstractC0053b2, bM985f, z4);
                    if (b2 != bM985f) {
                        z2 = true;
                    }
                }
                ((EditableView) this.f1798a).m948l(dVar2);
                i4 = dVar2.f1821a + dVar2.f1824d;
            }
            for (int i6 = i2 + 1; i6 < size; i6++) {
                d dVar3 = (d) this.f1799b.get(i6);
                dVar3.f1821a = i4;
                i4 += dVar3.f1824d;
                if (dVar3.f1828h == null || z2) {
                    synchronized (this.f1808k) {
                        bM985f = dVar3.m985f(this.f1808k, this.f1809l, bM985f, z4);
                    }
                }
                if (dVar3.f1825e == 0 || z3) {
                    ((EditableView) this.f1798a).m948l(dVar3);
                }
            }
            this.f1810m = bM985f;
            this.f1800c = i4;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: r */
    public final synchronized void m979r(boolean z2, boolean z3, boolean z4) {
        if (this.f1800c != 0) {
            if (z4) {
                synchronized (this.f1808k) {
                    int size = this.f1799b.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        d dVar = (d) this.f1799b.get(i2);
                        for (int i3 = 0; i3 < dVar.f1827g; i3++) {
                            int[] iArr = dVar.f1828h;
                            iArr[i3] = iArr[i3] & 8388607;
                        }
                    }
                }
            }
            m978q(-1, z2, z3 || z4, !z4);
        }
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        int iM965m = m965m(obj);
        if (iM965m >= 0) {
            this.f1804g[iM965m] = -1;
            if (iM965m == 1) {
                m975n(1);
                return;
            }
            return;
        }
        Integer numRemove = this.f1807j.remove(obj);
        if (numRemove != null) {
            this.f1806i[numRemove.intValue()] = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x018b  */
    /* JADX WARN: Code duplicated, block: B:102:0x018e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0195 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:113:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0157 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:113:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0172 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:113:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:98:0x017f A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:113:0x000d }] */
    /* JADX WARN: Instruction removed from duplicated block: B:96:0x0172, please report this as an issue */
    @Override // android.text.Editable
    public final synchronized Editable replace(int i2, int i3, CharSequence charSequence, int i4, int i5) {
        boolean z2;
        int i6;
        int i7;
        int[] iArr;
        Spanned spanned;
        int i8;
        int spanStart;
        int spanEnd;
        char cCharAt;
        Objects.toString(charSequence.subSequence(i4, i5));
        int i9 = i3 - i2;
        int i10 = i5 - i4;
        if (i9 == 0 && i10 == 0) {
            return this;
        }
        int iM968f = m968f(i2);
        int iM968f2 = i2 == i3 ? iM968f : m968f(i3);
        int i11 = i4;
        do {
            if (i11 >= i5) {
                i11 = -1;
                break;
            }
            cCharAt = charSequence.charAt(i11);
            i11++;
        } while (cCharAt != '\n');
        int i12 = (i11 == -1 ? i5 : i11) - i4;
        d dVarM967e = m967e(iM968f, i12);
        d dVarM967e2 = iM968f == iM968f2 ? dVarM967e : m967e(iM968f2, 0);
        int i13 = i2 - dVarM967e.f1821a;
        int i14 = i3 - dVarM967e2.f1821a;
        if (i11 != -1) {
            int i15 = dVarM967e2.f1824d;
            if (i14 == i15) {
                dVarM967e2.m988i(true);
                if (iM968f2 == this.f1799b.size() - 1) {
                    m973k(iM968f2 + 1, 10);
                }
                z2 = true;
            } else {
                int i16 = i15 - i14;
                d dVarM973k = m973k(iM968f2 + 1, i16);
                dVarM973k.f1824d = i16;
                dVarM973k.m988i(true);
                System.arraycopy(dVarM967e2.f1823c, i14, dVarM973k.f1823c, 0, dVarM973k.f1824d);
                z2 = false;
            }
            m975n(4);
        } else {
            i9 = i9;
            i10 = i10;
            z2 = true;
        }
        int i17 = i13 + i12;
        int i18 = (z2 ? dVarM967e2.f1824d - i14 : 0) + i17;
        char[] cArr = dVarM967e.f1823c;
        if (cArr.length < i18) {
            char[] cArr2 = new char[i18 + 10];
            if (i13 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i13);
            }
            TextUtils.getChars(charSequence, i4, i12, cArr2, i13);
            if (z2) {
                System.arraycopy(dVarM967e2.f1823c, i14, cArr2, i17, dVarM967e2.f1824d - i14);
            }
            dVarM967e.f1823c = cArr2;
        } else {
            i11 = i11;
            if (z2) {
                System.arraycopy(dVarM967e2.f1823c, i14, cArr, i17, dVarM967e2.f1824d - i14);
            }
            TextUtils.getChars(charSequence, i4, i12, dVarM967e.f1823c, i13);
        }
        dVarM967e.f1824d = i18;
        dVarM967e.m988i(i18 > 0 && dVarM967e.f1823c[i18 - 1] == '\n');
        if (dVarM967e != dVarM967e2) {
            int i19 = dVarM967e2.f1824d;
            dVarM967e2.m988i(i19 > 0 && dVarM967e2.f1823c[i19 - 1] == '\n');
        }
        if (iM968f < iM968f2 && iM968f2 < this.f1799b.size()) {
            List listSubList = this.f1799b.subList(iM968f + 1, iM968f2 + 1);
            if (!listSubList.isEmpty()) {
                listSubList.clear();
                m975n(4);
            }
        }
        int i20 = i11;
        if (i20 != -1) {
            i6 = i5;
            if (i20 + 1 < i6) {
                m974l(charSequence, iM968f + 1, i20, i6);
                m975n(4);
            }
        } else {
            i6 = i5;
        }
        if (i9 <= 1) {
            i7 = i10;
            boolean z3 = i7 <= 1;
            m978q(iM968f, false, false, z3);
            iArr = this.f1804g;
            if (iArr[0] != -1) {
                int i21 = i2 + i7;
                iArr[0] = i21;
                iArr[1] = i21;
                m975n(257);
            }
            this.f1807j.clear();
            Arrays.fill(this.f1806i, (Object) null);
            if (charSequence instanceof Spanned) {
                spanned = (Spanned) charSequence;
                for (Object obj : spanned.getSpans(i4, i6, Object.class)) {
                    spanStart = spanned.getSpanStart(obj);
                    spanEnd = spanned.getSpanEnd(obj);
                    if (spanStart < i4) {
                        spanStart = i4;
                    }
                    if (spanEnd > i6) {
                        spanEnd = i6;
                    }
                    if (getSpanStart(obj) < 0) {
                        setSpan(obj, i2 + spanStart, i2 + spanEnd, spanned.getSpanFlags(obj));
                    }
                }
            }
            m975n(2);
            return this;
        }
        i7 = i10;
        m978q(iM968f, false, false, z3);
        iArr = this.f1804g;
        if (iArr[0] != -1) {
            int i22 = i2 + i7;
            iArr[0] = i22;
            iArr[1] = i22;
            m975n(257);
        }
        this.f1807j.clear();
        Arrays.fill(this.f1806i, (Object) null);
        if (charSequence instanceof Spanned) {
            spanned = (Spanned) charSequence;
            while (i8 < r5) {
                spanStart = spanned.getSpanStart(obj);
                spanEnd = spanned.getSpanEnd(obj);
                if (spanStart < i4) {
                    spanStart = i4;
                }
                if (spanEnd > i6) {
                    spanEnd = i6;
                }
                if (getSpanStart(obj) < 0) {
                    setSpan(obj, i2 + spanStart, i2 + spanEnd, spanned.getSpanFlags(obj));
                }
            }
        }
        m975n(2);
        return this;
    }

    @Override // android.text.Editable
    public final void setFilters(InputFilter[] inputFilterArr) {
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i2, int i3, int i4) {
        int iM965m = m965m(obj);
        int i5 = 0;
        if (iM965m >= 0) {
            int[] iArr = this.f1804g;
            iArr[iM965m] = i2;
            this.f1805h[iM965m] = i4;
            if (iM965m == 1) {
                int i6 = iArr[0];
                int i7 = iArr[1];
                if (i6 > i7 && i7 != -1) {
                    iArr[0] = i7;
                    iArr[1] = i6;
                }
                m975n(1);
                return;
            }
            return;
        }
        e eVarM970h = m970h(obj);
        if (eVarM970h != null) {
            eVarM970h.f1831b = i2;
            eVarM970h.f1832c = i3;
            eVarM970h.f1833d = i4;
        } else {
            e eVar = new e(obj, i2, i3, i4);
            while (true) {
                e[] eVarArr = this.f1806i;
                if (i5 >= eVarArr.length) {
                    break;
                }
                if (eVarArr[i5] == null) {
                    eVarArr[i5] = eVar;
                    this.f1807j.put(eVar.f1830a, Integer.valueOf(i5));
                    break;
                }
                i5++;
            }
        }
        boolean z2 = obj instanceof SpanWatcher;
        boolean z3 = obj instanceof TextWatcher;
    }

    @Override // java.lang.CharSequence
    public final synchronized CharSequence subSequence(int i2, int i3) {
        if (i2 == i3) {
            return "";
        }
        int iM968f = m968f(i2);
        int iM968f2 = m968f(i3 - 1);
        if (iM968f == iM968f2) {
            d dVarM967e = m967e(iM968f, -1);
            return new c(dVarM967e.f1823c, i2 - dVarM967e.f1821a, i3 - i2);
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = iM968f; i4 <= iM968f2; i4++) {
            d dVarM966d = m966d(i4);
            if (dVarM966d == null) {
                break;
            }
            if (i4 == iM968f) {
                int i5 = i2 - dVarM966d.f1821a;
                sb.append(dVarM966d.f1823c, i5, dVarM966d.f1824d - i5);
            } else if (i4 == iM968f2) {
                sb.append(dVarM966d.f1823c, 0, Math.min(i3 - dVarM966d.f1821a, dVarM966d.f1824d));
            } else {
                sb.append(dVarM966d.f1823c, 0, dVarM966d.f1824d);
            }
        }
        return sb;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return "";
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        append(charSequence);
        return this;
    }

    @Override // android.text.Editable
    public final Editable insert(int i2, CharSequence charSequence) {
        replace(i2, i2, charSequence, 0, charSequence.length());
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i2, int i3) {
        append(charSequence, i2, i3);
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final Editable append(char c2) {
        append((CharSequence) String.valueOf(c2));
        return this;
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        int i2 = this.f1800c;
        replace(i2, i2, charSequence, 0, charSequence.length());
        return this;
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.b$d */
    public static class d {

        /* JADX INFO: renamed from: a */
        public int f1821a;

        /* JADX INFO: renamed from: b */
        public int f1822b;

        /* JADX INFO: renamed from: c */
        public char[] f1823c;

        /* JADX INFO: renamed from: d */
        public int f1824d;

        /* JADX INFO: renamed from: e */
        public int f1825e;

        /* JADX INFO: renamed from: f */
        public int f1826f;

        /* JADX INFO: renamed from: g */
        public int f1827g;

        /* JADX INFO: renamed from: h */
        public int[] f1828h;

        /* JADX INFO: renamed from: i */
        public byte[] f1829i;

        public d(int i2, int i3) {
            this.f1822b = i3;
            this.f1823c = new char[i2];
            this.f1824d = 0;
            this.f1828h = null;
            this.f1826f = 0;
            this.f1825e = 0;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0016  */
        /* JADX INFO: renamed from: a */
        public final int m980a(C0034e c0034e, int i2, int i3, float f2) {
            int i4;
            if (i2 == i3) {
                return 0;
            }
            int i5 = this.f1824d;
            if (i3 != i5 || i3 <= 0) {
                i4 = i3;
            } else {
                int i6 = i3 - 1;
                if (this.f1823c[i6] == '\n') {
                    i4 = i6;
                } else {
                    i4 = i3;
                }
            }
            char[] cArr = this.f1823c;
            if (cArr[i2] != '\t' || i5 >= 1024) {
                return c0034e.f232a.getOffsetForAdvance(cArr, i2, i4, i2, i4, false, f2);
            }
            int i7 = (int) f2;
            if (c0034e.f236e == 0) {
                c0034e.f236e = (int) (c0034e.f232a.measureText(" ") * 3.0f);
            }
            int i8 = c0034e.f236e;
            return Math.min((i7 / i8) + (i7 % i8 > i8 / 2 ? 1 : 0), i4);
        }

        /* JADX INFO: renamed from: b */
        public final int m981b(int i2) {
            return this.f1828h[i2 + 1] & 8388607;
        }

        /* JADX INFO: renamed from: c */
        public final int m982c(int i2) {
            return this.f1828h[i2] & 8388607;
        }

        /* JADX INFO: renamed from: d */
        public final boolean m983d(int i2) {
            int i3 = this.f1821a;
            return i2 >= i3 && i2 <= (i3 + this.f1824d) - (this.f1822b & 1);
        }

        /* JADX INFO: renamed from: e */
        public final boolean m984e(int i2, int i3) {
            int[] iArr = this.f1828h;
            int i4 = iArr[i3 + 1] & 8388607;
            return i2 >= (iArr[i3] & 8388607) && i2 <= i4 - (i4 == this.f1824d ? this.f1822b & 1 : 1);
        }

        /* JADX INFO: renamed from: f */
        public final byte m985f(AbstractC0338a abstractC0338a, AbstractC0053b abstractC0053b, byte b2, boolean z2) {
            this.f1827g = 0;
            int[] iArr = this.f1828h;
            if (iArr == null) {
                this.f1828h = new int[10];
                this.f1829i = abstractC0053b != null ? new byte[10] : null;
            } else if (abstractC0053b == null) {
                this.f1829i = null;
            } else if (this.f1829i == null) {
                this.f1829i = new byte[iArr.length];
            }
            this.f1822b &= -3;
            char[] cArr = this.f1823c;
            int i2 = this.f1824d;
            b bVar = abstractC0338a.f1795a;
            bVar.f1814a = cArr;
            bVar.f1817d = 0;
            bVar.f1815b = 0;
            bVar.f1816c = i2;
            abstractC0338a.mo961c(bVar);
            int i3 = -1;
            int i4 = 1;
            int i5 = 0;
            int i6 = 0;
            char c2 = 0;
            byte bMo205e = 0;
            int i7 = 0;
            int iMo959a = abstractC0338a.mo959a();
            int i8 = -1;
            int i9 = 1;
            byte bMo204d = b2;
            while (iMo959a != i3) {
                if (iMo959a <= 0 || this.f1828h[i8] + i4 != iMo959a) {
                    if (abstractC0053b != null) {
                        bMo205e = abstractC0053b.mo205e(bMo204d);
                    }
                    c2 = 0;
                    i7 = 0;
                } else {
                    char[] cArr2 = this.f1823c;
                    int i10 = iMo959a - 1;
                    char c3 = cArr2[i10];
                    if (abstractC0053b != null) {
                        bMo205e = abstractC0053b.mo202a(bMo204d, c3, cArr2, i10);
                    }
                    if (i9 != 0) {
                        i9 = c3 == '\t' ? i4 : 0;
                    }
                    if (c2 != 0 && c2 == c3 && bMo205e == bMo204d) {
                        int[] iArr2 = this.f1828h;
                        iArr2[i8] = iArr2[i8] + i4;
                        if (abstractC0053b != null) {
                            this.f1829i[i8] = bMo205e;
                        }
                    } else {
                        int i11 = (!Character.isWhitespace(c3) || c3 == '\t' || c3 == '\n') ? 0 : i4;
                        if (i7 == 0 || i11 == 0) {
                            i7 = i11;
                            c2 = c3;
                        } else {
                            int[] iArr3 = this.f1828h;
                            iArr3[i8] = iArr3[i8] + i4;
                            if (abstractC0053b != null) {
                                this.f1829i[i8] = bMo205e;
                            }
                        }
                    }
                    iMo959a = abstractC0338a.mo960b();
                    i3 = -1;
                    i4 = 1;
                }
                int i12 = this.f1827g;
                if (i12 >= this.f1828h.length) {
                    int iMax = Math.max((this.f1824d - (i12 * 200)) / 200, 10);
                    this.f1828h = Arrays.copyOf(this.f1828h, this.f1827g + iMax);
                    if (abstractC0053b != null) {
                        this.f1829i = Arrays.copyOf(this.f1829i, this.f1827g + iMax);
                    }
                }
                if (z2) {
                    if (i5 != 0 && i8 > 0) {
                        int[] iArr4 = this.f1828h;
                        int i13 = iArr4[i8];
                        int i14 = i8 - 1;
                        int i15 = iArr4[i14];
                        int i16 = i13 - i15;
                        if (i16 > i4 && i16 == (i6 & 8388607) - (i5 & 8388607)) {
                            iArr4[i14] = i15 | (i5 & (-8388608));
                        }
                    }
                    i5 = i6;
                    i6 = this.f1828h[this.f1827g];
                }
                int[] iArr5 = this.f1828h;
                int i17 = this.f1827g;
                iArr5[i17] = iMo959a;
                if (abstractC0053b != null && i17 > 0) {
                    if ((bMo205e & 64) != 0) {
                        this.f1829i[i8] = bMo204d;
                        bMo204d = (byte) (bMo205e & (-65));
                    } else {
                        this.f1829i[i8] = bMo205e;
                        bMo204d = bMo205e;
                    }
                }
                this.f1827g = i17 + 1;
                i8++;
                iMo959a = abstractC0338a.mo960b();
                i3 = -1;
                i4 = 1;
            }
            if (z2 && i5 != 0 && i8 > 0) {
                int[] iArr6 = this.f1828h;
                int i18 = iArr6[i8];
                int i19 = i8 - 1;
                int i20 = iArr6[i19];
                int i21 = i18 - i20;
                if (i21 > 1 && i21 == (i6 & 8388607) - (i5 & 8388607)) {
                    iArr6[i19] = (i5 & (-8388608)) | i20;
                }
            }
            int i22 = this.f1827g;
            if (i22 == 1) {
                int[] iArr7 = this.f1828h;
                iArr7[i22] = iArr7[i8];
                this.f1827g = i22 + 1;
                i8++;
            }
            int i23 = this.f1827g + 1;
            while (true) {
                int[] iArr8 = this.f1828h;
                if (i23 >= iArr8.length) {
                    break;
                }
                iArr8[i23] = 0;
                i23++;
            }
            if (abstractC0053b != null) {
                bMo204d = abstractC0053b.mo204d(bMo204d);
            }
            if (abstractC0053b != null && this.f1827g > 0) {
                this.f1829i[i8] = bMo204d;
            }
            if (i9 == 0 && this.f1824d < 1024) {
                this.f1822b |= 2;
            }
            return bMo204d;
        }

        /* JADX INFO: renamed from: g */
        public final int m986g(C0034e c0034e, int i2) {
            int[] iArr = this.f1828h;
            int i3 = iArr[i2];
            int i4 = (-8388608) & i3;
            if (i4 > 0) {
                return i4 >>> 23;
            }
            int i5 = i3 & 8388607;
            int iM987h = m987h(c0034e, i5, (iArr[i2 + 1] & 8388607) - i5);
            if (iM987h <= 511) {
                int[] iArr2 = this.f1828h;
                iArr2[i2] = iArr2[i2] | (iM987h << 23);
            }
            return iM987h;
        }

        /* JADX INFO: renamed from: h */
        public final int m987h(C0034e c0034e, int i2, int i3) {
            if (i3 == 0) {
                return 0;
            }
            char[] cArr = this.f1823c;
            if (cArr[i2] != '\t' || this.f1824d >= 1024) {
                return (int) c0034e.m137c(i2, i3, cArr, this.f1824d);
            }
            if (c0034e.f236e == 0) {
                c0034e.f236e = (int) (c0034e.f232a.measureText(" ") * 3.0f);
            }
            return c0034e.f236e * i3;
        }

        /* JADX INFO: renamed from: i */
        public final void m988i(boolean z2) {
            if (z2) {
                this.f1822b |= 1;
            } else {
                this.f1822b &= -2;
            }
        }

        public d(StringBuilder sb, int i2) {
            this.f1824d = i2 + 0;
            this.f1822b = (i2 <= 0 || sb.charAt(i2 + (-1)) != '\n') ? 0 : 1;
            char[] cArr = new char[this.f1824d];
            this.f1823c = cArr;
            TextUtils.getChars(sb, 0, i2, cArr, 0);
            this.f1828h = null;
            this.f1826f = 0;
            this.f1825e = 0;
        }
    }

    @Override // android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i2, int i3) {
        int i4 = this.f1800c;
        replace(i4, i4, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.Editable
    public final Editable replace(int i2, int i3, CharSequence charSequence) {
        replace(i2, i3, charSequence, 0, charSequence.length());
        return this;
    }
}
