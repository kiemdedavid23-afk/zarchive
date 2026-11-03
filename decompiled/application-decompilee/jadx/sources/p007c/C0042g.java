package p007c;

import java.util.ArrayList;
import p004b.C0014c;

/* JADX INFO: renamed from: c.g */
/* JADX INFO: loaded from: classes.dex */
public class C0042g extends C0038c {

    /* JADX INFO: renamed from: M */
    public final ArrayList<C0038c> f331M = new ArrayList<>();

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: g */
    public void mo150g() {
        this.f331M.clear();
        super.mo150g();
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: h */
    public final void mo151h(C0014c c0014c) {
        super.mo151h(c0014c);
        ArrayList<C0038c> arrayList = this.f331M;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.get(i2).mo151h(c0014c);
        }
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: m */
    public final void mo156m(int i2, int i3) {
        this.f305x = i2;
        this.f306y = i3;
        ArrayList<C0038c> arrayList = this.f331M;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.get(i4).mo156m(this.f299r + this.f305x, this.f300s + this.f306y);
        }
    }

    @Override // p007c.C0038c
    /* JADX INFO: renamed from: q */
    public final void mo160q() {
        super.mo160q();
        ArrayList<C0038c> arrayList = this.f331M;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0038c c0038c = arrayList.get(i2);
            c0038c.mo156m(this.f301t + this.f305x, this.f302u + this.f306y);
            if (!(c0038c instanceof C0039d)) {
                c0038c.mo160q();
            }
        }
    }

    /* JADX INFO: renamed from: s */
    public void mo162s() {
        mo160q();
        ArrayList<C0038c> arrayList = this.f331M;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0038c c0038c = arrayList.get(i2);
            if (c0038c instanceof C0042g) {
                ((C0042g) c0038c).mo162s();
            }
        }
    }
}
