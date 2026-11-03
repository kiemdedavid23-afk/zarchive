package p022h;

/* JADX INFO: renamed from: h.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0140a<T> implements InterfaceC0141b<T> {

    /* JADX INFO: renamed from: a */
    public final Class<? extends T> f1038a;

    public C0140a(Class<? extends T> cls) {
        this.f1038a = cls;
    }

    @Override // p022h.InterfaceC0141b
    /* JADX INFO: renamed from: a */
    public final T mo504a() {
        return this.f1038a.newInstance();
    }
}
