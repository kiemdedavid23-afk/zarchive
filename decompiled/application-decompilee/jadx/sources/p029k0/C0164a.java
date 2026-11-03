package p029k0;

import android.content.Intent;
import android.preference.Preference;
import p021g1.C0137h;

/* JADX INFO: renamed from: k0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0164a implements Preference.OnPreferenceClickListener {
    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        Intent intent = (Intent) preference.getExtras().getParcelable("intent");
        if (intent == null) {
            return true;
        }
        C0137h.m502d(preference.getContext(), intent);
        return true;
    }
}
