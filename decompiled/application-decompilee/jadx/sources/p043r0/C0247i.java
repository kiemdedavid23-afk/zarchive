package p043r0;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import p011d0.C0063a;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p033m0.C0181d;
import p041q0.C0235b;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0247i extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public C0129h f1368i;

    /* JADX INFO: renamed from: j */
    public long f1369j;

    /* JADX INFO: renamed from: k */
    public long f1370k;

    public C0247i(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 13, i2);
    }

    @Override // p043r0.AbstractC0245g, p043r0.InterfaceC0239a
    /* JADX INFO: renamed from: c */
    public final void mo695c(long j2) {
        long j3 = this.f1369j;
        if (j3 == 0) {
            return;
        }
        long j4 = this.f1370k + j2;
        this.f1370k = j4;
        int i2 = (int) ((j4 * 100) / j3);
        int[] iArr = C2JBridge.f1559h;
        int i3 = this.f1353c;
        if (i2 != iArr[i3]) {
            iArr[i3] = i2;
            try {
                this.f1351a.mo754d(i3, i2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087 A[PHI: r3
      0x0087: PHI (r3v2 boolean) = (r3v0 boolean), (r3v7 boolean), (r3v0 boolean) binds: [B:25:0x0085, B:11:0x0064, B:6:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() throws Throwable {
        OutputStream outputStreamMo431x;
        InputStream inputStreamMo430w;
        C0129h c0129h = new C0129h(C0181d.m566g() + '/' + this.f1368i.m478e());
        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(this.f1368i);
        this.f1369j = abstractC0127fM463u.mo424o();
        AbstractC0127f abstractC0127fM463u2 = AbstractC0127f.m463u(c0129h);
        InputStream inputStream = null;
        inputStream = null;
        C0129h c0129h2 = null;
        boolean zM680c = false;
        try {
            boolean zMo418d = abstractC0127fM463u2.mo418d();
            outputStreamMo431x = abstractC0127fM463u2.mo431x(-1L);
            if (outputStreamMo431x == null) {
                C0181d.m563d(outputStreamMo431x);
                if (isCancelled()) {
                    C0235b.m683f(abstractC0127fM463u2);
                }
            } else {
                try {
                    inputStreamMo430w = abstractC0127fM463u.mo430w();
                    try {
                        try {
                            zM680c = C0235b.m680c(this, inputStreamMo430w, abstractC0127fM463u.mo424o(), outputStreamMo431x, zMo418d);
                            C0181d.m563d(inputStreamMo430w);
                            C0181d.m563d(outputStreamMo431x);
                            if (isCancelled()) {
                                C0235b.m683f(abstractC0127fM463u2);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            C0235b.m688k(this, abstractC0127fM463u.m467i(), e);
                            C0181d.m563d(inputStreamMo430w);
                            C0181d.m563d(outputStreamMo431x);
                            if (isCancelled()) {
                                C0235b.m683f(abstractC0127fM463u2);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamMo430w;
                        C0181d.m563d(inputStream);
                        C0181d.m563d(outputStreamMo431x);
                        if (isCancelled()) {
                            C0235b.m683f(abstractC0127fM463u2);
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    inputStreamMo430w = null;
                } catch (Throwable th2) {
                    th = th2;
                    C0181d.m563d(inputStream);
                    C0181d.m563d(outputStreamMo431x);
                    if (isCancelled()) {
                        C0235b.m683f(abstractC0127fM463u2);
                    }
                    throw th;
                }
            }
        } catch (Exception e4) {
            e = e4;
            outputStreamMo431x = null;
            inputStreamMo430w = null;
        } catch (Throwable th3) {
            th = th3;
            outputStreamMo431x = null;
        }
        m714q(zM680c ? 1179648 : 1114112);
        ArrayList<C0063a.b> arrayList = this.f1358h;
        ZArchiverService zArchiverService = this.f1351a;
        zArchiverService.m895l(this, zM680c, arrayList, null);
        if (this.f1369j < 5242880) {
            c0129h2 = this.f1368i;
            c0129h2.m490q("plglocal");
        }
        this.f1368i.m478e();
        zArchiverService.m894k(this.f1353c, c0129h2, this.f1354d & 8);
    }
}
