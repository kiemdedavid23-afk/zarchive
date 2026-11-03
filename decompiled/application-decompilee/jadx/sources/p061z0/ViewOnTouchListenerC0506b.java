package p061z0;

import android.view.MotionEvent;
import android.view.View;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z0.b */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC0506b implements View.OnTouchListener {

    /* JADX INFO: renamed from: a */
    public final View f2395a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DialogC0510f f2396b;

    public ViewOnTouchListenerC0506b(DialogC0510f dialogC0510f) {
        this.f2396b = dialogC0510f;
        this.f2395a = dialogC0510f.findViewById(R.id.sup_container);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.f2395a.getTop()) {
            return false;
        }
        this.f2396b.dismiss();
        return false;
    }
}
