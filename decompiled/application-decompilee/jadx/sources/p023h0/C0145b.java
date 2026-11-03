package p023h0;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.util.ArrayList;
import p004b.C0015d;
import p008c0.C0046d;
import p019g.C0118a;
import p020g0.C0129h;
import p020g0.InterfaceC0124c;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;

/* JADX INFO: renamed from: h0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0145b implements InterfaceC0124c {

    /* JADX INFO: renamed from: a */
    public final NArc f1040a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<C0046d> f1041b;

    /* JADX INFO: renamed from: c */
    public final int f1042c;

    /* JADX INFO: renamed from: d */
    public final String f1043d;

    /* JADX INFO: renamed from: e */
    public final ArchiveFileProvider.C0311a f1044e;

    public C0145b(NArc nArc, ArrayList<C0046d> arrayList, int i2, String str, ArchiveFileProvider.C0311a c0311a) {
        this.f1040a = nArc;
        this.f1041b = arrayList;
        this.f1042c = i2;
        this.f1043d = str;
        this.f1044e = c0311a;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: a */
    public final int mo445a() {
        return this.f1042c;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: b */
    public final Uri mo446b(Context context, int i2) {
        ArchiveFileProvider.C0311a c0311a = this.f1044e;
        C0129h c0129h = new C0129h(c0311a.f1646a);
        c0129h.m476c();
        c0129h.m474a(getName(i2));
        return ArchiveFileProvider.m878d(context, c0129h, c0129h.f1014b, -2L, c0311a.f1647b, c0311a.f1648c);
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: c */
    public final boolean mo447c() {
        return false;
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: d */
    public final C0118a mo448d(int i2) {
        try {
            C0046d c0046d = this.f1041b.get(i2);
            ParcelFileDescriptor parcelFileDescriptorM811d = this.f1040a.m811d(C0015d.m79i0(-1, c0046d.f353b), C0015d.m78i(this.f1043d, c0046d.f352a), 2097152);
            long j2 = c0046d.f355d;
            C0118a c0118a = new C0118a(null, null, parcelFileDescriptorM811d);
            c0118a.f863e = j2;
            return c0118a;
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "Failed to open image from archive";
            }
            return new C0118a(message);
        }
    }

    @Override // p020g0.InterfaceC0124c
    /* JADX INFO: renamed from: e */
    public final C0129h mo449e() {
        C0129h c0129h = new C0129h(this.f1044e.f1646a);
        c0129h.m476c();
        return c0129h;
    }

    public final void finalize() throws Throwable {
        super.finalize();
        this.f1040a.close();
    }

    @Override // p020g0.InterfaceC0124c
    public final int getCount() {
        return this.f1041b.size();
    }

    @Override // p020g0.InterfaceC0124c
    public final String getName(int i2) {
        return this.f1041b.get(i2).f352a;
    }

    @Override // p020g0.InterfaceC0124c
    public final boolean remove(int i2) {
        return false;
    }
}
