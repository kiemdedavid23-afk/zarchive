package ru.zdevs.zarchiver.p045ui.text;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import p004b.C0015d;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
public class EditPassword extends ExEditText {

    /* JADX INFO: renamed from: e */
    public Drawable f1916e;

    /* JADX INFO: renamed from: f */
    public Drawable f1917f;

    /* JADX INFO: renamed from: g */
    public boolean f1918g;

    /* JADX INFO: renamed from: h */
    public boolean f1919h;

    public EditPassword(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setMaxLines(1);
        this.f1917f = C0439c.m1173h(getContext(), R.drawable.ic_visibility_off);
        this.f1916e = C0439c.m1173h(getContext(), R.drawable.ic_visibility);
        int iM1169d = C0439c.m1169d(getContext());
        this.f1917f.setColorFilter(iM1169d, PorterDuff.Mode.SRC_IN);
        this.f1916e.setColorFilter(iM1169d, PorterDuff.Mode.SRC_IN);
        this.f1919h = getResources().getConfiguration().getLayoutDirection() == 1;
        if (!C0015d.m49K(getInputType(), 128)) {
            setInputType(128);
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (this.f1918g) {
            setTransformationMethod(null);
        } else {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        try {
            setSelection(selectionStart, selectionEnd);
        } catch (Exception unused) {
        }
        m1009a();
        if (Build.VERSION.SDK_INT >= 26) {
            setAutofillHints(new String[]{"password"});
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1009a() {
        Drawable drawable = this.f1918g ? this.f1917f : this.f1916e;
        boolean z2 = this.f1919h;
        Drawable drawable2 = z2 ? drawable : null;
        if (z2) {
            drawable = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable2, (Drawable) null, drawable, (Drawable) null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int right;
        if (motionEvent.getAction() == 1 && isEnabled()) {
            Rect bounds = this.f1916e.getBounds();
            int x2 = (int) motionEvent.getX();
            if (this.f1919h) {
                right = bounds.width() + getLeft() + 50;
            } else {
                right = (getRight() - bounds.width()) - 50;
            }
            if (!this.f1919h ? x2 >= right : x2 <= right) {
                this.f1918g = !this.f1918g;
                int selectionStart = getSelectionStart();
                int selectionEnd = getSelectionEnd();
                if (this.f1918g) {
                    setTransformationMethod(null);
                } else {
                    setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                try {
                    setSelection(selectionStart, selectionEnd);
                } catch (Exception unused) {
                }
                m1009a();
                motionEvent.setAction(3);
                performClick();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (z2) {
            m1009a();
        } else {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }
}
