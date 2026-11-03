package p020g0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.ContextThemeWrapper;
import java.util.ArrayList;
import p004b.C0015d;
import p005b0.C0026h;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p023h0.C0146c;
import p025i0.C0153f;
import p031l0.C0176e;
import p047s0.C0358b;
import p059y0.C0439c;
import p060z.C0449a;
import ru.zdevs.zarchiver.C0287a;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: g0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0128g {

    /* JADX INFO: renamed from: g */
    public static boolean f1005g = false;

    /* JADX INFO: renamed from: h */
    public static InterfaceC0125d[] f1006h;

    /* JADX INFO: renamed from: a */
    public final Context f1007a;

    /* JADX INFO: renamed from: b */
    public final Context f1008b;

    /* JADX INFO: renamed from: c */
    public final ArrayList<C0026h> f1009c;

    /* JADX INFO: renamed from: d */
    public String f1010d;

    /* JADX INFO: renamed from: e */
    public int f1011e;

    /* JADX INFO: renamed from: f */
    public String f1012f;

    public C0128g(Context context) {
        this.f1007a = context;
        this.f1008b = C0358b.m1040k(768) ? new ContextThemeWrapper(context, R.style.AppTheme_Light) : context;
        this.f1009c = new ArrayList<>();
        this.f1010d = null;
    }

    /* JADX INFO: renamed from: c */
    public static void m470c(Context context, C0307d c0307d, C0305b c0305b, int i2, int[] iArr, Point point) {
        int i3;
        int[] iArr2;
        int[] iArr3 = iArr;
        C0128g c0128g = new C0128g(context);
        if (c0307d.f1622a != 0) {
            return;
        }
        C0129h c0129h = c0305b.f1594c;
        byte bM825f = c0305b.m825f();
        boolean zM828i = c0305b.m828i();
        int i4 = 1;
        boolean zM49K = C0015d.m49K(i2, 1);
        int i5 = 2;
        int i6 = 4;
        if (f1006h == null) {
            f1006h = new InterfaceC0125d[]{new C0153f(), new C0176e(), new C0146c(), new C0015d()};
        }
        InterfaceC0125d[] interfaceC0125dArr = f1006h;
        int length = interfaceC0125dArr.length;
        int i7 = 0;
        while (true) {
            if (i7 < length) {
                InterfaceC0125d interfaceC0125d = interfaceC0125dArr[i7];
                if (zM828i) {
                    i3 = i6;
                    if (interfaceC0125d.mo99a(c0128g, c0129h, bM825f, iArr, c0305b.f1609r, zM49K)) {
                    }
                } else {
                    i3 = i6;
                }
                if (!zM49K) {
                    i5 = i5;
                    i4 = i4;
                    c0128g = c0128g;
                    iArr2 = iArr3;
                    if (!interfaceC0125d.mo101c(c0128g, c0129h, bM825f, iArr, c0305b.f1608q)) {
                        break;
                    } else {
                        break;
                    }
                }
                i5 = i5;
                i4 = i4;
                c0128g = c0128g;
                iArr2 = iArr3;
                if (zM49K && interfaceC0125d.mo100b(c0128g, c0129h, bM825f, iArr, c0305b.f1608q)) {
                    break;
                }
                i5 = i5;
                i4 = i4;
                c0129h = c0129h;
                c0128g = c0128g;
                iArr3 = iArr2;
                i6 = i3;
                length = length;
                i7++;
                interfaceC0125dArr = interfaceC0125dArr;
            } else {
                i3 = i6;
            }
            iArr2 = iArr3;
            break;
        }
        ArrayList<C0026h> arrayList = c0128g.f1009c;
        if (arrayList.isEmpty()) {
            return;
        }
        if (iArr2.length > i4) {
            c0128g.f1010d = c0128g.f1007a.getString(R.string.MENU_SELECTED_FILES);
        } else if (zM828i) {
            c0128g.f1010d = c0305b.f1609r.get(iArr2[0]).f352a;
        } else {
            c0128g.f1010d = c0305b.f1608q.get(iArr2[0]).f352a;
        }
        DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v = new DialogInterfaceOnCancelListenerC0112v(c0307d, c0128g.f1007a, arrayList, c0128g.f1010d, (C0015d.m49K(i2, i5) && f1005g && point != null) ? i3 : i5, point);
        C0287a c0287a = c0307d.f1624c;
        dialogInterfaceOnCancelListenerC0112v.f738b = c0287a;
        dialogInterfaceOnCancelListenerC0112v.f737a = c0287a;
        String str = c0128g.f1012f;
        if (str != null) {
            dialogInterfaceOnCancelListenerC0112v.m360n(c0128g.f1011e, str);
        }
        dialogInterfaceOnCancelListenerC0112v.m380t();
        c0287a.getClass();
        try {
            C0449a c0449aM820a = c0305b.m820a(iArr2);
            c0287a.f1492d = c0449aM820a;
            c0449aM820a.m1203h();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m471a(int i2) {
        m472b(i2, "");
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0259  */
    /* JADX WARN: Code duplicated, block: B:52:0x026e  */
    /* JADX INFO: renamed from: b */
    public final void m472b(int i2, String str) {
        C0026h c0026h;
        C0026h c0026h2;
        Context context = this.f1008b;
        Resources resources = context.getResources();
        if (i2 == 0) {
            c0026h = new C0026h(1, resources.getString(R.string.MENU_VIEW), C0439c.m1171f(context, R.attr.menuIconView), null);
        } else if (i2 == 1) {
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_VIEW), C0439c.m1171f(context, R.attr.menuIconView), C0439c.m1171f(context, R.attr.menuIconExtend));
        } else if (i2 == 3) {
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_OPEN), C0439c.m1171f(context, R.attr.menuIconOpen), C0358b.m1041l(4096) ? null : C0439c.m1171f(context, R.attr.menuIconExtend));
        } else if (i2 == 18) {
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_OPEN_AS_ARC), C0439c.m1171f(context, R.attr.menuIconView), C0358b.m1041l(4096) ? C0439c.m1171f(context, R.attr.menuIconExtend) : null);
        } else if (i2 == 20) {
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_SHARE), C0439c.m1171f(context, R.attr.menuIconSend));
        } else if (i2 == 56) {
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_DELETE), C0439c.m1171f(context, R.attr.menuIconDelete));
        } else {
            if (i2 != 57) {
                switch (i2) {
                    case 5:
                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_EXTRACT_TO), C0439c.m1171f(context, R.attr.menuIconExtract));
                        break;
                    case 6:
                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_EXTRACT_TO_CURRENT_DIR), C0439c.m1171f(context, R.attr.menuIconExtract));
                        break;
                    case 7:
                        c0026h2 = new C0026h(i2, resources.getString(R.string.MENU_EXTRACT_TO_DIR) + " " + str, C0439c.m1171f(context, R.attr.menuIconExtract));
                        c0026h = c0026h2;
                        break;
                    case 8:
                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_COMPRESS_TO), C0439c.m1171f(context, R.attr.menuIconCompress));
                        break;
                    case 9:
                    case 10:
                        c0026h2 = new C0026h(i2, resources.getString(R.string.MENU_COMPRESS_AS) + " " + str, C0439c.m1171f(context, R.attr.menuIconCompress));
                        c0026h = c0026h2;
                        break;
                    case 11:
                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_TEST), C0439c.m1171f(context, R.attr.menuIconTest));
                        break;
                    case 12:
                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_INSTALL), C0439c.m1171f(context, R.attr.menuIconOpen));
                        break;
                    default:
                        switch (i2) {
                            case 14:
                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_ALL_SELECT), C0439c.m1171f(context, R.attr.menuIconSelectAll));
                                break;
                            case 15:
                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_CLEAR_SELECT), C0439c.m1171f(context, R.attr.menuIconSelectClear));
                                break;
                            case 16:
                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_INVERT_SELECT), C0439c.m1171f(context, R.attr.menuIconSelectInvert));
                                break;
                            default:
                                switch (i2) {
                                    case 22:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_INFO), C0439c.m1171f(context, R.attr.menuIconInfo));
                                        break;
                                    case 23:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_DELETE), C0439c.m1171f(context, R.attr.menuIconDelete));
                                        break;
                                    case 24:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_COPY), C0439c.m1171f(context, R.attr.menuIconCopy));
                                        break;
                                    case 25:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_CUT), C0439c.m1171f(context, R.attr.menuIconCut));
                                        break;
                                    case 26:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_PAST), C0439c.m1171f(context, R.attr.menuIconPast));
                                        break;
                                    case 27:
                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_RENAME), C0439c.m1171f(context, R.attr.menuIconRename));
                                        break;
                                    default:
                                        switch (i2) {
                                            case 70:
                                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_FAVORITE_ADD), C0439c.m1171f(context, R.attr.menuIconAddToFavorite));
                                                break;
                                            case 71:
                                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_DELETE), C0439c.m1171f(context, R.attr.menuIconDelete));
                                                break;
                                            case 72:
                                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_RENAME), C0439c.m1171f(context, R.attr.menuIconRename));
                                                break;
                                            case 73:
                                                c0026h = new C0026h(i2, resources.getString(R.string.MENU_MOVE_UP), C0439c.m1171f(context, R.attr.menuIconMoveUp));
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 90:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_SETTINGS), C0439c.m1171f(context, R.attr.menuIconSettings));
                                                        break;
                                                    case 91:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_MULTISELECT), C0439c.m1171f(context, R.attr.menuIconMultiSelect));
                                                        break;
                                                    case 92:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_EXTRACT_TO_CURRENT_DIR), C0439c.m1171f(context, R.attr.menuIconTo));
                                                        break;
                                                    case 93:
                                                        c0026h2 = new C0026h(i2, resources.getString(R.string.MENU_PAST), C0439c.m1171f(context, R.attr.menuIconTo));
                                                        c0026h = c0026h2;
                                                        break;
                                                    case 94:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_NEW), C0439c.m1171f(context, R.attr.menuIconCompress));
                                                        break;
                                                    case 95:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.BTN_OK), C0439c.m1171f(context, R.attr.menuIconOk));
                                                        break;
                                                    case 96:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.BTN_CANCEL), C0439c.m1171f(context, R.attr.menuIconCancel));
                                                        break;
                                                    case 97:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_EXIT), C0439c.m1171f(context, R.attr.menuIconClose));
                                                        break;
                                                    case 98:
                                                        c0026h = new C0026h(i2, resources.getString(R.string.MENU_PERMISSIONS), C0439c.m1171f(context, R.attr.menuIconPermission));
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
            }
            c0026h = new C0026h(i2, resources.getString(R.string.MENU_RENAME), C0439c.m1171f(context, R.attr.menuIconRename));
        }
        this.f1009c.add(c0026h);
    }

    /* JADX INFO: renamed from: d */
    public final void m473d(C0307d c0307d, int i2, Point point) {
        int i3 = 2;
        if (C0015d.m49K(i2, 2) && f1005g && point != null) {
            i3 = 4;
        }
        DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v = new DialogInterfaceOnCancelListenerC0112v(c0307d, this.f1007a, this.f1009c, this.f1010d, i3, point);
        dialogInterfaceOnCancelListenerC0112v.f738b = c0307d.f1624c;
        String str = this.f1012f;
        if (str != null) {
            dialogInterfaceOnCancelListenerC0112v.m360n(this.f1011e, str);
        }
        dialogInterfaceOnCancelListenerC0112v.m380t();
    }
}
