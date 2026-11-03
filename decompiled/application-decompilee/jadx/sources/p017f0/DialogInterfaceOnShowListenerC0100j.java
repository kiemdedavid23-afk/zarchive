package p017f0;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.Button;
import p059y0.C0439c;
import p059y0.ViewOnTouchListenerC0440d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.j */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnShowListenerC0100j implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Context f744a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0101k f745b;

    /* JADX INFO: renamed from: f0.j$a */
    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Button f746a;

        public a(Button button) {
            this.f746a = button;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogInterfaceOnShowListenerC0100j dialogInterfaceOnShowListenerC0100j = DialogInterfaceOnShowListenerC0100j.this;
            try {
                DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k = dialogInterfaceOnShowListenerC0100j.f745b;
                Context context = dialogInterfaceOnShowListenerC0100j.f744a;
                dialogInterfaceOnCancelListenerC0101k.f749h = new ViewOnTouchListenerC0440d(context, view, 48, context.getString(R.string.HELP_GET_PASSWORD), C0439c.m1166a(8), this.f746a.getPaddingTop());
                ViewOnTouchListenerC0440d viewOnTouchListenerC0440d = dialogInterfaceOnShowListenerC0100j.f745b.f749h;
                viewOnTouchListenerC0440d.f2241f.showAtLocation(viewOnTouchListenerC0440d.f2236a, viewOnTouchListenerC0440d.f2237b, 0, 0);
                viewOnTouchListenerC0440d.f2240e.getViewTreeObserver().addOnPreDrawListener(viewOnTouchListenerC0440d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public DialogInterfaceOnShowListenerC0100j(DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k, Context context) {
        this.f745b = dialogInterfaceOnCancelListenerC0101k;
        this.f744a = context;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0101k dialogInterfaceOnCancelListenerC0101k = this.f745b;
        if (dialogInterfaceOnCancelListenerC0101k.f748g == null) {
            return;
        }
        Context context = this.f744a;
        Drawable drawable = context.getDrawable(R.drawable.l_help);
        if (drawable != null) {
            drawable.setColorFilter(C0439c.m1169d(context), PorterDuff.Mode.SRC_IN);
        }
        Button button = dialogInterfaceOnCancelListenerC0101k.f748g.getButton(-3);
        if (button != null) {
            button.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            button.setText("");
            button.setOnClickListener(new a(button));
        }
    }
}
