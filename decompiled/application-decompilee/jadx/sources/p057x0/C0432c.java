package p057x0;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import java.lang.reflect.Field;
import p004b.C0015d;

/* JADX INFO: renamed from: x0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0432c extends Toast {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f2204b = 0;

    /* JADX INFO: renamed from: a */
    public final Toast f2205a;

    public C0432c(Context context, Toast toast) {
        super(context);
        this.f2205a = toast;
    }

    /* JADX INFO: renamed from: a */
    public static void m1152a(View view, C0431b c0431b) {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Field fieldM92t = C0015d.m92t(View.class, "mContext");
                if (fieldM92t != null) {
                    fieldM92t.set(view, c0431b);
                    fieldM92t.setAccessible(true);
                    fieldM92t.set(view, c0431b);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.widget.Toast
    public final int getDuration() {
        return this.f2205a.getDuration();
    }

    @Override // android.widget.Toast
    public final int getGravity() {
        return this.f2205a.getGravity();
    }

    @Override // android.widget.Toast
    public final float getHorizontalMargin() {
        return this.f2205a.getHorizontalMargin();
    }

    @Override // android.widget.Toast
    public final float getVerticalMargin() {
        return this.f2205a.getVerticalMargin();
    }

    @Override // android.widget.Toast
    public final View getView() {
        return this.f2205a.getView();
    }

    @Override // android.widget.Toast
    public final int getXOffset() {
        return this.f2205a.getXOffset();
    }

    @Override // android.widget.Toast
    public final int getYOffset() {
        return this.f2205a.getYOffset();
    }

    @Override // android.widget.Toast
    public final void setDuration(int i2) {
        this.f2205a.setDuration(i2);
    }

    @Override // android.widget.Toast
    public final void setGravity(int i2, int i3, int i4) {
        this.f2205a.setGravity(i2, i3, i4);
    }

    @Override // android.widget.Toast
    public final void setMargin(float f2, float f3) {
        this.f2205a.setMargin(f2, f3);
    }

    @Override // android.widget.Toast
    public final void setText(int i2) {
        this.f2205a.setText(i2);
    }

    @Override // android.widget.Toast
    public final void setView(View view) {
        this.f2205a.setView(view);
        m1152a(view, new C0431b(view.getContext(), this));
    }

    @Override // android.widget.Toast
    public final void show() {
        this.f2205a.show();
    }

    @Override // android.widget.Toast
    public final void setText(CharSequence charSequence) {
        this.f2205a.setText(charSequence);
    }
}
