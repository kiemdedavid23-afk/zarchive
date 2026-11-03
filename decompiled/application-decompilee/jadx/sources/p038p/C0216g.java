package p038p;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p036o.AbstractC0201b;

/* JADX INFO: renamed from: p.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0216g {

    /* JADX INFO: renamed from: a */
    public final HashMap f1248a = new HashMap();

    /* JADX INFO: renamed from: p.g$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final C0221l f1249a;

        /* JADX INFO: renamed from: b */
        public final C0219j f1250b;

        /* JADX INFO: renamed from: c */
        public final C0213d f1251c;

        public a(C0221l c0221l, C0219j c0219j, C0213d c0213d) {
            this.f1249a = c0221l;
            this.f1250b = c0219j;
            this.f1251c = c0213d;
        }
    }

    /* JADX INFO: renamed from: a */
    public final List<a> m617a(long j2) {
        AbstractC0201b abstractC0201b;
        short s2 = (short) ((j2 >> 16) & 255);
        int i2 = (int) (65535 & j2);
        C0215f c0215f = (C0215f) this.f1248a.get(Short.valueOf((short) ((j2 >> 24) & 255)));
        if (c0215f == null) {
            return Collections.emptyList();
        }
        C0221l c0221l = (C0221l) c0215f.f1246d.get(Short.valueOf(s2));
        List<C0219j> list = (List) c0215f.f1247e.get(Short.valueOf(s2));
        if (c0221l == null || list == null) {
            return Collections.emptyList();
        }
        if (!(i2 < c0221l.f1264a.length)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (C0219j c0219j : list) {
            C0213d c0213dM618a = c0219j.m618a(i2);
            if (c0213dM618a != null && (abstractC0201b = c0213dM618a.f1239d) != null && (!(abstractC0201b instanceof AbstractC0201b.i) || j2 != (((long) ((AbstractC0201b.i) abstractC0201b).f1209a) & 4294967295L))) {
                arrayList.add(new a(c0221l, c0219j, c0213dM618a));
            }
        }
        return arrayList;
    }
}
