package p023h0;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0051i;
import p011d0.C0064b;
import p014e0.C0079a;
import p014e0.C0080b;
import p014e0.InterfaceC0082d;
import p020g0.AbstractC0126e;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p051u0.C0385h;
import p051u0.InterfaceC0381d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: h0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0144a implements InterfaceC0123b {

    /* JADX INFO: renamed from: a */
    public int f1039a = 0;

    /* JADX INFO: renamed from: l */
    public static void m505l(String str, String str2, String str3, Pattern pattern, int[] iArr, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        String lowerCase;
        if (interfaceC0381d != null) {
            try {
                if (interfaceC0381d.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        ArrayList<C0046d> arrayList = new ArrayList<>();
        C0079a.m266m().m272f(str3, arrayList);
        for (C0046d c0046d : arrayList) {
            try {
                lowerCase = c0046d.f352a.toLowerCase(Locale.getDefault());
            } catch (Exception unused2) {
                lowerCase = c0046d.f352a;
            }
            if (pattern.matcher(lowerCase).matches() && AbstractC0126e.m456g(lowerCase, iArr)) {
                AbstractC0126e.b bVar = new AbstractC0126e.b();
                bVar.f995a = !c0046d.m185f();
                bVar.f996b = c0046d.m181b();
                bVar.f997c = c0046d.f355d;
                cVar.mo461d(bVar, new C0129h(str, str2, str3), c0046d.f352a, c0046d.f353b);
            }
            if (c0046d.m185f()) {
                m505l(str, str2, str3 + c0046d.f352a + '/', pattern, iArr, cVar, interfaceC0381d);
            }
            if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                return;
            }
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: a */
    public final int mo434a(String str, C0129h c0129h) {
        C0079a c0079aM266m = C0079a.m266m();
        String strM78i = C0015d.m78i(c0129h.f1017e, str);
        ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
        try {
            reentrantReadWriteLock.readLock().lock();
            InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
            return interfaceC0082d == null ? -1 : interfaceC0082d.mo292i(strM78i);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0067 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0072 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x007a A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0082 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x0089 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x008f A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0095 A[Catch: Exception -> 0x009d, TryCatch #0 {Exception -> 0x009d, blocks: (B:13:0x0034, B:15:0x003e, B:17:0x0044, B:19:0x004a, B:22:0x0053, B:24:0x005e, B:26:0x0067, B:28:0x0072, B:30:0x007a, B:32:0x0082, B:35:0x0089, B:36:0x008f, B:37:0x0095, B:21:0x0050, B:38:0x0098), top: B:41:0x0034, inners: #1 }] */
    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: b */
    public final boolean mo435b(C0129h c0129h, C0044b c0044b, int i2) {
        int iM276k;
        this.f1039a = 0;
        if (!c0129h.m480g()) {
            return false;
        }
        String str = c0129h.f1015c;
        String str2 = c0129h.f1017e;
        c0044b.clear();
        if (C0015d.m49K(i2, 4) && (!c0129h.m482i() || str2.length() > 1)) {
            c0044b.add(0, new C0046d("..", (byte) 3));
        }
        int size = c0044b.size();
        try {
            C0079a c0079aM266m = C0079a.m266m();
            if (!c0079aM266m.m278n(str) || C0015d.m49K(i2, 1) || (c0079aM266m.m276k() != 0 && c0079aM266m.m276k() != 3)) {
                try {
                    C0064b.m240d(c0129h);
                    if (c0079aM266m.m276k() != 13) {
                        c0079aM266m.m272f(str2, c0044b);
                        if (c0044b.size() <= size) {
                            iM276k = C0079a.m266m().m276k();
                            if (iM276k == 2) {
                                this.f1039a = R.string.ERROR_WRONG_PASSWORD;
                            } else if (iM276k == 3) {
                                this.f1039a = R.string.MES_CORRUP_ARCHICHE;
                            } else if (iM276k == 13) {
                                this.f1039a = R.string.MES_CANCEL_PROCES;
                            } else if (iM276k == 200) {
                                this.f1039a = R.string.MES_ACCESS_DENIED;
                            } else {
                                this.f1039a = R.string.MES_EMPTY_FOLDER;
                            }
                        }
                    } else {
                        this.f1039a = R.string.MES_CANCEL_PROCES;
                    }
                } catch (C0064b.b | UnsatisfiedLinkError unused) {
                    this.f1039a = R.string.ERROR_7Z_LIB;
                }
            } else if (c0079aM266m.m276k() != 13) {
                c0079aM266m.m272f(str2, c0044b);
                if (c0044b.size() <= size) {
                    iM276k = C0079a.m266m().m276k();
                    if (iM276k == 2) {
                        this.f1039a = R.string.ERROR_WRONG_PASSWORD;
                    } else if (iM276k == 3) {
                        this.f1039a = R.string.MES_CORRUP_ARCHICHE;
                    } else if (iM276k == 13) {
                        this.f1039a = R.string.MES_CANCEL_PROCES;
                    } else if (iM276k == 200) {
                        this.f1039a = R.string.MES_ACCESS_DENIED;
                    } else {
                        this.f1039a = R.string.MES_EMPTY_FOLDER;
                    }
                }
            } else {
                this.f1039a = R.string.MES_CANCEL_PROCES;
            }
        } catch (Exception unused2) {
        }
        return true;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: c */
    public final C0051i mo436c(C0051i c0051i) {
        return null;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: d */
    public final int mo437d() {
        return this.f1039a;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: e */
    public final AbstractC0126e.b mo438e(C0129h c0129h, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m480g()) {
            return null;
        }
        try {
            return C0079a.m266m().m271e(c0129h.f1017e, interfaceC0381d);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: f */
    public final int mo439f(C0129h c0129h) {
        return 16;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: g */
    public final AbstractC0126e.b mo440g(C0129h[] c0129hArr, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129hArr[0].m480g()) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (c0129hArr[i2] != null && strArr[i2] != null) {
                    arrayList.add(c0129hArr[i2].f1017e + "/" + strArr[i2]);
                }
            }
            return C0079a.m266m().m273g(arrayList, interfaceC0381d);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: h */
    public final AbstractC0126e.a mo441h(C0129h c0129h) {
        if (!c0129h.m480g()) {
            return null;
        }
        return new AbstractC0126e.a(ZApp.f1375c == null ? "" : ZApp.f1375c.getResources().getString(R.string.FINFO_FS_TYPE_ARCHIVE), 0L, C0079a.m266m().m270d());
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: i */
    public final boolean mo442i(C0129h c0129h, String str, int[] iArr, int i2, AbstractC0126e.c cVar, InterfaceC0381d interfaceC0381d) {
        String lowerCase;
        String string;
        int[] iArr2 = iArr;
        if (!c0129h.m480g()) {
            return false;
        }
        String str2 = c0129h.f1015c;
        String strSubstring = c0129h.f1017e;
        if (!strSubstring.isEmpty() && !strSubstring.endsWith("/")) {
            strSubstring = strSubstring.concat("/");
        }
        String str3 = c0129h.f1013a;
        try {
            if (!C0079a.m266m().m278n(str2)) {
                return false;
            }
        } catch (Exception unused) {
        }
        Pattern patternCompile = Pattern.compile(C0385h.m1079c(str, false)[0]);
        try {
            cVar.mo460b(10);
            C0079a c0079aM266m = C0079a.m266m();
            boolean z2 = !C0015d.m49K(i2, 1);
            ReentrantReadWriteLock reentrantReadWriteLock = c0079aM266m.f582a;
            try {
                reentrantReadWriteLock.readLock().lock();
                InterfaceC0082d interfaceC0082d = c0079aM266m.f583b;
                List<C0080b> listMo301r = interfaceC0082d == null ? null : interfaceC0082d.mo301r(strSubstring, patternCompile, z2, interfaceC0381d);
                reentrantReadWriteLock.readLock().unlock();
                char c2 = '/';
                if (listMo301r == null) {
                    ArrayList<C0046d> arrayList = new ArrayList<>();
                    C0079a.m266m().m272f(strSubstring, arrayList);
                    if (strSubstring.startsWith("/")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    String str4 = strSubstring;
                    int size = arrayList.size();
                    int i3 = 0;
                    for (C0046d c0046d : arrayList) {
                        try {
                            lowerCase = c0046d.f352a.toLowerCase(Locale.getDefault());
                        } catch (Exception unused2) {
                            lowerCase = c0046d.f352a;
                        }
                        if (patternCompile.matcher(lowerCase).matches() && AbstractC0126e.m456g(lowerCase, iArr)) {
                            AbstractC0126e.b bVar = new AbstractC0126e.b();
                            bVar.f995a = !c0046d.m185f();
                            bVar.f996b = c0046d.m181b();
                            bVar.f997c = c0046d.f355d;
                            cVar.mo461d(bVar, new C0129h(str3, str2, str4), c0046d.f352a, c0046d.f353b);
                        }
                        if (c0046d.m185f() && !C0015d.m49K(i2, 1)) {
                            m505l(str3, str2, str4 + c0046d.f352a + '/', patternCompile, iArr, cVar, interfaceC0381d);
                        }
                        if (interfaceC0381d != null && interfaceC0381d.isCancelled()) {
                            break;
                        }
                        i3++;
                        cVar.mo460b((i3 * 100) / size);
                    }
                } else {
                    cVar.mo460b(66);
                    for (C0080b c0080b : listMo301r) {
                        String str5 = c0080b.f586a;
                        if (AbstractC0126e.m456g(str5, iArr2)) {
                            C0080b c0080b2 = c0080b.f591f;
                            if (c0080b2 == null) {
                                string = "";
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append(c2);
                                sb.append(c0080b2.f586a);
                                for (C0080b c0080b3 = c0080b2.f591f; c0080b3 != null; c0080b3 = c0080b3.f591f) {
                                    sb.insert(0, c0080b3.f586a).insert(0, c2);
                                }
                                string = sb.toString();
                            }
                            AbstractC0126e.b bVar2 = new AbstractC0126e.b();
                            bVar2.f995a = !c0080b.m281b();
                            bVar2.f996b = ((long) c0080b.f588c) * 1000;
                            bVar2.f997c = c0080b.f587b;
                            cVar.mo461d(bVar2, new C0129h(str3, str2, string), str5, null);
                            iArr2 = iArr;
                            c2 = '/';
                        }
                    }
                    cVar.mo460b(100);
                }
            } catch (Throwable th) {
                reentrantReadWriteLock.readLock().unlock();
                throw th;
            }
        } catch (Exception unused3) {
        }
        return true;
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: j */
    public final boolean mo443j(C0129h c0129h) {
        return c0129h.m480g();
    }

    @Override // p020g0.InterfaceC0123b
    /* JADX INFO: renamed from: k */
    public final AbstractC0126e.b mo444k(C0129h c0129h, String[] strArr, InterfaceC0381d interfaceC0381d) {
        if (!c0129h.m480g()) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = c0129h.f1017e;
            for (String str2 : strArr) {
                if (str2 != null) {
                    arrayList.add(str + "/" + str2);
                }
            }
            return C0079a.m266m().m273g(arrayList, interfaceC0381d);
        } catch (Exception unused) {
            return null;
        }
    }
}
