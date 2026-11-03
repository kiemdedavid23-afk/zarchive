package p019g;

import android.os.Handler;
import android.os.Message;
import android.view.View;

/* JADX INFO: renamed from: g.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0120c implements Handler.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0121d f865a;

    public C0120c(C0121d c0121d) {
        this.f865a = c0121d;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        C0121d c0121d;
        View.OnLongClickListener onLongClickListener;
        if (message.what == 1 && (onLongClickListener = (c0121d = this.f865a).f908g0) != null) {
            c0121d.f882K = 0;
            super/*android.view.View*/.setOnLongClickListener(onLongClickListener);
            c0121d.performLongClick();
            super/*android.view.View*/.setOnLongClickListener(null);
        }
        return true;
    }
}
