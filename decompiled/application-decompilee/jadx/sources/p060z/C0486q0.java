package p060z;

import java.io.File;
import java.lang.ref.WeakReference;
import p004b.C0015d;
import p008c0.C0046d;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p037o0.C0204b;
import p039p0.C0227e;
import p039p0.C0228f;
import p039p0.C0229g;
import p039p0.C0231i;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0415f;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: z.q0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0486q0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final int f2340e;

    /* JADX INFO: renamed from: f */
    public final WeakReference<C0229g> f2341f;

    /* JADX INFO: renamed from: g */
    public final C0046d f2342g;

    /* JADX INFO: renamed from: h */
    public final String f2343h;

    /* JADX INFO: renamed from: i */
    public final C0129h f2344i;

    /* JADX INFO: renamed from: j */
    public final boolean f2345j = false;

    public C0486q0(int i2, C0229g c0229g, C0129h c0129h, C0046d c0046d, String str) {
        this.f2340e = i2;
        this.f2341f = new WeakReference<>(c0229g);
        this.f2342g = c0046d;
        this.f2343h = str;
        this.f2344i = c0129h;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        Exception e2;
        String message;
        String strMo466h;
        String strM78i;
        boolean zM483j = this.f2344i.m483j();
        boolean z2 = true;
        if (!zM483j || ((!this.f2344i.m485l() && C0415f.m1136d(this.f2344i, true) == 1) || this.f2345j)) {
            try {
                C0129h c0129h = new C0129h(this.f2342g.f352a, this.f2344i);
                AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h);
                if (this.f2342g.f352a.equalsIgnoreCase(this.f2343h)) {
                    if (abstractC0127fM463u.mo432y(this.f2343h + ".z2p")) {
                        abstractC0127fM463u = AbstractC0127f.m463u(new C0129h(this.f2343h + ".z2p", this.f2344i));
                        if (zM483j) {
                            C0228f.m652c(c0129h.f1015c, abstractC0127fM463u.mo420k(), true);
                        }
                    }
                }
                boolean zMo432y = abstractC0127fM463u.mo432y(this.f2343h);
                try {
                    if (zMo432y) {
                        if (zM483j) {
                            String str = c0129h.f1015c;
                            C0129h c0129h2 = this.f2344i;
                            String str2 = this.f2343h;
                            String str3 = c0129h2.f1013a;
                            if (c0129h2.m480g()) {
                                strM78i = c0129h2.f1015c;
                                C0015d.m78i(c0129h2.f1017e, str2);
                            } else if (c0129h2.m487n()) {
                                strM78i = c0129h2.f1015c + str2;
                            } else {
                                strM78i = C0015d.m78i(c0129h2.f1015c, str2);
                            }
                            boolean z3 = !abstractC0127fM463u.mo421l();
                            C0228f.m650a(strM78i, z3);
                            C0228f.m652c(str, z3, true);
                        }
                        strMo466h = null;
                    } else {
                        strMo466h = abstractC0127fM463u.mo466h();
                    }
                    z2 = zMo432y;
                    message = strMo466h;
                } catch (Exception e3) {
                    e2 = e3;
                    z2 = zMo432y;
                    message = e2.getMessage();
                }
            } catch (Exception e4) {
                e2 = e4;
                z2 = false;
            }
        } else {
            AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(C0358b.f1991m);
            if (abstractC0194aM589c.m595f()) {
                String strM491r = this.f2344i.m491r();
                String str4 = this.f2342g.f352a;
                String str5 = this.f2343h;
                File file = new File(strM491r, str4);
                File file2 = new File(strM491r, str5);
                if (file2.exists()) {
                    z2 = false;
                } else {
                    if (!(C0204b.m607c(abstractC0194aM589c, true, 0, true, file.getAbsolutePath(), file2.getAbsolutePath()) >= -1)) {
                        z2 = false;
                    } else if (C0415f.m1135c(strM491r) == 1) {
                        String absolutePath = file.getAbsolutePath();
                        String absolutePath2 = file2.getAbsolutePath();
                        boolean z4 = !file2.isFile();
                        C0228f.m650a(absolutePath2, z4);
                        C0228f.m652c(absolutePath, z4, true);
                    }
                }
                abstractC0194aM589c.close();
                message = !z2 ? abstractC0194aM589c.f1185c : null;
            } else {
                message = ZApp.f1375c.getString(R.string.OPT_ROOT_NOT_FOUND);
                z2 = false;
            }
        }
        if (!z2) {
            return message != null ? new C0499x(message) : new C0499x(R.string.MES_END_WITH_ERROR);
        }
        int iM184e = this.f2342g.m184e(this.f2344i);
        C0046d c0046d = this.f2342g;
        c0046d.f352a = this.f2343h;
        if (!c0046d.m185f()) {
            c0046d.f356e = (byte) -1;
            c0046d.f357f = (byte) 0;
        }
        c0046d.f359h = null;
        C0229g c0229g = this.f2341f.get();
        if (c0229g != null) {
            int iM184e2 = this.f2342g.m184e(this.f2344i);
            Integer numValueOf = Integer.valueOf(iM184e);
            C0231i c0231i = c0229g.f1292d;
            C0227e.a aVarM665b = c0231i.m665b(numValueOf);
            if (aVarM665b != null) {
                c0231i.m667d(Integer.valueOf(iM184e));
                c0231i.m666c(Integer.valueOf(iM184e2), aVarM665b);
            }
        }
        return new C0489s(this.f2340e, this.f2343h);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 101;
    }
}
