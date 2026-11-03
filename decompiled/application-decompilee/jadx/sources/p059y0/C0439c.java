package p059y0;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: y0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0439c {
    /* JADX INFO: renamed from: a */
    public static int m1166a(int i2) {
        try {
            return Math.round(i2 * ZApp.m722e().getResources().getDisplayMetrics().density);
        } catch (Exception unused) {
            return i2 * 2;
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1167b(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            return z2;
        } catch (Exception unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return false;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m1168c(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            return color;
        } catch (Exception unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return 0;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    public static int m1169d(Context context) {
        int iM1168c = m1168c(context, R.attr.colorControlActivated);
        return iM1168c == 0 ? m1168c(context, ru.zdevs.zarchiver.R.attr.colorPrimary) : iM1168c;
    }

    /* JADX INFO: renamed from: e */
    public static int m1170e(int i2) {
        int i3 = i2 & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = (i2 >> 16) & 255;
        return (((i3 + i4) + i5) - Math.min(i3, Math.min(i4, i5))) / 2 > 193 ? -16777216 : -1;
    }

    /* JADX INFO: renamed from: f */
    public static Drawable m1171f(Context context, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        TypedArray typedArray = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            try {
                Drawable drawableM1174i = m1174i(context.getResources(), context.getTheme(), typedArrayObtainStyledAttributes.getResourceId(0, 0));
                typedArrayObtainStyledAttributes.recycle();
                return drawableM1174i;
            } catch (Exception unused) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return null;
            } catch (Throwable th) {
                th = th;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        } catch (Exception unused2) {
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: g */
    public static Drawable m1172g(Context context, int i2) {
        try {
            return context.getDrawable(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: h */
    public static Drawable m1173h(Context context, int i2) {
        return m1174i(context.getResources(), context.getTheme(), i2);
    }

    /* JADX INFO: renamed from: i */
    public static Drawable m1174i(Resources resources, Resources.Theme theme, int i2) {
        try {
            return resources.getDrawable(i2, theme);
        } catch (Exception unused) {
            return null;
        }
    }
}
