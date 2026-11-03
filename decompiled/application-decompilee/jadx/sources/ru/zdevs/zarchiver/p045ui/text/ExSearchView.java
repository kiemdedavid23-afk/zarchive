package ru.zdevs.zarchiver.p045ui.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.SearchView;
import android.widget.TextView;
import p018f1.C0117a;
import p047s0.C0358b;
import p051u0.C0379b;
import p051u0.C0385h;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.p045ui.layout.ViewOnClickListenerC0344a;

/* JADX INFO: loaded from: classes.dex */
public class ExSearchView extends SearchView implements View.OnFocusChangeListener, SearchView.OnQueryTextListener, SearchView.OnCloseListener {

    /* JADX INFO: renamed from: i */
    public static final ViewOnClickListenerC0344a.a[] f1925i = {new ViewOnClickListenerC0344a.a("[SF]", R.drawable.ic_subfolder, R.drawable.ic_subfolder_off, 0, -769226), new ViewOnClickListenerC0344a.a("[APK]", R.drawable.ic_app, 0, R.string.SC_APK, -31433), new ViewOnClickListenerC0344a.a("[ARC]", R.drawable.ic_archive, 0, R.string.SC_ARCHIVE, -684283), new ViewOnClickListenerC0344a.a("[MP3]", R.drawable.ic_music, 0, R.string.SC_AUDIO, -2817799), new ViewOnClickListenerC0344a.a("[DOC]", R.drawable.ic_document_file, 0, R.string.SC_DOCUMENT, -14059009), new ViewOnClickListenerC0344a.a("[IMG]", R.drawable.ic_picture, 0, R.string.SC_IMAGE, -13130933), new ViewOnClickListenerC0344a.a("[VID]", R.drawable.ic_video, 0, R.string.SC_VIDEO, -10149889)};

    /* JADX INFO: renamed from: a */
    public EditText f1926a;

    /* JADX INFO: renamed from: b */
    public SearchView.OnCloseListener f1927b;

    /* JADX INFO: renamed from: c */
    public InterfaceC0354c f1928c;

    /* JADX INFO: renamed from: d */
    public String[] f1929d;

    /* JADX INFO: renamed from: e */
    public String f1930e;

    /* JADX INFO: renamed from: f */
    public PopupWindow f1931f;

    /* JADX INFO: renamed from: g */
    public ViewOnClickListenerC0344a f1932g;

    /* JADX INFO: renamed from: h */
    public final RunnableC0353b f1933h;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.text.ExSearchView$a */
    public class C0352a implements TextView.OnEditorActionListener {
        public C0352a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            ExSearchView exSearchView = ExSearchView.this;
            if (!ExSearchView.m1010a(exSearchView)) {
                return true;
            }
            exSearchView.clearFocus();
            return true;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.text.ExSearchView$b */
    public class RunnableC0353b implements Runnable {
        public RunnableC0353b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z2;
            int i2;
            ExSearchView exSearchView = ExSearchView.this;
            EditText editText = exSearchView.f1926a;
            if (editText == null) {
                return;
            }
            if (exSearchView.f1929d == null) {
                editText.setText(exSearchView.f1930e);
                return;
            }
            ViewOnClickListenerC0344a.a[] aVarArr = ExSearchView.f1925i;
            String string = null;
            int i3 = 0;
            for (int i4 = 0; i4 < 7; i4++) {
                ViewOnClickListenerC0344a.a aVar = aVarArr[i4];
                String[] strArr = exSearchView.f1929d;
                String str = aVar.f1875a;
                if (strArr == null) {
                    z2 = false;
                    break;
                }
                int length = strArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        z2 = false;
                        break;
                    } else {
                        if (C0385h.m1082f(strArr[i5], str)) {
                            z2 = true;
                            break;
                        }
                        i5++;
                    }
                }
                if (z2 && (i2 = aVar.f1878d) != 0) {
                    i3++;
                    string = i3 > 1 ? "... " + i3 : exSearchView.getResources().getString(i2);
                }
            }
            if (string == null) {
                exSearchView.f1926a.setText(exSearchView.f1930e);
                return;
            }
            C0117a c0117a = new C0117a(C0439c.m1168c(exSearchView.getContext(), R.attr.colorPrimaryDark));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) string).append(' ').append((CharSequence) exSearchView.f1930e).setSpan(c0117a, 0, string.length(), 33);
            exSearchView.f1926a.setText(spannableStringBuilder);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.text.ExSearchView$c */
    public interface InterfaceC0354c {
        /* JADX INFO: renamed from: a */
        void mo1015a(String str, String[] strArr);
    }

    public ExSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0352a c0352a = new C0352a();
        this.f1933h = new RunnableC0353b();
        EditText editTextM1011c = m1011c(this);
        this.f1926a = editTextM1011c;
        if (editTextM1011c != null) {
            editTextM1011c.setOnFocusChangeListener(this);
            this.f1926a.setOnEditorActionListener(c0352a);
            this.f1926a.setImeOptions(268435456);
        }
        if (C0379b.m1059f() && !C0439c.m1167b(getContext(), R.attr.isLightTheme)) {
            EditText editText = this.f1926a;
            if (editText != null) {
                editText.setTextColor(-1);
            }
            ImageView imageViewM1012d = m1012d(this);
            if (imageViewM1012d != null) {
                imageViewM1012d.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
            }
        }
        setOnQueryTextListener(this);
    }

    /* JADX INFO: renamed from: a */
    public static boolean m1010a(ExSearchView exSearchView) {
        Editable text = exSearchView.f1926a.getText();
        String[] chips = exSearchView.getChips();
        if ((text == null || TextUtils.getTrimmedLength(text) <= 0) && (chips == null || (chips.length <= 1 && (chips.length != 1 || "[SF]".equals(chips[0]))))) {
            return false;
        }
        InterfaceC0354c interfaceC0354c = exSearchView.f1928c;
        if (interfaceC0354c == null) {
            return true;
        }
        interfaceC0354c.mo1015a(text == null ? "" : text.toString(), chips);
        return true;
    }

    /* JADX INFO: renamed from: c */
    public static EditText m1011c(LinearLayout linearLayout) {
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof EditText) {
                return (EditText) childAt;
            }
            if (childAt instanceof LinearLayout) {
                return m1011c((LinearLayout) childAt);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public static ImageView m1012d(LinearLayout linearLayout) {
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof ImageView) {
                return (ImageView) childAt;
            }
            if (childAt instanceof LinearLayout) {
                return m1012d((LinearLayout) childAt);
            }
        }
        return null;
    }

    private synchronized String[] getChips() {
        ViewOnClickListenerC0344a viewOnClickListenerC0344a = this.f1932g;
        if (viewOnClickListenerC0344a != null) {
            this.f1929d = viewOnClickListenerC0344a.getChips();
        }
        return this.f1929d;
    }

    /* JADX INFO: renamed from: b */
    public final void m1013b() {
        super.setOnCloseListener(null);
        synchronized (this) {
            PopupWindow popupWindow = this.f1931f;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f1931f = null;
                this.f1932g = null;
            }
        }
        this.f1929d = null;
        EditText editText = this.f1926a;
        if (editText != null) {
            this.f1930e = "";
            editText.setText("");
            setIconified(true);
        } else {
            for (int i2 = 0; !isIconified() && i2 < 5; i2++) {
                setIconified(true);
            }
        }
        super.setOnCloseListener(this);
    }

    /* JADX INFO: renamed from: e */
    public final void m1014e(String str, String[] strArr) {
        if (this.f1926a == null) {
            this.f1926a = m1011c(this);
        }
        EditText editText = this.f1926a;
        if (editText != null) {
            editText.setVisibility(4);
            this.f1926a.setEnabled(false);
            this.f1926a.setOnFocusChangeListener(null);
        }
        this.f1929d = strArr;
        this.f1930e = str;
        setIconified(false);
        clearFocus();
        if (this.f1926a == null) {
            setQuery(str, false);
            return;
        }
        this.f1933h.run();
        this.f1926a.setVisibility(0);
        this.f1926a.setEnabled(true);
        this.f1926a.setOnFocusChangeListener(this);
    }

    @Override // android.widget.SearchView.OnCloseListener
    public final boolean onClose() {
        synchronized (this) {
            PopupWindow popupWindow = this.f1931f;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f1931f = null;
                this.f1932g = null;
            }
        }
        this.f1929d = null;
        SearchView.OnCloseListener onCloseListener = this.f1927b;
        if (onCloseListener != null) {
            return onCloseListener.onClose();
        }
        return false;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z2) {
        FrameLayout frameLayout;
        Drawable drawable;
        Handler handler = getHandler();
        synchronized (this) {
            try {
                if (z2) {
                    if (handler != null) {
                        handler.removeCallbacks(this.f1933h);
                    }
                    if (this.f1931f == null) {
                        ViewOnClickListenerC0344a viewOnClickListenerC0344a = new ViewOnClickListenerC0344a(getContext());
                        this.f1932g = viewOnClickListenerC0344a;
                        viewOnClickListenerC0344a.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                        this.f1932g.m1004a(f1925i, this.f1929d);
                        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(getContext());
                        horizontalScrollView.setHorizontalScrollBarEnabled(false);
                        horizontalScrollView.addView(this.f1932g);
                        if (C0358b.m1040k(1536)) {
                            horizontalScrollView.setBackgroundDrawable(new ColorDrawable(C0358b.m1040k(768) ? getContext().getResources().getColor(R.color.background_holo_dark) : C0439c.m1168c(getContext(), android.R.attr.colorBackground)));
                            frameLayout = horizontalScrollView;
                        } else {
                            Context context = getContext();
                            try {
                                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.actionBarStyle});
                                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                                typedArrayObtainStyledAttributes.recycle();
                                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, new int[]{android.R.attr.background});
                                drawable = typedArrayObtainStyledAttributes2.getDrawable(0);
                                typedArrayObtainStyledAttributes2.recycle();
                            } catch (Exception unused) {
                                drawable = null;
                            }
                            horizontalScrollView.setBackground(drawable);
                            FrameLayout frameLayout2 = new FrameLayout(getContext());
                            frameLayout2.addView(horizontalScrollView);
                            frameLayout2.setMinimumHeight(((int) getResources().getDimension(R.dimen.chips_item_height)) + 50);
                            horizontalScrollView.setElevation(25.0f);
                            frameLayout = frameLayout2;
                        }
                        PopupWindow popupWindow = new PopupWindow(frameLayout, -1, -2);
                        this.f1931f = popupWindow;
                        popupWindow.setBackgroundDrawable(null);
                        this.f1931f.setWindowLayoutType(1002);
                        try {
                            this.f1931f.showAsDropDown(this, 0, 0);
                        } catch (WindowManager.BadTokenException unused2) {
                        }
                    }
                    if (!C0385h.m1081e(this.f1926a.getText().toString())) {
                        this.f1926a.setText(this.f1930e);
                    }
                } else {
                    if (this.f1931f != null) {
                        this.f1929d = this.f1932g.getChips();
                        this.f1931f.dismiss();
                        this.f1931f = null;
                        this.f1932g = null;
                    }
                    CharSequence query = getQuery();
                    this.f1930e = query == null ? "" : query.toString();
                    if (handler != null) {
                        handler.postDelayed(this.f1933h, 20L);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public final boolean onQueryTextSubmit(String str) {
        InterfaceC0354c interfaceC0354c = this.f1928c;
        if (interfaceC0354c == null) {
            return false;
        }
        interfaceC0354c.mo1015a(str, getChips());
        return true;
    }

    @Override // android.widget.SearchView
    public void setOnCloseListener(SearchView.OnCloseListener onCloseListener) {
        this.f1927b = onCloseListener;
        super.setOnCloseListener(onCloseListener);
    }

    public void setOnQueryListener(InterfaceC0354c interfaceC0354c) {
        this.f1928c = interfaceC0354c;
    }
}
