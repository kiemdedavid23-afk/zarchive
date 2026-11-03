package p055w0;

import android.database.ContentObserver;
import android.os.Handler;
import ru.zdevs.zarchiver.C0287a;

/* JADX INFO: renamed from: w0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0411b extends ContentObserver {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0412c.b f2148a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0411b(Handler handler, C0287a c0287a) {
        super(handler);
        this.f2148a = c0287a;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2) {
        this.f2148a.mo784c(null, false);
    }
}
