package p028k;

import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import p004b.C0015d;
import p013e.InterfaceC0077c;
import p036o.AbstractC0201b;
import p038p.C0213d;
import p038p.C0215f;
import p038p.C0216g;
import p038p.C0219j;
import p038p.C0221l;

/* JADX INFO: renamed from: k.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0162c {

    /* JADX INFO: renamed from: a */
    public final C0216g f1070a;

    /* JADX INFO: renamed from: k.c$a */
    public static class a extends AbstractC0201b {
        public a(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return 0.0f;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            TypedValue typedValue = new TypedValue();
            Resources system = Resources.getSystem();
            int i2 = this.f1209a;
            system.getValue(i2, typedValue, true);
            int i3 = typedValue.type;
            return (i3 < 16 || i3 > 31) ? Resources.getSystem().getColor(i2) : typedValue.data;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return "";
        }
    }

    /* JADX INFO: renamed from: k.c$b */
    public static class b extends AbstractC0201b {

        /* JADX INFO: renamed from: c */
        public static final String[] f1071c = {"dip", "px", "dp", "mm", "sp", "pt", "in"};

        /* JADX INFO: renamed from: d */
        public static final int[] f1072d = {1, 0, 1, 5, 2, 3, 4};

        /* JADX INFO: renamed from: b */
        public final String f1073b;

        public b(String str) {
            super(0);
            this.f1073b = str;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            int i2 = 0;
            while (true) {
                String str = this.f1073b;
                if (i2 >= 7) {
                    return Float.parseFloat(str);
                }
                String[] strArr = f1071c;
                if (str.endsWith(strArr[i2])) {
                    return TypedValue.applyDimension(f1072d[i2], Float.parseFloat(str.replace(strArr[i2], "")), Resources.getSystem().getDisplayMetrics());
                }
                i2++;
            }
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            String str = this.f1073b;
            return str.startsWith("#") ? Color.parseColor(str) : Integer.parseInt(str);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return this.f1073b;
        }
    }

    public C0162c(C0216g c0216g) {
        this.f1070a = c0216g;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00f7  */
    /* JADX INFO: renamed from: a */
    public final InterfaceC0077c m532a(AttributeSet attributeSet, int[] iArr, String[] strArr) {
        HashMap map;
        String str;
        AbstractC0201b abstractC0201b;
        AbstractC0201b[] abstractC0201bArr = new AbstractC0201b[iArr.length];
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        int attributeCount = xmlPullParser.getAttributeCount();
        if (attributeCount != -1) {
            map = new HashMap(attributeCount);
            for (int i2 = 0; i2 < attributeCount; i2++) {
                map.put(xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeValue(i2));
            }
        } else {
            map = null;
        }
        Iterator it = map.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            C0216g c0216g = this.f1070a;
            if (!zHasNext) {
                return new C0163d(c0216g, abstractC0201bArr);
            }
            String str2 = (String) it.next();
            int i3 = 0;
            while (true) {
                if (i3 >= strArr.length) {
                    i3 = -1;
                    break;
                }
                if (str2.equals(strArr[i3])) {
                    break;
                }
                i3++;
            }
            if (i3 >= 0 && (str = (String) map.get(str2)) != null) {
                if (str.startsWith("@")) {
                    long jM79i0 = C0015d.m79i0(-1, str.substring(1));
                    if (jM79i0 != -1) {
                        short s2 = (short) ((jM79i0 >> 16) & 255);
                        int i4 = (int) (jM79i0 & 65535);
                        C0215f c0215f = (C0215f) c0216g.f1248a.get(Short.valueOf((short) ((jM79i0 >> 24) & 255)));
                        if (c0215f == null) {
                            abstractC0201b = null;
                            break;
                        }
                        C0221l c0221l = (C0221l) c0215f.f1246d.get(Short.valueOf(s2));
                        List list = (List) c0215f.f1247e.get(Short.valueOf(s2));
                        if (c0221l != null && list != null) {
                            if (!(i4 < c0221l.f1264a.length)) {
                                abstractC0201b = null;
                                break;
                            }
                            Iterator it2 = list.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    abstractC0201b = null;
                                    break;
                                }
                                C0213d c0213dM618a = ((C0219j) it2.next()).m618a(i4);
                                if (c0213dM618a != null && (abstractC0201b = c0213dM618a.f1239d) != null && (!(abstractC0201b instanceof AbstractC0201b.i) || jM79i0 != (((long) ((AbstractC0201b.i) abstractC0201b).f1209a) & 4294967295L))) {
                                    break;
                                }
                            }
                        } else {
                            abstractC0201b = null;
                            break;
                        }
                        abstractC0201bArr[i3] = abstractC0201b;
                        if (abstractC0201b == null) {
                            abstractC0201bArr[i3] = new a((int) jM79i0);
                        }
                    }
                } else {
                    abstractC0201bArr[i3] = new b(str);
                }
            }
        }
    }
}
