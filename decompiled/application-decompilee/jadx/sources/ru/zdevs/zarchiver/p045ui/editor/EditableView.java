package ru.zdevs.zarchiver.p045ui.editor;

import android.R;
import android.app.RemoteAction;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Selection;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContentInfo;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassification;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p006b1.AsyncTaskC0035f;
import p006b1.C0031b;
import p006b1.C0033d;
import p006b1.C0034e;
import p006b1.InterfaceC0030a;
import p009c1.AbstractC0053b;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZTextEditor;

/* JADX INFO: loaded from: classes.dex */
public class EditableView extends View implements InterfaceC0030a, InterfaceC0342e, MenuItem.OnMenuItemClickListener, C0341d.b {

    /* JADX INFO: renamed from: y */
    public static final /* synthetic */ int f1755y = 0;

    /* JADX INFO: renamed from: a */
    public final int f1756a;

    /* JADX INFO: renamed from: b */
    public final int f1757b;

    /* JADX INFO: renamed from: c */
    public final int[] f1758c;

    /* JADX INFO: renamed from: d */
    public final int[] f1759d;

    /* JADX INFO: renamed from: e */
    public final C0339b f1760e;

    /* JADX INFO: renamed from: f */
    public final GestureDetectorOnGestureListenerC0340c f1761f;

    /* JADX INFO: renamed from: g */
    public final C0031b f1762g;

    /* JADX INFO: renamed from: h */
    public final TextKeyListener f1763h;

    /* JADX INFO: renamed from: i */
    public final C0343f f1764i;

    /* JADX INFO: renamed from: j */
    public final InputMethodManager f1765j;

    /* JADX INFO: renamed from: k */
    public final C0034e f1766k;

    /* JADX INFO: renamed from: l */
    public final Paint f1767l;

    /* JADX INFO: renamed from: m */
    public ActionMode f1768m;

    /* JADX INFO: renamed from: n */
    public int f1769n;

    /* JADX INFO: renamed from: o */
    public final C0341d f1770o;

    /* JADX INFO: renamed from: p */
    public final Rect f1771p;

    /* JADX INFO: renamed from: q */
    public final RunnableC0334c f1772q;

    /* JADX INFO: renamed from: r */
    public boolean f1773r;

    /* JADX INFO: renamed from: s */
    public boolean f1774s;

    /* JADX INFO: renamed from: t */
    public boolean f1775t;

    /* JADX INFO: renamed from: u */
    public InterfaceC0336e f1776u;

    /* JADX INFO: renamed from: v */
    public int f1777v;

    /* JADX INFO: renamed from: w */
    public C0033d f1778w;

    /* JADX INFO: renamed from: x */
    public final RunnableC0332a f1779x;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$a */
    public class RunnableC0332a implements Runnable {
        public RunnableC0332a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0033d c0033d = EditableView.this.f1778w;
            if (c0033d != null) {
                c0033d.m134c();
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$b */
    public class C0333b extends ActionMode.Callback2 {

        /* JADX INFO: renamed from: a */
        public final boolean f1781a;

        /* JADX INFO: renamed from: b */
        public final Object f1782b;

        public C0333b(int i2, Object obj) {
            boolean z2 = i2 == 0;
            this.f1781a = z2;
            this.f1782b = obj;
            EditableView.this.f1761f.m995g(z2 ? 2 : 1);
            EditableView.this.invalidate();
        }

        /* JADX INFO: renamed from: a */
        public final void m957a(Menu menu, RemoteAction remoteAction, int i2, int i3) {
            MenuItem showAsActionFlags = menu.add(R.id.textAssist, 0, i2, remoteAction.getTitle()).setContentDescription(remoteAction.getContentDescription()).setShowAsActionFlags(i3);
            if (Build.VERSION.SDK_INT < 28 || !remoteAction.shouldShowIcon()) {
                return;
            }
            showAsActionFlags.setIcon(remoteAction.getIcon().loadDrawable(EditableView.this.getContext()));
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            boolean z2;
            Object obj;
            if (menuItem.getGroupId() == 16908353) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 < 26 || (obj = this.f1782b) == null) {
                    z2 = false;
                } else {
                    TextClassification textClassification = (TextClassification) obj;
                    if (menuItem.getItemId() == 16908353) {
                        View.OnClickListener onClickListener = textClassification.getOnClickListener();
                        if (onClickListener != null) {
                            onClickListener.onClick(menuItem.getActionView());
                        }
                    } else if (i2 >= 28) {
                        try {
                            textClassification.getActions().get(menuItem.getOrder() - 20).getActionIntent().send();
                        } catch (Exception unused) {
                        }
                    }
                    z2 = true;
                }
                if (z2) {
                    return true;
                }
            }
            return EditableView.this.onMenuItemClick(menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            Object obj;
            actionMode.setTitle((CharSequence) null);
            actionMode.setSubtitle((CharSequence) null);
            actionMode.setTitleOptionalHint(true);
            int i2 = EditableView.f1755y;
            EditableView editableView = EditableView.this;
            editableView.m940d(menu);
            menu.findItem(R.id.selectAll).setVisible((editableView.getSelectionStart() == 0 && editableView.getSelectionEnd() == editableView.f1760e.f1800c) ? false : true);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 26 && (obj = this.f1782b) != null) {
                TextClassification textClassification = (TextClassification) obj;
                if (i3 >= 28 && !textClassification.getActions().isEmpty()) {
                    m957a(menu, textClassification.getActions().get(0), 20, 2);
                } else if ((textClassification.getIcon() != null || !TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getIntent() != null || textClassification.getOnClickListener() != null)) {
                    menu.add(R.id.textAssist, R.id.textAssist, 10, textClassification.getLabel()).setIcon(textClassification.getIcon()).setShowAsActionFlags(2).setIntent(textClassification.getIntent());
                }
                if (i3 >= 28) {
                    int size = textClassification.getActions().size();
                    for (int i4 = 1; i4 < size; i4++) {
                        m957a(menu, textClassification.getActions().get(i4), i4 + 20, 0);
                    }
                }
            }
            return true;
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            EditableView editableView = EditableView.this;
            editableView.f1761f.m995g(0);
            editableView.f1768m = null;
            editableView.postInvalidate();
        }

        @Override // android.view.ActionMode.Callback2
        public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            int i2;
            int i3;
            int i4;
            int i5;
            int[] iArr;
            int i6;
            EditableView editableView = EditableView.this;
            boolean z2 = false;
            if (editableView.f1760e.f1804g[0] == -1) {
                return;
            }
            int iM136b = editableView.f1766k.m136b();
            int[] iArr2 = editableView.f1759d;
            int width = iArr2[0];
            if (width == -1 || (i6 = iArr2[1]) == -1) {
                width = iArr2[2];
                if (width == -1 || (i3 = iArr2[3]) == -1) {
                    width = editableView.getWidth() / 2;
                    i2 = -iM136b;
                } else {
                    i2 = i3 - iM136b;
                    z2 = true;
                }
            } else {
                i2 = i6 - iM136b;
            }
            if (!this.f1781a || z2 || (i4 = (iArr = editableView.f1759d)[2]) == -1 || (i5 = iArr[3]) == -1) {
                i4 = width + 1;
                i5 = i2 + iM136b;
            }
            rect.set(width, i2, i4, i5);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            int i2 = EditableView.f1755y;
            EditableView editableView = EditableView.this;
            editableView.getClass();
            menu.findItem(R.id.selectAll).setVisible((editableView.getSelectionStart() == 0 && editableView.getSelectionEnd() == editableView.f1760e.f1800c) ? false : true);
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$c */
    public class RunnableC0334c implements Runnable {

        /* JADX INFO: renamed from: a */
        public boolean f1784a = true;

        /* JADX INFO: renamed from: b */
        public boolean f1785b = true;

        /* JADX INFO: renamed from: c */
        public boolean f1786c = true;

        public RunnableC0334c() {
        }

        /* JADX INFO: renamed from: a */
        public final void m958a() {
            if (this.f1784a) {
                return;
            }
            EditableView.this.removeCallbacks(this);
            this.f1784a = true;
            this.f1786c = true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1784a) {
                return;
            }
            EditableView editableView = EditableView.this;
            editableView.removeCallbacks(this);
            Rect rect = editableView.f1771p;
            if (rect.right == -1 || rect.top == -1 || !this.f1785b) {
                this.f1784a = true;
                return;
            }
            this.f1786c = !this.f1786c;
            editableView.invalidate(rect);
            editableView.postDelayed(this, 500L);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$d */
    public static class C0335d {

        /* JADX INFO: renamed from: a */
        public final EditableView f1788a;

        /* JADX INFO: renamed from: b */
        public final int f1789b;

        /* JADX INFO: renamed from: c */
        public final int f1790c;

        public C0335d(EditableView editableView, int i2, int i3) {
            this.f1788a = editableView;
            this.f1789b = i2;
            this.f1790c = i3;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$e */
    public interface InterfaceC0336e {
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$f */
    public static class C0337f extends View.BaseSavedState {
        public static final Parcelable.Creator<C0337f> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        public C0339b f1791a;

        /* JADX INFO: renamed from: b */
        public final C0339b.a f1792b;

        /* JADX INFO: renamed from: c */
        public int f1793c;

        /* JADX INFO: renamed from: d */
        public int f1794d;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.EditableView$f$a */
        public class a implements Parcelable.Creator<C0337f> {
            @Override // android.os.Parcelable.Creator
            public final C0337f createFromParcel(Parcel parcel) {
                return new C0337f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final C0337f[] newArray(int i2) {
                return new C0337f[i2];
            }
        }

        public C0337f(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "SavedState";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1793c);
            parcel.writeInt(this.f1794d);
            C0339b c0339b = this.f1791a;
            synchronized (c0339b) {
                parcel.writeInt(c0339b.f1799b.size());
                Iterator it = c0339b.f1799b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        C0339b.d dVar = (C0339b.d) it.next();
                        parcel.writeInt(dVar.f1824d);
                        parcel.writeInt(dVar.f1822b);
                        int i3 = dVar.f1824d;
                        int i4 = i3 % 2;
                        int i5 = i3 - i4;
                        for (int i6 = 0; i6 < i5; i6 += 2) {
                            char[] cArr = dVar.f1823c;
                            parcel.writeInt((cArr[i6 + 1] << 16) | cArr[i6]);
                        }
                        if (i4 == 1) {
                            parcel.writeInt(dVar.f1823c[i5]);
                        }
                    } else {
                        parcel.writeInt(c0339b.f1804g[0]);
                        parcel.writeInt(c0339b.f1804g[1]);
                    }
                }
            }
        }

        public C0337f(Parcel parcel) {
            super(parcel);
            this.f1793c = parcel.readInt();
            this.f1794d = parcel.readInt();
            int i2 = parcel.readInt();
            C0339b.a aVar = new C0339b.a(i2);
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = parcel.readInt();
                int i6 = i5 % 2;
                int i7 = i5 - i6;
                C0339b.d dVar = new C0339b.d(i5, parcel.readInt());
                for (int i8 = 0; i8 < i7; i8 += 2) {
                    int i9 = parcel.readInt();
                    char[] cArr = dVar.f1823c;
                    cArr[i8] = (char) i9;
                    cArr[i8 + 1] = (char) (i9 >> 16);
                }
                if (i6 == 1) {
                    dVar.f1823c[i7] = (char) parcel.readInt();
                }
                dVar.f1824d = i5;
                aVar.f1811a.add(dVar);
                i3 += i5;
            }
            aVar.f1813c = i3;
            int i10 = parcel.readInt();
            int[] iArr = aVar.f1812b;
            iArr[0] = i10;
            iArr[1] = parcel.readInt();
            this.f1792b = aVar;
        }
    }

    public EditableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1779x = new RunnableC0332a();
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.f1756a = (int) TypedValue.applyDimension(1, 1.0f, Resources.getSystem().getDisplayMetrics());
        this.f1757b = (int) TypedValue.applyDimension(1, 1.5f, Resources.getSystem().getDisplayMetrics());
        this.f1758c = new int[2];
        this.f1759d = new int[4];
        C0034e c0034e = new C0034e(context);
        this.f1766k = c0034e;
        C0339b c0339b = new C0339b(this);
        this.f1760e = c0339b;
        this.f1761f = new GestureDetectorOnGestureListenerC0340c(context, this, c0034e);
        this.f1762g = new C0031b(this, c0339b);
        this.f1763h = TextKeyListener.getInstance();
        this.f1764i = new C0343f();
        this.f1765j = (InputMethodManager) context.getSystemService("input_method");
        Paint paint = new Paint();
        this.f1767l = paint;
        paint.setAntiAlias(true);
        this.f1770o = new C0341d(this);
        this.f1771p = new Rect(-1, -1, -1, -1);
        this.f1772q = new RunnableC0334c();
        this.f1774s = false;
        this.f1773r = false;
    }

    private ClipboardManager getClipboardManager() {
        return (ClipboardManager) getContext().getSystemService("clipboard");
    }

    private DisplayMetrics getDisplayMetricsOrSystem() {
        Context context = getContext();
        return (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics();
    }

    private int getLineNumberWidth() {
        if (this.f1774s) {
            return (int) (this.f1767l.measureText(String.valueOf(this.f1760e.f1799b.size() + 1)) + (this.f1756a * 12));
        }
        return 0;
    }

    @Override // ru.zdevs.zarchiver.p045ui.editor.C0341d.b
    /* JADX INFO: renamed from: a */
    public final int mo937a() {
        return getLineNumberWidth();
    }

    /* JADX INFO: renamed from: b */
    public final boolean m938b() {
        return this.f1760e.f1800c > 0 && m945i();
    }

    /* JADX INFO: renamed from: c */
    public final boolean m939c() {
        ClipboardManager clipboardManager = getClipboardManager();
        return getSelectionStart() >= 0 && getSelectionEnd() >= 0 && clipboardManager != null && clipboardManager.hasPrimaryClip();
    }

    @Override // android.view.View, ru.zdevs.zarchiver.p045ui.editor.C0341d.b
    public final int computeHorizontalScrollOffset() {
        return this.f1761f.m990b();
    }

    @Override // android.view.View, ru.zdevs.zarchiver.p045ui.editor.C0341d.b
    public final int computeHorizontalScrollRange() {
        return getWidth() + this.f1761f.f1840g;
    }

    @Override // android.view.View
    public final void computeScroll() {
        if (this.f1761f.f1838e.computeScrollOffset()) {
            C0341d c0341d = this.f1770o;
            if (c0341d.f1865m != 2) {
                c0341d.m998a(1);
            }
            postInvalidate();
        }
    }

    @Override // android.view.View, ru.zdevs.zarchiver.p045ui.editor.C0341d.b
    public final int computeVerticalScrollOffset() {
        return this.f1761f.m991c();
    }

    @Override // android.view.View, ru.zdevs.zarchiver.p045ui.editor.C0341d.b
    public final int computeVerticalScrollRange() {
        return getHeight() + this.f1761f.f1841h;
    }

    /* JADX INFO: renamed from: d */
    public final void m940d(Menu menu) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.actionModeCutDrawable, R.attr.actionModeCopyDrawable, R.attr.actionModePasteDrawable, R.attr.actionModeSelectAllDrawable, R.attr.actionModeShareDrawable});
        if (m938b()) {
            menu.add(1, R.id.cut, 4, R.string.cut).setAlphabeticShortcut('x').setIcon(typedArrayObtainStyledAttributes.getDrawable(0)).setShowAsActionFlags(2);
            menu.add(1, R.id.copy, 5, R.string.copy).setAlphabeticShortcut('c').setIcon(typedArrayObtainStyledAttributes.getDrawable(1)).setShowAsActionFlags(2);
        }
        if (m939c()) {
            menu.add(1, R.id.paste, 6, R.string.paste).setAlphabeticShortcut('v').setIcon(typedArrayObtainStyledAttributes.getDrawable(2)).setShowAsActionFlags(2);
        }
        menu.add(1, R.id.selectAll, 7, R.string.selectAll).setAlphabeticShortcut('a').setVisible((getSelectionStart() == 0 && getSelectionEnd() == this.f1760e.f1800c) ? false : true).setIcon(typedArrayObtainStyledAttributes.getDrawable(3)).setShowAsActionFlags(2);
        menu.add(2, R.id.shareText, 8, ru.zdevs.zarchiver.R.string.MENU_SHARE).setVisible(m938b()).setIcon(typedArrayObtainStyledAttributes.getDrawable(4));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: e */
    public final void m941e(Canvas canvas) {
        int[] iArr = this.f1759d;
        int i2 = iArr[0];
        int i3 = this.f1757b;
        int i4 = i2 - (i3 / 2);
        int i5 = iArr[1];
        C0034e c0034e = this.f1766k;
        int iM136b = i5 - c0034e.m136b();
        int i6 = iArr[0] + i3;
        int i7 = iArr[1];
        Rect rect = this.f1771p;
        rect.set(i4, iM136b, i6, i7);
        RunnableC0334c runnableC0334c = this.f1772q;
        if (runnableC0334c.f1786c) {
            float f2 = rect.left;
            float f3 = rect.top;
            float f4 = rect.right;
            float f5 = rect.bottom;
            Paint paint = c0034e.f232a;
            paint.setColor(c0034e.m135a((byte) 10));
            c0034e.f233b = (byte) 10;
            canvas.drawRect(f2, f3, f4, f5, paint);
        }
        C0033d c0033d = this.f1778w;
        if (c0033d != null && this.f1777v == 0) {
            c0033d.m133b(rect.centerX(), rect.centerY());
        }
        if (runnableC0334c.f1784a && runnableC0334c.f1785b) {
            runnableC0334c.f1786c = true;
            runnableC0334c.f1784a = false;
            EditableView.this.postDelayed(runnableC0334c, 500L);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m942f(Canvas canvas, C0339b.d dVar, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int iM987h;
        int iM987h2;
        if (i5 >= i6) {
            return;
        }
        C0034e c0034e = this.f1766k;
        byte bMo206f = 0;
        if (i7 == -1 || i7 > i6 || i8 < i5) {
            iM987h = -1;
            iM987h2 = -1;
        } else {
            int[] iArr = this.f1759d;
            if (i7 >= i5) {
                iM987h2 = i7 > i5 ? dVar.m987h(c0034e, i5, i7 - i5) : 0;
                if ((i9 & 1) == 1) {
                    iArr[0] = i3 + iM987h2;
                    if (c0034e.f234c == 0) {
                        c0034e.m136b();
                    }
                    iArr[1] = c0034e.f235d + i4;
                }
                if (i8 == i7) {
                    m941e(canvas);
                }
            } else {
                iM987h2 = 0;
            }
            if (i8 == i7) {
                iM987h = -1;
            } else if (i6 >= i8) {
                iM987h = i6 > i8 ? dVar.m987h(c0034e, i5, i8 - i5) : i10;
                if ((i9 & 2) == 2) {
                    iArr[2] = i3 + iM987h;
                    if (c0034e.f234c == 0) {
                        c0034e.m136b();
                    }
                    iArr[3] = c0034e.f235d + i4;
                }
            } else {
                iM987h = i10;
            }
        }
        if (iM987h != -1) {
            float f2 = i3 + iM987h2;
            if (c0034e.f234c == 0) {
                c0034e.m136b();
            }
            float f3 = c0034e.f234c + i4;
            float f4 = iM987h + i3;
            if (c0034e.f234c == 0) {
                c0034e.m136b();
            }
            float f5 = c0034e.f235d + i4;
            byte b2 = c0034e.f233b;
            Paint paint = c0034e.f232a;
            if (9 != b2) {
                paint.setColor(c0034e.m135a((byte) 9));
                c0034e.f233b = (byte) 9;
            }
            canvas.drawRect(f2, f3, f4, f5, paint);
        }
        AbstractC0053b abstractC0053b = this.f1760e.f1809l;
        char[] cArr = dVar.f1823c;
        if (cArr[i5] == '\t') {
            return;
        }
        int i11 = (i6 - i5) - ((i6 <= 0 || cArr[i6 + (-1)] != '\n') ? 0 : 1);
        byte[] bArr = dVar.f1829i;
        if (bArr != null && abstractC0053b != null && (bMo206f = bArr[i2]) == 0) {
            int[] iArr2 = dVar.f1828h;
            bMo206f = abstractC0053b.mo206f(cArr, iArr2[i2] & 8388607, iArr2[i2 + 1] & 8388607);
            bArr[i2] = bMo206f;
        }
        char[] cArr2 = dVar.f1823c;
        float f6 = i3;
        float f7 = i4;
        byte b3 = (byte) (bMo206f & 15);
        byte b4 = c0034e.f233b;
        Paint paint2 = c0034e.f232a;
        if (b3 != b4) {
            paint2.setColor(c0034e.m135a(b3));
            c0034e.f233b = b3;
        }
        canvas.drawText(cArr2, i5, i11, f6, f7, paint2);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:34:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a5 A[LOOP:1: B:31:0x0083->B:42:0x00a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8 A[PHI: r1 r9
      0x00a8: PHI (r1v7 int) = (r1v6 int), (r1v11 int) binds: [B:24:0x006a, B:29:0x0079] A[DONT_GENERATE, DONT_INLINE]
      0x00a8: PHI (r9v2 int) = (r9v1 int), (r9v5 int) binds: [B:24:0x006a, B:29:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x0091 A[EDGE_INSN: B:74:0x0091->B:36:0x0091 BREAK  A[LOOP:1: B:31:0x0083->B:42:0x00a5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x008d A[SYNTHETIC] */
    /* JADX INFO: renamed from: g */
    public final int m943g(float f2, float f3) {
        int i2;
        int iM980a;
        int iM982c;
        int iM981b;
        int iM980a2;
        int iM987h;
        C0339b c0339b = this.f1760e;
        int[] iArr = this.f1758c;
        int iM969g = c0339b.m969g((int) f3, iArr);
        int iM980a3 = 0;
        int i3 = iArr[0];
        C0339b.d dVarM966d = c0339b.m966d(iM969g);
        if (dVarM966d == null) {
            C0339b.d dVarM966d2 = c0339b.m966d(c0339b.f1799b.size() - 1);
            if (dVarM966d2 == null) {
                return 0;
            }
            return (dVarM966d2.f1821a + dVarM966d2.f1824d) - (dVarM966d2.f1822b & 1);
        }
        if (dVarM966d.f1824d < (dVarM966d.f1822b & 1) + 1) {
            return dVarM966d.f1821a;
        }
        int lineNumberWidth = getLineNumberWidth();
        if (this.f1774s) {
            float f4 = lineNumberWidth;
            f2 = f2 > f4 ? f2 - f4 : 0.0f;
        }
        int i4 = dVarM966d.f1827g - 1;
        boolean z2 = this.f1773r;
        C0034e c0034e = this.f1766k;
        if (!z2) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < i4) {
                int iM986g = dVarM966d.m986g(c0034e, i5);
                float f5 = i6;
                if ((f5 <= f2 && f2 < i6 + iM986g) || (i2 = i5 + 1) == i4) {
                    int[] iArr2 = dVarM966d.f1828h;
                    iM980a3 = dVarM966d.m980a(c0034e, iArr2[i5] & 8388607, iArr2[i5 + 1] & 8388607, f2 - f5);
                    break;
                }
                i6 += iM986g;
                i5 = i2;
            }
        } else {
            int iM136b = c0034e.m136b();
            int width = getWidth() - lineNumberWidth;
            int i7 = 0;
            int iM980a4 = 0;
            int i8 = 0;
            while (true) {
                if (i7 < i4) {
                    int iM986g2 = dVarM966d.m986g(c0034e, i7);
                    if (i8 + iM986g2 > width) {
                        if (i8 != 0) {
                            if (i3 >= iM136b) {
                                i3 -= iM136b;
                                i8 = 0;
                                if (iM986g2 > width) {
                                    if (i3 >= iM136b) {
                                        i8 += iM986g2;
                                        i7++;
                                    } else {
                                        i8 += iM986g2;
                                        i7++;
                                    }
                                    int[] iArr3 = dVarM966d.f1828h;
                                    iM980a = dVarM966d.m980a(c0034e, iArr3[i7] & 8388607, iArr3[i7 + 1] & 8388607, f2 - i8);
                                    break;
                                }
                                iM982c = dVarM966d.m982c(i7);
                                iM981b = dVarM966d.m981b(i7);
                                while (true) {
                                    iM980a2 = dVarM966d.m980a(c0034e, iM982c, iM981b, width);
                                    if (iM980a2 < iM981b) {
                                        break;
                                        break;
                                    }
                                    if (i3 < iM136b) {
                                        iM980a4 = dVarM966d.m980a(c0034e, iM982c, iM980a2, f2);
                                        break;
                                    }
                                    i3 -= iM136b;
                                    iM982c = iM980a2;
                                }
                                iM987h = dVarM966d.m987h(c0034e, iM982c, iM981b - iM982c);
                                if (i3 >= iM136b) {
                                }
                                i8 = iM987h;
                                i7++;
                            } else {
                                iM980a = dVarM966d.m981b(i7 - 1);
                                break;
                            }
                        } else {
                            if (iM986g2 > width) {
                                if (i3 >= iM136b) {
                                    i8 += iM986g2;
                                    i7++;
                                } else {
                                    i8 += iM986g2;
                                    i7++;
                                }
                                int[] iArr4 = dVarM966d.f1828h;
                                iM980a = dVarM966d.m980a(c0034e, iArr4[i7] & 8388607, iArr4[i7 + 1] & 8388607, f2 - i8);
                                break;
                            }
                            iM982c = dVarM966d.m982c(i7);
                            iM981b = dVarM966d.m981b(i7);
                            while (true) {
                                iM980a2 = dVarM966d.m980a(c0034e, iM982c, iM981b, width);
                                if (iM980a2 < iM981b) {
                                    break;
                                }
                                if (i3 < iM136b) {
                                    iM980a4 = dVarM966d.m980a(c0034e, iM982c, iM980a2, f2);
                                    break;
                                }
                                i3 -= iM136b;
                                iM982c = iM980a2;
                            }
                            iM987h = dVarM966d.m987h(c0034e, iM982c, iM981b - iM982c);
                            if (i3 >= iM136b && f2 < iM987h) {
                                iM980a = dVarM966d.m980a(c0034e, iM982c, iM981b, f2);
                                break;
                            }
                            i8 = iM987h;
                            i7++;
                        }
                    } else {
                        if ((i3 >= iM136b && i8 <= f2 && f2 < i8 + iM986g2) || i7 + 1 == i4) {
                            int[] iArr5 = dVarM966d.f1828h;
                            iM980a = dVarM966d.m980a(c0034e, iArr5[i7] & 8388607, iArr5[i7 + 1] & 8388607, f2 - i8);
                            break;
                        }
                        i8 += iM986g2;
                        i7++;
                    }
                } else {
                    iM980a3 = iM980a4;
                }
            }
            iM980a3 = iM980a;
        }
        return dVarM966d.f1821a + iM980a3;
    }

    @Override // p006b1.InterfaceC0030a
    public C0339b getEditable() {
        return this.f1760e;
    }

    @Override // p006b1.InterfaceC0030a
    public C0031b getInputConnection() {
        return this.f1762g;
    }

    public KeyListener getKeyListener() {
        return this.f1763h;
    }

    @Override // p006b1.InterfaceC0030a
    public int getLineHeight() {
        return this.f1766k.m136b();
    }

    public String getSelectedText() {
        if (!m945i()) {
            return null;
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        C0339b c0339b = this.f1760e;
        return String.valueOf(selectionStart > selectionEnd ? c0339b.subSequence(selectionEnd, selectionStart) : c0339b.subSequence(selectionStart, selectionEnd));
    }

    @Override // p006b1.InterfaceC0030a
    public int getSelectionEnd() {
        return Selection.getSelectionEnd(this.f1760e);
    }

    @Override // p006b1.InterfaceC0030a
    public int getSelectionStart() {
        return Selection.getSelectionStart(this.f1760e);
    }

    public int getSyntax() {
        AbstractC0053b abstractC0053b = this.f1760e.f1809l;
        if (abstractC0053b == null) {
            return 0;
        }
        return abstractC0053b.mo203c();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a3 A[PHI: r4 r13
      0x00a3: PHI (r4v5 int) = (r4v4 int), (r4v7 int) binds: [B:33:0x0085, B:36:0x008b] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r13v2 int) = (r13v1 int), (r13v5 int) binds: [B:33:0x0085, B:36:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: h */
    public final int[] m944h(int i2, int[] iArr) {
        C0339b.d dVar;
        int iM981b;
        int iM986g;
        int[] iArr2 = iArr == null ? new int[2] : iArr;
        C0339b c0339b = this.f1760e;
        synchronized (c0339b) {
            Iterator it = c0339b.f1799b.iterator();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    dVar = null;
                    break;
                }
                dVar = (C0339b.d) it.next();
                if (dVar.m983d(i2)) {
                    iArr2[0] = i3;
                    iArr2[1] = i4;
                    break;
                }
                i3++;
                i4 += dVar.f1825e;
            }
        }
        if (dVar == null) {
            return null;
        }
        int i5 = i2 - dVar.f1821a;
        int lineNumberWidth = getLineNumberWidth();
        int i6 = iArr2[1];
        int i7 = dVar.f1827g - 1;
        if (this.f1773r) {
            int iM136b = this.f1766k.m136b();
            int width = getWidth() - lineNumberWidth;
            boolean zM984e = false;
            int iM987h = 0;
            for (int i8 = 0; i8 < i7 && !zM984e; i8++) {
                zM984e = dVar.m984e(i5, i8);
                int iM982c = dVar.m982c(i8);
                if (zM984e) {
                    iM986g = dVar.m987h(this.f1766k, iM982c, i5 - iM982c);
                    iM981b = i5;
                } else {
                    iM981b = dVar.m981b(i8);
                    iM986g = dVar.m986g(this.f1766k, i8);
                }
                if (iM987h + iM986g <= width) {
                    iM987h += iM986g;
                } else {
                    if (iM987h > 0) {
                        i6 += iM136b;
                        iM987h = 0;
                    }
                    if (iM986g > width) {
                        while (true) {
                            int iM980a = dVar.m980a(this.f1766k, iM982c, iM981b, width);
                            if (iM980a >= iM981b) {
                                break;
                            }
                            i6 += iM136b;
                            iM982c = iM980a;
                        }
                        iM987h = dVar.m987h(this.f1766k, iM982c, iM981b - iM982c) + iM987h;
                    } else {
                        iM987h += iM986g;
                    }
                }
            }
            lineNumberWidth += iM987h;
        } else {
            for (int i9 = 0; i9 < i7; i9++) {
                if (dVar.m984e(i5, i9)) {
                    int iM982c2 = dVar.m982c(i9);
                    lineNumberWidth += dVar.m987h(this.f1766k, iM982c2, i5 - iM982c2);
                    break;
                }
                lineNumberWidth += dVar.m986g(this.f1766k, i9);
            }
        }
        iArr2[0] = lineNumberWidth;
        iArr2[1] = i6;
        return iArr2;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m945i() {
        int[] iArr = this.f1760e.f1804g;
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (i3 == i2) {
            i3 = -1;
        }
        return i2 >= 0 && i3 > 0 && i2 != i3;
    }

    /* JADX INFO: renamed from: j */
    public final void m946j(int i2) {
        ActionMode actionMode = this.f1768m;
        if (actionMode != null) {
            if (i2 == -3) {
                actionMode.invalidateContentRect();
                return;
            }
            if (i2 == -2) {
                actionMode.onWindowFocusChanged(false);
            } else if (i2 != -1) {
                actionMode.hide(i2);
            } else {
                actionMode.onWindowFocusChanged(true);
                this.f1768m.invalidateContentRect();
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m947k() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f1765j.invalidateInput(this);
        }
        this.f1761f.m993e();
        this.f1760e.m979r(false, this.f1773r, false);
        m949m(4);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004a A[PHI: r6 r7
      0x004a: PHI (r6v2 int) = (r6v1 int), (r6v4 int) binds: [B:11:0x002a, B:14:0x0030] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r7v2 int) = (r7v1 int), (r7v5 int) binds: [B:11:0x002a, B:14:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: l */
    public final void m948l(C0339b.d dVar) {
        int iM986g;
        int i2 = dVar.f1827g - 1;
        C0034e c0034e = this.f1766k;
        int iM136b = c0034e.m136b();
        if (this.f1773r) {
            iM986g = getMeasuredWidth() - getLineNumberWidth();
            if (iM986g <= 0) {
                dVar.f1826f = 0;
                dVar.f1825e = 0;
                return;
            }
            int i3 = 0;
            int iM987h = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int iM986g2 = dVar.m986g(c0034e, i4);
                if (iM987h + iM986g2 <= iM986g) {
                    iM987h += iM986g2;
                } else {
                    if (iM987h != 0) {
                        i3 += iM136b;
                        iM987h = 0;
                    }
                    if (iM986g2 > iM986g) {
                        int iM982c = dVar.m982c(i4);
                        int iM981b = dVar.m981b(i4);
                        while (true) {
                            int iM980a = dVar.m980a(c0034e, iM982c, iM981b, iM986g);
                            if (iM980a >= iM981b) {
                                break;
                            }
                            i3 += iM136b;
                            iM982c = iM980a;
                        }
                        iM987h = dVar.m987h(c0034e, iM982c, iM981b - iM982c);
                    } else {
                        iM987h += iM986g2;
                    }
                }
            }
            iM136b += i3;
        } else {
            iM986g = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                iM986g += dVar.m986g(c0034e, i5);
            }
        }
        dVar.f1826f = iM986g;
        dVar.f1825e = iM136b;
    }

    /* JADX INFO: renamed from: m */
    public final void m949m(int i2) {
        InterfaceC0336e interfaceC0336e;
        if ((((this.f1773r ? 0 : 2) | 4) & i2) != 0) {
            C0339b c0339b = this.f1760e;
            int[] iArr = this.f1758c;
            synchronized (c0339b) {
                int i3 = 0;
                int i4 = 0;
                for (C0339b.d dVar : c0339b.f1799b) {
                    i4 += dVar.f1825e;
                    int i5 = dVar.f1826f;
                    if (i5 > i3) {
                        i3 = i5;
                    }
                }
                iArr[0] = i3;
                iArr[1] = i4;
            }
            int[] iArr2 = this.f1758c;
            iArr2[0] = iArr2[0] - getWidth();
            int[] iArr3 = this.f1758c;
            iArr3[0] = iArr3[0] + getLineNumberWidth();
            int[] iArr4 = this.f1758c;
            if (iArr4[0] < 0) {
                iArr4[0] = 0;
            }
            iArr4[1] = iArr4[1] - getHeight();
            int[] iArr5 = this.f1758c;
            iArr5[1] = (this.f1766k.m136b() / 2) + iArr5[1];
            int[] iArr6 = this.f1758c;
            if (iArr6[1] < 0) {
                iArr6[1] = 0;
            }
            GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = this.f1761f;
            gestureDetectorOnGestureListenerC0340c.getClass();
            gestureDetectorOnGestureListenerC0340c.f1840g = iArr6[0];
            gestureDetectorOnGestureListenerC0340c.f1841h = iArr6[1];
            if (gestureDetectorOnGestureListenerC0340c.m991c() > gestureDetectorOnGestureListenerC0340c.f1841h) {
                gestureDetectorOnGestureListenerC0340c.f1838e.startScroll(gestureDetectorOnGestureListenerC0340c.m990b(), gestureDetectorOnGestureListenerC0340c.m991c(), 0, gestureDetectorOnGestureListenerC0340c.f1841h - gestureDetectorOnGestureListenerC0340c.m991c(), 0);
                gestureDetectorOnGestureListenerC0340c.f1834a.invalidate();
            }
        }
        if ((i2 & 64) != 0) {
            m956t();
            this.f1761f.m995g(3);
        }
        if ((i2 & 256) != 0) {
            int[] iArr7 = this.f1760e.f1804g;
            int i6 = iArr7[0];
            int i7 = iArr7[1];
            if (i7 == i6) {
                i7 = -1;
            }
            int[] iArrM944h = (i7 == -1 || (i2 & 512) == 0) ? m944h(i6, this.f1758c) : m944h(i7, this.f1758c);
            if (iArrM944h != null) {
                int iM136b = this.f1766k.m136b() * 2;
                int lineNumberWidth = getLineNumberWidth();
                int iM990b = this.f1761f.m990b();
                int width = getWidth();
                int iM991c = this.f1761f.m991c();
                int height = getHeight();
                int i8 = iArrM944h[0];
                int i9 = i8 - iM136b;
                int i10 = i9 < iM990b + lineNumberWidth ? i9 - lineNumberWidth : i8 + iM136b > iM990b + width ? (i8 - width) + iM136b : iM990b;
                int i11 = iArrM944h[1];
                int i12 = i11 - iM136b;
                if (i12 >= iM991c) {
                    i12 = i11 + iM136b > iM991c + height ? (i11 - height) + iM136b : iM991c;
                }
                if (iM991c != i12 || iM990b != i10) {
                    this.f1761f.m994f(i10, i12, false);
                }
            }
        }
        if ((i2 & 7) != 0) {
            this.f1775t = (i2 & 1) != 0;
            postInvalidate();
        }
        if ((i2 & 1) != 0) {
            int spanStart = this.f1760e.getSpanStart(Selection.SELECTION_START);
            int spanStart2 = this.f1760e.getSpanStart(Selection.SELECTION_END);
            this.f1765j.updateSelection(this, spanStart, spanStart2, BaseInputConnection.getComposingSpanStart(this.f1760e), BaseInputConnection.getComposingSpanEnd(this.f1760e));
            if (spanStart == spanStart2) {
                if (this.f1768m != null && this.f1769n == 0) {
                    m956t();
                }
            }
        }
        if ((i2 & 16) != 0 && m945i()) {
            m955s(0);
        }
        if ((i2 & 2) == 0 || (interfaceC0336e = this.f1776u) == null) {
            return;
        }
        ZTextEditor zTextEditor = (ZTextEditor) interfaceC0336e;
        if (zTextEditor.f1440d) {
            return;
        }
        zTextEditor.m779h(true);
    }

    /* JADX INFO: renamed from: n */
    public final boolean m950n(int i2) {
        int iMax;
        ClipData primaryClip;
        C0339b c0339b = this.f1760e;
        int iMax2 = c0339b.f1800c;
        boolean z2 = false;
        if (isFocused()) {
            int selectionStart = getSelectionStart();
            int selectionEnd = getSelectionEnd();
            iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
            iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        } else {
            iMax = 0;
        }
        if (i2 == 16908341) {
            String selectedText = getSelectedText();
            if (selectedText != null && !selectedText.isEmpty()) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                if (selectedText.length() > 100000) {
                    selectedText = selectedText.substring(0, 100000);
                }
                intent.putExtra("android.intent.extra.TEXT", selectedText);
                getContext().startActivity(Intent.createChooser(intent, null));
                Selection.setSelection(c0339b, getSelectionEnd());
            }
            return true;
        }
        switch (i2) {
            case R.id.selectAll:
                m946j(500);
                Selection.setSelection(c0339b, 0, c0339b.f1800c);
                return true;
            case R.id.cut:
                ClipData clipDataNewPlainText = ClipData.newPlainText(null, c0339b.subSequence(iMax, iMax2));
                try {
                    ClipboardManager clipboardManager = getClipboardManager();
                    if (clipboardManager != null) {
                        clipboardManager.setPrimaryClip(clipDataNewPlainText);
                        z2 = true;
                    }
                } catch (Throwable unused) {
                }
                if (z2) {
                    c0339b.delete(iMax, iMax2);
                }
                m956t();
                return true;
            case R.id.copy:
                int selectionStart2 = getSelectionStart();
                int selectionEnd2 = getSelectionEnd();
                ClipData clipDataNewPlainText2 = ClipData.newPlainText(null, c0339b.subSequence(Math.max(0, Math.min(selectionStart2, selectionEnd2)), Math.max(0, Math.max(selectionStart2, selectionEnd2))));
                try {
                    ClipboardManager clipboardManager2 = getClipboardManager();
                    if (clipboardManager2 != null) {
                        clipboardManager2.setPrimaryClip(clipDataNewPlainText2);
                        z2 = true;
                    }
                } catch (Throwable unused2) {
                }
                if (z2) {
                    m956t();
                }
                return true;
            case R.id.paste:
                ClipboardManager clipboardManager3 = getClipboardManager();
                if (clipboardManager3 != null && (primaryClip = clipboardManager3.getPrimaryClip()) != null) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        performReceiveContent(new ContentInfo.Builder(primaryClip, 1).build());
                    } else {
                        m951o(primaryClip);
                    }
                }
                m956t();
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: renamed from: o */
    public final int m951o(ClipData clipData) {
        Context context = getContext();
        C0031b c0031b = this.f1762g;
        c0031b.beginBatchEdit();
        int length = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
            try {
                CharSequence charSequenceCoerceToText = clipData.getItemAt(i2).coerceToText(context);
                if (charSequenceCoerceToText instanceof Spanned) {
                    charSequenceCoerceToText = charSequenceCoerceToText.toString();
                }
                if (charSequenceCoerceToText != null) {
                    C0339b c0339b = this.f1760e;
                    if (z2) {
                        int selectionStart = getSelectionStart();
                        int selectionEnd = getSelectionEnd();
                        int iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
                        int iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                        Selection.setSelection(c0339b, iMax2);
                        c0339b.replace(iMax, iMax2, charSequenceCoerceToText);
                        length += charSequenceCoerceToText.length() - (iMax2 - iMax);
                        z2 = false;
                    } else {
                        c0339b.insert(getSelectionStart(), "\n");
                        c0339b.insert(getSelectionStart(), charSequenceCoerceToText);
                        length += charSequenceCoerceToText.length() + 1;
                    }
                }
            } catch (Throwable th) {
                String message = th.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    ZApp.m726j(message);
                }
            }
        }
        c0031b.endBatchEdit();
        return length;
    }

    @Override // android.view.View
    public final void onCreateContextMenu(ContextMenu contextMenu) {
        m940d(contextMenu);
    }

    @Override // android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        Object obj = Selection.SELECTION_START;
        C0339b c0339b = this.f1760e;
        editorInfo.initialSelStart = c0339b.getSpanStart(obj);
        editorInfo.initialSelEnd = c0339b.getSpanStart(Selection.SELECTION_END);
        editorInfo.inputType = 131073;
        editorInfo.imeOptions |= 1073741825;
        return this.f1762g;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    @Override // android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        C0335d c0335d;
        int action = dragEvent.getAction();
        if (action == 2) {
            int iM943g = m943g(dragEvent.getX(), dragEvent.getY());
            m953q(iM943g, iM943g);
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                return true;
            }
            requestFocus();
            return true;
        }
        int iM943g2 = m943g(dragEvent.getX(), dragEvent.getY());
        Object localState = dragEvent.getLocalState();
        if (localState instanceof C0335d) {
            c0335d = (C0335d) localState;
            if (c0335d.f1788a != this) {
                c0335d = null;
            } else if (iM943g2 >= c0335d.f1789b && iM943g2 <= c0335d.f1790c) {
                return true;
            }
        } else {
            c0335d = null;
        }
        C0339b c0339b = this.f1760e;
        int i2 = c0339b.f1800c;
        if (iM943g2 > i2) {
            iM943g2 = i2;
        }
        C0031b c0031b = this.f1762g;
        c0031b.beginBatchEdit();
        m953q(iM943g2, iM943g2);
        int iM951o = m951o(dragEvent.getClipData());
        if (c0335d != null) {
            int i3 = c0335d.f1790c;
            if (iM943g2 >= i3) {
                iM951o = 0;
            }
            c0339b.delete(c0335d.f1789b + iM951o, i3 + iM951o);
        }
        c0031b.endBatchEdit();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:104:0x0300  */
    /* JADX WARN: Code duplicated, block: B:125:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:126:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:132:0x03de  */
    /* JADX WARN: Code duplicated, block: B:134:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:135:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:138:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:140:0x0424  */
    /* JADX WARN: Code duplicated, block: B:143:0x0435  */
    /* JADX WARN: Code duplicated, block: B:145:0x045c  */
    /* JADX WARN: Code duplicated, block: B:148:0x0465  */
    /* JADX WARN: Code duplicated, block: B:151:0x046c  */
    /* JADX WARN: Code duplicated, block: B:153:0x0470  */
    /* JADX WARN: Code duplicated, block: B:157:0x0479  */
    /* JADX WARN: Code duplicated, block: B:164:0x0494  */
    /* JADX WARN: Code duplicated, block: B:166:0x0497  */
    /* JADX WARN: Code duplicated, block: B:180:0x034e A[EDGE_INSN: B:180:0x034e->B:108:0x034e BREAK  A[LOOP:2: B:61:0x016a->B:106:0x0320], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x034e A[EDGE_INSN: B:181:0x034e->B:108:0x034e BREAK  A[LOOP:2: B:61:0x016a->B:106:0x0320], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x033d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0210 A[EDGE_INSN: B:185:0x0210->B:87:0x0210 BREAK  A[LOOP:3: B:85:0x0209->B:88:0x0244], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0144  */
    /* JADX WARN: Code duplicated, block: B:52:0x0148  */
    /* JADX WARN: Code duplicated, block: B:54:0x014c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0151  */
    /* JADX WARN: Code duplicated, block: B:62:0x016c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0178  */
    /* JADX WARN: Code duplicated, block: B:66:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0188  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:84:0x0207  */
    /* JADX WARN: Code duplicated, block: B:88:0x0244 A[LOOP:3: B:85:0x0209->B:88:0x0244, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x0286  */
    /* JADX WARN: Code duplicated, block: B:90:0x0295  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:96:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:97:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:98:0x02da A[PHI: r12 r13 r17 r23 r27 r30 r32 r33 r34 r35 r36 r37 r39 r40
      0x02da: PHI (r12v12 int) = (r12v10 int), (r12v15 int), (r12v16 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r13v10 ru.zdevs.zarchiver.ui.editor.b$d) = 
      (r13v8 ru.zdevs.zarchiver.ui.editor.b$d)
      (r13v14 ru.zdevs.zarchiver.ui.editor.b$d)
      (r13v14 ru.zdevs.zarchiver.ui.editor.b$d)
     binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r17v2 int) = (r17v0 int), (r17v5 int), (r17v5 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r23v3 int) = (r23v1 int), (r23v6 int), (r23v7 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r27v7 int) = (r27v5 int), (r27v11 int), (r27v11 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r30v7 int) = (r30v4 int), (r30v10 int), (r30v10 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r32v1 int) = (r32v0 int), (r32v3 int), (r32v3 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r33v2 int) = (r33v0 int), (r6v6 int), (r6v6 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r34v4 int) = (r34v2 int), (r34v7 int), (r34v7 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r35v5 int) = (r35v3 int), (r35v8 int), (r35v8 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r36v4 int) = (r36v2 int), (r7v9 int), (r7v9 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r37v5 int) = (r37v3 int), (r8v5 int), (r8v5 int) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r39v5 ru.zdevs.zarchiver.ui.editor.b) = (r39v3 ru.zdevs.zarchiver.ui.editor.b), (r24v0 ru.zdevs.zarchiver.ui.editor.b), (r24v0 ru.zdevs.zarchiver.ui.editor.b) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]
      0x02da: PHI (r40v5 b1.e) = (r40v3 b1.e), (r10v9 b1.e), (r10v9 b1.e) binds: [B:103:0x02fe, B:97:0x02d7, B:96:0x02bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x02dd  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i2;
        int i3;
        C0034e c0034e;
        boolean z2;
        EditableView editableView;
        C0034e c0034e2;
        GestureDetectorOnGestureListenerC0340c.a aVar;
        boolean z3;
        int height;
        C0341d c0341d;
        C0341d.b bVar;
        int i4;
        Canvas canvas2;
        int iComputeHorizontalScrollRange;
        int iComputeHorizontalScrollOffset;
        int i5;
        int iComputeVerticalScrollRange;
        int iComputeVerticalScrollOffset;
        C0033d c0033d;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        ActionMode actionMode;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        C0339b c0339b;
        int iM986g;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int iM982c;
        int iM981b;
        int i26;
        int i27;
        char c2;
        boolean z4;
        int i28;
        int i29;
        int i30;
        int iM980a;
        int i31;
        int i32;
        boolean z5;
        int i33;
        int i34;
        int i35;
        int i36;
        EditableView editableView2 = this;
        super.onDraw(canvas);
        int width = getWidth();
        if (width <= 0) {
            return;
        }
        GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = editableView2.f1761f;
        int iM990b = gestureDetectorOnGestureListenerC0340c.m990b();
        int iM991c = gestureDetectorOnGestureListenerC0340c.m991c();
        C0339b c0339b2 = editableView2.f1760e;
        int[] iArr = editableView2.f1758c;
        int iM969g = c0339b2.m969g(iM991c, iArr);
        int i37 = -iArr[0];
        int size = c0339b2.f1799b.size();
        int lineNumberWidth = getLineNumberWidth();
        C0034e c0034e3 = editableView2.f1766k;
        int iM136b = c0034e3.m136b();
        int[] iArr2 = c0339b2.f1804g;
        int i38 = iArr2[0];
        int i39 = iArr2[1];
        if (i39 == i38) {
            i39 = -1;
        }
        RunnableC0334c runnableC0334c = editableView2.f1772q;
        if (i39 != -1) {
            runnableC0334c.m958a();
        }
        int[] iArr3 = editableView2.f1759d;
        Arrays.fill(iArr3, -1);
        if (editableView2.f1774s) {
            canvas.save();
            Paint paint = editableView2.f1767l;
            int i40 = i39;
            paint.setColor(c0034e3.m135a((byte) 9));
            paint.setAlpha(50);
            int i41 = editableView2.f1756a * 4;
            i2 = i40;
            i3 = iM136b;
            c0034e = c0034e3;
            canvas.drawRect(0.0f, 0.0f, lineNumberWidth - i41, getHeight(), paint);
            paint.setAlpha(0);
            paint.setColor(c0034e.m135a((byte) 0));
            int i42 = iM969g;
            int i43 = i37;
            while (i42 < size) {
                C0339b.d dVarM966d = c0339b2.m966d(i42);
                if (dVarM966d == null || i43 >= getHeight()) {
                    break;
                }
                int i44 = i42 + 1;
                canvas.drawText(String.valueOf(i44), i41, i43 + i3, paint);
                i43 += dVarM966d.f1825e;
                i42 = i44;
            }
            z2 = false;
            canvas.clipRect(lineNumberWidth - 1, 0, getWidth(), getHeight());
        } else {
            i2 = i39;
            i3 = iM136b;
            c0034e = c0034e3;
            z2 = false;
        }
        int i45 = i37 + i3;
        int i46 = iM969g;
        int i47 = i45;
        while (i46 < size && i47 < getHeight() + i3) {
            C0339b.d dVarM966d2 = c0339b2.m966d(i46);
            if (dVarM966d2 == null) {
                break;
            }
            int i48 = i38;
            if (i48 != -1) {
                i2 = i2;
                if (i2 != -1) {
                    boolean zM983d = dVarM966d2.m983d(i48);
                    int i49 = dVarM966d2.f1821a;
                    if (i2 >= i49) {
                        i47 = i47;
                        i32 = 1;
                        z5 = i2 < (dVarM966d2.f1824d + i49) + (dVarM966d2.f1822b & 1);
                        if (!zM983d || z5 || (i48 < i49 && i49 < i2)) {
                            if (zM983d) {
                                i33 = i48 - i49;
                                i34 = i32;
                            } else {
                                i33 = 0;
                                i34 = 0;
                            }
                            if (z5) {
                                i35 = i2 - i49;
                                i36 = i34 | 2;
                            } else {
                                i35 = dVarM966d2.f1824d;
                                i36 = i34;
                            }
                            i12 = i35;
                            i13 = i36;
                            i11 = i33;
                        } else {
                            i11 = -1;
                            i12 = -1;
                            i13 = 0;
                        }
                    } else {
                        i47 = i47;
                        i32 = 1;
                    }
                    if (zM983d) {
                    }
                    if (zM983d) {
                        i33 = i48 - i49;
                        i34 = i32;
                    } else {
                        i33 = 0;
                        i34 = 0;
                    }
                    if (z5) {
                        i35 = i2 - i49;
                        i36 = i34 | 2;
                    } else {
                        i35 = dVarM966d2.f1824d;
                        i36 = i34;
                    }
                    i12 = i35;
                    i13 = i36;
                    i11 = i33;
                } else if (dVarM966d2.m983d(i48)) {
                    i11 = i48 - dVarM966d2.f1821a;
                    i47 = i47;
                    i13 = 1;
                    i12 = i11;
                }
                i14 = dVarM966d2.f1827g - 1;
                i15 = lineNumberWidth;
                i16 = i47;
                i17 = 0;
                while (true) {
                    if (i17 < i14) {
                        i2 = i2;
                        i18 = i48;
                        dVarM966d2 = dVarM966d2;
                        i46 = i46;
                        lineNumberWidth = lineNumberWidth;
                        size = size;
                        c0034e = c0034e;
                        c0339b = c0339b2;
                        break;
                    }
                    c0339b = c0339b2;
                    iM986g = dVarM966d2.m986g(c0034e, i17);
                    int i50 = i14;
                    if (editableView2.f1773r) {
                        iM982c = dVarM966d2.m982c(i17);
                        iM981b = dVarM966d2.m981b(i17);
                        i19 = i17;
                        if (i15 + iM986g > width) {
                            if (i15 > lineNumberWidth) {
                                if (i11 < iM982c || i12 < iM982c) {
                                    i26 = iM982c;
                                    i31 = i48;
                                    i20 = i11;
                                    c2 = '\t';
                                    z4 = false;
                                } else {
                                    float f2 = i15;
                                    if (c0034e.f234c == 0) {
                                        c0034e.m136b();
                                    }
                                    float f3 = c0034e.f234c + i16;
                                    i31 = i48;
                                    float f4 = width;
                                    if (c0034e.f234c == 0) {
                                        c0034e.m136b();
                                    }
                                    float f5 = c0034e.f235d + i16;
                                    byte b2 = c0034e.f233b;
                                    int i51 = i11;
                                    Paint paint2 = c0034e.f232a;
                                    c2 = '\t';
                                    if (9 != b2) {
                                        paint2.setColor(c0034e.m135a((byte) 9));
                                        c0034e.f233b = (byte) 9;
                                    }
                                    i26 = iM982c;
                                    i20 = i51;
                                    z4 = false;
                                    canvas.drawRect(f2, f3, f4, f5, paint2);
                                }
                                i16 += i3;
                                i28 = i31;
                                i22 = lineNumberWidth;
                            } else {
                                i26 = iM982c;
                                i20 = i11;
                                size = size;
                                i22 = i15;
                                i19 = i19;
                                c2 = '\t';
                                z4 = false;
                                i2 = i2;
                                i28 = i48;
                                dVarM966d2 = dVarM966d2;
                            }
                            i29 = width - lineNumberWidth;
                            if (iM986g > i29) {
                                i30 = i26;
                                while (true) {
                                    iM980a = dVarM966d2.m980a(c0034e, i30, iM981b, i29);
                                    if (iM980a >= iM981b) {
                                        break;
                                    }
                                    int i52 = i12;
                                    m942f(canvas, dVarM966d2, i19, i22, i16, i30, iM980a, i20, i52, i13, width);
                                    i16 += i3;
                                    i30 = iM980a;
                                    i29 = i29;
                                    i12 = i52;
                                    i28 = i28;
                                    i46 = i46;
                                    lineNumberWidth = lineNumberWidth;
                                    c2 = c2;
                                    c0339b = c0339b;
                                    c0034e = c0034e;
                                    z4 = false;
                                }
                                int iM987h = dVarM966d2.m987h(c0034e, i30, iM981b - i30);
                                i18 = i28;
                                i12 = i12;
                                i46 = i46;
                                lineNumberWidth = lineNumberWidth;
                                c0339b = c0339b;
                                m942f(canvas, dVarM966d2, i19, lineNumberWidth, i16, i30, iM981b, i20, i12, i13, iM987h);
                                i25 = i22 + iM987h;
                                c0034e = c0034e;
                                i24 = i19;
                            } else {
                                i18 = i28;
                            }
                            i17 = i24 + 1;
                            editableView2 = this;
                            dVarM966d2 = dVarM966d2;
                            i11 = i20;
                            i14 = i50;
                            i2 = i2;
                            i15 = i25;
                            i12 = i12;
                            size = size;
                            i48 = i18;
                            i46 = i46;
                            lineNumberWidth = lineNumberWidth;
                            c0339b2 = c0339b;
                            c0034e = c0034e;
                        } else {
                            i26 = iM982c;
                            i18 = i48;
                            i20 = i11;
                            size = size;
                            i22 = i15;
                            i19 = i19;
                            i2 = i2;
                            dVarM966d2 = dVarM966d2;
                        }
                        i27 = i16;
                        if (i27 > (-i3)) {
                            i16 = i27;
                            i21 = iM986g;
                        } else {
                            if (i27 > getHeight()) {
                                break;
                            }
                            i16 = i27;
                            i21 = iM986g;
                            m942f(canvas, dVarM966d2, i19, i22, i27, i26, iM981b, i20, i12, i13, iM986g);
                        }
                        i24 = i19;
                    } else {
                        i19 = i17;
                        i2 = i2;
                        i18 = i48;
                        i20 = i11;
                        i12 = i12;
                        i46 = i46;
                        lineNumberWidth = lineNumberWidth;
                        size = size;
                        c0034e = c0034e;
                        i21 = iM986g;
                        i22 = i15;
                        c0339b = c0339b;
                        dVarM966d2 = dVarM966d2;
                        i23 = i22 - iM990b;
                        if (i23 >= width) {
                            break;
                        }
                        if (i23 + i21 > 0) {
                            i24 = i19;
                            m942f(canvas, dVarM966d2, i19, i23, i16, dVarM966d2.m982c(i19), dVarM966d2.m981b(i19), i20, i12, i13, i21);
                        } else {
                            i24 = i19;
                        }
                    }
                    i25 = i22 + i21;
                    i17 = i24 + 1;
                    editableView2 = this;
                    dVarM966d2 = dVarM966d2;
                    i11 = i20;
                    i14 = i50;
                    i2 = i2;
                    i15 = i25;
                    i12 = i12;
                    size = size;
                    i48 = i18;
                    i46 = i46;
                    lineNumberWidth = lineNumberWidth;
                    c0339b2 = c0339b;
                    c0034e = c0034e;
                }
                i47 += dVarM966d2.f1825e;
                i46++;
                z2 = false;
                editableView2 = this;
                size = size;
                i38 = i18;
                lineNumberWidth = lineNumberWidth;
                c0339b2 = c0339b;
                c0034e = c0034e;
            } else {
                i2 = i2;
            }
            i11 = -1;
            i12 = -1;
            i13 = 0;
            i14 = dVarM966d2.f1827g - 1;
            i15 = lineNumberWidth;
            i16 = i47;
            i17 = 0;
            while (true) {
                if (i17 < i14) {
                    i2 = i2;
                    i18 = i48;
                    dVarM966d2 = dVarM966d2;
                    i46 = i46;
                    lineNumberWidth = lineNumberWidth;
                    size = size;
                    c0034e = c0034e;
                    c0339b = c0339b2;
                    break;
                    break;
                }
                c0339b = c0339b2;
                iM986g = dVarM966d2.m986g(c0034e, i17);
                int i53 = i14;
                if (editableView2.f1773r) {
                    iM982c = dVarM966d2.m982c(i17);
                    iM981b = dVarM966d2.m981b(i17);
                    i19 = i17;
                    if (i15 + iM986g > width) {
                        if (i15 > lineNumberWidth) {
                            if (i11 < iM982c) {
                                i26 = iM982c;
                                i31 = i48;
                                i20 = i11;
                                c2 = '\t';
                                z4 = false;
                            } else {
                                i26 = iM982c;
                                i31 = i48;
                                i20 = i11;
                                c2 = '\t';
                                z4 = false;
                            }
                            i16 += i3;
                            i28 = i31;
                            i22 = lineNumberWidth;
                        } else {
                            i26 = iM982c;
                            i20 = i11;
                            size = size;
                            i22 = i15;
                            i19 = i19;
                            c2 = '\t';
                            z4 = false;
                            i2 = i2;
                            i28 = i48;
                            dVarM966d2 = dVarM966d2;
                        }
                        i29 = width - lineNumberWidth;
                        if (iM986g > i29) {
                            i30 = i26;
                            while (true) {
                                iM980a = dVarM966d2.m980a(c0034e, i30, iM981b, i29);
                                if (iM980a >= iM981b) {
                                    break;
                                    break;
                                }
                                int i54 = i12;
                                m942f(canvas, dVarM966d2, i19, i22, i16, i30, iM980a, i20, i54, i13, width);
                                i16 += i3;
                                i30 = iM980a;
                                i29 = i29;
                                i12 = i54;
                                i28 = i28;
                                i46 = i46;
                                lineNumberWidth = lineNumberWidth;
                                c2 = c2;
                                c0339b = c0339b;
                                c0034e = c0034e;
                                z4 = false;
                            }
                            int iM987h2 = dVarM966d2.m987h(c0034e, i30, iM981b - i30);
                            i18 = i28;
                            i12 = i12;
                            i46 = i46;
                            lineNumberWidth = lineNumberWidth;
                            c0339b = c0339b;
                            m942f(canvas, dVarM966d2, i19, lineNumberWidth, i16, i30, iM981b, i20, i12, i13, iM987h2);
                            i25 = i22 + iM987h2;
                            c0034e = c0034e;
                            i24 = i19;
                        } else {
                            i18 = i28;
                        }
                        i17 = i24 + 1;
                        editableView2 = this;
                        dVarM966d2 = dVarM966d2;
                        i11 = i20;
                        i14 = i53;
                        i2 = i2;
                        i15 = i25;
                        i12 = i12;
                        size = size;
                        i48 = i18;
                        i46 = i46;
                        lineNumberWidth = lineNumberWidth;
                        c0339b2 = c0339b;
                        c0034e = c0034e;
                    } else {
                        i26 = iM982c;
                        i18 = i48;
                        i20 = i11;
                        size = size;
                        i22 = i15;
                        i19 = i19;
                        i2 = i2;
                        dVarM966d2 = dVarM966d2;
                    }
                    i27 = i16;
                    if (i27 > (-i3)) {
                        i16 = i27;
                        i21 = iM986g;
                    } else if (i27 > getHeight()) {
                        break;
                        break;
                    } else {
                        i16 = i27;
                        i21 = iM986g;
                        m942f(canvas, dVarM966d2, i19, i22, i27, i26, iM981b, i20, i12, i13, iM986g);
                    }
                    i24 = i19;
                } else {
                    i19 = i17;
                    i2 = i2;
                    i18 = i48;
                    i20 = i11;
                    i12 = i12;
                    i46 = i46;
                    lineNumberWidth = lineNumberWidth;
                    size = size;
                    c0034e = c0034e;
                    i21 = iM986g;
                    i22 = i15;
                    c0339b = c0339b;
                    dVarM966d2 = dVarM966d2;
                    i23 = i22 - iM990b;
                    if (i23 >= width) {
                        break;
                        break;
                    } else if (i23 + i21 > 0) {
                        i24 = i19;
                        m942f(canvas, dVarM966d2, i19, i23, i16, dVarM966d2.m982c(i19), dVarM966d2.m981b(i19), i20, i12, i13, i21);
                    } else {
                        i24 = i19;
                    }
                }
                i25 = i22 + i21;
                i17 = i24 + 1;
                editableView2 = this;
                dVarM966d2 = dVarM966d2;
                i11 = i20;
                i14 = i53;
                i2 = i2;
                i15 = i25;
                i12 = i12;
                size = size;
                i48 = i18;
                i46 = i46;
                lineNumberWidth = lineNumberWidth;
                c0339b2 = c0339b;
                c0034e = c0034e;
            }
            i47 += dVarM966d2.f1825e;
            i46++;
            z2 = false;
            editableView2 = this;
            size = size;
            i38 = i18;
            lineNumberWidth = lineNumberWidth;
            c0339b2 = c0339b;
            c0034e = c0034e;
        }
        int i55 = i47;
        int i56 = lineNumberWidth;
        C0034e c0034e4 = c0034e;
        C0339b c0339b3 = c0339b2;
        int i57 = i38;
        boolean z6 = z2;
        if (iArr3[z6 ? 1 : 0] == -1 || iArr3[1] == -1) {
            if (c0339b3.f1800c == i57) {
                iArr3[z6 ? 1 : 0] = i56;
                int iM136b2 = i55 - c0034e4.m136b();
                c0034e2 = c0034e4;
                if (c0034e2.f234c == 0) {
                    c0034e2.m136b();
                }
                iArr3[1] = c0034e2.f235d + iM136b2;
                m941e(canvas);
            } else {
                editableView = this;
                c0034e2 = c0034e4;
                editableView.f1771p.set(-1, -1, -1, -1);
                runnableC0334c.m958a();
            }
            aVar = gestureDetectorOnGestureListenerC0340c.f1835b;
            if (aVar != null) {
                z3 = true;
                aVar.mo997a(canvas, iArr3[z6 ? 1 : 0], iArr3[1], iArr3[2], iArr3[3]);
            } else {
                z3 = true;
            }
            height = getHeight();
            c0341d = editableView.f1770o;
            if (c0341d.f1865m == 0 || c0341d.f1867o.isRunning()) {
                bVar = (C0341d.b) c0341d.f1853a;
                i4 = c0341d.f1864l;
                if (i4 != 0) {
                    canvas2 = canvas;
                    canvas2.translate(0.0f, i4);
                } else {
                    canvas2 = canvas;
                }
                iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
                iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
                i5 = c0341d.f1858f;
                if (iComputeHorizontalScrollRange > 0) {
                    int iMo937a = bVar.mo937a();
                    int i58 = height - i5;
                    Drawable drawable = c0341d.f1855c;
                    drawable.setBounds(iMo937a, i58, width, height);
                    drawable.draw(canvas2);
                    int i59 = c0341d.f1857e;
                    int i60 = ((((width - i59) - iMo937a) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iMo937a;
                    Drawable drawable2 = c0341d.f1856d;
                    drawable2.setBounds(i60, i58, i59 + i60, height);
                    drawable2.draw(canvas2);
                }
                if (i4 != 0) {
                    canvas2.translate(i4, -i4);
                }
                iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
                iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
                if (iComputeVerticalScrollRange > 0) {
                    int i61 = width - c0341d.f1861i;
                    Drawable drawable3 = c0341d.f1859g;
                    drawable3.setBounds(i61, z6 ? 1 : 0, width, height - i5);
                    drawable3.draw(canvas2);
                    int i62 = c0341d.f1862j;
                    int i63 = (((height - i62) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                    int i64 = i63 + i62;
                    Drawable drawable4 = c0341d.f1860h;
                    drawable4.setBounds(i61, i63, width, i64);
                    drawable4.draw(canvas2);
                    c0341d.f1863k.set(width - i62, i63, width, i64);
                }
                if (i4 != 0) {
                    canvas2.translate(-i4, 0.0f);
                }
            }
            if (editableView.f1774s) {
                canvas.restore();
            }
            if (editableView.f1775t) {
                actionMode = editableView.f1768m;
                if (actionMode != null) {
                    actionMode.invalidateContentRect();
                }
                editableView.f1775t = z6;
            }
            c0033d = editableView.f1778w;
            if (c0033d != null) {
                i6 = editableView.f1777v;
                if (i6 != 1 && (i9 = iArr3[z6 ? 1 : 0]) != -1 && (i10 = iArr3[1]) != -1) {
                    c0033d.m133b(i9, i10 - (c0034e2.m136b() / 2));
                } else if (i6 == 2 && (i7 = iArr3[2]) != -1 && (i8 = iArr3[3]) != -1) {
                    c0033d.m133b(i7, i8 - (c0034e2.m136b() / 2));
                }
                editableView.post(editableView.f1779x);
            }
        }
        c0034e2 = c0034e4;
        editableView = this;
        aVar = gestureDetectorOnGestureListenerC0340c.f1835b;
        if (aVar != null) {
            z3 = true;
            aVar.mo997a(canvas, iArr3[z6 ? 1 : 0], iArr3[1], iArr3[2], iArr3[3]);
        } else {
            z3 = true;
        }
        height = getHeight();
        c0341d = editableView.f1770o;
        if (c0341d.f1865m == 0) {
            bVar = (C0341d.b) c0341d.f1853a;
            i4 = c0341d.f1864l;
            if (i4 != 0) {
                canvas2 = canvas;
                canvas2.translate(0.0f, i4);
            } else {
                canvas2 = canvas;
            }
            iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
            iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
            i5 = c0341d.f1858f;
            if (iComputeHorizontalScrollRange > 0) {
                int iMo937a2 = bVar.mo937a();
                int i510 = height - i5;
                Drawable drawable5 = c0341d.f1855c;
                drawable5.setBounds(iMo937a2, i510, width, height);
                drawable5.draw(canvas2);
                int i511 = c0341d.f1857e;
                int i65 = ((((width - i511) - iMo937a2) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iMo937a2;
                Drawable drawable6 = c0341d.f1856d;
                drawable6.setBounds(i65, i510, i511 + i65, height);
                drawable6.draw(canvas2);
            }
            if (i4 != 0) {
                canvas2.translate(i4, -i4);
            }
            iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
            iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
            if (iComputeVerticalScrollRange > 0) {
                int i66 = width - c0341d.f1861i;
                Drawable drawable7 = c0341d.f1859g;
                drawable7.setBounds(i66, z6 ? 1 : 0, width, height - i5);
                drawable7.draw(canvas2);
                int i67 = c0341d.f1862j;
                int i68 = (((height - i67) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                int i69 = i68 + i67;
                Drawable drawable8 = c0341d.f1860h;
                drawable8.setBounds(i66, i68, width, i69);
                drawable8.draw(canvas2);
                c0341d.f1863k.set(width - i67, i68, width, i69);
            }
            if (i4 != 0) {
                canvas2.translate(-i4, 0.0f);
            }
        } else {
            bVar = (C0341d.b) c0341d.f1853a;
            i4 = c0341d.f1864l;
            if (i4 != 0) {
                canvas2 = canvas;
                canvas2.translate(0.0f, i4);
            } else {
                canvas2 = canvas;
            }
            iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
            iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
            i5 = c0341d.f1858f;
            if (iComputeHorizontalScrollRange > 0) {
                int iMo937a3 = bVar.mo937a();
                int i512 = height - i5;
                Drawable drawable9 = c0341d.f1855c;
                drawable9.setBounds(iMo937a3, i512, width, height);
                drawable9.draw(canvas2);
                int i513 = c0341d.f1857e;
                int i610 = ((((width - i513) - iMo937a3) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iMo937a3;
                Drawable drawable10 = c0341d.f1856d;
                drawable10.setBounds(i610, i512, i513 + i610, height);
                drawable10.draw(canvas2);
            }
            if (i4 != 0) {
                canvas2.translate(i4, -i4);
            }
            iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
            iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
            if (iComputeVerticalScrollRange > 0) {
                int i611 = width - c0341d.f1861i;
                Drawable drawable11 = c0341d.f1859g;
                drawable11.setBounds(i611, z6 ? 1 : 0, width, height - i5);
                drawable11.draw(canvas2);
                int i612 = c0341d.f1862j;
                int i613 = (((height - i612) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                int i614 = i613 + i612;
                Drawable drawable12 = c0341d.f1860h;
                drawable12.setBounds(i611, i613, width, i614);
                drawable12.draw(canvas2);
                c0341d.f1863k.set(width - i612, i613, width, i614);
            }
            if (i4 != 0) {
                canvas2.translate(-i4, 0.0f);
            }
        }
        if (editableView.f1774s) {
            canvas.restore();
        }
        if (editableView.f1775t) {
            actionMode = editableView.f1768m;
            if (actionMode != null) {
                actionMode.invalidateContentRect();
            }
            editableView.f1775t = z6;
        }
        c0033d = editableView.f1778w;
        if (c0033d != null) {
            i6 = editableView.f1777v;
            if (i6 != 1) {
                if (i6 == 2) {
                    c0033d.m133b(i7, i8 - (c0034e2.m136b() / 2));
                }
            } else if (i6 == 2) {
                c0033d.m133b(i7, i8 - (c0034e2.m136b() / 2));
            }
            editableView.post(editableView.f1779x);
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z2, int i2, Rect rect) {
        RunnableC0334c runnableC0334c = this.f1772q;
        if (z2) {
            runnableC0334c.run();
        } else {
            runnableC0334c.m958a();
        }
        if (z2) {
            runnableC0334c.run();
            MetaKeyKeyListener.resetMetaState(this.f1760e);
        } else {
            runnableC0334c.m958a();
        }
        super.onFocusChanged(z2, i2, rect);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x013d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0143  */
    /* JADX WARN: Code duplicated, block: B:105:0x014b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0157  */
    /* JADX WARN: Code duplicated, block: B:110:0x015d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0163  */
    /* JADX WARN: Code duplicated, block: B:113:0x0169  */
    /* JADX WARN: Code duplicated, block: B:114:0x016e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0174  */
    /* JADX WARN: Code duplicated, block: B:125:0x018b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0191  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:142:0x01bc A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:144:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:147:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:148:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:150:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:152:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:164:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:90:0x0117  */
    /* JADX WARN: Code duplicated, block: B:92:0x011d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0123  */
    /* JADX WARN: Code duplicated, block: B:96:0x012b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0137  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        C0339b c0339b;
        boolean zOnKeyDown;
        int iNormalizeMetaState;
        boolean zM1002d;
        boolean z2;
        int[] iArr;
        int i3;
        int[] iArr2;
        int i4;
        boolean z3 = false;
        if (isEnabled()) {
            if (i2 != 4) {
                if (i2 != 61) {
                    if (i2 != 112) {
                        if (i2 != 124) {
                            switch (i2) {
                                case 277:
                                    if (!keyEvent.hasNoModifiers() || !m938b() || !m950n(R.id.cut)) {
                                        C0031b c0031b = this.f1762g;
                                        c0031b.beginBatchEdit();
                                        TextKeyListener textKeyListener = this.f1763h;
                                        c0339b = this.f1760e;
                                        zOnKeyDown = textKeyListener.onKeyDown(this, c0339b, i2, keyEvent);
                                        c0031b.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1764i.getClass();
                                            iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                                            if (i2 != 92) {
                                                if (i2 != 93) {
                                                    if (i2 != 122) {
                                                        if (i2 != 123) {
                                                            switch (i2) {
                                                                case 19:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, true);
                                                                    }
                                                                    break;
                                                                case 20:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, false);
                                                                    }
                                                                    break;
                                                                case 21:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096) || !KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 2)) ? false : C0343f.m1001c(c0339b, true);
                                                                    } else {
                                                                        zM1002d = C0343f.m1000b(c0339b, true);
                                                                    }
                                                                    break;
                                                                case 22:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096) || !KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 2)) ? false : C0343f.m1001c(c0339b, false);
                                                                    } else {
                                                                        zM1002d = C0343f.m1000b(c0339b, false);
                                                                    }
                                                                    break;
                                                                case 23:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) && keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                                                                        int[] iArr3 = c0339b.f1804g;
                                                                        int i5 = iArr3[1];
                                                                        if (i5 == iArr3[0]) {
                                                                            i5 = -1;
                                                                        }
                                                                        zM1002d = i5 == -1 ? false : showContextMenu();
                                                                    } else {
                                                                        zM1002d = false;
                                                                    }
                                                                    break;
                                                                default:
                                                                    zM1002d = false;
                                                                    break;
                                                            }
                                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) || (i4 = (iArr2 = c0339b.f1804g)[0]) == -1) {
                                                            zM1002d = false;
                                                        } else {
                                                            int i6 = iArr2[1];
                                                            zM1002d = C0343f.m999a((i6 == -1 || i4 == i6) ? false : true, iArr2, c0339b.f1800c);
                                                        }
                                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState) || (i3 = (iArr = c0339b.f1804g)[0]) == -1) {
                                                        zM1002d = false;
                                                    } else {
                                                        int i7 = iArr[1];
                                                        zM1002d = C0343f.m999a((i7 == -1 || i3 == i7) ? false : true, iArr, 0);
                                                    }
                                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = C0343f.m1002d(this, c0339b, false);
                                                } else {
                                                    zM1002d = false;
                                                }
                                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1002d(this, c0339b, true);
                                            } else {
                                                zM1002d = false;
                                            }
                                            if (zM1002d) {
                                                MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                                            }
                                            if (zM1002d) {
                                                m949m(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                case 278:
                                    if (!keyEvent.hasNoModifiers() || !m938b() || !m950n(R.id.copy)) {
                                        C0031b c0031b2 = this.f1762g;
                                        c0031b2.beginBatchEdit();
                                        TextKeyListener textKeyListener2 = this.f1763h;
                                        c0339b = this.f1760e;
                                        zOnKeyDown = textKeyListener2.onKeyDown(this, c0339b, i2, keyEvent);
                                        c0031b2.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1764i.getClass();
                                            iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                                            if (i2 != 92) {
                                                if (i2 != 93) {
                                                    if (i2 != 122) {
                                                        if (i2 != 123) {
                                                            switch (i2) {
                                                                case 19:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, true);
                                                                    }
                                                                    break;
                                                                case 20:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, false);
                                                                    }
                                                                    break;
                                                                case 21:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = C0343f.m1000b(c0339b, true);
                                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                    }
                                                                    break;
                                                                case 22:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = C0343f.m1000b(c0339b, false);
                                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                    }
                                                                    break;
                                                                case 23:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    }
                                                                    break;
                                                                default:
                                                                    zM1002d = false;
                                                                    break;
                                                            }
                                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = false;
                                                        } else {
                                                            zM1002d = false;
                                                        }
                                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = false;
                                                    } else {
                                                        zM1002d = false;
                                                    }
                                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = C0343f.m1002d(this, c0339b, false);
                                                } else {
                                                    zM1002d = false;
                                                }
                                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1002d(this, c0339b, true);
                                            } else {
                                                zM1002d = false;
                                            }
                                            if (zM1002d) {
                                                MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                                            }
                                            if (zM1002d) {
                                                m949m(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                case 279:
                                    if (!keyEvent.hasNoModifiers() || !m939c() || !m950n(R.id.paste)) {
                                        C0031b c0031b3 = this.f1762g;
                                        c0031b3.beginBatchEdit();
                                        TextKeyListener textKeyListener3 = this.f1763h;
                                        c0339b = this.f1760e;
                                        zOnKeyDown = textKeyListener3.onKeyDown(this, c0339b, i2, keyEvent);
                                        c0031b3.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1764i.getClass();
                                            iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                                            if (i2 != 92) {
                                                if (i2 != 93) {
                                                    if (i2 != 122) {
                                                        if (i2 != 123) {
                                                            switch (i2) {
                                                                case 19:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, true);
                                                                    }
                                                                    break;
                                                                case 20:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = false;
                                                                    } else {
                                                                        zM1002d = C0343f.m1003e(c0339b, false);
                                                                    }
                                                                    break;
                                                                case 21:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = C0343f.m1000b(c0339b, true);
                                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                    }
                                                                    break;
                                                                case 22:
                                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                        zM1002d = C0343f.m1000b(c0339b, false);
                                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                    }
                                                                    break;
                                                                case 23:
                                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    }
                                                                    break;
                                                                default:
                                                                    zM1002d = false;
                                                                    break;
                                                            }
                                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = false;
                                                        } else {
                                                            zM1002d = false;
                                                        }
                                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = false;
                                                    } else {
                                                        zM1002d = false;
                                                    }
                                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = C0343f.m1002d(this, c0339b, false);
                                                } else {
                                                    zM1002d = false;
                                                }
                                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1002d(this, c0339b, true);
                                            } else {
                                                zM1002d = false;
                                            }
                                            if (zM1002d) {
                                                MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                                            }
                                            if (zM1002d) {
                                                m949m(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    C0031b c0031b4 = this.f1762g;
                                    c0031b4.beginBatchEdit();
                                    TextKeyListener textKeyListener4 = this.f1763h;
                                    c0339b = this.f1760e;
                                    zOnKeyDown = textKeyListener4.onKeyDown(this, c0339b, i2, keyEvent);
                                    c0031b4.endBatchEdit();
                                    if (zOnKeyDown) {
                                        this.f1764i.getClass();
                                        iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                                        if (i2 != 92) {
                                            if (i2 != 93) {
                                                if (i2 != 122) {
                                                    if (i2 != 123) {
                                                        switch (i2) {
                                                            case 19:
                                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    zM1002d = false;
                                                                } else {
                                                                    zM1002d = C0343f.m1003e(c0339b, true);
                                                                }
                                                                break;
                                                            case 20:
                                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    zM1002d = false;
                                                                } else {
                                                                    zM1002d = C0343f.m1003e(c0339b, false);
                                                                }
                                                                break;
                                                            case 21:
                                                                if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    zM1002d = C0343f.m1000b(c0339b, true);
                                                                } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                }
                                                                break;
                                                            case 22:
                                                                if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                    zM1002d = C0343f.m1000b(c0339b, false);
                                                                } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                                }
                                                                break;
                                                            case 23:
                                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                                }
                                                                break;
                                                            default:
                                                                zM1002d = false;
                                                                break;
                                                        }
                                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = false;
                                                    } else {
                                                        zM1002d = false;
                                                    }
                                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = false;
                                                } else {
                                                    zM1002d = false;
                                                }
                                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1002d(this, c0339b, false);
                                            } else {
                                                zM1002d = false;
                                            }
                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                            zM1002d = C0343f.m1002d(this, c0339b, true);
                                        } else {
                                            zM1002d = false;
                                        }
                                        if (zM1002d) {
                                            MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                                        }
                                        if (zM1002d) {
                                            m949m(257);
                                            break;
                                        } else if (keyEvent.getSource() == 257) {
                                            switch (i2) {
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                    z2 = true;
                                                    break;
                                                default:
                                                    z2 = false;
                                                    break;
                                            }
                                            if (z2) {
                                            }
                                        }
                                    }
                                    break;
                            }
                        } else if (!keyEvent.hasModifiers(4096) || !m938b() ? !keyEvent.hasModifiers(1) || !m939c() || !m950n(R.id.paste) : !m950n(R.id.copy)) {
                            C0031b c0031b5 = this.f1762g;
                            c0031b5.beginBatchEdit();
                            TextKeyListener textKeyListener5 = this.f1763h;
                            c0339b = this.f1760e;
                            zOnKeyDown = textKeyListener5.onKeyDown(this, c0339b, i2, keyEvent);
                            c0031b5.endBatchEdit();
                            if (zOnKeyDown) {
                                this.f1764i.getClass();
                                iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                                if (i2 != 92) {
                                    if (i2 != 93) {
                                        if (i2 != 122) {
                                            if (i2 != 123) {
                                                switch (i2) {
                                                    case 19:
                                                        if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = false;
                                                        } else {
                                                            zM1002d = C0343f.m1003e(c0339b, true);
                                                        }
                                                        break;
                                                    case 20:
                                                        if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = false;
                                                        } else {
                                                            zM1002d = C0343f.m1003e(c0339b, false);
                                                        }
                                                        break;
                                                    case 21:
                                                        if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = C0343f.m1000b(c0339b, true);
                                                        } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                        }
                                                        break;
                                                    case 22:
                                                        if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                            zM1002d = C0343f.m1000b(c0339b, false);
                                                        } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                        }
                                                        break;
                                                    case 23:
                                                        if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        }
                                                        break;
                                                    default:
                                                        zM1002d = false;
                                                        break;
                                                }
                                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = false;
                                            } else {
                                                zM1002d = false;
                                            }
                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                            zM1002d = false;
                                        } else {
                                            zM1002d = false;
                                        }
                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                        zM1002d = C0343f.m1002d(this, c0339b, false);
                                    } else {
                                        zM1002d = false;
                                    }
                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zM1002d = C0343f.m1002d(this, c0339b, true);
                                } else {
                                    zM1002d = false;
                                }
                                if (zM1002d) {
                                    MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                                }
                                if (zM1002d) {
                                    m949m(257);
                                } else if (keyEvent.getSource() == 257) {
                                    switch (i2) {
                                        case 19:
                                        case 20:
                                        case 21:
                                        case 22:
                                            z2 = true;
                                            break;
                                        default:
                                            z2 = false;
                                            break;
                                    }
                                    if (z2) {
                                    }
                                }
                            }
                        }
                    } else if (!keyEvent.hasModifiers(1) || !m938b() || !m950n(R.id.cut)) {
                        C0031b c0031b6 = this.f1762g;
                        c0031b6.beginBatchEdit();
                        TextKeyListener textKeyListener6 = this.f1763h;
                        c0339b = this.f1760e;
                        zOnKeyDown = textKeyListener6.onKeyDown(this, c0339b, i2, keyEvent);
                        c0031b6.endBatchEdit();
                        if (zOnKeyDown) {
                            this.f1764i.getClass();
                            iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                            if (i2 != 92) {
                                if (i2 != 93) {
                                    if (i2 != 122) {
                                        if (i2 != 123) {
                                            switch (i2) {
                                                case 19:
                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = false;
                                                    } else {
                                                        zM1002d = C0343f.m1003e(c0339b, true);
                                                    }
                                                    break;
                                                case 20:
                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = false;
                                                    } else {
                                                        zM1002d = C0343f.m1003e(c0339b, false);
                                                    }
                                                    break;
                                                case 21:
                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = C0343f.m1000b(c0339b, true);
                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                    }
                                                    break;
                                                case 22:
                                                    if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                        zM1002d = C0343f.m1000b(c0339b, false);
                                                    } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                    }
                                                    break;
                                                case 23:
                                                    if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    }
                                                    break;
                                                default:
                                                    zM1002d = false;
                                                    break;
                                            }
                                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                            zM1002d = false;
                                        } else {
                                            zM1002d = false;
                                        }
                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                        zM1002d = false;
                                    } else {
                                        zM1002d = false;
                                    }
                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zM1002d = C0343f.m1002d(this, c0339b, false);
                                } else {
                                    zM1002d = false;
                                }
                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                zM1002d = C0343f.m1002d(this, c0339b, true);
                            } else {
                                zM1002d = false;
                            }
                            if (zM1002d) {
                                MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                            }
                            if (zM1002d) {
                                m949m(257);
                            } else if (keyEvent.getSource() == 257) {
                                switch (i2) {
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                        z2 = true;
                                        break;
                                    default:
                                        z2 = false;
                                        break;
                                }
                                if (z2) {
                                }
                            }
                        }
                    }
                } else if (!keyEvent.hasNoModifiers() && !keyEvent.hasModifiers(1)) {
                    C0031b c0031b7 = this.f1762g;
                    c0031b7.beginBatchEdit();
                    TextKeyListener textKeyListener7 = this.f1763h;
                    c0339b = this.f1760e;
                    zOnKeyDown = textKeyListener7.onKeyDown(this, c0339b, i2, keyEvent);
                    c0031b7.endBatchEdit();
                    if (zOnKeyDown) {
                        this.f1764i.getClass();
                        iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                        if (i2 != 92) {
                            if (i2 != 93) {
                                if (i2 != 122) {
                                    if (i2 != 123) {
                                        switch (i2) {
                                            case 19:
                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = false;
                                                } else {
                                                    zM1002d = C0343f.m1003e(c0339b, true);
                                                }
                                                break;
                                            case 20:
                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = false;
                                                } else {
                                                    zM1002d = C0343f.m1003e(c0339b, false);
                                                }
                                                break;
                                            case 21:
                                                if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = C0343f.m1000b(c0339b, true);
                                                } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                }
                                                break;
                                            case 22:
                                                if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                    zM1002d = C0343f.m1000b(c0339b, false);
                                                } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                                }
                                                break;
                                            case 23:
                                                if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                }
                                                break;
                                            default:
                                                zM1002d = false;
                                                break;
                                        }
                                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                        zM1002d = false;
                                    } else {
                                        zM1002d = false;
                                    }
                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zM1002d = false;
                                } else {
                                    zM1002d = false;
                                }
                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                zM1002d = C0343f.m1002d(this, c0339b, false);
                            } else {
                                zM1002d = false;
                            }
                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                            zM1002d = C0343f.m1002d(this, c0339b, true);
                        } else {
                            zM1002d = false;
                        }
                        if (zM1002d) {
                            MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                        }
                        if (zM1002d) {
                            m949m(257);
                        } else if (keyEvent.getSource() == 257) {
                            switch (i2) {
                                case 19:
                                case 20:
                                case 21:
                                case 22:
                                    z2 = true;
                                    break;
                                default:
                                    z2 = false;
                                    break;
                            }
                            if (z2) {
                            }
                        }
                    }
                }
            } else if (this.f1768m != null) {
                m956t();
            } else {
                C0031b c0031b8 = this.f1762g;
                c0031b8.beginBatchEdit();
                TextKeyListener textKeyListener8 = this.f1763h;
                c0339b = this.f1760e;
                zOnKeyDown = textKeyListener8.onKeyDown(this, c0339b, i2, keyEvent);
                c0031b8.endBatchEdit();
                if (zOnKeyDown) {
                    this.f1764i.getClass();
                    iNormalizeMetaState = KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(c0339b, keyEvent) & (-1537)) & (-194);
                    if (i2 != 92) {
                        if (i2 != 93) {
                            if (i2 != 122) {
                                if (i2 != 123) {
                                    switch (i2) {
                                        case 19:
                                            if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = false;
                                            } else {
                                                zM1002d = C0343f.m1003e(c0339b, true);
                                            }
                                            break;
                                        case 20:
                                            if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = false;
                                            } else {
                                                zM1002d = C0343f.m1003e(c0339b, false);
                                            }
                                            break;
                                        case 21:
                                            if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1000b(c0339b, true);
                                            } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                            }
                                            break;
                                        case 22:
                                            if (!KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                                zM1002d = C0343f.m1000b(c0339b, false);
                                            } else if (KeyEvent.metaStateHasModifiers(iNormalizeMetaState, 4096)) {
                                            }
                                            break;
                                        case 23:
                                            if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                            }
                                            break;
                                        default:
                                            zM1002d = false;
                                            break;
                                    }
                                } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                    zM1002d = false;
                                } else {
                                    zM1002d = false;
                                }
                            } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                                zM1002d = false;
                            } else {
                                zM1002d = false;
                            }
                        } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                            zM1002d = C0343f.m1002d(this, c0339b, false);
                        } else {
                            zM1002d = false;
                        }
                    } else if (KeyEvent.metaStateHasNoModifiers(iNormalizeMetaState)) {
                        zM1002d = C0343f.m1002d(this, c0339b, true);
                    } else {
                        zM1002d = false;
                    }
                    if (zM1002d) {
                        MetaKeyKeyListener.adjustMetaAfterKeypress(c0339b);
                    }
                    if (zM1002d) {
                        m949m(257);
                    } else if (keyEvent.getSource() == 257) {
                        switch (i2) {
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                z2 = true;
                                break;
                            default:
                                z2 = false;
                                break;
                        }
                        if (z2) {
                        }
                    }
                }
            }
            z3 = true;
        }
        if (z3) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View
    public final boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || this.f1768m == null) {
            return super.onKeyPreIme(i2, keyEvent);
        }
        m956t();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (isEnabled() && this.f1763h.onKeyUp(this, this.f1760e, i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return m950n(menuItem.getItemId());
    }

    @Override // android.view.View
    public final ContentInfo onReceiveContent(ContentInfo contentInfo) {
        Objects.toString(contentInfo);
        int source = contentInfo.getSource();
        if (source == 2 || source == 4) {
            return contentInfo;
        }
        m951o(contentInfo.getClip());
        return null;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0337f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0337f c0337f = (C0337f) parcelable;
        super.onRestoreInstanceState(c0337f.getSuperState());
        C0339b.a aVar = c0337f.f1792b;
        if (aVar != null) {
            C0339b c0339b = this.f1760e;
            synchronized (c0339b) {
                c0339b.f1799b.clear();
                c0339b.f1799b.addAll(aVar.f1811a);
                c0339b.f1800c = aVar.f1813c;
                int[] iArr = c0339b.f1804g;
                int[] iArr2 = aVar.f1812b;
                iArr[0] = iArr2[0];
                iArr[1] = iArr2[1];
                c0339b.m979r(false, false, false);
            }
            this.f1761f.m996h(c0337f.f1793c, c0337f.f1794d, true);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        C0339b c0339b = this.f1760e;
        int i2 = c0339b.f1800c;
        if (i2 != 0) {
            if (i2 < 1047552) {
                C0337f c0337f = new C0337f(parcelableOnSaveInstanceState);
                GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = this.f1761f;
                c0337f.f1793c = gestureDetectorOnGestureListenerC0340c.m990b();
                c0337f.f1794d = gestureDetectorOnGestureListenerC0340c.m991c();
                c0337f.f1791a = c0339b;
                return c0337f;
            }
        }
        return parcelableOnSaveInstanceState;
    }

    @Override // android.view.View
    public final void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        RunnableC0334c runnableC0334c = this.f1772q;
        if (i2 == 0) {
            runnableC0334c.m958a();
        } else {
            if (i2 != 1) {
                return;
            }
            runnableC0334c.run();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 && this.f1773r) {
            this.f1760e.m979r(false, true, false);
        }
        m949m((i5 <= i3 || this.f1771p.top <= i3) ? 4 : 260);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0077  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (!isEnabled()) {
            return false;
        }
        C0341d c0341d = this.f1770o;
        if (c0341d.f1865m == 0) {
            z2 = false;
        } else {
            View view = c0341d.f1853a;
            C0341d.b bVar = (C0341d.b) view;
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (c0341d.f1865m == 2) {
                        c0341d.m998a(1);
                    }
                } else if (action != 2) {
                    if (action == 3) {
                        if (c0341d.f1865m == 2) {
                            c0341d.m998a(1);
                        }
                    }
                } else if (c0341d.f1865m == 2) {
                    if (Math.abs(c0341d.f1866n - y2) > c0341d.f1854b) {
                        view.setScrollY((int) (((bVar.computeVerticalScrollRange() - view.getHeight()) * y2) / (view.getHeight() - c0341d.f1862j)));
                        c0341d.f1866n = y2;
                    }
                }
                z2 = false;
            } else {
                if (c0341d.f1863k.contains((int) x2, (int) y2)) {
                    c0341d.f1866n = y2;
                    c0341d.m998a(2);
                }
            }
            if (c0341d.f1865m == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2) {
            return true;
        }
        GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = this.f1761f;
        GestureDetectorOnGestureListenerC0340c.a aVar = gestureDetectorOnGestureListenerC0340c.f1835b;
        if (aVar != null && aVar.onTouchEvent(motionEvent)) {
            return true;
        }
        if (gestureDetectorOnGestureListenerC0340c.f1842i && motionEvent.getActionMasked() == 1) {
            ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m946j(-3);
            gestureDetectorOnGestureListenerC0340c.f1842i = false;
        }
        return gestureDetectorOnGestureListenerC0340c.f1839f.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z2) {
        RunnableC0334c runnableC0334c = this.f1772q;
        if (z2) {
            runnableC0334c.run();
        } else {
            runnableC0334c.m958a();
        }
        super.onWindowFocusChanged(z2);
    }

    /* JADX INFO: renamed from: p */
    public final void m952p(int i2, boolean z2) {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        if (z2) {
            if (this.f1778w == null) {
                this.f1778w = new C0033d(this, getLineHeight());
            }
            this.f1777v = i2;
        } else {
            C0033d c0033d = this.f1778w;
            if (c0033d != null) {
                c0033d.m132a();
                this.f1778w = null;
            }
        }
    }

    @Override // android.view.View, p006b1.InterfaceC0030a
    public final void postInvalidate() {
        super.postInvalidate();
        awakenScrollBars();
    }

    /* JADX INFO: renamed from: q */
    public final void m953q(int i2, int i3) {
        int[] iArr = this.f1760e.f1804g;
        if (i2 == iArr[0] && i3 == iArr[1]) {
            return;
        }
        this.f1762g.setSelection(i2, i3);
    }

    /* JADX INFO: renamed from: r */
    public final void m954r(int i2, int i3, int i4) {
        C0339b c0339b = this.f1760e;
        int[] iArr = c0339b.f1804g;
        if (i2 == iArr[0] && i3 == iArr[1]) {
            return;
        }
        C0031b c0031b = this.f1762g;
        c0031b.beginBatchEdit();
        m953q(i2, i3);
        c0339b.m975n((i4 == 1 ? 512 : 0) | 256);
        c0031b.endBatchEdit();
    }

    /* JADX INFO: renamed from: s */
    public final void m955s(int i2) {
        if (this.f1768m != null) {
            m956t();
        }
        if (i2 != 2) {
            this.f1769n = i2;
            if (Build.VERSION.SDK_INT < 26 || !m945i()) {
                this.f1768m = startActionMode(new C0333b(i2, null), 1);
                return;
            } else {
                new AsyncTaskC0035f(getContext(), this).execute(new Void[0]);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            int selectionStart = getSelectionStart();
            int selectionEnd = getSelectionEnd();
            if (selectionStart == -1 || selectionEnd == -1 || selectionEnd == selectionStart) {
                return;
            }
            if (selectionStart <= selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart - selectionEnd > 1047552) {
                return;
            }
            C0339b c0339b = this.f1760e;
            String strValueOf = String.valueOf(c0339b.subSequence(selectionEnd, selectionStart));
            CharSequence charSequenceSubSequence = strValueOf.length() > 20 ? c0339b.subSequence(selectionEnd, c0339b.m972j(selectionEnd + 20)[1]) : strValueOf;
            TextView textView = new TextView(getContext());
            textView.setText(charSequenceSubSequence);
            textView.setTextAppearance(R.style.TextAppearance.Large);
            textView.setGravity(17);
            textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            textView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
            textView.postInvalidate();
            try {
                startDragAndDrop(ClipData.newPlainText(null, strValueOf), new View.DragShadowBuilder(textView), new C0335d(this, selectionEnd, selectionStart), 256);
                m956t();
            } catch (Exception unused) {
            }
        }
    }

    @Override // p006b1.InterfaceC0030a
    public void setCursorBlink(boolean z2) {
        RunnableC0334c runnableC0334c = this.f1772q;
        runnableC0334c.f1785b = z2;
        runnableC0334c.f1786c = true;
        if (z2 && runnableC0334c.f1784a && z2) {
            runnableC0334c.f1786c = true;
            runnableC0334c.f1784a = false;
            EditableView.this.postDelayed(runnableC0334c, 500L);
        }
    }

    public void setFont(int i2) {
        Typeface typefaceCreate;
        if (i2 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i2 == 2) {
            typefaceCreate = Typeface.MONOSPACE;
        } else if (i2 != 3) {
            typefaceCreate = i2 != 4 ? Typeface.SERIF : Typeface.create("sans-serif-condensed", 0);
        } else {
            typefaceCreate = Typeface.create("sans-serif-light", 0);
        }
        C0034e c0034e = this.f1766k;
        c0034e.f232a.setTypeface(typefaceCreate);
        c0034e.f234c = 0;
        c0034e.f236e = 0;
        this.f1767l.setTypeface(typefaceCreate);
        this.f1760e.m979r(false, false, true);
        m949m(4);
    }

    public void setFontSize(float f2) {
        float fApplyDimension = TypedValue.applyDimension(2, f2, getDisplayMetricsOrSystem());
        C0034e c0034e = this.f1766k;
        c0034e.f232a.setTextSize(fApplyDimension);
        c0034e.f234c = 0;
        c0034e.f236e = 0;
        this.f1767l.setTextSize(fApplyDimension);
        this.f1760e.m979r(false, false, true);
        m949m(4);
    }

    public void setLineNumber(boolean z2) {
        if (z2 != this.f1774s) {
            this.f1774s = z2;
            C0339b c0339b = this.f1760e;
            if (c0339b.f1800c != 0) {
                if (this.f1773r) {
                    c0339b.m979r(false, true, false);
                }
                m949m(4);
            }
        }
    }

    public void setOnTextChangeChange(InterfaceC0336e interfaceC0336e) {
        this.f1776u = interfaceC0336e;
    }

    @Override // android.view.View
    public void setScrollY(int i2) {
        GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = this.f1761f;
        gestureDetectorOnGestureListenerC0340c.m994f(gestureDetectorOnGestureListenerC0340c.m990b(), i2, true);
        postInvalidate();
    }

    public void setSyntax(int i2) {
        if (this.f1760e.m977p(i2)) {
            postInvalidate();
        }
    }

    public void setWordWrap(boolean z2) {
        if (z2 != this.f1773r) {
            this.f1773r = z2;
            C0339b c0339b = this.f1760e;
            if (c0339b.f1800c != 0) {
                c0339b.m979r(false, true, false);
                m949m(4);
            }
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m956t() {
        ActionMode actionMode = this.f1768m;
        if (actionMode != null) {
            actionMode.finish();
        }
    }
}
