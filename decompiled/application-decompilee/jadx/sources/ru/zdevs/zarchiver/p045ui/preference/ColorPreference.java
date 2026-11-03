package ru.zdevs.zarchiver.p045ui.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import p004b.C0015d;
import p005b0.C0020b;

/* JADX INFO: loaded from: classes.dex */
public class ColorPreference extends DialogPreference {

    /* JADX INFO: renamed from: a */
    public final int f1887a;

    /* JADX INFO: renamed from: b */
    public int f1888b;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.ColorPreference$a */
    public class DialogInterfaceOnClickListenerC0346a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0020b f1889a;

        public DialogInterfaceOnClickListenerC0346a(C0020b c0020b) {
            this.f1889a = c0020b;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            int i3 = ((C0020b.a) this.f1889a.f162b.get(i2)).f165c;
            ColorPreference colorPreference = ColorPreference.this;
            colorPreference.f1888b = i3;
            colorPreference.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public ColorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0015d.f120g);
        if (typedArrayObtainStyledAttributes == null) {
            this.f1887a = 16777215;
        } else {
            this.f1887a = typedArrayObtainStyledAttributes.getInt(0, 16777215);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.preference.Preference
    public final void onBindView(View view) {
        this.f1888b = getPersistedInt(0);
        setSummary(C0020b.m122a(getContext(), this.f1888b));
        super.onBindView(view);
    }

    @Override // android.preference.DialogPreference
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        persistInt(this.f1888b);
        setSummary(C0020b.m122a(getContext(), this.f1888b));
        notifyChanged();
    }

    @Override // android.preference.DialogPreference
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        C0020b c0020b = new C0020b(getContext(), this.f1887a);
        int persistedInt = getPersistedInt(0);
        this.f1888b = persistedInt;
        builder.setSingleChoiceItems(c0020b, persistedInt, new DialogInterfaceOnClickListenerC0346a(c0020b));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
