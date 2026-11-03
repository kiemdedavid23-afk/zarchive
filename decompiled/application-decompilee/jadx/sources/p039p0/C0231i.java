package p039p0;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: renamed from: p0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0231i {

    /* JADX INFO: renamed from: b */
    public final int f1312b;

    /* JADX INFO: renamed from: c */
    public int f1313c = 0;

    /* JADX INFO: renamed from: a */
    public final LinkedHashMap<Integer, C0227e.a> f1311a = new LinkedHashMap<>(0, 0.75f, true);

    public C0231i(int i2) {
        this.f1312b = i2;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m664a() {
        this.f1311a.clear();
        this.f1313c = 0;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized C0227e.a m665b(Integer num) {
        return this.f1311a.get(num);
    }

    /* JADX INFO: renamed from: c */
    public final void m666c(Integer num, C0227e.a aVar) {
        synchronized (this) {
            try {
                C0227e.a aVarPut = this.f1311a.put(num, aVar);
                int i2 = this.f1313c;
                Bitmap bitmap = aVar.f1275a;
                int allocationByteCount = i2 + (bitmap != null ? bitmap.getAllocationByteCount() + 1024 : 1024);
                this.f1313c = allocationByteCount;
                if (aVarPut != null) {
                    Bitmap bitmap2 = aVarPut.f1275a;
                    this.f1313c = allocationByteCount - (bitmap2 != null ? 1024 + bitmap2.getAllocationByteCount() : 1024);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m668e(this.f1312b);
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m667d(Integer num) {
        C0227e.a aVarRemove = this.f1311a.remove(num);
        if (aVarRemove != null) {
            int i2 = this.f1313c;
            Bitmap bitmap = aVarRemove.f1275a;
            this.f1313c = i2 - (bitmap != null ? 1024 + bitmap.getAllocationByteCount() : 1024);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m668e(int i2) {
        while (this.f1313c > i2) {
            synchronized (this) {
                Iterator<Integer> it = this.f1311a.keySet().iterator();
                if (!it.hasNext()) {
                    this.f1313c = 0;
                    return;
                }
                m667d(it.next());
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m669f() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = null;
            for (Map.Entry<Integer, C0227e.a> entry : this.f1311a.entrySet()) {
                C0227e.a value = entry.getValue();
                if (value != null && value.f1278d != 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(entry.getKey());
                }
            }
        }
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m667d((Integer) it.next());
        }
    }
}
