package p008c0;

import java.util.ArrayList;

/* JADX INFO: renamed from: c0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0043a {

    /* JADX INFO: renamed from: a */
    public final Integer[] f332a;

    /* JADX INFO: renamed from: b */
    public final String[] f333b;

    public C0043a(Integer[] numArr, String[] strArr) {
        this.f332a = numArr;
        this.f333b = strArr;
    }

    public C0043a(ArrayList<Integer> arrayList, ArrayList<String> arrayList2) {
        this((Integer[]) arrayList.toArray(new Integer[0]), (String[]) arrayList2.toArray(new String[0]));
    }
}
