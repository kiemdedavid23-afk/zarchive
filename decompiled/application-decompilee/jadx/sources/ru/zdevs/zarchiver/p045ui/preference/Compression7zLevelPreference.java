package ru.zdevs.zarchiver.p045ui.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.util.AttributeSet;
import java.util.ArrayList;
import p005b0.C0025g;
import p011d0.C0064b;

/* JADX INFO: loaded from: classes.dex */
public class Compression7zLevelPreference extends ListPreference {
    public Compression7zLevelPreference(Context context) {
        super(context);
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        C0025g c0025g = new C0025g(builder.getContext());
        ArrayList arrayList = c0025g.f192b;
        arrayList.clear();
        ArrayList arrayList2 = c0025g.f193c;
        arrayList2.clear();
        for (CharSequence charSequence : getEntries()) {
            arrayList.add(charSequence.toString());
            arrayList2.add(Boolean.TRUE);
        }
        SharedPreferences sharedPreferences = getSharedPreferences();
        if (sharedPreferences == null || !sharedPreferences.getBoolean("iExtIgnoreRAMLimit", false)) {
            int iM242f = C0064b.m242f(false);
            if (iM242f < 9) {
                c0025g.m126a(5);
            }
            if (iM242f < 7) {
                c0025g.m126a(4);
            }
            if (iM242f < 5) {
                c0025g.m126a(3);
            }
            if (iM242f < 3) {
                c0025g.m126a(2);
            }
        }
        builder.setAdapter(c0025g, null);
        super.onPrepareDialogBuilder(builder);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
