package p002a1;

import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;

/* JADX INFO: renamed from: a1.b */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0010b implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ boolean f40a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ FloatingActionMenu f41b;

    public RunnableC0010b(FloatingActionMenu floatingActionMenu, boolean z2) {
        this.f41b = floatingActionMenu;
        this.f40a = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = FloatingActionMenu.f1729t;
        this.f41b.m931b(this.f40a);
    }
}
