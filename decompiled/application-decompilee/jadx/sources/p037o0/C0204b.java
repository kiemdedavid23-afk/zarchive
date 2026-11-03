package p037o0;

import p004b.C0015d;
import p035n0.AbstractC0194a;
import p051u0.C0385h;
import ru.zdevs.zarchiver.archiver.C2JBridge;

/* JADX INFO: renamed from: o0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0204b extends C0203a {
    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    /* JADX WARN: Code duplicated, block: B:63:0x0115  */
    /* JADX INFO: renamed from: c */
    public static int m607c(AbstractC0194a abstractC0194a, boolean z2, int i2, boolean z3, String str, String str2) {
        String str3;
        byte b2;
        int iJAskOverwrite;
        boolean z4;
        String str4;
        if (!C0203a.m606b()) {
            if (str != null && str2 != null) {
                if (z2) {
                    str4 = "mv -f '" + str + "' '" + str2 + "'";
                } else {
                    str4 = "cp -Rf '" + str.replace("'", "'\\''") + "' '" + str2.replace("'", "'\\''") + "'";
                }
                if (abstractC0194a.m592b(str4)) {
                    abstractC0194a.m599k(false);
                    z4 = abstractC0194a.f1190h == 0;
                }
            }
            return z4 ? 0 : -1;
        }
        int i3 = i2;
        boolean zM49K = C0015d.m49K(i3, 17);
        StringBuilder sb = new StringBuilder();
        sb.append(C0203a.m605a());
        if (z2) {
            sb.append(zM49K ? " mv -f" : " mv -i");
        } else {
            sb.append(zM49K ? " cp -Rf" : " cp -Ri");
        }
        if (z3) {
            sb.append('d');
        }
        sb.append('p');
        sb.append(" '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("' '");
        sb.append(str2.replace("'", "'\\''"));
        sb.append("'");
        if (!abstractC0194a.m592b(sb.toString())) {
            return -1;
        }
        while (true) {
            try {
                String strM599k = abstractC0194a.m599k(true);
                if (strM599k == null) {
                    break;
                }
                if (!strM599k.isEmpty() && strM599k.charAt(0) == '~') {
                    String[] strArrM1084h = C0385h.m1084h(strM599k, '\t');
                    if (strArrM1084h.length >= 2 && (str3 = strArrM1084h[1]) != null) {
                        int iHashCode = str3.hashCode();
                        if (iHashCode != 2094) {
                            if (iHashCode != 2560) {
                                if (iHashCode == 2564 && str3.equals("PT")) {
                                    b2 = 0;
                                } else {
                                    b2 = -1;
                                }
                            } else if (str3.equals("PP")) {
                                b2 = 1;
                            } else {
                                b2 = -1;
                            }
                        } else if (str3.equals("AO")) {
                            b2 = 2;
                        } else {
                            b2 = -1;
                        }
                        if (b2 == 0) {
                            C2JBridge.jSetProcessText(abstractC0194a.f1183a, strArrM1084h[2]);
                        } else if (b2 == 1) {
                            C2JBridge.jSetProcessPercent(abstractC0194a.f1183a, C0015d.m79i0(0, strArrM1084h[2]));
                        } else if (b2 == 2 && strArrM1084h.length >= 7) {
                            if (i3 == 0) {
                                try {
                                    iJAskOverwrite = C2JBridge.jAskOverwrite(abstractC0194a.f1183a, strArrM1084h[6], C0015d.m81j0(0L, strArrM1084h[2]), C0015d.m79i0(0, strArrM1084h[3]), strArrM1084h[6], C0015d.m81j0(0L, strArrM1084h[4]), C0015d.m79i0(0, strArrM1084h[5]));
                                } catch (Exception unused) {
                                    iJAskOverwrite = 8;
                                }
                            } else {
                                iJAskOverwrite = i3;
                            }
                            String str5 = "$";
                            if ((iJAskOverwrite & 1) != 0) {
                                str5 = "$Y";
                            }
                            if ((iJAskOverwrite & 2) != 0) {
                                str5 = str5 + 'N';
                            }
                            if ((iJAskOverwrite & 8) != 0) {
                                str5 = str5 + 'C';
                                i3 = -2;
                            }
                            if ((iJAskOverwrite & 4) != 0) {
                                str5 = str5 + 'R';
                            }
                            if ((iJAskOverwrite & 16) != 0) {
                                str5 = str5 + 'A';
                                i3 = iJAskOverwrite | i3;
                            }
                            abstractC0194a.m601m(str5);
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        if (abstractC0194a.f1190h == 0) {
            return i3;
        }
        return -1;
    }
}
