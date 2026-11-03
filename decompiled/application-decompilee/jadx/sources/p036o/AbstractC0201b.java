package p036o;

import android.content.res.Resources;
import android.util.TypedValue;
import java.util.Locale;
import p013e.C0076b;
import p038p.C0213d;
import p038p.C0216g;
import p038p.C0221l;

/* JADX INFO: renamed from: o.b */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0201b {

    /* JADX INFO: renamed from: a */
    public final int f1209a;

    /* JADX INFO: renamed from: o.b$a */
    public static class a extends AbstractC0201b {
        public a(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return String.valueOf(this.f1209a != 0);
        }
    }

    /* JADX INFO: renamed from: o.b$b */
    public static class b extends AbstractC0201b {
        public b(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return String.valueOf(this.f1209a);
        }
    }

    /* JADX INFO: renamed from: o.b$c */
    public static class c extends AbstractC0201b {
        public c(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            int i2 = this.f1209a;
            int i3 = i2 >> 8;
            int i4 = (i2 >> 0) & 15;
            if (i4 == 1) {
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            } else {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                        } else if (i4 == 5) {
                        }
                        TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
                    } else {
                        TypedValue.applyDimension(3, i3, Resources.getSystem().getDisplayMetrics());
                    }
                }
                TypedValue.applyDimension(2, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            }
            return i3;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            int i2 = this.f1209a;
            int i3 = i2 >> 8;
            int i4 = (i2 >> 0) & 15;
            if (i4 == 1) {
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            } else {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                        } else if (i4 == 5) {
                        }
                        TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
                    } else {
                        TypedValue.applyDimension(3, i3, Resources.getSystem().getDisplayMetrics());
                    }
                }
                TypedValue.applyDimension(2, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            }
            return i3;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            String str;
            int i2 = this.f1209a;
            short s2 = (short) (i2 & 255);
            if (s2 == 0) {
                str = "px";
            } else if (s2 == 1) {
                str = "dp";
            } else if (s2 == 2) {
                str = "sp";
            } else if (s2 == 3) {
                str = "pt";
            } else if (s2 == 4) {
                str = "in";
            } else if (s2 != 5) {
                str = "unknown unit:0x" + Integer.toHexString(s2);
            } else {
                str = "mm";
            }
            return (i2 >> 8) + str;
        }
    }

    /* JADX INFO: renamed from: o.b$d */
    public static class d extends AbstractC0201b {
        public d(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            String str;
            int i2 = this.f1209a;
            int i3 = (i2 >> 0) & 15;
            if (i3 == 0) {
                str = "%";
            } else if (i3 != 1) {
                str = "unknown type:0x" + Integer.toHexString(i3);
            } else {
                str = "%p";
            }
            return Float.intBitsToFloat(i2 >> 4) + str;
        }
    }

    /* JADX INFO: renamed from: o.b$e */
    public static class e extends AbstractC0201b {
        public e(int i2) {
            super(i2);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return "0x" + Integer.toHexString(this.f1209a);
        }
    }

    /* JADX INFO: renamed from: o.b$f */
    public static class f extends AbstractC0201b {

        /* JADX INFO: renamed from: b */
        public static final f f1210b = new f();

        public f() {
            super(-1);
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return 0.0f;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return 0;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return "";
        }
    }

    /* JADX INFO: renamed from: o.b$g */
    public static class g extends AbstractC0201b {

        /* JADX INFO: renamed from: b */
        public final int f1211b;

        public g(int i2, int i3) {
            super(i2);
            this.f1211b = i3;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            int i2 = this.f1211b;
            int i3 = this.f1209a;
            return i2 == 6 ? (-16777216) | i3 : i3;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = (this.f1211b / 2) - 1; i2 >= 0; i2--) {
                String hexString = Integer.toHexString((this.f1209a >> (i2 * 8)) & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: o.b$h */
    public static class h extends AbstractC0201b {

        /* JADX INFO: renamed from: b */
        public final short f1212b;

        public h(int i2, short s2) {
            super(i2);
            this.f1212b = s2;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return this.f1209a;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            return "{" + ((int) this.f1212b) + ":" + (((long) this.f1209a) & 4294967295L) + "}";
        }
    }

    /* JADX INFO: renamed from: o.b$i */
    public static class i extends AbstractC0201b {
        public i(int i2) {
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
            return 0;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            long j2 = ((long) this.f1209a) & 4294967295L;
            if (j2 > 16973824 && j2 < 16977920) {
                return "@android:style/sys" + ((int) j2);
            }
            String str = "resourceId:0x" + Long.toHexString(j2);
            if (c0216g == null) {
                return str;
            }
            C0213d c0213d = null;
            int i2 = -1;
            C0221l c0221l = null;
            for (C0216g.a aVar : c0216g.m617a(j2)) {
                int i3 = aVar.f1250b.f1259g;
                if (i3 == 65534 || i3 == 65535) {
                    i3 = -1;
                }
                if (i3 > i2) {
                    c0213d = aVar.f1251c;
                    i2 = i3;
                }
                c0221l = aVar.f1249a;
            }
            if (c0213d == null) {
                return str;
            }
            if (locale != null) {
                return c0213d.mo616a(c0216g, locale);
            }
            return "@" + c0221l.f1265b + "/" + c0213d.f1238c;
        }
    }

    /* JADX INFO: renamed from: o.b$j */
    public static class j extends AbstractC0201b {

        /* JADX INFO: renamed from: b */
        public final C0076b f1213b;

        public j(int i2, C0076b c0076b) {
            super(i2);
            this.f1213b = c0076b;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: a */
        public final float mo533a() {
            return 0.0f;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: b */
        public final int mo534b() {
            return 0;
        }

        @Override // p036o.AbstractC0201b
        /* JADX INFO: renamed from: c */
        public final String mo535c(C0216g c0216g, Locale locale) {
            int i2 = this.f1209a;
            if (i2 >= 0) {
                return this.f1213b.m260a(i2);
            }
            return null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            int i2 = this.f1209a;
            sb.append(i2);
            sb.append(":");
            sb.append(this.f1213b.m260a(i2));
            return sb.toString();
        }
    }

    public AbstractC0201b(int i2) {
        this.f1209a = i2;
    }

    /* JADX INFO: renamed from: a */
    public abstract float mo533a();

    /* JADX INFO: renamed from: b */
    public abstract int mo534b();

    /* JADX INFO: renamed from: c */
    public abstract String mo535c(C0216g c0216g, Locale locale);
}
