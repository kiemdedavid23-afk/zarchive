package p051u0;

import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import p005b0.C0023e;
import p039p0.C0224b;
import p047s0.C0358b;
import p059y0.C0438b;
import p059y0.C0439c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: u0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0384g {
    /* JADX INFO: renamed from: a */
    public static void m1076a(ZApp zApp, ArrayList arrayList) {
        ShortcutManager shortcutManager;
        if (Build.VERSION.SDK_INT >= 25 && (shortcutManager = (ShortcutManager) zApp.getSystemService(ShortcutManager.class)) != null) {
            Resources resources = zApp.getResources();
            Resources.Theme themeNewTheme = resources.newTheme();
            themeNewTheme.applyStyle(C0358b.f1987i, true);
            int iM1166a = C0439c.m1166a(24);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0023e c0023e = (C0023e) it.next();
                if (!C0385h.m1081e(c0023e.f185b)) {
                    Intent intent = new Intent(zApp, (Class<?>) ZArchiver.class);
                    intent.setAction("android.intent.action.VIEW");
                    intent.addCategory("ZA_SHORTCUT");
                    intent.putExtra("shrtct", c0023e.f186c.m491r());
                    Bitmap bitmapM635e = C0224b.m635e(resources, themeNewTheme, C0438b.m1161b(C0358b.m1033d(), c0023e.f184a), iM1166a, iM1166a, 0);
                    if (bitmapM635e.getHeight() != 1) {
                        arrayList2.add(new ShortcutInfo.Builder(zApp, c0023e.f185b).setShortLabel(c0023e.f185b).setIcon(Icon.createWithBitmap(bitmapM635e)).setIntent(intent).build());
                        if (arrayList2.size() >= 4) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            try {
                shortcutManager.removeAllDynamicShortcuts();
                shortcutManager.setDynamicShortcuts(arrayList2);
            } catch (IllegalStateException unused) {
            }
        }
    }
}
