package ru.zdevs.zarchiver.p045ui.text;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ExEditText extends EditText implements TextView.OnEditorActionListener {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f1920d = 0;

    /* JADX INFO: renamed from: a */
    public boolean f1921a;

    /* JADX INFO: renamed from: b */
    public View.OnClickListener f1922b;

    /* JADX INFO: renamed from: c */
    public int f1923c;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.text.ExEditText$a */
    public class RunnableC0351a implements Runnable {
        public RunnableC0351a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i2 = ExEditText.f1920d;
            ExEditText exEditText = ExEditText.this;
            if (exEditText.requestFocus()) {
                ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1);
            }
            exEditText.f1921a = false;
        }
    }

    public ExEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView
    public final void onEditorAction(int i2) {
        if (getImeOptions() == 67108870 && i2 == 7) {
            onKeyDown(66, new KeyEvent(0, 66));
        } else {
            super.onEditorAction(i2);
        }
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if ((i2 != 66 && i2 != 160) || getImeOptions() != 6) {
            return super.onKeyDown(i2, keyEvent);
        }
        clearFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.f1921a) {
            postDelayed(new RunnableC0351a(), 300L);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        View.OnClickListener onClickListener = this.f1922b;
        if (onClickListener == null) {
            return false;
        }
        int i3 = this.f1923c;
        if (i3 != 0 && i3 != i2) {
            return false;
        }
        onClickListener.onClick(this);
        return true;
    }
}
