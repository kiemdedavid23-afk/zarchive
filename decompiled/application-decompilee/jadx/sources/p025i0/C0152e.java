package p025i0;

import android.content.Context;
import android.net.Uri;
import java.util.ArrayList;
import p004b.C0015d;
import p019g.C0118a;
import p020g0.C0129h;
import p020g0.InterfaceC0124c;
import ru.zdevs.zarchiver.provider.FileProvider;

/* JADX INFO: renamed from: i0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0152e implements InterfaceC0124c {

    /* JADX INFO: renamed from: a */
    public final ArrayList<String> f1054a;

    /* JADX INFO: renamed from: b */
    public final int f1055b;

    /* JADX INFO: renamed from: c */
    public final String f1056c;

    public C0152e(ArrayList<String> arrayList, String str, int i2) {
        this.f1054a = arrayList;
        this.f1055b = i2;
        this.f1056c = str;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: a */
    public final int mo445a() {
        return this.f1055b;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: b */
    public final Uri mo446b(Context context, int i2) {
        return FileProvider.m882c(C0015d.m78i(this.f1056c, this.f1054a.get(i2)));
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: c */
    public final boolean mo447c() {
        return true;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: d */
    public final C0118a mo448d(int i2) {
        String strM78i = C0015d.m78i(this.f1056c, this.f1054a.get(i2));
        if (strM78i != null) {
            return new C0118a(null, strM78i, null);
        }
        throw new NullPointerException("Path must not be null");
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: e */
    public final C0129h mo449e() {
        return new C0129h(this.f1056c);
    }

    @Override // p020g0.InterfaceC0124c
    public final int getCount() {
        return this.f1054a.size();
    }

    @Override // p020g0.InterfaceC0124c
    public final String getName(int i2) {
        return this.f1054a.get(i2);
    }

    @Override // p020g0.InterfaceC0124c
    public final boolean remove(int i2) {
        this.f1054a.remove(i2);
        return true;
    }
}
