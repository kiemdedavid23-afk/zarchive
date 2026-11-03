package p005b0;

import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: b0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0026h {

    /* JADX INFO: renamed from: a */
    public final String f194a;

    /* JADX INFO: renamed from: b */
    public final Drawable f195b;

    /* JADX INFO: renamed from: c */
    public final int f196c;

    /* JADX INFO: renamed from: d */
    public final Drawable f197d;

    public C0026h(Drawable drawable) {
        this.f194a = "";
        this.f195b = drawable;
        this.f196c = -1;
    }

    public C0026h(int i2, String str, Drawable drawable) {
        this.f194a = str;
        this.f195b = drawable;
        this.f196c = i2;
        this.f197d = null;
    }

    public C0026h(int i2, String str, Drawable drawable, Drawable drawable2) {
        this(i2, str, drawable);
        this.f197d = drawable2;
    }
}
