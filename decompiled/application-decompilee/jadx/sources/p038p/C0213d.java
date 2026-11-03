package p038p;

import java.util.Locale;
import p036o.AbstractC0201b;

/* JADX INFO: renamed from: p.d */
/* JADX INFO: loaded from: classes.dex */
public class C0213d {

    /* JADX INFO: renamed from: a */
    public int f1236a;

    /* JADX INFO: renamed from: b */
    public int f1237b;

    /* JADX INFO: renamed from: c */
    public String f1238c;

    /* JADX INFO: renamed from: d */
    public AbstractC0201b f1239d;

    /* JADX INFO: renamed from: a */
    public String mo616a(C0216g c0216g, Locale locale) {
        AbstractC0201b abstractC0201b = this.f1239d;
        return abstractC0201b != null ? abstractC0201b.mo535c(c0216g, locale) : "null";
    }

    public String toString() {
        return "ResourceEntry{size=" + this.f1236a + ", flags=" + this.f1237b + ", key='" + this.f1238c + "', value=" + this.f1239d + '}';
    }
}
