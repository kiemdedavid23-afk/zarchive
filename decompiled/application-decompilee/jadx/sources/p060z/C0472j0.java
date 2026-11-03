package p060z;

import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p004b.C0015d;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p020g0.C0129h;
import p039p0.C0223a;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.j0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0472j0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final WeakReference<DialogInterfaceOnCancelListenerC0115y> f2298e;

    /* JADX INFO: renamed from: f */
    public final C0129h f2299f;

    /* JADX INFO: renamed from: g */
    public final C0129h f2300g;

    /* JADX INFO: renamed from: h */
    public final String[] f2301h;

    public C0472j0(DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y, C0129h c0129h, C0129h c0129h2, String[] strArr) {
        this.f2298e = new WeakReference<>(dialogInterfaceOnCancelListenerC0115y);
        this.f2299f = c0129h;
        this.f2300g = c0129h2;
        this.f2301h = strArr;
        Objects.toString(c0129h);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        boolean zM625g;
        C0129h c0129h = this.f2299f;
        try {
            String[] strArr = this.f2301h;
            if (strArr != null) {
                zM625g = C0223a.m627i(this.f2300g, strArr);
            } else {
                zM625g = C0015d.m43E(c0129h.f1015c) == 6 ? C0223a.m625g(c0129h) : C0223a.m628j(c0129h, ZArchiver.class);
            }
        } catch (C0223a.b e2) {
            ZArchiver zArchiverM730z = ZArchiver.m730z();
            if (zArchiverM730z != null) {
                zArchiverM730z.startActivityForResult(e2.f1269a, 1203);
            }
            zM625g = false;
        }
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = this.f2298e.get();
        if (dialogInterfaceOnCancelListenerC0115y != null) {
            SparseArray<Object> sparseArray = dialogInterfaceOnCancelListenerC0115y.f741e;
            if ((sparseArray == null ? null : sparseArray.get(0)) == this) {
                dialogInterfaceOnCancelListenerC0115y.m360n(0, null);
            }
            if (!zM625g) {
                dialogInterfaceOnCancelListenerC0115y.m356e();
            }
        }
        return null;
    }
}
