package p060z;

import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.p045ui.text.ExSearchView;

/* JADX INFO: renamed from: z.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0455c implements ExSearchView.InterfaceC0354c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2265a;

    public C0455c(ZArchiver zArchiver) {
        this.f2265a = zArchiver;
    }

    @Override // ru.zdevs.zarchiver.p045ui.text.ExSearchView.InterfaceC0354c
    /* JADX INFO: renamed from: a */
    public final void mo1015a(String str, String[] strArr) {
        ZArchiver zArchiver = this.f2265a;
        zArchiver.m746P(zArchiver.f1386h.f1626e, str, strArr, false);
    }
}
