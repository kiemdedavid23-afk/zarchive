package ru.zdevs.zarchiver.p045ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import p008c0.AbstractViewOnClickListenerC0050h;
import p008c0.C0044b;
import p008c0.C0045c;
import p008c0.C0046d;
import p017f0.AbstractC0099i;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p020g0.AbstractC0126e;
import p020g0.C0128g;
import p020g0.C0129h;
import p020g0.InterfaceC0123b;
import p025i0.C0149b;
import p025i0.C0150c;
import p031l0.C0172a;
import p039p0.C0229g;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0412c;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
public class FSSelect extends ListView implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, AbstractC0099i.c, C0393a.c {

    /* JADX INFO: renamed from: a */
    public InterfaceC0318b f1674a;

    /* JADX INFO: renamed from: b */
    public InterfaceC0319c f1675b;

    /* JADX INFO: renamed from: c */
    public AbstractViewOnClickListenerC0050h.a f1676c;

    /* JADX INFO: renamed from: d */
    public final C0305b f1677d;

    /* JADX INFO: renamed from: e */
    public C0229g f1678e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC0123b[] f1679f;

    /* JADX INFO: renamed from: g */
    public boolean f1680g;

    /* JADX INFO: renamed from: h */
    public TextView f1681h;

    /* JADX INFO: renamed from: i */
    public final C0393a f1682i;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FSSelect$a */
    public static class C0317a implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final C0129h f1683a;

        /* JADX INFO: renamed from: b */
        public final C0044b f1684b;

        /* JADX INFO: renamed from: c */
        public final int f1685c;

        public C0317a(C0129h c0129h, C0044b c0044b, int i2) {
            this.f1683a = c0129h;
            this.f1684b = c0044b;
            this.f1685c = i2;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 1;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FSSelect$b */
    public interface InterfaceC0318b {
        void onFileSelect(String str, String str2, int i2);
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FSSelect$c */
    public interface InterfaceC0319c {
        void onPathChange(C0129h c0129h);
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FSSelect$d */
    public static class C0320d extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final C0305b f1686e;

        /* JADX INFO: renamed from: f */
        public final C0129h f1687f;

        /* JADX INFO: renamed from: g */
        public final InterfaceC0123b[] f1688g;

        /* JADX INFO: renamed from: h */
        public final int f1689h;

        public C0320d(C0305b c0305b, C0129h c0129h, InterfaceC0123b[] interfaceC0123bArr, int i2) {
            this.f1686e = c0305b;
            this.f1687f = c0129h;
            this.f1688g = interfaceC0123bArr;
            this.f1689h = i2;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            C0129h c0129h;
            int iMo437d;
            C0044b c0044b = new C0044b(0);
            InterfaceC0123b[] interfaceC0123bArr = this.f1688g;
            int length = interfaceC0123bArr.length;
            int i2 = 0;
            while (true) {
                c0129h = this.f1687f;
                if (i2 >= length) {
                    iMo437d = R.string.MES_ACCESS_DENIED;
                    break;
                }
                InterfaceC0123b interfaceC0123b = interfaceC0123bArr[i2];
                if (interfaceC0123b != null && interfaceC0123b.mo435b(c0129h, c0044b, this.f1689h)) {
                    iMo437d = interfaceC0123b.mo437d();
                    break;
                }
                i2++;
            }
            int size = c0044b.size();
            if (size > 1) {
                AbstractC0126e.m458i(this.f1686e.f1599h, c0044b);
            } else if (size == 0 && iMo437d == R.string.MES_ACCESS_DENIED) {
                c0044b.add(0, new C0046d("..", (byte) 3));
            }
            return new C0317a(c0129h, c0044b, iMo437d);
        }
    }

    public FSSelect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1682i = new C0393a();
        InterfaceC0123b[] interfaceC0123bArr = new InterfaceC0123b[3];
        this.f1679f = interfaceC0123bArr;
        interfaceC0123bArr[0] = new C0149b();
        interfaceC0123bArr[1] = new C0172a();
        C0305b c0305b = new C0305b(0);
        this.f1677d = c0305b;
        c0305b.m831l(new C0129h(C0358b.f1980b[0]), (byte) 0, 0);
        setCacheColorHint(0);
        setDrawingCacheEnabled(false);
        setOnItemClickListener(this);
    }

    @Override // p017f0.AbstractC0099i.c
    /* JADX INFO: renamed from: b */
    public final boolean mo245b(AbstractC0099i abstractC0099i) {
        switch (((DialogInterfaceOnCancelListenerC0112v) abstractC0099i).f826j) {
            case 14:
                ((C0045c) getAdapter()).m193g();
                return true;
            case 15:
                ((C0045c) getAdapter()).m194h();
                return true;
            case 16:
                ((C0045c) getAdapter()).m195i();
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m917c() {
        if ((C0358b.f1988j & 4128768) != 0) {
            if (this.f1678e == null) {
                this.f1678e = new C0229g(getContext());
            }
            this.f1678e.m657d(null, C0358b.f1989k);
            C0045c c0045c = (C0045c) getAdapter();
            if (c0045c != null) {
                c0045c.f378m = this.f1678e;
            }
        }
        this.f1682i.m1090a(this, getContext());
    }

    /* JADX INFO: renamed from: d */
    public final void m918d() {
        C0229g c0229g = this.f1678e;
        if (c0229g != null) {
            c0229g.m658e(0);
            this.f1678e = null;
        }
        C0393a c0393a = this.f1682i;
        c0393a.m1095f(100, 1, -1);
        c0393a.m1093d(this);
    }

    public final void finalize() throws Throwable {
        m918d();
        super.finalize();
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        setFileList((C0317a) bVar);
    }

    public C0129h getPath() {
        return this.f1677d.f1594c;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        C0305b c0305b = this.f1677d;
        C0046d c0046d = c0305b.f1608q.get(i2);
        if (c0046d == null) {
            return;
        }
        if (c0046d.m185f()) {
            C0129h c0129h = new C0129h(c0305b.f1594c);
            if (c0046d.m186g()) {
                c0129h.m476c();
            } else {
                c0129h.m474a(c0046d.f352a);
            }
            setPath(c0129h);
            return;
        }
        if (this.f1680g) {
            ((C0045c) getAdapter()).m196j(i2, 2);
            return;
        }
        InterfaceC0318b interfaceC0318b = this.f1674a;
        if (interfaceC0318b != null) {
            interfaceC0318b.onFileSelect(c0305b.f1594c.m491r(), c0046d.f352a, c0046d.m183d());
        }
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        C0046d c0046dM189a;
        C0045c c0045c = (C0045c) getAdapter();
        if (c0045c == null || (c0046dM189a = c0045c.getItem(i2)) == null) {
            return false;
        }
        if (!c0046dM189a.m186g()) {
            Context context = getContext();
            C0128g c0128g = new C0128g(context);
            c0128g.m471a(14);
            c0128g.m471a(16);
            c0128g.m471a(15);
            String string = getContext().getString(R.string.MENU_SELECT);
            c0128g.f1010d = string;
            DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v = new DialogInterfaceOnCancelListenerC0112v(context, c0128g.f1009c, string, 1);
            dialogInterfaceOnCancelListenerC0112v.f738b = this;
            String str = c0128g.f1012f;
            if (str != null) {
                dialogInterfaceOnCancelListenerC0112v.m360n(c0128g.f1011e, str);
            }
            dialogInterfaceOnCancelListenerC0112v.m380t();
        } else if (c0045c.f373h.f334a > 0) {
            c0045c.m194h();
        } else {
            c0045c.m193g();
        }
        return true;
    }

    public void setEmptyText(TextView textView) {
        this.f1681h = textView;
    }

    public void setFileList(C0317a c0317a) {
        setEnabled(true);
        TextView textView = this.f1681h;
        if (textView != null) {
            int i2 = c0317a.f1685c;
            if (i2 != 0) {
                textView.setText(i2);
                this.f1681h.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        C0044b c0044b = c0317a.f1684b;
        C0305b c0305b = this.f1677d;
        synchronized (c0305b.f1592a) {
            c0305b.f1608q = c0044b;
            c0305b.f1610s = null;
            c0305b.f1597f &= -3;
        }
        C0129h c0129h = c0317a.f1683a;
        c0305b.m831l(c0129h, (byte) 0, 0);
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM821b = c0305b.m821b(getContext(), (AbstractViewOnClickListenerC0050h) getAdapter());
        abstractViewOnClickListenerC0050hM821b.f378m = this.f1678e;
        abstractViewOnClickListenerC0050hM821b.f379n = this.f1676c;
        abstractViewOnClickListenerC0050hM821b.mo188m(this.f1680g);
        setAdapter((ListAdapter) abstractViewOnClickListenerC0050hM821b);
        InterfaceC0319c interfaceC0319c = this.f1675b;
        if (interfaceC0319c != null) {
            interfaceC0319c.onPathChange(c0129h);
        }
    }

    public void setMultiSelect(boolean z2) {
        this.f1680g = z2;
        if (z2) {
            setOnItemLongClickListener(this);
        } else {
            setOnItemLongClickListener(null);
        }
    }

    public void setOnFileClickListener(InterfaceC0318b interfaceC0318b) {
        this.f1674a = interfaceC0318b;
    }

    public void setOnItemSelectChanged(AbstractViewOnClickListenerC0050h.a aVar) {
        this.f1676c = aVar;
    }

    public void setOnPathChangeListener(InterfaceC0319c interfaceC0319c) {
        this.f1675b = interfaceC0319c;
    }

    public void setPath(C0129h c0129h) {
        String strM1116j;
        boolean zM486m = c0129h.m486m();
        InterfaceC0123b[] interfaceC0123bArr = this.f1679f;
        if (zM486m && interfaceC0123bArr[2] != null && (strM1116j = C0412c.m1116j(c0129h.f1015c)) != null) {
            c0129h.m489p(strM1116j);
            c0129h.m490q("root");
        }
        int i2 = interfaceC0123bArr[2] == null ? 6 : 4;
        C0305b c0305b = this.f1677d;
        if (c0305b.f1600i) {
            i2 |= 32;
        }
        new C0320d(c0305b, c0129h, interfaceC0123bArr, i2).m1098g(null, this.f1682i);
        setEnabled(false);
    }

    public void setRootSupport(boolean z2) {
        InterfaceC0123b[] interfaceC0123bArr = this.f1679f;
        if (z2) {
            interfaceC0123bArr[2] = new C0150c();
        } else {
            interfaceC0123bArr[2] = null;
        }
    }
}
