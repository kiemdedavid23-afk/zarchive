package p060z;

import android.content.Context;
import p004b.C0015d;
import p014e0.C0079a;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0115y;
import p020g0.C0129h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: z.t0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0492t0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final int f2364e;

    /* JADX INFO: renamed from: f */
    public final C0129h f2365f;

    /* JADX INFO: renamed from: g */
    public final String f2366g;

    /* JADX INFO: renamed from: h */
    public DialogInterfaceOnCancelListenerC0115y f2367h;

    /* JADX INFO: renamed from: i */
    public NArc f2368i = null;

    /* JADX INFO: renamed from: z.t0$a */
    public class a implements AbstractC0099i.b {
        public a() {
        }

        @Override // p017f0.AbstractC0099i.b
        /* JADX INFO: renamed from: a */
        public final void mo246a(AbstractC0099i abstractC0099i) {
            NArc nArc = C0492t0.this.f2368i;
            if (nArc != null) {
                nArc.m808a();
            }
        }
    }

    public C0492t0(int i2, String str, C0129h c0129h) {
        this.f2364e = i2;
        this.f2365f = c0129h;
        this.f2366g = str;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0066 A[PHI: r0
      0x0066: PHI (r0v4 f0.y) = (r0v3 f0.y), (r0v10 f0.y) binds: [B:36:0x0064, B:22:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y;
        C0129h c0129h = this.f2365f;
        if (!c0129h.m480g()) {
            return null;
        }
        try {
            String str = c0129h.f1015c;
            NArc nArcM806k = NArc.m806k(str, C0015d.m93u(str), null);
            this.f2368i = nArcM806k;
            if ((nArcM806k != null ? nArcM806k.m818n(this.f2366g) : -1) == 0) {
                C0079a.m266m().m267a();
                C0503z c0503z = new C0503z(this.f2364e);
                NArc nArc = this.f2368i;
                if (nArc != null) {
                    nArc.close();
                }
                DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y2 = this.f2367h;
                if (dialogInterfaceOnCancelListenerC0115y2 != null) {
                    dialogInterfaceOnCancelListenerC0115y2.m356e();
                }
                return c0503z;
            }
            NArc nArc2 = this.f2368i;
            if (nArc2 != null) {
                nArc2.close();
            }
            dialogInterfaceOnCancelListenerC0115y = this.f2367h;
            if (dialogInterfaceOnCancelListenerC0115y != null) {
                dialogInterfaceOnCancelListenerC0115y.m356e();
            }
        } catch (Exception unused) {
            NArc nArc3 = this.f2368i;
            if (nArc3 != null) {
                nArc3.close();
            }
            dialogInterfaceOnCancelListenerC0115y = this.f2367h;
            if (dialogInterfaceOnCancelListenerC0115y != null) {
                dialogInterfaceOnCancelListenerC0115y.m356e();
            }
        } catch (Throwable th) {
            NArc nArc4 = this.f2368i;
            if (nArc4 != null) {
                nArc4.close();
            }
            DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y3 = this.f2367h;
            if (dialogInterfaceOnCancelListenerC0115y3 != null) {
                dialogInterfaceOnCancelListenerC0115y3.m356e();
            }
            throw th;
        }
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 103;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: k */
    public final void mo1100k() {
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = this.f2367h;
        if (dialogInterfaceOnCancelListenerC0115y != null) {
            dialogInterfaceOnCancelListenerC0115y.mo337d();
        }
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: l */
    public final void mo1101l(Context context) {
        if (context == null) {
            return;
        }
        DialogInterfaceOnCancelListenerC0115y dialogInterfaceOnCancelListenerC0115y = new DialogInterfaceOnCancelListenerC0115y(((ZArchiver) context).f1386h, context, R.string.MES_COMPRESS_FILE_PROCESS, 0);
        this.f2367h = dialogInterfaceOnCancelListenerC0115y;
        dialogInterfaceOnCancelListenerC0115y.f739c = 0;
        dialogInterfaceOnCancelListenerC0115y.f737a = new a();
        dialogInterfaceOnCancelListenerC0115y.m387r();
    }
}
