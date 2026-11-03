package p019g;

import android.net.Uri;
import android.os.ParcelFileDescriptor;

/* JADX INFO: renamed from: g.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0118a {

    /* JADX INFO: renamed from: a */
    public final Uri f859a;

    /* JADX INFO: renamed from: b */
    public final String f860b;

    /* JADX INFO: renamed from: c */
    public final ParcelFileDescriptor f861c;

    /* JADX INFO: renamed from: d */
    public final String f862d;

    /* JADX INFO: renamed from: e */
    public long f863e;

    /* JADX INFO: renamed from: f */
    public boolean f864f;

    public C0118a(Uri uri, String str, ParcelFileDescriptor parcelFileDescriptor) {
        this.f859a = uri;
        this.f860b = str;
        this.f861c = parcelFileDescriptor;
        this.f862d = null;
        this.f864f = true;
        this.f863e = -1L;
    }

    public C0118a(String str) {
        this.f859a = null;
        this.f860b = null;
        this.f862d = str;
        this.f861c = null;
        this.f864f = true;
        this.f863e = -1L;
    }
}
