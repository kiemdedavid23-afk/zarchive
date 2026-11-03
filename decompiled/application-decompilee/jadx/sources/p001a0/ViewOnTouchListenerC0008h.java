package p001a0;

import android.view.MotionEvent;
import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

/* JADX INFO: renamed from: a0.h */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC0008h implements View.OnTouchListener {

    /* JADX INFO: renamed from: a */
    public final View f16a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ OpenAsDlg f17b;

    public ViewOnTouchListenerC0008h(OpenAsDlg openAsDlg) {
        this.f17b = openAsDlg;
        this.f16a = openAsDlg.findViewById(R.id.sup_container);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || motionEvent.getY() >= this.f16a.getTop()) {
            return false;
        }
        int i2 = OpenAsDlg.f1532f;
        this.f17b.m797a(true);
        return false;
    }
}
