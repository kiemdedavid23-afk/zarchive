package p006b1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b1.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0034e {

    /* JADX INFO: renamed from: a */
    public final Paint f232a;

    /* JADX INFO: renamed from: b */
    public byte f233b;

    /* JADX INFO: renamed from: c */
    public int f234c;

    /* JADX INFO: renamed from: d */
    public int f235d;

    /* JADX INFO: renamed from: e */
    public int f236e;

    /* JADX INFO: renamed from: f */
    public final int[] f237f;

    /* JADX WARN: Code duplicated, block: B:16:0x0080  */
    /* JADX WARN: Code duplicated, block: B:19:0x008c  */
    /* JADX WARN: Code duplicated, block: B:20:0x00b2  */
    public C0034e(Context context) {
        boolean z2;
        int[] iArr;
        Paint paint = new Paint();
        this.f232a = paint;
        paint.setAntiAlias(true);
        this.f233b = (byte) -1;
        this.f234c = 0;
        int[] iArr2 = new int[11];
        this.f237f = iArr2;
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.defaultTextColorFileList, R.attr.colorPrimary, R.attr.colorPrimaryDark, R.attr.colorPrimaryLight, R.attr.isLightTheme});
                iArr2[0] = typedArrayObtainStyledAttributes.getColor(0, -1);
                iArr2[9] = (typedArrayObtainStyledAttributes.getColor(1, 0) & 16777215) | Integer.MIN_VALUE;
                iArr2[10] = typedArrayObtainStyledAttributes.getColor(typedArrayObtainStyledAttributes.getBoolean(4, true) ? 2 : 3, 0);
            } catch (Exception unused) {
                int[] iArr3 = this.f237f;
                iArr3[0] = -1;
                iArr3[10] = Integer.MIN_VALUE;
                iArr3[9] = Integer.MIN_VALUE;
                if (typedArrayObtainStyledAttributes != null) {
                }
                z2 = C0439c.m1170e(this.f237f[0]) == -16777216;
                iArr = this.f237f;
                if (z2) {
                    iArr[5] = -7828859;
                    iArr[1] = -11752759;
                    iArr[6] = -9265201;
                    iArr[2] = -10092800;
                    iArr[3] = -9522135;
                    iArr[4] = -7675340;
                    iArr[7] = -3435155;
                    iArr[8] = -10635115;
                    return;
                }
                iArr[5] = -9671062;
                iArr[1] = -12810080;
                iArr[6] = -10780763;
                iArr[2] = -12078336;
                iArr[3] = -10973152;
                iArr[4] = -9522135;
                iArr[7] = -6129833;
                iArr[8] = -11889801;
            }
            typedArrayObtainStyledAttributes.recycle();
            if (C0439c.m1170e(this.f237f[0]) == -16777216) {
            }
            iArr = this.f237f;
            if (z2) {
                iArr[5] = -7828859;
                iArr[1] = -11752759;
                iArr[6] = -9265201;
                iArr[2] = -10092800;
                iArr[3] = -9522135;
                iArr[4] = -7675340;
                iArr[7] = -3435155;
                iArr[8] = -10635115;
                return;
            }
            iArr[5] = -9671062;
            iArr[1] = -12810080;
            iArr[6] = -10780763;
            iArr[2] = -12078336;
            iArr[3] = -10973152;
            iArr[4] = -9522135;
            iArr[7] = -6129833;
            iArr[8] = -11889801;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m135a(byte b2) {
        if (b2 < 0 || b2 >= 11) {
            b2 = 0;
        }
        return this.f237f[b2];
    }

    /* JADX INFO: renamed from: b */
    public final int m136b() {
        if (this.f234c == 0) {
            Paint paint = this.f232a;
            this.f234c = (int) paint.ascent();
            this.f235d = (int) paint.descent();
        }
        return this.f235d - this.f234c;
    }

    /* JADX INFO: renamed from: c */
    public final float m137c(int i2, int i3, char[] cArr, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        Paint paint = this.f232a;
        return (int) (i5 < 29 ? paint.measureText(cArr, i2, i3) : paint.getTextRunAdvances(cArr, i2, i3, 0, i4, false, null, 0));
    }
}
