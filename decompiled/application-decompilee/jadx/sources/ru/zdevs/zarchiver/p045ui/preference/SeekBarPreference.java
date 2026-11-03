package ru.zdevs.zarchiver.p045ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Locale;
import p004b.C0015d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends DialogPreference implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a */
    public final int f1909a;

    /* JADX INFO: renamed from: b */
    public final int f1910b;

    /* JADX INFO: renamed from: c */
    public final int f1911c;

    /* JADX INFO: renamed from: d */
    public int f1912d;

    /* JADX INFO: renamed from: e */
    public TextView f1913e;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0015d.f124k);
        if (typedArrayObtainStyledAttributes == null) {
            this.f1909a = 0;
            this.f1911c = 0;
            this.f1910b = 100;
            return;
        }
        try {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getInt(2, Integer.MIN_VALUE);
        } catch (NumberFormatException unused) {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, Integer.MIN_VALUE);
        }
        this.f1909a = dimensionPixelSize;
        try {
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getInt(1, Integer.MIN_VALUE);
        } catch (NumberFormatException unused2) {
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, Integer.MIN_VALUE);
        }
        this.f1910b = dimensionPixelSize2;
        try {
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getInt(0, Integer.MIN_VALUE);
        } catch (NumberFormatException unused3) {
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, Integer.MIN_VALUE);
        }
        this.f1911c = dimensionPixelSize3;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.preference.DialogPreference
    public final View onCreateDialogView() {
        this.f1912d = getPersistedInt(this.f1911c);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_slider, (ViewGroup) null, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.min_value);
        Locale locale = Locale.ENGLISH;
        int i2 = this.f1909a;
        textView.setText(String.format(locale, "%d", Integer.valueOf(i2)));
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.max_value);
        int i3 = this.f1910b;
        textView2.setText(String.format(locale, "%d", Integer.valueOf(i3)));
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.seek_bar);
        seekBar.setMax(i3 - i2);
        seekBar.setProgress(this.f1912d - i2);
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.current_value);
        this.f1913e = textView3;
        textView3.setText(String.format(locale, "%d", Integer.valueOf(this.f1912d)));
        return viewInflate;
    }

    @Override // android.preference.DialogPreference
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        if (z2) {
            if (shouldPersist()) {
                persistInt(this.f1912d);
            }
            notifyChanged();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z2) {
        int i3 = i2 + this.f1909a;
        this.f1912d = i3;
        this.f1913e.setText(String.format(Locale.ENGLISH, "%d", Integer.valueOf(i3)));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
