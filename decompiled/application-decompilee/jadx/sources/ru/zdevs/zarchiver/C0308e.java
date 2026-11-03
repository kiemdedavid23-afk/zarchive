package ru.zdevs.zarchiver;

import android.content.ContentResolver;
import android.provider.DocumentsContract;
import p004b.C0015d;
import p020g0.C0129h;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p060z.C0483p;
import p060z.C0503z;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0308e extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final ContentResolver f1629e;

    /* JADX INFO: renamed from: f */
    public final C0287a.b f1630f;

    /* JADX INFO: renamed from: g */
    public final int f1631g;

    /* JADX INFO: renamed from: h */
    public final int f1632h;

    public C0308e(ContentResolver contentResolver, C0287a.b bVar, int i2, int i3) {
        this.f1629e = contentResolver;
        this.f1630f = bVar;
        this.f1631g = i2;
        this.f1632h = i3;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        ContentResolver contentResolver = this.f1629e;
        int i2 = this.f1631g;
        C0287a.b bVar = this.f1630f;
        try {
            if (i2 == 109) {
                DocumentsContract.deleteDocument(contentResolver, bVar.f1500c);
            } else {
                DocumentsContract.renameDocument(contentResolver, bVar.f1500c, bVar.f1499b);
            }
            if (i2 != 109 && i2 != 110) {
                return new C0483p(new C0129h("file", C0015d.m78i(bVar.f1498a, bVar.f1499b)));
            }
            return new C0503z(this.f1632h);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 112;
    }
}
