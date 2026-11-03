package p029k0;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;

/* JADX INFO: renamed from: k0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0165b implements Preference.OnPreferenceClickListener {
    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        try {
            try {
                preference.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=ZArchiver plugin")));
                return true;
            } catch (ActivityNotFoundException unused) {
                preference.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/search?q=ZArchiver plugin")));
                return true;
            }
        } catch (ActivityNotFoundException unused2) {
            return true;
        }
    }
}
